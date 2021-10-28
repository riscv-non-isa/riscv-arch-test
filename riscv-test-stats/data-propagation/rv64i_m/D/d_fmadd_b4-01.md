
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001640')]      |
| SIG_REGION                | [('0x80003f10', '0x80004850', '296 dwords')]      |
| COV_LABELS                | fmadd_b4      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fmadd_b4-01.S/ref.S    |
| Total Number of coverpoints| 288     |
| Total Coverpoints Hit     | 281      |
| Total Signature Updates   | 296      |
| STAT1                     | 148      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 148     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmadd.d', 'rs1 : f3', 'rs2 : f5', 'rs3 : f5', 'rd : f15', 'rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1']
Last Code Sequence : 
	-[0x800003c0]:fmadd.d fa5, ft3, ft5, ft5, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsd fa5, 0(a5)
Current Store : [0x800003cc] : sd a7, 8(a5) -- Store: [0x80003f18]:0x0000000000000001




Last Coverpoint : ['rs1 : f21', 'rs2 : f21', 'rs3 : f21', 'rd : f21', 'rs1 == rs2 == rs3 == rd']
Last Code Sequence : 
	-[0x800003e0]:fmadd.d fs5, fs5, fs5, fs5, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsd fs5, 16(a5)
Current Store : [0x800003ec] : sd a7, 24(a5) -- Store: [0x80003f28]:0x0000000000000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f30', 'rs3 : f3', 'rd : f20', 'rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2e8909705103d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000400]:fmadd.d fs4, ft11, ft10, ft3, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fs4, 32(a5)
Current Store : [0x8000040c] : sd a7, 40(a5) -- Store: [0x80003f38]:0x0000000000000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f28', 'rs3 : f22', 'rd : f14', 'rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2']
Last Code Sequence : 
	-[0x80000420]:fmadd.d fa4, fs6, ft8, fs6, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsd fa4, 48(a5)
Current Store : [0x8000042c] : sd a7, 56(a5) -- Store: [0x80003f48]:0x0000000000000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f18', 'rs3 : f19', 'rd : f28', 'rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3']
Last Code Sequence : 
	-[0x80000440]:fmadd.d ft8, fs2, fs2, fs3, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:fsd ft8, 64(a5)
Current Store : [0x8000044c] : sd a7, 72(a5) -- Store: [0x80003f58]:0x0000000000000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f8', 'rs3 : f8', 'rd : f8', 'rd == rs2 == rs3 != rs1']
Last Code Sequence : 
	-[0x80000460]:fmadd.d fs0, fa2, fs0, fs0, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd fs0, 80(a5)
Current Store : [0x8000046c] : sd a7, 88(a5) -- Store: [0x80003f68]:0x0000000000000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f9', 'rs3 : f9', 'rd : f22', 'rs1 == rs2 == rs3 != rd']
Last Code Sequence : 
	-[0x80000480]:fmadd.d fs6, fs1, fs1, fs1, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd fs6, 96(a5)
Current Store : [0x8000048c] : sd a7, 104(a5) -- Store: [0x80003f78]:0x0000000000000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f23', 'rs3 : f12', 'rd : f13', 'rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2', 'fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 0 and fe2 == 0x407 and fm2 == 0xff8a642c3925c and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004a0]:fmadd.d fa3, fa3, fs7, fa2, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:fsd fa3, 112(a5)
Current Store : [0x800004ac] : sd a7, 120(a5) -- Store: [0x80003f88]:0x0000000000000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f19', 'rs3 : f30', 'rd : f30', 'rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1', 'fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 0 and fe2 == 0x407 and fm2 == 0xff8a642c3925c and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fmadd.d ft10, fs10, fs3, ft10, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd ft10, 128(a5)
Current Store : [0x800004cc] : sd a7, 136(a5) -- Store: [0x80003f98]:0x0000000000000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f2', 'rs3 : f7', 'rd : f7', 'rs1 == rd == rs3 != rs2']
Last Code Sequence : 
	-[0x800004e0]:fmadd.d ft7, ft7, ft2, ft7, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:fsd ft7, 144(a5)
Current Store : [0x800004ec] : sd a7, 152(a5) -- Store: [0x80003fa8]:0x0000000000000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f17', 'rs3 : f26', 'rd : f17', 'rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1', 'fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 0 and fe2 == 0x407 and fm2 == 0xff8a642c3925c and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000500]:fmadd.d fa7, fa5, fa7, fs10, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:fsd fa7, 160(a5)
Current Store : [0x8000050c] : sd a7, 168(a5) -- Store: [0x80003fb8]:0x0000000000000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f6', 'rs3 : f23', 'rd : f6', 'rs1 == rs2 == rd != rs3']
Last Code Sequence : 
	-[0x80000520]:fmadd.d ft6, ft6, ft6, fs7, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd ft6, 176(a5)
Current Store : [0x8000052c] : sd a7, 184(a5) -- Store: [0x80003fc8]:0x0000000000000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f15', 'rs3 : f28', 'rd : f24', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x401 and fm2 == 0x2af7840cd0fd6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000540]:fmadd.d fs8, ft1, fa5, ft8, dyn
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:fsd fs8, 192(a5)
Current Store : [0x8000054c] : sd a7, 200(a5) -- Store: [0x80003fd8]:0x0000000000000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f31', 'rs3 : f1', 'rd : f18', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x401 and fm2 == 0x2af7840cd0fd6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000560]:fmadd.d fs2, fs11, ft11, ft1, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd fs2, 208(a5)
Current Store : [0x8000056c] : sd a7, 216(a5) -- Store: [0x80003fe8]:0x0000000000000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f1', 'rs3 : f31', 'rd : f9', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x401 and fm2 == 0x2af7840cd0fd6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000580]:fmadd.d fs1, fa6, ft1, ft11, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd fs1, 224(a5)
Current Store : [0x8000058c] : sd a7, 232(a5) -- Store: [0x80003ff8]:0x0000000000000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f7', 'rs3 : f0', 'rd : f23', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x401 and fm2 == 0x2af7840cd0fd6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fmadd.d fs7, fa7, ft7, ft0, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsd fs7, 240(a5)
Current Store : [0x800005ac] : sd a7, 248(a5) -- Store: [0x80004008]:0x0000000000000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f13', 'rs3 : f16', 'rd : f5', 'fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 0 and fe2 == 0x401 and fm2 == 0x90d9b84a2ad4d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fmadd.d ft5, fs7, fa3, fa6, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:fsd ft5, 256(a5)
Current Store : [0x800005cc] : sd a7, 264(a5) -- Store: [0x80004018]:0x0000000000000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f20', 'rs3 : f27', 'rd : f25', 'fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 0 and fe2 == 0x401 and fm2 == 0x90d9b84a2ad4d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fmadd.d fs9, fa0, fs4, fs11, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd fs9, 272(a5)
Current Store : [0x800005ec] : sd a7, 280(a5) -- Store: [0x80004028]:0x0000000000000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f16', 'rs3 : f6', 'rd : f29', 'fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 0 and fe2 == 0x401 and fm2 == 0x90d9b84a2ad4d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000600]:fmadd.d ft9, fs4, fa6, ft6, dyn
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:fsd ft9, 288(a5)
Current Store : [0x8000060c] : sd a7, 296(a5) -- Store: [0x80004038]:0x0000000000000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f14', 'rs3 : f24', 'rd : f3', 'fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 0 and fe2 == 0x401 and fm2 == 0x90d9b84a2ad4d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000620]:fmadd.d ft3, ft5, fa4, fs8, dyn
	-[0x80000624]:csrrs a7, fflags, zero
	-[0x80000628]:fsd ft3, 304(a5)
Current Store : [0x8000062c] : sd a7, 312(a5) -- Store: [0x80004048]:0x0000000000000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f26', 'rs3 : f14', 'rd : f19', 'fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 0 and fe2 == 0x401 and fm2 == 0x90d9b84a2ad4d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fmadd.d fs3, ft9, fs10, fa4, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fs3, 320(a5)
Current Store : [0x8000064c] : sd a7, 328(a5) -- Store: [0x80004058]:0x0000000000000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f11', 'rs3 : f20', 'rd : f1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xfe0ac40de451e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000660]:fmadd.d ft1, ft4, fa1, fs4, dyn
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:fsd ft1, 336(a5)
Current Store : [0x8000066c] : sd a7, 344(a5) -- Store: [0x80004068]:0x0000000000000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f12', 'rs3 : f18', 'rd : f2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xfe0ac40de451e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000680]:fmadd.d ft2, fa1, fa2, fs2, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsd ft2, 352(a5)
Current Store : [0x8000068c] : sd a7, 360(a5) -- Store: [0x80004078]:0x0000000000000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f29', 'rs3 : f4', 'rd : f26', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xfe0ac40de451e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fmadd.d fs10, ft10, ft9, ft4, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd fs10, 368(a5)
Current Store : [0x800006ac] : sd a7, 376(a5) -- Store: [0x80004088]:0x0000000000000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f10', 'rs3 : f17', 'rd : f31', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xfe0ac40de451e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006c0]:fmadd.d ft11, ft8, fa0, fa7, dyn
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:fsd ft11, 384(a5)
Current Store : [0x800006cc] : sd a7, 392(a5) -- Store: [0x80004098]:0x0000000000000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f24', 'rs3 : f15', 'rd : f16', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xfe0ac40de451e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e0]:fmadd.d fa6, fa4, fs8, fa5, dyn
	-[0x800006e4]:csrrs a7, fflags, zero
	-[0x800006e8]:fsd fa6, 400(a5)
Current Store : [0x800006ec] : sd a7, 408(a5) -- Store: [0x800040a8]:0x0000000000000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f27', 'rs3 : f25', 'rd : f12', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe353964a8812d and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000700]:fmadd.d fa2, ft2, fs11, fs9, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:fsd fa2, 416(a5)
Current Store : [0x8000070c] : sd a7, 424(a5) -- Store: [0x800040b8]:0x0000000000000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f4', 'rs3 : f13', 'rd : f0', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe353964a8812d and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000720]:fmadd.d ft0, fs0, ft4, fa3, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd ft0, 432(a5)
Current Store : [0x8000072c] : sd a7, 440(a5) -- Store: [0x800040c8]:0x0000000000000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f25', 'rs3 : f11', 'rd : f27', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe353964a8812d and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000740]:fmadd.d fs11, fs8, fs9, fa1, dyn
	-[0x80000744]:csrrs a7, fflags, zero
	-[0x80000748]:fsd fs11, 448(a5)
Current Store : [0x8000074c] : sd a7, 456(a5) -- Store: [0x800040d8]:0x0000000000000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f22', 'rs3 : f2', 'rd : f10', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe353964a8812d and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000760]:fmadd.d fa0, fs9, fs6, ft2, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsd fa0, 464(a5)
Current Store : [0x8000076c] : sd a7, 472(a5) -- Store: [0x800040e8]:0x0000000000000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f3', 'rs3 : f29', 'rd : f11', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe353964a8812d and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000780]:fmadd.d fa1, ft0, ft3, ft9, dyn
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:fsd fa1, 480(a5)
Current Store : [0x8000078c] : sd a7, 488(a5) -- Store: [0x800040f8]:0x0000000000000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f0', 'rs3 : f10', 'rd : f4', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7bba9ce426aa5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800007a0]:fmadd.d ft4, fs3, ft0, fa0, dyn
	-[0x800007a4]:csrrs a7, fflags, zero
	-[0x800007a8]:fsd ft4, 496(a5)
Current Store : [0x800007ac] : sd a7, 504(a5) -- Store: [0x80004108]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7bba9ce426aa5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:fsd fa3, 512(a5)
Current Store : [0x800007cc] : sd a7, 520(a5) -- Store: [0x80004118]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7bba9ce426aa5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007e4]:csrrs a7, fflags, zero
	-[0x800007e8]:fsd fa3, 528(a5)
Current Store : [0x800007ec] : sd a7, 536(a5) -- Store: [0x80004128]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7bba9ce426aa5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000800]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa3, 544(a5)
Current Store : [0x8000080c] : sd a7, 552(a5) -- Store: [0x80004138]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7bba9ce426aa5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000820]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000824]:csrrs a7, fflags, zero
	-[0x80000828]:fsd fa3, 560(a5)
Current Store : [0x8000082c] : sd a7, 568(a5) -- Store: [0x80004148]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35f0bec2723e1 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000840]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsd fa3, 576(a5)
Current Store : [0x8000084c] : sd a7, 584(a5) -- Store: [0x80004158]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35f0bec2723e1 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000860]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000864]:csrrs a7, fflags, zero
	-[0x80000868]:fsd fa3, 592(a5)
Current Store : [0x8000086c] : sd a7, 600(a5) -- Store: [0x80004168]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35f0bec2723e1 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000880]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000884]:csrrs a7, fflags, zero
	-[0x80000888]:fsd fa3, 608(a5)
Current Store : [0x8000088c] : sd a7, 616(a5) -- Store: [0x80004178]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35f0bec2723e1 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800008a0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008a4]:csrrs a7, fflags, zero
	-[0x800008a8]:fsd fa3, 624(a5)
Current Store : [0x800008ac] : sd a7, 632(a5) -- Store: [0x80004188]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35f0bec2723e1 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008c4]:csrrs a7, fflags, zero
	-[0x800008c8]:fsd fa3, 640(a5)
Current Store : [0x800008cc] : sd a7, 648(a5) -- Store: [0x80004198]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6668ceb51c07e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa3, 656(a5)
Current Store : [0x800008ec] : sd a7, 664(a5) -- Store: [0x800041a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6668ceb51c07e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000900]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000904]:csrrs a7, fflags, zero
	-[0x80000908]:fsd fa3, 672(a5)
Current Store : [0x8000090c] : sd a7, 680(a5) -- Store: [0x800041b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6668ceb51c07e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000920]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:fsd fa3, 688(a5)
Current Store : [0x8000092c] : sd a7, 696(a5) -- Store: [0x800041c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6668ceb51c07e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000940]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000944]:csrrs a7, fflags, zero
	-[0x80000948]:fsd fa3, 704(a5)
Current Store : [0x8000094c] : sd a7, 712(a5) -- Store: [0x800041d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6668ceb51c07e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000960]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000964]:csrrs a7, fflags, zero
	-[0x80000968]:fsd fa3, 720(a5)
Current Store : [0x8000096c] : sd a7, 728(a5) -- Store: [0x800041e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x658d473310be9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000980]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000984]:csrrs a7, fflags, zero
	-[0x80000988]:fsd fa3, 736(a5)
Current Store : [0x8000098c] : sd a7, 744(a5) -- Store: [0x800041f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x658d473310be9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009a0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009a4]:csrrs a7, fflags, zero
	-[0x800009a8]:fsd fa3, 752(a5)
Current Store : [0x800009ac] : sd a7, 760(a5) -- Store: [0x80004208]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x658d473310be9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa3, 768(a5)
Current Store : [0x800009cc] : sd a7, 776(a5) -- Store: [0x80004218]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x658d473310be9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009e4]:csrrs a7, fflags, zero
	-[0x800009e8]:fsd fa3, 784(a5)
Current Store : [0x800009ec] : sd a7, 792(a5) -- Store: [0x80004228]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x658d473310be9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsd fa3, 800(a5)
Current Store : [0x80000a0c] : sd a7, 808(a5) -- Store: [0x80004238]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0xc87d5180d6de7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000a20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a24]:csrrs a7, fflags, zero
	-[0x80000a28]:fsd fa3, 816(a5)
Current Store : [0x80000a2c] : sd a7, 824(a5) -- Store: [0x80004248]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0xc87d5180d6de7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a44]:csrrs a7, fflags, zero
	-[0x80000a48]:fsd fa3, 832(a5)
Current Store : [0x80000a4c] : sd a7, 840(a5) -- Store: [0x80004258]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0xc87d5180d6de7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a64]:csrrs a7, fflags, zero
	-[0x80000a68]:fsd fa3, 848(a5)
Current Store : [0x80000a6c] : sd a7, 856(a5) -- Store: [0x80004268]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0xc87d5180d6de7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a84]:csrrs a7, fflags, zero
	-[0x80000a88]:fsd fa3, 864(a5)
Current Store : [0x80000a8c] : sd a7, 872(a5) -- Store: [0x80004278]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0xc87d5180d6de7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa3, 880(a5)
Current Store : [0x80000aac] : sd a7, 888(a5) -- Store: [0x80004288]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbcc84701e68b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000ac0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ac4]:csrrs a7, fflags, zero
	-[0x80000ac8]:fsd fa3, 896(a5)
Current Store : [0x80000acc] : sd a7, 904(a5) -- Store: [0x80004298]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbcc84701e68b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:fsd fa3, 912(a5)
Current Store : [0x80000aec] : sd a7, 920(a5) -- Store: [0x800042a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbcc84701e68b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b04]:csrrs a7, fflags, zero
	-[0x80000b08]:fsd fa3, 928(a5)
Current Store : [0x80000b0c] : sd a7, 936(a5) -- Store: [0x800042b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbcc84701e68b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b24]:csrrs a7, fflags, zero
	-[0x80000b28]:fsd fa3, 944(a5)
Current Store : [0x80000b2c] : sd a7, 952(a5) -- Store: [0x800042c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbcc84701e68b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b44]:csrrs a7, fflags, zero
	-[0x80000b48]:fsd fa3, 960(a5)
Current Store : [0x80000b4c] : sd a7, 968(a5) -- Store: [0x800042d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe9917808601d0 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000b60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b64]:csrrs a7, fflags, zero
	-[0x80000b68]:fsd fa3, 976(a5)
Current Store : [0x80000b6c] : sd a7, 984(a5) -- Store: [0x800042e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe9917808601d0 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa3, 992(a5)
Current Store : [0x80000b8c] : sd a7, 1000(a5) -- Store: [0x800042f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe9917808601d0 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ba0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ba4]:csrrs a7, fflags, zero
	-[0x80000ba8]:fsd fa3, 1008(a5)
Current Store : [0x80000bac] : sd a7, 1016(a5) -- Store: [0x80004308]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe9917808601d0 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000bc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000bc4]:csrrs a7, fflags, zero
	-[0x80000bc8]:fsd fa3, 1024(a5)
Current Store : [0x80000bcc] : sd a7, 1032(a5) -- Store: [0x80004318]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe9917808601d0 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000be0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000be4]:csrrs a7, fflags, zero
	-[0x80000be8]:fsd fa3, 1040(a5)
Current Store : [0x80000bec] : sd a7, 1048(a5) -- Store: [0x80004328]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x25e6811887cb1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000c00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c04]:csrrs a7, fflags, zero
	-[0x80000c08]:fsd fa3, 1056(a5)
Current Store : [0x80000c0c] : sd a7, 1064(a5) -- Store: [0x80004338]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x25e6811887cb1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c24]:csrrs a7, fflags, zero
	-[0x80000c28]:fsd fa3, 1072(a5)
Current Store : [0x80000c2c] : sd a7, 1080(a5) -- Store: [0x80004348]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x25e6811887cb1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c44]:csrrs a7, fflags, zero
	-[0x80000c48]:fsd fa3, 1088(a5)
Current Store : [0x80000c4c] : sd a7, 1096(a5) -- Store: [0x80004358]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x25e6811887cb1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa3, 1104(a5)
Current Store : [0x80000c6c] : sd a7, 1112(a5) -- Store: [0x80004368]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x25e6811887cb1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c84]:csrrs a7, fflags, zero
	-[0x80000c88]:fsd fa3, 1120(a5)
Current Store : [0x80000c8c] : sd a7, 1128(a5) -- Store: [0x80004378]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x91b45c5ab1967 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsd fa3, 1136(a5)
Current Store : [0x80000cac] : sd a7, 1144(a5) -- Store: [0x80004388]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x91b45c5ab1967 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000cc4]:csrrs a7, fflags, zero
	-[0x80000cc8]:fsd fa3, 1152(a5)
Current Store : [0x80000ccc] : sd a7, 1160(a5) -- Store: [0x80004398]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x91b45c5ab1967 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ce0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ce4]:csrrs a7, fflags, zero
	-[0x80000ce8]:fsd fa3, 1168(a5)
Current Store : [0x80000cec] : sd a7, 1176(a5) -- Store: [0x800043a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x91b45c5ab1967 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d04]:csrrs a7, fflags, zero
	-[0x80000d08]:fsd fa3, 1184(a5)
Current Store : [0x80000d0c] : sd a7, 1192(a5) -- Store: [0x800043b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x91b45c5ab1967 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d24]:csrrs a7, fflags, zero
	-[0x80000d28]:fsd fa3, 1200(a5)
Current Store : [0x80000d2c] : sd a7, 1208(a5) -- Store: [0x800043c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 0 and fe2 == 0x3fa and fm2 == 0x8c98532405521 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa3, 1216(a5)
Current Store : [0x80000d4c] : sd a7, 1224(a5) -- Store: [0x800043d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 0 and fe2 == 0x3fa and fm2 == 0x8c98532405521 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d64]:csrrs a7, fflags, zero
	-[0x80000d68]:fsd fa3, 1232(a5)
Current Store : [0x80000d6c] : sd a7, 1240(a5) -- Store: [0x800043e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 0 and fe2 == 0x3fa and fm2 == 0x8c98532405521 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:fsd fa3, 1248(a5)
Current Store : [0x80000d8c] : sd a7, 1256(a5) -- Store: [0x800043f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 0 and fe2 == 0x3fa and fm2 == 0x8c98532405521 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000da0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000da4]:csrrs a7, fflags, zero
	-[0x80000da8]:fsd fa3, 1264(a5)
Current Store : [0x80000dac] : sd a7, 1272(a5) -- Store: [0x80004408]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 0 and fe2 == 0x3fa and fm2 == 0x8c98532405521 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000dc4]:csrrs a7, fflags, zero
	-[0x80000dc8]:fsd fa3, 1280(a5)
Current Store : [0x80000dcc] : sd a7, 1288(a5) -- Store: [0x80004418]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x272646c589bef and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000de0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000de4]:csrrs a7, fflags, zero
	-[0x80000de8]:fsd fa3, 1296(a5)
Current Store : [0x80000dec] : sd a7, 1304(a5) -- Store: [0x80004428]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x272646c589bef and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e04]:csrrs a7, fflags, zero
	-[0x80000e08]:fsd fa3, 1312(a5)
Current Store : [0x80000e0c] : sd a7, 1320(a5) -- Store: [0x80004438]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x272646c589bef and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa3, 1328(a5)
Current Store : [0x80000e2c] : sd a7, 1336(a5) -- Store: [0x80004448]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x272646c589bef and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e44]:csrrs a7, fflags, zero
	-[0x80000e48]:fsd fa3, 1344(a5)
Current Store : [0x80000e4c] : sd a7, 1352(a5) -- Store: [0x80004458]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x272646c589bef and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e64]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e68]:csrrs a7, fflags, zero
	-[0x80000e6c]:fsd fa3, 1360(a5)
Current Store : [0x80000e70] : sd a7, 1368(a5) -- Store: [0x80004468]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31e7826018085 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000e84]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e88]:csrrs a7, fflags, zero
	-[0x80000e8c]:fsd fa3, 1376(a5)
Current Store : [0x80000e90] : sd a7, 1384(a5) -- Store: [0x80004478]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31e7826018085 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ea4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ea8]:csrrs a7, fflags, zero
	-[0x80000eac]:fsd fa3, 1392(a5)
Current Store : [0x80000eb0] : sd a7, 1400(a5) -- Store: [0x80004488]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31e7826018085 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000ec4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ec8]:csrrs a7, fflags, zero
	-[0x80000ecc]:fsd fa3, 1408(a5)
Current Store : [0x80000ed0] : sd a7, 1416(a5) -- Store: [0x80004498]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31e7826018085 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa3, 1424(a5)
Current Store : [0x80000ef0] : sd a7, 1432(a5) -- Store: [0x800044a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31e7826018085 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f04]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f08]:csrrs a7, fflags, zero
	-[0x80000f0c]:fsd fa3, 1440(a5)
Current Store : [0x80000f10] : sd a7, 1448(a5) -- Store: [0x800044b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x10b2cf635997b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000f24]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f28]:csrrs a7, fflags, zero
	-[0x80000f2c]:fsd fa3, 1456(a5)
Current Store : [0x80000f30] : sd a7, 1464(a5) -- Store: [0x800044c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x10b2cf635997b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f44]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f48]:csrrs a7, fflags, zero
	-[0x80000f4c]:fsd fa3, 1472(a5)
Current Store : [0x80000f50] : sd a7, 1480(a5) -- Store: [0x800044d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x10b2cf635997b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f64]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f68]:csrrs a7, fflags, zero
	-[0x80000f6c]:fsd fa3, 1488(a5)
Current Store : [0x80000f70] : sd a7, 1496(a5) -- Store: [0x800044e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x10b2cf635997b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f84]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f88]:csrrs a7, fflags, zero
	-[0x80000f8c]:fsd fa3, 1504(a5)
Current Store : [0x80000f90] : sd a7, 1512(a5) -- Store: [0x800044f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x10b2cf635997b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fa4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fa8]:csrrs a7, fflags, zero
	-[0x80000fac]:fsd fa3, 1520(a5)
Current Store : [0x80000fb0] : sd a7, 1528(a5) -- Store: [0x80004508]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x09fc0f75fdd31 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa3, 1536(a5)
Current Store : [0x80000fd0] : sd a7, 1544(a5) -- Store: [0x80004518]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x09fc0f75fdd31 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fe4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fe8]:csrrs a7, fflags, zero
	-[0x80000fec]:fsd fa3, 1552(a5)
Current Store : [0x80000ff0] : sd a7, 1560(a5) -- Store: [0x80004528]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x09fc0f75fdd31 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001004]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001008]:csrrs a7, fflags, zero
	-[0x8000100c]:fsd fa3, 1568(a5)
Current Store : [0x80001010] : sd a7, 1576(a5) -- Store: [0x80004538]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x09fc0f75fdd31 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001024]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001028]:csrrs a7, fflags, zero
	-[0x8000102c]:fsd fa3, 1584(a5)
Current Store : [0x80001030] : sd a7, 1592(a5) -- Store: [0x80004548]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x09fc0f75fdd31 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001044]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001048]:csrrs a7, fflags, zero
	-[0x8000104c]:fsd fa3, 1600(a5)
Current Store : [0x80001050] : sd a7, 1608(a5) -- Store: [0x80004558]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xdf6c8944627b9 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001064]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001068]:csrrs a7, fflags, zero
	-[0x8000106c]:fsd fa3, 1616(a5)
Current Store : [0x80001070] : sd a7, 1624(a5) -- Store: [0x80004568]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xdf6c8944627b9 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001084]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001088]:csrrs a7, fflags, zero
	-[0x8000108c]:fsd fa3, 1632(a5)
Current Store : [0x80001090] : sd a7, 1640(a5) -- Store: [0x80004578]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xdf6c8944627b9 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa3, 1648(a5)
Current Store : [0x800010b0] : sd a7, 1656(a5) -- Store: [0x80004588]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xdf6c8944627b9 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010c8]:csrrs a7, fflags, zero
	-[0x800010cc]:fsd fa3, 1664(a5)
Current Store : [0x800010d0] : sd a7, 1672(a5) -- Store: [0x80004598]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xdf6c8944627b9 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010e8]:csrrs a7, fflags, zero
	-[0x800010ec]:fsd fa3, 1680(a5)
Current Store : [0x800010f0] : sd a7, 1688(a5) -- Store: [0x800045a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 0 and fe2 == 0x405 and fm2 == 0x21d08b2b77735 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001104]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001108]:csrrs a7, fflags, zero
	-[0x8000110c]:fsd fa3, 1696(a5)
Current Store : [0x80001110] : sd a7, 1704(a5) -- Store: [0x800045b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 0 and fe2 == 0x405 and fm2 == 0x21d08b2b77735 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001124]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001128]:csrrs a7, fflags, zero
	-[0x8000112c]:fsd fa3, 1712(a5)
Current Store : [0x80001130] : sd a7, 1720(a5) -- Store: [0x800045c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 0 and fe2 == 0x405 and fm2 == 0x21d08b2b77735 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001144]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001148]:csrrs a7, fflags, zero
	-[0x8000114c]:fsd fa3, 1728(a5)
Current Store : [0x80001150] : sd a7, 1736(a5) -- Store: [0x800045d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 0 and fe2 == 0x405 and fm2 == 0x21d08b2b77735 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001164]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001168]:csrrs a7, fflags, zero
	-[0x8000116c]:fsd fa3, 1744(a5)
Current Store : [0x80001170] : sd a7, 1752(a5) -- Store: [0x800045e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 0 and fe2 == 0x405 and fm2 == 0x21d08b2b77735 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001184]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa3, 1760(a5)
Current Store : [0x80001190] : sd a7, 1768(a5) -- Store: [0x800045f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x6a139015a7821 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800011a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011a8]:csrrs a7, fflags, zero
	-[0x800011ac]:fsd fa3, 1776(a5)
Current Store : [0x800011b0] : sd a7, 1784(a5) -- Store: [0x80004608]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x6a139015a7821 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011c8]:csrrs a7, fflags, zero
	-[0x800011cc]:fsd fa3, 1792(a5)
Current Store : [0x800011d0] : sd a7, 1800(a5) -- Store: [0x80004618]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x6a139015a7821 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa3, 1808(a5)
Current Store : [0x800011f0] : sd a7, 1816(a5) -- Store: [0x80004628]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x6a139015a7821 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001204]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001208]:csrrs a7, fflags, zero
	-[0x8000120c]:fsd fa3, 1824(a5)
Current Store : [0x80001210] : sd a7, 1832(a5) -- Store: [0x80004638]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x6a139015a7821 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001224]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001228]:csrrs a7, fflags, zero
	-[0x8000122c]:fsd fa3, 1840(a5)
Current Store : [0x80001230] : sd a7, 1848(a5) -- Store: [0x80004648]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x1494ae586f255 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001244]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001248]:csrrs a7, fflags, zero
	-[0x8000124c]:fsd fa3, 1856(a5)
Current Store : [0x80001250] : sd a7, 1864(a5) -- Store: [0x80004658]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x1494ae586f255 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001264]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001268]:csrrs a7, fflags, zero
	-[0x8000126c]:fsd fa3, 1872(a5)
Current Store : [0x80001270] : sd a7, 1880(a5) -- Store: [0x80004668]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x1494ae586f255 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001284]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001288]:csrrs a7, fflags, zero
	-[0x8000128c]:fsd fa3, 1888(a5)
Current Store : [0x80001290] : sd a7, 1896(a5) -- Store: [0x80004678]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x1494ae586f255 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012a8]:csrrs a7, fflags, zero
	-[0x800012ac]:fsd fa3, 1904(a5)
Current Store : [0x800012b0] : sd a7, 1912(a5) -- Store: [0x80004688]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x1494ae586f255 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa3, 1920(a5)
Current Store : [0x800012d0] : sd a7, 1928(a5) -- Store: [0x80004698]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x18f6cbc59783a and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800012e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012e8]:csrrs a7, fflags, zero
	-[0x800012ec]:fsd fa3, 1936(a5)
Current Store : [0x800012f0] : sd a7, 1944(a5) -- Store: [0x800046a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x18f6cbc59783a and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001304]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001308]:csrrs a7, fflags, zero
	-[0x8000130c]:fsd fa3, 1952(a5)
Current Store : [0x80001310] : sd a7, 1960(a5) -- Store: [0x800046b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x18f6cbc59783a and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001324]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001328]:csrrs a7, fflags, zero
	-[0x8000132c]:fsd fa3, 1968(a5)
Current Store : [0x80001330] : sd a7, 1976(a5) -- Store: [0x800046c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x18f6cbc59783a and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001344]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001348]:csrrs a7, fflags, zero
	-[0x8000134c]:fsd fa3, 1984(a5)
Current Store : [0x80001350] : sd a7, 1992(a5) -- Store: [0x800046d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x18f6cbc59783a and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001364]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001368]:csrrs a7, fflags, zero
	-[0x8000136c]:fsd fa3, 2000(a5)
Current Store : [0x80001370] : sd a7, 2008(a5) -- Store: [0x800046e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x3280e91a916a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001384]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001388]:csrrs a7, fflags, zero
	-[0x8000138c]:fsd fa3, 2016(a5)
Current Store : [0x80001390] : sd a7, 2024(a5) -- Store: [0x800046f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x3280e91a916a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013b0]:csrrs a7, fflags, zero
	-[0x800013b4]:fsd fa3, 0(a5)
Current Store : [0x800013b8] : sd a7, 8(a5) -- Store: [0x80004708]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x3280e91a916a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800013cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013d0]:csrrs a7, fflags, zero
	-[0x800013d4]:fsd fa3, 16(a5)
Current Store : [0x800013d8] : sd a7, 24(a5) -- Store: [0x80004718]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x3280e91a916a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800013ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013f0]:csrrs a7, fflags, zero
	-[0x800013f4]:fsd fa3, 32(a5)
Current Store : [0x800013f8] : sd a7, 40(a5) -- Store: [0x80004728]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x3280e91a916a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000140c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001410]:csrrs a7, fflags, zero
	-[0x80001414]:fsd fa3, 48(a5)
Current Store : [0x80001418] : sd a7, 56(a5) -- Store: [0x80004738]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 0 and fe2 == 0x404 and fm2 == 0xddd0bd50d5455 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000142c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001430]:csrrs a7, fflags, zero
	-[0x80001434]:fsd fa3, 64(a5)
Current Store : [0x80001438] : sd a7, 72(a5) -- Store: [0x80004748]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 0 and fe2 == 0x404 and fm2 == 0xddd0bd50d5455 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000144c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001450]:csrrs a7, fflags, zero
	-[0x80001454]:fsd fa3, 80(a5)
Current Store : [0x80001458] : sd a7, 88(a5) -- Store: [0x80004758]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 0 and fe2 == 0x404 and fm2 == 0xddd0bd50d5455 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000146c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001470]:csrrs a7, fflags, zero
	-[0x80001474]:fsd fa3, 96(a5)
Current Store : [0x80001478] : sd a7, 104(a5) -- Store: [0x80004768]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 0 and fe2 == 0x404 and fm2 == 0xddd0bd50d5455 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000148c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001490]:csrrs a7, fflags, zero
	-[0x80001494]:fsd fa3, 112(a5)
Current Store : [0x80001498] : sd a7, 120(a5) -- Store: [0x80004778]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 0 and fe2 == 0x404 and fm2 == 0xddd0bd50d5455 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014b0]:csrrs a7, fflags, zero
	-[0x800014b4]:fsd fa3, 128(a5)
Current Store : [0x800014b8] : sd a7, 136(a5) -- Store: [0x80004788]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x912c42162d7e8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800014cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014d0]:csrrs a7, fflags, zero
	-[0x800014d4]:fsd fa3, 144(a5)
Current Store : [0x800014d8] : sd a7, 152(a5) -- Store: [0x80004798]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x912c42162d7e8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014f0]:csrrs a7, fflags, zero
	-[0x800014f4]:fsd fa3, 160(a5)
Current Store : [0x800014f8] : sd a7, 168(a5) -- Store: [0x800047a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x912c42162d7e8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000150c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001510]:csrrs a7, fflags, zero
	-[0x80001514]:fsd fa3, 176(a5)
Current Store : [0x80001518] : sd a7, 184(a5) -- Store: [0x800047b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x912c42162d7e8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000152c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001530]:csrrs a7, fflags, zero
	-[0x80001534]:fsd fa3, 192(a5)
Current Store : [0x80001538] : sd a7, 200(a5) -- Store: [0x800047c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x912c42162d7e8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000154c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001550]:csrrs a7, fflags, zero
	-[0x80001554]:fsd fa3, 208(a5)
Current Store : [0x80001558] : sd a7, 216(a5) -- Store: [0x800047d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2e8909705103d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000156c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001570]:csrrs a7, fflags, zero
	-[0x80001574]:fsd fa3, 224(a5)
Current Store : [0x80001578] : sd a7, 232(a5) -- Store: [0x800047e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2e8909705103d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000158c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001590]:csrrs a7, fflags, zero
	-[0x80001594]:fsd fa3, 240(a5)
Current Store : [0x80001598] : sd a7, 248(a5) -- Store: [0x800047f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2e8909705103d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015b0]:csrrs a7, fflags, zero
	-[0x800015b4]:fsd fa3, 256(a5)
Current Store : [0x800015b8] : sd a7, 264(a5) -- Store: [0x80004808]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2e8909705103d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015d0]:csrrs a7, fflags, zero
	-[0x800015d4]:fsd fa3, 272(a5)
Current Store : [0x800015d8] : sd a7, 280(a5) -- Store: [0x80004818]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 0 and fe2 == 0x407 and fm2 == 0xff8a642c3925c and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800015ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015f0]:csrrs a7, fflags, zero
	-[0x800015f4]:fsd fa3, 288(a5)
Current Store : [0x800015f8] : sd a7, 296(a5) -- Store: [0x80004828]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 0 and fe2 == 0x407 and fm2 == 0xff8a642c3925c and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000160c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:fsd fa3, 304(a5)
Current Store : [0x80001618] : sd a7, 312(a5) -- Store: [0x80004838]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x401 and fm2 == 0x2af7840cd0fd6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000162c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001630]:csrrs a7, fflags, zero
	-[0x80001634]:fsd fa3, 320(a5)
Current Store : [0x80001638] : sd a7, 328(a5) -- Store: [0x80004848]:0x0000000000000005





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
|   1|[0x80003f10]<br>0x0000000080003F10|- opcode : fmadd.d<br> - rs1 : f3<br> - rs2 : f5<br> - rs3 : f5<br> - rd : f15<br> - rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1<br>                                                                                                                                                                                                               |[0x800003c0]:fmadd.d fa5, ft3, ft5, ft5, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsd fa5, 0(a5)<br>       |
|   2|[0x80003f20]<br>0xDBEADFEEDBEADFEE|- rs1 : f21<br> - rs2 : f21<br> - rs3 : f21<br> - rd : f21<br> - rs1 == rs2 == rs3 == rd<br>                                                                                                                                                                                                                                                                |[0x800003e0]:fmadd.d fs5, fs5, fs5, fs5, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsd fs5, 16(a5)<br>      |
|   3|[0x80003f30]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f31<br> - rs2 : f30<br> - rs3 : f3<br> - rd : f20<br> - rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2e8909705103d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 3  #nosat<br> |[0x80000400]:fmadd.d fs4, ft11, ft10, ft3, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fs4, 32(a5)<br>    |
|   4|[0x80003f40]<br>0xF56FF76DF56FF76D|- rs1 : f22<br> - rs2 : f28<br> - rs3 : f22<br> - rd : f14<br> - rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2<br>                                                                                                                                                                                                                                   |[0x80000420]:fmadd.d fa4, fs6, ft8, fs6, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsd fa4, 48(a5)<br>      |
|   5|[0x80003f50]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f18<br> - rs2 : f18<br> - rs3 : f19<br> - rd : f28<br> - rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3<br>                                                                                                                                                                                                                                   |[0x80000440]:fmadd.d ft8, fs2, fs2, fs3, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:fsd ft8, 64(a5)<br>      |
|   6|[0x80003f60]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f12<br> - rs2 : f8<br> - rs3 : f8<br> - rd : f8<br> - rd == rs2 == rs3 != rs1<br>                                                                                                                                                                                                                                                                   |[0x80000460]:fmadd.d fs0, fa2, fs0, fs0, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd fs0, 80(a5)<br>      |
|   7|[0x80003f70]<br>0x6DF56FF76DF56FF7|- rs1 : f9<br> - rs2 : f9<br> - rs3 : f9<br> - rd : f22<br> - rs1 == rs2 == rs3 != rd<br>                                                                                                                                                                                                                                                                   |[0x80000480]:fmadd.d fs6, fs1, fs1, fs1, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd fs6, 96(a5)<br>      |
|   8|[0x80003f80]<br>0xEADFEEDBEADFEEDB|- rs1 : f13<br> - rs2 : f23<br> - rs3 : f12<br> - rd : f13<br> - rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2<br> - fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 0 and fe2 == 0x407 and fm2 == 0xff8a642c3925c and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 3  #nosat<br>                              |[0x800004a0]:fmadd.d fa3, fa3, fs7, fa2, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:fsd fa3, 112(a5)<br>     |
|   9|[0x80003f90]<br>0xF76DF56FF76DF56F|- rs1 : f26<br> - rs2 : f19<br> - rs3 : f30<br> - rd : f30<br> - rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1<br> - fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 0 and fe2 == 0x407 and fm2 == 0xff8a642c3925c and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 2  #nosat<br>                              |[0x800004c0]:fmadd.d ft10, fs10, fs3, ft10, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd ft10, 128(a5)<br> |
|  10|[0x80003fa0]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f7<br> - rs2 : f2<br> - rs3 : f7<br> - rd : f7<br> - rs1 == rd == rs3 != rs2<br>                                                                                                                                                                                                                                                                    |[0x800004e0]:fmadd.d ft7, ft7, ft2, ft7, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:fsd ft7, 144(a5)<br>     |
|  11|[0x80003fb0]<br>0x0000000000000005|- rs1 : f15<br> - rs2 : f17<br> - rs3 : f26<br> - rd : f17<br> - rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1<br> - fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 0 and fe2 == 0x407 and fm2 == 0xff8a642c3925c and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 0  #nosat<br>                              |[0x80000500]:fmadd.d fa7, fa5, fa7, fs10, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsd fa7, 160(a5)<br>    |
|  12|[0x80003fc0]<br>0x0000000080003000|- rs1 : f6<br> - rs2 : f6<br> - rs3 : f23<br> - rd : f6<br> - rs1 == rs2 == rd != rs3<br>                                                                                                                                                                                                                                                                   |[0x80000520]:fmadd.d ft6, ft6, ft6, fs7, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd ft6, 176(a5)<br>     |
|  13|[0x80003fd0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f1<br> - rs2 : f15<br> - rs3 : f28<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x401 and fm2 == 0x2af7840cd0fd6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 3  #nosat<br>                                                                                          |[0x80000540]:fmadd.d fs8, ft1, fa5, ft8, dyn<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:fsd fs8, 192(a5)<br>     |
|  14|[0x80003fe0]<br>0xDF56FF76DF56FF76|- rs1 : f27<br> - rs2 : f31<br> - rs3 : f1<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x401 and fm2 == 0x2af7840cd0fd6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 2  #nosat<br>                                                                                          |[0x80000560]:fmadd.d fs2, fs11, ft11, ft1, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd fs2, 208(a5)<br>   |
|  15|[0x80003ff0]<br>0xADFEEDBEADFEEDBE|- rs1 : f16<br> - rs2 : f1<br> - rs3 : f31<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x401 and fm2 == 0x2af7840cd0fd6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 1  #nosat<br>                                                                                           |[0x80000580]:fmadd.d fs1, fa6, ft1, ft11, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd fs1, 224(a5)<br>    |
|  16|[0x80004000]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f17<br> - rs2 : f7<br> - rs3 : f0<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x401 and fm2 == 0x2af7840cd0fd6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 0  #nosat<br>                                                                                           |[0x800005a0]:fmadd.d fs7, fa7, ft7, ft0, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsd fs7, 240(a5)<br>     |
|  17|[0x80004010]<br>0x0000000080000390|- rs1 : f23<br> - rs2 : f13<br> - rs3 : f16<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 0 and fe2 == 0x401 and fm2 == 0x90d9b84a2ad4d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 4  #nosat<br>                                                                                          |[0x800005c0]:fmadd.d ft5, fs7, fa3, fa6, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:fsd ft5, 256(a5)<br>     |
|  18|[0x80004020]<br>0xEDBEADFEEDBEADFE|- rs1 : f10<br> - rs2 : f20<br> - rs3 : f27<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 0 and fe2 == 0x401 and fm2 == 0x90d9b84a2ad4d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 3  #nosat<br>                                                                                         |[0x800005e0]:fmadd.d fs9, fa0, fs4, fs11, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd fs9, 272(a5)<br>    |
|  19|[0x80004030]<br>0xEEDBEADFEEDBEADF|- rs1 : f20<br> - rs2 : f16<br> - rs3 : f6<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 0 and fe2 == 0x401 and fm2 == 0x90d9b84a2ad4d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 2  #nosat<br>                                                                                          |[0x80000600]:fmadd.d ft9, fs4, fa6, ft6, dyn<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:fsd ft9, 288(a5)<br>     |
|  20|[0x80004040]<br>0x0000000A00000000|- rs1 : f5<br> - rs2 : f14<br> - rs3 : f24<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 0 and fe2 == 0x401 and fm2 == 0x90d9b84a2ad4d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 1  #nosat<br>                                                                                           |[0x80000620]:fmadd.d ft3, ft5, fa4, fs8, dyn<br> [0x80000624]:csrrs a7, fflags, zero<br> [0x80000628]:fsd ft3, 304(a5)<br>     |
|  21|[0x80004050]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f29<br> - rs2 : f26<br> - rs3 : f14<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 0 and fe2 == 0x401 and fm2 == 0x90d9b84a2ad4d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 0  #nosat<br>                                                                                         |[0x80000640]:fmadd.d fs3, ft9, fs10, fa4, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fs3, 320(a5)<br>    |
|  22|[0x80004060]<br>0xFEEDBEADFEEDBEAD|- rs1 : f4<br> - rs2 : f11<br> - rs3 : f20<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xfe0ac40de451e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 4  #nosat<br>                                                                                           |[0x80000660]:fmadd.d ft1, ft4, fa1, fs4, dyn<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:fsd ft1, 336(a5)<br>     |
|  23|[0x80004070]<br>0x0000000A00006000|- rs1 : f11<br> - rs2 : f12<br> - rs3 : f18<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xfe0ac40de451e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 3  #nosat<br>                                                                                          |[0x80000680]:fmadd.d ft2, fa1, fa2, fs2, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsd ft2, 352(a5)<br>     |
|  24|[0x80004080]<br>0x76DF56FF76DF56FF|- rs1 : f30<br> - rs2 : f29<br> - rs3 : f4<br> - rd : f26<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xfe0ac40de451e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 2  #nosat<br>                                                                                          |[0x800006a0]:fmadd.d fs10, ft10, ft9, ft4, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd fs10, 368(a5)<br>  |
|  25|[0x80004090]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f28<br> - rs2 : f10<br> - rs3 : f17<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xfe0ac40de451e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 1  #nosat<br>                                                                                         |[0x800006c0]:fmadd.d ft11, ft8, fa0, fa7, dyn<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:fsd ft11, 384(a5)<br>   |
|  26|[0x800040a0]<br>0x0000000080003010|- rs1 : f14<br> - rs2 : f24<br> - rs3 : f15<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xfe0ac40de451e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 0  #nosat<br>                                                                                         |[0x800006e0]:fmadd.d fa6, fa4, fs8, fa5, dyn<br> [0x800006e4]:csrrs a7, fflags, zero<br> [0x800006e8]:fsd fa6, 400(a5)<br>     |
|  27|[0x800040b0]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f2<br> - rs2 : f27<br> - rs3 : f25<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe353964a8812d and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 4  #nosat<br>                                                                                          |[0x80000700]:fmadd.d fa2, ft2, fs11, fs9, dyn<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:fsd fa2, 416(a5)<br>    |
|  28|[0x800040c0]<br>0x0000000000000000|- rs1 : f8<br> - rs2 : f4<br> - rs3 : f13<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe353964a8812d and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 3  #nosat<br>                                                                                            |[0x80000720]:fmadd.d ft0, fs0, ft4, fa3, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd ft0, 432(a5)<br>     |
|  29|[0x800040d0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f24<br> - rs2 : f25<br> - rs3 : f11<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe353964a8812d and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 2  #nosat<br>                                                                                         |[0x80000740]:fmadd.d fs11, fs8, fs9, fa1, dyn<br> [0x80000744]:csrrs a7, fflags, zero<br> [0x80000748]:fsd fs11, 448(a5)<br>   |
|  30|[0x800040e0]<br>0x56FF76DF56FF76DF|- rs1 : f25<br> - rs2 : f22<br> - rs3 : f2<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe353964a8812d and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 1  #nosat<br>                                                                                          |[0x80000760]:fmadd.d fa0, fs9, fs6, ft2, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsd fa0, 464(a5)<br>     |
|  31|[0x800040f0]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f0<br> - rs2 : f3<br> - rs3 : f29<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe353964a8812d and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 0  #nosat<br>                                                                                           |[0x80000780]:fmadd.d fa1, ft0, ft3, ft9, dyn<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:fsd fa1, 480(a5)<br>     |
|  32|[0x80004100]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f19<br> - rs2 : f0<br> - rs3 : f10<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7bba9ce426aa5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 4  #nosat<br>                                                                                           |[0x800007a0]:fmadd.d ft4, fs3, ft0, fa0, dyn<br> [0x800007a4]:csrrs a7, fflags, zero<br> [0x800007a8]:fsd ft4, 496(a5)<br>     |
|  33|[0x80004110]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7bba9ce426aa5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800007c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:fsd fa3, 512(a5)<br>     |
|  34|[0x80004120]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7bba9ce426aa5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800007e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007e4]:csrrs a7, fflags, zero<br> [0x800007e8]:fsd fa3, 528(a5)<br>     |
|  35|[0x80004130]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7bba9ce426aa5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000800]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa3, 544(a5)<br>     |
|  36|[0x80004140]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7bba9ce426aa5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000820]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000824]:csrrs a7, fflags, zero<br> [0x80000828]:fsd fa3, 560(a5)<br>     |
|  37|[0x80004150]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35f0bec2723e1 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000840]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsd fa3, 576(a5)<br>     |
|  38|[0x80004160]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35f0bec2723e1 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000860]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000864]:csrrs a7, fflags, zero<br> [0x80000868]:fsd fa3, 592(a5)<br>     |
|  39|[0x80004170]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35f0bec2723e1 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000880]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000884]:csrrs a7, fflags, zero<br> [0x80000888]:fsd fa3, 608(a5)<br>     |
|  40|[0x80004180]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35f0bec2723e1 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800008a0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008a4]:csrrs a7, fflags, zero<br> [0x800008a8]:fsd fa3, 624(a5)<br>     |
|  41|[0x80004190]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35f0bec2723e1 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800008c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008c4]:csrrs a7, fflags, zero<br> [0x800008c8]:fsd fa3, 640(a5)<br>     |
|  42|[0x800041a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6668ceb51c07e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800008e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa3, 656(a5)<br>     |
|  43|[0x800041b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6668ceb51c07e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000900]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000904]:csrrs a7, fflags, zero<br> [0x80000908]:fsd fa3, 672(a5)<br>     |
|  44|[0x800041c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6668ceb51c07e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000920]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:fsd fa3, 688(a5)<br>     |
|  45|[0x800041d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6668ceb51c07e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000940]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000944]:csrrs a7, fflags, zero<br> [0x80000948]:fsd fa3, 704(a5)<br>     |
|  46|[0x800041e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6668ceb51c07e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000960]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000964]:csrrs a7, fflags, zero<br> [0x80000968]:fsd fa3, 720(a5)<br>     |
|  47|[0x800041f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x658d473310be9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000980]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000984]:csrrs a7, fflags, zero<br> [0x80000988]:fsd fa3, 736(a5)<br>     |
|  48|[0x80004200]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x658d473310be9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800009a0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009a4]:csrrs a7, fflags, zero<br> [0x800009a8]:fsd fa3, 752(a5)<br>     |
|  49|[0x80004210]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x658d473310be9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800009c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa3, 768(a5)<br>     |
|  50|[0x80004220]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x658d473310be9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800009e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009e4]:csrrs a7, fflags, zero<br> [0x800009e8]:fsd fa3, 784(a5)<br>     |
|  51|[0x80004230]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x658d473310be9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000a00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsd fa3, 800(a5)<br>     |
|  52|[0x80004240]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0xc87d5180d6de7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000a20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a24]:csrrs a7, fflags, zero<br> [0x80000a28]:fsd fa3, 816(a5)<br>     |
|  53|[0x80004250]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0xc87d5180d6de7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a44]:csrrs a7, fflags, zero<br> [0x80000a48]:fsd fa3, 832(a5)<br>     |
|  54|[0x80004260]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0xc87d5180d6de7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000a60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a64]:csrrs a7, fflags, zero<br> [0x80000a68]:fsd fa3, 848(a5)<br>     |
|  55|[0x80004270]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0xc87d5180d6de7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000a80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a84]:csrrs a7, fflags, zero<br> [0x80000a88]:fsd fa3, 864(a5)<br>     |
|  56|[0x80004280]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0xc87d5180d6de7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000aa0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa3, 880(a5)<br>     |
|  57|[0x80004290]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbcc84701e68b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000ac0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ac4]:csrrs a7, fflags, zero<br> [0x80000ac8]:fsd fa3, 896(a5)<br>     |
|  58|[0x800042a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbcc84701e68b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ae0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:fsd fa3, 912(a5)<br>     |
|  59|[0x800042b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbcc84701e68b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000b00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b04]:csrrs a7, fflags, zero<br> [0x80000b08]:fsd fa3, 928(a5)<br>     |
|  60|[0x800042c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbcc84701e68b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000b20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b24]:csrrs a7, fflags, zero<br> [0x80000b28]:fsd fa3, 944(a5)<br>     |
|  61|[0x800042d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbcc84701e68b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000b40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b44]:csrrs a7, fflags, zero<br> [0x80000b48]:fsd fa3, 960(a5)<br>     |
|  62|[0x800042e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe9917808601d0 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000b60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b64]:csrrs a7, fflags, zero<br> [0x80000b68]:fsd fa3, 976(a5)<br>     |
|  63|[0x800042f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe9917808601d0 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa3, 992(a5)<br>     |
|  64|[0x80004300]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe9917808601d0 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000ba0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ba4]:csrrs a7, fflags, zero<br> [0x80000ba8]:fsd fa3, 1008(a5)<br>    |
|  65|[0x80004310]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe9917808601d0 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000bc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000bc4]:csrrs a7, fflags, zero<br> [0x80000bc8]:fsd fa3, 1024(a5)<br>    |
|  66|[0x80004320]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe9917808601d0 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000be0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000be4]:csrrs a7, fflags, zero<br> [0x80000be8]:fsd fa3, 1040(a5)<br>    |
|  67|[0x80004330]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x25e6811887cb1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000c00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c04]:csrrs a7, fflags, zero<br> [0x80000c08]:fsd fa3, 1056(a5)<br>    |
|  68|[0x80004340]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x25e6811887cb1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c24]:csrrs a7, fflags, zero<br> [0x80000c28]:fsd fa3, 1072(a5)<br>    |
|  69|[0x80004350]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x25e6811887cb1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000c40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c44]:csrrs a7, fflags, zero<br> [0x80000c48]:fsd fa3, 1088(a5)<br>    |
|  70|[0x80004360]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x25e6811887cb1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000c60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa3, 1104(a5)<br>    |
|  71|[0x80004370]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x25e6811887cb1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000c80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c84]:csrrs a7, fflags, zero<br> [0x80000c88]:fsd fa3, 1120(a5)<br>    |
|  72|[0x80004380]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x91b45c5ab1967 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000ca0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsd fa3, 1136(a5)<br>    |
|  73|[0x80004390]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x91b45c5ab1967 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000cc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000cc4]:csrrs a7, fflags, zero<br> [0x80000cc8]:fsd fa3, 1152(a5)<br>    |
|  74|[0x800043a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x91b45c5ab1967 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000ce0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ce4]:csrrs a7, fflags, zero<br> [0x80000ce8]:fsd fa3, 1168(a5)<br>    |
|  75|[0x800043b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x91b45c5ab1967 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000d00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d04]:csrrs a7, fflags, zero<br> [0x80000d08]:fsd fa3, 1184(a5)<br>    |
|  76|[0x800043c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x91b45c5ab1967 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000d20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d24]:csrrs a7, fflags, zero<br> [0x80000d28]:fsd fa3, 1200(a5)<br>    |
|  77|[0x800043d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 0 and fe2 == 0x3fa and fm2 == 0x8c98532405521 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000d40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa3, 1216(a5)<br>    |
|  78|[0x800043e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 0 and fe2 == 0x3fa and fm2 == 0x8c98532405521 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d64]:csrrs a7, fflags, zero<br> [0x80000d68]:fsd fa3, 1232(a5)<br>    |
|  79|[0x800043f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 0 and fe2 == 0x3fa and fm2 == 0x8c98532405521 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000d80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:fsd fa3, 1248(a5)<br>    |
|  80|[0x80004400]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 0 and fe2 == 0x3fa and fm2 == 0x8c98532405521 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000da0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000da4]:csrrs a7, fflags, zero<br> [0x80000da8]:fsd fa3, 1264(a5)<br>    |
|  81|[0x80004410]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 0 and fe2 == 0x3fa and fm2 == 0x8c98532405521 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000dc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000dc4]:csrrs a7, fflags, zero<br> [0x80000dc8]:fsd fa3, 1280(a5)<br>    |
|  82|[0x80004420]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x272646c589bef and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000de0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000de4]:csrrs a7, fflags, zero<br> [0x80000de8]:fsd fa3, 1296(a5)<br>    |
|  83|[0x80004430]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x272646c589bef and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e04]:csrrs a7, fflags, zero<br> [0x80000e08]:fsd fa3, 1312(a5)<br>    |
|  84|[0x80004440]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x272646c589bef and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000e20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa3, 1328(a5)<br>    |
|  85|[0x80004450]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x272646c589bef and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000e40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e44]:csrrs a7, fflags, zero<br> [0x80000e48]:fsd fa3, 1344(a5)<br>    |
|  86|[0x80004460]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x272646c589bef and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000e64]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e68]:csrrs a7, fflags, zero<br> [0x80000e6c]:fsd fa3, 1360(a5)<br>    |
|  87|[0x80004470]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31e7826018085 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000e84]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e88]:csrrs a7, fflags, zero<br> [0x80000e8c]:fsd fa3, 1376(a5)<br>    |
|  88|[0x80004480]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31e7826018085 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ea4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ea8]:csrrs a7, fflags, zero<br> [0x80000eac]:fsd fa3, 1392(a5)<br>    |
|  89|[0x80004490]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31e7826018085 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000ec4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ec8]:csrrs a7, fflags, zero<br> [0x80000ecc]:fsd fa3, 1408(a5)<br>    |
|  90|[0x800044a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31e7826018085 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000ee4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa3, 1424(a5)<br>    |
|  91|[0x800044b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x31e7826018085 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000f04]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f08]:csrrs a7, fflags, zero<br> [0x80000f0c]:fsd fa3, 1440(a5)<br>    |
|  92|[0x800044c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x10b2cf635997b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000f24]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f28]:csrrs a7, fflags, zero<br> [0x80000f2c]:fsd fa3, 1456(a5)<br>    |
|  93|[0x800044d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x10b2cf635997b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f44]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f48]:csrrs a7, fflags, zero<br> [0x80000f4c]:fsd fa3, 1472(a5)<br>    |
|  94|[0x800044e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x10b2cf635997b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80000f64]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f68]:csrrs a7, fflags, zero<br> [0x80000f6c]:fsd fa3, 1488(a5)<br>    |
|  95|[0x800044f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x10b2cf635997b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80000f84]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f88]:csrrs a7, fflags, zero<br> [0x80000f8c]:fsd fa3, 1504(a5)<br>    |
|  96|[0x80004500]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x10b2cf635997b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80000fa4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fa8]:csrrs a7, fflags, zero<br> [0x80000fac]:fsd fa3, 1520(a5)<br>    |
|  97|[0x80004510]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x09fc0f75fdd31 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80000fc4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa3, 1536(a5)<br>    |
|  98|[0x80004520]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x09fc0f75fdd31 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000fe4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fe8]:csrrs a7, fflags, zero<br> [0x80000fec]:fsd fa3, 1552(a5)<br>    |
|  99|[0x80004530]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x09fc0f75fdd31 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001004]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001008]:csrrs a7, fflags, zero<br> [0x8000100c]:fsd fa3, 1568(a5)<br>    |
| 100|[0x80004540]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x09fc0f75fdd31 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001024]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001028]:csrrs a7, fflags, zero<br> [0x8000102c]:fsd fa3, 1584(a5)<br>    |
| 101|[0x80004550]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x09fc0f75fdd31 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001044]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001048]:csrrs a7, fflags, zero<br> [0x8000104c]:fsd fa3, 1600(a5)<br>    |
| 102|[0x80004560]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xdf6c8944627b9 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001064]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001068]:csrrs a7, fflags, zero<br> [0x8000106c]:fsd fa3, 1616(a5)<br>    |
| 103|[0x80004570]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xdf6c8944627b9 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001084]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001088]:csrrs a7, fflags, zero<br> [0x8000108c]:fsd fa3, 1632(a5)<br>    |
| 104|[0x80004580]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xdf6c8944627b9 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800010a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa3, 1648(a5)<br>    |
| 105|[0x80004590]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xdf6c8944627b9 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800010c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010c8]:csrrs a7, fflags, zero<br> [0x800010cc]:fsd fa3, 1664(a5)<br>    |
| 106|[0x800045a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xdf6c8944627b9 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800010e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010e8]:csrrs a7, fflags, zero<br> [0x800010ec]:fsd fa3, 1680(a5)<br>    |
| 107|[0x800045b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 0 and fe2 == 0x405 and fm2 == 0x21d08b2b77735 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001104]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001108]:csrrs a7, fflags, zero<br> [0x8000110c]:fsd fa3, 1696(a5)<br>    |
| 108|[0x800045c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 0 and fe2 == 0x405 and fm2 == 0x21d08b2b77735 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001124]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001128]:csrrs a7, fflags, zero<br> [0x8000112c]:fsd fa3, 1712(a5)<br>    |
| 109|[0x800045d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 0 and fe2 == 0x405 and fm2 == 0x21d08b2b77735 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001144]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001148]:csrrs a7, fflags, zero<br> [0x8000114c]:fsd fa3, 1728(a5)<br>    |
| 110|[0x800045e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 0 and fe2 == 0x405 and fm2 == 0x21d08b2b77735 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001164]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001168]:csrrs a7, fflags, zero<br> [0x8000116c]:fsd fa3, 1744(a5)<br>    |
| 111|[0x800045f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 0 and fe2 == 0x405 and fm2 == 0x21d08b2b77735 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001184]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa3, 1760(a5)<br>    |
| 112|[0x80004600]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x6a139015a7821 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800011a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011a8]:csrrs a7, fflags, zero<br> [0x800011ac]:fsd fa3, 1776(a5)<br>    |
| 113|[0x80004610]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x6a139015a7821 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800011c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011c8]:csrrs a7, fflags, zero<br> [0x800011cc]:fsd fa3, 1792(a5)<br>    |
| 114|[0x80004620]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x6a139015a7821 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800011e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa3, 1808(a5)<br>    |
| 115|[0x80004630]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x6a139015a7821 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001204]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001208]:csrrs a7, fflags, zero<br> [0x8000120c]:fsd fa3, 1824(a5)<br>    |
| 116|[0x80004640]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x6a139015a7821 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001224]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001228]:csrrs a7, fflags, zero<br> [0x8000122c]:fsd fa3, 1840(a5)<br>    |
| 117|[0x80004650]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x1494ae586f255 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001244]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001248]:csrrs a7, fflags, zero<br> [0x8000124c]:fsd fa3, 1856(a5)<br>    |
| 118|[0x80004660]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x1494ae586f255 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001264]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001268]:csrrs a7, fflags, zero<br> [0x8000126c]:fsd fa3, 1872(a5)<br>    |
| 119|[0x80004670]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x1494ae586f255 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001284]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001288]:csrrs a7, fflags, zero<br> [0x8000128c]:fsd fa3, 1888(a5)<br>    |
| 120|[0x80004680]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x1494ae586f255 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800012a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012a8]:csrrs a7, fflags, zero<br> [0x800012ac]:fsd fa3, 1904(a5)<br>    |
| 121|[0x80004690]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x1494ae586f255 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800012c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa3, 1920(a5)<br>    |
| 122|[0x800046a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x18f6cbc59783a and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800012e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012e8]:csrrs a7, fflags, zero<br> [0x800012ec]:fsd fa3, 1936(a5)<br>    |
| 123|[0x800046b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x18f6cbc59783a and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001304]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001308]:csrrs a7, fflags, zero<br> [0x8000130c]:fsd fa3, 1952(a5)<br>    |
| 124|[0x800046c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x18f6cbc59783a and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x80001324]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001328]:csrrs a7, fflags, zero<br> [0x8000132c]:fsd fa3, 1968(a5)<br>    |
| 125|[0x800046d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x18f6cbc59783a and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x80001344]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001348]:csrrs a7, fflags, zero<br> [0x8000134c]:fsd fa3, 1984(a5)<br>    |
| 126|[0x800046e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x18f6cbc59783a and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x80001364]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001368]:csrrs a7, fflags, zero<br> [0x8000136c]:fsd fa3, 2000(a5)<br>    |
| 127|[0x800046f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x3280e91a916a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x80001384]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001388]:csrrs a7, fflags, zero<br> [0x8000138c]:fsd fa3, 2016(a5)<br>    |
| 128|[0x80004700]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x3280e91a916a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800013ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013b0]:csrrs a7, fflags, zero<br> [0x800013b4]:fsd fa3, 0(a5)<br>       |
| 129|[0x80004710]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x3280e91a916a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x800013cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013d0]:csrrs a7, fflags, zero<br> [0x800013d4]:fsd fa3, 16(a5)<br>      |
| 130|[0x80004720]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x3280e91a916a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800013ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013f0]:csrrs a7, fflags, zero<br> [0x800013f4]:fsd fa3, 32(a5)<br>      |
| 131|[0x80004730]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x3280e91a916a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x8000140c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001410]:csrrs a7, fflags, zero<br> [0x80001414]:fsd fa3, 48(a5)<br>      |
| 132|[0x80004740]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 0 and fe2 == 0x404 and fm2 == 0xddd0bd50d5455 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x8000142c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001430]:csrrs a7, fflags, zero<br> [0x80001434]:fsd fa3, 64(a5)<br>      |
| 133|[0x80004750]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 0 and fe2 == 0x404 and fm2 == 0xddd0bd50d5455 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000144c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001450]:csrrs a7, fflags, zero<br> [0x80001454]:fsd fa3, 80(a5)<br>      |
| 134|[0x80004760]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 0 and fe2 == 0x404 and fm2 == 0xddd0bd50d5455 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x8000146c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001470]:csrrs a7, fflags, zero<br> [0x80001474]:fsd fa3, 96(a5)<br>      |
| 135|[0x80004770]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 0 and fe2 == 0x404 and fm2 == 0xddd0bd50d5455 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x8000148c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001490]:csrrs a7, fflags, zero<br> [0x80001494]:fsd fa3, 112(a5)<br>     |
| 136|[0x80004780]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 0 and fe2 == 0x404 and fm2 == 0xddd0bd50d5455 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800014ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014b0]:csrrs a7, fflags, zero<br> [0x800014b4]:fsd fa3, 128(a5)<br>     |
| 137|[0x80004790]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x912c42162d7e8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800014cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014d0]:csrrs a7, fflags, zero<br> [0x800014d4]:fsd fa3, 144(a5)<br>     |
| 138|[0x800047a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x912c42162d7e8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800014ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014f0]:csrrs a7, fflags, zero<br> [0x800014f4]:fsd fa3, 160(a5)<br>     |
| 139|[0x800047b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x912c42162d7e8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x8000150c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001510]:csrrs a7, fflags, zero<br> [0x80001514]:fsd fa3, 176(a5)<br>     |
| 140|[0x800047c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x912c42162d7e8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x8000152c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001530]:csrrs a7, fflags, zero<br> [0x80001534]:fsd fa3, 192(a5)<br>     |
| 141|[0x800047d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x912c42162d7e8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x8000154c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001550]:csrrs a7, fflags, zero<br> [0x80001554]:fsd fa3, 208(a5)<br>     |
| 142|[0x800047e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2e8909705103d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x8000156c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001570]:csrrs a7, fflags, zero<br> [0x80001574]:fsd fa3, 224(a5)<br>     |
| 143|[0x800047f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2e8909705103d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 2  #nosat<br>                                                                                                                                                        |[0x8000158c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001590]:csrrs a7, fflags, zero<br> [0x80001594]:fsd fa3, 240(a5)<br>     |
| 144|[0x80004800]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2e8909705103d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x800015ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015b0]:csrrs a7, fflags, zero<br> [0x800015b4]:fsd fa3, 256(a5)<br>     |
| 145|[0x80004810]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2e8909705103d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 0  #nosat<br>                                                                                                                                                        |[0x800015cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015d0]:csrrs a7, fflags, zero<br> [0x800015d4]:fsd fa3, 272(a5)<br>     |
| 146|[0x80004820]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 0 and fe2 == 0x407 and fm2 == 0xff8a642c3925c and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x800015ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015f0]:csrrs a7, fflags, zero<br> [0x800015f4]:fsd fa3, 288(a5)<br>     |
| 147|[0x80004830]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 0 and fe2 == 0x407 and fm2 == 0xff8a642c3925c and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 1  #nosat<br>                                                                                                                                                        |[0x8000160c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:fsd fa3, 304(a5)<br>     |
| 148|[0x80004840]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x401 and fm2 == 0x2af7840cd0fd6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 4  #nosat<br>                                                                                                                                                        |[0x8000162c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001630]:csrrs a7, fflags, zero<br> [0x80001634]:fsd fa3, 320(a5)<br>     |
