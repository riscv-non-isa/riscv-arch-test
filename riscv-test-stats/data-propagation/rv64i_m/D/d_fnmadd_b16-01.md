
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001dc0')]      |
| SIG_REGION                | [('0x80004510', '0x80005210', '416 dwords')]      |
| COV_LABELS                | fnmadd_b16      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fnmadd_b16-01.S/ref.S    |
| Total Number of coverpoints| 348     |
| Total Coverpoints Hit     | 341      |
| Total Signature Updates   | 416      |
| STAT1                     | 208      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 208     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fnmadd.d', 'rs1 : f18', 'rs2 : f29', 'rs3 : f26', 'rd : f26', 'rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe97d52f73d2ed and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe549a4f656ebe and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xea3051c4d8ded and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003c0]:fnmadd.d fs10, fs2, ft9, fs10, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsd fs10, 0(a5)
Current Store : [0x800003cc] : sd a7, 8(a5) -- Store: [0x80004518]:0x0000000000000001




Last Coverpoint : ['rs1 : f16', 'rs2 : f16', 'rs3 : f16', 'rd : f24', 'rs1 == rs2 == rs3 != rd']
Last Code Sequence : 
	-[0x800003e0]:fnmadd.d fs8, fa6, fa6, fa6, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsd fs8, 16(a5)
Current Store : [0x800003ec] : sd a7, 24(a5) -- Store: [0x80004528]:0x0000000000000001




Last Coverpoint : ['rs1 : f8', 'rs2 : f2', 'rs3 : f8', 'rd : f21', 'rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2']
Last Code Sequence : 
	-[0x80000400]:fnmadd.d fs5, fs0, ft2, fs0, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fs5, 32(a5)
Current Store : [0x8000040c] : sd a7, 40(a5) -- Store: [0x80004538]:0x0000000000000001




Last Coverpoint : ['rs1 : f14', 'rs2 : f25', 'rs3 : f14', 'rd : f14', 'rs1 == rd == rs3 != rs2']
Last Code Sequence : 
	-[0x80000420]:fnmadd.d fa4, fa4, fs9, fa4, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsd fa4, 48(a5)
Current Store : [0x8000042c] : sd a7, 56(a5) -- Store: [0x80004548]:0x0000000000000001




Last Coverpoint : ['rs1 : f1', 'rs2 : f0', 'rs3 : f23', 'rd : f19', 'rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x4038aec1813f9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7c017850ccf9e and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x94a9ed2abf1d5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000440]:fnmadd.d fs3, ft1, ft0, fs7, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:fsd fs3, 64(a5)
Current Store : [0x8000044c] : sd a7, 72(a5) -- Store: [0x80004558]:0x0000000000000001




Last Coverpoint : ['rs1 : f9', 'rs2 : f15', 'rs3 : f15', 'rd : f15', 'rd == rs2 == rs3 != rs1']
Last Code Sequence : 
	-[0x80000460]:fnmadd.d fa5, fs1, fa5, fa5, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd fa5, 80(a5)
Current Store : [0x8000046c] : sd a7, 88(a5) -- Store: [0x80004568]:0x0000000000000001




Last Coverpoint : ['rs1 : f12', 'rs2 : f12', 'rs3 : f19', 'rd : f12', 'rs1 == rs2 == rd != rs3']
Last Code Sequence : 
	-[0x80000480]:fnmadd.d fa2, fa2, fa2, fs3, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd fa2, 96(a5)
Current Store : [0x8000048c] : sd a7, 104(a5) -- Store: [0x80004578]:0x0000000000000001




Last Coverpoint : ['rs1 : f7', 'rs2 : f4', 'rs3 : f2', 'rd : f4', 'rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x67fb4908ceaaf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x65eaa9e302952 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xa149f8995d019 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a0]:fnmadd.d ft4, ft7, ft4, ft2, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:fsd ft4, 112(a5)
Current Store : [0x800004ac] : sd a7, 120(a5) -- Store: [0x80004588]:0x0000000000000001




Last Coverpoint : ['rs1 : f21', 'rs2 : f21', 'rs3 : f24', 'rd : f13', 'rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3']
Last Code Sequence : 
	-[0x800004c0]:fnmadd.d fa3, fs5, fs5, fs8, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd fa3, 128(a5)
Current Store : [0x800004cc] : sd a7, 136(a5) -- Store: [0x80004598]:0x0000000000000001




Last Coverpoint : ['rs1 : f17', 'rs2 : f17', 'rs3 : f17', 'rd : f17', 'rs1 == rs2 == rs3 == rd']
Last Code Sequence : 
	-[0x800004e0]:fnmadd.d fa7, fa7, fa7, fa7, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:fsd fa7, 144(a5)
Current Store : [0x800004ec] : sd a7, 152(a5) -- Store: [0x800045a8]:0x0000000000000001




Last Coverpoint : ['rs1 : f15', 'rs2 : f20', 'rs3 : f20', 'rd : f8', 'rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1']
Last Code Sequence : 
	-[0x80000500]:fnmadd.d fs0, fa5, fs4, fs4, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:fsd fs0, 160(a5)
Current Store : [0x8000050c] : sd a7, 168(a5) -- Store: [0x800045b8]:0x0000000000000001




Last Coverpoint : ['rs1 : f3', 'rs2 : f13', 'rs3 : f30', 'rd : f3', 'rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x308800ab9a08f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xb9343c1265853 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x76ab2f33695e2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000520]:fnmadd.d ft3, ft3, fa3, ft10, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd ft3, 176(a5)
Current Store : [0x8000052c] : sd a7, 184(a5) -- Store: [0x800045c8]:0x0000000000000001




Last Coverpoint : ['rs1 : f19', 'rs2 : f27', 'rs3 : f4', 'rd : f22', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x41176abd4258d and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xaeb9622c6891f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x74099544c727f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000540]:fnmadd.d fs6, fs3, fs11, ft4, dyn
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:fsd fs6, 192(a5)
Current Store : [0x8000054c] : sd a7, 200(a5) -- Store: [0x800045d8]:0x0000000000000001




Last Coverpoint : ['rs1 : f10', 'rs2 : f18', 'rs3 : f7', 'rd : f30', 'fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x4dd13d82cf047 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xafe78faaa8367 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xffe3517f7bf18 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fnmadd.d ft10, fa0, fs2, ft7, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd ft10, 208(a5)
Current Store : [0x8000056c] : sd a7, 216(a5) -- Store: [0x800045e8]:0x0000000000000001




Last Coverpoint : ['rs1 : f2', 'rs2 : f7', 'rs3 : f9', 'rd : f18', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6f674621915da and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x03a0ff71fb0c2 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x652550f234063 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000580]:fnmadd.d fs2, ft2, ft7, fs1, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd fs2, 224(a5)
Current Store : [0x8000058c] : sd a7, 232(a5) -- Store: [0x800045f8]:0x0000000000000001




Last Coverpoint : ['rs1 : f31', 'rs2 : f19', 'rs3 : f10', 'rd : f0', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x3ed0f2697260f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb79b2b1934a01 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x049f916bf2560 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fnmadd.d ft0, ft11, fs3, fa0, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsd ft0, 240(a5)
Current Store : [0x800005ac] : sd a7, 248(a5) -- Store: [0x80004608]:0x0000000000000001




Last Coverpoint : ['rs1 : f23', 'rs2 : f6', 'rs3 : f25', 'rd : f5', 'fs1 == 0 and fe1 == 0x5f6 and fm1 == 0xb3756a76d237f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xb8c3b0a05a317 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x027fcc8b591c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fnmadd.d ft5, fs7, ft6, fs9, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:fsd ft5, 256(a5)
Current Store : [0x800005cc] : sd a7, 264(a5) -- Store: [0x80004618]:0x0000000000000001




Last Coverpoint : ['rs1 : f6', 'rs2 : f26', 'rs3 : f31', 'rd : f25', 'fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xdd44967e4f77f and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xbb5518eec7ff7 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xf4c7e1737c8fc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fnmadd.d fs9, ft6, fs10, ft11, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd fs9, 272(a5)
Current Store : [0x800005ec] : sd a7, 280(a5) -- Store: [0x80004628]:0x0000000000000001




Last Coverpoint : ['rs1 : f13', 'rs2 : f14', 'rs3 : f0', 'rd : f23', 'fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x1ea6995f1c073 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xf7e9d38031687 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x3f4c03dfcba0c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000600]:fnmadd.d fs7, fa3, fa4, ft0, dyn
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:fsd fs7, 288(a5)
Current Store : [0x8000060c] : sd a7, 296(a5) -- Store: [0x80004638]:0x0000000000000001




Last Coverpoint : ['rs1 : f22', 'rs2 : f8', 'rs3 : f21', 'rd : f10', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0bb792159b051 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5d1ae1e1d28a7 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x565b8c4137e0d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000620]:fnmadd.d fa0, fs6, fs0, fs5, dyn
	-[0x80000624]:csrrs a7, fflags, zero
	-[0x80000628]:fsd fa0, 304(a5)
Current Store : [0x8000062c] : sd a7, 312(a5) -- Store: [0x80004648]:0x0000000000000001




Last Coverpoint : ['rs1 : f29', 'rs2 : f11', 'rs3 : f1', 'rd : f31', 'fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x98cb938bd0d9b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd64f454066002 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x5618eb3f6a8f3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fnmadd.d ft11, ft9, fa1, ft1, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd ft11, 320(a5)
Current Store : [0x8000064c] : sd a7, 328(a5) -- Store: [0x80004658]:0x0000000000000001




Last Coverpoint : ['rs1 : f26', 'rs2 : f10', 'rs3 : f3', 'rd : f29', 'fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x1bebe7b21cd5f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x011af8e2b2a8d and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x2e5825f882ec1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000660]:fnmadd.d ft9, fs10, fa0, ft3, dyn
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:fsd ft9, 336(a5)
Current Store : [0x8000066c] : sd a7, 344(a5) -- Store: [0x80004668]:0x0000000000000001




Last Coverpoint : ['rs1 : f25', 'rs2 : f31', 'rs3 : f5', 'rd : f27', 'fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xeea576108affb and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xed04e711db0e1 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x733a2576cd48d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000680]:fnmadd.d fs11, fs9, ft11, ft5, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsd fs11, 352(a5)
Current Store : [0x8000068c] : sd a7, 360(a5) -- Store: [0x80004678]:0x0000000000000001




Last Coverpoint : ['rs1 : f24', 'rs2 : f3', 'rs3 : f12', 'rd : f6', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x4c791addc9912 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x97b02f6ed223f and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xf6a95c1bb8ef7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fnmadd.d ft6, fs8, ft3, fa2, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd ft6, 368(a5)
Current Store : [0x800006ac] : sd a7, 376(a5) -- Store: [0x80004688]:0x0000000000000001




Last Coverpoint : ['rs1 : f27', 'rs2 : f22', 'rs3 : f29', 'rd : f16', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x56eb5abeef1c8 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x78842cac09a97 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xf12b1fbe2cab1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006c0]:fnmadd.d fa6, fs11, fs6, ft9, dyn
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:fsd fa6, 384(a5)
Current Store : [0x800006cc] : sd a7, 392(a5) -- Store: [0x80004698]:0x0000000000000001




Last Coverpoint : ['rs1 : f20', 'rs2 : f1', 'rs3 : f18', 'rd : f2', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x670e7d1c3c471 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x62964c066279b and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x1d2f4ea5729a9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e0]:fnmadd.d ft2, fs4, ft1, fs2, dyn
	-[0x800006e4]:csrrs a7, fflags, zero
	-[0x800006e8]:fsd ft2, 400(a5)
Current Store : [0x800006ec] : sd a7, 408(a5) -- Store: [0x800046a8]:0x0000000000000001




Last Coverpoint : ['rs1 : f5', 'rs2 : f9', 'rs3 : f6', 'rd : f20', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9889fc2d44e5e and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x21d9040c119bf and fs3 == 1 and fe3 == 0x7ef and fm3 == 0xff9140e19d949 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000700]:fnmadd.d fs4, ft5, fs1, ft6, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:fsd fs4, 416(a5)
Current Store : [0x8000070c] : sd a7, 424(a5) -- Store: [0x800046b8]:0x0000000000000001




Last Coverpoint : ['rs1 : f0', 'rs2 : f30', 'rs3 : f22', 'rd : f11', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd486b68b34be3 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x3cc532c905347 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x7a850c645ac99 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000720]:fnmadd.d fa1, ft0, ft10, fs6, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd fa1, 432(a5)
Current Store : [0x8000072c] : sd a7, 440(a5) -- Store: [0x800046c8]:0x0000000000000001




Last Coverpoint : ['rs1 : f30', 'rs2 : f28', 'rs3 : f13', 'rd : f9', 'fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x06933c1e52e8b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdff0d9faf6b37 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x9d702d38e63e4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000740]:fnmadd.d fs1, ft10, ft8, fa3, dyn
	-[0x80000744]:csrrs a7, fflags, zero
	-[0x80000748]:fsd fs1, 448(a5)
Current Store : [0x8000074c] : sd a7, 456(a5) -- Store: [0x800046d8]:0x0000000000000001




Last Coverpoint : ['rs1 : f4', 'rs2 : f24', 'rs3 : f28', 'rd : f1', 'fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x7a1eff83f19af and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xbb68e4e714e57 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x46b0821802661 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000760]:fnmadd.d ft1, ft4, fs8, ft8, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsd ft1, 464(a5)
Current Store : [0x8000076c] : sd a7, 472(a5) -- Store: [0x800046e8]:0x0000000000000001




Last Coverpoint : ['rs1 : f28', 'rs2 : f23', 'rs3 : f11', 'rd : f7', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd17c6c95aefed and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xa5ac383168515 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x24455c7728a26 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000780]:fnmadd.d ft7, ft8, fs7, fa1, dyn
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:fsd ft7, 480(a5)
Current Store : [0x8000078c] : sd a7, 488(a5) -- Store: [0x800046f8]:0x0000000000000001




Last Coverpoint : ['rs1 : f11', 'rs2 : f5', 'rs3 : f27', 'rd : f28', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0xf849379fb9b6b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xfa550bd9aed1a and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0xcb0130986796b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007a0]:fnmadd.d ft8, fa1, ft5, fs11, dyn
	-[0x800007a4]:csrrs a7, fflags, zero
	-[0x800007a8]:fsd ft8, 496(a5)
Current Store : [0x800007ac] : sd a7, 504(a5) -- Store: [0x80004708]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x31f03f05cb87a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x2d0e69e0aad85 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x14c78561793cb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:fsd fa3, 512(a5)
Current Store : [0x800007cc] : sd a7, 520(a5) -- Store: [0x80004718]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x3d2d3af7c48ae and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x447163c5b6799 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x7157ca9ebcb4a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007e4]:csrrs a7, fflags, zero
	-[0x800007e8]:fsd fa3, 528(a5)
Current Store : [0x800007ec] : sd a7, 536(a5) -- Store: [0x80004728]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfea4d203770af and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x91b7d2621f217 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x273d98180e11c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000800]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa3, 544(a5)
Current Store : [0x8000080c] : sd a7, 552(a5) -- Store: [0x80004738]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x894eb52d7a53a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x3883363d45ce5 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x4ec9f86f5cd83 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000820]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000824]:csrrs a7, fflags, zero
	-[0x80000828]:fsd fa3, 560(a5)
Current Store : [0x8000082c] : sd a7, 568(a5) -- Store: [0x80004748]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0bc55b64ea25c and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb0d4dc0773572 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x2ee34f1961391 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000840]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsd fa3, 576(a5)
Current Store : [0x8000084c] : sd a7, 584(a5) -- Store: [0x80004758]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xb8178fb8c7f25 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x8ebf551167019 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x844270f80e92d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000860]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000864]:csrrs a7, fflags, zero
	-[0x80000868]:fsd fa3, 592(a5)
Current Store : [0x8000086c] : sd a7, 600(a5) -- Store: [0x80004768]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0xf959d372fdf5f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x26ffb22d6ee1f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x0d733a9338e84 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000880]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000884]:csrrs a7, fflags, zero
	-[0x80000888]:fsd fa3, 608(a5)
Current Store : [0x8000088c] : sd a7, 616(a5) -- Store: [0x80004778]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x588877f85511b and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x7dbc6852f0d29 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xc61c354c7f4da and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008a4]:csrrs a7, fflags, zero
	-[0x800008a8]:fsd fa3, 624(a5)
Current Store : [0x800008ac] : sd a7, 632(a5) -- Store: [0x80004788]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xf8cb3cb5140d7 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xebb37bba609a7 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x866521dedcf77 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008c4]:csrrs a7, fflags, zero
	-[0x800008c8]:fsd fa3, 640(a5)
Current Store : [0x800008cc] : sd a7, 648(a5) -- Store: [0x80004798]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xae7cb22e21faf and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x002e328b68fcd and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x21358514700b7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa3, 656(a5)
Current Store : [0x800008ec] : sd a7, 664(a5) -- Store: [0x800047a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x2339bac8ac55f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xa27ff454d2247 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x29c95c6687c75 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000900]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000904]:csrrs a7, fflags, zero
	-[0x80000908]:fsd fa3, 672(a5)
Current Store : [0x8000090c] : sd a7, 680(a5) -- Store: [0x800047b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x43f16419df5f9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xda33f11fe6a09 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x488b8623cffd3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000920]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:fsd fa3, 688(a5)
Current Store : [0x8000092c] : sd a7, 696(a5) -- Store: [0x800047c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x237c293c04d53 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x468e8279a5120 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xabcf67ab47356 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000940]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000944]:csrrs a7, fflags, zero
	-[0x80000948]:fsd fa3, 704(a5)
Current Store : [0x8000094c] : sd a7, 712(a5) -- Store: [0x800047d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xe4e789d337d77 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xaac467660ea9f and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x18e38211353ef and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000960]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000964]:csrrs a7, fflags, zero
	-[0x80000968]:fsd fa3, 720(a5)
Current Store : [0x8000096c] : sd a7, 728(a5) -- Store: [0x800047e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x85eb50a9b65e8 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xbee6f48112ca9 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x06857d17f9e6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000980]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000984]:csrrs a7, fflags, zero
	-[0x80000988]:fsd fa3, 736(a5)
Current Store : [0x8000098c] : sd a7, 744(a5) -- Store: [0x800047f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x6fcb8489dc591 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd5d579f837c3e and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x3dcb317858039 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009a0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009a4]:csrrs a7, fflags, zero
	-[0x800009a8]:fsd fa3, 752(a5)
Current Store : [0x800009ac] : sd a7, 760(a5) -- Store: [0x80004808]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x0435cbf7ce303 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0xcb3c58d58b2bf and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x3b439dc268d31 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa3, 768(a5)
Current Store : [0x800009cc] : sd a7, 776(a5) -- Store: [0x80004818]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc9815c3b1adfc and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x7dd98b509becf and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x4e7f68bcdab8b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009e4]:csrrs a7, fflags, zero
	-[0x800009e8]:fsd fa3, 784(a5)
Current Store : [0x800009ec] : sd a7, 792(a5) -- Store: [0x80004828]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xea594439af755 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x6a7fe63869fed and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x00525eda1d5a7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsd fa3, 800(a5)
Current Store : [0x80000a0c] : sd a7, 808(a5) -- Store: [0x80004838]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x7840b0a77fbbb and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x94a97c3df3b51 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x5d58bc2e4fd7f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a20]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a24]:csrrs a7, fflags, zero
	-[0x80000a28]:fsd fa3, 816(a5)
Current Store : [0x80000a2c] : sd a7, 824(a5) -- Store: [0x80004848]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2a9ac14416973 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x3eb682e8c47fa and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x368985dc4dee6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a40]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a44]:csrrs a7, fflags, zero
	-[0x80000a48]:fsd fa3, 832(a5)
Current Store : [0x80000a4c] : sd a7, 840(a5) -- Store: [0x80004858]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xdf0325e8750cf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x81cf3ffe0cb08 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x652cb8a3f1229 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a60]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a64]:csrrs a7, fflags, zero
	-[0x80000a68]:fsd fa3, 848(a5)
Current Store : [0x80000a6c] : sd a7, 856(a5) -- Store: [0x80004868]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x7c30cfd9902ca and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x8083feedaf3d3 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x0ade42dab32c4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a80]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a84]:csrrs a7, fflags, zero
	-[0x80000a88]:fsd fa3, 864(a5)
Current Store : [0x80000a8c] : sd a7, 872(a5) -- Store: [0x80004878]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x01559da52cc50 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x61457deedafab and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x5a04d43f6744e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa3, 880(a5)
Current Store : [0x80000aac] : sd a7, 888(a5) -- Store: [0x80004888]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x5e77a2a3ef6e5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc1d568ee159cf and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x28828379b625d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ac0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ac4]:csrrs a7, fflags, zero
	-[0x80000ac8]:fsd fa3, 896(a5)
Current Store : [0x80000acc] : sd a7, 904(a5) -- Store: [0x80004898]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x440c579831418 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x99ddc9e77cb45 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xd908ada8b9c0d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:fsd fa3, 912(a5)
Current Store : [0x80000aec] : sd a7, 920(a5) -- Store: [0x800048a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x97170988aa151 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xdd895344c54d7 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x575700b04d303 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b00]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b04]:csrrs a7, fflags, zero
	-[0x80000b08]:fsd fa3, 928(a5)
Current Store : [0x80000b0c] : sd a7, 936(a5) -- Store: [0x800048b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5b608176286de and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x7ec25e17b909b and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x602a93732cb46 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b20]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b24]:csrrs a7, fflags, zero
	-[0x80000b28]:fsd fa3, 944(a5)
Current Store : [0x80000b2c] : sd a7, 952(a5) -- Store: [0x800048c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x97c657c682e1f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xe719a478092fb and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xcd7a17c66ca93 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b40]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b44]:csrrs a7, fflags, zero
	-[0x80000b48]:fsd fa3, 960(a5)
Current Store : [0x80000b4c] : sd a7, 968(a5) -- Store: [0x800048d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x477c4d4dd15f5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdbfa105179648 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x93c3240340b2a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b60]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b64]:csrrs a7, fflags, zero
	-[0x80000b68]:fsd fa3, 976(a5)
Current Store : [0x80000b6c] : sd a7, 984(a5) -- Store: [0x800048e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xca057fc89126a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd7eea06dfbab7 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x3063b52602e9f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa3, 992(a5)
Current Store : [0x80000b8c] : sd a7, 1000(a5) -- Store: [0x800048f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x54fc797f61a47 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc49dffef48af1 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x85743659b13a8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ba0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ba4]:csrrs a7, fflags, zero
	-[0x80000ba8]:fsd fa3, 1008(a5)
Current Store : [0x80000bac] : sd a7, 1016(a5) -- Store: [0x80004908]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x46086cad941b7 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x3cf8a4ab5f917 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x26291110ad9f3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000bc4]:csrrs a7, fflags, zero
	-[0x80000bc8]:fsd fa3, 1024(a5)
Current Store : [0x80000bcc] : sd a7, 1032(a5) -- Store: [0x80004918]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa321af726492d and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x8450b36da4f99 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xb1c82278f55e9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000be0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000be4]:csrrs a7, fflags, zero
	-[0x80000be8]:fsd fa3, 1040(a5)
Current Store : [0x80000bec] : sd a7, 1048(a5) -- Store: [0x80004928]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x1c256e07d7b03 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xea5ed10729949 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x2e9cf17e1c104 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c00]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c04]:csrrs a7, fflags, zero
	-[0x80000c08]:fsd fa3, 1056(a5)
Current Store : [0x80000c0c] : sd a7, 1064(a5) -- Store: [0x80004938]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xdd01ebf317c47 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xd484e5c7d8c61 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x0ce829748d56f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c20]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c24]:csrrs a7, fflags, zero
	-[0x80000c28]:fsd fa3, 1072(a5)
Current Store : [0x80000c2c] : sd a7, 1080(a5) -- Store: [0x80004948]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9881bee04c84c and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x41f756c5b46c8 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x5006cf149aed7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c40]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c44]:csrrs a7, fflags, zero
	-[0x80000c48]:fsd fa3, 1088(a5)
Current Store : [0x80000c4c] : sd a7, 1096(a5) -- Store: [0x80004958]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x908348cc50075 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x0f993cf648277 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x893f7fe0be35f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa3, 1104(a5)
Current Store : [0x80000c6c] : sd a7, 1112(a5) -- Store: [0x80004968]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xae70dafae96a3 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x7cb7e10454cbf and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x05638ab21778b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c80]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c84]:csrrs a7, fflags, zero
	-[0x80000c88]:fsd fa3, 1120(a5)
Current Store : [0x80000c8c] : sd a7, 1128(a5) -- Store: [0x80004978]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x97787813faa38 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4e8baea923265 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x72dedcdfdeaae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsd fa3, 1136(a5)
Current Store : [0x80000cac] : sd a7, 1144(a5) -- Store: [0x80004988]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa613e194097b8 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x377828aab6e99 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xa6b75a2599da0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000cc4]:csrrs a7, fflags, zero
	-[0x80000cc8]:fsd fa3, 1152(a5)
Current Store : [0x80000ccc] : sd a7, 1160(a5) -- Store: [0x80004998]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x13bf56ad82c8a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd453f7d35f923 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x0f938d0012b4a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ce0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ce4]:csrrs a7, fflags, zero
	-[0x80000ce8]:fsd fa3, 1168(a5)
Current Store : [0x80000cec] : sd a7, 1176(a5) -- Store: [0x800049a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x3bd530bfc7921 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4c524788895e4 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x302ba08bafbad and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d00]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d04]:csrrs a7, fflags, zero
	-[0x80000d08]:fsd fa3, 1184(a5)
Current Store : [0x80000d0c] : sd a7, 1192(a5) -- Store: [0x800049b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x87814b483b2ff and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc56d7d1a2a465 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x444426e72046b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d20]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d24]:csrrs a7, fflags, zero
	-[0x80000d28]:fsd fa3, 1200(a5)
Current Store : [0x80000d2c] : sd a7, 1208(a5) -- Store: [0x800049c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xef0f52001dd13 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x774135045aad3 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x1705e64f208a1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa3, 1216(a5)
Current Store : [0x80000d4c] : sd a7, 1224(a5) -- Store: [0x800049d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2de4ff93f2d49 and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x54cb8485c10ff and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x38f4ff02f8ed1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d60]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d64]:csrrs a7, fflags, zero
	-[0x80000d68]:fsd fa3, 1232(a5)
Current Store : [0x80000d6c] : sd a7, 1240(a5) -- Store: [0x800049e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x4cf1937fde173 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x86d2c67f038bd and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x743c2409eb867 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d80]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:fsd fa3, 1248(a5)
Current Store : [0x80000d8c] : sd a7, 1256(a5) -- Store: [0x800049f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x932903b557086 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xba615dee0d545 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x8b52241b8e024 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000da0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000da4]:csrrs a7, fflags, zero
	-[0x80000da8]:fsd fa3, 1264(a5)
Current Store : [0x80000dac] : sd a7, 1272(a5) -- Store: [0x80004a08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9199ba7fdacbd and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x9e32e020ad6fd and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x10179abe8eb1b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000dc4]:csrrs a7, fflags, zero
	-[0x80000dc8]:fsd fa3, 1280(a5)
Current Store : [0x80000dcc] : sd a7, 1288(a5) -- Store: [0x80004a18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x820702d63fac0 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x63bca2c276bab and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xd57035175d798 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000de0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000de4]:csrrs a7, fflags, zero
	-[0x80000de8]:fsd fa3, 1296(a5)
Current Store : [0x80000dec] : sd a7, 1304(a5) -- Store: [0x80004a28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x017c339d75e4d and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0xc30407e58dcff and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xe9d605ec1e199 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e00]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e04]:csrrs a7, fflags, zero
	-[0x80000e08]:fsd fa3, 1312(a5)
Current Store : [0x80000e0c] : sd a7, 1320(a5) -- Store: [0x80004a38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x597fb1bb06230 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x56ed923aca873 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x252e9c09634b1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa3, 1328(a5)
Current Store : [0x80000e2c] : sd a7, 1336(a5) -- Store: [0x80004a48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x511a1344303ed and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x82640d65dc24c and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x79c8ee5480d1b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e40]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e44]:csrrs a7, fflags, zero
	-[0x80000e48]:fsd fa3, 1344(a5)
Current Store : [0x80000e4c] : sd a7, 1352(a5) -- Store: [0x80004a58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f2 and fm1 == 0x8e1a79f69deff and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xf112c2c43eca3 and fs3 == 1 and fe3 == 0x7ee and fm3 == 0x6308e242db948 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e64]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e68]:csrrs a7, fflags, zero
	-[0x80000e6c]:fsd fa3, 1360(a5)
Current Store : [0x80000e70] : sd a7, 1368(a5) -- Store: [0x80004a68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xa3d5b9f8ee473 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xeefde430a673b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xb3727ee3c0285 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e84]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e88]:csrrs a7, fflags, zero
	-[0x80000e8c]:fsd fa3, 1376(a5)
Current Store : [0x80000e90] : sd a7, 1384(a5) -- Store: [0x80004a78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x03c79a41b870f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x21d7278b1bb7f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xaf7fd02c04bab and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ea4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ea8]:csrrs a7, fflags, zero
	-[0x80000eac]:fsd fa3, 1392(a5)
Current Store : [0x80000eb0] : sd a7, 1400(a5) -- Store: [0x80004a88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x1a5d3a022c06b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x39827e2b6fc0e and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xf00286babe74d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ec4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ec8]:csrrs a7, fflags, zero
	-[0x80000ecc]:fsd fa3, 1408(a5)
Current Store : [0x80000ed0] : sd a7, 1416(a5) -- Store: [0x80004a98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x2c2600e5225e4 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x882e3a7d63c53 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x9ecbb9e89d747 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa3, 1424(a5)
Current Store : [0x80000ef0] : sd a7, 1432(a5) -- Store: [0x80004aa8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x88b452334d482 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x98a767463fb7b and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x115b37a3f916a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f04]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f08]:csrrs a7, fflags, zero
	-[0x80000f0c]:fsd fa3, 1440(a5)
Current Store : [0x80000f10] : sd a7, 1448(a5) -- Store: [0x80004ab8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc4f4bdbe3ee53 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x9b7932c7ac007 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x4a76956747dfc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f24]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f28]:csrrs a7, fflags, zero
	-[0x80000f2c]:fsd fa3, 1456(a5)
Current Store : [0x80000f30] : sd a7, 1464(a5) -- Store: [0x80004ac8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x757c41e46ee0f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x367fd258b0b63 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xaf8d402ed4d82 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f44]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f48]:csrrs a7, fflags, zero
	-[0x80000f4c]:fsd fa3, 1472(a5)
Current Store : [0x80000f50] : sd a7, 1480(a5) -- Store: [0x80004ad8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa1d3ea060b239 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x18c773392efff and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xbd433bf0d5f95 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f64]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f68]:csrrs a7, fflags, zero
	-[0x80000f6c]:fsd fa3, 1488(a5)
Current Store : [0x80000f70] : sd a7, 1496(a5) -- Store: [0x80004ae8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6c53c0ba0796d and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc43588ddd7fbc and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x097bba91bea78 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f84]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f88]:csrrs a7, fflags, zero
	-[0x80000f8c]:fsd fa3, 1504(a5)
Current Store : [0x80000f90] : sd a7, 1512(a5) -- Store: [0x80004af8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x45088c7a8eddc and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x7c4c7501c707f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x6194442f94d73 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fa4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fa8]:csrrs a7, fflags, zero
	-[0x80000fac]:fsd fa3, 1520(a5)
Current Store : [0x80000fb0] : sd a7, 1528(a5) -- Store: [0x80004b08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x9c63a6687c333 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x557d56987bca8 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x0febcf30a99f7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa3, 1536(a5)
Current Store : [0x80000fd0] : sd a7, 1544(a5) -- Store: [0x80004b18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb442f12e7354a and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xcccc36886926f and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x3e473b72c36be and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fe4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fe8]:csrrs a7, fflags, zero
	-[0x80000fec]:fsd fa3, 1552(a5)
Current Store : [0x80000ff0] : sd a7, 1560(a5) -- Store: [0x80004b28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x7dc0f47a5db15 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5124f30535e0b and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xbad4e8fb1eecb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001004]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001008]:csrrs a7, fflags, zero
	-[0x8000100c]:fsd fa3, 1568(a5)
Current Store : [0x80001010] : sd a7, 1576(a5) -- Store: [0x80004b38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe3d6d32e17fa5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xec884da30b843 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x35b03f15411b2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001024]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001028]:csrrs a7, fflags, zero
	-[0x8000102c]:fsd fa3, 1584(a5)
Current Store : [0x80001030] : sd a7, 1592(a5) -- Store: [0x80004b48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6bc16c6eccc22 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdf93331a60977 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x22879c38e45b3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001044]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001048]:csrrs a7, fflags, zero
	-[0x8000104c]:fsd fa3, 1600(a5)
Current Store : [0x80001050] : sd a7, 1608(a5) -- Store: [0x80004b58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x053533036dba9 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xee098e2310cc3 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x6219989c7d7f0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001064]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001068]:csrrs a7, fflags, zero
	-[0x8000106c]:fsd fa3, 1616(a5)
Current Store : [0x80001070] : sd a7, 1624(a5) -- Store: [0x80004b68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x30b95bd887309 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc37d95ef26f70 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x3d316c619258e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001084]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001088]:csrrs a7, fflags, zero
	-[0x8000108c]:fsd fa3, 1632(a5)
Current Store : [0x80001090] : sd a7, 1640(a5) -- Store: [0x80004b78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x287a907776fa3 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc3c58b5c03e1d and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x0d4a450d85abf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa3, 1648(a5)
Current Store : [0x800010b0] : sd a7, 1656(a5) -- Store: [0x80004b88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfd8213d6f2891 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x90cd3970eae8a and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x39c8bbd2038aa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010c8]:csrrs a7, fflags, zero
	-[0x800010cc]:fsd fa3, 1664(a5)
Current Store : [0x800010d0] : sd a7, 1672(a5) -- Store: [0x80004b98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd800e87943f0d and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x680debcf012e2 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xd214a37f370b3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010e8]:csrrs a7, fflags, zero
	-[0x800010ec]:fsd fa3, 1680(a5)
Current Store : [0x800010f0] : sd a7, 1688(a5) -- Store: [0x80004ba8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6e444c20e8184 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x076f4d15b455d and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x6518d4f3d8693 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001104]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001108]:csrrs a7, fflags, zero
	-[0x8000110c]:fsd fa3, 1696(a5)
Current Store : [0x80001110] : sd a7, 1704(a5) -- Store: [0x80004bb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x82f53e1b1e100 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x89d942a85e30f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xc36797b0fd88d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001124]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001128]:csrrs a7, fflags, zero
	-[0x8000112c]:fsd fa3, 1712(a5)
Current Store : [0x80001130] : sd a7, 1720(a5) -- Store: [0x80004bc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xcb0a304fe19bf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x14eff5bf25de3 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xe4273c7307d4f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001144]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001148]:csrrs a7, fflags, zero
	-[0x8000114c]:fsd fa3, 1728(a5)
Current Store : [0x80001150] : sd a7, 1736(a5) -- Store: [0x80004bd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5cb9025515212 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc160cd96157af and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xd2735b02a4775 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001164]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001168]:csrrs a7, fflags, zero
	-[0x8000116c]:fsd fa3, 1744(a5)
Current Store : [0x80001170] : sd a7, 1752(a5) -- Store: [0x80004be8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2f7ee631fefc5 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xda8557b559e8b and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xd5f14b55eb8d9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001184]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa3, 1760(a5)
Current Store : [0x80001190] : sd a7, 1768(a5) -- Store: [0x80004bf8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfa2ea1f3d3ef9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4bd16a0267938 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x7234e530ad7c1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011a8]:csrrs a7, fflags, zero
	-[0x800011ac]:fsd fa3, 1776(a5)
Current Store : [0x800011b0] : sd a7, 1784(a5) -- Store: [0x80004c08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x11c62f98de3bf and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x60de25d29e92f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x65a66d3982040 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011c8]:csrrs a7, fflags, zero
	-[0x800011cc]:fsd fa3, 1792(a5)
Current Store : [0x800011d0] : sd a7, 1800(a5) -- Store: [0x80004c18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfed8d422e59b9 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x2c08bdce69f77 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xa81f1c102123e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa3, 1808(a5)
Current Store : [0x800011f0] : sd a7, 1816(a5) -- Store: [0x80004c28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa2bda964d91ae and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x89000c246f107 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xb3dbf0af6d297 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001204]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001208]:csrrs a7, fflags, zero
	-[0x8000120c]:fsd fa3, 1824(a5)
Current Store : [0x80001210] : sd a7, 1832(a5) -- Store: [0x80004c38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5bb8442cbfc28 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd65025c565597 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xfa8cd783f460a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001224]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001228]:csrrs a7, fflags, zero
	-[0x8000122c]:fsd fa3, 1840(a5)
Current Store : [0x80001230] : sd a7, 1848(a5) -- Store: [0x80004c48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf4853a4c5bef9 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x09a18dc6373ff and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x72b9fba4041c7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001244]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001248]:csrrs a7, fflags, zero
	-[0x8000124c]:fsd fa3, 1856(a5)
Current Store : [0x80001250] : sd a7, 1864(a5) -- Store: [0x80004c58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xac08ec2b88c86 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x2fe2d0b2849b1 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x38e5397520280 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001264]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001268]:csrrs a7, fflags, zero
	-[0x8000126c]:fsd fa3, 1872(a5)
Current Store : [0x80001270] : sd a7, 1880(a5) -- Store: [0x80004c68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe8ce066e96229 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x9bd3c29ad0568 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x7bd01baa868ed and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001284]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001288]:csrrs a7, fflags, zero
	-[0x8000128c]:fsd fa3, 1888(a5)
Current Store : [0x80001290] : sd a7, 1896(a5) -- Store: [0x80004c78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x1365a93dfa50f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x0d77af376928b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xac528ba1d3993 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012a8]:csrrs a7, fflags, zero
	-[0x800012ac]:fsd fa3, 1904(a5)
Current Store : [0x800012b0] : sd a7, 1912(a5) -- Store: [0x80004c88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x6e2aa97ad4287 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xd4012b921b92d and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x2d04b374e9aab and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa3, 1920(a5)
Current Store : [0x800012d0] : sd a7, 1928(a5) -- Store: [0x80004c98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x8deeb902c377e and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7270fced2be29 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xaf46dd23cda76 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012e8]:csrrs a7, fflags, zero
	-[0x800012ec]:fsd fa3, 1936(a5)
Current Store : [0x800012f0] : sd a7, 1944(a5) -- Store: [0x80004ca8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x62a35ac6bee41 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x942c54f20963f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xd07bff3a622c5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001304]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001308]:csrrs a7, fflags, zero
	-[0x8000130c]:fsd fa3, 1952(a5)
Current Store : [0x80001310] : sd a7, 1960(a5) -- Store: [0x80004cb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb33c7d55682c1 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x48300cd907da9 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x115b5ea65817a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001324]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001328]:csrrs a7, fflags, zero
	-[0x8000132c]:fsd fa3, 1968(a5)
Current Store : [0x80001330] : sd a7, 1976(a5) -- Store: [0x80004cc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xf29a9c82218e7 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xf2c5343ef46b7 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x0669be5ed3685 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001344]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001348]:csrrs a7, fflags, zero
	-[0x8000134c]:fsd fa3, 1984(a5)
Current Store : [0x80001350] : sd a7, 1992(a5) -- Store: [0x80004cd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xda577e11e08d7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x81d54dd6137b5 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xf2aa1ecb04f9c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001364]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001368]:csrrs a7, fflags, zero
	-[0x8000136c]:fsd fa3, 2000(a5)
Current Store : [0x80001370] : sd a7, 2008(a5) -- Store: [0x80004ce8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x89f3951da2feb and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x24a28f97e5b1f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x39610959296ec and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001384]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001388]:csrrs a7, fflags, zero
	-[0x8000138c]:fsd fa3, 2016(a5)
Current Store : [0x80001390] : sd a7, 2024(a5) -- Store: [0x80004cf8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xdedbc42e4ee38 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x398aa070366df and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x0152356c26a6b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013b0]:csrrs a7, fflags, zero
	-[0x800013b4]:fsd fa3, 0(a5)
Current Store : [0x800013b8] : sd a7, 8(a5) -- Store: [0x80004d08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x2e3db402ba61f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x232f190317157 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xd7fa045f8793f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013d0]:csrrs a7, fflags, zero
	-[0x800013d4]:fsd fa3, 16(a5)
Current Store : [0x800013d8] : sd a7, 24(a5) -- Store: [0x80004d18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf1860e3b4eb81 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xaa7d58e3b9047 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x49366e3f9dbbd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013f0]:csrrs a7, fflags, zero
	-[0x800013f4]:fsd fa3, 32(a5)
Current Store : [0x800013f8] : sd a7, 40(a5) -- Store: [0x80004d28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f5 and fm1 == 0x0197267f1985f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xce41f387adc6f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x4812b6bf8d6c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000140c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001410]:csrrs a7, fflags, zero
	-[0x80001414]:fsd fa3, 48(a5)
Current Store : [0x80001418] : sd a7, 56(a5) -- Store: [0x80004d38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x3943b61964e33 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xae64a7b19f21e and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xb871d605df6ba and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000142c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001430]:csrrs a7, fflags, zero
	-[0x80001434]:fsd fa3, 64(a5)
Current Store : [0x80001438] : sd a7, 72(a5) -- Store: [0x80004d48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f5 and fm1 == 0x3832e6fea9a3f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5ee10a5a625fc and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xd731b74a534ea and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000144c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001450]:csrrs a7, fflags, zero
	-[0x80001454]:fsd fa3, 80(a5)
Current Store : [0x80001458] : sd a7, 88(a5) -- Store: [0x80004d58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2887dc585eda5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xf79012fbad378 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x9033b38fd9d06 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000146c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001470]:csrrs a7, fflags, zero
	-[0x80001474]:fsd fa3, 96(a5)
Current Store : [0x80001478] : sd a7, 104(a5) -- Store: [0x80004d68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x09d5da3d7b9db and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd7c8570796fe8 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x8a804749eca98 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000148c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001490]:csrrs a7, fflags, zero
	-[0x80001494]:fsd fa3, 112(a5)
Current Store : [0x80001498] : sd a7, 120(a5) -- Store: [0x80004d78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x802693539b05f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x9af59f9eb5168 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xa53ffa5a270dc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014b0]:csrrs a7, fflags, zero
	-[0x800014b4]:fsd fa3, 128(a5)
Current Store : [0x800014b8] : sd a7, 136(a5) -- Store: [0x80004d88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xac0c7cf6e58fb and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x0cd5422534b0d and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x097bf15fcaf48 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014d0]:csrrs a7, fflags, zero
	-[0x800014d4]:fsd fa3, 144(a5)
Current Store : [0x800014d8] : sd a7, 152(a5) -- Store: [0x80004d98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x05e381015d598 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x2982d565d88fc and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x3ff2ba26b011d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014f0]:csrrs a7, fflags, zero
	-[0x800014f4]:fsd fa3, 160(a5)
Current Store : [0x800014f8] : sd a7, 168(a5) -- Store: [0x80004da8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xed1da04d72f12 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7536733396cf8 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x01ad09ae1295b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000150c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001510]:csrrs a7, fflags, zero
	-[0x80001514]:fsd fa3, 176(a5)
Current Store : [0x80001518] : sd a7, 184(a5) -- Store: [0x80004db8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x48949a9851f6d and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xb318d9af479ef and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x0a2ea67ab4e6e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000152c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001530]:csrrs a7, fflags, zero
	-[0x80001534]:fsd fa3, 192(a5)
Current Store : [0x80001538] : sd a7, 200(a5) -- Store: [0x80004dc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0a9df4ead8eb3 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xdb8c7d3a18027 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x4455b0e11d60e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000154c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001550]:csrrs a7, fflags, zero
	-[0x80001554]:fsd fa3, 208(a5)
Current Store : [0x80001558] : sd a7, 216(a5) -- Store: [0x80004dd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x743ea0c02659b and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xda2a011aeffab and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xa3aa8637b0e8c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000156c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001570]:csrrs a7, fflags, zero
	-[0x80001574]:fsd fa3, 224(a5)
Current Store : [0x80001578] : sd a7, 232(a5) -- Store: [0x80004de8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x7291f0459edd6 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xed4ae61a16dab and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x88a6f73f25521 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000158c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001590]:csrrs a7, fflags, zero
	-[0x80001594]:fsd fa3, 240(a5)
Current Store : [0x80001598] : sd a7, 248(a5) -- Store: [0x80004df8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x22cfa989fca0f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xa2892d94829ad and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x08274724f19ab and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015b0]:csrrs a7, fflags, zero
	-[0x800015b4]:fsd fa3, 256(a5)
Current Store : [0x800015b8] : sd a7, 264(a5) -- Store: [0x80004e08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xb12b5923ada87 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x0d68c4b00b1ad and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xca0ee02ad1bc6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015d0]:csrrs a7, fflags, zero
	-[0x800015d4]:fsd fa3, 272(a5)
Current Store : [0x800015d8] : sd a7, 280(a5) -- Store: [0x80004e18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x99b4caa7ee21f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x6b435c9707703 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x6d474fad8ee6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015f0]:csrrs a7, fflags, zero
	-[0x800015f4]:fsd fa3, 288(a5)
Current Store : [0x800015f8] : sd a7, 296(a5) -- Store: [0x80004e28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x00ccac0a4b811 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x2eb6a94e9ae19 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xed311f5a05e8b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000160c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:fsd fa3, 304(a5)
Current Store : [0x80001618] : sd a7, 312(a5) -- Store: [0x80004e38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfd32694fcaecb and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xdc1b3eb6c004b and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x560832458212e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000162c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001630]:csrrs a7, fflags, zero
	-[0x80001634]:fsd fa3, 320(a5)
Current Store : [0x80001638] : sd a7, 328(a5) -- Store: [0x80004e48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x043a8c3aa6439 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xf788de2d51675 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xeefe93994c491 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000164c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001650]:csrrs a7, fflags, zero
	-[0x80001654]:fsd fa3, 336(a5)
Current Store : [0x80001658] : sd a7, 344(a5) -- Store: [0x80004e58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x4a10e22bb3b33 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x88b104e822b8f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x9dec6c0993cbd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000166c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001670]:csrrs a7, fflags, zero
	-[0x80001674]:fsd fa3, 352(a5)
Current Store : [0x80001678] : sd a7, 360(a5) -- Store: [0x80004e68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x1fe2d6aba9e77 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0xd126610309c1f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x0e51db551c107 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000168c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001690]:csrrs a7, fflags, zero
	-[0x80001694]:fsd fa3, 368(a5)
Current Store : [0x80001698] : sd a7, 376(a5) -- Store: [0x80004e78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xadd465d39fd03 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x2774cd9885b7f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x826e9daaa7e48 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016b0]:csrrs a7, fflags, zero
	-[0x800016b4]:fsd fa3, 384(a5)
Current Store : [0x800016b8] : sd a7, 392(a5) -- Store: [0x80004e88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xeb61e2d5d3c7a and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x095092a183e33 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x98f4fb01003a1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016d0]:csrrs a7, fflags, zero
	-[0x800016d4]:fsd fa3, 400(a5)
Current Store : [0x800016d8] : sd a7, 408(a5) -- Store: [0x80004e98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x9262273e53737 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x07943814fd4f4 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xd9e255bfde29e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016f0]:csrrs a7, fflags, zero
	-[0x800016f4]:fsd fa3, 416(a5)
Current Store : [0x800016f8] : sd a7, 424(a5) -- Store: [0x80004ea8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xbfe0f0fcad936 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x0531d684ae65b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x6a22dab2e89da and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000170c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001710]:csrrs a7, fflags, zero
	-[0x80001714]:fsd fa3, 432(a5)
Current Store : [0x80001718] : sd a7, 440(a5) -- Store: [0x80004eb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x43e5b36b50bcd and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xa1fe3e0c64717 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x7ed8026cc0461 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000172c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001730]:csrrs a7, fflags, zero
	-[0x80001734]:fsd fa3, 448(a5)
Current Store : [0x80001738] : sd a7, 456(a5) -- Store: [0x80004ec8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe4204ffab96f7 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xcde16617ec93f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x6aabd19d990c4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000174c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001750]:csrrs a7, fflags, zero
	-[0x80001754]:fsd fa3, 464(a5)
Current Store : [0x80001758] : sd a7, 472(a5) -- Store: [0x80004ed8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x82e62659b7f9b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb9927e27c836d and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x1c84f08b614c7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000176c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001770]:csrrs a7, fflags, zero
	-[0x80001774]:fsd fa3, 480(a5)
Current Store : [0x80001778] : sd a7, 488(a5) -- Store: [0x80004ee8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x882d3626badfd and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7ada4a02edef8 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x13f930a295467 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000178c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001790]:csrrs a7, fflags, zero
	-[0x80001794]:fsd fa3, 496(a5)
Current Store : [0x80001798] : sd a7, 504(a5) -- Store: [0x80004ef8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x594e913e8fb89 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0xf8ce1a7792dff and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xed33518b28b93 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017b0]:csrrs a7, fflags, zero
	-[0x800017b4]:fsd fa3, 512(a5)
Current Store : [0x800017b8] : sd a7, 520(a5) -- Store: [0x80004f08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x3b00ab682d289 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7c23aaefd9f67 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x0454e8106d5cf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017d0]:csrrs a7, fflags, zero
	-[0x800017d4]:fsd fa3, 528(a5)
Current Store : [0x800017d8] : sd a7, 536(a5) -- Store: [0x80004f18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x361bbef8877ab and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x291d98044bfbf and fs3 == 1 and fe3 == 0x7ef and fm3 == 0xe3cc0b403a893 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017f0]:csrrs a7, fflags, zero
	-[0x800017f4]:fsd fa3, 544(a5)
Current Store : [0x800017f8] : sd a7, 552(a5) -- Store: [0x80004f28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x8ad1c84b735e1 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x61932b2d37baf and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x0f4a2e0ecd21d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000180c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001810]:csrrs a7, fflags, zero
	-[0x80001814]:fsd fa3, 560(a5)
Current Store : [0x80001818] : sd a7, 568(a5) -- Store: [0x80004f38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x41c73bbc1b00b and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x784c0d85e9517 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x9006b360bbb6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000182c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001830]:csrrs a7, fflags, zero
	-[0x80001834]:fsd fa3, 576(a5)
Current Store : [0x80001838] : sd a7, 584(a5) -- Store: [0x80004f48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f5 and fm1 == 0x5a7002fc1a6bf and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x05d39d105b541 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x4141940cdbe5f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000184c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001850]:csrrs a7, fflags, zero
	-[0x80001854]:fsd fa3, 592(a5)
Current Store : [0x80001858] : sd a7, 600(a5) -- Store: [0x80004f58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe8bc5f44515f5 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x9f3f7053b60bf and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x56c11a9ac3ca8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000186c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001870]:csrrs a7, fflags, zero
	-[0x80001874]:fsd fa3, 608(a5)
Current Store : [0x80001878] : sd a7, 616(a5) -- Store: [0x80004f68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x6003243fdf57b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5874b6418015b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x007478669dfb8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000188c]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001890]:csrrs a7, fflags, zero
	-[0x80001894]:fsd fa3, 624(a5)
Current Store : [0x80001898] : sd a7, 632(a5) -- Store: [0x80004f78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6f1586709a287 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x051aac3a28d5f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xfe1215b38304a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018b0]:csrrs a7, fflags, zero
	-[0x800018b4]:fsd fa3, 640(a5)
Current Store : [0x800018b8] : sd a7, 648(a5) -- Store: [0x80004f88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xaf0f94f18e857 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc2db9cc3dd583 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x0e0f021498c48 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018d0]:csrrs a7, fflags, zero
	-[0x800018d4]:fsd fa3, 656(a5)
Current Store : [0x800018d8] : sd a7, 664(a5) -- Store: [0x80004f98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0b731e88bc69f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb5380491038ac and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x1c4d9d02a9b38 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018f0]:csrrs a7, fflags, zero
	-[0x800018f4]:fsd fa3, 672(a5)
Current Store : [0x800018f8] : sd a7, 680(a5) -- Store: [0x80004fa8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xd01c53aeb6daf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc04060fa9d235 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xc180d6f7bf402 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001910]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001914]:csrrs a7, fflags, zero
	-[0x80001918]:fsd fa3, 688(a5)
Current Store : [0x8000191c] : sd a7, 696(a5) -- Store: [0x80004fb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0xe15a564c336ef and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4e4a35c32157e and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x901c20ed9614b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001930]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001934]:csrrs a7, fflags, zero
	-[0x80001938]:fsd fa3, 704(a5)
Current Store : [0x8000193c] : sd a7, 712(a5) -- Store: [0x80004fc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd0b7f9b429ef3 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x87fe27ff3fe2f and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x36642e8a718b9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001950]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001954]:csrrs a7, fflags, zero
	-[0x80001958]:fsd fa3, 720(a5)
Current Store : [0x8000195c] : sd a7, 728(a5) -- Store: [0x80004fd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x34bccd918d207 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xa40b77d5da767 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xb529a561abaf3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001970]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:fsd fa3, 736(a5)
Current Store : [0x8000197c] : sd a7, 744(a5) -- Store: [0x80004fe8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0616a9d776586 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xde497aebca743 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x8d6d042a7b2d5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001990]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001994]:csrrs a7, fflags, zero
	-[0x80001998]:fsd fa3, 752(a5)
Current Store : [0x8000199c] : sd a7, 760(a5) -- Store: [0x80004ff8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x2d0716da06e3c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x3f541e5d8f1c1 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xc587a9879e0e4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019b0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019b4]:csrrs a7, fflags, zero
	-[0x800019b8]:fsd fa3, 768(a5)
Current Store : [0x800019bc] : sd a7, 776(a5) -- Store: [0x80005008]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x022ce6a3fae64 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x09163be078882 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xb97cfd1ddcd50 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019d0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019d4]:csrrs a7, fflags, zero
	-[0x800019d8]:fsd fa3, 784(a5)
Current Store : [0x800019dc] : sd a7, 792(a5) -- Store: [0x80005018]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x3cfe1da6d26d5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xea2b5073270ea and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x02e59388b7142 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019f0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019f4]:csrrs a7, fflags, zero
	-[0x800019f8]:fsd fa3, 800(a5)
Current Store : [0x800019fc] : sd a7, 808(a5) -- Store: [0x80005028]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd0dd93a77236c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x1292a3e2f1241 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xdc7f988e257eb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a10]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a14]:csrrs a7, fflags, zero
	-[0x80001a18]:fsd fa3, 816(a5)
Current Store : [0x80001a1c] : sd a7, 824(a5) -- Store: [0x80005038]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x4c7591e8478db and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x662e40f571128 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x0f34120631a8e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a30]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a34]:csrrs a7, fflags, zero
	-[0x80001a38]:fsd fa3, 832(a5)
Current Store : [0x80001a3c] : sd a7, 840(a5) -- Store: [0x80005048]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x72925e5d38221 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xf2498354565a7 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xb8a466da78c70 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a50]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a54]:csrrs a7, fflags, zero
	-[0x80001a58]:fsd fa3, 848(a5)
Current Store : [0x80001a5c] : sd a7, 856(a5) -- Store: [0x80005058]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd81392ace6303 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x22aa3d2e74e72 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x01531068b1eb0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a70]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a74]:csrrs a7, fflags, zero
	-[0x80001a78]:fsd fa3, 864(a5)
Current Store : [0x80001a7c] : sd a7, 872(a5) -- Store: [0x80005068]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x6a6b1b54b21cf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc405091d199ee and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x2fea59eb04bf2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a90]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a94]:csrrs a7, fflags, zero
	-[0x80001a98]:fsd fa3, 880(a5)
Current Store : [0x80001a9c] : sd a7, 888(a5) -- Store: [0x80005078]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd98396dfe04dc and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x006e3d60fc2f8 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xb25b0d9cfb0d4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ab0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ab4]:csrrs a7, fflags, zero
	-[0x80001ab8]:fsd fa3, 896(a5)
Current Store : [0x80001abc] : sd a7, 904(a5) -- Store: [0x80005088]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd87aff53d41f5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x0f8ac8cffe63e and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x755f29a7401bf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ad0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ad4]:csrrs a7, fflags, zero
	-[0x80001ad8]:fsd fa3, 912(a5)
Current Store : [0x80001adc] : sd a7, 920(a5) -- Store: [0x80005098]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x4a1b2df4767ef and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x820cd259975cf and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xaae748b7801c0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001af0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001af4]:csrrs a7, fflags, zero
	-[0x80001af8]:fsd fa3, 928(a5)
Current Store : [0x80001afc] : sd a7, 936(a5) -- Store: [0x800050a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x6a47222e524ad and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xf6428fb6f94fe and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x5c9dbcae3a532 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b10]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b14]:csrrs a7, fflags, zero
	-[0x80001b18]:fsd fa3, 944(a5)
Current Store : [0x80001b1c] : sd a7, 952(a5) -- Store: [0x800050b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd02d0afa24812 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x8698ed174ff65 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x3ce2f4063213b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b30]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b34]:csrrs a7, fflags, zero
	-[0x80001b38]:fsd fa3, 960(a5)
Current Store : [0x80001b3c] : sd a7, 968(a5) -- Store: [0x800050c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc982355c85538 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x97f0ea9a89f82 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x3c1db1578d26b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b50]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b54]:csrrs a7, fflags, zero
	-[0x80001b58]:fsd fa3, 976(a5)
Current Store : [0x80001b5c] : sd a7, 984(a5) -- Store: [0x800050d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xff5373e0e112c and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x59556723d53e2 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x9797ced3a8004 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b70]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b74]:csrrs a7, fflags, zero
	-[0x80001b78]:fsd fa3, 992(a5)
Current Store : [0x80001b7c] : sd a7, 1000(a5) -- Store: [0x800050e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x4cf244963827f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x17f4cd829a48b and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x12f04c3afbb2d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b90]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b94]:csrrs a7, fflags, zero
	-[0x80001b98]:fsd fa3, 1008(a5)
Current Store : [0x80001b9c] : sd a7, 1016(a5) -- Store: [0x800050f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x1efb36cb5b1e4 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xe394ab3b08c6b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x1584cfb43ffe2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bb0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bb4]:csrrs a7, fflags, zero
	-[0x80001bb8]:fsd fa3, 1024(a5)
Current Store : [0x80001bbc] : sd a7, 1032(a5) -- Store: [0x80005108]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x8522a1b638e23 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc898a0b894837 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x08bd0eaaf93fa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bd0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bd4]:csrrs a7, fflags, zero
	-[0x80001bd8]:fsd fa3, 1040(a5)
Current Store : [0x80001bdc] : sd a7, 1048(a5) -- Store: [0x80005118]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f5 and fm1 == 0xc1a812e98063f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xdc0d22f746bf5 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x139d86656d299 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bf0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bf4]:csrrs a7, fflags, zero
	-[0x80001bf8]:fsd fa3, 1056(a5)
Current Store : [0x80001bfc] : sd a7, 1064(a5) -- Store: [0x80005128]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xc787db4043bd9 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x12adb3735ac6d and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xfa5382456ff12 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c10]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c14]:csrrs a7, fflags, zero
	-[0x80001c18]:fsd fa3, 1072(a5)
Current Store : [0x80001c1c] : sd a7, 1080(a5) -- Store: [0x80005138]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfd58fd60948f9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe61729d7cfd5e and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x755c52dea6fce and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c30]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c34]:csrrs a7, fflags, zero
	-[0x80001c38]:fsd fa3, 1088(a5)
Current Store : [0x80001c3c] : sd a7, 1096(a5) -- Store: [0x80005148]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xb9017651b96db and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x92fa0166dea3d and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x2b0743266244a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c50]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c54]:csrrs a7, fflags, zero
	-[0x80001c58]:fsd fa3, 1104(a5)
Current Store : [0x80001c5c] : sd a7, 1112(a5) -- Store: [0x80005158]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x36aeb78249790 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x299392ab99898 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xa256930644047 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c70]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c74]:csrrs a7, fflags, zero
	-[0x80001c78]:fsd fa3, 1120(a5)
Current Store : [0x80001c7c] : sd a7, 1128(a5) -- Store: [0x80005168]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x56e6e736a538e and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x3b881fa033e19 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x535ebad73a8a2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c90]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c94]:csrrs a7, fflags, zero
	-[0x80001c98]:fsd fa3, 1136(a5)
Current Store : [0x80001c9c] : sd a7, 1144(a5) -- Store: [0x80005178]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x5ba2bcb8dc85f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xabc6824ad2440 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xf8360dcc13f8b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cb0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cb4]:csrrs a7, fflags, zero
	-[0x80001cb8]:fsd fa3, 1152(a5)
Current Store : [0x80001cbc] : sd a7, 1160(a5) -- Store: [0x80005188]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x38aee2c19215f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x912bfdff44ba7 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x0f8b22ffa1987 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cd0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cd4]:csrrs a7, fflags, zero
	-[0x80001cd8]:fsd fa3, 1168(a5)
Current Store : [0x80001cdc] : sd a7, 1176(a5) -- Store: [0x80005198]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa56aface5eb97 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xabc379493ef0f and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x195528decc428 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cf0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cf4]:csrrs a7, fflags, zero
	-[0x80001cf8]:fsd fa3, 1184(a5)
Current Store : [0x80001cfc] : sd a7, 1192(a5) -- Store: [0x800051a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe68dd9c514393 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x878222f2318df and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x49adab20e349e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d10]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d14]:csrrs a7, fflags, zero
	-[0x80001d18]:fsd fa3, 1200(a5)
Current Store : [0x80001d1c] : sd a7, 1208(a5) -- Store: [0x800051b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x8e041c6437953 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x28d94e0280abc and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x7ba0482bd497e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d30]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d34]:csrrs a7, fflags, zero
	-[0x80001d38]:fsd fa3, 1216(a5)
Current Store : [0x80001d3c] : sd a7, 1224(a5) -- Store: [0x800051c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f5 and fm1 == 0xf59904d0ce0bf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x1a7baab01ceb9 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x4ca65e448b1e4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d50]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d54]:csrrs a7, fflags, zero
	-[0x80001d58]:fsd fa3, 1232(a5)
Current Store : [0x80001d5c] : sd a7, 1240(a5) -- Store: [0x800051d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x87dc8b1f4a7b7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xf9492e51e93d3 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xdb5278636b311 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d70]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d74]:csrrs a7, fflags, zero
	-[0x80001d78]:fsd fa3, 1248(a5)
Current Store : [0x80001d7c] : sd a7, 1256(a5) -- Store: [0x800051e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x1ffb1e4665b2c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xe4206922dd131 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x5dc328d369ad9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d90]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d94]:csrrs a7, fflags, zero
	-[0x80001d98]:fsd fa3, 1264(a5)
Current Store : [0x80001d9c] : sd a7, 1272(a5) -- Store: [0x800051f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x97b629a826ff3 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x98715cd327a81 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x26980e77a2cb4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001db0]:fnmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001db4]:csrrs a7, fflags, zero
	-[0x80001db8]:fsd fa3, 1280(a5)
Current Store : [0x80001dbc] : sd a7, 1288(a5) -- Store: [0x80005208]:0x0000000000000001





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

|s.no|            signature             |                                                                                                                                                                        coverpoints                                                                                                                                                                        |                                                             code                                                              |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004510]<br>0x76DF56FF76DF56FF|- opcode : fnmadd.d<br> - rs1 : f18<br> - rs2 : f29<br> - rs3 : f26<br> - rd : f26<br> - rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe97d52f73d2ed and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe549a4f656ebe and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xea3051c4d8ded and rm_val == 0  #nosat<br>     |[0x800003c0]:fnmadd.d fs10, fs2, ft9, fs10, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsd fs10, 0(a5)<br>   |
|   2|[0x80004520]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f16<br> - rs2 : f16<br> - rs3 : f16<br> - rd : f24<br> - rs1 == rs2 == rs3 != rd<br>                                                                                                                                                                                                                                                               |[0x800003e0]:fnmadd.d fs8, fa6, fa6, fa6, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsd fs8, 16(a5)<br>     |
|   3|[0x80004530]<br>0xDBEADFEEDBEADFEE|- rs1 : f8<br> - rs2 : f2<br> - rs3 : f8<br> - rd : f21<br> - rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2<br>                                                                                                                                                                                                                                     |[0x80000400]:fnmadd.d fs5, fs0, ft2, fs0, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fs5, 32(a5)<br>     |
|   4|[0x80004540]<br>0xF56FF76DF56FF76D|- rs1 : f14<br> - rs2 : f25<br> - rs3 : f14<br> - rd : f14<br> - rs1 == rd == rs3 != rs2<br>                                                                                                                                                                                                                                                               |[0x80000420]:fnmadd.d fa4, fa4, fs9, fa4, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsd fa4, 48(a5)<br>     |
|   5|[0x80004550]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f1<br> - rs2 : f0<br> - rs3 : f23<br> - rd : f19<br> - rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x4038aec1813f9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7c017850ccf9e and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x94a9ed2abf1d5 and rm_val == 0  #nosat<br> |[0x80000440]:fnmadd.d fs3, ft1, ft0, fs7, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:fsd fs3, 64(a5)<br>     |
|   6|[0x80004560]<br>0x0000000080004510|- rs1 : f9<br> - rs2 : f15<br> - rs3 : f15<br> - rd : f15<br> - rd == rs2 == rs3 != rs1<br>                                                                                                                                                                                                                                                                |[0x80000460]:fnmadd.d fa5, fs1, fa5, fa5, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd fa5, 80(a5)<br>     |
|   7|[0x80004570]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f12<br> - rs2 : f12<br> - rs3 : f19<br> - rd : f12<br> - rs1 == rs2 == rd != rs3<br>                                                                                                                                                                                                                                                               |[0x80000480]:fnmadd.d fa2, fa2, fa2, fs3, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd fa2, 96(a5)<br>     |
|   8|[0x80004580]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f7<br> - rs2 : f4<br> - rs3 : f2<br> - rd : f4<br> - rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x67fb4908ceaaf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x65eaa9e302952 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xa149f8995d019 and rm_val == 0  #nosat<br>                                 |[0x800004a0]:fnmadd.d ft4, ft7, ft4, ft2, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:fsd ft4, 112(a5)<br>    |
|   9|[0x80004590]<br>0xEADFEEDBEADFEEDB|- rs1 : f21<br> - rs2 : f21<br> - rs3 : f24<br> - rd : f13<br> - rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3<br>                                                                                                                                                                                                                                  |[0x800004c0]:fnmadd.d fa3, fs5, fs5, fs8, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd fa3, 128(a5)<br>    |
|  10|[0x800045a0]<br>0x0000000000000001|- rs1 : f17<br> - rs2 : f17<br> - rs3 : f17<br> - rd : f17<br> - rs1 == rs2 == rs3 == rd<br>                                                                                                                                                                                                                                                               |[0x800004e0]:fnmadd.d fa7, fa7, fa7, fa7, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:fsd fa7, 144(a5)<br>    |
|  11|[0x800045b0]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f15<br> - rs2 : f20<br> - rs3 : f20<br> - rd : f8<br> - rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1<br>                                                                                                                                                                                                                                   |[0x80000500]:fnmadd.d fs0, fa5, fs4, fs4, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsd fs0, 160(a5)<br>    |
|  12|[0x800045c0]<br>0x0000000A00000000|- rs1 : f3<br> - rs2 : f13<br> - rs3 : f30<br> - rd : f3<br> - rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x308800ab9a08f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xb9343c1265853 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x76ab2f33695e2 and rm_val == 0  #nosat<br>                               |[0x80000520]:fnmadd.d ft3, ft3, fa3, ft10, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd ft3, 176(a5)<br>   |
|  13|[0x800045d0]<br>0x6DF56FF76DF56FF7|- rs1 : f19<br> - rs2 : f27<br> - rs3 : f4<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x41176abd4258d and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xaeb9622c6891f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x74099544c727f and rm_val == 0  #nosat<br>                                                                                         |[0x80000540]:fnmadd.d fs6, fs3, fs11, ft4, dyn<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:fsd fs6, 192(a5)<br>   |
|  14|[0x800045e0]<br>0xF76DF56FF76DF56F|- rs1 : f10<br> - rs2 : f18<br> - rs3 : f7<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x4dd13d82cf047 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xafe78faaa8367 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xffe3517f7bf18 and rm_val == 0  #nosat<br>                                                                                         |[0x80000560]:fnmadd.d ft10, fa0, fs2, ft7, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd ft10, 208(a5)<br>  |
|  15|[0x800045f0]<br>0xDF56FF76DF56FF76|- rs1 : f2<br> - rs2 : f7<br> - rs3 : f9<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6f674621915da and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x03a0ff71fb0c2 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x652550f234063 and rm_val == 0  #nosat<br>                                                                                           |[0x80000580]:fnmadd.d fs2, ft2, ft7, fs1, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd fs2, 224(a5)<br>    |
|  16|[0x80004600]<br>0x0000000000000000|- rs1 : f31<br> - rs2 : f19<br> - rs3 : f10<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x3ed0f2697260f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb79b2b1934a01 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x049f916bf2560 and rm_val == 0  #nosat<br>                                                                                         |[0x800005a0]:fnmadd.d ft0, ft11, fs3, fa0, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsd ft0, 240(a5)<br>   |
|  17|[0x80004610]<br>0x0000000080000390|- rs1 : f23<br> - rs2 : f6<br> - rs3 : f25<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x5f6 and fm1 == 0xb3756a76d237f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xb8c3b0a05a317 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x027fcc8b591c8 and rm_val == 0  #nosat<br>                                                                                          |[0x800005c0]:fnmadd.d ft5, fs7, ft6, fs9, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:fsd ft5, 256(a5)<br>    |
|  18|[0x80004620]<br>0xEDBEADFEEDBEADFE|- rs1 : f6<br> - rs2 : f26<br> - rs3 : f31<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xdd44967e4f77f and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xbb5518eec7ff7 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xf4c7e1737c8fc and rm_val == 0  #nosat<br>                                                                                         |[0x800005e0]:fnmadd.d fs9, ft6, fs10, ft11, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd fs9, 272(a5)<br>  |
|  19|[0x80004630]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f13<br> - rs2 : f14<br> - rs3 : f0<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x1ea6995f1c073 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xf7e9d38031687 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x3f4c03dfcba0c and rm_val == 0  #nosat<br>                                                                                         |[0x80000600]:fnmadd.d fs7, fa3, fa4, ft0, dyn<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:fsd fs7, 288(a5)<br>    |
|  20|[0x80004640]<br>0x56FF76DF56FF76DF|- rs1 : f22<br> - rs2 : f8<br> - rs3 : f21<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0bb792159b051 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5d1ae1e1d28a7 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x565b8c4137e0d and rm_val == 0  #nosat<br>                                                                                         |[0x80000620]:fnmadd.d fa0, fs6, fs0, fs5, dyn<br> [0x80000624]:csrrs a7, fflags, zero<br> [0x80000628]:fsd fa0, 304(a5)<br>    |
|  21|[0x80004650]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f29<br> - rs2 : f11<br> - rs3 : f1<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x98cb938bd0d9b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd64f454066002 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x5618eb3f6a8f3 and rm_val == 0  #nosat<br>                                                                                         |[0x80000640]:fnmadd.d ft11, ft9, fa1, ft1, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd ft11, 320(a5)<br>  |
|  22|[0x80004660]<br>0xEEDBEADFEEDBEADF|- rs1 : f26<br> - rs2 : f10<br> - rs3 : f3<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x1bebe7b21cd5f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x011af8e2b2a8d and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x2e5825f882ec1 and rm_val == 0  #nosat<br>                                                                                         |[0x80000660]:fnmadd.d ft9, fs10, fa0, ft3, dyn<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:fsd ft9, 336(a5)<br>   |
|  23|[0x80004670]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f25<br> - rs2 : f31<br> - rs3 : f5<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xeea576108affb and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xed04e711db0e1 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x733a2576cd48d and rm_val == 0  #nosat<br>                                                                                         |[0x80000680]:fnmadd.d fs11, fs9, ft11, ft5, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsd fs11, 352(a5)<br> |
|  24|[0x80004680]<br>0x0000000080003000|- rs1 : f24<br> - rs2 : f3<br> - rs3 : f12<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x4c791addc9912 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x97b02f6ed223f and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xf6a95c1bb8ef7 and rm_val == 0  #nosat<br>                                                                                          |[0x800006a0]:fnmadd.d ft6, fs8, ft3, fa2, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd ft6, 368(a5)<br>    |
|  25|[0x80004690]<br>0x0000000080003010|- rs1 : f27<br> - rs2 : f22<br> - rs3 : f29<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x56eb5abeef1c8 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x78842cac09a97 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xf12b1fbe2cab1 and rm_val == 0  #nosat<br>                                                                                        |[0x800006c0]:fnmadd.d fa6, fs11, fs6, ft9, dyn<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:fsd fa6, 384(a5)<br>   |
|  26|[0x800046a0]<br>0x0000000A00006000|- rs1 : f20<br> - rs2 : f1<br> - rs3 : f18<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x670e7d1c3c471 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x62964c066279b and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x1d2f4ea5729a9 and rm_val == 0  #nosat<br>                                                                                          |[0x800006e0]:fnmadd.d ft2, fs4, ft1, fs2, dyn<br> [0x800006e4]:csrrs a7, fflags, zero<br> [0x800006e8]:fsd ft2, 400(a5)<br>    |
|  27|[0x800046b0]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f5<br> - rs2 : f9<br> - rs3 : f6<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9889fc2d44e5e and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x21d9040c119bf and fs3 == 1 and fe3 == 0x7ef and fm3 == 0xff9140e19d949 and rm_val == 0  #nosat<br>                                                                                           |[0x80000700]:fnmadd.d fs4, ft5, fs1, ft6, dyn<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:fsd fs4, 416(a5)<br>    |
|  28|[0x800046c0]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f0<br> - rs2 : f30<br> - rs3 : f22<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd486b68b34be3 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x3cc532c905347 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x7a850c645ac99 and rm_val == 0  #nosat<br>                                                                                         |[0x80000720]:fnmadd.d fa1, ft0, ft10, fs6, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd fa1, 432(a5)<br>   |
|  29|[0x800046d0]<br>0xADFEEDBEADFEEDBE|- rs1 : f30<br> - rs2 : f28<br> - rs3 : f13<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x06933c1e52e8b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdff0d9faf6b37 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x9d702d38e63e4 and rm_val == 0  #nosat<br>                                                                                         |[0x80000740]:fnmadd.d fs1, ft10, ft8, fa3, dyn<br> [0x80000744]:csrrs a7, fflags, zero<br> [0x80000748]:fsd fs1, 448(a5)<br>   |
|  30|[0x800046e0]<br>0xFEEDBEADFEEDBEAD|- rs1 : f4<br> - rs2 : f24<br> - rs3 : f28<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x7a1eff83f19af and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xbb68e4e714e57 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x46b0821802661 and rm_val == 0  #nosat<br>                                                                                          |[0x80000760]:fnmadd.d ft1, ft4, fs8, ft8, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsd ft1, 464(a5)<br>    |
|  31|[0x800046f0]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f28<br> - rs2 : f23<br> - rs3 : f11<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd17c6c95aefed and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xa5ac383168515 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x24455c7728a26 and rm_val == 0  #nosat<br>                                                                                         |[0x80000780]:fnmadd.d ft7, ft8, fs7, fa1, dyn<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:fsd ft7, 480(a5)<br>    |
|  32|[0x80004700]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f11<br> - rs2 : f5<br> - rs3 : f27<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0xf849379fb9b6b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xfa550bd9aed1a and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0xcb0130986796b and rm_val == 0  #nosat<br>                                                                                         |[0x800007a0]:fnmadd.d ft8, fa1, ft5, fs11, dyn<br> [0x800007a4]:csrrs a7, fflags, zero<br> [0x800007a8]:fsd ft8, 496(a5)<br>   |
|  33|[0x80004710]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x31f03f05cb87a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x2d0e69e0aad85 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x14c78561793cb and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800007c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:fsd fa3, 512(a5)<br>    |
|  34|[0x80004720]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x3d2d3af7c48ae and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x447163c5b6799 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x7157ca9ebcb4a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800007e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007e4]:csrrs a7, fflags, zero<br> [0x800007e8]:fsd fa3, 528(a5)<br>    |
|  35|[0x80004730]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfea4d203770af and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x91b7d2621f217 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x273d98180e11c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000800]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa3, 544(a5)<br>    |
|  36|[0x80004740]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x894eb52d7a53a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x3883363d45ce5 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x4ec9f86f5cd83 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000820]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000824]:csrrs a7, fflags, zero<br> [0x80000828]:fsd fa3, 560(a5)<br>    |
|  37|[0x80004750]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0bc55b64ea25c and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb0d4dc0773572 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x2ee34f1961391 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000840]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsd fa3, 576(a5)<br>    |
|  38|[0x80004760]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xb8178fb8c7f25 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x8ebf551167019 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x844270f80e92d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000860]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000864]:csrrs a7, fflags, zero<br> [0x80000868]:fsd fa3, 592(a5)<br>    |
|  39|[0x80004770]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0xf959d372fdf5f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x26ffb22d6ee1f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x0d733a9338e84 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000880]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000884]:csrrs a7, fflags, zero<br> [0x80000888]:fsd fa3, 608(a5)<br>    |
|  40|[0x80004780]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x588877f85511b and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x7dbc6852f0d29 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xc61c354c7f4da and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800008a0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008a4]:csrrs a7, fflags, zero<br> [0x800008a8]:fsd fa3, 624(a5)<br>    |
|  41|[0x80004790]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xf8cb3cb5140d7 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xebb37bba609a7 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x866521dedcf77 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800008c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008c4]:csrrs a7, fflags, zero<br> [0x800008c8]:fsd fa3, 640(a5)<br>    |
|  42|[0x800047a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xae7cb22e21faf and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x002e328b68fcd and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x21358514700b7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800008e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa3, 656(a5)<br>    |
|  43|[0x800047b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x2339bac8ac55f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xa27ff454d2247 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x29c95c6687c75 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000900]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000904]:csrrs a7, fflags, zero<br> [0x80000908]:fsd fa3, 672(a5)<br>    |
|  44|[0x800047c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x43f16419df5f9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xda33f11fe6a09 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x488b8623cffd3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000920]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:fsd fa3, 688(a5)<br>    |
|  45|[0x800047d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x237c293c04d53 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x468e8279a5120 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xabcf67ab47356 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000940]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000944]:csrrs a7, fflags, zero<br> [0x80000948]:fsd fa3, 704(a5)<br>    |
|  46|[0x800047e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xe4e789d337d77 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xaac467660ea9f and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x18e38211353ef and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000960]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000964]:csrrs a7, fflags, zero<br> [0x80000968]:fsd fa3, 720(a5)<br>    |
|  47|[0x800047f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x85eb50a9b65e8 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xbee6f48112ca9 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x06857d17f9e6d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000980]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000984]:csrrs a7, fflags, zero<br> [0x80000988]:fsd fa3, 736(a5)<br>    |
|  48|[0x80004800]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x6fcb8489dc591 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd5d579f837c3e and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x3dcb317858039 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800009a0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009a4]:csrrs a7, fflags, zero<br> [0x800009a8]:fsd fa3, 752(a5)<br>    |
|  49|[0x80004810]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x0435cbf7ce303 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0xcb3c58d58b2bf and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x3b439dc268d31 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800009c0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa3, 768(a5)<br>    |
|  50|[0x80004820]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc9815c3b1adfc and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x7dd98b509becf and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x4e7f68bcdab8b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800009e0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009e4]:csrrs a7, fflags, zero<br> [0x800009e8]:fsd fa3, 784(a5)<br>    |
|  51|[0x80004830]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xea594439af755 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x6a7fe63869fed and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x00525eda1d5a7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000a00]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsd fa3, 800(a5)<br>    |
|  52|[0x80004840]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x7840b0a77fbbb and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x94a97c3df3b51 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x5d58bc2e4fd7f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000a20]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a24]:csrrs a7, fflags, zero<br> [0x80000a28]:fsd fa3, 816(a5)<br>    |
|  53|[0x80004850]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2a9ac14416973 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x3eb682e8c47fa and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x368985dc4dee6 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000a40]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a44]:csrrs a7, fflags, zero<br> [0x80000a48]:fsd fa3, 832(a5)<br>    |
|  54|[0x80004860]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xdf0325e8750cf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x81cf3ffe0cb08 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x652cb8a3f1229 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000a60]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a64]:csrrs a7, fflags, zero<br> [0x80000a68]:fsd fa3, 848(a5)<br>    |
|  55|[0x80004870]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x7c30cfd9902ca and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x8083feedaf3d3 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x0ade42dab32c4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000a80]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a84]:csrrs a7, fflags, zero<br> [0x80000a88]:fsd fa3, 864(a5)<br>    |
|  56|[0x80004880]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x01559da52cc50 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x61457deedafab and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x5a04d43f6744e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000aa0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa3, 880(a5)<br>    |
|  57|[0x80004890]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x5e77a2a3ef6e5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc1d568ee159cf and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x28828379b625d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ac0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ac4]:csrrs a7, fflags, zero<br> [0x80000ac8]:fsd fa3, 896(a5)<br>    |
|  58|[0x800048a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x440c579831418 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x99ddc9e77cb45 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xd908ada8b9c0d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ae0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:fsd fa3, 912(a5)<br>    |
|  59|[0x800048b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x97170988aa151 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xdd895344c54d7 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x575700b04d303 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000b00]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b04]:csrrs a7, fflags, zero<br> [0x80000b08]:fsd fa3, 928(a5)<br>    |
|  60|[0x800048c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5b608176286de and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x7ec25e17b909b and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x602a93732cb46 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000b20]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b24]:csrrs a7, fflags, zero<br> [0x80000b28]:fsd fa3, 944(a5)<br>    |
|  61|[0x800048d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x97c657c682e1f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xe719a478092fb and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xcd7a17c66ca93 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000b40]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b44]:csrrs a7, fflags, zero<br> [0x80000b48]:fsd fa3, 960(a5)<br>    |
|  62|[0x800048e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x477c4d4dd15f5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdbfa105179648 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x93c3240340b2a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000b60]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b64]:csrrs a7, fflags, zero<br> [0x80000b68]:fsd fa3, 976(a5)<br>    |
|  63|[0x800048f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xca057fc89126a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd7eea06dfbab7 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x3063b52602e9f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000b80]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa3, 992(a5)<br>    |
|  64|[0x80004900]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x54fc797f61a47 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc49dffef48af1 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x85743659b13a8 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ba0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ba4]:csrrs a7, fflags, zero<br> [0x80000ba8]:fsd fa3, 1008(a5)<br>   |
|  65|[0x80004910]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x46086cad941b7 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x3cf8a4ab5f917 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x26291110ad9f3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000bc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000bc4]:csrrs a7, fflags, zero<br> [0x80000bc8]:fsd fa3, 1024(a5)<br>   |
|  66|[0x80004920]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa321af726492d and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x8450b36da4f99 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xb1c82278f55e9 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000be0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000be4]:csrrs a7, fflags, zero<br> [0x80000be8]:fsd fa3, 1040(a5)<br>   |
|  67|[0x80004930]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x1c256e07d7b03 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xea5ed10729949 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x2e9cf17e1c104 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000c00]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c04]:csrrs a7, fflags, zero<br> [0x80000c08]:fsd fa3, 1056(a5)<br>   |
|  68|[0x80004940]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xdd01ebf317c47 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xd484e5c7d8c61 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x0ce829748d56f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000c20]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c24]:csrrs a7, fflags, zero<br> [0x80000c28]:fsd fa3, 1072(a5)<br>   |
|  69|[0x80004950]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9881bee04c84c and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x41f756c5b46c8 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x5006cf149aed7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000c40]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c44]:csrrs a7, fflags, zero<br> [0x80000c48]:fsd fa3, 1088(a5)<br>   |
|  70|[0x80004960]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x908348cc50075 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x0f993cf648277 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x893f7fe0be35f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000c60]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa3, 1104(a5)<br>   |
|  71|[0x80004970]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xae70dafae96a3 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x7cb7e10454cbf and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x05638ab21778b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000c80]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c84]:csrrs a7, fflags, zero<br> [0x80000c88]:fsd fa3, 1120(a5)<br>   |
|  72|[0x80004980]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x97787813faa38 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4e8baea923265 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x72dedcdfdeaae and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ca0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsd fa3, 1136(a5)<br>   |
|  73|[0x80004990]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa613e194097b8 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x377828aab6e99 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xa6b75a2599da0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000cc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000cc4]:csrrs a7, fflags, zero<br> [0x80000cc8]:fsd fa3, 1152(a5)<br>   |
|  74|[0x800049a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x13bf56ad82c8a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd453f7d35f923 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x0f938d0012b4a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ce0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ce4]:csrrs a7, fflags, zero<br> [0x80000ce8]:fsd fa3, 1168(a5)<br>   |
|  75|[0x800049b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x3bd530bfc7921 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4c524788895e4 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x302ba08bafbad and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000d00]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d04]:csrrs a7, fflags, zero<br> [0x80000d08]:fsd fa3, 1184(a5)<br>   |
|  76|[0x800049c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x87814b483b2ff and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc56d7d1a2a465 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x444426e72046b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000d20]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d24]:csrrs a7, fflags, zero<br> [0x80000d28]:fsd fa3, 1200(a5)<br>   |
|  77|[0x800049d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xef0f52001dd13 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x774135045aad3 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x1705e64f208a1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000d40]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa3, 1216(a5)<br>   |
|  78|[0x800049e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2de4ff93f2d49 and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x54cb8485c10ff and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x38f4ff02f8ed1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000d60]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d64]:csrrs a7, fflags, zero<br> [0x80000d68]:fsd fa3, 1232(a5)<br>   |
|  79|[0x800049f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x4cf1937fde173 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x86d2c67f038bd and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x743c2409eb867 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000d80]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:fsd fa3, 1248(a5)<br>   |
|  80|[0x80004a00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x932903b557086 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xba615dee0d545 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x8b52241b8e024 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000da0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000da4]:csrrs a7, fflags, zero<br> [0x80000da8]:fsd fa3, 1264(a5)<br>   |
|  81|[0x80004a10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9199ba7fdacbd and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x9e32e020ad6fd and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x10179abe8eb1b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000dc0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000dc4]:csrrs a7, fflags, zero<br> [0x80000dc8]:fsd fa3, 1280(a5)<br>   |
|  82|[0x80004a20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x820702d63fac0 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x63bca2c276bab and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xd57035175d798 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000de0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000de4]:csrrs a7, fflags, zero<br> [0x80000de8]:fsd fa3, 1296(a5)<br>   |
|  83|[0x80004a30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x017c339d75e4d and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0xc30407e58dcff and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xe9d605ec1e199 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000e00]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e04]:csrrs a7, fflags, zero<br> [0x80000e08]:fsd fa3, 1312(a5)<br>   |
|  84|[0x80004a40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x597fb1bb06230 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x56ed923aca873 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x252e9c09634b1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000e20]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa3, 1328(a5)<br>   |
|  85|[0x80004a50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x511a1344303ed and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x82640d65dc24c and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x79c8ee5480d1b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000e40]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e44]:csrrs a7, fflags, zero<br> [0x80000e48]:fsd fa3, 1344(a5)<br>   |
|  86|[0x80004a60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f2 and fm1 == 0x8e1a79f69deff and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xf112c2c43eca3 and fs3 == 1 and fe3 == 0x7ee and fm3 == 0x6308e242db948 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000e64]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e68]:csrrs a7, fflags, zero<br> [0x80000e6c]:fsd fa3, 1360(a5)<br>   |
|  87|[0x80004a70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xa3d5b9f8ee473 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xeefde430a673b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xb3727ee3c0285 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000e84]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e88]:csrrs a7, fflags, zero<br> [0x80000e8c]:fsd fa3, 1376(a5)<br>   |
|  88|[0x80004a80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x03c79a41b870f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x21d7278b1bb7f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xaf7fd02c04bab and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ea4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ea8]:csrrs a7, fflags, zero<br> [0x80000eac]:fsd fa3, 1392(a5)<br>   |
|  89|[0x80004a90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x1a5d3a022c06b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x39827e2b6fc0e and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xf00286babe74d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ec4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ec8]:csrrs a7, fflags, zero<br> [0x80000ecc]:fsd fa3, 1408(a5)<br>   |
|  90|[0x80004aa0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x2c2600e5225e4 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x882e3a7d63c53 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x9ecbb9e89d747 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ee4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa3, 1424(a5)<br>   |
|  91|[0x80004ab0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x88b452334d482 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x98a767463fb7b and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x115b37a3f916a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000f04]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f08]:csrrs a7, fflags, zero<br> [0x80000f0c]:fsd fa3, 1440(a5)<br>   |
|  92|[0x80004ac0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc4f4bdbe3ee53 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x9b7932c7ac007 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x4a76956747dfc and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000f24]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f28]:csrrs a7, fflags, zero<br> [0x80000f2c]:fsd fa3, 1456(a5)<br>   |
|  93|[0x80004ad0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x757c41e46ee0f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x367fd258b0b63 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xaf8d402ed4d82 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000f44]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f48]:csrrs a7, fflags, zero<br> [0x80000f4c]:fsd fa3, 1472(a5)<br>   |
|  94|[0x80004ae0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa1d3ea060b239 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x18c773392efff and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xbd433bf0d5f95 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000f64]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f68]:csrrs a7, fflags, zero<br> [0x80000f6c]:fsd fa3, 1488(a5)<br>   |
|  95|[0x80004af0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6c53c0ba0796d and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc43588ddd7fbc and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x097bba91bea78 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000f84]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f88]:csrrs a7, fflags, zero<br> [0x80000f8c]:fsd fa3, 1504(a5)<br>   |
|  96|[0x80004b00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x45088c7a8eddc and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x7c4c7501c707f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x6194442f94d73 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000fa4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fa8]:csrrs a7, fflags, zero<br> [0x80000fac]:fsd fa3, 1520(a5)<br>   |
|  97|[0x80004b10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x9c63a6687c333 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x557d56987bca8 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x0febcf30a99f7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000fc4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa3, 1536(a5)<br>   |
|  98|[0x80004b20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb442f12e7354a and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xcccc36886926f and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x3e473b72c36be and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000fe4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fe8]:csrrs a7, fflags, zero<br> [0x80000fec]:fsd fa3, 1552(a5)<br>   |
|  99|[0x80004b30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x7dc0f47a5db15 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5124f30535e0b and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xbad4e8fb1eecb and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001004]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001008]:csrrs a7, fflags, zero<br> [0x8000100c]:fsd fa3, 1568(a5)<br>   |
| 100|[0x80004b40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe3d6d32e17fa5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xec884da30b843 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x35b03f15411b2 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001024]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001028]:csrrs a7, fflags, zero<br> [0x8000102c]:fsd fa3, 1584(a5)<br>   |
| 101|[0x80004b50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6bc16c6eccc22 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdf93331a60977 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x22879c38e45b3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001044]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001048]:csrrs a7, fflags, zero<br> [0x8000104c]:fsd fa3, 1600(a5)<br>   |
| 102|[0x80004b60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x053533036dba9 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xee098e2310cc3 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x6219989c7d7f0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001064]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001068]:csrrs a7, fflags, zero<br> [0x8000106c]:fsd fa3, 1616(a5)<br>   |
| 103|[0x80004b70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x30b95bd887309 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc37d95ef26f70 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x3d316c619258e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001084]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001088]:csrrs a7, fflags, zero<br> [0x8000108c]:fsd fa3, 1632(a5)<br>   |
| 104|[0x80004b80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x287a907776fa3 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc3c58b5c03e1d and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x0d4a450d85abf and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800010a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa3, 1648(a5)<br>   |
| 105|[0x80004b90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfd8213d6f2891 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x90cd3970eae8a and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x39c8bbd2038aa and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800010c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010c8]:csrrs a7, fflags, zero<br> [0x800010cc]:fsd fa3, 1664(a5)<br>   |
| 106|[0x80004ba0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd800e87943f0d and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x680debcf012e2 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xd214a37f370b3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800010e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010e8]:csrrs a7, fflags, zero<br> [0x800010ec]:fsd fa3, 1680(a5)<br>   |
| 107|[0x80004bb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6e444c20e8184 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x076f4d15b455d and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x6518d4f3d8693 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001104]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001108]:csrrs a7, fflags, zero<br> [0x8000110c]:fsd fa3, 1696(a5)<br>   |
| 108|[0x80004bc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x82f53e1b1e100 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x89d942a85e30f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xc36797b0fd88d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001124]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001128]:csrrs a7, fflags, zero<br> [0x8000112c]:fsd fa3, 1712(a5)<br>   |
| 109|[0x80004bd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xcb0a304fe19bf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x14eff5bf25de3 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xe4273c7307d4f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001144]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001148]:csrrs a7, fflags, zero<br> [0x8000114c]:fsd fa3, 1728(a5)<br>   |
| 110|[0x80004be0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5cb9025515212 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc160cd96157af and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xd2735b02a4775 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001164]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001168]:csrrs a7, fflags, zero<br> [0x8000116c]:fsd fa3, 1744(a5)<br>   |
| 111|[0x80004bf0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2f7ee631fefc5 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xda8557b559e8b and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xd5f14b55eb8d9 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001184]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa3, 1760(a5)<br>   |
| 112|[0x80004c00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfa2ea1f3d3ef9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4bd16a0267938 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x7234e530ad7c1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800011a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011a8]:csrrs a7, fflags, zero<br> [0x800011ac]:fsd fa3, 1776(a5)<br>   |
| 113|[0x80004c10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x11c62f98de3bf and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x60de25d29e92f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x65a66d3982040 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800011c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011c8]:csrrs a7, fflags, zero<br> [0x800011cc]:fsd fa3, 1792(a5)<br>   |
| 114|[0x80004c20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfed8d422e59b9 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x2c08bdce69f77 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xa81f1c102123e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800011e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa3, 1808(a5)<br>   |
| 115|[0x80004c30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa2bda964d91ae and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x89000c246f107 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xb3dbf0af6d297 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001204]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001208]:csrrs a7, fflags, zero<br> [0x8000120c]:fsd fa3, 1824(a5)<br>   |
| 116|[0x80004c40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5bb8442cbfc28 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd65025c565597 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xfa8cd783f460a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001224]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001228]:csrrs a7, fflags, zero<br> [0x8000122c]:fsd fa3, 1840(a5)<br>   |
| 117|[0x80004c50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf4853a4c5bef9 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x09a18dc6373ff and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x72b9fba4041c7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001244]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001248]:csrrs a7, fflags, zero<br> [0x8000124c]:fsd fa3, 1856(a5)<br>   |
| 118|[0x80004c60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xac08ec2b88c86 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x2fe2d0b2849b1 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x38e5397520280 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001264]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001268]:csrrs a7, fflags, zero<br> [0x8000126c]:fsd fa3, 1872(a5)<br>   |
| 119|[0x80004c70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe8ce066e96229 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x9bd3c29ad0568 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x7bd01baa868ed and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001284]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001288]:csrrs a7, fflags, zero<br> [0x8000128c]:fsd fa3, 1888(a5)<br>   |
| 120|[0x80004c80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x1365a93dfa50f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x0d77af376928b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xac528ba1d3993 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800012a4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012a8]:csrrs a7, fflags, zero<br> [0x800012ac]:fsd fa3, 1904(a5)<br>   |
| 121|[0x80004c90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x6e2aa97ad4287 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xd4012b921b92d and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x2d04b374e9aab and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800012c4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa3, 1920(a5)<br>   |
| 122|[0x80004ca0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x8deeb902c377e and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7270fced2be29 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xaf46dd23cda76 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800012e4]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012e8]:csrrs a7, fflags, zero<br> [0x800012ec]:fsd fa3, 1936(a5)<br>   |
| 123|[0x80004cb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x62a35ac6bee41 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x942c54f20963f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xd07bff3a622c5 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001304]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001308]:csrrs a7, fflags, zero<br> [0x8000130c]:fsd fa3, 1952(a5)<br>   |
| 124|[0x80004cc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb33c7d55682c1 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x48300cd907da9 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x115b5ea65817a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001324]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001328]:csrrs a7, fflags, zero<br> [0x8000132c]:fsd fa3, 1968(a5)<br>   |
| 125|[0x80004cd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xf29a9c82218e7 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xf2c5343ef46b7 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x0669be5ed3685 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001344]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001348]:csrrs a7, fflags, zero<br> [0x8000134c]:fsd fa3, 1984(a5)<br>   |
| 126|[0x80004ce0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xda577e11e08d7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x81d54dd6137b5 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xf2aa1ecb04f9c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001364]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001368]:csrrs a7, fflags, zero<br> [0x8000136c]:fsd fa3, 2000(a5)<br>   |
| 127|[0x80004cf0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x89f3951da2feb and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x24a28f97e5b1f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x39610959296ec and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001384]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001388]:csrrs a7, fflags, zero<br> [0x8000138c]:fsd fa3, 2016(a5)<br>   |
| 128|[0x80004d00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xdedbc42e4ee38 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x398aa070366df and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x0152356c26a6b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800013ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013b0]:csrrs a7, fflags, zero<br> [0x800013b4]:fsd fa3, 0(a5)<br>      |
| 129|[0x80004d10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x2e3db402ba61f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x232f190317157 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xd7fa045f8793f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800013cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013d0]:csrrs a7, fflags, zero<br> [0x800013d4]:fsd fa3, 16(a5)<br>     |
| 130|[0x80004d20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf1860e3b4eb81 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xaa7d58e3b9047 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x49366e3f9dbbd and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800013ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013f0]:csrrs a7, fflags, zero<br> [0x800013f4]:fsd fa3, 32(a5)<br>     |
| 131|[0x80004d30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f5 and fm1 == 0x0197267f1985f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xce41f387adc6f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x4812b6bf8d6c3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000140c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001410]:csrrs a7, fflags, zero<br> [0x80001414]:fsd fa3, 48(a5)<br>     |
| 132|[0x80004d40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x3943b61964e33 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xae64a7b19f21e and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xb871d605df6ba and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000142c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001430]:csrrs a7, fflags, zero<br> [0x80001434]:fsd fa3, 64(a5)<br>     |
| 133|[0x80004d50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f5 and fm1 == 0x3832e6fea9a3f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5ee10a5a625fc and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xd731b74a534ea and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000144c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001450]:csrrs a7, fflags, zero<br> [0x80001454]:fsd fa3, 80(a5)<br>     |
| 134|[0x80004d60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2887dc585eda5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xf79012fbad378 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x9033b38fd9d06 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000146c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001470]:csrrs a7, fflags, zero<br> [0x80001474]:fsd fa3, 96(a5)<br>     |
| 135|[0x80004d70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x09d5da3d7b9db and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd7c8570796fe8 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x8a804749eca98 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000148c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001490]:csrrs a7, fflags, zero<br> [0x80001494]:fsd fa3, 112(a5)<br>    |
| 136|[0x80004d80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x802693539b05f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x9af59f9eb5168 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xa53ffa5a270dc and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800014ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014b0]:csrrs a7, fflags, zero<br> [0x800014b4]:fsd fa3, 128(a5)<br>    |
| 137|[0x80004d90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xac0c7cf6e58fb and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x0cd5422534b0d and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x097bf15fcaf48 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800014cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014d0]:csrrs a7, fflags, zero<br> [0x800014d4]:fsd fa3, 144(a5)<br>    |
| 138|[0x80004da0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x05e381015d598 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x2982d565d88fc and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x3ff2ba26b011d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800014ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014f0]:csrrs a7, fflags, zero<br> [0x800014f4]:fsd fa3, 160(a5)<br>    |
| 139|[0x80004db0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xed1da04d72f12 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7536733396cf8 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x01ad09ae1295b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000150c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001510]:csrrs a7, fflags, zero<br> [0x80001514]:fsd fa3, 176(a5)<br>    |
| 140|[0x80004dc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x48949a9851f6d and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xb318d9af479ef and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x0a2ea67ab4e6e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000152c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001530]:csrrs a7, fflags, zero<br> [0x80001534]:fsd fa3, 192(a5)<br>    |
| 141|[0x80004dd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0a9df4ead8eb3 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xdb8c7d3a18027 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x4455b0e11d60e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000154c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001550]:csrrs a7, fflags, zero<br> [0x80001554]:fsd fa3, 208(a5)<br>    |
| 142|[0x80004de0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x743ea0c02659b and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xda2a011aeffab and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xa3aa8637b0e8c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000156c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001570]:csrrs a7, fflags, zero<br> [0x80001574]:fsd fa3, 224(a5)<br>    |
| 143|[0x80004df0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x7291f0459edd6 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xed4ae61a16dab and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x88a6f73f25521 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000158c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001590]:csrrs a7, fflags, zero<br> [0x80001594]:fsd fa3, 240(a5)<br>    |
| 144|[0x80004e00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x22cfa989fca0f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xa2892d94829ad and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x08274724f19ab and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800015ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015b0]:csrrs a7, fflags, zero<br> [0x800015b4]:fsd fa3, 256(a5)<br>    |
| 145|[0x80004e10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xb12b5923ada87 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x0d68c4b00b1ad and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xca0ee02ad1bc6 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800015cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015d0]:csrrs a7, fflags, zero<br> [0x800015d4]:fsd fa3, 272(a5)<br>    |
| 146|[0x80004e20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x99b4caa7ee21f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x6b435c9707703 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x6d474fad8ee6d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800015ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015f0]:csrrs a7, fflags, zero<br> [0x800015f4]:fsd fa3, 288(a5)<br>    |
| 147|[0x80004e30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x00ccac0a4b811 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x2eb6a94e9ae19 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xed311f5a05e8b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000160c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:fsd fa3, 304(a5)<br>    |
| 148|[0x80004e40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfd32694fcaecb and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xdc1b3eb6c004b and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x560832458212e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000162c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001630]:csrrs a7, fflags, zero<br> [0x80001634]:fsd fa3, 320(a5)<br>    |
| 149|[0x80004e50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x043a8c3aa6439 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xf788de2d51675 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xeefe93994c491 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000164c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001650]:csrrs a7, fflags, zero<br> [0x80001654]:fsd fa3, 336(a5)<br>    |
| 150|[0x80004e60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x4a10e22bb3b33 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x88b104e822b8f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x9dec6c0993cbd and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000166c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001670]:csrrs a7, fflags, zero<br> [0x80001674]:fsd fa3, 352(a5)<br>    |
| 151|[0x80004e70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x1fe2d6aba9e77 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0xd126610309c1f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x0e51db551c107 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000168c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001690]:csrrs a7, fflags, zero<br> [0x80001694]:fsd fa3, 368(a5)<br>    |
| 152|[0x80004e80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xadd465d39fd03 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x2774cd9885b7f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x826e9daaa7e48 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800016ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016b0]:csrrs a7, fflags, zero<br> [0x800016b4]:fsd fa3, 384(a5)<br>    |
| 153|[0x80004e90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xeb61e2d5d3c7a and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x095092a183e33 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x98f4fb01003a1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800016cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016d0]:csrrs a7, fflags, zero<br> [0x800016d4]:fsd fa3, 400(a5)<br>    |
| 154|[0x80004ea0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x9262273e53737 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x07943814fd4f4 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xd9e255bfde29e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800016ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016f0]:csrrs a7, fflags, zero<br> [0x800016f4]:fsd fa3, 416(a5)<br>    |
| 155|[0x80004eb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xbfe0f0fcad936 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x0531d684ae65b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x6a22dab2e89da and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000170c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001710]:csrrs a7, fflags, zero<br> [0x80001714]:fsd fa3, 432(a5)<br>    |
| 156|[0x80004ec0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x43e5b36b50bcd and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xa1fe3e0c64717 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x7ed8026cc0461 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000172c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001730]:csrrs a7, fflags, zero<br> [0x80001734]:fsd fa3, 448(a5)<br>    |
| 157|[0x80004ed0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe4204ffab96f7 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xcde16617ec93f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x6aabd19d990c4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000174c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001750]:csrrs a7, fflags, zero<br> [0x80001754]:fsd fa3, 464(a5)<br>    |
| 158|[0x80004ee0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x82e62659b7f9b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb9927e27c836d and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x1c84f08b614c7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000176c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001770]:csrrs a7, fflags, zero<br> [0x80001774]:fsd fa3, 480(a5)<br>    |
| 159|[0x80004ef0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x882d3626badfd and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7ada4a02edef8 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x13f930a295467 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000178c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001790]:csrrs a7, fflags, zero<br> [0x80001794]:fsd fa3, 496(a5)<br>    |
| 160|[0x80004f00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x594e913e8fb89 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0xf8ce1a7792dff and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xed33518b28b93 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800017ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017b0]:csrrs a7, fflags, zero<br> [0x800017b4]:fsd fa3, 512(a5)<br>    |
| 161|[0x80004f10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x3b00ab682d289 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7c23aaefd9f67 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x0454e8106d5cf and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800017cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017d0]:csrrs a7, fflags, zero<br> [0x800017d4]:fsd fa3, 528(a5)<br>    |
| 162|[0x80004f20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x361bbef8877ab and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x291d98044bfbf and fs3 == 1 and fe3 == 0x7ef and fm3 == 0xe3cc0b403a893 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800017ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017f0]:csrrs a7, fflags, zero<br> [0x800017f4]:fsd fa3, 544(a5)<br>    |
| 163|[0x80004f30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x8ad1c84b735e1 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x61932b2d37baf and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x0f4a2e0ecd21d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000180c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001810]:csrrs a7, fflags, zero<br> [0x80001814]:fsd fa3, 560(a5)<br>    |
| 164|[0x80004f40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x41c73bbc1b00b and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x784c0d85e9517 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x9006b360bbb6d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000182c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001830]:csrrs a7, fflags, zero<br> [0x80001834]:fsd fa3, 576(a5)<br>    |
| 165|[0x80004f50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f5 and fm1 == 0x5a7002fc1a6bf and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x05d39d105b541 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x4141940cdbe5f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000184c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001850]:csrrs a7, fflags, zero<br> [0x80001854]:fsd fa3, 592(a5)<br>    |
| 166|[0x80004f60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe8bc5f44515f5 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x9f3f7053b60bf and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x56c11a9ac3ca8 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000186c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001870]:csrrs a7, fflags, zero<br> [0x80001874]:fsd fa3, 608(a5)<br>    |
| 167|[0x80004f70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x6003243fdf57b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5874b6418015b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x007478669dfb8 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000188c]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001890]:csrrs a7, fflags, zero<br> [0x80001894]:fsd fa3, 624(a5)<br>    |
| 168|[0x80004f80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6f1586709a287 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x051aac3a28d5f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xfe1215b38304a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800018ac]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018b0]:csrrs a7, fflags, zero<br> [0x800018b4]:fsd fa3, 640(a5)<br>    |
| 169|[0x80004f90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xaf0f94f18e857 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc2db9cc3dd583 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x0e0f021498c48 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800018cc]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018d0]:csrrs a7, fflags, zero<br> [0x800018d4]:fsd fa3, 656(a5)<br>    |
| 170|[0x80004fa0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0b731e88bc69f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb5380491038ac and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x1c4d9d02a9b38 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800018ec]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018f0]:csrrs a7, fflags, zero<br> [0x800018f4]:fsd fa3, 672(a5)<br>    |
| 171|[0x80004fb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xd01c53aeb6daf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc04060fa9d235 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xc180d6f7bf402 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001910]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001914]:csrrs a7, fflags, zero<br> [0x80001918]:fsd fa3, 688(a5)<br>    |
| 172|[0x80004fc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0xe15a564c336ef and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4e4a35c32157e and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x901c20ed9614b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001930]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001934]:csrrs a7, fflags, zero<br> [0x80001938]:fsd fa3, 704(a5)<br>    |
| 173|[0x80004fd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd0b7f9b429ef3 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x87fe27ff3fe2f and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x36642e8a718b9 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001950]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001954]:csrrs a7, fflags, zero<br> [0x80001958]:fsd fa3, 720(a5)<br>    |
| 174|[0x80004fe0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x34bccd918d207 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xa40b77d5da767 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xb529a561abaf3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001970]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:fsd fa3, 736(a5)<br>    |
| 175|[0x80004ff0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0616a9d776586 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xde497aebca743 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x8d6d042a7b2d5 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001990]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001994]:csrrs a7, fflags, zero<br> [0x80001998]:fsd fa3, 752(a5)<br>    |
| 176|[0x80005000]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x2d0716da06e3c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x3f541e5d8f1c1 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xc587a9879e0e4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800019b0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019b4]:csrrs a7, fflags, zero<br> [0x800019b8]:fsd fa3, 768(a5)<br>    |
| 177|[0x80005010]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x022ce6a3fae64 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x09163be078882 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xb97cfd1ddcd50 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800019d0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019d4]:csrrs a7, fflags, zero<br> [0x800019d8]:fsd fa3, 784(a5)<br>    |
| 178|[0x80005020]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x3cfe1da6d26d5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xea2b5073270ea and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x02e59388b7142 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800019f0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019f4]:csrrs a7, fflags, zero<br> [0x800019f8]:fsd fa3, 800(a5)<br>    |
| 179|[0x80005030]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd0dd93a77236c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x1292a3e2f1241 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xdc7f988e257eb and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001a10]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a14]:csrrs a7, fflags, zero<br> [0x80001a18]:fsd fa3, 816(a5)<br>    |
| 180|[0x80005040]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x4c7591e8478db and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x662e40f571128 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x0f34120631a8e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001a30]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a34]:csrrs a7, fflags, zero<br> [0x80001a38]:fsd fa3, 832(a5)<br>    |
| 181|[0x80005050]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x72925e5d38221 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xf2498354565a7 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xb8a466da78c70 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001a50]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a54]:csrrs a7, fflags, zero<br> [0x80001a58]:fsd fa3, 848(a5)<br>    |
| 182|[0x80005060]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd81392ace6303 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x22aa3d2e74e72 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x01531068b1eb0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001a70]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a74]:csrrs a7, fflags, zero<br> [0x80001a78]:fsd fa3, 864(a5)<br>    |
| 183|[0x80005070]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x6a6b1b54b21cf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc405091d199ee and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x2fea59eb04bf2 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001a90]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a94]:csrrs a7, fflags, zero<br> [0x80001a98]:fsd fa3, 880(a5)<br>    |
| 184|[0x80005080]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd98396dfe04dc and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x006e3d60fc2f8 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xb25b0d9cfb0d4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001ab0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ab4]:csrrs a7, fflags, zero<br> [0x80001ab8]:fsd fa3, 896(a5)<br>    |
| 185|[0x80005090]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd87aff53d41f5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x0f8ac8cffe63e and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x755f29a7401bf and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001ad0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ad4]:csrrs a7, fflags, zero<br> [0x80001ad8]:fsd fa3, 912(a5)<br>    |
| 186|[0x800050a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x4a1b2df4767ef and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x820cd259975cf and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xaae748b7801c0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001af0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001af4]:csrrs a7, fflags, zero<br> [0x80001af8]:fsd fa3, 928(a5)<br>    |
| 187|[0x800050b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x6a47222e524ad and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xf6428fb6f94fe and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x5c9dbcae3a532 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001b10]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b14]:csrrs a7, fflags, zero<br> [0x80001b18]:fsd fa3, 944(a5)<br>    |
| 188|[0x800050c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd02d0afa24812 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x8698ed174ff65 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x3ce2f4063213b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001b30]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b34]:csrrs a7, fflags, zero<br> [0x80001b38]:fsd fa3, 960(a5)<br>    |
| 189|[0x800050d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc982355c85538 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x97f0ea9a89f82 and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x3c1db1578d26b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001b50]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b54]:csrrs a7, fflags, zero<br> [0x80001b58]:fsd fa3, 976(a5)<br>    |
| 190|[0x800050e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xff5373e0e112c and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x59556723d53e2 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x9797ced3a8004 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001b70]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b74]:csrrs a7, fflags, zero<br> [0x80001b78]:fsd fa3, 992(a5)<br>    |
| 191|[0x800050f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x4cf244963827f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x17f4cd829a48b and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x12f04c3afbb2d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001b90]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b94]:csrrs a7, fflags, zero<br> [0x80001b98]:fsd fa3, 1008(a5)<br>   |
| 192|[0x80005100]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x1efb36cb5b1e4 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xe394ab3b08c6b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x1584cfb43ffe2 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001bb0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bb4]:csrrs a7, fflags, zero<br> [0x80001bb8]:fsd fa3, 1024(a5)<br>   |
| 193|[0x80005110]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x8522a1b638e23 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc898a0b894837 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x08bd0eaaf93fa and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001bd0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bd4]:csrrs a7, fflags, zero<br> [0x80001bd8]:fsd fa3, 1040(a5)<br>   |
| 194|[0x80005120]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f5 and fm1 == 0xc1a812e98063f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xdc0d22f746bf5 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x139d86656d299 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001bf0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bf4]:csrrs a7, fflags, zero<br> [0x80001bf8]:fsd fa3, 1056(a5)<br>   |
| 195|[0x80005130]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xc787db4043bd9 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x12adb3735ac6d and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xfa5382456ff12 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001c10]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c14]:csrrs a7, fflags, zero<br> [0x80001c18]:fsd fa3, 1072(a5)<br>   |
| 196|[0x80005140]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xfd58fd60948f9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe61729d7cfd5e and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x755c52dea6fce and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001c30]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c34]:csrrs a7, fflags, zero<br> [0x80001c38]:fsd fa3, 1088(a5)<br>   |
| 197|[0x80005150]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xb9017651b96db and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x92fa0166dea3d and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x2b0743266244a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001c50]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c54]:csrrs a7, fflags, zero<br> [0x80001c58]:fsd fa3, 1104(a5)<br>   |
| 198|[0x80005160]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x36aeb78249790 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x299392ab99898 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xa256930644047 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001c70]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c74]:csrrs a7, fflags, zero<br> [0x80001c78]:fsd fa3, 1120(a5)<br>   |
| 199|[0x80005170]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x56e6e736a538e and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x3b881fa033e19 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x535ebad73a8a2 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001c90]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c94]:csrrs a7, fflags, zero<br> [0x80001c98]:fsd fa3, 1136(a5)<br>   |
| 200|[0x80005180]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x5ba2bcb8dc85f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xabc6824ad2440 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xf8360dcc13f8b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001cb0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cb4]:csrrs a7, fflags, zero<br> [0x80001cb8]:fsd fa3, 1152(a5)<br>   |
| 201|[0x80005190]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x38aee2c19215f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x912bfdff44ba7 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x0f8b22ffa1987 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001cd0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cd4]:csrrs a7, fflags, zero<br> [0x80001cd8]:fsd fa3, 1168(a5)<br>   |
| 202|[0x800051a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa56aface5eb97 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xabc379493ef0f and fs3 == 1 and fe3 == 0x7f7 and fm3 == 0x195528decc428 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001cf0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cf4]:csrrs a7, fflags, zero<br> [0x80001cf8]:fsd fa3, 1184(a5)<br>   |
| 203|[0x800051b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe68dd9c514393 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x878222f2318df and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x49adab20e349e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001d10]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d14]:csrrs a7, fflags, zero<br> [0x80001d18]:fsd fa3, 1200(a5)<br>   |
| 204|[0x800051c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x8e041c6437953 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x28d94e0280abc and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x7ba0482bd497e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001d30]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d34]:csrrs a7, fflags, zero<br> [0x80001d38]:fsd fa3, 1216(a5)<br>   |
| 205|[0x800051d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f5 and fm1 == 0xf59904d0ce0bf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x1a7baab01ceb9 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x4ca65e448b1e4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001d50]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d54]:csrrs a7, fflags, zero<br> [0x80001d58]:fsd fa3, 1232(a5)<br>   |
| 206|[0x800051e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x87dc8b1f4a7b7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xf9492e51e93d3 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0xdb5278636b311 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001d70]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d74]:csrrs a7, fflags, zero<br> [0x80001d78]:fsd fa3, 1248(a5)<br>   |
| 207|[0x800051f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x1ffb1e4665b2c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xe4206922dd131 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x5dc328d369ad9 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001d90]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d94]:csrrs a7, fflags, zero<br> [0x80001d98]:fsd fa3, 1264(a5)<br>   |
| 208|[0x80005200]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x97b629a826ff3 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x98715cd327a81 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x26980e77a2cb4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001db0]:fnmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001db4]:csrrs a7, fflags, zero<br> [0x80001db8]:fsd fa3, 1280(a5)<br>   |
