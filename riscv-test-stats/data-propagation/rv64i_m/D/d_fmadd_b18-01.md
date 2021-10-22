
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002690')]      |
| SIG_REGION                | [('0x80005c10', '0x80006d70', '556 dwords')]      |
| COV_LABELS                | fmadd_b18      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fmadd_b18-01.S/ref.S    |
| Total Number of coverpoints| 418     |
| Total Coverpoints Hit     | 411      |
| Total Signature Updates   | 556      |
| STAT1                     | 278      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 278     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmadd.d', 'rs1 : f13', 'rs2 : f23', 'rs3 : f23', 'rd : f12', 'rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1']
Last Code Sequence : 
	-[0x800003c0]:fmadd.d fa2, fa3, fs7, fs7, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsd fa2, 0(a5)
Current Store : [0x800003cc] : sd a7, 8(a5) -- Store: [0x80005c18]:0x0000000000000000




Last Coverpoint : ['rs1 : f28', 'rs2 : f28', 'rs3 : f28', 'rd : f28', 'rs1 == rs2 == rs3 == rd']
Last Code Sequence : 
	-[0x800003e0]:fmadd.d ft8, ft8, ft8, ft8, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsd ft8, 16(a5)
Current Store : [0x800003ec] : sd a7, 24(a5) -- Store: [0x80005c28]:0x0000000000000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f14', 'rs3 : f16', 'rd : f20', 'rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5569022b338ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fmadd.d fs4, fa7, fa4, fa6, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fs4, 32(a5)
Current Store : [0x8000040c] : sd a7, 40(a5) -- Store: [0x80005c38]:0x0000000000000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f22', 'rs3 : f27', 'rd : f30', 'rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2']
Last Code Sequence : 
	-[0x80000420]:fmadd.d ft10, fs11, fs6, fs11, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsd ft10, 48(a5)
Current Store : [0x8000042c] : sd a7, 56(a5) -- Store: [0x80005c48]:0x0000000000000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f11', 'rs3 : f24', 'rd : f6', 'rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3']
Last Code Sequence : 
	-[0x80000440]:fmadd.d ft6, fa1, fa1, fs8, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:fsd ft6, 64(a5)
Current Store : [0x8000044c] : sd a7, 72(a5) -- Store: [0x80005c58]:0x0000000000000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f10', 'rs3 : f10', 'rd : f10', 'rd == rs2 == rs3 != rs1']
Last Code Sequence : 
	-[0x80000460]:fmadd.d fa0, fs4, fa0, fa0, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd fa0, 80(a5)
Current Store : [0x8000046c] : sd a7, 88(a5) -- Store: [0x80005c68]:0x0000000000000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f5', 'rs3 : f5', 'rd : f19', 'rs1 == rs2 == rs3 != rd']
Last Code Sequence : 
	-[0x80000480]:fmadd.d fs3, ft5, ft5, ft5, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd fs3, 96(a5)
Current Store : [0x8000048c] : sd a7, 104(a5) -- Store: [0x80005c78]:0x0000000000000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f17', 'rs3 : f22', 'rd : f31', 'rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x136b66cb69135 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a0]:fmadd.d ft11, ft11, fa7, fs6, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:fsd ft11, 112(a5)
Current Store : [0x800004ac] : sd a7, 120(a5) -- Store: [0x80005c88]:0x0000000000000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f2', 'rs3 : f18', 'rd : f18', 'rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7d6356ef8a62f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fmadd.d fs2, fa4, ft2, fs2, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd fs2, 128(a5)
Current Store : [0x800004cc] : sd a7, 136(a5) -- Store: [0x80005c98]:0x0000000000000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f21', 'rs3 : f15', 'rd : f15', 'rs1 == rd == rs3 != rs2']
Last Code Sequence : 
	-[0x800004e0]:fmadd.d fa5, fa5, fs5, fa5, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:fsd fa5, 144(a5)
Current Store : [0x800004ec] : sd a7, 152(a5) -- Store: [0x80005ca8]:0x0000000000000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f8', 'rs3 : f6', 'rd : f8', 'rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xce30065d5ac1b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000500]:fmadd.d fs0, fs10, fs0, ft6, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:fsd fs0, 160(a5)
Current Store : [0x8000050c] : sd a7, 168(a5) -- Store: [0x80005cb8]:0x0000000000000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f24', 'rs3 : f9', 'rd : f24', 'rs1 == rs2 == rd != rs3']
Last Code Sequence : 
	-[0x80000520]:fmadd.d fs8, fs8, fs8, fs1, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd fs8, 176(a5)
Current Store : [0x8000052c] : sd a7, 184(a5) -- Store: [0x80005cc8]:0x0000000000000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f19', 'rs3 : f29', 'rd : f22', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4f8b971fa5a72 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000540]:fmadd.d fs6, fa6, fs3, ft9, dyn
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:fsd fs6, 192(a5)
Current Store : [0x8000054c] : sd a7, 200(a5) -- Store: [0x80005cd8]:0x0000000000000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f27', 'rs3 : f4', 'rd : f26', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x67140be6e2dc5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fmadd.d fs10, ft2, fs11, ft4, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd fs10, 208(a5)
Current Store : [0x8000056c] : sd a7, 216(a5) -- Store: [0x80005ce8]:0x0000000000000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f30', 'rs3 : f25', 'rd : f27', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7f8e997d84592 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000580]:fmadd.d fs11, fs5, ft10, fs9, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd fs11, 224(a5)
Current Store : [0x8000058c] : sd a7, 232(a5) -- Store: [0x80005cf8]:0x0000000000000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f31', 'rs3 : f19', 'rd : f29', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0x5819e362ac2bf and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fmadd.d ft9, fs7, ft11, fs3, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsd ft9, 240(a5)
Current Store : [0x800005ac] : sd a7, 248(a5) -- Store: [0x80005d08]:0x0000000000000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f7', 'rs3 : f2', 'rd : f16', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1d803765d304 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fmadd.d fa6, ft3, ft7, ft2, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:fsd fa6, 256(a5)
Current Store : [0x800005cc] : sd a7, 264(a5) -- Store: [0x80005d18]:0x0000000000000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f15', 'rs3 : f1', 'rd : f4', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe07b0ce451645 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fmadd.d ft4, fa2, fa5, ft1, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd ft4, 272(a5)
Current Store : [0x800005ec] : sd a7, 280(a5) -- Store: [0x80005d28]:0x0000000000000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f16', 'rs3 : f11', 'rd : f25', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe49bfb977b300 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000600]:fmadd.d fs9, fs2, fa6, fa1, dyn
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:fsd fs9, 288(a5)
Current Store : [0x8000060c] : sd a7, 296(a5) -- Store: [0x80005d38]:0x0000000000000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f13', 'rs3 : f26', 'rd : f3', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1de0cd942442e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000620]:fmadd.d ft3, ft6, fa3, fs10, dyn
	-[0x80000624]:csrrs a7, fflags, zero
	-[0x80000628]:fsd ft3, 304(a5)
Current Store : [0x8000062c] : sd a7, 312(a5) -- Store: [0x80005d48]:0x0000000000000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f20', 'rs3 : f8', 'rd : f7', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5cab9bd09e6c4 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fmadd.d ft7, fs3, fs4, fs0, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd ft7, 320(a5)
Current Store : [0x8000064c] : sd a7, 328(a5) -- Store: [0x80005d58]:0x0000000000000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f26', 'rs3 : f13', 'rd : f23', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0x4d1d10d2ac62f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000660]:fmadd.d fs7, fa0, fs10, fa3, dyn
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:fsd fs7, 336(a5)
Current Store : [0x8000066c] : sd a7, 344(a5) -- Store: [0x80005d68]:0x0000000000000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f6', 'rs3 : f21', 'rd : f17', 'fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x30526056a01ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000680]:fmadd.d fa7, fs9, ft6, fs5, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsd fa7, 352(a5)
Current Store : [0x8000068c] : sd a7, 360(a5) -- Store: [0x80005d78]:0x0000000000000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f18', 'rs3 : f17', 'rd : f5', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1d17766cf56c7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fmadd.d ft5, fs1, fs2, fa7, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd ft5, 368(a5)
Current Store : [0x800006ac] : sd a7, 376(a5) -- Store: [0x80005d88]:0x0000000000000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f12', 'rs3 : f30', 'rd : f21', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbe64efc9e258d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006c0]:fmadd.d fs5, fs6, fa2, ft10, dyn
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:fsd fs5, 384(a5)
Current Store : [0x800006cc] : sd a7, 392(a5) -- Store: [0x80005d98]:0x0000000000000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f4', 'rs3 : f3', 'rd : f2', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6361dd8ebbe71 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e0]:fmadd.d ft2, ft1, ft4, ft3, dyn
	-[0x800006e4]:csrrs a7, fflags, zero
	-[0x800006e8]:fsd ft2, 400(a5)
Current Store : [0x800006ec] : sd a7, 408(a5) -- Store: [0x80005da8]:0x0000000000000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f25', 'rs3 : f0', 'rd : f9', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4d3375e946b52 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000700]:fmadd.d fs1, ft4, fs9, ft0, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:fsd fs1, 416(a5)
Current Store : [0x8000070c] : sd a7, 424(a5) -- Store: [0x80005db8]:0x0000000000000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f9', 'rs3 : f31', 'rd : f1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0aaee2f44e344 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000720]:fmadd.d ft1, ft10, fs1, ft11, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd ft1, 432(a5)
Current Store : [0x8000072c] : sd a7, 440(a5) -- Store: [0x80005dc8]:0x0000000000000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f29', 'rs3 : f12', 'rd : f13', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0x113ecba7502a7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000740]:fmadd.d fa3, fs0, ft9, fa2, dyn
	-[0x80000744]:csrrs a7, fflags, zero
	-[0x80000748]:fsd fa3, 448(a5)
Current Store : [0x8000074c] : sd a7, 456(a5) -- Store: [0x80005dd8]:0x0000000000000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f0', 'rs3 : f20', 'rd : f14', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb9042a506a4fd and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000760]:fmadd.d fa4, ft9, ft0, fs4, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsd fa4, 464(a5)
Current Store : [0x8000076c] : sd a7, 472(a5) -- Store: [0x80005de8]:0x0000000000000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f1', 'rs3 : f14', 'rd : f0', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x95adca0768ede and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000780]:fmadd.d ft0, ft7, ft1, fa4, dyn
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:fsd ft0, 480(a5)
Current Store : [0x8000078c] : sd a7, 488(a5) -- Store: [0x80005df8]:0x0000000000000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f3', 'rs3 : f7', 'rd : f11', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xcfd9836660a69 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007a0]:fmadd.d fa1, ft0, ft3, ft7, dyn
	-[0x800007a4]:csrrs a7, fflags, zero
	-[0x800007a8]:fsd fa1, 496(a5)
Current Store : [0x800007ac] : sd a7, 504(a5) -- Store: [0x80005e08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x194e95f4fa0e5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:fsd fa3, 512(a5)
Current Store : [0x800007cc] : sd a7, 520(a5) -- Store: [0x80005e18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x4d30da0b2f54f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x8962598ff75fb and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007e4]:csrrs a7, fflags, zero
	-[0x800007e8]:fsd fa3, 528(a5)
Current Store : [0x800007ec] : sd a7, 536(a5) -- Store: [0x80005e28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x963785d0567a5 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x42aa420e5a55c and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000800]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa3, 544(a5)
Current Store : [0x8000080c] : sd a7, 552(a5) -- Store: [0x80005e38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537603b0ea8b and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x2bc99bd2c087f and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000820]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000824]:csrrs a7, fflags, zero
	-[0x80000828]:fsd fa3, 560(a5)
Current Store : [0x8000082c] : sd a7, 568(a5) -- Store: [0x80005e48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9a5710f3828f7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x3f6c3f1a31a35 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000840]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsd fa3, 576(a5)
Current Store : [0x8000084c] : sd a7, 584(a5) -- Store: [0x80005e58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf4fff14ba982d and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x059ef1b4e186f and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000860]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000864]:csrrs a7, fflags, zero
	-[0x80000868]:fsd fa3, 592(a5)
Current Store : [0x8000086c] : sd a7, 600(a5) -- Store: [0x80005e68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1eb3cbd822141 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xc92bc8d23f80a and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000880]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000884]:csrrs a7, fflags, zero
	-[0x80000888]:fsd fa3, 608(a5)
Current Store : [0x8000088c] : sd a7, 616(a5) -- Store: [0x80005e78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbf4f8dd35ac8c and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x2505b17c605c8 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008a4]:csrrs a7, fflags, zero
	-[0x800008a8]:fsd fa3, 624(a5)
Current Store : [0x800008ac] : sd a7, 632(a5) -- Store: [0x80005e88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4c6c848cb47df and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x8a4ab01158b82 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008c4]:csrrs a7, fflags, zero
	-[0x800008c8]:fsd fa3, 640(a5)
Current Store : [0x800008cc] : sd a7, 648(a5) -- Store: [0x80005e98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xe707c5377ae9f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x0d1ffa1c81aa1 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa3, 656(a5)
Current Store : [0x800008ec] : sd a7, 664(a5) -- Store: [0x80005ea8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9086506183f67 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x474031b174347 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000900]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000904]:csrrs a7, fflags, zero
	-[0x80000908]:fsd fa3, 672(a5)
Current Store : [0x8000090c] : sd a7, 680(a5) -- Store: [0x80005eb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0e835d272c05e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xe487ef0e5cb47 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000920]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:fsd fa3, 688(a5)
Current Store : [0x8000092c] : sd a7, 696(a5) -- Store: [0x80005ec8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa53d0d2b3faec and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x37289daf00a60 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000940]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000944]:csrrs a7, fflags, zero
	-[0x80000948]:fsd fa3, 704(a5)
Current Store : [0x8000094c] : sd a7, 712(a5) -- Store: [0x80005ed8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f6 and fm1 == 0x3502bebc53fff and fs2 == 0 and fe2 == 0x407 and fm2 == 0xa82aa06c96745 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000960]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000964]:csrrs a7, fflags, zero
	-[0x80000968]:fsd fa3, 720(a5)
Current Store : [0x8000096c] : sd a7, 728(a5) -- Store: [0x80005ee8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6f451c304de2e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x64e1c3e865dbd and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000980]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000984]:csrrs a7, fflags, zero
	-[0x80000988]:fsd fa3, 736(a5)
Current Store : [0x8000098c] : sd a7, 744(a5) -- Store: [0x80005ef8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xb54c6b03a8983 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009a0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009a4]:csrrs a7, fflags, zero
	-[0x800009a8]:fsd fa3, 752(a5)
Current Store : [0x800009ac] : sd a7, 760(a5) -- Store: [0x80005f08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x43c3f0806f2cd and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa3, 768(a5)
Current Store : [0x800009cc] : sd a7, 776(a5) -- Store: [0x80005f18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5b66519ab8134 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009e4]:csrrs a7, fflags, zero
	-[0x800009e8]:fsd fa3, 784(a5)
Current Store : [0x800009ec] : sd a7, 792(a5) -- Store: [0x80005f28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9b75de798ac5f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsd fa3, 800(a5)
Current Store : [0x80000a0c] : sd a7, 808(a5) -- Store: [0x80005f38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf940aa40f1530 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a24]:csrrs a7, fflags, zero
	-[0x80000a28]:fsd fa3, 816(a5)
Current Store : [0x80000a2c] : sd a7, 824(a5) -- Store: [0x80005f48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x737bdc485a77d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a44]:csrrs a7, fflags, zero
	-[0x80000a48]:fsd fa3, 832(a5)
Current Store : [0x80000a4c] : sd a7, 840(a5) -- Store: [0x80005f58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x55e18bacc608f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a64]:csrrs a7, fflags, zero
	-[0x80000a68]:fsd fa3, 848(a5)
Current Store : [0x80000a6c] : sd a7, 856(a5) -- Store: [0x80005f68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x442435bea0eb5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a84]:csrrs a7, fflags, zero
	-[0x80000a88]:fsd fa3, 864(a5)
Current Store : [0x80000a8c] : sd a7, 872(a5) -- Store: [0x80005f78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xffb4067da2691 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa3, 880(a5)
Current Store : [0x80000aac] : sd a7, 888(a5) -- Store: [0x80005f88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8106d28c6e8ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ac0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ac4]:csrrs a7, fflags, zero
	-[0x80000ac8]:fsd fa3, 896(a5)
Current Store : [0x80000acc] : sd a7, 904(a5) -- Store: [0x80005f98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ff4d99a919c7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:fsd fa3, 912(a5)
Current Store : [0x80000aec] : sd a7, 920(a5) -- Store: [0x80005fa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc00223fe58e9e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b04]:csrrs a7, fflags, zero
	-[0x80000b08]:fsd fa3, 928(a5)
Current Store : [0x80000b0c] : sd a7, 936(a5) -- Store: [0x80005fb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9e3b4234a7716 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b24]:csrrs a7, fflags, zero
	-[0x80000b28]:fsd fa3, 944(a5)
Current Store : [0x80000b2c] : sd a7, 952(a5) -- Store: [0x80005fc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xde18ff8661b6b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b44]:csrrs a7, fflags, zero
	-[0x80000b48]:fsd fa3, 960(a5)
Current Store : [0x80000b4c] : sd a7, 968(a5) -- Store: [0x80005fd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3f8c326b3af5d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b64]:csrrs a7, fflags, zero
	-[0x80000b68]:fsd fa3, 976(a5)
Current Store : [0x80000b6c] : sd a7, 984(a5) -- Store: [0x80005fe8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfa73e129b8879 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa3, 992(a5)
Current Store : [0x80000b8c] : sd a7, 1000(a5) -- Store: [0x80005ff8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc48b48c27d811 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ba0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ba4]:csrrs a7, fflags, zero
	-[0x80000ba8]:fsd fa3, 1008(a5)
Current Store : [0x80000bac] : sd a7, 1016(a5) -- Store: [0x80006008]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x82cee64001220 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000bc4]:csrrs a7, fflags, zero
	-[0x80000bc8]:fsd fa3, 1024(a5)
Current Store : [0x80000bcc] : sd a7, 1032(a5) -- Store: [0x80006018]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1f707766a790b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000be0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000be4]:csrrs a7, fflags, zero
	-[0x80000be8]:fsd fa3, 1040(a5)
Current Store : [0x80000bec] : sd a7, 1048(a5) -- Store: [0x80006028]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf2f5c0f43aa65 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c04]:csrrs a7, fflags, zero
	-[0x80000c08]:fsd fa3, 1056(a5)
Current Store : [0x80000c0c] : sd a7, 1064(a5) -- Store: [0x80006038]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0e1e10b8a2f26 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c24]:csrrs a7, fflags, zero
	-[0x80000c28]:fsd fa3, 1072(a5)
Current Store : [0x80000c2c] : sd a7, 1080(a5) -- Store: [0x80006048]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x42f12d7244f4f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c44]:csrrs a7, fflags, zero
	-[0x80000c48]:fsd fa3, 1088(a5)
Current Store : [0x80000c4c] : sd a7, 1096(a5) -- Store: [0x80006058]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0972c859cb481 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa3, 1104(a5)
Current Store : [0x80000c6c] : sd a7, 1112(a5) -- Store: [0x80006068]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc80a67882d6d1 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c84]:csrrs a7, fflags, zero
	-[0x80000c88]:fsd fa3, 1120(a5)
Current Store : [0x80000c8c] : sd a7, 1128(a5) -- Store: [0x80006078]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x7f381ca9a6b2f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsd fa3, 1136(a5)
Current Store : [0x80000cac] : sd a7, 1144(a5) -- Store: [0x80006088]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x530b56ed605ac and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000cc4]:csrrs a7, fflags, zero
	-[0x80000cc8]:fsd fa3, 1152(a5)
Current Store : [0x80000ccc] : sd a7, 1160(a5) -- Store: [0x80006098]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xac4394e2d6fb3 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ce0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ce4]:csrrs a7, fflags, zero
	-[0x80000ce8]:fsd fa3, 1168(a5)
Current Store : [0x80000cec] : sd a7, 1176(a5) -- Store: [0x800060a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6756366451777 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d04]:csrrs a7, fflags, zero
	-[0x80000d08]:fsd fa3, 1184(a5)
Current Store : [0x80000d0c] : sd a7, 1192(a5) -- Store: [0x800060b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9bebe66f937a7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d24]:csrrs a7, fflags, zero
	-[0x80000d28]:fsd fa3, 1200(a5)
Current Store : [0x80000d2c] : sd a7, 1208(a5) -- Store: [0x800060c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa85a268409ae9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa3, 1216(a5)
Current Store : [0x80000d4c] : sd a7, 1224(a5) -- Store: [0x800060d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x22e4be37f86cb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d64]:csrrs a7, fflags, zero
	-[0x80000d68]:fsd fa3, 1232(a5)
Current Store : [0x80000d6c] : sd a7, 1240(a5) -- Store: [0x800060e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc0377eab1f21f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:fsd fa3, 1248(a5)
Current Store : [0x80000d8c] : sd a7, 1256(a5) -- Store: [0x800060f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x83bc51daecbf5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000da0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000da4]:csrrs a7, fflags, zero
	-[0x80000da8]:fsd fa3, 1264(a5)
Current Store : [0x80000dac] : sd a7, 1272(a5) -- Store: [0x80006108]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x465936dcae3fb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000dc4]:csrrs a7, fflags, zero
	-[0x80000dc8]:fsd fa3, 1280(a5)
Current Store : [0x80000dcc] : sd a7, 1288(a5) -- Store: [0x80006118]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xea52ea391cf03 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000de0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000de4]:csrrs a7, fflags, zero
	-[0x80000de8]:fsd fa3, 1296(a5)
Current Store : [0x80000dec] : sd a7, 1304(a5) -- Store: [0x80006128]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x566d65947d7e7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e04]:csrrs a7, fflags, zero
	-[0x80000e08]:fsd fa3, 1312(a5)
Current Store : [0x80000e0c] : sd a7, 1320(a5) -- Store: [0x80006138]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x89d995b2d6507 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa3, 1328(a5)
Current Store : [0x80000e2c] : sd a7, 1336(a5) -- Store: [0x80006148]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x8f90cc1b18bff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e44]:csrrs a7, fflags, zero
	-[0x80000e48]:fsd fa3, 1344(a5)
Current Store : [0x80000e4c] : sd a7, 1352(a5) -- Store: [0x80006158]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4d39f7052a913 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e64]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e68]:csrrs a7, fflags, zero
	-[0x80000e6c]:fsd fa3, 1360(a5)
Current Store : [0x80000e70] : sd a7, 1368(a5) -- Store: [0x80006168]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa85d306a197c5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e84]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e88]:csrrs a7, fflags, zero
	-[0x80000e8c]:fsd fa3, 1376(a5)
Current Store : [0x80000e90] : sd a7, 1384(a5) -- Store: [0x80006178]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8d5463dfce629 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ea4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ea8]:csrrs a7, fflags, zero
	-[0x80000eac]:fsd fa3, 1392(a5)
Current Store : [0x80000eb0] : sd a7, 1400(a5) -- Store: [0x80006188]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6e65a8d3dbea5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ec4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ec8]:csrrs a7, fflags, zero
	-[0x80000ecc]:fsd fa3, 1408(a5)
Current Store : [0x80000ed0] : sd a7, 1416(a5) -- Store: [0x80006198]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3dfdc8c878541 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa3, 1424(a5)
Current Store : [0x80000ef0] : sd a7, 1432(a5) -- Store: [0x800061a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x447a9936a43d3 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f04]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f08]:csrrs a7, fflags, zero
	-[0x80000f0c]:fsd fa3, 1440(a5)
Current Store : [0x80000f10] : sd a7, 1448(a5) -- Store: [0x800061b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe4d0d779159a4 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f24]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f28]:csrrs a7, fflags, zero
	-[0x80000f2c]:fsd fa3, 1456(a5)
Current Store : [0x80000f30] : sd a7, 1464(a5) -- Store: [0x800061c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6fd2704b8e37f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f44]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f48]:csrrs a7, fflags, zero
	-[0x80000f4c]:fsd fa3, 1472(a5)
Current Store : [0x80000f50] : sd a7, 1480(a5) -- Store: [0x800061d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x26c977d632159 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f64]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f68]:csrrs a7, fflags, zero
	-[0x80000f6c]:fsd fa3, 1488(a5)
Current Store : [0x80000f70] : sd a7, 1496(a5) -- Store: [0x800061e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x68add14e18ecb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f84]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f88]:csrrs a7, fflags, zero
	-[0x80000f8c]:fsd fa3, 1504(a5)
Current Store : [0x80000f90] : sd a7, 1512(a5) -- Store: [0x800061f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe800919ed6413 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fa4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fa8]:csrrs a7, fflags, zero
	-[0x80000fac]:fsd fa3, 1520(a5)
Current Store : [0x80000fb0] : sd a7, 1528(a5) -- Store: [0x80006208]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xebc97dc31d5a7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa3, 1536(a5)
Current Store : [0x80000fd0] : sd a7, 1544(a5) -- Store: [0x80006218]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1f9fd611425bb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fe4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fe8]:csrrs a7, fflags, zero
	-[0x80000fec]:fsd fa3, 1552(a5)
Current Store : [0x80000ff0] : sd a7, 1560(a5) -- Store: [0x80006228]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x76587e2d6216f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001004]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001008]:csrrs a7, fflags, zero
	-[0x8000100c]:fsd fa3, 1568(a5)
Current Store : [0x80001010] : sd a7, 1576(a5) -- Store: [0x80006238]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x57fa825e98147 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001024]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001028]:csrrs a7, fflags, zero
	-[0x8000102c]:fsd fa3, 1584(a5)
Current Store : [0x80001030] : sd a7, 1592(a5) -- Store: [0x80006248]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7bafa3050f8b7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001044]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001048]:csrrs a7, fflags, zero
	-[0x8000104c]:fsd fa3, 1600(a5)
Current Store : [0x80001050] : sd a7, 1608(a5) -- Store: [0x80006258]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x97836753c7c7f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001064]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001068]:csrrs a7, fflags, zero
	-[0x8000106c]:fsd fa3, 1616(a5)
Current Store : [0x80001070] : sd a7, 1624(a5) -- Store: [0x80006268]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1f06fdec36709 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001084]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001088]:csrrs a7, fflags, zero
	-[0x8000108c]:fsd fa3, 1632(a5)
Current Store : [0x80001090] : sd a7, 1640(a5) -- Store: [0x80006278]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x00f47e13a3077 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa3, 1648(a5)
Current Store : [0x800010b0] : sd a7, 1656(a5) -- Store: [0x80006288]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xace1ecea16623 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010c8]:csrrs a7, fflags, zero
	-[0x800010cc]:fsd fa3, 1664(a5)
Current Store : [0x800010d0] : sd a7, 1672(a5) -- Store: [0x80006298]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6db92bb1bf075 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010e8]:csrrs a7, fflags, zero
	-[0x800010ec]:fsd fa3, 1680(a5)
Current Store : [0x800010f0] : sd a7, 1688(a5) -- Store: [0x800062a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3eebb35310409 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001104]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001108]:csrrs a7, fflags, zero
	-[0x8000110c]:fsd fa3, 1696(a5)
Current Store : [0x80001110] : sd a7, 1704(a5) -- Store: [0x800062b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x04673c7ab8808 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001124]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001128]:csrrs a7, fflags, zero
	-[0x8000112c]:fsd fa3, 1712(a5)
Current Store : [0x80001130] : sd a7, 1720(a5) -- Store: [0x800062c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2362beb7fcccc and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001144]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001148]:csrrs a7, fflags, zero
	-[0x8000114c]:fsd fa3, 1728(a5)
Current Store : [0x80001150] : sd a7, 1736(a5) -- Store: [0x800062d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa3be3d7336699 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001164]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001168]:csrrs a7, fflags, zero
	-[0x8000116c]:fsd fa3, 1744(a5)
Current Store : [0x80001170] : sd a7, 1752(a5) -- Store: [0x800062e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe2f1c5d734347 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001184]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa3, 1760(a5)
Current Store : [0x80001190] : sd a7, 1768(a5) -- Store: [0x800062f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x6607c20361523 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011a8]:csrrs a7, fflags, zero
	-[0x800011ac]:fsd fa3, 1776(a5)
Current Store : [0x800011b0] : sd a7, 1784(a5) -- Store: [0x80006308]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc4edf85532923 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011c8]:csrrs a7, fflags, zero
	-[0x800011cc]:fsd fa3, 1792(a5)
Current Store : [0x800011d0] : sd a7, 1800(a5) -- Store: [0x80006318]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x318ea43af884c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa3, 1808(a5)
Current Store : [0x800011f0] : sd a7, 1816(a5) -- Store: [0x80006328]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x00b42e8f00d47 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001204]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001208]:csrrs a7, fflags, zero
	-[0x8000120c]:fsd fa3, 1824(a5)
Current Store : [0x80001210] : sd a7, 1832(a5) -- Store: [0x80006338]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5e872dc3c5cf9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001224]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001228]:csrrs a7, fflags, zero
	-[0x8000122c]:fsd fa3, 1840(a5)
Current Store : [0x80001230] : sd a7, 1848(a5) -- Store: [0x80006348]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0db7e0a5d748 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001244]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001248]:csrrs a7, fflags, zero
	-[0x8000124c]:fsd fa3, 1856(a5)
Current Store : [0x80001250] : sd a7, 1864(a5) -- Store: [0x80006358]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5a371eca20170 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001264]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001268]:csrrs a7, fflags, zero
	-[0x8000126c]:fsd fa3, 1872(a5)
Current Store : [0x80001270] : sd a7, 1880(a5) -- Store: [0x80006368]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0xdb8da7279369f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001284]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001288]:csrrs a7, fflags, zero
	-[0x8000128c]:fsd fa3, 1888(a5)
Current Store : [0x80001290] : sd a7, 1896(a5) -- Store: [0x80006378]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xeedf7f711c3c2 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012a8]:csrrs a7, fflags, zero
	-[0x800012ac]:fsd fa3, 1904(a5)
Current Store : [0x800012b0] : sd a7, 1912(a5) -- Store: [0x80006388]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5864580d04bef and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa3, 1920(a5)
Current Store : [0x800012d0] : sd a7, 1928(a5) -- Store: [0x80006398]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x5afb49b29c463 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012e8]:csrrs a7, fflags, zero
	-[0x800012ec]:fsd fa3, 1936(a5)
Current Store : [0x800012f0] : sd a7, 1944(a5) -- Store: [0x800063a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd64347e477166 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001304]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001308]:csrrs a7, fflags, zero
	-[0x8000130c]:fsd fa3, 1952(a5)
Current Store : [0x80001310] : sd a7, 1960(a5) -- Store: [0x800063b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xad3923b9bf5a2 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001324]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001328]:csrrs a7, fflags, zero
	-[0x8000132c]:fsd fa3, 1968(a5)
Current Store : [0x80001330] : sd a7, 1976(a5) -- Store: [0x800063c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x76940d9e18057 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001344]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001348]:csrrs a7, fflags, zero
	-[0x8000134c]:fsd fa3, 1984(a5)
Current Store : [0x80001350] : sd a7, 1992(a5) -- Store: [0x800063d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6f291ef3c3557 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001364]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001368]:csrrs a7, fflags, zero
	-[0x8000136c]:fsd fa3, 2000(a5)
Current Store : [0x80001370] : sd a7, 2008(a5) -- Store: [0x800063e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9847d9429817b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001384]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001388]:csrrs a7, fflags, zero
	-[0x8000138c]:fsd fa3, 2016(a5)
Current Store : [0x80001390] : sd a7, 2024(a5) -- Store: [0x800063f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf9f9f5190aab4 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013b0]:csrrs a7, fflags, zero
	-[0x800013b4]:fsd fa3, 0(a5)
Current Store : [0x800013b8] : sd a7, 8(a5) -- Store: [0x80006408]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9d5f97660dadf and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013d0]:csrrs a7, fflags, zero
	-[0x800013d4]:fsd fa3, 16(a5)
Current Store : [0x800013d8] : sd a7, 24(a5) -- Store: [0x80006418]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x42972262ccf0f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013f0]:csrrs a7, fflags, zero
	-[0x800013f4]:fsd fa3, 32(a5)
Current Store : [0x800013f8] : sd a7, 40(a5) -- Store: [0x80006428]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x01dca4dde57a5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000140c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001410]:csrrs a7, fflags, zero
	-[0x80001414]:fsd fa3, 48(a5)
Current Store : [0x80001418] : sd a7, 56(a5) -- Store: [0x80006438]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x714a830fa079f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000142c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001430]:csrrs a7, fflags, zero
	-[0x80001434]:fsd fa3, 64(a5)
Current Store : [0x80001438] : sd a7, 72(a5) -- Store: [0x80006448]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x66b37637d118d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000144c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001450]:csrrs a7, fflags, zero
	-[0x80001454]:fsd fa3, 80(a5)
Current Store : [0x80001458] : sd a7, 88(a5) -- Store: [0x80006458]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4b39d91344978 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000146c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001470]:csrrs a7, fflags, zero
	-[0x80001474]:fsd fa3, 96(a5)
Current Store : [0x80001478] : sd a7, 104(a5) -- Store: [0x80006468]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc44223126cbc7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000148c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001490]:csrrs a7, fflags, zero
	-[0x80001494]:fsd fa3, 112(a5)
Current Store : [0x80001498] : sd a7, 120(a5) -- Store: [0x80006478]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0a287088f5e69 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014b0]:csrrs a7, fflags, zero
	-[0x800014b4]:fsd fa3, 128(a5)
Current Store : [0x800014b8] : sd a7, 136(a5) -- Store: [0x80006488]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9fbeb1abfb6e7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014d0]:csrrs a7, fflags, zero
	-[0x800014d4]:fsd fa3, 144(a5)
Current Store : [0x800014d8] : sd a7, 152(a5) -- Store: [0x80006498]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb3d56c4f6fd1d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014f0]:csrrs a7, fflags, zero
	-[0x800014f4]:fsd fa3, 160(a5)
Current Store : [0x800014f8] : sd a7, 168(a5) -- Store: [0x800064a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x75450c5a9817f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000150c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001510]:csrrs a7, fflags, zero
	-[0x80001514]:fsd fa3, 176(a5)
Current Store : [0x80001518] : sd a7, 184(a5) -- Store: [0x800064b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdfba6beb7a6c9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000152c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001530]:csrrs a7, fflags, zero
	-[0x80001534]:fsd fa3, 192(a5)
Current Store : [0x80001538] : sd a7, 200(a5) -- Store: [0x800064c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x99fb7503e8d08 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000154c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001550]:csrrs a7, fflags, zero
	-[0x80001554]:fsd fa3, 208(a5)
Current Store : [0x80001558] : sd a7, 216(a5) -- Store: [0x800064d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xaf42bcba26d83 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000156c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001570]:csrrs a7, fflags, zero
	-[0x80001574]:fsd fa3, 224(a5)
Current Store : [0x80001578] : sd a7, 232(a5) -- Store: [0x800064e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xfb797ef55e1cf and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000158c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001590]:csrrs a7, fflags, zero
	-[0x80001594]:fsd fa3, 240(a5)
Current Store : [0x80001598] : sd a7, 248(a5) -- Store: [0x800064f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7ad291b7d6463 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015b0]:csrrs a7, fflags, zero
	-[0x800015b4]:fsd fa3, 256(a5)
Current Store : [0x800015b8] : sd a7, 264(a5) -- Store: [0x80006508]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xec0c4abe1fd0e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015d0]:csrrs a7, fflags, zero
	-[0x800015d4]:fsd fa3, 272(a5)
Current Store : [0x800015d8] : sd a7, 280(a5) -- Store: [0x80006518]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x627e198e85b1f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015f0]:csrrs a7, fflags, zero
	-[0x800015f4]:fsd fa3, 288(a5)
Current Store : [0x800015f8] : sd a7, 296(a5) -- Store: [0x80006528]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x2a1fa26c0948f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000160c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:fsd fa3, 304(a5)
Current Store : [0x80001618] : sd a7, 312(a5) -- Store: [0x80006538]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf60647476d4cb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000162c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001630]:csrrs a7, fflags, zero
	-[0x80001634]:fsd fa3, 320(a5)
Current Store : [0x80001638] : sd a7, 328(a5) -- Store: [0x80006548]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7b05f6eabb69f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000164c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001650]:csrrs a7, fflags, zero
	-[0x80001654]:fsd fa3, 336(a5)
Current Store : [0x80001658] : sd a7, 344(a5) -- Store: [0x80006558]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9099330bb750b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000166c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001670]:csrrs a7, fflags, zero
	-[0x80001674]:fsd fa3, 352(a5)
Current Store : [0x80001678] : sd a7, 360(a5) -- Store: [0x80006568]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26e34e07a9172 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000168c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001690]:csrrs a7, fflags, zero
	-[0x80001694]:fsd fa3, 368(a5)
Current Store : [0x80001698] : sd a7, 376(a5) -- Store: [0x80006578]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3671fd3520218 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016b0]:csrrs a7, fflags, zero
	-[0x800016b4]:fsd fa3, 384(a5)
Current Store : [0x800016b8] : sd a7, 392(a5) -- Store: [0x80006588]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x451eb54c10b8b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016d0]:csrrs a7, fflags, zero
	-[0x800016d4]:fsd fa3, 400(a5)
Current Store : [0x800016d8] : sd a7, 408(a5) -- Store: [0x80006598]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xb56678fedc57f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016f0]:csrrs a7, fflags, zero
	-[0x800016f4]:fsd fa3, 416(a5)
Current Store : [0x800016f8] : sd a7, 424(a5) -- Store: [0x800065a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5c762dc4bc5d6 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000170c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001710]:csrrs a7, fflags, zero
	-[0x80001714]:fsd fa3, 432(a5)
Current Store : [0x80001718] : sd a7, 440(a5) -- Store: [0x800065b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1182656689f60 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000172c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001730]:csrrs a7, fflags, zero
	-[0x80001734]:fsd fa3, 448(a5)
Current Store : [0x80001738] : sd a7, 456(a5) -- Store: [0x800065c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ed9e7beff05 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000174c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001750]:csrrs a7, fflags, zero
	-[0x80001754]:fsd fa3, 464(a5)
Current Store : [0x80001758] : sd a7, 472(a5) -- Store: [0x800065d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x25d1c4e896d66 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000176c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001770]:csrrs a7, fflags, zero
	-[0x80001774]:fsd fa3, 480(a5)
Current Store : [0x80001778] : sd a7, 488(a5) -- Store: [0x800065e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x728eb744bb2ef and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000178c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001790]:csrrs a7, fflags, zero
	-[0x80001794]:fsd fa3, 496(a5)
Current Store : [0x80001798] : sd a7, 504(a5) -- Store: [0x800065f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6535160e0062c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017b0]:csrrs a7, fflags, zero
	-[0x800017b4]:fsd fa3, 512(a5)
Current Store : [0x800017b8] : sd a7, 520(a5) -- Store: [0x80006608]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2bbdffdaf66c3 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017d0]:csrrs a7, fflags, zero
	-[0x800017d4]:fsd fa3, 528(a5)
Current Store : [0x800017d8] : sd a7, 536(a5) -- Store: [0x80006618]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9c16a190f4e87 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017f0]:csrrs a7, fflags, zero
	-[0x800017f4]:fsd fa3, 544(a5)
Current Store : [0x800017f8] : sd a7, 552(a5) -- Store: [0x80006628]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa1bf5c83faf60 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000180c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001810]:csrrs a7, fflags, zero
	-[0x80001814]:fsd fa3, 560(a5)
Current Store : [0x80001818] : sd a7, 568(a5) -- Store: [0x80006638]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54845b368b76f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000182c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001830]:csrrs a7, fflags, zero
	-[0x80001834]:fsd fa3, 576(a5)
Current Store : [0x80001838] : sd a7, 584(a5) -- Store: [0x80006648]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x96d3944ae92c5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000184c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001850]:csrrs a7, fflags, zero
	-[0x80001854]:fsd fa3, 592(a5)
Current Store : [0x80001858] : sd a7, 600(a5) -- Store: [0x80006658]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc380d05f3f55f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000186c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001870]:csrrs a7, fflags, zero
	-[0x80001874]:fsd fa3, 608(a5)
Current Store : [0x80001878] : sd a7, 616(a5) -- Store: [0x80006668]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xdfc83569216bf and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000188c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001890]:csrrs a7, fflags, zero
	-[0x80001894]:fsd fa3, 624(a5)
Current Store : [0x80001898] : sd a7, 632(a5) -- Store: [0x80006678]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7685c15158af8 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018b0]:csrrs a7, fflags, zero
	-[0x800018b4]:fsd fa3, 640(a5)
Current Store : [0x800018b8] : sd a7, 648(a5) -- Store: [0x80006688]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf1bca90426463 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018d0]:csrrs a7, fflags, zero
	-[0x800018d4]:fsd fa3, 656(a5)
Current Store : [0x800018d8] : sd a7, 664(a5) -- Store: [0x80006698]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0ae020c2f2ab and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018f0]:csrrs a7, fflags, zero
	-[0x800018f4]:fsd fa3, 672(a5)
Current Store : [0x800018f8] : sd a7, 680(a5) -- Store: [0x800066a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x42a2ac1575123 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001910]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001914]:csrrs a7, fflags, zero
	-[0x80001918]:fsd fa3, 688(a5)
Current Store : [0x8000191c] : sd a7, 696(a5) -- Store: [0x800066b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf21e6dcb25437 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001930]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001934]:csrrs a7, fflags, zero
	-[0x80001938]:fsd fa3, 704(a5)
Current Store : [0x8000193c] : sd a7, 712(a5) -- Store: [0x800066c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39beb50761e3d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001950]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001954]:csrrs a7, fflags, zero
	-[0x80001958]:fsd fa3, 720(a5)
Current Store : [0x8000195c] : sd a7, 728(a5) -- Store: [0x800066d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x516656a60de77 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001970]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:fsd fa3, 736(a5)
Current Store : [0x8000197c] : sd a7, 744(a5) -- Store: [0x800066e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x962eb496df1c1 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001990]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001994]:csrrs a7, fflags, zero
	-[0x80001998]:fsd fa3, 752(a5)
Current Store : [0x8000199c] : sd a7, 760(a5) -- Store: [0x800066f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd57951bee0a17 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019b0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019b4]:csrrs a7, fflags, zero
	-[0x800019b8]:fsd fa3, 768(a5)
Current Store : [0x800019bc] : sd a7, 776(a5) -- Store: [0x80006708]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfe1581ecd07ea and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019d0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019d4]:csrrs a7, fflags, zero
	-[0x800019d8]:fsd fa3, 784(a5)
Current Store : [0x800019dc] : sd a7, 792(a5) -- Store: [0x80006718]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x520baea9095e5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019f0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019f4]:csrrs a7, fflags, zero
	-[0x800019f8]:fsd fa3, 800(a5)
Current Store : [0x800019fc] : sd a7, 808(a5) -- Store: [0x80006728]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xcd606a3f0f54d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a14]:csrrs a7, fflags, zero
	-[0x80001a18]:fsd fa3, 816(a5)
Current Store : [0x80001a1c] : sd a7, 824(a5) -- Store: [0x80006738]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x28cdc8d19d0dc and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a34]:csrrs a7, fflags, zero
	-[0x80001a38]:fsd fa3, 832(a5)
Current Store : [0x80001a3c] : sd a7, 840(a5) -- Store: [0x80006748]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe64794dad7d48 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a54]:csrrs a7, fflags, zero
	-[0x80001a58]:fsd fa3, 848(a5)
Current Store : [0x80001a5c] : sd a7, 856(a5) -- Store: [0x80006758]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2dfa6bb4d11d1 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a74]:csrrs a7, fflags, zero
	-[0x80001a78]:fsd fa3, 864(a5)
Current Store : [0x80001a7c] : sd a7, 872(a5) -- Store: [0x80006768]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xca428c2b7c81f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a94]:csrrs a7, fflags, zero
	-[0x80001a98]:fsd fa3, 880(a5)
Current Store : [0x80001a9c] : sd a7, 888(a5) -- Store: [0x80006778]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb2efd30dc5db9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ab0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ab4]:csrrs a7, fflags, zero
	-[0x80001ab8]:fsd fa3, 896(a5)
Current Store : [0x80001abc] : sd a7, 904(a5) -- Store: [0x80006788]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9f8dcc4f1275c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ad0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ad4]:csrrs a7, fflags, zero
	-[0x80001ad8]:fsd fa3, 912(a5)
Current Store : [0x80001adc] : sd a7, 920(a5) -- Store: [0x80006798]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1a3fd4c2ca047 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001af0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001af4]:csrrs a7, fflags, zero
	-[0x80001af8]:fsd fa3, 928(a5)
Current Store : [0x80001afc] : sd a7, 936(a5) -- Store: [0x800067a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x691ae7e1929e8 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b14]:csrrs a7, fflags, zero
	-[0x80001b18]:fsd fa3, 944(a5)
Current Store : [0x80001b1c] : sd a7, 952(a5) -- Store: [0x800067b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x90afe96b3f2ad and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b34]:csrrs a7, fflags, zero
	-[0x80001b38]:fsd fa3, 960(a5)
Current Store : [0x80001b3c] : sd a7, 968(a5) -- Store: [0x800067c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b54]:csrrs a7, fflags, zero
	-[0x80001b58]:fsd fa3, 976(a5)
Current Store : [0x80001b5c] : sd a7, 984(a5) -- Store: [0x800067d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd89e42f5143f8 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b74]:csrrs a7, fflags, zero
	-[0x80001b78]:fsd fa3, 992(a5)
Current Store : [0x80001b7c] : sd a7, 1000(a5) -- Store: [0x800067e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b94]:csrrs a7, fflags, zero
	-[0x80001b98]:fsd fa3, 1008(a5)
Current Store : [0x80001b9c] : sd a7, 1016(a5) -- Store: [0x800067f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xaf56f24522c9c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bb0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bb4]:csrrs a7, fflags, zero
	-[0x80001bb8]:fsd fa3, 1024(a5)
Current Store : [0x80001bbc] : sd a7, 1032(a5) -- Store: [0x80006808]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bd4]:csrrs a7, fflags, zero
	-[0x80001bd8]:fsd fa3, 1040(a5)
Current Store : [0x80001bdc] : sd a7, 1048(a5) -- Store: [0x80006818]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc0e80bc9923b7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bf0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bf4]:csrrs a7, fflags, zero
	-[0x80001bf8]:fsd fa3, 1056(a5)
Current Store : [0x80001bfc] : sd a7, 1064(a5) -- Store: [0x80006828]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c14]:csrrs a7, fflags, zero
	-[0x80001c18]:fsd fa3, 1072(a5)
Current Store : [0x80001c1c] : sd a7, 1080(a5) -- Store: [0x80006838]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6febab5b81b47 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c34]:csrrs a7, fflags, zero
	-[0x80001c38]:fsd fa3, 1088(a5)
Current Store : [0x80001c3c] : sd a7, 1096(a5) -- Store: [0x80006848]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c54]:csrrs a7, fflags, zero
	-[0x80001c58]:fsd fa3, 1104(a5)
Current Store : [0x80001c5c] : sd a7, 1112(a5) -- Store: [0x80006858]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5035a8d0a4c2b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c74]:csrrs a7, fflags, zero
	-[0x80001c78]:fsd fa3, 1120(a5)
Current Store : [0x80001c7c] : sd a7, 1128(a5) -- Store: [0x80006868]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c94]:csrrs a7, fflags, zero
	-[0x80001c98]:fsd fa3, 1136(a5)
Current Store : [0x80001c9c] : sd a7, 1144(a5) -- Store: [0x80006878]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7e6c0d0870e13 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cb0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cb4]:csrrs a7, fflags, zero
	-[0x80001cb8]:fsd fa3, 1152(a5)
Current Store : [0x80001cbc] : sd a7, 1160(a5) -- Store: [0x80006888]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cd4]:csrrs a7, fflags, zero
	-[0x80001cd8]:fsd fa3, 1168(a5)
Current Store : [0x80001cdc] : sd a7, 1176(a5) -- Store: [0x80006898]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x294c231789029 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cf0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cf4]:csrrs a7, fflags, zero
	-[0x80001cf8]:fsd fa3, 1184(a5)
Current Store : [0x80001cfc] : sd a7, 1192(a5) -- Store: [0x800068a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d14]:csrrs a7, fflags, zero
	-[0x80001d18]:fsd fa3, 1200(a5)
Current Store : [0x80001d1c] : sd a7, 1208(a5) -- Store: [0x800068b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8a2386a894fd9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d34]:csrrs a7, fflags, zero
	-[0x80001d38]:fsd fa3, 1216(a5)
Current Store : [0x80001d3c] : sd a7, 1224(a5) -- Store: [0x800068c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d54]:csrrs a7, fflags, zero
	-[0x80001d58]:fsd fa3, 1232(a5)
Current Store : [0x80001d5c] : sd a7, 1240(a5) -- Store: [0x800068d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc7ab340bba999 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d74]:csrrs a7, fflags, zero
	-[0x80001d78]:fsd fa3, 1248(a5)
Current Store : [0x80001d7c] : sd a7, 1256(a5) -- Store: [0x800068e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d94]:csrrs a7, fflags, zero
	-[0x80001d98]:fsd fa3, 1264(a5)
Current Store : [0x80001d9c] : sd a7, 1272(a5) -- Store: [0x800068f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x34d4bf2305d15 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001db0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001db4]:csrrs a7, fflags, zero
	-[0x80001db8]:fsd fa3, 1280(a5)
Current Store : [0x80001dbc] : sd a7, 1288(a5) -- Store: [0x80006908]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001dd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001dd4]:csrrs a7, fflags, zero
	-[0x80001dd8]:fsd fa3, 1296(a5)
Current Store : [0x80001ddc] : sd a7, 1304(a5) -- Store: [0x80006918]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14a00d8d01424 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001df0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001df4]:csrrs a7, fflags, zero
	-[0x80001df8]:fsd fa3, 1312(a5)
Current Store : [0x80001dfc] : sd a7, 1320(a5) -- Store: [0x80006928]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e14]:csrrs a7, fflags, zero
	-[0x80001e18]:fsd fa3, 1328(a5)
Current Store : [0x80001e1c] : sd a7, 1336(a5) -- Store: [0x80006938]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x184a2cd54bc8b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e34]:csrrs a7, fflags, zero
	-[0x80001e38]:fsd fa3, 1344(a5)
Current Store : [0x80001e3c] : sd a7, 1352(a5) -- Store: [0x80006948]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e54]:csrrs a7, fflags, zero
	-[0x80001e58]:fsd fa3, 1360(a5)
Current Store : [0x80001e5c] : sd a7, 1368(a5) -- Store: [0x80006958]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1a3fb352a13ab and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e74]:csrrs a7, fflags, zero
	-[0x80001e78]:fsd fa3, 1376(a5)
Current Store : [0x80001e7c] : sd a7, 1384(a5) -- Store: [0x80006968]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e94]:csrrs a7, fflags, zero
	-[0x80001e98]:fsd fa3, 1392(a5)
Current Store : [0x80001e9c] : sd a7, 1400(a5) -- Store: [0x80006978]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdd9c651f50797 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001eb0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001eb4]:csrrs a7, fflags, zero
	-[0x80001eb8]:fsd fa3, 1408(a5)
Current Store : [0x80001ebc] : sd a7, 1416(a5) -- Store: [0x80006988]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ed0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ed4]:csrrs a7, fflags, zero
	-[0x80001ed8]:fsd fa3, 1424(a5)
Current Store : [0x80001edc] : sd a7, 1432(a5) -- Store: [0x80006998]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x47bc64f002dc1 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ef0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ef4]:csrrs a7, fflags, zero
	-[0x80001ef8]:fsd fa3, 1440(a5)
Current Store : [0x80001efc] : sd a7, 1448(a5) -- Store: [0x800069a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001f14]:csrrs a7, fflags, zero
	-[0x80001f18]:fsd fa3, 1456(a5)
Current Store : [0x80001f1c] : sd a7, 1464(a5) -- Store: [0x800069b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xcab8890bacf6d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001f34]:csrrs a7, fflags, zero
	-[0x80001f38]:fsd fa3, 1472(a5)
Current Store : [0x80001f3c] : sd a7, 1480(a5) -- Store: [0x800069c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001f54]:csrrs a7, fflags, zero
	-[0x80001f58]:fsd fa3, 1488(a5)
Current Store : [0x80001f5c] : sd a7, 1496(a5) -- Store: [0x800069d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xef616f891ea0b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001f74]:csrrs a7, fflags, zero
	-[0x80001f78]:fsd fa3, 1504(a5)
Current Store : [0x80001f7c] : sd a7, 1512(a5) -- Store: [0x800069e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001f94]:csrrs a7, fflags, zero
	-[0x80001f98]:fsd fa3, 1520(a5)
Current Store : [0x80001f9c] : sd a7, 1528(a5) -- Store: [0x800069f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2290c48e30657 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fb0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001fb4]:csrrs a7, fflags, zero
	-[0x80001fb8]:fsd fa3, 1536(a5)
Current Store : [0x80001fbc] : sd a7, 1544(a5) -- Store: [0x80006a08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001fd4]:csrrs a7, fflags, zero
	-[0x80001fd8]:fsd fa3, 1552(a5)
Current Store : [0x80001fdc] : sd a7, 1560(a5) -- Store: [0x80006a18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbdae67c407ef2 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ff0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ff4]:csrrs a7, fflags, zero
	-[0x80001ff8]:fsd fa3, 1568(a5)
Current Store : [0x80001ffc] : sd a7, 1576(a5) -- Store: [0x80006a28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002010]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002014]:csrrs a7, fflags, zero
	-[0x80002018]:fsd fa3, 1584(a5)
Current Store : [0x8000201c] : sd a7, 1592(a5) -- Store: [0x80006a38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf3878bbaf3893 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002030]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002034]:csrrs a7, fflags, zero
	-[0x80002038]:fsd fa3, 1600(a5)
Current Store : [0x8000203c] : sd a7, 1608(a5) -- Store: [0x80006a48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002050]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002054]:csrrs a7, fflags, zero
	-[0x80002058]:fsd fa3, 1616(a5)
Current Store : [0x8000205c] : sd a7, 1624(a5) -- Store: [0x80006a58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf96c79e9fdfa1 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002070]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002074]:csrrs a7, fflags, zero
	-[0x80002078]:fsd fa3, 1632(a5)
Current Store : [0x8000207c] : sd a7, 1640(a5) -- Store: [0x80006a68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002090]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002094]:csrrs a7, fflags, zero
	-[0x80002098]:fsd fa3, 1648(a5)
Current Store : [0x8000209c] : sd a7, 1656(a5) -- Store: [0x80006a78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x56182d28045ae and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020b0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800020b4]:csrrs a7, fflags, zero
	-[0x800020b8]:fsd fa3, 1664(a5)
Current Store : [0x800020bc] : sd a7, 1672(a5) -- Store: [0x80006a88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020d0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800020d4]:csrrs a7, fflags, zero
	-[0x800020d8]:fsd fa3, 1680(a5)
Current Store : [0x800020dc] : sd a7, 1688(a5) -- Store: [0x80006a98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x986532dae9957 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020f0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800020f4]:csrrs a7, fflags, zero
	-[0x800020f8]:fsd fa3, 1696(a5)
Current Store : [0x800020fc] : sd a7, 1704(a5) -- Store: [0x80006aa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002110]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002114]:csrrs a7, fflags, zero
	-[0x80002118]:fsd fa3, 1712(a5)
Current Store : [0x8000211c] : sd a7, 1720(a5) -- Store: [0x80006ab8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xcc1e517e0a9ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002130]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002134]:csrrs a7, fflags, zero
	-[0x80002138]:fsd fa3, 1728(a5)
Current Store : [0x8000213c] : sd a7, 1736(a5) -- Store: [0x80006ac8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002150]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002154]:csrrs a7, fflags, zero
	-[0x80002158]:fsd fa3, 1744(a5)
Current Store : [0x8000215c] : sd a7, 1752(a5) -- Store: [0x80006ad8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c2c9b7ac820e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002170]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002174]:csrrs a7, fflags, zero
	-[0x80002178]:fsd fa3, 1760(a5)
Current Store : [0x8000217c] : sd a7, 1768(a5) -- Store: [0x80006ae8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002190]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002194]:csrrs a7, fflags, zero
	-[0x80002198]:fsd fa3, 1776(a5)
Current Store : [0x8000219c] : sd a7, 1784(a5) -- Store: [0x80006af8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb09e7215ddb9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021b0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800021b4]:csrrs a7, fflags, zero
	-[0x800021b8]:fsd fa3, 1792(a5)
Current Store : [0x800021bc] : sd a7, 1800(a5) -- Store: [0x80006b08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021d0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800021d4]:csrrs a7, fflags, zero
	-[0x800021d8]:fsd fa3, 1808(a5)
Current Store : [0x800021dc] : sd a7, 1816(a5) -- Store: [0x80006b18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xeee707a35c8c3 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021f0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800021f4]:csrrs a7, fflags, zero
	-[0x800021f8]:fsd fa3, 1824(a5)
Current Store : [0x800021fc] : sd a7, 1832(a5) -- Store: [0x80006b28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002210]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002214]:csrrs a7, fflags, zero
	-[0x80002218]:fsd fa3, 1840(a5)
Current Store : [0x8000221c] : sd a7, 1848(a5) -- Store: [0x80006b38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x38c62d68fcb25 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002230]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002234]:csrrs a7, fflags, zero
	-[0x80002238]:fsd fa3, 1856(a5)
Current Store : [0x8000223c] : sd a7, 1864(a5) -- Store: [0x80006b48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002250]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002254]:csrrs a7, fflags, zero
	-[0x80002258]:fsd fa3, 1872(a5)
Current Store : [0x8000225c] : sd a7, 1880(a5) -- Store: [0x80006b58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9c78deb52422f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002270]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002274]:csrrs a7, fflags, zero
	-[0x80002278]:fsd fa3, 1888(a5)
Current Store : [0x8000227c] : sd a7, 1896(a5) -- Store: [0x80006b68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002290]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002294]:csrrs a7, fflags, zero
	-[0x80002298]:fsd fa3, 1904(a5)
Current Store : [0x8000229c] : sd a7, 1912(a5) -- Store: [0x80006b78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5e33245521f37 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022b0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800022b4]:csrrs a7, fflags, zero
	-[0x800022b8]:fsd fa3, 1920(a5)
Current Store : [0x800022bc] : sd a7, 1928(a5) -- Store: [0x80006b88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022d0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800022d4]:csrrs a7, fflags, zero
	-[0x800022d8]:fsd fa3, 1936(a5)
Current Store : [0x800022dc] : sd a7, 1944(a5) -- Store: [0x80006b98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ac81c4b8321 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022f0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800022f4]:csrrs a7, fflags, zero
	-[0x800022f8]:fsd fa3, 1952(a5)
Current Store : [0x800022fc] : sd a7, 1960(a5) -- Store: [0x80006ba8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002310]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002314]:csrrs a7, fflags, zero
	-[0x80002318]:fsd fa3, 1968(a5)
Current Store : [0x8000231c] : sd a7, 1976(a5) -- Store: [0x80006bb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcde8b20967d0b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002330]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002334]:csrrs a7, fflags, zero
	-[0x80002338]:fsd fa3, 1984(a5)
Current Store : [0x8000233c] : sd a7, 1992(a5) -- Store: [0x80006bc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002350]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002354]:csrrs a7, fflags, zero
	-[0x80002358]:fsd fa3, 2000(a5)
Current Store : [0x8000235c] : sd a7, 2008(a5) -- Store: [0x80006bd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf72fa86d218ab and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002370]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002374]:csrrs a7, fflags, zero
	-[0x80002378]:fsd fa3, 2016(a5)
Current Store : [0x8000237c] : sd a7, 2024(a5) -- Store: [0x80006be8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002398]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x8000239c]:csrrs a7, fflags, zero
	-[0x800023a0]:fsd fa3, 0(a5)
Current Store : [0x800023a4] : sd a7, 8(a5) -- Store: [0x80006bf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0084bbfe5e825 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023bc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800023c0]:csrrs a7, fflags, zero
	-[0x800023c4]:fsd fa3, 16(a5)
Current Store : [0x800023c8] : sd a7, 24(a5) -- Store: [0x80006c08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023dc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800023e0]:csrrs a7, fflags, zero
	-[0x800023e4]:fsd fa3, 32(a5)
Current Store : [0x800023e8] : sd a7, 40(a5) -- Store: [0x80006c18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x82f8c4c611b4f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023fc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002400]:csrrs a7, fflags, zero
	-[0x80002404]:fsd fa3, 48(a5)
Current Store : [0x80002408] : sd a7, 56(a5) -- Store: [0x80006c28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000241c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002420]:csrrs a7, fflags, zero
	-[0x80002424]:fsd fa3, 64(a5)
Current Store : [0x80002428] : sd a7, 72(a5) -- Store: [0x80006c38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x026650c8e9dc3 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000243c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002440]:csrrs a7, fflags, zero
	-[0x80002444]:fsd fa3, 80(a5)
Current Store : [0x80002448] : sd a7, 88(a5) -- Store: [0x80006c48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000245c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002460]:csrrs a7, fflags, zero
	-[0x80002464]:fsd fa3, 96(a5)
Current Store : [0x80002468] : sd a7, 104(a5) -- Store: [0x80006c58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2ab10cf910f7c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000247c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002480]:csrrs a7, fflags, zero
	-[0x80002484]:fsd fa3, 112(a5)
Current Store : [0x80002488] : sd a7, 120(a5) -- Store: [0x80006c68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000249c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800024a0]:csrrs a7, fflags, zero
	-[0x800024a4]:fsd fa3, 128(a5)
Current Store : [0x800024a8] : sd a7, 136(a5) -- Store: [0x80006c78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x36979c7be0deb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024bc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800024c0]:csrrs a7, fflags, zero
	-[0x800024c4]:fsd fa3, 144(a5)
Current Store : [0x800024c8] : sd a7, 152(a5) -- Store: [0x80006c88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024dc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800024e0]:csrrs a7, fflags, zero
	-[0x800024e4]:fsd fa3, 160(a5)
Current Store : [0x800024e8] : sd a7, 168(a5) -- Store: [0x80006c98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9ea70df588b3b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024fc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002500]:csrrs a7, fflags, zero
	-[0x80002504]:fsd fa3, 176(a5)
Current Store : [0x80002508] : sd a7, 184(a5) -- Store: [0x80006ca8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000251c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002520]:csrrs a7, fflags, zero
	-[0x80002524]:fsd fa3, 192(a5)
Current Store : [0x80002528] : sd a7, 200(a5) -- Store: [0x80006cb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x092178fb945a5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000253c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002540]:csrrs a7, fflags, zero
	-[0x80002544]:fsd fa3, 208(a5)
Current Store : [0x80002548] : sd a7, 216(a5) -- Store: [0x80006cc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000255c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002560]:csrrs a7, fflags, zero
	-[0x80002564]:fsd fa3, 224(a5)
Current Store : [0x80002568] : sd a7, 232(a5) -- Store: [0x80006cd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x84129978f9c19 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000257c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002580]:csrrs a7, fflags, zero
	-[0x80002584]:fsd fa3, 240(a5)
Current Store : [0x80002588] : sd a7, 248(a5) -- Store: [0x80006ce8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000259c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800025a0]:csrrs a7, fflags, zero
	-[0x800025a4]:fsd fa3, 256(a5)
Current Store : [0x800025a8] : sd a7, 264(a5) -- Store: [0x80006cf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x94497c97803a8 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800025bc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800025c0]:csrrs a7, fflags, zero
	-[0x800025c4]:fsd fa3, 272(a5)
Current Store : [0x800025c8] : sd a7, 280(a5) -- Store: [0x80006d08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x354ba34578ba7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800025dc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800025e0]:csrrs a7, fflags, zero
	-[0x800025e4]:fsd fa3, 288(a5)
Current Store : [0x800025e8] : sd a7, 296(a5) -- Store: [0x80006d18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x238a22371e9ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800025fc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002600]:csrrs a7, fflags, zero
	-[0x80002604]:fsd fa3, 304(a5)
Current Store : [0x80002608] : sd a7, 312(a5) -- Store: [0x80006d28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2c9bb6d2a0534 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000261c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002620]:csrrs a7, fflags, zero
	-[0x80002624]:fsd fa3, 320(a5)
Current Store : [0x80002628] : sd a7, 328(a5) -- Store: [0x80006d38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa9aa2b6025f07 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000263c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002640]:csrrs a7, fflags, zero
	-[0x80002644]:fsd fa3, 336(a5)
Current Store : [0x80002648] : sd a7, 344(a5) -- Store: [0x80006d48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x47c0965bde424 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000265c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002660]:csrrs a7, fflags, zero
	-[0x80002664]:fsd fa3, 352(a5)
Current Store : [0x80002668] : sd a7, 360(a5) -- Store: [0x80006d58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6cba246939a56 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000267c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002680]:csrrs a7, fflags, zero
	-[0x80002684]:fsd fa3, 368(a5)
Current Store : [0x80002688] : sd a7, 376(a5) -- Store: [0x80006d68]:0x0000000000000005





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

|s.no|            signature             |                                                                                                                                                                         coverpoints                                                                                                                                                                         |                                                             code                                                             |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80005c10]<br>0xD5BFDDB7D5BFDDB7|- opcode : fmadd.d<br> - rs1 : f13<br> - rs2 : f23<br> - rs3 : f23<br> - rd : f12<br> - rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1<br>                                                                                                                                                                                                             |[0x800003c0]:fmadd.d fa2, fa3, fs7, fs7, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsd fa2, 0(a5)<br>      |
|   2|[0x80005c20]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f28<br> - rs2 : f28<br> - rs3 : f28<br> - rd : f28<br> - rs1 == rs2 == rs3 == rd<br>                                                                                                                                                                                                                                                                 |[0x800003e0]:fmadd.d ft8, ft8, ft8, ft8, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsd ft8, 16(a5)<br>     |
|   3|[0x80005c30]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f17<br> - rs2 : f14<br> - rs3 : f16<br> - rd : f20<br> - rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5569022b338ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br> |[0x80000400]:fmadd.d fs4, fa7, fa4, fa6, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fs4, 32(a5)<br>     |
|   4|[0x80005c40]<br>0xF76DF56FF76DF56F|- rs1 : f27<br> - rs2 : f22<br> - rs3 : f27<br> - rd : f30<br> - rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2<br>                                                                                                                                                                                                                                    |[0x80000420]:fmadd.d ft10, fs11, fs6, fs11, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsd ft10, 48(a5)<br> |
|   5|[0x80005c50]<br>0x0000000080004000|- rs1 : f11<br> - rs2 : f11<br> - rs3 : f24<br> - rd : f6<br> - rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3<br>                                                                                                                                                                                                                                     |[0x80000440]:fmadd.d ft6, fa1, fa1, fs8, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:fsd ft6, 64(a5)<br>     |
|   6|[0x80005c60]<br>0x56FF76DF56FF76DF|- rs1 : f20<br> - rs2 : f10<br> - rs3 : f10<br> - rd : f10<br> - rd == rs2 == rs3 != rs1<br>                                                                                                                                                                                                                                                                 |[0x80000460]:fmadd.d fa0, fs4, fa0, fa0, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd fa0, 80(a5)<br>     |
|   7|[0x80005c70]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f5<br> - rs2 : f5<br> - rs3 : f5<br> - rd : f19<br> - rs1 == rs2 == rs3 != rd<br>                                                                                                                                                                                                                                                                    |[0x80000480]:fmadd.d fs3, ft5, ft5, ft5, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd fs3, 96(a5)<br>     |
|   8|[0x80005c80]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f31<br> - rs2 : f17<br> - rs3 : f22<br> - rd : f31<br> - rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x136b66cb69135 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                               |[0x800004a0]:fmadd.d ft11, ft11, fa7, fs6, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:fsd ft11, 112(a5)<br> |
|   9|[0x80005c90]<br>0xDF56FF76DF56FF76|- rs1 : f14<br> - rs2 : f2<br> - rs3 : f18<br> - rd : f18<br> - rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7d6356ef8a62f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                |[0x800004c0]:fmadd.d fs2, fa4, ft2, fs2, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd fs2, 128(a5)<br>    |
|  10|[0x80005ca0]<br>0x0000000080005C10|- rs1 : f15<br> - rs2 : f21<br> - rs3 : f15<br> - rd : f15<br> - rs1 == rd == rs3 != rs2<br>                                                                                                                                                                                                                                                                 |[0x800004e0]:fmadd.d fa5, fa5, fs5, fa5, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:fsd fa5, 144(a5)<br>    |
|  11|[0x80005cb0]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f26<br> - rs2 : f8<br> - rs3 : f6<br> - rd : f8<br> - rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xce30065d5ac1b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                  |[0x80000500]:fmadd.d fs0, fs10, fs0, ft6, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsd fs0, 160(a5)<br>   |
|  12|[0x80005cc0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f24<br> - rs2 : f24<br> - rs3 : f9<br> - rd : f24<br> - rs1 == rs2 == rd != rs3<br>                                                                                                                                                                                                                                                                  |[0x80000520]:fmadd.d fs8, fs8, fs8, fs1, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd fs8, 176(a5)<br>    |
|  13|[0x80005cd0]<br>0x6DF56FF76DF56FF7|- rs1 : f16<br> - rs2 : f19<br> - rs3 : f29<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4f8b971fa5a72 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                          |[0x80000540]:fmadd.d fs6, fa6, fs3, ft9, dyn<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:fsd fs6, 192(a5)<br>    |
|  14|[0x80005ce0]<br>0x76DF56FF76DF56FF|- rs1 : f2<br> - rs2 : f27<br> - rs3 : f4<br> - rd : f26<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x67140be6e2dc5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                            |[0x80000560]:fmadd.d fs10, ft2, fs11, ft4, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd fs10, 208(a5)<br> |
|  15|[0x80005cf0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f21<br> - rs2 : f30<br> - rs3 : f25<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7f8e997d84592 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                          |[0x80000580]:fmadd.d fs11, fs5, ft10, fs9, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd fs11, 224(a5)<br> |
|  16|[0x80005d00]<br>0xEEDBEADFEEDBEADF|- rs1 : f23<br> - rs2 : f31<br> - rs3 : f19<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0x5819e362ac2bf and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                          |[0x800005a0]:fmadd.d ft9, fs7, ft11, fs3, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsd ft9, 240(a5)<br>   |
|  17|[0x80005d10]<br>0x0000000080004010|- rs1 : f3<br> - rs2 : f7<br> - rs3 : f2<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1d803765d304 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                             |[0x800005c0]:fmadd.d fa6, ft3, ft7, ft2, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:fsd fa6, 256(a5)<br>    |
|  18|[0x80005d20]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f12<br> - rs2 : f15<br> - rs3 : f1<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe07b0ce451645 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                            |[0x800005e0]:fmadd.d ft4, fa2, fa5, ft1, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd ft4, 272(a5)<br>    |
|  19|[0x80005d30]<br>0xEDBEADFEEDBEADFE|- rs1 : f18<br> - rs2 : f16<br> - rs3 : f11<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe49bfb977b300 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                          |[0x80000600]:fmadd.d fs9, fs2, fa6, fa1, dyn<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:fsd fs9, 288(a5)<br>    |
|  20|[0x80005d40]<br>0x0000000A00000000|- rs1 : f6<br> - rs2 : f13<br> - rs3 : f26<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1de0cd942442e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                            |[0x80000620]:fmadd.d ft3, ft6, fa3, fs10, dyn<br> [0x80000624]:csrrs a7, fflags, zero<br> [0x80000628]:fsd ft3, 304(a5)<br>   |
|  21|[0x80005d50]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f19<br> - rs2 : f20<br> - rs3 : f8<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5cab9bd09e6c4 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                            |[0x80000640]:fmadd.d ft7, fs3, fs4, fs0, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd ft7, 320(a5)<br>    |
|  22|[0x80005d60]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f10<br> - rs2 : f26<br> - rs3 : f13<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0x4d1d10d2ac62f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                          |[0x80000660]:fmadd.d fs7, fa0, fs10, fa3, dyn<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:fsd fs7, 336(a5)<br>   |
|  23|[0x80005d70]<br>0x0000000000000005|- rs1 : f25<br> - rs2 : f6<br> - rs3 : f21<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x30526056a01ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                           |[0x80000680]:fmadd.d fa7, fs9, ft6, fs5, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsd fa7, 352(a5)<br>    |
|  24|[0x80005d80]<br>0x0000000080000390|- rs1 : f9<br> - rs2 : f18<br> - rs3 : f17<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1d17766cf56c7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                            |[0x800006a0]:fmadd.d ft5, fs1, fs2, fa7, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd ft5, 368(a5)<br>    |
|  25|[0x80005d90]<br>0xDBEADFEEDBEADFEE|- rs1 : f22<br> - rs2 : f12<br> - rs3 : f30<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbe64efc9e258d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                          |[0x800006c0]:fmadd.d fs5, fs6, fa2, ft10, dyn<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:fsd fs5, 384(a5)<br>   |
|  26|[0x80005da0]<br>0x0000000A00006000|- rs1 : f1<br> - rs2 : f4<br> - rs3 : f3<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6361dd8ebbe71 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800006e0]:fmadd.d ft2, ft1, ft4, ft3, dyn<br> [0x800006e4]:csrrs a7, fflags, zero<br> [0x800006e8]:fsd ft2, 400(a5)<br>    |
|  27|[0x80005db0]<br>0xADFEEDBEADFEEDBE|- rs1 : f4<br> - rs2 : f25<br> - rs3 : f0<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4d3375e946b52 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                             |[0x80000700]:fmadd.d fs1, ft4, fs9, ft0, dyn<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:fsd fs1, 416(a5)<br>    |
|  28|[0x80005dc0]<br>0xFEEDBEADFEEDBEAD|- rs1 : f30<br> - rs2 : f9<br> - rs3 : f31<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0aaee2f44e344 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                            |[0x80000720]:fmadd.d ft1, ft10, fs1, ft11, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd ft1, 432(a5)<br>  |
|  29|[0x80005dd0]<br>0xEADFEEDBEADFEEDB|- rs1 : f8<br> - rs2 : f29<br> - rs3 : f12<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0x113ecba7502a7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                           |[0x80000740]:fmadd.d fa3, fs0, ft9, fa2, dyn<br> [0x80000744]:csrrs a7, fflags, zero<br> [0x80000748]:fsd fa3, 448(a5)<br>    |
|  30|[0x80005de0]<br>0xF56FF76DF56FF76D|- rs1 : f29<br> - rs2 : f0<br> - rs3 : f20<br> - rd : f14<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb9042a506a4fd and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                           |[0x80000760]:fmadd.d fa4, ft9, ft0, fs4, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsd fa4, 464(a5)<br>    |
|  31|[0x80005df0]<br>0x0000000000000000|- rs1 : f7<br> - rs2 : f1<br> - rs3 : f14<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x95adca0768ede and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                             |[0x80000780]:fmadd.d ft0, ft7, ft1, fa4, dyn<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:fsd ft0, 480(a5)<br>    |
|  32|[0x80005e00]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f0<br> - rs2 : f3<br> - rs3 : f7<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xcfd9836660a69 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                             |[0x800007a0]:fmadd.d fa1, ft0, ft3, ft7, dyn<br> [0x800007a4]:csrrs a7, fflags, zero<br> [0x800007a8]:fsd fa1, 496(a5)<br>    |
|  33|[0x80005e10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x194e95f4fa0e5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800007c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:fsd fa3, 512(a5)<br>    |
|  34|[0x80005e20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x4d30da0b2f54f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x8962598ff75fb and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800007e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007e4]:csrrs a7, fflags, zero<br> [0x800007e8]:fsd fa3, 528(a5)<br>    |
|  35|[0x80005e30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x963785d0567a5 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x42aa420e5a55c and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000800]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa3, 544(a5)<br>    |
|  36|[0x80005e40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537603b0ea8b and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x2bc99bd2c087f and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000820]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000824]:csrrs a7, fflags, zero<br> [0x80000828]:fsd fa3, 560(a5)<br>    |
|  37|[0x80005e50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9a5710f3828f7 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x3f6c3f1a31a35 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000840]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsd fa3, 576(a5)<br>    |
|  38|[0x80005e60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf4fff14ba982d and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x059ef1b4e186f and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000860]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000864]:csrrs a7, fflags, zero<br> [0x80000868]:fsd fa3, 592(a5)<br>    |
|  39|[0x80005e70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1eb3cbd822141 and fs2 == 0 and fe2 == 0x400 and fm2 == 0xc92bc8d23f80a and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000880]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000884]:csrrs a7, fflags, zero<br> [0x80000888]:fsd fa3, 608(a5)<br>    |
|  40|[0x80005e80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbf4f8dd35ac8c and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x2505b17c605c8 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800008a0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008a4]:csrrs a7, fflags, zero<br> [0x800008a8]:fsd fa3, 624(a5)<br>    |
|  41|[0x80005e90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4c6c848cb47df and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x8a4ab01158b82 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800008c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008c4]:csrrs a7, fflags, zero<br> [0x800008c8]:fsd fa3, 640(a5)<br>    |
|  42|[0x80005ea0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xe707c5377ae9f and fs2 == 0 and fe2 == 0x402 and fm2 == 0x0d1ffa1c81aa1 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800008e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa3, 656(a5)<br>    |
|  43|[0x80005eb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9086506183f67 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x474031b174347 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000900]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000904]:csrrs a7, fflags, zero<br> [0x80000908]:fsd fa3, 672(a5)<br>    |
|  44|[0x80005ec0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0e835d272c05e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0xe487ef0e5cb47 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000920]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:fsd fa3, 688(a5)<br>    |
|  45|[0x80005ed0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa53d0d2b3faec and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x37289daf00a60 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000940]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000944]:csrrs a7, fflags, zero<br> [0x80000948]:fsd fa3, 704(a5)<br>    |
|  46|[0x80005ee0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f6 and fm1 == 0x3502bebc53fff and fs2 == 0 and fe2 == 0x407 and fm2 == 0xa82aa06c96745 and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000960]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000964]:csrrs a7, fflags, zero<br> [0x80000968]:fsd fa3, 720(a5)<br>    |
|  47|[0x80005ef0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6f451c304de2e and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x64e1c3e865dbd and fs3 == 1 and fe3 == 0x7fe and fm3 == 0xfffffffffffff and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000980]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000984]:csrrs a7, fflags, zero<br> [0x80000988]:fsd fa3, 736(a5)<br>    |
|  48|[0x80005f00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xb54c6b03a8983 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800009a0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009a4]:csrrs a7, fflags, zero<br> [0x800009a8]:fsd fa3, 752(a5)<br>    |
|  49|[0x80005f10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x43c3f0806f2cd and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800009c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa3, 768(a5)<br>    |
|  50|[0x80005f20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5b66519ab8134 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800009e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009e4]:csrrs a7, fflags, zero<br> [0x800009e8]:fsd fa3, 784(a5)<br>    |
|  51|[0x80005f30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9b75de798ac5f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000a00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsd fa3, 800(a5)<br>    |
|  52|[0x80005f40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf940aa40f1530 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000a20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a24]:csrrs a7, fflags, zero<br> [0x80000a28]:fsd fa3, 816(a5)<br>    |
|  53|[0x80005f50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x737bdc485a77d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000a40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a44]:csrrs a7, fflags, zero<br> [0x80000a48]:fsd fa3, 832(a5)<br>    |
|  54|[0x80005f60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x55e18bacc608f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000a60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a64]:csrrs a7, fflags, zero<br> [0x80000a68]:fsd fa3, 848(a5)<br>    |
|  55|[0x80005f70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x442435bea0eb5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000a80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a84]:csrrs a7, fflags, zero<br> [0x80000a88]:fsd fa3, 864(a5)<br>    |
|  56|[0x80005f80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xffb4067da2691 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000aa0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa3, 880(a5)<br>    |
|  57|[0x80005f90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8106d28c6e8ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000ac0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ac4]:csrrs a7, fflags, zero<br> [0x80000ac8]:fsd fa3, 896(a5)<br>    |
|  58|[0x80005fa0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ff4d99a919c7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000ae0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:fsd fa3, 912(a5)<br>    |
|  59|[0x80005fb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc00223fe58e9e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000b00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b04]:csrrs a7, fflags, zero<br> [0x80000b08]:fsd fa3, 928(a5)<br>    |
|  60|[0x80005fc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9e3b4234a7716 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000b20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b24]:csrrs a7, fflags, zero<br> [0x80000b28]:fsd fa3, 944(a5)<br>    |
|  61|[0x80005fd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xde18ff8661b6b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000b40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b44]:csrrs a7, fflags, zero<br> [0x80000b48]:fsd fa3, 960(a5)<br>    |
|  62|[0x80005fe0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3f8c326b3af5d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000b60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b64]:csrrs a7, fflags, zero<br> [0x80000b68]:fsd fa3, 976(a5)<br>    |
|  63|[0x80005ff0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfa73e129b8879 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000b80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa3, 992(a5)<br>    |
|  64|[0x80006000]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc48b48c27d811 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000ba0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ba4]:csrrs a7, fflags, zero<br> [0x80000ba8]:fsd fa3, 1008(a5)<br>   |
|  65|[0x80006010]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x82cee64001220 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000bc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000bc4]:csrrs a7, fflags, zero<br> [0x80000bc8]:fsd fa3, 1024(a5)<br>   |
|  66|[0x80006020]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1f707766a790b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000be0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000be4]:csrrs a7, fflags, zero<br> [0x80000be8]:fsd fa3, 1040(a5)<br>   |
|  67|[0x80006030]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf2f5c0f43aa65 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000c00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c04]:csrrs a7, fflags, zero<br> [0x80000c08]:fsd fa3, 1056(a5)<br>   |
|  68|[0x80006040]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0e1e10b8a2f26 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000c20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c24]:csrrs a7, fflags, zero<br> [0x80000c28]:fsd fa3, 1072(a5)<br>   |
|  69|[0x80006050]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x42f12d7244f4f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000c40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c44]:csrrs a7, fflags, zero<br> [0x80000c48]:fsd fa3, 1088(a5)<br>   |
|  70|[0x80006060]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0972c859cb481 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000c60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa3, 1104(a5)<br>   |
|  71|[0x80006070]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc80a67882d6d1 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000c80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c84]:csrrs a7, fflags, zero<br> [0x80000c88]:fsd fa3, 1120(a5)<br>   |
|  72|[0x80006080]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x7f381ca9a6b2f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000ca0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsd fa3, 1136(a5)<br>   |
|  73|[0x80006090]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x530b56ed605ac and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000cc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000cc4]:csrrs a7, fflags, zero<br> [0x80000cc8]:fsd fa3, 1152(a5)<br>   |
|  74|[0x800060a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xac4394e2d6fb3 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000ce0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ce4]:csrrs a7, fflags, zero<br> [0x80000ce8]:fsd fa3, 1168(a5)<br>   |
|  75|[0x800060b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6756366451777 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000d00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d04]:csrrs a7, fflags, zero<br> [0x80000d08]:fsd fa3, 1184(a5)<br>   |
|  76|[0x800060c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9bebe66f937a7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000d20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d24]:csrrs a7, fflags, zero<br> [0x80000d28]:fsd fa3, 1200(a5)<br>   |
|  77|[0x800060d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa85a268409ae9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000d40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa3, 1216(a5)<br>   |
|  78|[0x800060e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x22e4be37f86cb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000d60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d64]:csrrs a7, fflags, zero<br> [0x80000d68]:fsd fa3, 1232(a5)<br>   |
|  79|[0x800060f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc0377eab1f21f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000d80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:fsd fa3, 1248(a5)<br>   |
|  80|[0x80006100]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x83bc51daecbf5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000da0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000da4]:csrrs a7, fflags, zero<br> [0x80000da8]:fsd fa3, 1264(a5)<br>   |
|  81|[0x80006110]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x465936dcae3fb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000dc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000dc4]:csrrs a7, fflags, zero<br> [0x80000dc8]:fsd fa3, 1280(a5)<br>   |
|  82|[0x80006120]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xea52ea391cf03 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000de0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000de4]:csrrs a7, fflags, zero<br> [0x80000de8]:fsd fa3, 1296(a5)<br>   |
|  83|[0x80006130]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x566d65947d7e7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000e00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e04]:csrrs a7, fflags, zero<br> [0x80000e08]:fsd fa3, 1312(a5)<br>   |
|  84|[0x80006140]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x89d995b2d6507 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000e20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa3, 1328(a5)<br>   |
|  85|[0x80006150]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x8f90cc1b18bff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000e40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e44]:csrrs a7, fflags, zero<br> [0x80000e48]:fsd fa3, 1344(a5)<br>   |
|  86|[0x80006160]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4d39f7052a913 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000e64]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e68]:csrrs a7, fflags, zero<br> [0x80000e6c]:fsd fa3, 1360(a5)<br>   |
|  87|[0x80006170]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa85d306a197c5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000e84]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e88]:csrrs a7, fflags, zero<br> [0x80000e8c]:fsd fa3, 1376(a5)<br>   |
|  88|[0x80006180]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8d5463dfce629 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000ea4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ea8]:csrrs a7, fflags, zero<br> [0x80000eac]:fsd fa3, 1392(a5)<br>   |
|  89|[0x80006190]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6e65a8d3dbea5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000ec4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ec8]:csrrs a7, fflags, zero<br> [0x80000ecc]:fsd fa3, 1408(a5)<br>   |
|  90|[0x800061a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3dfdc8c878541 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000ee4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa3, 1424(a5)<br>   |
|  91|[0x800061b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x447a9936a43d3 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000f04]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f08]:csrrs a7, fflags, zero<br> [0x80000f0c]:fsd fa3, 1440(a5)<br>   |
|  92|[0x800061c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe4d0d779159a4 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000f24]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f28]:csrrs a7, fflags, zero<br> [0x80000f2c]:fsd fa3, 1456(a5)<br>   |
|  93|[0x800061d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6fd2704b8e37f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000f44]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f48]:csrrs a7, fflags, zero<br> [0x80000f4c]:fsd fa3, 1472(a5)<br>   |
|  94|[0x800061e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x26c977d632159 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000f64]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f68]:csrrs a7, fflags, zero<br> [0x80000f6c]:fsd fa3, 1488(a5)<br>   |
|  95|[0x800061f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x68add14e18ecb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000f84]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f88]:csrrs a7, fflags, zero<br> [0x80000f8c]:fsd fa3, 1504(a5)<br>   |
|  96|[0x80006200]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe800919ed6413 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000fa4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fa8]:csrrs a7, fflags, zero<br> [0x80000fac]:fsd fa3, 1520(a5)<br>   |
|  97|[0x80006210]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xebc97dc31d5a7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000fc4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa3, 1536(a5)<br>   |
|  98|[0x80006220]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1f9fd611425bb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80000fe4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fe8]:csrrs a7, fflags, zero<br> [0x80000fec]:fsd fa3, 1552(a5)<br>   |
|  99|[0x80006230]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x76587e2d6216f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001004]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001008]:csrrs a7, fflags, zero<br> [0x8000100c]:fsd fa3, 1568(a5)<br>   |
| 100|[0x80006240]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x57fa825e98147 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001024]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001028]:csrrs a7, fflags, zero<br> [0x8000102c]:fsd fa3, 1584(a5)<br>   |
| 101|[0x80006250]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7bafa3050f8b7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001044]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001048]:csrrs a7, fflags, zero<br> [0x8000104c]:fsd fa3, 1600(a5)<br>   |
| 102|[0x80006260]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x97836753c7c7f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001064]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001068]:csrrs a7, fflags, zero<br> [0x8000106c]:fsd fa3, 1616(a5)<br>   |
| 103|[0x80006270]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1f06fdec36709 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001084]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001088]:csrrs a7, fflags, zero<br> [0x8000108c]:fsd fa3, 1632(a5)<br>   |
| 104|[0x80006280]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x00f47e13a3077 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800010a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa3, 1648(a5)<br>   |
| 105|[0x80006290]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xace1ecea16623 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800010c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010c8]:csrrs a7, fflags, zero<br> [0x800010cc]:fsd fa3, 1664(a5)<br>   |
| 106|[0x800062a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6db92bb1bf075 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800010e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010e8]:csrrs a7, fflags, zero<br> [0x800010ec]:fsd fa3, 1680(a5)<br>   |
| 107|[0x800062b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3eebb35310409 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001104]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001108]:csrrs a7, fflags, zero<br> [0x8000110c]:fsd fa3, 1696(a5)<br>   |
| 108|[0x800062c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x04673c7ab8808 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001124]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001128]:csrrs a7, fflags, zero<br> [0x8000112c]:fsd fa3, 1712(a5)<br>   |
| 109|[0x800062d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2362beb7fcccc and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001144]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001148]:csrrs a7, fflags, zero<br> [0x8000114c]:fsd fa3, 1728(a5)<br>   |
| 110|[0x800062e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa3be3d7336699 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001164]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001168]:csrrs a7, fflags, zero<br> [0x8000116c]:fsd fa3, 1744(a5)<br>   |
| 111|[0x800062f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe2f1c5d734347 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001184]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa3, 1760(a5)<br>   |
| 112|[0x80006300]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x6607c20361523 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800011a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011a8]:csrrs a7, fflags, zero<br> [0x800011ac]:fsd fa3, 1776(a5)<br>   |
| 113|[0x80006310]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc4edf85532923 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800011c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011c8]:csrrs a7, fflags, zero<br> [0x800011cc]:fsd fa3, 1792(a5)<br>   |
| 114|[0x80006320]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x318ea43af884c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800011e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa3, 1808(a5)<br>   |
| 115|[0x80006330]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x00b42e8f00d47 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001204]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001208]:csrrs a7, fflags, zero<br> [0x8000120c]:fsd fa3, 1824(a5)<br>   |
| 116|[0x80006340]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5e872dc3c5cf9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001224]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001228]:csrrs a7, fflags, zero<br> [0x8000122c]:fsd fa3, 1840(a5)<br>   |
| 117|[0x80006350]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0db7e0a5d748 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001244]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001248]:csrrs a7, fflags, zero<br> [0x8000124c]:fsd fa3, 1856(a5)<br>   |
| 118|[0x80006360]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5a371eca20170 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001264]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001268]:csrrs a7, fflags, zero<br> [0x8000126c]:fsd fa3, 1872(a5)<br>   |
| 119|[0x80006370]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0xdb8da7279369f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001284]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001288]:csrrs a7, fflags, zero<br> [0x8000128c]:fsd fa3, 1888(a5)<br>   |
| 120|[0x80006380]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xeedf7f711c3c2 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800012a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012a8]:csrrs a7, fflags, zero<br> [0x800012ac]:fsd fa3, 1904(a5)<br>   |
| 121|[0x80006390]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5864580d04bef and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800012c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa3, 1920(a5)<br>   |
| 122|[0x800063a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x5afb49b29c463 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800012e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012e8]:csrrs a7, fflags, zero<br> [0x800012ec]:fsd fa3, 1936(a5)<br>   |
| 123|[0x800063b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd64347e477166 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001304]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001308]:csrrs a7, fflags, zero<br> [0x8000130c]:fsd fa3, 1952(a5)<br>   |
| 124|[0x800063c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xad3923b9bf5a2 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001324]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001328]:csrrs a7, fflags, zero<br> [0x8000132c]:fsd fa3, 1968(a5)<br>   |
| 125|[0x800063d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x76940d9e18057 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001344]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001348]:csrrs a7, fflags, zero<br> [0x8000134c]:fsd fa3, 1984(a5)<br>   |
| 126|[0x800063e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6f291ef3c3557 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001364]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001368]:csrrs a7, fflags, zero<br> [0x8000136c]:fsd fa3, 2000(a5)<br>   |
| 127|[0x800063f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9847d9429817b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001384]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001388]:csrrs a7, fflags, zero<br> [0x8000138c]:fsd fa3, 2016(a5)<br>   |
| 128|[0x80006400]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf9f9f5190aab4 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800013ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013b0]:csrrs a7, fflags, zero<br> [0x800013b4]:fsd fa3, 0(a5)<br>      |
| 129|[0x80006410]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9d5f97660dadf and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800013cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013d0]:csrrs a7, fflags, zero<br> [0x800013d4]:fsd fa3, 16(a5)<br>     |
| 130|[0x80006420]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x42972262ccf0f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800013ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013f0]:csrrs a7, fflags, zero<br> [0x800013f4]:fsd fa3, 32(a5)<br>     |
| 131|[0x80006430]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x01dca4dde57a5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000140c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001410]:csrrs a7, fflags, zero<br> [0x80001414]:fsd fa3, 48(a5)<br>     |
| 132|[0x80006440]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x714a830fa079f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000142c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001430]:csrrs a7, fflags, zero<br> [0x80001434]:fsd fa3, 64(a5)<br>     |
| 133|[0x80006450]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x66b37637d118d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000144c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001450]:csrrs a7, fflags, zero<br> [0x80001454]:fsd fa3, 80(a5)<br>     |
| 134|[0x80006460]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4b39d91344978 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000146c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001470]:csrrs a7, fflags, zero<br> [0x80001474]:fsd fa3, 96(a5)<br>     |
| 135|[0x80006470]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc44223126cbc7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000148c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001490]:csrrs a7, fflags, zero<br> [0x80001494]:fsd fa3, 112(a5)<br>    |
| 136|[0x80006480]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0a287088f5e69 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800014ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014b0]:csrrs a7, fflags, zero<br> [0x800014b4]:fsd fa3, 128(a5)<br>    |
| 137|[0x80006490]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9fbeb1abfb6e7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800014cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014d0]:csrrs a7, fflags, zero<br> [0x800014d4]:fsd fa3, 144(a5)<br>    |
| 138|[0x800064a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb3d56c4f6fd1d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800014ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014f0]:csrrs a7, fflags, zero<br> [0x800014f4]:fsd fa3, 160(a5)<br>    |
| 139|[0x800064b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x75450c5a9817f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000150c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001510]:csrrs a7, fflags, zero<br> [0x80001514]:fsd fa3, 176(a5)<br>    |
| 140|[0x800064c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdfba6beb7a6c9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000152c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001530]:csrrs a7, fflags, zero<br> [0x80001534]:fsd fa3, 192(a5)<br>    |
| 141|[0x800064d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x99fb7503e8d08 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000154c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001550]:csrrs a7, fflags, zero<br> [0x80001554]:fsd fa3, 208(a5)<br>    |
| 142|[0x800064e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xaf42bcba26d83 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000156c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001570]:csrrs a7, fflags, zero<br> [0x80001574]:fsd fa3, 224(a5)<br>    |
| 143|[0x800064f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xfb797ef55e1cf and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000158c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001590]:csrrs a7, fflags, zero<br> [0x80001594]:fsd fa3, 240(a5)<br>    |
| 144|[0x80006500]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7ad291b7d6463 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800015ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015b0]:csrrs a7, fflags, zero<br> [0x800015b4]:fsd fa3, 256(a5)<br>    |
| 145|[0x80006510]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xec0c4abe1fd0e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800015cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015d0]:csrrs a7, fflags, zero<br> [0x800015d4]:fsd fa3, 272(a5)<br>    |
| 146|[0x80006520]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x627e198e85b1f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800015ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015f0]:csrrs a7, fflags, zero<br> [0x800015f4]:fsd fa3, 288(a5)<br>    |
| 147|[0x80006530]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x2a1fa26c0948f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000160c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:fsd fa3, 304(a5)<br>    |
| 148|[0x80006540]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf60647476d4cb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000162c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001630]:csrrs a7, fflags, zero<br> [0x80001634]:fsd fa3, 320(a5)<br>    |
| 149|[0x80006550]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7b05f6eabb69f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000164c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001650]:csrrs a7, fflags, zero<br> [0x80001654]:fsd fa3, 336(a5)<br>    |
| 150|[0x80006560]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9099330bb750b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000166c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001670]:csrrs a7, fflags, zero<br> [0x80001674]:fsd fa3, 352(a5)<br>    |
| 151|[0x80006570]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26e34e07a9172 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000168c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001690]:csrrs a7, fflags, zero<br> [0x80001694]:fsd fa3, 368(a5)<br>    |
| 152|[0x80006580]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3671fd3520218 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800016ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016b0]:csrrs a7, fflags, zero<br> [0x800016b4]:fsd fa3, 384(a5)<br>    |
| 153|[0x80006590]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x451eb54c10b8b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800016cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016d0]:csrrs a7, fflags, zero<br> [0x800016d4]:fsd fa3, 400(a5)<br>    |
| 154|[0x800065a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xb56678fedc57f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800016ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016f0]:csrrs a7, fflags, zero<br> [0x800016f4]:fsd fa3, 416(a5)<br>    |
| 155|[0x800065b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5c762dc4bc5d6 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000170c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001710]:csrrs a7, fflags, zero<br> [0x80001714]:fsd fa3, 432(a5)<br>    |
| 156|[0x800065c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1182656689f60 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000172c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001730]:csrrs a7, fflags, zero<br> [0x80001734]:fsd fa3, 448(a5)<br>    |
| 157|[0x800065d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ed9e7beff05 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000174c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001750]:csrrs a7, fflags, zero<br> [0x80001754]:fsd fa3, 464(a5)<br>    |
| 158|[0x800065e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x25d1c4e896d66 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000176c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001770]:csrrs a7, fflags, zero<br> [0x80001774]:fsd fa3, 480(a5)<br>    |
| 159|[0x800065f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x728eb744bb2ef and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000178c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001790]:csrrs a7, fflags, zero<br> [0x80001794]:fsd fa3, 496(a5)<br>    |
| 160|[0x80006600]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6535160e0062c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800017ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017b0]:csrrs a7, fflags, zero<br> [0x800017b4]:fsd fa3, 512(a5)<br>    |
| 161|[0x80006610]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2bbdffdaf66c3 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800017cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017d0]:csrrs a7, fflags, zero<br> [0x800017d4]:fsd fa3, 528(a5)<br>    |
| 162|[0x80006620]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9c16a190f4e87 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800017ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017f0]:csrrs a7, fflags, zero<br> [0x800017f4]:fsd fa3, 544(a5)<br>    |
| 163|[0x80006630]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa1bf5c83faf60 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000180c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001810]:csrrs a7, fflags, zero<br> [0x80001814]:fsd fa3, 560(a5)<br>    |
| 164|[0x80006640]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x54845b368b76f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000182c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001830]:csrrs a7, fflags, zero<br> [0x80001834]:fsd fa3, 576(a5)<br>    |
| 165|[0x80006650]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x96d3944ae92c5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000184c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001850]:csrrs a7, fflags, zero<br> [0x80001854]:fsd fa3, 592(a5)<br>    |
| 166|[0x80006660]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc380d05f3f55f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000186c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001870]:csrrs a7, fflags, zero<br> [0x80001874]:fsd fa3, 608(a5)<br>    |
| 167|[0x80006670]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xdfc83569216bf and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000188c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001890]:csrrs a7, fflags, zero<br> [0x80001894]:fsd fa3, 624(a5)<br>    |
| 168|[0x80006680]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7685c15158af8 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800018ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018b0]:csrrs a7, fflags, zero<br> [0x800018b4]:fsd fa3, 640(a5)<br>    |
| 169|[0x80006690]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf1bca90426463 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800018cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018d0]:csrrs a7, fflags, zero<br> [0x800018d4]:fsd fa3, 656(a5)<br>    |
| 170|[0x800066a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0ae020c2f2ab and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800018ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018f0]:csrrs a7, fflags, zero<br> [0x800018f4]:fsd fa3, 672(a5)<br>    |
| 171|[0x800066b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x42a2ac1575123 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001910]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001914]:csrrs a7, fflags, zero<br> [0x80001918]:fsd fa3, 688(a5)<br>    |
| 172|[0x800066c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf21e6dcb25437 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001930]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001934]:csrrs a7, fflags, zero<br> [0x80001938]:fsd fa3, 704(a5)<br>    |
| 173|[0x800066d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39beb50761e3d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001950]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001954]:csrrs a7, fflags, zero<br> [0x80001958]:fsd fa3, 720(a5)<br>    |
| 174|[0x800066e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x516656a60de77 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001970]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:fsd fa3, 736(a5)<br>    |
| 175|[0x800066f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x962eb496df1c1 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001990]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001994]:csrrs a7, fflags, zero<br> [0x80001998]:fsd fa3, 752(a5)<br>    |
| 176|[0x80006700]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd57951bee0a17 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800019b0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019b4]:csrrs a7, fflags, zero<br> [0x800019b8]:fsd fa3, 768(a5)<br>    |
| 177|[0x80006710]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfe1581ecd07ea and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800019d0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019d4]:csrrs a7, fflags, zero<br> [0x800019d8]:fsd fa3, 784(a5)<br>    |
| 178|[0x80006720]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x520baea9095e5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800019f0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019f4]:csrrs a7, fflags, zero<br> [0x800019f8]:fsd fa3, 800(a5)<br>    |
| 179|[0x80006730]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xcd606a3f0f54d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001a10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a14]:csrrs a7, fflags, zero<br> [0x80001a18]:fsd fa3, 816(a5)<br>    |
| 180|[0x80006740]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x28cdc8d19d0dc and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001a30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a34]:csrrs a7, fflags, zero<br> [0x80001a38]:fsd fa3, 832(a5)<br>    |
| 181|[0x80006750]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe64794dad7d48 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001a50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a54]:csrrs a7, fflags, zero<br> [0x80001a58]:fsd fa3, 848(a5)<br>    |
| 182|[0x80006760]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2dfa6bb4d11d1 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001a70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a74]:csrrs a7, fflags, zero<br> [0x80001a78]:fsd fa3, 864(a5)<br>    |
| 183|[0x80006770]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xca428c2b7c81f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001a90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a94]:csrrs a7, fflags, zero<br> [0x80001a98]:fsd fa3, 880(a5)<br>    |
| 184|[0x80006780]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb2efd30dc5db9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001ab0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ab4]:csrrs a7, fflags, zero<br> [0x80001ab8]:fsd fa3, 896(a5)<br>    |
| 185|[0x80006790]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9f8dcc4f1275c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001ad0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ad4]:csrrs a7, fflags, zero<br> [0x80001ad8]:fsd fa3, 912(a5)<br>    |
| 186|[0x800067a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1a3fd4c2ca047 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001af0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001af4]:csrrs a7, fflags, zero<br> [0x80001af8]:fsd fa3, 928(a5)<br>    |
| 187|[0x800067b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x691ae7e1929e8 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001b10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b14]:csrrs a7, fflags, zero<br> [0x80001b18]:fsd fa3, 944(a5)<br>    |
| 188|[0x800067c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x90afe96b3f2ad and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001b30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b34]:csrrs a7, fflags, zero<br> [0x80001b38]:fsd fa3, 960(a5)<br>    |
| 189|[0x800067d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001b50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b54]:csrrs a7, fflags, zero<br> [0x80001b58]:fsd fa3, 976(a5)<br>    |
| 190|[0x800067e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd89e42f5143f8 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001b70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b74]:csrrs a7, fflags, zero<br> [0x80001b78]:fsd fa3, 992(a5)<br>    |
| 191|[0x800067f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001b90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b94]:csrrs a7, fflags, zero<br> [0x80001b98]:fsd fa3, 1008(a5)<br>   |
| 192|[0x80006800]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xaf56f24522c9c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001bb0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bb4]:csrrs a7, fflags, zero<br> [0x80001bb8]:fsd fa3, 1024(a5)<br>   |
| 193|[0x80006810]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001bd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bd4]:csrrs a7, fflags, zero<br> [0x80001bd8]:fsd fa3, 1040(a5)<br>   |
| 194|[0x80006820]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc0e80bc9923b7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001bf0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bf4]:csrrs a7, fflags, zero<br> [0x80001bf8]:fsd fa3, 1056(a5)<br>   |
| 195|[0x80006830]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001c10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c14]:csrrs a7, fflags, zero<br> [0x80001c18]:fsd fa3, 1072(a5)<br>   |
| 196|[0x80006840]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6febab5b81b47 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001c30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c34]:csrrs a7, fflags, zero<br> [0x80001c38]:fsd fa3, 1088(a5)<br>   |
| 197|[0x80006850]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001c50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c54]:csrrs a7, fflags, zero<br> [0x80001c58]:fsd fa3, 1104(a5)<br>   |
| 198|[0x80006860]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5035a8d0a4c2b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001c70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c74]:csrrs a7, fflags, zero<br> [0x80001c78]:fsd fa3, 1120(a5)<br>   |
| 199|[0x80006870]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001c90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c94]:csrrs a7, fflags, zero<br> [0x80001c98]:fsd fa3, 1136(a5)<br>   |
| 200|[0x80006880]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7e6c0d0870e13 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001cb0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cb4]:csrrs a7, fflags, zero<br> [0x80001cb8]:fsd fa3, 1152(a5)<br>   |
| 201|[0x80006890]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001cd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cd4]:csrrs a7, fflags, zero<br> [0x80001cd8]:fsd fa3, 1168(a5)<br>   |
| 202|[0x800068a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x294c231789029 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001cf0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cf4]:csrrs a7, fflags, zero<br> [0x80001cf8]:fsd fa3, 1184(a5)<br>   |
| 203|[0x800068b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001d10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d14]:csrrs a7, fflags, zero<br> [0x80001d18]:fsd fa3, 1200(a5)<br>   |
| 204|[0x800068c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8a2386a894fd9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001d30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d34]:csrrs a7, fflags, zero<br> [0x80001d38]:fsd fa3, 1216(a5)<br>   |
| 205|[0x800068d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001d50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d54]:csrrs a7, fflags, zero<br> [0x80001d58]:fsd fa3, 1232(a5)<br>   |
| 206|[0x800068e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc7ab340bba999 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001d70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d74]:csrrs a7, fflags, zero<br> [0x80001d78]:fsd fa3, 1248(a5)<br>   |
| 207|[0x800068f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001d90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d94]:csrrs a7, fflags, zero<br> [0x80001d98]:fsd fa3, 1264(a5)<br>   |
| 208|[0x80006900]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x34d4bf2305d15 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001db0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001db4]:csrrs a7, fflags, zero<br> [0x80001db8]:fsd fa3, 1280(a5)<br>   |
| 209|[0x80006910]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001dd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001dd4]:csrrs a7, fflags, zero<br> [0x80001dd8]:fsd fa3, 1296(a5)<br>   |
| 210|[0x80006920]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14a00d8d01424 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001df0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001df4]:csrrs a7, fflags, zero<br> [0x80001df8]:fsd fa3, 1312(a5)<br>   |
| 211|[0x80006930]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001e10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e14]:csrrs a7, fflags, zero<br> [0x80001e18]:fsd fa3, 1328(a5)<br>   |
| 212|[0x80006940]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x184a2cd54bc8b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001e30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e34]:csrrs a7, fflags, zero<br> [0x80001e38]:fsd fa3, 1344(a5)<br>   |
| 213|[0x80006950]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001e50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e54]:csrrs a7, fflags, zero<br> [0x80001e58]:fsd fa3, 1360(a5)<br>   |
| 214|[0x80006960]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1a3fb352a13ab and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001e70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e74]:csrrs a7, fflags, zero<br> [0x80001e78]:fsd fa3, 1376(a5)<br>   |
| 215|[0x80006970]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001e90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e94]:csrrs a7, fflags, zero<br> [0x80001e98]:fsd fa3, 1392(a5)<br>   |
| 216|[0x80006980]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdd9c651f50797 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001eb0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001eb4]:csrrs a7, fflags, zero<br> [0x80001eb8]:fsd fa3, 1408(a5)<br>   |
| 217|[0x80006990]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001ed0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ed4]:csrrs a7, fflags, zero<br> [0x80001ed8]:fsd fa3, 1424(a5)<br>   |
| 218|[0x800069a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x47bc64f002dc1 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001ef0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ef4]:csrrs a7, fflags, zero<br> [0x80001ef8]:fsd fa3, 1440(a5)<br>   |
| 219|[0x800069b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001f10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001f14]:csrrs a7, fflags, zero<br> [0x80001f18]:fsd fa3, 1456(a5)<br>   |
| 220|[0x800069c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xcab8890bacf6d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001f30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001f34]:csrrs a7, fflags, zero<br> [0x80001f38]:fsd fa3, 1472(a5)<br>   |
| 221|[0x800069d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001f50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001f54]:csrrs a7, fflags, zero<br> [0x80001f58]:fsd fa3, 1488(a5)<br>   |
| 222|[0x800069e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xef616f891ea0b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001f70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001f74]:csrrs a7, fflags, zero<br> [0x80001f78]:fsd fa3, 1504(a5)<br>   |
| 223|[0x800069f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001f90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001f94]:csrrs a7, fflags, zero<br> [0x80001f98]:fsd fa3, 1520(a5)<br>   |
| 224|[0x80006a00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2290c48e30657 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001fb0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001fb4]:csrrs a7, fflags, zero<br> [0x80001fb8]:fsd fa3, 1536(a5)<br>   |
| 225|[0x80006a10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001fd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001fd4]:csrrs a7, fflags, zero<br> [0x80001fd8]:fsd fa3, 1552(a5)<br>   |
| 226|[0x80006a20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbdae67c407ef2 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80001ff0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ff4]:csrrs a7, fflags, zero<br> [0x80001ff8]:fsd fa3, 1568(a5)<br>   |
| 227|[0x80006a30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002010]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002014]:csrrs a7, fflags, zero<br> [0x80002018]:fsd fa3, 1584(a5)<br>   |
| 228|[0x80006a40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf3878bbaf3893 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002030]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002034]:csrrs a7, fflags, zero<br> [0x80002038]:fsd fa3, 1600(a5)<br>   |
| 229|[0x80006a50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002050]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002054]:csrrs a7, fflags, zero<br> [0x80002058]:fsd fa3, 1616(a5)<br>   |
| 230|[0x80006a60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf96c79e9fdfa1 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002070]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002074]:csrrs a7, fflags, zero<br> [0x80002078]:fsd fa3, 1632(a5)<br>   |
| 231|[0x80006a70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002090]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002094]:csrrs a7, fflags, zero<br> [0x80002098]:fsd fa3, 1648(a5)<br>   |
| 232|[0x80006a80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x56182d28045ae and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800020b0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800020b4]:csrrs a7, fflags, zero<br> [0x800020b8]:fsd fa3, 1664(a5)<br>   |
| 233|[0x80006a90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800020d0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800020d4]:csrrs a7, fflags, zero<br> [0x800020d8]:fsd fa3, 1680(a5)<br>   |
| 234|[0x80006aa0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x986532dae9957 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800020f0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800020f4]:csrrs a7, fflags, zero<br> [0x800020f8]:fsd fa3, 1696(a5)<br>   |
| 235|[0x80006ab0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002110]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002114]:csrrs a7, fflags, zero<br> [0x80002118]:fsd fa3, 1712(a5)<br>   |
| 236|[0x80006ac0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xcc1e517e0a9ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002130]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002134]:csrrs a7, fflags, zero<br> [0x80002138]:fsd fa3, 1728(a5)<br>   |
| 237|[0x80006ad0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002150]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002154]:csrrs a7, fflags, zero<br> [0x80002158]:fsd fa3, 1744(a5)<br>   |
| 238|[0x80006ae0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c2c9b7ac820e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002170]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002174]:csrrs a7, fflags, zero<br> [0x80002178]:fsd fa3, 1760(a5)<br>   |
| 239|[0x80006af0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002190]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002194]:csrrs a7, fflags, zero<br> [0x80002198]:fsd fa3, 1776(a5)<br>   |
| 240|[0x80006b00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb09e7215ddb9 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800021b0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800021b4]:csrrs a7, fflags, zero<br> [0x800021b8]:fsd fa3, 1792(a5)<br>   |
| 241|[0x80006b10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800021d0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800021d4]:csrrs a7, fflags, zero<br> [0x800021d8]:fsd fa3, 1808(a5)<br>   |
| 242|[0x80006b20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xeee707a35c8c3 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800021f0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800021f4]:csrrs a7, fflags, zero<br> [0x800021f8]:fsd fa3, 1824(a5)<br>   |
| 243|[0x80006b30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002210]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002214]:csrrs a7, fflags, zero<br> [0x80002218]:fsd fa3, 1840(a5)<br>   |
| 244|[0x80006b40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x38c62d68fcb25 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002230]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002234]:csrrs a7, fflags, zero<br> [0x80002238]:fsd fa3, 1856(a5)<br>   |
| 245|[0x80006b50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002250]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002254]:csrrs a7, fflags, zero<br> [0x80002258]:fsd fa3, 1872(a5)<br>   |
| 246|[0x80006b60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9c78deb52422f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002270]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002274]:csrrs a7, fflags, zero<br> [0x80002278]:fsd fa3, 1888(a5)<br>   |
| 247|[0x80006b70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002290]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002294]:csrrs a7, fflags, zero<br> [0x80002298]:fsd fa3, 1904(a5)<br>   |
| 248|[0x80006b80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5e33245521f37 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800022b0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800022b4]:csrrs a7, fflags, zero<br> [0x800022b8]:fsd fa3, 1920(a5)<br>   |
| 249|[0x80006b90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800022d0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800022d4]:csrrs a7, fflags, zero<br> [0x800022d8]:fsd fa3, 1936(a5)<br>   |
| 250|[0x80006ba0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75ac81c4b8321 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800022f0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800022f4]:csrrs a7, fflags, zero<br> [0x800022f8]:fsd fa3, 1952(a5)<br>   |
| 251|[0x80006bb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002310]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002314]:csrrs a7, fflags, zero<br> [0x80002318]:fsd fa3, 1968(a5)<br>   |
| 252|[0x80006bc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcde8b20967d0b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002330]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002334]:csrrs a7, fflags, zero<br> [0x80002338]:fsd fa3, 1984(a5)<br>   |
| 253|[0x80006bd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002350]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002354]:csrrs a7, fflags, zero<br> [0x80002358]:fsd fa3, 2000(a5)<br>   |
| 254|[0x80006be0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf72fa86d218ab and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002370]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002374]:csrrs a7, fflags, zero<br> [0x80002378]:fsd fa3, 2016(a5)<br>   |
| 255|[0x80006bf0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x80002398]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x8000239c]:csrrs a7, fflags, zero<br> [0x800023a0]:fsd fa3, 0(a5)<br>      |
| 256|[0x80006c00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0084bbfe5e825 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800023bc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800023c0]:csrrs a7, fflags, zero<br> [0x800023c4]:fsd fa3, 16(a5)<br>     |
| 257|[0x80006c10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800023dc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800023e0]:csrrs a7, fflags, zero<br> [0x800023e4]:fsd fa3, 32(a5)<br>     |
| 258|[0x80006c20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x82f8c4c611b4f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800023fc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002400]:csrrs a7, fflags, zero<br> [0x80002404]:fsd fa3, 48(a5)<br>     |
| 259|[0x80006c30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000241c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002420]:csrrs a7, fflags, zero<br> [0x80002424]:fsd fa3, 64(a5)<br>     |
| 260|[0x80006c40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x026650c8e9dc3 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000243c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002440]:csrrs a7, fflags, zero<br> [0x80002444]:fsd fa3, 80(a5)<br>     |
| 261|[0x80006c50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000245c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002460]:csrrs a7, fflags, zero<br> [0x80002464]:fsd fa3, 96(a5)<br>     |
| 262|[0x80006c60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2ab10cf910f7c and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000247c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002480]:csrrs a7, fflags, zero<br> [0x80002484]:fsd fa3, 112(a5)<br>    |
| 263|[0x80006c70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000249c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800024a0]:csrrs a7, fflags, zero<br> [0x800024a4]:fsd fa3, 128(a5)<br>    |
| 264|[0x80006c80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x36979c7be0deb and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800024bc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800024c0]:csrrs a7, fflags, zero<br> [0x800024c4]:fsd fa3, 144(a5)<br>    |
| 265|[0x80006c90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800024dc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800024e0]:csrrs a7, fflags, zero<br> [0x800024e4]:fsd fa3, 160(a5)<br>    |
| 266|[0x80006ca0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9ea70df588b3b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800024fc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002500]:csrrs a7, fflags, zero<br> [0x80002504]:fsd fa3, 176(a5)<br>    |
| 267|[0x80006cb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000251c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002520]:csrrs a7, fflags, zero<br> [0x80002524]:fsd fa3, 192(a5)<br>    |
| 268|[0x80006cc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x092178fb945a5 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000253c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002540]:csrrs a7, fflags, zero<br> [0x80002544]:fsd fa3, 208(a5)<br>    |
| 269|[0x80006cd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000255c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002560]:csrrs a7, fflags, zero<br> [0x80002564]:fsd fa3, 224(a5)<br>    |
| 270|[0x80006ce0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x84129978f9c19 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000257c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002580]:csrrs a7, fflags, zero<br> [0x80002584]:fsd fa3, 240(a5)<br>    |
| 271|[0x80006cf0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000259c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800025a0]:csrrs a7, fflags, zero<br> [0x800025a4]:fsd fa3, 256(a5)<br>    |
| 272|[0x80006d00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x94497c97803a8 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800025bc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800025c0]:csrrs a7, fflags, zero<br> [0x800025c4]:fsd fa3, 272(a5)<br>    |
| 273|[0x80006d10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x354ba34578ba7 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800025dc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800025e0]:csrrs a7, fflags, zero<br> [0x800025e4]:fsd fa3, 288(a5)<br>    |
| 274|[0x80006d20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x238a22371e9ff and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x800025fc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002600]:csrrs a7, fflags, zero<br> [0x80002604]:fsd fa3, 304(a5)<br>    |
| 275|[0x80006d30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2c9bb6d2a0534 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000261c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002620]:csrrs a7, fflags, zero<br> [0x80002624]:fsd fa3, 320(a5)<br>    |
| 276|[0x80006d40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa9aa2b6025f07 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000263c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002640]:csrrs a7, fflags, zero<br> [0x80002644]:fsd fa3, 336(a5)<br>    |
| 277|[0x80006d50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x47c0965bde424 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000265c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002660]:csrrs a7, fflags, zero<br> [0x80002664]:fsd fa3, 352(a5)<br>    |
| 278|[0x80006d60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6cba246939a56 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008000 and fs3 == 0 and fe3 == 0x463 and fm3 == 0x7ffff00000000 and rm_val == 0  #nosat<br>                                                                                                                                                         |[0x8000267c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002680]:csrrs a7, fflags, zero<br> [0x80002684]:fsd fa3, 368(a5)<br>    |
