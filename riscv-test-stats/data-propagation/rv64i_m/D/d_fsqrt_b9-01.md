
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800027c0')]      |
| SIG_REGION                | [('0x80004e10', '0x80006600', '766 dwords')]      |
| COV_LABELS                | fsqrt_b9      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fsqrt_b9-01.S/ref.S    |
| Total Number of coverpoints| 455     |
| Total Coverpoints Hit     | 450      |
| Total Signature Updates   | 766      |
| STAT1                     | 383      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 383     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fsqrt.d', 'rs1 : f24', 'rd : f24', 'rs1 == rd', 'fs1 == 0 and fe1 == 0x369 and fm1 == 0x6d601ad376ab9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fsqrt.d fs8, fs8, dyn
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:fsd fs8, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80004e18]:0x0000000000000001




Last Coverpoint : ['rs1 : f29', 'rd : f22', 'rs1 != rd', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xd333333333333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d0]:fsqrt.d fs6, ft9, dyn
	-[0x800003d4]:csrrs a7, fflags, zero
	-[0x800003d8]:fsd fs6, 16(a5)
Current Store : [0x800003dc] : sd a7, 24(a5) -- Store: [0x80004e28]:0x0000000000000001




Last Coverpoint : ['rs1 : f2', 'rd : f19', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xccccccccccccc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fsqrt.d fs3, ft2, dyn
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:fsd fs3, 32(a5)
Current Store : [0x800003f4] : sd a7, 40(a5) -- Store: [0x80004e38]:0x0000000000000001




Last Coverpoint : ['rs1 : f12', 'rd : f8', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xd6db6db6db6db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fsqrt.d fs0, fa2, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fs0, 48(a5)
Current Store : [0x8000040c] : sd a7, 56(a5) -- Store: [0x80004e48]:0x0000000000000001




Last Coverpoint : ['rs1 : f4', 'rd : f21', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc924924924924 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fsqrt.d fs5, ft4, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsd fs5, 64(a5)
Current Store : [0x80000424] : sd a7, 72(a5) -- Store: [0x80004e58]:0x0000000000000001




Last Coverpoint : ['rs1 : f22', 'rd : f3', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xd111111111111 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fsqrt.d ft3, fs6, dyn
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:fsd ft3, 80(a5)
Current Store : [0x8000043c] : sd a7, 88(a5) -- Store: [0x80004e68]:0x0000000000000001




Last Coverpoint : ['rs1 : f11', 'rd : f20', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xceeeeeeeeeeee and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fsqrt.d fs4, fa1, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd fs4, 96(a5)
Current Store : [0x80000454] : sd a7, 104(a5) -- Store: [0x80004e78]:0x0000000000000001




Last Coverpoint : ['rs1 : f26', 'rd : f25', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xd99999999999a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000460]:fsqrt.d fs9, fs10, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd fs9, 112(a5)
Current Store : [0x8000046c] : sd a7, 120(a5) -- Store: [0x80004e88]:0x0000000000000001




Last Coverpoint : ['rs1 : f18', 'rd : f14', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc666666666666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000478]:fsqrt.d fa4, fs2, dyn
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:fsd fa4, 128(a5)
Current Store : [0x80000484] : sd a7, 136(a5) -- Store: [0x80004e98]:0x0000000000000001




Last Coverpoint : ['rs1 : f27', 'rd : f16', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdb6db6db6db6e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000490]:fsqrt.d fa6, fs11, dyn
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:fsd fa6, 144(a5)
Current Store : [0x8000049c] : sd a7, 152(a5) -- Store: [0x80004ea8]:0x0000000000000001




Last Coverpoint : ['rs1 : f10', 'rd : f12', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xcdb6db6db6db6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fsqrt.d fa2, fa0, dyn
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:fsd fa2, 160(a5)
Current Store : [0x800004b4] : sd a7, 168(a5) -- Store: [0x80004eb8]:0x0000000000000001




Last Coverpoint : ['rs1 : f16', 'rd : f4', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fsqrt.d ft4, fa6, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd ft4, 176(a5)
Current Store : [0x800004cc] : sd a7, 184(a5) -- Store: [0x80004ec8]:0x0000000000000001




Last Coverpoint : ['rs1 : f0', 'rd : f23', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xe000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d8]:fsqrt.d fs7, ft0, dyn
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:fsd fs7, 192(a5)
Current Store : [0x800004e4] : sd a7, 200(a5) -- Store: [0x80004ed8]:0x0000000000000001




Last Coverpoint : ['rs1 : f17', 'rd : f27', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fsqrt.d fs11, fa7, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd fs11, 208(a5)
Current Store : [0x800004fc] : sd a7, 216(a5) -- Store: [0x80004ee8]:0x0000000000000001




Last Coverpoint : ['rs1 : f21', 'rd : f1', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000508]:fsqrt.d ft1, fs5, dyn
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:fsd ft1, 224(a5)
Current Store : [0x80000514] : sd a7, 232(a5) -- Store: [0x80004ef8]:0x0000000000000001




Last Coverpoint : ['rs1 : f1', 'rd : f15', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000520]:fsqrt.d fa5, ft1, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd fa5, 240(a5)
Current Store : [0x8000052c] : sd a7, 248(a5) -- Store: [0x80004f08]:0x0000000000000001




Last Coverpoint : ['rs1 : f14', 'rd : f26', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000004 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000538]:fsqrt.d fs10, fa4, dyn
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:fsd fs10, 256(a5)
Current Store : [0x80000544] : sd a7, 264(a5) -- Store: [0x80004f18]:0x0000000000000001




Last Coverpoint : ['rs1 : f19', 'rd : f29', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000550]:fsqrt.d ft9, fs3, dyn
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:fsd ft9, 272(a5)
Current Store : [0x8000055c] : sd a7, 280(a5) -- Store: [0x80004f28]:0x0000000000000001




Last Coverpoint : ['rs1 : f13', 'rd : f0', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000008 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fsqrt.d ft0, fa3, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsd ft0, 288(a5)
Current Store : [0x80000574] : sd a7, 296(a5) -- Store: [0x80004f38]:0x0000000000000001




Last Coverpoint : ['rs1 : f3', 'rd : f13', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000580]:fsqrt.d fa3, ft3, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd fa3, 304(a5)
Current Store : [0x8000058c] : sd a7, 312(a5) -- Store: [0x80004f48]:0x0000000000000001




Last Coverpoint : ['rs1 : f28', 'rd : f7', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000010 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fsqrt.d ft7, ft8, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd ft7, 320(a5)
Current Store : [0x800005a4] : sd a7, 328(a5) -- Store: [0x80004f58]:0x0000000000000001




Last Coverpoint : ['rs1 : f15', 'rd : f18', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b0]:fsqrt.d fs2, fa5, dyn
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:fsd fs2, 336(a5)
Current Store : [0x800005bc] : sd a7, 344(a5) -- Store: [0x80004f68]:0x0000000000000001




Last Coverpoint : ['rs1 : f25', 'rd : f6', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000020 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fsqrt.d ft6, fs9, dyn
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:fsd ft6, 352(a5)
Current Store : [0x800005d4] : sd a7, 360(a5) -- Store: [0x80004f78]:0x0000000000000001




Last Coverpoint : ['rs1 : f30', 'rd : f2', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fsqrt.d ft2, ft10, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd ft2, 368(a5)
Current Store : [0x800005ec] : sd a7, 376(a5) -- Store: [0x80004f88]:0x0000000000000001




Last Coverpoint : ['rs1 : f8', 'rd : f5', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000040 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005f8]:fsqrt.d ft5, fs0, dyn
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:fsd ft5, 384(a5)
Current Store : [0x80000604] : sd a7, 392(a5) -- Store: [0x80004f98]:0x0000000000000001




Last Coverpoint : ['rs1 : f31', 'rd : f28', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fsqrt.d ft8, ft11, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsd ft8, 400(a5)
Current Store : [0x8000061c] : sd a7, 408(a5) -- Store: [0x80004fa8]:0x0000000000000001




Last Coverpoint : ['rs1 : f23', 'rd : f10', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000080 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000628]:fsqrt.d fa0, fs7, dyn
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:fsd fa0, 416(a5)
Current Store : [0x80000634] : sd a7, 424(a5) -- Store: [0x80004fb8]:0x0000000000000001




Last Coverpoint : ['rs1 : f6', 'rd : f17', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fsqrt.d fa7, ft6, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fa7, 432(a5)
Current Store : [0x8000064c] : sd a7, 440(a5) -- Store: [0x80004fc8]:0x0000000000000001




Last Coverpoint : ['rs1 : f20', 'rd : f30', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000100 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000658]:fsqrt.d ft10, fs4, dyn
	-[0x8000065c]:csrrs a7, fflags, zero
	-[0x80000660]:fsd ft10, 448(a5)
Current Store : [0x80000664] : sd a7, 456(a5) -- Store: [0x80004fd8]:0x0000000000000001




Last Coverpoint : ['rs1 : f7', 'rd : f11', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000670]:fsqrt.d fa1, ft7, dyn
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:fsd fa1, 464(a5)
Current Store : [0x8000067c] : sd a7, 472(a5) -- Store: [0x80004fe8]:0x0000000000000001




Last Coverpoint : ['rs1 : f9', 'rd : f31', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000688]:fsqrt.d ft11, fs1, dyn
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:fsd ft11, 480(a5)
Current Store : [0x80000694] : sd a7, 488(a5) -- Store: [0x80004ff8]:0x0000000000000001




Last Coverpoint : ['rs1 : f5', 'rd : f9', 'fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fsqrt.d fs1, ft5, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd fs1, 496(a5)
Current Store : [0x800006ac] : sd a7, 504(a5) -- Store: [0x80005008]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000400 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fsqrt.d fa1, fa0, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsd fa1, 512(a5)
Current Store : [0x800006c4] : sd a7, 520(a5) -- Store: [0x80005018]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006d0]:fsqrt.d fa1, fa0, dyn
	-[0x800006d4]:csrrs a7, fflags, zero
	-[0x800006d8]:fsd fa1, 528(a5)
Current Store : [0x800006dc] : sd a7, 536(a5) -- Store: [0x80005028]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fsqrt.d fa1, fa0, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd fa1, 544(a5)
Current Store : [0x800006f4] : sd a7, 552(a5) -- Store: [0x80005038]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000700]:fsqrt.d fa1, fa0, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:fsd fa1, 560(a5)
Current Store : [0x8000070c] : sd a7, 568(a5) -- Store: [0x80005048]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000001000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000718]:fsqrt.d fa1, fa0, dyn
	-[0x8000071c]:csrrs a7, fflags, zero
	-[0x80000720]:fsd fa1, 576(a5)
Current Store : [0x80000724] : sd a7, 584(a5) -- Store: [0x80005058]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000730]:fsqrt.d fa1, fa0, dyn
	-[0x80000734]:csrrs a7, fflags, zero
	-[0x80000738]:fsd fa1, 592(a5)
Current Store : [0x8000073c] : sd a7, 600(a5) -- Store: [0x80005068]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000002000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000748]:fsqrt.d fa1, fa0, dyn
	-[0x8000074c]:csrrs a7, fflags, zero
	-[0x80000750]:fsd fa1, 608(a5)
Current Store : [0x80000754] : sd a7, 616(a5) -- Store: [0x80005078]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000760]:fsqrt.d fa1, fa0, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsd fa1, 624(a5)
Current Store : [0x8000076c] : sd a7, 632(a5) -- Store: [0x80005088]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000004000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000778]:fsqrt.d fa1, fa0, dyn
	-[0x8000077c]:csrrs a7, fflags, zero
	-[0x80000780]:fsd fa1, 640(a5)
Current Store : [0x80000784] : sd a7, 648(a5) -- Store: [0x80005098]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000790]:fsqrt.d fa1, fa0, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa1, 656(a5)
Current Store : [0x8000079c] : sd a7, 664(a5) -- Store: [0x800050a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000008000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007a8]:fsqrt.d fa1, fa0, dyn
	-[0x800007ac]:csrrs a7, fflags, zero
	-[0x800007b0]:fsd fa1, 672(a5)
Current Store : [0x800007b4] : sd a7, 680(a5) -- Store: [0x800050b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffff8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fsqrt.d fa1, fa0, dyn
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:fsd fa1, 688(a5)
Current Store : [0x800007cc] : sd a7, 696(a5) -- Store: [0x800050c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000010000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007d8]:fsqrt.d fa1, fa0, dyn
	-[0x800007dc]:csrrs a7, fflags, zero
	-[0x800007e0]:fsd fa1, 704(a5)
Current Store : [0x800007e4] : sd a7, 712(a5) -- Store: [0x800050d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffff0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007f0]:fsqrt.d fa1, fa0, dyn
	-[0x800007f4]:csrrs a7, fflags, zero
	-[0x800007f8]:fsd fa1, 720(a5)
Current Store : [0x800007fc] : sd a7, 728(a5) -- Store: [0x800050e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000020000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000808]:fsqrt.d fa1, fa0, dyn
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsd fa1, 736(a5)
Current Store : [0x80000814] : sd a7, 744(a5) -- Store: [0x800050f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffe0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000820]:fsqrt.d fa1, fa0, dyn
	-[0x80000824]:csrrs a7, fflags, zero
	-[0x80000828]:fsd fa1, 752(a5)
Current Store : [0x8000082c] : sd a7, 760(a5) -- Store: [0x80005108]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000040000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000838]:fsqrt.d fa1, fa0, dyn
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:fsd fa1, 768(a5)
Current Store : [0x80000844] : sd a7, 776(a5) -- Store: [0x80005118]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffc0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000850]:fsqrt.d fa1, fa0, dyn
	-[0x80000854]:csrrs a7, fflags, zero
	-[0x80000858]:fsd fa1, 784(a5)
Current Store : [0x8000085c] : sd a7, 792(a5) -- Store: [0x80005128]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000080000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000868]:fsqrt.d fa1, fa0, dyn
	-[0x8000086c]:csrrs a7, fflags, zero
	-[0x80000870]:fsd fa1, 800(a5)
Current Store : [0x80000874] : sd a7, 808(a5) -- Store: [0x80005138]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffff80000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000880]:fsqrt.d fa1, fa0, dyn
	-[0x80000884]:csrrs a7, fflags, zero
	-[0x80000888]:fsd fa1, 816(a5)
Current Store : [0x8000088c] : sd a7, 824(a5) -- Store: [0x80005148]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000100000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000898]:fsqrt.d fa1, fa0, dyn
	-[0x8000089c]:csrrs a7, fflags, zero
	-[0x800008a0]:fsd fa1, 832(a5)
Current Store : [0x800008a4] : sd a7, 840(a5) -- Store: [0x80005158]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffff00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008b0]:fsqrt.d fa1, fa0, dyn
	-[0x800008b4]:csrrs a7, fflags, zero
	-[0x800008b8]:fsd fa1, 848(a5)
Current Store : [0x800008bc] : sd a7, 856(a5) -- Store: [0x80005168]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000200000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c8]:fsqrt.d fa1, fa0, dyn
	-[0x800008cc]:csrrs a7, fflags, zero
	-[0x800008d0]:fsd fa1, 864(a5)
Current Store : [0x800008d4] : sd a7, 872(a5) -- Store: [0x80005178]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffe00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fsqrt.d fa1, fa0, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa1, 880(a5)
Current Store : [0x800008ec] : sd a7, 888(a5) -- Store: [0x80005188]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008f8]:fsqrt.d fa1, fa0, dyn
	-[0x800008fc]:csrrs a7, fflags, zero
	-[0x80000900]:fsd fa1, 896(a5)
Current Store : [0x80000904] : sd a7, 904(a5) -- Store: [0x80005198]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffc00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000910]:fsqrt.d fa1, fa0, dyn
	-[0x80000914]:csrrs a7, fflags, zero
	-[0x80000918]:fsd fa1, 912(a5)
Current Store : [0x8000091c] : sd a7, 920(a5) -- Store: [0x800051a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000800000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000928]:fsqrt.d fa1, fa0, dyn
	-[0x8000092c]:csrrs a7, fflags, zero
	-[0x80000930]:fsd fa1, 928(a5)
Current Store : [0x80000934] : sd a7, 936(a5) -- Store: [0x800051b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffff800000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000940]:fsqrt.d fa1, fa0, dyn
	-[0x80000944]:csrrs a7, fflags, zero
	-[0x80000948]:fsd fa1, 944(a5)
Current Store : [0x8000094c] : sd a7, 952(a5) -- Store: [0x800051c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000001000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000958]:fsqrt.d fa1, fa0, dyn
	-[0x8000095c]:csrrs a7, fflags, zero
	-[0x80000960]:fsd fa1, 960(a5)
Current Store : [0x80000964] : sd a7, 968(a5) -- Store: [0x800051d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffff000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000970]:fsqrt.d fa1, fa0, dyn
	-[0x80000974]:csrrs a7, fflags, zero
	-[0x80000978]:fsd fa1, 976(a5)
Current Store : [0x8000097c] : sd a7, 984(a5) -- Store: [0x800051e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000002000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000988]:fsqrt.d fa1, fa0, dyn
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsd fa1, 992(a5)
Current Store : [0x80000994] : sd a7, 1000(a5) -- Store: [0x800051f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffe000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009a0]:fsqrt.d fa1, fa0, dyn
	-[0x800009a4]:csrrs a7, fflags, zero
	-[0x800009a8]:fsd fa1, 1008(a5)
Current Store : [0x800009ac] : sd a7, 1016(a5) -- Store: [0x80005208]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000004000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009b8]:fsqrt.d fa1, fa0, dyn
	-[0x800009bc]:csrrs a7, fflags, zero
	-[0x800009c0]:fsd fa1, 1024(a5)
Current Store : [0x800009c4] : sd a7, 1032(a5) -- Store: [0x80005218]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffc000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009d0]:fsqrt.d fa1, fa0, dyn
	-[0x800009d4]:csrrs a7, fflags, zero
	-[0x800009d8]:fsd fa1, 1040(a5)
Current Store : [0x800009dc] : sd a7, 1048(a5) -- Store: [0x80005228]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000008000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009e8]:fsqrt.d fa1, fa0, dyn
	-[0x800009ec]:csrrs a7, fflags, zero
	-[0x800009f0]:fsd fa1, 1056(a5)
Current Store : [0x800009f4] : sd a7, 1064(a5) -- Store: [0x80005238]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffff8000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fsqrt.d fa1, fa0, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsd fa1, 1072(a5)
Current Store : [0x80000a0c] : sd a7, 1080(a5) -- Store: [0x80005248]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000010000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a18]:fsqrt.d fa1, fa0, dyn
	-[0x80000a1c]:csrrs a7, fflags, zero
	-[0x80000a20]:fsd fa1, 1088(a5)
Current Store : [0x80000a24] : sd a7, 1096(a5) -- Store: [0x80005258]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffff0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a30]:fsqrt.d fa1, fa0, dyn
	-[0x80000a34]:csrrs a7, fflags, zero
	-[0x80000a38]:fsd fa1, 1104(a5)
Current Store : [0x80000a3c] : sd a7, 1112(a5) -- Store: [0x80005268]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000020000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a48]:fsqrt.d fa1, fa0, dyn
	-[0x80000a4c]:csrrs a7, fflags, zero
	-[0x80000a50]:fsd fa1, 1120(a5)
Current Store : [0x80000a54] : sd a7, 1128(a5) -- Store: [0x80005278]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffe0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a60]:fsqrt.d fa1, fa0, dyn
	-[0x80000a64]:csrrs a7, fflags, zero
	-[0x80000a68]:fsd fa1, 1136(a5)
Current Store : [0x80000a6c] : sd a7, 1144(a5) -- Store: [0x80005288]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000040000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a78]:fsqrt.d fa1, fa0, dyn
	-[0x80000a7c]:csrrs a7, fflags, zero
	-[0x80000a80]:fsd fa1, 1152(a5)
Current Store : [0x80000a84] : sd a7, 1160(a5) -- Store: [0x80005298]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffc0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a90]:fsqrt.d fa1, fa0, dyn
	-[0x80000a94]:csrrs a7, fflags, zero
	-[0x80000a98]:fsd fa1, 1168(a5)
Current Store : [0x80000a9c] : sd a7, 1176(a5) -- Store: [0x800052a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000080000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa8]:fsqrt.d fa1, fa0, dyn
	-[0x80000aac]:csrrs a7, fflags, zero
	-[0x80000ab0]:fsd fa1, 1184(a5)
Current Store : [0x80000ab4] : sd a7, 1192(a5) -- Store: [0x800052b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffff80000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ac0]:fsqrt.d fa1, fa0, dyn
	-[0x80000ac4]:csrrs a7, fflags, zero
	-[0x80000ac8]:fsd fa1, 1200(a5)
Current Store : [0x80000acc] : sd a7, 1208(a5) -- Store: [0x800052c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000100000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ad8]:fsqrt.d fa1, fa0, dyn
	-[0x80000adc]:csrrs a7, fflags, zero
	-[0x80000ae0]:fsd fa1, 1216(a5)
Current Store : [0x80000ae4] : sd a7, 1224(a5) -- Store: [0x800052d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000af0]:fsqrt.d fa1, fa0, dyn
	-[0x80000af4]:csrrs a7, fflags, zero
	-[0x80000af8]:fsd fa1, 1232(a5)
Current Store : [0x80000afc] : sd a7, 1240(a5) -- Store: [0x800052e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000200000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b08]:fsqrt.d fa1, fa0, dyn
	-[0x80000b0c]:csrrs a7, fflags, zero
	-[0x80000b10]:fsd fa1, 1248(a5)
Current Store : [0x80000b14] : sd a7, 1256(a5) -- Store: [0x800052f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffe00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b20]:fsqrt.d fa1, fa0, dyn
	-[0x80000b24]:csrrs a7, fflags, zero
	-[0x80000b28]:fsd fa1, 1264(a5)
Current Store : [0x80000b2c] : sd a7, 1272(a5) -- Store: [0x80005308]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000400000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b38]:fsqrt.d fa1, fa0, dyn
	-[0x80000b3c]:csrrs a7, fflags, zero
	-[0x80000b40]:fsd fa1, 1280(a5)
Current Store : [0x80000b44] : sd a7, 1288(a5) -- Store: [0x80005318]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffc00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b50]:fsqrt.d fa1, fa0, dyn
	-[0x80000b54]:csrrs a7, fflags, zero
	-[0x80000b58]:fsd fa1, 1296(a5)
Current Store : [0x80000b5c] : sd a7, 1304(a5) -- Store: [0x80005328]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000800000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b68]:fsqrt.d fa1, fa0, dyn
	-[0x80000b6c]:csrrs a7, fflags, zero
	-[0x80000b70]:fsd fa1, 1312(a5)
Current Store : [0x80000b74] : sd a7, 1320(a5) -- Store: [0x80005338]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfff800000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fsqrt.d fa1, fa0, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa1, 1328(a5)
Current Store : [0x80000b8c] : sd a7, 1336(a5) -- Store: [0x80005348]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc001000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b98]:fsqrt.d fa1, fa0, dyn
	-[0x80000b9c]:csrrs a7, fflags, zero
	-[0x80000ba0]:fsd fa1, 1344(a5)
Current Store : [0x80000ba4] : sd a7, 1352(a5) -- Store: [0x80005358]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfff000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bb0]:fsqrt.d fa1, fa0, dyn
	-[0x80000bb4]:csrrs a7, fflags, zero
	-[0x80000bb8]:fsd fa1, 1360(a5)
Current Store : [0x80000bbc] : sd a7, 1368(a5) -- Store: [0x80005368]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc002000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bc8]:fsqrt.d fa1, fa0, dyn
	-[0x80000bcc]:csrrs a7, fflags, zero
	-[0x80000bd0]:fsd fa1, 1376(a5)
Current Store : [0x80000bd4] : sd a7, 1384(a5) -- Store: [0x80005378]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffe000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000be0]:fsqrt.d fa1, fa0, dyn
	-[0x80000be4]:csrrs a7, fflags, zero
	-[0x80000be8]:fsd fa1, 1392(a5)
Current Store : [0x80000bec] : sd a7, 1400(a5) -- Store: [0x80005388]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc004000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bf8]:fsqrt.d fa1, fa0, dyn
	-[0x80000bfc]:csrrs a7, fflags, zero
	-[0x80000c00]:fsd fa1, 1408(a5)
Current Store : [0x80000c04] : sd a7, 1416(a5) -- Store: [0x80005398]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffc000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c10]:fsqrt.d fa1, fa0, dyn
	-[0x80000c14]:csrrs a7, fflags, zero
	-[0x80000c18]:fsd fa1, 1424(a5)
Current Store : [0x80000c1c] : sd a7, 1432(a5) -- Store: [0x800053a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc008000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c28]:fsqrt.d fa1, fa0, dyn
	-[0x80000c2c]:csrrs a7, fflags, zero
	-[0x80000c30]:fsd fa1, 1440(a5)
Current Store : [0x80000c34] : sd a7, 1448(a5) -- Store: [0x800053b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdff8000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c40]:fsqrt.d fa1, fa0, dyn
	-[0x80000c44]:csrrs a7, fflags, zero
	-[0x80000c48]:fsd fa1, 1456(a5)
Current Store : [0x80000c4c] : sd a7, 1464(a5) -- Store: [0x800053c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc010000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c58]:fsqrt.d fa1, fa0, dyn
	-[0x80000c5c]:csrrs a7, fflags, zero
	-[0x80000c60]:fsd fa1, 1472(a5)
Current Store : [0x80000c64] : sd a7, 1480(a5) -- Store: [0x800053d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdff0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c70]:fsqrt.d fa1, fa0, dyn
	-[0x80000c74]:csrrs a7, fflags, zero
	-[0x80000c78]:fsd fa1, 1488(a5)
Current Store : [0x80000c7c] : sd a7, 1496(a5) -- Store: [0x800053e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc020000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c88]:fsqrt.d fa1, fa0, dyn
	-[0x80000c8c]:csrrs a7, fflags, zero
	-[0x80000c90]:fsd fa1, 1504(a5)
Current Store : [0x80000c94] : sd a7, 1512(a5) -- Store: [0x800053f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfe0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fsqrt.d fa1, fa0, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsd fa1, 1520(a5)
Current Store : [0x80000cac] : sd a7, 1528(a5) -- Store: [0x80005408]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc040000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cb8]:fsqrt.d fa1, fa0, dyn
	-[0x80000cbc]:csrrs a7, fflags, zero
	-[0x80000cc0]:fsd fa1, 1536(a5)
Current Store : [0x80000cc4] : sd a7, 1544(a5) -- Store: [0x80005418]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfc0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cd0]:fsqrt.d fa1, fa0, dyn
	-[0x80000cd4]:csrrs a7, fflags, zero
	-[0x80000cd8]:fsd fa1, 1552(a5)
Current Store : [0x80000cdc] : sd a7, 1560(a5) -- Store: [0x80005428]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc080000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ce8]:fsqrt.d fa1, fa0, dyn
	-[0x80000cec]:csrrs a7, fflags, zero
	-[0x80000cf0]:fsd fa1, 1568(a5)
Current Store : [0x80000cf4] : sd a7, 1576(a5) -- Store: [0x80005438]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdf80000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d00]:fsqrt.d fa1, fa0, dyn
	-[0x80000d04]:csrrs a7, fflags, zero
	-[0x80000d08]:fsd fa1, 1584(a5)
Current Store : [0x80000d0c] : sd a7, 1592(a5) -- Store: [0x80005448]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc100000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d18]:fsqrt.d fa1, fa0, dyn
	-[0x80000d1c]:csrrs a7, fflags, zero
	-[0x80000d20]:fsd fa1, 1600(a5)
Current Store : [0x80000d24] : sd a7, 1608(a5) -- Store: [0x80005458]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdf00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d30]:fsqrt.d fa1, fa0, dyn
	-[0x80000d34]:csrrs a7, fflags, zero
	-[0x80000d38]:fsd fa1, 1616(a5)
Current Store : [0x80000d3c] : sd a7, 1624(a5) -- Store: [0x80005468]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc200000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d48]:fsqrt.d fa1, fa0, dyn
	-[0x80000d4c]:csrrs a7, fflags, zero
	-[0x80000d50]:fsd fa1, 1632(a5)
Current Store : [0x80000d54] : sd a7, 1640(a5) -- Store: [0x80005478]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xde00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d60]:fsqrt.d fa1, fa0, dyn
	-[0x80000d64]:csrrs a7, fflags, zero
	-[0x80000d68]:fsd fa1, 1648(a5)
Current Store : [0x80000d6c] : sd a7, 1656(a5) -- Store: [0x80005488]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc400000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d78]:fsqrt.d fa1, fa0, dyn
	-[0x80000d7c]:csrrs a7, fflags, zero
	-[0x80000d80]:fsd fa1, 1664(a5)
Current Store : [0x80000d84] : sd a7, 1672(a5) -- Store: [0x80005498]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xdc00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d90]:fsqrt.d fa1, fa0, dyn
	-[0x80000d94]:csrrs a7, fflags, zero
	-[0x80000d98]:fsd fa1, 1680(a5)
Current Store : [0x80000d9c] : sd a7, 1688(a5) -- Store: [0x800054a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xc800000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000da8]:fsqrt.d fa1, fa0, dyn
	-[0x80000dac]:csrrs a7, fflags, zero
	-[0x80000db0]:fsd fa1, 1696(a5)
Current Store : [0x80000db4] : sd a7, 1704(a5) -- Store: [0x800054b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xd800000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dc0]:fsqrt.d fa1, fa0, dyn
	-[0x80000dc4]:csrrs a7, fflags, zero
	-[0x80000dc8]:fsd fa1, 1712(a5)
Current Store : [0x80000dcc] : sd a7, 1720(a5) -- Store: [0x800054c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x47f and fm1 == 0xd000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dd8]:fsqrt.d fa1, fa0, dyn
	-[0x80000ddc]:csrrs a7, fflags, zero
	-[0x80000de0]:fsd fa1, 1728(a5)
Current Store : [0x80000de4] : sd a7, 1736(a5) -- Store: [0x800054d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000df0]:fsqrt.d fa1, fa0, dyn
	-[0x80000df4]:csrrs a7, fflags, zero
	-[0x80000df8]:fsd fa1, 1744(a5)
Current Store : [0x80000dfc] : sd a7, 1752(a5) -- Store: [0x800054e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e08]:fsqrt.d fa1, fa0, dyn
	-[0x80000e0c]:csrrs a7, fflags, zero
	-[0x80000e10]:fsd fa1, 1760(a5)
Current Store : [0x80000e14] : sd a7, 1768(a5) -- Store: [0x800054f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fsqrt.d fa1, fa0, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa1, 1776(a5)
Current Store : [0x80000e2c] : sd a7, 1784(a5) -- Store: [0x80005508]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e38]:fsqrt.d fa1, fa0, dyn
	-[0x80000e3c]:csrrs a7, fflags, zero
	-[0x80000e40]:fsd fa1, 1792(a5)
Current Store : [0x80000e44] : sd a7, 1800(a5) -- Store: [0x80005518]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e50]:fsqrt.d fa1, fa0, dyn
	-[0x80000e54]:csrrs a7, fflags, zero
	-[0x80000e58]:fsd fa1, 1808(a5)
Current Store : [0x80000e5c] : sd a7, 1816(a5) -- Store: [0x80005528]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000000007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e68]:fsqrt.d fa1, fa0, dyn
	-[0x80000e6c]:csrrs a7, fflags, zero
	-[0x80000e70]:fsd fa1, 1824(a5)
Current Store : [0x80000e74] : sd a7, 1832(a5) -- Store: [0x80005538]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e80]:fsqrt.d fa1, fa0, dyn
	-[0x80000e84]:csrrs a7, fflags, zero
	-[0x80000e88]:fsd fa1, 1840(a5)
Current Store : [0x80000e8c] : sd a7, 1848(a5) -- Store: [0x80005548]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000000000f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e98]:fsqrt.d fa1, fa0, dyn
	-[0x80000e9c]:csrrs a7, fflags, zero
	-[0x80000ea0]:fsd fa1, 1856(a5)
Current Store : [0x80000ea4] : sd a7, 1864(a5) -- Store: [0x80005558]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000eb0]:fsqrt.d fa1, fa0, dyn
	-[0x80000eb4]:csrrs a7, fflags, zero
	-[0x80000eb8]:fsd fa1, 1872(a5)
Current Store : [0x80000ebc] : sd a7, 1880(a5) -- Store: [0x80005568]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000000001f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ec8]:fsqrt.d fa1, fa0, dyn
	-[0x80000ecc]:csrrs a7, fflags, zero
	-[0x80000ed0]:fsd fa1, 1888(a5)
Current Store : [0x80000ed4] : sd a7, 1896(a5) -- Store: [0x80005578]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ee0]:fsqrt.d fa1, fa0, dyn
	-[0x80000ee4]:csrrs a7, fflags, zero
	-[0x80000ee8]:fsd fa1, 1904(a5)
Current Store : [0x80000eec] : sd a7, 1912(a5) -- Store: [0x80005588]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000000003f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ef8]:fsqrt.d fa1, fa0, dyn
	-[0x80000efc]:csrrs a7, fflags, zero
	-[0x80000f00]:fsd fa1, 1920(a5)
Current Store : [0x80000f04] : sd a7, 1928(a5) -- Store: [0x80005598]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f10]:fsqrt.d fa1, fa0, dyn
	-[0x80000f14]:csrrs a7, fflags, zero
	-[0x80000f18]:fsd fa1, 1936(a5)
Current Store : [0x80000f1c] : sd a7, 1944(a5) -- Store: [0x800055a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000000007f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f28]:fsqrt.d fa1, fa0, dyn
	-[0x80000f2c]:csrrs a7, fflags, zero
	-[0x80000f30]:fsd fa1, 1952(a5)
Current Store : [0x80000f34] : sd a7, 1960(a5) -- Store: [0x800055b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f40]:fsqrt.d fa1, fa0, dyn
	-[0x80000f44]:csrrs a7, fflags, zero
	-[0x80000f48]:fsd fa1, 1968(a5)
Current Store : [0x80000f4c] : sd a7, 1976(a5) -- Store: [0x800055c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000000000ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f58]:fsqrt.d fa1, fa0, dyn
	-[0x80000f5c]:csrrs a7, fflags, zero
	-[0x80000f60]:fsd fa1, 1984(a5)
Current Store : [0x80000f64] : sd a7, 1992(a5) -- Store: [0x800055d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f70]:fsqrt.d fa1, fa0, dyn
	-[0x80000f74]:csrrs a7, fflags, zero
	-[0x80000f78]:fsd fa1, 2000(a5)
Current Store : [0x80000f7c] : sd a7, 2008(a5) -- Store: [0x800055e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000000001ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f88]:fsqrt.d fa1, fa0, dyn
	-[0x80000f8c]:csrrs a7, fflags, zero
	-[0x80000f90]:fsd fa1, 2016(a5)
Current Store : [0x80000f94] : sd a7, 2024(a5) -- Store: [0x800055f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:fsqrt.d fa1, fa0, dyn
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:fsd fa1, 0(a5)
Current Store : [0x80000fb4] : sd a7, 8(a5) -- Store: [0x80005608]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000000003ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fc0]:fsqrt.d fa1, fa0, dyn
	-[0x80000fc4]:csrrs a7, fflags, zero
	-[0x80000fc8]:fsd fa1, 16(a5)
Current Store : [0x80000fcc] : sd a7, 24(a5) -- Store: [0x80005618]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fd8]:fsqrt.d fa1, fa0, dyn
	-[0x80000fdc]:csrrs a7, fflags, zero
	-[0x80000fe0]:fsd fa1, 32(a5)
Current Store : [0x80000fe4] : sd a7, 40(a5) -- Store: [0x80005628]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000000007ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ff0]:fsqrt.d fa1, fa0, dyn
	-[0x80000ff4]:csrrs a7, fflags, zero
	-[0x80000ff8]:fsd fa1, 48(a5)
Current Store : [0x80000ffc] : sd a7, 56(a5) -- Store: [0x80005638]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001008]:fsqrt.d fa1, fa0, dyn
	-[0x8000100c]:csrrs a7, fflags, zero
	-[0x80001010]:fsd fa1, 64(a5)
Current Store : [0x80001014] : sd a7, 72(a5) -- Store: [0x80005648]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000000fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001020]:fsqrt.d fa1, fa0, dyn
	-[0x80001024]:csrrs a7, fflags, zero
	-[0x80001028]:fsd fa1, 80(a5)
Current Store : [0x8000102c] : sd a7, 88(a5) -- Store: [0x80005658]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001038]:fsqrt.d fa1, fa0, dyn
	-[0x8000103c]:csrrs a7, fflags, zero
	-[0x80001040]:fsd fa1, 96(a5)
Current Store : [0x80001044] : sd a7, 104(a5) -- Store: [0x80005668]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000001fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001050]:fsqrt.d fa1, fa0, dyn
	-[0x80001054]:csrrs a7, fflags, zero
	-[0x80001058]:fsd fa1, 112(a5)
Current Store : [0x8000105c] : sd a7, 120(a5) -- Store: [0x80005678]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001068]:fsqrt.d fa1, fa0, dyn
	-[0x8000106c]:csrrs a7, fflags, zero
	-[0x80001070]:fsd fa1, 128(a5)
Current Store : [0x80001074] : sd a7, 136(a5) -- Store: [0x80005688]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000003fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001080]:fsqrt.d fa1, fa0, dyn
	-[0x80001084]:csrrs a7, fflags, zero
	-[0x80001088]:fsd fa1, 144(a5)
Current Store : [0x8000108c] : sd a7, 152(a5) -- Store: [0x80005698]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001098]:fsqrt.d fa1, fa0, dyn
	-[0x8000109c]:csrrs a7, fflags, zero
	-[0x800010a0]:fsd fa1, 160(a5)
Current Store : [0x800010a4] : sd a7, 168(a5) -- Store: [0x800056a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000007fff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010b0]:fsqrt.d fa1, fa0, dyn
	-[0x800010b4]:csrrs a7, fflags, zero
	-[0x800010b8]:fsd fa1, 176(a5)
Current Store : [0x800010bc] : sd a7, 184(a5) -- Store: [0x800056b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffff8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010c8]:fsqrt.d fa1, fa0, dyn
	-[0x800010cc]:csrrs a7, fflags, zero
	-[0x800010d0]:fsd fa1, 192(a5)
Current Store : [0x800010d4] : sd a7, 200(a5) -- Store: [0x800056c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000000ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010e0]:fsqrt.d fa1, fa0, dyn
	-[0x800010e4]:csrrs a7, fflags, zero
	-[0x800010e8]:fsd fa1, 208(a5)
Current Store : [0x800010ec] : sd a7, 216(a5) -- Store: [0x800056d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffff0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010f8]:fsqrt.d fa1, fa0, dyn
	-[0x800010fc]:csrrs a7, fflags, zero
	-[0x80001100]:fsd fa1, 224(a5)
Current Store : [0x80001104] : sd a7, 232(a5) -- Store: [0x800056e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000001ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001110]:fsqrt.d fa1, fa0, dyn
	-[0x80001114]:csrrs a7, fflags, zero
	-[0x80001118]:fsd fa1, 240(a5)
Current Store : [0x8000111c] : sd a7, 248(a5) -- Store: [0x800056f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffe0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001128]:fsqrt.d fa1, fa0, dyn
	-[0x8000112c]:csrrs a7, fflags, zero
	-[0x80001130]:fsd fa1, 256(a5)
Current Store : [0x80001134] : sd a7, 264(a5) -- Store: [0x80005708]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000003ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001140]:fsqrt.d fa1, fa0, dyn
	-[0x80001144]:csrrs a7, fflags, zero
	-[0x80001148]:fsd fa1, 272(a5)
Current Store : [0x8000114c] : sd a7, 280(a5) -- Store: [0x80005718]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffc0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001158]:fsqrt.d fa1, fa0, dyn
	-[0x8000115c]:csrrs a7, fflags, zero
	-[0x80001160]:fsd fa1, 288(a5)
Current Store : [0x80001164] : sd a7, 296(a5) -- Store: [0x80005728]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000007ffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001170]:fsqrt.d fa1, fa0, dyn
	-[0x80001174]:csrrs a7, fflags, zero
	-[0x80001178]:fsd fa1, 304(a5)
Current Store : [0x8000117c] : sd a7, 312(a5) -- Store: [0x80005738]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffff80000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001188]:fsqrt.d fa1, fa0, dyn
	-[0x8000118c]:csrrs a7, fflags, zero
	-[0x80001190]:fsd fa1, 320(a5)
Current Store : [0x80001194] : sd a7, 328(a5) -- Store: [0x80005748]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000000fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011a0]:fsqrt.d fa1, fa0, dyn
	-[0x800011a4]:csrrs a7, fflags, zero
	-[0x800011a8]:fsd fa1, 336(a5)
Current Store : [0x800011ac] : sd a7, 344(a5) -- Store: [0x80005758]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffff00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011b8]:fsqrt.d fa1, fa0, dyn
	-[0x800011bc]:csrrs a7, fflags, zero
	-[0x800011c0]:fsd fa1, 352(a5)
Current Store : [0x800011c4] : sd a7, 360(a5) -- Store: [0x80005768]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000001fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011d0]:fsqrt.d fa1, fa0, dyn
	-[0x800011d4]:csrrs a7, fflags, zero
	-[0x800011d8]:fsd fa1, 368(a5)
Current Store : [0x800011dc] : sd a7, 376(a5) -- Store: [0x80005778]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffe00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011e8]:fsqrt.d fa1, fa0, dyn
	-[0x800011ec]:csrrs a7, fflags, zero
	-[0x800011f0]:fsd fa1, 384(a5)
Current Store : [0x800011f4] : sd a7, 392(a5) -- Store: [0x80005788]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000003fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001200]:fsqrt.d fa1, fa0, dyn
	-[0x80001204]:csrrs a7, fflags, zero
	-[0x80001208]:fsd fa1, 400(a5)
Current Store : [0x8000120c] : sd a7, 408(a5) -- Store: [0x80005798]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffc00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001218]:fsqrt.d fa1, fa0, dyn
	-[0x8000121c]:csrrs a7, fflags, zero
	-[0x80001220]:fsd fa1, 416(a5)
Current Store : [0x80001224] : sd a7, 424(a5) -- Store: [0x800057a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000007fffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001230]:fsqrt.d fa1, fa0, dyn
	-[0x80001234]:csrrs a7, fflags, zero
	-[0x80001238]:fsd fa1, 432(a5)
Current Store : [0x8000123c] : sd a7, 440(a5) -- Store: [0x800057b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffff800000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001248]:fsqrt.d fa1, fa0, dyn
	-[0x8000124c]:csrrs a7, fflags, zero
	-[0x80001250]:fsd fa1, 448(a5)
Current Store : [0x80001254] : sd a7, 456(a5) -- Store: [0x800057c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000ffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001260]:fsqrt.d fa1, fa0, dyn
	-[0x80001264]:csrrs a7, fflags, zero
	-[0x80001268]:fsd fa1, 464(a5)
Current Store : [0x8000126c] : sd a7, 472(a5) -- Store: [0x800057d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffff000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001278]:fsqrt.d fa1, fa0, dyn
	-[0x8000127c]:csrrs a7, fflags, zero
	-[0x80001280]:fsd fa1, 480(a5)
Current Store : [0x80001284] : sd a7, 488(a5) -- Store: [0x800057e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000001ffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001290]:fsqrt.d fa1, fa0, dyn
	-[0x80001294]:csrrs a7, fflags, zero
	-[0x80001298]:fsd fa1, 496(a5)
Current Store : [0x8000129c] : sd a7, 504(a5) -- Store: [0x800057f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffe000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012a8]:fsqrt.d fa1, fa0, dyn
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:fsd fa1, 512(a5)
Current Store : [0x800012b4] : sd a7, 520(a5) -- Store: [0x80005808]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000003ffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012c0]:fsqrt.d fa1, fa0, dyn
	-[0x800012c4]:csrrs a7, fflags, zero
	-[0x800012c8]:fsd fa1, 528(a5)
Current Store : [0x800012cc] : sd a7, 536(a5) -- Store: [0x80005818]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffc000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012d8]:fsqrt.d fa1, fa0, dyn
	-[0x800012dc]:csrrs a7, fflags, zero
	-[0x800012e0]:fsd fa1, 544(a5)
Current Store : [0x800012e4] : sd a7, 552(a5) -- Store: [0x80005828]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000007ffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012f0]:fsqrt.d fa1, fa0, dyn
	-[0x800012f4]:csrrs a7, fflags, zero
	-[0x800012f8]:fsd fa1, 560(a5)
Current Store : [0x800012fc] : sd a7, 568(a5) -- Store: [0x80005838]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffff8000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001308]:fsqrt.d fa1, fa0, dyn
	-[0x8000130c]:csrrs a7, fflags, zero
	-[0x80001310]:fsd fa1, 576(a5)
Current Store : [0x80001314] : sd a7, 584(a5) -- Store: [0x80005848]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000fffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001320]:fsqrt.d fa1, fa0, dyn
	-[0x80001324]:csrrs a7, fflags, zero
	-[0x80001328]:fsd fa1, 592(a5)
Current Store : [0x8000132c] : sd a7, 600(a5) -- Store: [0x80005858]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffff0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001338]:fsqrt.d fa1, fa0, dyn
	-[0x8000133c]:csrrs a7, fflags, zero
	-[0x80001340]:fsd fa1, 608(a5)
Current Store : [0x80001344] : sd a7, 616(a5) -- Store: [0x80005868]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000001fffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001350]:fsqrt.d fa1, fa0, dyn
	-[0x80001354]:csrrs a7, fflags, zero
	-[0x80001358]:fsd fa1, 624(a5)
Current Store : [0x8000135c] : sd a7, 632(a5) -- Store: [0x80005878]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffe0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001368]:fsqrt.d fa1, fa0, dyn
	-[0x8000136c]:csrrs a7, fflags, zero
	-[0x80001370]:fsd fa1, 640(a5)
Current Store : [0x80001374] : sd a7, 648(a5) -- Store: [0x80005888]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000003fffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001380]:fsqrt.d fa1, fa0, dyn
	-[0x80001384]:csrrs a7, fflags, zero
	-[0x80001388]:fsd fa1, 656(a5)
Current Store : [0x8000138c] : sd a7, 664(a5) -- Store: [0x80005898]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffc0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001398]:fsqrt.d fa1, fa0, dyn
	-[0x8000139c]:csrrs a7, fflags, zero
	-[0x800013a0]:fsd fa1, 672(a5)
Current Store : [0x800013a4] : sd a7, 680(a5) -- Store: [0x800058a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000007fffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013b0]:fsqrt.d fa1, fa0, dyn
	-[0x800013b4]:csrrs a7, fflags, zero
	-[0x800013b8]:fsd fa1, 688(a5)
Current Store : [0x800013bc] : sd a7, 696(a5) -- Store: [0x800058b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffff80000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013c8]:fsqrt.d fa1, fa0, dyn
	-[0x800013cc]:csrrs a7, fflags, zero
	-[0x800013d0]:fsd fa1, 704(a5)
Current Store : [0x800013d4] : sd a7, 712(a5) -- Store: [0x800058c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000ffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013e0]:fsqrt.d fa1, fa0, dyn
	-[0x800013e4]:csrrs a7, fflags, zero
	-[0x800013e8]:fsd fa1, 720(a5)
Current Store : [0x800013ec] : sd a7, 728(a5) -- Store: [0x800058d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013f8]:fsqrt.d fa1, fa0, dyn
	-[0x800013fc]:csrrs a7, fflags, zero
	-[0x80001400]:fsd fa1, 736(a5)
Current Store : [0x80001404] : sd a7, 744(a5) -- Store: [0x800058e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00001ffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001410]:fsqrt.d fa1, fa0, dyn
	-[0x80001414]:csrrs a7, fflags, zero
	-[0x80001418]:fsd fa1, 752(a5)
Current Store : [0x8000141c] : sd a7, 760(a5) -- Store: [0x800058f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffe00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001428]:fsqrt.d fa1, fa0, dyn
	-[0x8000142c]:csrrs a7, fflags, zero
	-[0x80001430]:fsd fa1, 768(a5)
Current Store : [0x80001434] : sd a7, 776(a5) -- Store: [0x80005908]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00003ffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001440]:fsqrt.d fa1, fa0, dyn
	-[0x80001444]:csrrs a7, fflags, zero
	-[0x80001448]:fsd fa1, 784(a5)
Current Store : [0x8000144c] : sd a7, 792(a5) -- Store: [0x80005918]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffc00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001458]:fsqrt.d fa1, fa0, dyn
	-[0x8000145c]:csrrs a7, fflags, zero
	-[0x80001460]:fsd fa1, 800(a5)
Current Store : [0x80001464] : sd a7, 808(a5) -- Store: [0x80005928]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00007ffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001470]:fsqrt.d fa1, fa0, dyn
	-[0x80001474]:csrrs a7, fflags, zero
	-[0x80001478]:fsd fa1, 816(a5)
Current Store : [0x8000147c] : sd a7, 824(a5) -- Store: [0x80005938]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffff800000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001488]:fsqrt.d fa1, fa0, dyn
	-[0x8000148c]:csrrs a7, fflags, zero
	-[0x80001490]:fsd fa1, 832(a5)
Current Store : [0x80001494] : sd a7, 840(a5) -- Store: [0x80005948]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000fffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014a0]:fsqrt.d fa1, fa0, dyn
	-[0x800014a4]:csrrs a7, fflags, zero
	-[0x800014a8]:fsd fa1, 848(a5)
Current Store : [0x800014ac] : sd a7, 856(a5) -- Store: [0x80005958]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffff000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014b8]:fsqrt.d fa1, fa0, dyn
	-[0x800014bc]:csrrs a7, fflags, zero
	-[0x800014c0]:fsd fa1, 864(a5)
Current Store : [0x800014c4] : sd a7, 872(a5) -- Store: [0x80005968]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0001fffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014d0]:fsqrt.d fa1, fa0, dyn
	-[0x800014d4]:csrrs a7, fflags, zero
	-[0x800014d8]:fsd fa1, 880(a5)
Current Store : [0x800014dc] : sd a7, 888(a5) -- Store: [0x80005978]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffe000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014e8]:fsqrt.d fa1, fa0, dyn
	-[0x800014ec]:csrrs a7, fflags, zero
	-[0x800014f0]:fsd fa1, 896(a5)
Current Store : [0x800014f4] : sd a7, 904(a5) -- Store: [0x80005988]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0003fffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001500]:fsqrt.d fa1, fa0, dyn
	-[0x80001504]:csrrs a7, fflags, zero
	-[0x80001508]:fsd fa1, 912(a5)
Current Store : [0x8000150c] : sd a7, 920(a5) -- Store: [0x80005998]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffc000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001518]:fsqrt.d fa1, fa0, dyn
	-[0x8000151c]:csrrs a7, fflags, zero
	-[0x80001520]:fsd fa1, 928(a5)
Current Store : [0x80001524] : sd a7, 936(a5) -- Store: [0x800059a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0007fffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001530]:fsqrt.d fa1, fa0, dyn
	-[0x80001534]:csrrs a7, fflags, zero
	-[0x80001538]:fsd fa1, 944(a5)
Current Store : [0x8000153c] : sd a7, 952(a5) -- Store: [0x800059b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfff8000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001548]:fsqrt.d fa1, fa0, dyn
	-[0x8000154c]:csrrs a7, fflags, zero
	-[0x80001550]:fsd fa1, 960(a5)
Current Store : [0x80001554] : sd a7, 968(a5) -- Store: [0x800059c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x000ffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001560]:fsqrt.d fa1, fa0, dyn
	-[0x80001564]:csrrs a7, fflags, zero
	-[0x80001568]:fsd fa1, 976(a5)
Current Store : [0x8000156c] : sd a7, 984(a5) -- Store: [0x800059d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfff0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001578]:fsqrt.d fa1, fa0, dyn
	-[0x8000157c]:csrrs a7, fflags, zero
	-[0x80001580]:fsd fa1, 992(a5)
Current Store : [0x80001584] : sd a7, 1000(a5) -- Store: [0x800059e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x001ffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001590]:fsqrt.d fa1, fa0, dyn
	-[0x80001594]:csrrs a7, fflags, zero
	-[0x80001598]:fsd fa1, 1008(a5)
Current Store : [0x8000159c] : sd a7, 1016(a5) -- Store: [0x800059f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffe0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015a8]:fsqrt.d fa1, fa0, dyn
	-[0x800015ac]:csrrs a7, fflags, zero
	-[0x800015b0]:fsd fa1, 1024(a5)
Current Store : [0x800015b4] : sd a7, 1032(a5) -- Store: [0x80005a08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x003ffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015c0]:fsqrt.d fa1, fa0, dyn
	-[0x800015c4]:csrrs a7, fflags, zero
	-[0x800015c8]:fsd fa1, 1040(a5)
Current Store : [0x800015cc] : sd a7, 1048(a5) -- Store: [0x80005a18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xffc0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015d8]:fsqrt.d fa1, fa0, dyn
	-[0x800015dc]:csrrs a7, fflags, zero
	-[0x800015e0]:fsd fa1, 1056(a5)
Current Store : [0x800015e4] : sd a7, 1064(a5) -- Store: [0x80005a28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x007ffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015f0]:fsqrt.d fa1, fa0, dyn
	-[0x800015f4]:csrrs a7, fflags, zero
	-[0x800015f8]:fsd fa1, 1072(a5)
Current Store : [0x800015fc] : sd a7, 1080(a5) -- Store: [0x80005a38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xff80000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001608]:fsqrt.d fa1, fa0, dyn
	-[0x8000160c]:csrrs a7, fflags, zero
	-[0x80001610]:fsd fa1, 1088(a5)
Current Store : [0x80001614] : sd a7, 1096(a5) -- Store: [0x80005a48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x00fffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001620]:fsqrt.d fa1, fa0, dyn
	-[0x80001624]:csrrs a7, fflags, zero
	-[0x80001628]:fsd fa1, 1104(a5)
Current Store : [0x8000162c] : sd a7, 1112(a5) -- Store: [0x80005a58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xff00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001638]:fsqrt.d fa1, fa0, dyn
	-[0x8000163c]:csrrs a7, fflags, zero
	-[0x80001640]:fsd fa1, 1120(a5)
Current Store : [0x80001644] : sd a7, 1128(a5) -- Store: [0x80005a68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x01fffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001650]:fsqrt.d fa1, fa0, dyn
	-[0x80001654]:csrrs a7, fflags, zero
	-[0x80001658]:fsd fa1, 1136(a5)
Current Store : [0x8000165c] : sd a7, 1144(a5) -- Store: [0x80005a78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfe00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001668]:fsqrt.d fa1, fa0, dyn
	-[0x8000166c]:csrrs a7, fflags, zero
	-[0x80001670]:fsd fa1, 1152(a5)
Current Store : [0x80001674] : sd a7, 1160(a5) -- Store: [0x80005a88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x03fffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001680]:fsqrt.d fa1, fa0, dyn
	-[0x80001684]:csrrs a7, fflags, zero
	-[0x80001688]:fsd fa1, 1168(a5)
Current Store : [0x8000168c] : sd a7, 1176(a5) -- Store: [0x80005a98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfc00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001698]:fsqrt.d fa1, fa0, dyn
	-[0x8000169c]:csrrs a7, fflags, zero
	-[0x800016a0]:fsd fa1, 1184(a5)
Current Store : [0x800016a4] : sd a7, 1192(a5) -- Store: [0x80005aa8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x07fffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016b0]:fsqrt.d fa1, fa0, dyn
	-[0x800016b4]:csrrs a7, fflags, zero
	-[0x800016b8]:fsd fa1, 1200(a5)
Current Store : [0x800016bc] : sd a7, 1208(a5) -- Store: [0x80005ab8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xf800000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016c8]:fsqrt.d fa1, fa0, dyn
	-[0x800016cc]:csrrs a7, fflags, zero
	-[0x800016d0]:fsd fa1, 1216(a5)
Current Store : [0x800016d4] : sd a7, 1224(a5) -- Store: [0x80005ac8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x0ffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016e0]:fsqrt.d fa1, fa0, dyn
	-[0x800016e4]:csrrs a7, fflags, zero
	-[0x800016e8]:fsd fa1, 1232(a5)
Current Store : [0x800016ec] : sd a7, 1240(a5) -- Store: [0x80005ad8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xf000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016f8]:fsqrt.d fa1, fa0, dyn
	-[0x800016fc]:csrrs a7, fflags, zero
	-[0x80001700]:fsd fa1, 1248(a5)
Current Store : [0x80001704] : sd a7, 1256(a5) -- Store: [0x80005ae8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x1ffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001710]:fsqrt.d fa1, fa0, dyn
	-[0x80001714]:csrrs a7, fflags, zero
	-[0x80001718]:fsd fa1, 1264(a5)
Current Store : [0x8000171c] : sd a7, 1272(a5) -- Store: [0x80005af8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xe000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001728]:fsqrt.d fa1, fa0, dyn
	-[0x8000172c]:csrrs a7, fflags, zero
	-[0x80001730]:fsd fa1, 1280(a5)
Current Store : [0x80001734] : sd a7, 1288(a5) -- Store: [0x80005b08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x3ffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001740]:fsqrt.d fa1, fa0, dyn
	-[0x80001744]:csrrs a7, fflags, zero
	-[0x80001748]:fsd fa1, 1296(a5)
Current Store : [0x8000174c] : sd a7, 1304(a5) -- Store: [0x80005b18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xc000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001758]:fsqrt.d fa1, fa0, dyn
	-[0x8000175c]:csrrs a7, fflags, zero
	-[0x80001760]:fsd fa1, 1312(a5)
Current Store : [0x80001764] : sd a7, 1320(a5) -- Store: [0x80005b28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x7ffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001770]:fsqrt.d fa1, fa0, dyn
	-[0x80001774]:csrrs a7, fflags, zero
	-[0x80001778]:fsd fa1, 1328(a5)
Current Store : [0x8000177c] : sd a7, 1336(a5) -- Store: [0x80005b38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0x8000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001788]:fsqrt.d fa1, fa0, dyn
	-[0x8000178c]:csrrs a7, fflags, zero
	-[0x80001790]:fsd fa1, 1344(a5)
Current Store : [0x80001794] : sd a7, 1352(a5) -- Store: [0x80005b48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017a0]:fsqrt.d fa1, fa0, dyn
	-[0x800017a4]:csrrs a7, fflags, zero
	-[0x800017a8]:fsd fa1, 1360(a5)
Current Store : [0x800017ac] : sd a7, 1368(a5) -- Store: [0x80005b58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017b8]:fsqrt.d fa1, fa0, dyn
	-[0x800017bc]:csrrs a7, fflags, zero
	-[0x800017c0]:fsd fa1, 1376(a5)
Current Store : [0x800017c4] : sd a7, 1384(a5) -- Store: [0x80005b68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017d0]:fsqrt.d fa1, fa0, dyn
	-[0x800017d4]:csrrs a7, fflags, zero
	-[0x800017d8]:fsd fa1, 1392(a5)
Current Store : [0x800017dc] : sd a7, 1400(a5) -- Store: [0x80005b78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017e8]:fsqrt.d fa1, fa0, dyn
	-[0x800017ec]:csrrs a7, fflags, zero
	-[0x800017f0]:fsd fa1, 1408(a5)
Current Store : [0x800017f4] : sd a7, 1416(a5) -- Store: [0x80005b88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001800]:fsqrt.d fa1, fa0, dyn
	-[0x80001804]:csrrs a7, fflags, zero
	-[0x80001808]:fsd fa1, 1424(a5)
Current Store : [0x8000180c] : sd a7, 1432(a5) -- Store: [0x80005b98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001818]:fsqrt.d fa1, fa0, dyn
	-[0x8000181c]:csrrs a7, fflags, zero
	-[0x80001820]:fsd fa1, 1440(a5)
Current Store : [0x80001824] : sd a7, 1448(a5) -- Store: [0x80005ba8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001830]:fsqrt.d fa1, fa0, dyn
	-[0x80001834]:csrrs a7, fflags, zero
	-[0x80001838]:fsd fa1, 1456(a5)
Current Store : [0x8000183c] : sd a7, 1464(a5) -- Store: [0x80005bb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001848]:fsqrt.d fa1, fa0, dyn
	-[0x8000184c]:csrrs a7, fflags, zero
	-[0x80001850]:fsd fa1, 1472(a5)
Current Store : [0x80001854] : sd a7, 1480(a5) -- Store: [0x80005bc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001860]:fsqrt.d fa1, fa0, dyn
	-[0x80001864]:csrrs a7, fflags, zero
	-[0x80001868]:fsd fa1, 1488(a5)
Current Store : [0x8000186c] : sd a7, 1496(a5) -- Store: [0x80005bd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001878]:fsqrt.d fa1, fa0, dyn
	-[0x8000187c]:csrrs a7, fflags, zero
	-[0x80001880]:fsd fa1, 1504(a5)
Current Store : [0x80001884] : sd a7, 1512(a5) -- Store: [0x80005be8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001890]:fsqrt.d fa1, fa0, dyn
	-[0x80001894]:csrrs a7, fflags, zero
	-[0x80001898]:fsd fa1, 1520(a5)
Current Store : [0x8000189c] : sd a7, 1528(a5) -- Store: [0x80005bf8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018a8]:fsqrt.d fa1, fa0, dyn
	-[0x800018ac]:csrrs a7, fflags, zero
	-[0x800018b0]:fsd fa1, 1536(a5)
Current Store : [0x800018b4] : sd a7, 1544(a5) -- Store: [0x80005c08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018c0]:fsqrt.d fa1, fa0, dyn
	-[0x800018c4]:csrrs a7, fflags, zero
	-[0x800018c8]:fsd fa1, 1552(a5)
Current Store : [0x800018cc] : sd a7, 1560(a5) -- Store: [0x80005c18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018d8]:fsqrt.d fa1, fa0, dyn
	-[0x800018dc]:csrrs a7, fflags, zero
	-[0x800018e0]:fsd fa1, 1568(a5)
Current Store : [0x800018e4] : sd a7, 1576(a5) -- Store: [0x80005c28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffff8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018f0]:fsqrt.d fa1, fa0, dyn
	-[0x800018f4]:csrrs a7, fflags, zero
	-[0x800018f8]:fsd fa1, 1584(a5)
Current Store : [0x800018fc] : sd a7, 1592(a5) -- Store: [0x80005c38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffff0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001908]:fsqrt.d fa1, fa0, dyn
	-[0x8000190c]:csrrs a7, fflags, zero
	-[0x80001910]:fsd fa1, 1600(a5)
Current Store : [0x80001914] : sd a7, 1608(a5) -- Store: [0x80005c48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffe0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001920]:fsqrt.d fa1, fa0, dyn
	-[0x80001924]:csrrs a7, fflags, zero
	-[0x80001928]:fsd fa1, 1616(a5)
Current Store : [0x8000192c] : sd a7, 1624(a5) -- Store: [0x80005c58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffc0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001938]:fsqrt.d fa1, fa0, dyn
	-[0x8000193c]:csrrs a7, fflags, zero
	-[0x80001940]:fsd fa1, 1632(a5)
Current Store : [0x80001944] : sd a7, 1640(a5) -- Store: [0x80005c68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffff80000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001950]:fsqrt.d fa1, fa0, dyn
	-[0x80001954]:csrrs a7, fflags, zero
	-[0x80001958]:fsd fa1, 1648(a5)
Current Store : [0x8000195c] : sd a7, 1656(a5) -- Store: [0x80005c78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffff00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001968]:fsqrt.d fa1, fa0, dyn
	-[0x8000196c]:csrrs a7, fflags, zero
	-[0x80001970]:fsd fa1, 1664(a5)
Current Store : [0x80001974] : sd a7, 1672(a5) -- Store: [0x80005c88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffe00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001980]:fsqrt.d fa1, fa0, dyn
	-[0x80001984]:csrrs a7, fflags, zero
	-[0x80001988]:fsd fa1, 1680(a5)
Current Store : [0x8000198c] : sd a7, 1688(a5) -- Store: [0x80005c98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffc00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001998]:fsqrt.d fa1, fa0, dyn
	-[0x8000199c]:csrrs a7, fflags, zero
	-[0x800019a0]:fsd fa1, 1696(a5)
Current Store : [0x800019a4] : sd a7, 1704(a5) -- Store: [0x80005ca8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffff800000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019b0]:fsqrt.d fa1, fa0, dyn
	-[0x800019b4]:csrrs a7, fflags, zero
	-[0x800019b8]:fsd fa1, 1712(a5)
Current Store : [0x800019bc] : sd a7, 1720(a5) -- Store: [0x80005cb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffff000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019c8]:fsqrt.d fa1, fa0, dyn
	-[0x800019cc]:csrrs a7, fflags, zero
	-[0x800019d0]:fsd fa1, 1728(a5)
Current Store : [0x800019d4] : sd a7, 1736(a5) -- Store: [0x80005cc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffe000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019e0]:fsqrt.d fa1, fa0, dyn
	-[0x800019e4]:csrrs a7, fflags, zero
	-[0x800019e8]:fsd fa1, 1744(a5)
Current Store : [0x800019ec] : sd a7, 1752(a5) -- Store: [0x80005cd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffc000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019f8]:fsqrt.d fa1, fa0, dyn
	-[0x800019fc]:csrrs a7, fflags, zero
	-[0x80001a00]:fsd fa1, 1760(a5)
Current Store : [0x80001a04] : sd a7, 1768(a5) -- Store: [0x80005ce8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffff8000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a10]:fsqrt.d fa1, fa0, dyn
	-[0x80001a14]:csrrs a7, fflags, zero
	-[0x80001a18]:fsd fa1, 1776(a5)
Current Store : [0x80001a1c] : sd a7, 1784(a5) -- Store: [0x80005cf8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffff0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a28]:fsqrt.d fa1, fa0, dyn
	-[0x80001a2c]:csrrs a7, fflags, zero
	-[0x80001a30]:fsd fa1, 1792(a5)
Current Store : [0x80001a34] : sd a7, 1800(a5) -- Store: [0x80005d08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffe0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a40]:fsqrt.d fa1, fa0, dyn
	-[0x80001a44]:csrrs a7, fflags, zero
	-[0x80001a48]:fsd fa1, 1808(a5)
Current Store : [0x80001a4c] : sd a7, 1816(a5) -- Store: [0x80005d18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffc0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a58]:fsqrt.d fa1, fa0, dyn
	-[0x80001a5c]:csrrs a7, fflags, zero
	-[0x80001a60]:fsd fa1, 1824(a5)
Current Store : [0x80001a64] : sd a7, 1832(a5) -- Store: [0x80005d28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffff80000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a70]:fsqrt.d fa1, fa0, dyn
	-[0x80001a74]:csrrs a7, fflags, zero
	-[0x80001a78]:fsd fa1, 1840(a5)
Current Store : [0x80001a7c] : sd a7, 1848(a5) -- Store: [0x80005d38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a88]:fsqrt.d fa1, fa0, dyn
	-[0x80001a8c]:csrrs a7, fflags, zero
	-[0x80001a90]:fsd fa1, 1856(a5)
Current Store : [0x80001a94] : sd a7, 1864(a5) -- Store: [0x80005d48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x369 and fm1 == 0xfffffffe00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001aa0]:fsqrt.d fa1, fa0, dyn
	-[0x80001aa4]:csrrs a7, fflags, zero
	-[0x80001aa8]:fsd fa1, 1872(a5)
Current Store : [0x80001aac] : sd a7, 1880(a5) -- Store: [0x80005d58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffe00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ab8]:fsqrt.d fa1, fa0, dyn
	-[0x80001abc]:csrrs a7, fflags, zero
	-[0x80001ac0]:fsd fa1, 1888(a5)
Current Store : [0x80001ac4] : sd a7, 1896(a5) -- Store: [0x80005d68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x36a and fm1 == 0xffffffff00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ad0]:fsqrt.d fa1, fa0, dyn
	-[0x80001ad4]:csrrs a7, fflags, zero
	-[0x80001ad8]:fsd fa1, 1904(a5)
Current Store : [0x80001adc] : sd a7, 1912(a5) -- Store: [0x80005d78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffc00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ae8]:fsqrt.d fa1, fa0, dyn
	-[0x80001aec]:csrrs a7, fflags, zero
	-[0x80001af0]:fsd fa1, 1920(a5)
Current Store : [0x80001af4] : sd a7, 1928(a5) -- Store: [0x80005d88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x36b and fm1 == 0xffffffff80000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b00]:fsqrt.d fa1, fa0, dyn
	-[0x80001b04]:csrrs a7, fflags, zero
	-[0x80001b08]:fsd fa1, 1936(a5)
Current Store : [0x80001b0c] : sd a7, 1944(a5) -- Store: [0x80005d98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffff800000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b18]:fsqrt.d fa1, fa0, dyn
	-[0x80001b1c]:csrrs a7, fflags, zero
	-[0x80001b20]:fsd fa1, 1952(a5)
Current Store : [0x80001b24] : sd a7, 1960(a5) -- Store: [0x80005da8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x36c and fm1 == 0xffffffffc0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b30]:fsqrt.d fa1, fa0, dyn
	-[0x80001b34]:csrrs a7, fflags, zero
	-[0x80001b38]:fsd fa1, 1968(a5)
Current Store : [0x80001b3c] : sd a7, 1976(a5) -- Store: [0x80005db8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffff000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b48]:fsqrt.d fa1, fa0, dyn
	-[0x80001b4c]:csrrs a7, fflags, zero
	-[0x80001b50]:fsd fa1, 1984(a5)
Current Store : [0x80001b54] : sd a7, 1992(a5) -- Store: [0x80005dc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x36d and fm1 == 0xffffffffe0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b60]:fsqrt.d fa1, fa0, dyn
	-[0x80001b64]:csrrs a7, fflags, zero
	-[0x80001b68]:fsd fa1, 2000(a5)
Current Store : [0x80001b6c] : sd a7, 2008(a5) -- Store: [0x80005dd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffe000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b78]:fsqrt.d fa1, fa0, dyn
	-[0x80001b7c]:csrrs a7, fflags, zero
	-[0x80001b80]:fsd fa1, 2016(a5)
Current Store : [0x80001b84] : sd a7, 2024(a5) -- Store: [0x80005de8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x36e and fm1 == 0xfffffffff0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b9c]:fsqrt.d fa1, fa0, dyn
	-[0x80001ba0]:csrrs a7, fflags, zero
	-[0x80001ba4]:fsd fa1, 0(a5)
Current Store : [0x80001ba8] : sd a7, 8(a5) -- Store: [0x80005df8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffc000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bb4]:fsqrt.d fa1, fa0, dyn
	-[0x80001bb8]:csrrs a7, fflags, zero
	-[0x80001bbc]:fsd fa1, 16(a5)
Current Store : [0x80001bc0] : sd a7, 24(a5) -- Store: [0x80005e08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x36f and fm1 == 0xfffffffff8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bcc]:fsqrt.d fa1, fa0, dyn
	-[0x80001bd0]:csrrs a7, fflags, zero
	-[0x80001bd4]:fsd fa1, 32(a5)
Current Store : [0x80001bd8] : sd a7, 40(a5) -- Store: [0x80005e18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfff8000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001be4]:fsqrt.d fa1, fa0, dyn
	-[0x80001be8]:csrrs a7, fflags, zero
	-[0x80001bec]:fsd fa1, 48(a5)
Current Store : [0x80001bf0] : sd a7, 56(a5) -- Store: [0x80005e28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x370 and fm1 == 0xfffffffffc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bfc]:fsqrt.d fa1, fa0, dyn
	-[0x80001c00]:csrrs a7, fflags, zero
	-[0x80001c04]:fsd fa1, 64(a5)
Current Store : [0x80001c08] : sd a7, 72(a5) -- Store: [0x80005e38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfff0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c14]:fsqrt.d fa1, fa0, dyn
	-[0x80001c18]:csrrs a7, fflags, zero
	-[0x80001c1c]:fsd fa1, 80(a5)
Current Store : [0x80001c20] : sd a7, 88(a5) -- Store: [0x80005e48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x371 and fm1 == 0xfffffffffe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c2c]:fsqrt.d fa1, fa0, dyn
	-[0x80001c30]:csrrs a7, fflags, zero
	-[0x80001c34]:fsd fa1, 96(a5)
Current Store : [0x80001c38] : sd a7, 104(a5) -- Store: [0x80005e58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffe0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c44]:fsqrt.d fa1, fa0, dyn
	-[0x80001c48]:csrrs a7, fflags, zero
	-[0x80001c4c]:fsd fa1, 112(a5)
Current Store : [0x80001c50] : sd a7, 120(a5) -- Store: [0x80005e68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x372 and fm1 == 0xffffffffff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c5c]:fsqrt.d fa1, fa0, dyn
	-[0x80001c60]:csrrs a7, fflags, zero
	-[0x80001c64]:fsd fa1, 128(a5)
Current Store : [0x80001c68] : sd a7, 136(a5) -- Store: [0x80005e78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffc0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c74]:fsqrt.d fa1, fa0, dyn
	-[0x80001c78]:csrrs a7, fflags, zero
	-[0x80001c7c]:fsd fa1, 144(a5)
Current Store : [0x80001c80] : sd a7, 152(a5) -- Store: [0x80005e88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x373 and fm1 == 0xffffffffff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c8c]:fsqrt.d fa1, fa0, dyn
	-[0x80001c90]:csrrs a7, fflags, zero
	-[0x80001c94]:fsd fa1, 160(a5)
Current Store : [0x80001c98] : sd a7, 168(a5) -- Store: [0x80005e98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xff80000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ca4]:fsqrt.d fa1, fa0, dyn
	-[0x80001ca8]:csrrs a7, fflags, zero
	-[0x80001cac]:fsd fa1, 176(a5)
Current Store : [0x80001cb0] : sd a7, 184(a5) -- Store: [0x80005ea8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x374 and fm1 == 0xffffffffffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cbc]:fsqrt.d fa1, fa0, dyn
	-[0x80001cc0]:csrrs a7, fflags, zero
	-[0x80001cc4]:fsd fa1, 192(a5)
Current Store : [0x80001cc8] : sd a7, 200(a5) -- Store: [0x80005eb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xff00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cd4]:fsqrt.d fa1, fa0, dyn
	-[0x80001cd8]:csrrs a7, fflags, zero
	-[0x80001cdc]:fsd fa1, 208(a5)
Current Store : [0x80001ce0] : sd a7, 216(a5) -- Store: [0x80005ec8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x375 and fm1 == 0xffffffffffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cec]:fsqrt.d fa1, fa0, dyn
	-[0x80001cf0]:csrrs a7, fflags, zero
	-[0x80001cf4]:fsd fa1, 224(a5)
Current Store : [0x80001cf8] : sd a7, 232(a5) -- Store: [0x80005ed8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfe00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d04]:fsqrt.d fa1, fa0, dyn
	-[0x80001d08]:csrrs a7, fflags, zero
	-[0x80001d0c]:fsd fa1, 240(a5)
Current Store : [0x80001d10] : sd a7, 248(a5) -- Store: [0x80005ee8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x376 and fm1 == 0xfffffffffff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d1c]:fsqrt.d fa1, fa0, dyn
	-[0x80001d20]:csrrs a7, fflags, zero
	-[0x80001d24]:fsd fa1, 256(a5)
Current Store : [0x80001d28] : sd a7, 264(a5) -- Store: [0x80005ef8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xfc00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d34]:fsqrt.d fa1, fa0, dyn
	-[0x80001d38]:csrrs a7, fflags, zero
	-[0x80001d3c]:fsd fa1, 272(a5)
Current Store : [0x80001d40] : sd a7, 280(a5) -- Store: [0x80005f08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x377 and fm1 == 0xfffffffffff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d4c]:fsqrt.d fa1, fa0, dyn
	-[0x80001d50]:csrrs a7, fflags, zero
	-[0x80001d54]:fsd fa1, 288(a5)
Current Store : [0x80001d58] : sd a7, 296(a5) -- Store: [0x80005f18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xf800000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d64]:fsqrt.d fa1, fa0, dyn
	-[0x80001d68]:csrrs a7, fflags, zero
	-[0x80001d6c]:fsd fa1, 304(a5)
Current Store : [0x80001d70] : sd a7, 312(a5) -- Store: [0x80005f28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x378 and fm1 == 0xfffffffffffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d7c]:fsqrt.d fa1, fa0, dyn
	-[0x80001d80]:csrrs a7, fflags, zero
	-[0x80001d84]:fsd fa1, 320(a5)
Current Store : [0x80001d88] : sd a7, 328(a5) -- Store: [0x80005f38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xf000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d94]:fsqrt.d fa1, fa0, dyn
	-[0x80001d98]:csrrs a7, fflags, zero
	-[0x80001d9c]:fsd fa1, 336(a5)
Current Store : [0x80001da0] : sd a7, 344(a5) -- Store: [0x80005f48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x379 and fm1 == 0xfffffffffffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001dac]:fsqrt.d fa1, fa0, dyn
	-[0x80001db0]:csrrs a7, fflags, zero
	-[0x80001db4]:fsd fa1, 352(a5)
Current Store : [0x80001db8] : sd a7, 360(a5) -- Store: [0x80005f58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xe000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001dc4]:fsqrt.d fa1, fa0, dyn
	-[0x80001dc8]:csrrs a7, fflags, zero
	-[0x80001dcc]:fsd fa1, 368(a5)
Current Store : [0x80001dd0] : sd a7, 376(a5) -- Store: [0x80005f68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37a and fm1 == 0xffffffffffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ddc]:fsqrt.d fa1, fa0, dyn
	-[0x80001de0]:csrrs a7, fflags, zero
	-[0x80001de4]:fsd fa1, 384(a5)
Current Store : [0x80001de8] : sd a7, 392(a5) -- Store: [0x80005f78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xc000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001df4]:fsqrt.d fa1, fa0, dyn
	-[0x80001df8]:csrrs a7, fflags, zero
	-[0x80001dfc]:fsd fa1, 400(a5)
Current Store : [0x80001e00] : sd a7, 408(a5) -- Store: [0x80005f88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37b and fm1 == 0xffffffffffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e0c]:fsqrt.d fa1, fa0, dyn
	-[0x80001e10]:csrrs a7, fflags, zero
	-[0x80001e14]:fsd fa1, 416(a5)
Current Store : [0x80001e18] : sd a7, 424(a5) -- Store: [0x80005f98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0x8000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e24]:fsqrt.d fa1, fa0, dyn
	-[0x80001e28]:csrrs a7, fflags, zero
	-[0x80001e2c]:fsd fa1, 432(a5)
Current Store : [0x80001e30] : sd a7, 440(a5) -- Store: [0x80005fa8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37c and fm1 == 0xffffffffffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e3c]:fsqrt.d fa1, fa0, dyn
	-[0x80001e40]:csrrs a7, fflags, zero
	-[0x80001e44]:fsd fa1, 448(a5)
Current Store : [0x80001e48] : sd a7, 456(a5) -- Store: [0x80005fb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e54]:fsqrt.d fa1, fa0, dyn
	-[0x80001e58]:csrrs a7, fflags, zero
	-[0x80001e5c]:fsd fa1, 464(a5)
Current Store : [0x80001e60] : sd a7, 472(a5) -- Store: [0x80005fc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e6c]:fsqrt.d fa1, fa0, dyn
	-[0x80001e70]:csrrs a7, fflags, zero
	-[0x80001e74]:fsd fa1, 480(a5)
Current Store : [0x80001e78] : sd a7, 488(a5) -- Store: [0x80005fd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e84]:fsqrt.d fa1, fa0, dyn
	-[0x80001e88]:csrrs a7, fflags, zero
	-[0x80001e8c]:fsd fa1, 496(a5)
Current Store : [0x80001e90] : sd a7, 504(a5) -- Store: [0x80005fe8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x400 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e9c]:fsqrt.d fa1, fa0, dyn
	-[0x80001ea0]:csrrs a7, fflags, zero
	-[0x80001ea4]:fsd fa1, 512(a5)
Current Store : [0x80001ea8] : sd a7, 520(a5) -- Store: [0x80005ff8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001eb4]:fsqrt.d fa1, fa0, dyn
	-[0x80001eb8]:csrrs a7, fflags, zero
	-[0x80001ebc]:fsd fa1, 528(a5)
Current Store : [0x80001ec0] : sd a7, 536(a5) -- Store: [0x80006008]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ecc]:fsqrt.d fa1, fa0, dyn
	-[0x80001ed0]:csrrs a7, fflags, zero
	-[0x80001ed4]:fsd fa1, 544(a5)
Current Store : [0x80001ed8] : sd a7, 552(a5) -- Store: [0x80006018]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ee4]:fsqrt.d fa1, fa0, dyn
	-[0x80001ee8]:csrrs a7, fflags, zero
	-[0x80001eec]:fsd fa1, 560(a5)
Current Store : [0x80001ef0] : sd a7, 568(a5) -- Store: [0x80006028]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000004 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001efc]:fsqrt.d fa1, fa0, dyn
	-[0x80001f00]:csrrs a7, fflags, zero
	-[0x80001f04]:fsd fa1, 576(a5)
Current Store : [0x80001f08] : sd a7, 584(a5) -- Store: [0x80006038]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f14]:fsqrt.d fa1, fa0, dyn
	-[0x80001f18]:csrrs a7, fflags, zero
	-[0x80001f1c]:fsd fa1, 592(a5)
Current Store : [0x80001f20] : sd a7, 600(a5) -- Store: [0x80006048]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000008 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f2c]:fsqrt.d fa1, fa0, dyn
	-[0x80001f30]:csrrs a7, fflags, zero
	-[0x80001f34]:fsd fa1, 608(a5)
Current Store : [0x80001f38] : sd a7, 616(a5) -- Store: [0x80006058]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f44]:fsqrt.d fa1, fa0, dyn
	-[0x80001f48]:csrrs a7, fflags, zero
	-[0x80001f4c]:fsd fa1, 624(a5)
Current Store : [0x80001f50] : sd a7, 632(a5) -- Store: [0x80006068]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000010 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f5c]:fsqrt.d fa1, fa0, dyn
	-[0x80001f60]:csrrs a7, fflags, zero
	-[0x80001f64]:fsd fa1, 640(a5)
Current Store : [0x80001f68] : sd a7, 648(a5) -- Store: [0x80006078]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffff0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f74]:fsqrt.d fa1, fa0, dyn
	-[0x80001f78]:csrrs a7, fflags, zero
	-[0x80001f7c]:fsd fa1, 656(a5)
Current Store : [0x80001f80] : sd a7, 664(a5) -- Store: [0x80006088]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000020 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f8c]:fsqrt.d fa1, fa0, dyn
	-[0x80001f90]:csrrs a7, fflags, zero
	-[0x80001f94]:fsd fa1, 672(a5)
Current Store : [0x80001f98] : sd a7, 680(a5) -- Store: [0x80006098]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffffe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fa4]:fsqrt.d fa1, fa0, dyn
	-[0x80001fa8]:csrrs a7, fflags, zero
	-[0x80001fac]:fsd fa1, 688(a5)
Current Store : [0x80001fb0] : sd a7, 696(a5) -- Store: [0x800060a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000040 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fbc]:fsqrt.d fa1, fa0, dyn
	-[0x80001fc0]:csrrs a7, fflags, zero
	-[0x80001fc4]:fsd fa1, 704(a5)
Current Store : [0x80001fc8] : sd a7, 712(a5) -- Store: [0x800060b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffffc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fd4]:fsqrt.d fa1, fa0, dyn
	-[0x80001fd8]:csrrs a7, fflags, zero
	-[0x80001fdc]:fsd fa1, 720(a5)
Current Store : [0x80001fe0] : sd a7, 728(a5) -- Store: [0x800060c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000080 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fec]:fsqrt.d fa1, fa0, dyn
	-[0x80001ff0]:csrrs a7, fflags, zero
	-[0x80001ff4]:fsd fa1, 736(a5)
Current Store : [0x80001ff8] : sd a7, 744(a5) -- Store: [0x800060d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffff80 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002004]:fsqrt.d fa1, fa0, dyn
	-[0x80002008]:csrrs a7, fflags, zero
	-[0x8000200c]:fsd fa1, 752(a5)
Current Store : [0x80002010] : sd a7, 760(a5) -- Store: [0x800060e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000100 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000201c]:fsqrt.d fa1, fa0, dyn
	-[0x80002020]:csrrs a7, fflags, zero
	-[0x80002024]:fsd fa1, 768(a5)
Current Store : [0x80002028] : sd a7, 776(a5) -- Store: [0x800060f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffff00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002034]:fsqrt.d fa1, fa0, dyn
	-[0x80002038]:csrrs a7, fflags, zero
	-[0x8000203c]:fsd fa1, 784(a5)
Current Store : [0x80002040] : sd a7, 792(a5) -- Store: [0x80006108]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000204c]:fsqrt.d fa1, fa0, dyn
	-[0x80002050]:csrrs a7, fflags, zero
	-[0x80002054]:fsd fa1, 800(a5)
Current Store : [0x80002058] : sd a7, 808(a5) -- Store: [0x80006118]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffe00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002064]:fsqrt.d fa1, fa0, dyn
	-[0x80002068]:csrrs a7, fflags, zero
	-[0x8000206c]:fsd fa1, 816(a5)
Current Store : [0x80002070] : sd a7, 824(a5) -- Store: [0x80006128]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000400 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000207c]:fsqrt.d fa1, fa0, dyn
	-[0x80002080]:csrrs a7, fflags, zero
	-[0x80002084]:fsd fa1, 832(a5)
Current Store : [0x80002088] : sd a7, 840(a5) -- Store: [0x80006138]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffc00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002094]:fsqrt.d fa1, fa0, dyn
	-[0x80002098]:csrrs a7, fflags, zero
	-[0x8000209c]:fsd fa1, 848(a5)
Current Store : [0x800020a0] : sd a7, 856(a5) -- Store: [0x80006148]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020ac]:fsqrt.d fa1, fa0, dyn
	-[0x800020b0]:csrrs a7, fflags, zero
	-[0x800020b4]:fsd fa1, 864(a5)
Current Store : [0x800020b8] : sd a7, 872(a5) -- Store: [0x80006158]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffff800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020c4]:fsqrt.d fa1, fa0, dyn
	-[0x800020c8]:csrrs a7, fflags, zero
	-[0x800020cc]:fsd fa1, 880(a5)
Current Store : [0x800020d0] : sd a7, 888(a5) -- Store: [0x80006168]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000001000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020dc]:fsqrt.d fa1, fa0, dyn
	-[0x800020e0]:csrrs a7, fflags, zero
	-[0x800020e4]:fsd fa1, 896(a5)
Current Store : [0x800020e8] : sd a7, 904(a5) -- Store: [0x80006178]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffff000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020f4]:fsqrt.d fa1, fa0, dyn
	-[0x800020f8]:csrrs a7, fflags, zero
	-[0x800020fc]:fsd fa1, 912(a5)
Current Store : [0x80002100] : sd a7, 920(a5) -- Store: [0x80006188]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000002000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000210c]:fsqrt.d fa1, fa0, dyn
	-[0x80002110]:csrrs a7, fflags, zero
	-[0x80002114]:fsd fa1, 928(a5)
Current Store : [0x80002118] : sd a7, 936(a5) -- Store: [0x80006198]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffe000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002124]:fsqrt.d fa1, fa0, dyn
	-[0x80002128]:csrrs a7, fflags, zero
	-[0x8000212c]:fsd fa1, 944(a5)
Current Store : [0x80002130] : sd a7, 952(a5) -- Store: [0x800061a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000004000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000213c]:fsqrt.d fa1, fa0, dyn
	-[0x80002140]:csrrs a7, fflags, zero
	-[0x80002144]:fsd fa1, 960(a5)
Current Store : [0x80002148] : sd a7, 968(a5) -- Store: [0x800061b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffc000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002154]:fsqrt.d fa1, fa0, dyn
	-[0x80002158]:csrrs a7, fflags, zero
	-[0x8000215c]:fsd fa1, 976(a5)
Current Store : [0x80002160] : sd a7, 984(a5) -- Store: [0x800061c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000008000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000216c]:fsqrt.d fa1, fa0, dyn
	-[0x80002170]:csrrs a7, fflags, zero
	-[0x80002174]:fsd fa1, 992(a5)
Current Store : [0x80002178] : sd a7, 1000(a5) -- Store: [0x800061d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffff8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002184]:fsqrt.d fa1, fa0, dyn
	-[0x80002188]:csrrs a7, fflags, zero
	-[0x8000218c]:fsd fa1, 1008(a5)
Current Store : [0x80002190] : sd a7, 1016(a5) -- Store: [0x800061e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000010000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000219c]:fsqrt.d fa1, fa0, dyn
	-[0x800021a0]:csrrs a7, fflags, zero
	-[0x800021a4]:fsd fa1, 1024(a5)
Current Store : [0x800021a8] : sd a7, 1032(a5) -- Store: [0x800061f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffff0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021b4]:fsqrt.d fa1, fa0, dyn
	-[0x800021b8]:csrrs a7, fflags, zero
	-[0x800021bc]:fsd fa1, 1040(a5)
Current Store : [0x800021c0] : sd a7, 1048(a5) -- Store: [0x80006208]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000020000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021cc]:fsqrt.d fa1, fa0, dyn
	-[0x800021d0]:csrrs a7, fflags, zero
	-[0x800021d4]:fsd fa1, 1056(a5)
Current Store : [0x800021d8] : sd a7, 1064(a5) -- Store: [0x80006218]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffe0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021e4]:fsqrt.d fa1, fa0, dyn
	-[0x800021e8]:csrrs a7, fflags, zero
	-[0x800021ec]:fsd fa1, 1072(a5)
Current Store : [0x800021f0] : sd a7, 1080(a5) -- Store: [0x80006228]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000040000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021fc]:fsqrt.d fa1, fa0, dyn
	-[0x80002200]:csrrs a7, fflags, zero
	-[0x80002204]:fsd fa1, 1088(a5)
Current Store : [0x80002208] : sd a7, 1096(a5) -- Store: [0x80006238]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffc0000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002214]:fsqrt.d fa1, fa0, dyn
	-[0x80002218]:csrrs a7, fflags, zero
	-[0x8000221c]:fsd fa1, 1104(a5)
Current Store : [0x80002220] : sd a7, 1112(a5) -- Store: [0x80006248]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000080000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000222c]:fsqrt.d fa1, fa0, dyn
	-[0x80002230]:csrrs a7, fflags, zero
	-[0x80002234]:fsd fa1, 1120(a5)
Current Store : [0x80002238] : sd a7, 1128(a5) -- Store: [0x80006258]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffff80000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002244]:fsqrt.d fa1, fa0, dyn
	-[0x80002248]:csrrs a7, fflags, zero
	-[0x8000224c]:fsd fa1, 1136(a5)
Current Store : [0x80002250] : sd a7, 1144(a5) -- Store: [0x80006268]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000100000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000225c]:fsqrt.d fa1, fa0, dyn
	-[0x80002260]:csrrs a7, fflags, zero
	-[0x80002264]:fsd fa1, 1152(a5)
Current Store : [0x80002268] : sd a7, 1160(a5) -- Store: [0x80006278]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffff00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002274]:fsqrt.d fa1, fa0, dyn
	-[0x80002278]:csrrs a7, fflags, zero
	-[0x8000227c]:fsd fa1, 1168(a5)
Current Store : [0x80002280] : sd a7, 1176(a5) -- Store: [0x80006288]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000200000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000228c]:fsqrt.d fa1, fa0, dyn
	-[0x80002290]:csrrs a7, fflags, zero
	-[0x80002294]:fsd fa1, 1184(a5)
Current Store : [0x80002298] : sd a7, 1192(a5) -- Store: [0x80006298]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffe00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022a4]:fsqrt.d fa1, fa0, dyn
	-[0x800022a8]:csrrs a7, fflags, zero
	-[0x800022ac]:fsd fa1, 1200(a5)
Current Store : [0x800022b0] : sd a7, 1208(a5) -- Store: [0x800062a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022bc]:fsqrt.d fa1, fa0, dyn
	-[0x800022c0]:csrrs a7, fflags, zero
	-[0x800022c4]:fsd fa1, 1216(a5)
Current Store : [0x800022c8] : sd a7, 1224(a5) -- Store: [0x800062b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffc00000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022d4]:fsqrt.d fa1, fa0, dyn
	-[0x800022d8]:csrrs a7, fflags, zero
	-[0x800022dc]:fsd fa1, 1232(a5)
Current Store : [0x800022e0] : sd a7, 1240(a5) -- Store: [0x800062c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000800000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800022ec]:fsqrt.d fa1, fa0, dyn
	-[0x800022f0]:csrrs a7, fflags, zero
	-[0x800022f4]:fsd fa1, 1248(a5)
Current Store : [0x800022f8] : sd a7, 1256(a5) -- Store: [0x800062d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffff800000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002304]:fsqrt.d fa1, fa0, dyn
	-[0x80002308]:csrrs a7, fflags, zero
	-[0x8000230c]:fsd fa1, 1264(a5)
Current Store : [0x80002310] : sd a7, 1272(a5) -- Store: [0x800062e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000001000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000231c]:fsqrt.d fa1, fa0, dyn
	-[0x80002320]:csrrs a7, fflags, zero
	-[0x80002324]:fsd fa1, 1280(a5)
Current Store : [0x80002328] : sd a7, 1288(a5) -- Store: [0x800062f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffff000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002334]:fsqrt.d fa1, fa0, dyn
	-[0x80002338]:csrrs a7, fflags, zero
	-[0x8000233c]:fsd fa1, 1296(a5)
Current Store : [0x80002340] : sd a7, 1304(a5) -- Store: [0x80006308]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000002000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000234c]:fsqrt.d fa1, fa0, dyn
	-[0x80002350]:csrrs a7, fflags, zero
	-[0x80002354]:fsd fa1, 1312(a5)
Current Store : [0x80002358] : sd a7, 1320(a5) -- Store: [0x80006318]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffe000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002364]:fsqrt.d fa1, fa0, dyn
	-[0x80002368]:csrrs a7, fflags, zero
	-[0x8000236c]:fsd fa1, 1328(a5)
Current Store : [0x80002370] : sd a7, 1336(a5) -- Store: [0x80006328]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000004000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000237c]:fsqrt.d fa1, fa0, dyn
	-[0x80002380]:csrrs a7, fflags, zero
	-[0x80002384]:fsd fa1, 1344(a5)
Current Store : [0x80002388] : sd a7, 1352(a5) -- Store: [0x80006338]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffc000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002394]:fsqrt.d fa1, fa0, dyn
	-[0x80002398]:csrrs a7, fflags, zero
	-[0x8000239c]:fsd fa1, 1360(a5)
Current Store : [0x800023a0] : sd a7, 1368(a5) -- Store: [0x80006348]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000008000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023ac]:fsqrt.d fa1, fa0, dyn
	-[0x800023b0]:csrrs a7, fflags, zero
	-[0x800023b4]:fsd fa1, 1376(a5)
Current Store : [0x800023b8] : sd a7, 1384(a5) -- Store: [0x80006358]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffff8000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023c4]:fsqrt.d fa1, fa0, dyn
	-[0x800023c8]:csrrs a7, fflags, zero
	-[0x800023cc]:fsd fa1, 1392(a5)
Current Store : [0x800023d0] : sd a7, 1400(a5) -- Store: [0x80006368]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000010000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023dc]:fsqrt.d fa1, fa0, dyn
	-[0x800023e0]:csrrs a7, fflags, zero
	-[0x800023e4]:fsd fa1, 1408(a5)
Current Store : [0x800023e8] : sd a7, 1416(a5) -- Store: [0x80006378]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffff0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800023f4]:fsqrt.d fa1, fa0, dyn
	-[0x800023f8]:csrrs a7, fflags, zero
	-[0x800023fc]:fsd fa1, 1424(a5)
Current Store : [0x80002400] : sd a7, 1432(a5) -- Store: [0x80006388]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000020000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000240c]:fsqrt.d fa1, fa0, dyn
	-[0x80002410]:csrrs a7, fflags, zero
	-[0x80002414]:fsd fa1, 1440(a5)
Current Store : [0x80002418] : sd a7, 1448(a5) -- Store: [0x80006398]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffe0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002424]:fsqrt.d fa1, fa0, dyn
	-[0x80002428]:csrrs a7, fflags, zero
	-[0x8000242c]:fsd fa1, 1456(a5)
Current Store : [0x80002430] : sd a7, 1464(a5) -- Store: [0x800063a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000040000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000243c]:fsqrt.d fa1, fa0, dyn
	-[0x80002440]:csrrs a7, fflags, zero
	-[0x80002444]:fsd fa1, 1472(a5)
Current Store : [0x80002448] : sd a7, 1480(a5) -- Store: [0x800063b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffc0000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002454]:fsqrt.d fa1, fa0, dyn
	-[0x80002458]:csrrs a7, fflags, zero
	-[0x8000245c]:fsd fa1, 1488(a5)
Current Store : [0x80002460] : sd a7, 1496(a5) -- Store: [0x800063c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000080000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000246c]:fsqrt.d fa1, fa0, dyn
	-[0x80002470]:csrrs a7, fflags, zero
	-[0x80002474]:fsd fa1, 1504(a5)
Current Store : [0x80002478] : sd a7, 1512(a5) -- Store: [0x800063d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffff80000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002484]:fsqrt.d fa1, fa0, dyn
	-[0x80002488]:csrrs a7, fflags, zero
	-[0x8000248c]:fsd fa1, 1520(a5)
Current Store : [0x80002490] : sd a7, 1528(a5) -- Store: [0x800063e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000100000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000249c]:fsqrt.d fa1, fa0, dyn
	-[0x800024a0]:csrrs a7, fflags, zero
	-[0x800024a4]:fsd fa1, 1536(a5)
Current Store : [0x800024a8] : sd a7, 1544(a5) -- Store: [0x800063f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffff00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024b4]:fsqrt.d fa1, fa0, dyn
	-[0x800024b8]:csrrs a7, fflags, zero
	-[0x800024bc]:fsd fa1, 1552(a5)
Current Store : [0x800024c0] : sd a7, 1560(a5) -- Store: [0x80006408]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000200000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024cc]:fsqrt.d fa1, fa0, dyn
	-[0x800024d0]:csrrs a7, fflags, zero
	-[0x800024d4]:fsd fa1, 1568(a5)
Current Store : [0x800024d8] : sd a7, 1576(a5) -- Store: [0x80006418]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffe00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024e4]:fsqrt.d fa1, fa0, dyn
	-[0x800024e8]:csrrs a7, fflags, zero
	-[0x800024ec]:fsd fa1, 1584(a5)
Current Store : [0x800024f0] : sd a7, 1592(a5) -- Store: [0x80006428]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000400000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800024fc]:fsqrt.d fa1, fa0, dyn
	-[0x80002500]:csrrs a7, fflags, zero
	-[0x80002504]:fsd fa1, 1600(a5)
Current Store : [0x80002508] : sd a7, 1608(a5) -- Store: [0x80006438]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffc00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002514]:fsqrt.d fa1, fa0, dyn
	-[0x80002518]:csrrs a7, fflags, zero
	-[0x8000251c]:fsd fa1, 1616(a5)
Current Store : [0x80002520] : sd a7, 1624(a5) -- Store: [0x80006448]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000800000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000252c]:fsqrt.d fa1, fa0, dyn
	-[0x80002530]:csrrs a7, fflags, zero
	-[0x80002534]:fsd fa1, 1632(a5)
Current Store : [0x80002538] : sd a7, 1640(a5) -- Store: [0x80006458]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffff800000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002544]:fsqrt.d fa1, fa0, dyn
	-[0x80002548]:csrrs a7, fflags, zero
	-[0x8000254c]:fsd fa1, 1648(a5)
Current Store : [0x80002550] : sd a7, 1656(a5) -- Store: [0x80006468]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe001000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000255c]:fsqrt.d fa1, fa0, dyn
	-[0x80002560]:csrrs a7, fflags, zero
	-[0x80002564]:fsd fa1, 1664(a5)
Current Store : [0x80002568] : sd a7, 1672(a5) -- Store: [0x80006478]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffff000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002574]:fsqrt.d fa1, fa0, dyn
	-[0x80002578]:csrrs a7, fflags, zero
	-[0x8000257c]:fsd fa1, 1680(a5)
Current Store : [0x80002580] : sd a7, 1688(a5) -- Store: [0x80006488]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe002000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000258c]:fsqrt.d fa1, fa0, dyn
	-[0x80002590]:csrrs a7, fflags, zero
	-[0x80002594]:fsd fa1, 1696(a5)
Current Store : [0x80002598] : sd a7, 1704(a5) -- Store: [0x80006498]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffe000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800025a4]:fsqrt.d fa1, fa0, dyn
	-[0x800025a8]:csrrs a7, fflags, zero
	-[0x800025ac]:fsd fa1, 1712(a5)
Current Store : [0x800025b0] : sd a7, 1720(a5) -- Store: [0x800064a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe004000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800025bc]:fsqrt.d fa1, fa0, dyn
	-[0x800025c0]:csrrs a7, fflags, zero
	-[0x800025c4]:fsd fa1, 1728(a5)
Current Store : [0x800025c8] : sd a7, 1736(a5) -- Store: [0x800064b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffc000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800025d4]:fsqrt.d fa1, fa0, dyn
	-[0x800025d8]:csrrs a7, fflags, zero
	-[0x800025dc]:fsd fa1, 1744(a5)
Current Store : [0x800025e0] : sd a7, 1752(a5) -- Store: [0x800064c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe008000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800025ec]:fsqrt.d fa1, fa0, dyn
	-[0x800025f0]:csrrs a7, fflags, zero
	-[0x800025f4]:fsd fa1, 1760(a5)
Current Store : [0x800025f8] : sd a7, 1768(a5) -- Store: [0x800064d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfff8000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002604]:fsqrt.d fa1, fa0, dyn
	-[0x80002608]:csrrs a7, fflags, zero
	-[0x8000260c]:fsd fa1, 1776(a5)
Current Store : [0x80002610] : sd a7, 1784(a5) -- Store: [0x800064e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe010000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000261c]:fsqrt.d fa1, fa0, dyn
	-[0x80002620]:csrrs a7, fflags, zero
	-[0x80002624]:fsd fa1, 1792(a5)
Current Store : [0x80002628] : sd a7, 1800(a5) -- Store: [0x800064f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfff0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002634]:fsqrt.d fa1, fa0, dyn
	-[0x80002638]:csrrs a7, fflags, zero
	-[0x8000263c]:fsd fa1, 1808(a5)
Current Store : [0x80002640] : sd a7, 1816(a5) -- Store: [0x80006508]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe020000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000264c]:fsqrt.d fa1, fa0, dyn
	-[0x80002650]:csrrs a7, fflags, zero
	-[0x80002654]:fsd fa1, 1824(a5)
Current Store : [0x80002658] : sd a7, 1832(a5) -- Store: [0x80006518]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffe0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002664]:fsqrt.d fa1, fa0, dyn
	-[0x80002668]:csrrs a7, fflags, zero
	-[0x8000266c]:fsd fa1, 1840(a5)
Current Store : [0x80002670] : sd a7, 1848(a5) -- Store: [0x80006528]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe040000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000267c]:fsqrt.d fa1, fa0, dyn
	-[0x80002680]:csrrs a7, fflags, zero
	-[0x80002684]:fsd fa1, 1856(a5)
Current Store : [0x80002688] : sd a7, 1864(a5) -- Store: [0x80006538]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffc0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002694]:fsqrt.d fa1, fa0, dyn
	-[0x80002698]:csrrs a7, fflags, zero
	-[0x8000269c]:fsd fa1, 1872(a5)
Current Store : [0x800026a0] : sd a7, 1880(a5) -- Store: [0x80006548]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe080000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800026ac]:fsqrt.d fa1, fa0, dyn
	-[0x800026b0]:csrrs a7, fflags, zero
	-[0x800026b4]:fsd fa1, 1888(a5)
Current Store : [0x800026b8] : sd a7, 1896(a5) -- Store: [0x80006558]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xff80000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800026c4]:fsqrt.d fa1, fa0, dyn
	-[0x800026c8]:csrrs a7, fflags, zero
	-[0x800026cc]:fsd fa1, 1904(a5)
Current Store : [0x800026d0] : sd a7, 1912(a5) -- Store: [0x80006568]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe100000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800026dc]:fsqrt.d fa1, fa0, dyn
	-[0x800026e0]:csrrs a7, fflags, zero
	-[0x800026e4]:fsd fa1, 1920(a5)
Current Store : [0x800026e8] : sd a7, 1928(a5) -- Store: [0x80006578]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xff00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800026f4]:fsqrt.d fa1, fa0, dyn
	-[0x800026f8]:csrrs a7, fflags, zero
	-[0x800026fc]:fsd fa1, 1936(a5)
Current Store : [0x80002700] : sd a7, 1944(a5) -- Store: [0x80006588]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe200000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000270c]:fsqrt.d fa1, fa0, dyn
	-[0x80002710]:csrrs a7, fflags, zero
	-[0x80002714]:fsd fa1, 1952(a5)
Current Store : [0x80002718] : sd a7, 1960(a5) -- Store: [0x80006598]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfe00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002724]:fsqrt.d fa1, fa0, dyn
	-[0x80002728]:csrrs a7, fflags, zero
	-[0x8000272c]:fsd fa1, 1968(a5)
Current Store : [0x80002730] : sd a7, 1976(a5) -- Store: [0x800065a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe400000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000273c]:fsqrt.d fa1, fa0, dyn
	-[0x80002740]:csrrs a7, fflags, zero
	-[0x80002744]:fsd fa1, 1984(a5)
Current Store : [0x80002748] : sd a7, 1992(a5) -- Store: [0x800065b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfc00000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002754]:fsqrt.d fa1, fa0, dyn
	-[0x80002758]:csrrs a7, fflags, zero
	-[0x8000275c]:fsd fa1, 2000(a5)
Current Store : [0x80002760] : sd a7, 2008(a5) -- Store: [0x800065c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe800000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000276c]:fsqrt.d fa1, fa0, dyn
	-[0x80002770]:csrrs a7, fflags, zero
	-[0x80002774]:fsd fa1, 2016(a5)
Current Store : [0x80002778] : sd a7, 2024(a5) -- Store: [0x800065d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xf800000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000278c]:fsqrt.d fa1, fa0, dyn
	-[0x80002790]:csrrs a7, fflags, zero
	-[0x80002794]:fsd fa1, 0(a5)
Current Store : [0x80002798] : sd a7, 8(a5) -- Store: [0x800065e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0xf000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800027a4]:fsqrt.d fa1, fa0, dyn
	-[0x800027a8]:csrrs a7, fflags, zero
	-[0x800027ac]:fsd fa1, 16(a5)
Current Store : [0x800027b0] : sd a7, 24(a5) -- Store: [0x800065f8]:0x0000000000000001





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

|s.no|            signature             |                                                                       coverpoints                                                                       |                                                       code                                                        |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004e10]<br>0xDB7D5BFDDB7D5BFD|- opcode : fsqrt.d<br> - rs1 : f24<br> - rd : f24<br> - rs1 == rd<br> - fs1 == 0 and fe1 == 0x369 and fm1 == 0x6d601ad376ab9 and rm_val == 0  #nosat<br> |[0x800003b8]:fsqrt.d fs8, fs8, dyn<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:fsd fs8, 0(a5)<br>     |
|   2|[0x80004e20]<br>0x6DF56FF76DF56FF7|- rs1 : f29<br> - rd : f22<br> - rs1 != rd<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xd333333333333 and rm_val == 0  #nosat<br>                        |[0x800003d0]:fsqrt.d fs6, ft9, dyn<br> [0x800003d4]:csrrs a7, fflags, zero<br> [0x800003d8]:fsd fs6, 16(a5)<br>    |
|   3|[0x80004e30]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f2<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xccccccccccccc and rm_val == 0  #nosat<br>                                         |[0x800003e8]:fsqrt.d fs3, ft2, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:fsd fs3, 32(a5)<br>    |
|   4|[0x80004e40]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f12<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xd6db6db6db6db and rm_val == 0  #nosat<br>                                         |[0x80000400]:fsqrt.d fs0, fa2, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fs0, 48(a5)<br>    |
|   5|[0x80004e50]<br>0xDBEADFEEDBEADFEE|- rs1 : f4<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc924924924924 and rm_val == 0  #nosat<br>                                         |[0x80000418]:fsqrt.d fs5, ft4, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsd fs5, 64(a5)<br>    |
|   6|[0x80004e60]<br>0x0000000A00000000|- rs1 : f22<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xd111111111111 and rm_val == 0  #nosat<br>                                         |[0x80000430]:fsqrt.d ft3, fs6, dyn<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:fsd ft3, 80(a5)<br>    |
|   7|[0x80004e70]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f11<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xceeeeeeeeeeee and rm_val == 0  #nosat<br>                                        |[0x80000448]:fsqrt.d fs4, fa1, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd fs4, 96(a5)<br>    |
|   8|[0x80004e80]<br>0xEDBEADFEEDBEADFE|- rs1 : f26<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xd99999999999a and rm_val == 0  #nosat<br>                                        |[0x80000460]:fsqrt.d fs9, fs10, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd fs9, 112(a5)<br>  |
|   9|[0x80004e90]<br>0xF56FF76DF56FF76D|- rs1 : f18<br> - rd : f14<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc666666666666 and rm_val == 0  #nosat<br>                                        |[0x80000478]:fsqrt.d fa4, fs2, dyn<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:fsd fa4, 128(a5)<br>   |
|  10|[0x80004ea0]<br>0x0000000080004010|- rs1 : f27<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdb6db6db6db6e and rm_val == 0  #nosat<br>                                        |[0x80000490]:fsqrt.d fa6, fs11, dyn<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:fsd fa6, 144(a5)<br>  |
|  11|[0x80004eb0]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f10<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xcdb6db6db6db6 and rm_val == 0  #nosat<br>                                        |[0x800004a8]:fsqrt.d fa2, fa0, dyn<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:fsd fa2, 160(a5)<br>   |
|  12|[0x80004ec0]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f16<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000000 and rm_val == 0  #nosat<br>                                         |[0x800004c0]:fsqrt.d ft4, fa6, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd ft4, 176(a5)<br>   |
|  13|[0x80004ed0]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f0<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xe000000000000 and rm_val == 0  #nosat<br>                                         |[0x800004d8]:fsqrt.d fs7, ft0, dyn<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:fsd fs7, 192(a5)<br>   |
|  14|[0x80004ee0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f17<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffffff and rm_val == 0  #nosat<br>                                        |[0x800004f0]:fsqrt.d fs11, fa7, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd fs11, 208(a5)<br> |
|  15|[0x80004ef0]<br>0xFEEDBEADFEEDBEAD|- rs1 : f21<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000002 and rm_val == 0  #nosat<br>                                         |[0x80000508]:fsqrt.d ft1, fs5, dyn<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:fsd ft1, 224(a5)<br>   |
|  16|[0x80004f00]<br>0x0000000080004E10|- rs1 : f1<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffffe and rm_val == 0  #nosat<br>                                         |[0x80000520]:fsqrt.d fa5, ft1, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd fa5, 240(a5)<br>   |
|  17|[0x80004f10]<br>0x76DF56FF76DF56FF|- rs1 : f14<br> - rd : f26<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000004 and rm_val == 0  #nosat<br>                                        |[0x80000538]:fsqrt.d fs10, fa4, dyn<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:fsd fs10, 256(a5)<br> |
|  18|[0x80004f20]<br>0xEEDBEADFEEDBEADF|- rs1 : f19<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffffc and rm_val == 0  #nosat<br>                                        |[0x80000550]:fsqrt.d ft9, fs3, dyn<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:fsd ft9, 272(a5)<br>   |
|  19|[0x80004f30]<br>0x0000000000000000|- rs1 : f13<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000008 and rm_val == 0  #nosat<br>                                         |[0x80000568]:fsqrt.d ft0, fa3, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsd ft0, 288(a5)<br>   |
|  20|[0x80004f40]<br>0xEADFEEDBEADFEEDB|- rs1 : f3<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffff8 and rm_val == 0  #nosat<br>                                         |[0x80000580]:fsqrt.d fa3, ft3, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd fa3, 304(a5)<br>   |
|  21|[0x80004f50]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f28<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000010 and rm_val == 0  #nosat<br>                                         |[0x80000598]:fsqrt.d ft7, ft8, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd ft7, 320(a5)<br>   |
|  22|[0x80004f60]<br>0xDF56FF76DF56FF76|- rs1 : f15<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffff0 and rm_val == 0  #nosat<br>                                        |[0x800005b0]:fsqrt.d fs2, fa5, dyn<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:fsd fs2, 336(a5)<br>   |
|  23|[0x80004f70]<br>0x0000000080004000|- rs1 : f25<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000020 and rm_val == 0  #nosat<br>                                         |[0x800005c8]:fsqrt.d ft6, fs9, dyn<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:fsd ft6, 352(a5)<br>   |
|  24|[0x80004f80]<br>0x0000000A00006000|- rs1 : f30<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffffe0 and rm_val == 0  #nosat<br>                                         |[0x800005e0]:fsqrt.d ft2, ft10, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd ft2, 368(a5)<br>  |
|  25|[0x80004f90]<br>0x0000000080000390|- rs1 : f8<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000040 and rm_val == 0  #nosat<br>                                          |[0x800005f8]:fsqrt.d ft5, fs0, dyn<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:fsd ft5, 384(a5)<br>   |
|  26|[0x80004fa0]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f31<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffffc0 and rm_val == 0  #nosat<br>                                        |[0x80000610]:fsqrt.d ft8, ft11, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsd ft8, 400(a5)<br>  |
|  27|[0x80004fb0]<br>0x56FF76DF56FF76DF|- rs1 : f23<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000080 and rm_val == 0  #nosat<br>                                        |[0x80000628]:fsqrt.d fa0, fs7, dyn<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:fsd fa0, 416(a5)<br>   |
|  28|[0x80004fc0]<br>0x0000000000000001|- rs1 : f6<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffff80 and rm_val == 0  #nosat<br>                                         |[0x80000640]:fsqrt.d fa7, ft6, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fa7, 432(a5)<br>   |
|  29|[0x80004fd0]<br>0xF76DF56FF76DF56F|- rs1 : f20<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000100 and rm_val == 0  #nosat<br>                                        |[0x80000658]:fsqrt.d ft10, fs4, dyn<br> [0x8000065c]:csrrs a7, fflags, zero<br> [0x80000660]:fsd ft10, 448(a5)<br> |
|  30|[0x80004fe0]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f7<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffff00 and rm_val == 0  #nosat<br>                                         |[0x80000670]:fsqrt.d fa1, ft7, dyn<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:fsd fa1, 464(a5)<br>   |
|  31|[0x80004ff0]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f9<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000200 and rm_val == 0  #nosat<br>                                         |[0x80000688]:fsqrt.d ft11, fs1, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsd ft11, 480(a5)<br> |
|  32|[0x80005000]<br>0xADFEEDBEADFEEDBE|- rs1 : f5<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffe00 and rm_val == 0  #nosat<br>                                          |[0x800006a0]:fsqrt.d fs1, ft5, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd fs1, 496(a5)<br>   |
|  33|[0x80005010]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000400 and rm_val == 0  #nosat<br>                                                                       |[0x800006b8]:fsqrt.d fa1, fa0, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsd fa1, 512(a5)<br>   |
|  34|[0x80005020]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffffc00 and rm_val == 0  #nosat<br>                                                                       |[0x800006d0]:fsqrt.d fa1, fa0, dyn<br> [0x800006d4]:csrrs a7, fflags, zero<br> [0x800006d8]:fsd fa1, 528(a5)<br>   |
|  35|[0x80005030]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000000800 and rm_val == 0  #nosat<br>                                                                       |[0x800006e8]:fsqrt.d fa1, fa0, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd fa1, 544(a5)<br>   |
|  36|[0x80005040]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffff800 and rm_val == 0  #nosat<br>                                                                       |[0x80000700]:fsqrt.d fa1, fa0, dyn<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:fsd fa1, 560(a5)<br>   |
|  37|[0x80005050]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000001000 and rm_val == 0  #nosat<br>                                                                       |[0x80000718]:fsqrt.d fa1, fa0, dyn<br> [0x8000071c]:csrrs a7, fflags, zero<br> [0x80000720]:fsd fa1, 576(a5)<br>   |
|  38|[0x80005060]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffff000 and rm_val == 0  #nosat<br>                                                                       |[0x80000730]:fsqrt.d fa1, fa0, dyn<br> [0x80000734]:csrrs a7, fflags, zero<br> [0x80000738]:fsd fa1, 592(a5)<br>   |
|  39|[0x80005070]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000002000 and rm_val == 0  #nosat<br>                                                                       |[0x80000748]:fsqrt.d fa1, fa0, dyn<br> [0x8000074c]:csrrs a7, fflags, zero<br> [0x80000750]:fsd fa1, 608(a5)<br>   |
|  40|[0x80005080]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffe000 and rm_val == 0  #nosat<br>                                                                       |[0x80000760]:fsqrt.d fa1, fa0, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsd fa1, 624(a5)<br>   |
|  41|[0x80005090]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000004000 and rm_val == 0  #nosat<br>                                                                       |[0x80000778]:fsqrt.d fa1, fa0, dyn<br> [0x8000077c]:csrrs a7, fflags, zero<br> [0x80000780]:fsd fa1, 640(a5)<br>   |
|  42|[0x800050a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffffc000 and rm_val == 0  #nosat<br>                                                                       |[0x80000790]:fsqrt.d fa1, fa0, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa1, 656(a5)<br>   |
|  43|[0x800050b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000008000 and rm_val == 0  #nosat<br>                                                                       |[0x800007a8]:fsqrt.d fa1, fa0, dyn<br> [0x800007ac]:csrrs a7, fflags, zero<br> [0x800007b0]:fsd fa1, 672(a5)<br>   |
|  44|[0x800050c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffff8000 and rm_val == 0  #nosat<br>                                                                       |[0x800007c0]:fsqrt.d fa1, fa0, dyn<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:fsd fa1, 688(a5)<br>   |
|  45|[0x800050d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000010000 and rm_val == 0  #nosat<br>                                                                       |[0x800007d8]:fsqrt.d fa1, fa0, dyn<br> [0x800007dc]:csrrs a7, fflags, zero<br> [0x800007e0]:fsd fa1, 704(a5)<br>   |
|  46|[0x800050e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffff0000 and rm_val == 0  #nosat<br>                                                                       |[0x800007f0]:fsqrt.d fa1, fa0, dyn<br> [0x800007f4]:csrrs a7, fflags, zero<br> [0x800007f8]:fsd fa1, 720(a5)<br>   |
|  47|[0x800050f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000020000 and rm_val == 0  #nosat<br>                                                                       |[0x80000808]:fsqrt.d fa1, fa0, dyn<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsd fa1, 736(a5)<br>   |
|  48|[0x80005100]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffe0000 and rm_val == 0  #nosat<br>                                                                       |[0x80000820]:fsqrt.d fa1, fa0, dyn<br> [0x80000824]:csrrs a7, fflags, zero<br> [0x80000828]:fsd fa1, 752(a5)<br>   |
|  49|[0x80005110]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000040000 and rm_val == 0  #nosat<br>                                                                       |[0x80000838]:fsqrt.d fa1, fa0, dyn<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:fsd fa1, 768(a5)<br>   |
|  50|[0x80005120]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffffc0000 and rm_val == 0  #nosat<br>                                                                       |[0x80000850]:fsqrt.d fa1, fa0, dyn<br> [0x80000854]:csrrs a7, fflags, zero<br> [0x80000858]:fsd fa1, 784(a5)<br>   |
|  51|[0x80005130]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000080000 and rm_val == 0  #nosat<br>                                                                       |[0x80000868]:fsqrt.d fa1, fa0, dyn<br> [0x8000086c]:csrrs a7, fflags, zero<br> [0x80000870]:fsd fa1, 800(a5)<br>   |
|  52|[0x80005140]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffff80000 and rm_val == 0  #nosat<br>                                                                       |[0x80000880]:fsqrt.d fa1, fa0, dyn<br> [0x80000884]:csrrs a7, fflags, zero<br> [0x80000888]:fsd fa1, 816(a5)<br>   |
|  53|[0x80005150]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000100000 and rm_val == 0  #nosat<br>                                                                       |[0x80000898]:fsqrt.d fa1, fa0, dyn<br> [0x8000089c]:csrrs a7, fflags, zero<br> [0x800008a0]:fsd fa1, 832(a5)<br>   |
|  54|[0x80005160]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffff00000 and rm_val == 0  #nosat<br>                                                                       |[0x800008b0]:fsqrt.d fa1, fa0, dyn<br> [0x800008b4]:csrrs a7, fflags, zero<br> [0x800008b8]:fsd fa1, 848(a5)<br>   |
|  55|[0x80005170]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000200000 and rm_val == 0  #nosat<br>                                                                       |[0x800008c8]:fsqrt.d fa1, fa0, dyn<br> [0x800008cc]:csrrs a7, fflags, zero<br> [0x800008d0]:fsd fa1, 864(a5)<br>   |
|  56|[0x80005180]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffe00000 and rm_val == 0  #nosat<br>                                                                       |[0x800008e0]:fsqrt.d fa1, fa0, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa1, 880(a5)<br>   |
|  57|[0x80005190]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000400000 and rm_val == 0  #nosat<br>                                                                       |[0x800008f8]:fsqrt.d fa1, fa0, dyn<br> [0x800008fc]:csrrs a7, fflags, zero<br> [0x80000900]:fsd fa1, 896(a5)<br>   |
|  58|[0x800051a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffffc00000 and rm_val == 0  #nosat<br>                                                                       |[0x80000910]:fsqrt.d fa1, fa0, dyn<br> [0x80000914]:csrrs a7, fflags, zero<br> [0x80000918]:fsd fa1, 912(a5)<br>   |
|  59|[0x800051b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000000800000 and rm_val == 0  #nosat<br>                                                                       |[0x80000928]:fsqrt.d fa1, fa0, dyn<br> [0x8000092c]:csrrs a7, fflags, zero<br> [0x80000930]:fsd fa1, 928(a5)<br>   |
|  60|[0x800051c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffff800000 and rm_val == 0  #nosat<br>                                                                       |[0x80000940]:fsqrt.d fa1, fa0, dyn<br> [0x80000944]:csrrs a7, fflags, zero<br> [0x80000948]:fsd fa1, 944(a5)<br>   |
|  61|[0x800051d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000001000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000958]:fsqrt.d fa1, fa0, dyn<br> [0x8000095c]:csrrs a7, fflags, zero<br> [0x80000960]:fsd fa1, 960(a5)<br>   |
|  62|[0x800051e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffff000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000970]:fsqrt.d fa1, fa0, dyn<br> [0x80000974]:csrrs a7, fflags, zero<br> [0x80000978]:fsd fa1, 976(a5)<br>   |
|  63|[0x800051f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000002000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000988]:fsqrt.d fa1, fa0, dyn<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsd fa1, 992(a5)<br>   |
|  64|[0x80005200]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffe000000 and rm_val == 0  #nosat<br>                                                                       |[0x800009a0]:fsqrt.d fa1, fa0, dyn<br> [0x800009a4]:csrrs a7, fflags, zero<br> [0x800009a8]:fsd fa1, 1008(a5)<br>  |
|  65|[0x80005210]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000004000000 and rm_val == 0  #nosat<br>                                                                       |[0x800009b8]:fsqrt.d fa1, fa0, dyn<br> [0x800009bc]:csrrs a7, fflags, zero<br> [0x800009c0]:fsd fa1, 1024(a5)<br>  |
|  66|[0x80005220]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffffc000000 and rm_val == 0  #nosat<br>                                                                       |[0x800009d0]:fsqrt.d fa1, fa0, dyn<br> [0x800009d4]:csrrs a7, fflags, zero<br> [0x800009d8]:fsd fa1, 1040(a5)<br>  |
|  67|[0x80005230]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000008000000 and rm_val == 0  #nosat<br>                                                                       |[0x800009e8]:fsqrt.d fa1, fa0, dyn<br> [0x800009ec]:csrrs a7, fflags, zero<br> [0x800009f0]:fsd fa1, 1056(a5)<br>  |
|  68|[0x80005240]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffff8000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a00]:fsqrt.d fa1, fa0, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsd fa1, 1072(a5)<br>  |
|  69|[0x80005250]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000010000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a18]:fsqrt.d fa1, fa0, dyn<br> [0x80000a1c]:csrrs a7, fflags, zero<br> [0x80000a20]:fsd fa1, 1088(a5)<br>  |
|  70|[0x80005260]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffff0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a30]:fsqrt.d fa1, fa0, dyn<br> [0x80000a34]:csrrs a7, fflags, zero<br> [0x80000a38]:fsd fa1, 1104(a5)<br>  |
|  71|[0x80005270]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000020000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a48]:fsqrt.d fa1, fa0, dyn<br> [0x80000a4c]:csrrs a7, fflags, zero<br> [0x80000a50]:fsd fa1, 1120(a5)<br>  |
|  72|[0x80005280]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffe0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a60]:fsqrt.d fa1, fa0, dyn<br> [0x80000a64]:csrrs a7, fflags, zero<br> [0x80000a68]:fsd fa1, 1136(a5)<br>  |
|  73|[0x80005290]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000040000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a78]:fsqrt.d fa1, fa0, dyn<br> [0x80000a7c]:csrrs a7, fflags, zero<br> [0x80000a80]:fsd fa1, 1152(a5)<br>  |
|  74|[0x800052a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffffc0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000a90]:fsqrt.d fa1, fa0, dyn<br> [0x80000a94]:csrrs a7, fflags, zero<br> [0x80000a98]:fsd fa1, 1168(a5)<br>  |
|  75|[0x800052b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000080000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000aa8]:fsqrt.d fa1, fa0, dyn<br> [0x80000aac]:csrrs a7, fflags, zero<br> [0x80000ab0]:fsd fa1, 1184(a5)<br>  |
|  76|[0x800052c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffff80000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000ac0]:fsqrt.d fa1, fa0, dyn<br> [0x80000ac4]:csrrs a7, fflags, zero<br> [0x80000ac8]:fsd fa1, 1200(a5)<br>  |
|  77|[0x800052d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000100000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000ad8]:fsqrt.d fa1, fa0, dyn<br> [0x80000adc]:csrrs a7, fflags, zero<br> [0x80000ae0]:fsd fa1, 1216(a5)<br>  |
|  78|[0x800052e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffff00000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000af0]:fsqrt.d fa1, fa0, dyn<br> [0x80000af4]:csrrs a7, fflags, zero<br> [0x80000af8]:fsd fa1, 1232(a5)<br>  |
|  79|[0x800052f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000200000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000b08]:fsqrt.d fa1, fa0, dyn<br> [0x80000b0c]:csrrs a7, fflags, zero<br> [0x80000b10]:fsd fa1, 1248(a5)<br>  |
|  80|[0x80005300]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffe00000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000b20]:fsqrt.d fa1, fa0, dyn<br> [0x80000b24]:csrrs a7, fflags, zero<br> [0x80000b28]:fsd fa1, 1264(a5)<br>  |
|  81|[0x80005310]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000400000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000b38]:fsqrt.d fa1, fa0, dyn<br> [0x80000b3c]:csrrs a7, fflags, zero<br> [0x80000b40]:fsd fa1, 1280(a5)<br>  |
|  82|[0x80005320]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfffc00000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000b50]:fsqrt.d fa1, fa0, dyn<br> [0x80000b54]:csrrs a7, fflags, zero<br> [0x80000b58]:fsd fa1, 1296(a5)<br>  |
|  83|[0x80005330]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc000800000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000b68]:fsqrt.d fa1, fa0, dyn<br> [0x80000b6c]:csrrs a7, fflags, zero<br> [0x80000b70]:fsd fa1, 1312(a5)<br>  |
|  84|[0x80005340]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfff800000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000b80]:fsqrt.d fa1, fa0, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa1, 1328(a5)<br>  |
|  85|[0x80005350]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc001000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000b98]:fsqrt.d fa1, fa0, dyn<br> [0x80000b9c]:csrrs a7, fflags, zero<br> [0x80000ba0]:fsd fa1, 1344(a5)<br>  |
|  86|[0x80005360]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfff000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000bb0]:fsqrt.d fa1, fa0, dyn<br> [0x80000bb4]:csrrs a7, fflags, zero<br> [0x80000bb8]:fsd fa1, 1360(a5)<br>  |
|  87|[0x80005370]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc002000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000bc8]:fsqrt.d fa1, fa0, dyn<br> [0x80000bcc]:csrrs a7, fflags, zero<br> [0x80000bd0]:fsd fa1, 1376(a5)<br>  |
|  88|[0x80005380]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffe000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000be0]:fsqrt.d fa1, fa0, dyn<br> [0x80000be4]:csrrs a7, fflags, zero<br> [0x80000be8]:fsd fa1, 1392(a5)<br>  |
|  89|[0x80005390]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc004000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000bf8]:fsqrt.d fa1, fa0, dyn<br> [0x80000bfc]:csrrs a7, fflags, zero<br> [0x80000c00]:fsd fa1, 1408(a5)<br>  |
|  90|[0x800053a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdffc000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000c10]:fsqrt.d fa1, fa0, dyn<br> [0x80000c14]:csrrs a7, fflags, zero<br> [0x80000c18]:fsd fa1, 1424(a5)<br>  |
|  91|[0x800053b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc008000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000c28]:fsqrt.d fa1, fa0, dyn<br> [0x80000c2c]:csrrs a7, fflags, zero<br> [0x80000c30]:fsd fa1, 1440(a5)<br>  |
|  92|[0x800053c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdff8000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000c40]:fsqrt.d fa1, fa0, dyn<br> [0x80000c44]:csrrs a7, fflags, zero<br> [0x80000c48]:fsd fa1, 1456(a5)<br>  |
|  93|[0x800053d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc010000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000c58]:fsqrt.d fa1, fa0, dyn<br> [0x80000c5c]:csrrs a7, fflags, zero<br> [0x80000c60]:fsd fa1, 1472(a5)<br>  |
|  94|[0x800053e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdff0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000c70]:fsqrt.d fa1, fa0, dyn<br> [0x80000c74]:csrrs a7, fflags, zero<br> [0x80000c78]:fsd fa1, 1488(a5)<br>  |
|  95|[0x800053f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc020000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000c88]:fsqrt.d fa1, fa0, dyn<br> [0x80000c8c]:csrrs a7, fflags, zero<br> [0x80000c90]:fsd fa1, 1504(a5)<br>  |
|  96|[0x80005400]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfe0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000ca0]:fsqrt.d fa1, fa0, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsd fa1, 1520(a5)<br>  |
|  97|[0x80005410]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc040000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000cb8]:fsqrt.d fa1, fa0, dyn<br> [0x80000cbc]:csrrs a7, fflags, zero<br> [0x80000cc0]:fsd fa1, 1536(a5)<br>  |
|  98|[0x80005420]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdfc0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000cd0]:fsqrt.d fa1, fa0, dyn<br> [0x80000cd4]:csrrs a7, fflags, zero<br> [0x80000cd8]:fsd fa1, 1552(a5)<br>  |
|  99|[0x80005430]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc080000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000ce8]:fsqrt.d fa1, fa0, dyn<br> [0x80000cec]:csrrs a7, fflags, zero<br> [0x80000cf0]:fsd fa1, 1568(a5)<br>  |
| 100|[0x80005440]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdf80000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000d00]:fsqrt.d fa1, fa0, dyn<br> [0x80000d04]:csrrs a7, fflags, zero<br> [0x80000d08]:fsd fa1, 1584(a5)<br>  |
| 101|[0x80005450]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc100000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000d18]:fsqrt.d fa1, fa0, dyn<br> [0x80000d1c]:csrrs a7, fflags, zero<br> [0x80000d20]:fsd fa1, 1600(a5)<br>  |
| 102|[0x80005460]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdf00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000d30]:fsqrt.d fa1, fa0, dyn<br> [0x80000d34]:csrrs a7, fflags, zero<br> [0x80000d38]:fsd fa1, 1616(a5)<br>  |
| 103|[0x80005470]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc200000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000d48]:fsqrt.d fa1, fa0, dyn<br> [0x80000d4c]:csrrs a7, fflags, zero<br> [0x80000d50]:fsd fa1, 1632(a5)<br>  |
| 104|[0x80005480]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xde00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000d60]:fsqrt.d fa1, fa0, dyn<br> [0x80000d64]:csrrs a7, fflags, zero<br> [0x80000d68]:fsd fa1, 1648(a5)<br>  |
| 105|[0x80005490]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc400000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000d78]:fsqrt.d fa1, fa0, dyn<br> [0x80000d7c]:csrrs a7, fflags, zero<br> [0x80000d80]:fsd fa1, 1664(a5)<br>  |
| 106|[0x800054a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xdc00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000d90]:fsqrt.d fa1, fa0, dyn<br> [0x80000d94]:csrrs a7, fflags, zero<br> [0x80000d98]:fsd fa1, 1680(a5)<br>  |
| 107|[0x800054b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xc800000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000da8]:fsqrt.d fa1, fa0, dyn<br> [0x80000dac]:csrrs a7, fflags, zero<br> [0x80000db0]:fsd fa1, 1696(a5)<br>  |
| 108|[0x800054c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xd800000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000dc0]:fsqrt.d fa1, fa0, dyn<br> [0x80000dc4]:csrrs a7, fflags, zero<br> [0x80000dc8]:fsd fa1, 1712(a5)<br>  |
| 109|[0x800054d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x47f and fm1 == 0xd000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000dd8]:fsqrt.d fa1, fa0, dyn<br> [0x80000ddc]:csrrs a7, fflags, zero<br> [0x80000de0]:fsd fa1, 1728(a5)<br>  |
| 110|[0x800054e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                                                                       |[0x80000df0]:fsqrt.d fa1, fa0, dyn<br> [0x80000df4]:csrrs a7, fflags, zero<br> [0x80000df8]:fsd fa1, 1744(a5)<br>  |
| 111|[0x800054f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80000e08]:fsqrt.d fa1, fa0, dyn<br> [0x80000e0c]:csrrs a7, fflags, zero<br> [0x80000e10]:fsd fa1, 1760(a5)<br>  |
| 112|[0x80005500]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                       |[0x80000e20]:fsqrt.d fa1, fa0, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa1, 1776(a5)<br>  |
| 113|[0x80005510]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000000003 and rm_val == 0  #nosat<br>                                                                       |[0x80000e38]:fsqrt.d fa1, fa0, dyn<br> [0x80000e3c]:csrrs a7, fflags, zero<br> [0x80000e40]:fsd fa1, 1792(a5)<br>  |
| 114|[0x80005520]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffffc and rm_val == 0  #nosat<br>                                                                       |[0x80000e50]:fsqrt.d fa1, fa0, dyn<br> [0x80000e54]:csrrs a7, fflags, zero<br> [0x80000e58]:fsd fa1, 1808(a5)<br>  |
| 115|[0x80005530]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000000007 and rm_val == 0  #nosat<br>                                                                       |[0x80000e68]:fsqrt.d fa1, fa0, dyn<br> [0x80000e6c]:csrrs a7, fflags, zero<br> [0x80000e70]:fsd fa1, 1824(a5)<br>  |
| 116|[0x80005540]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffff8 and rm_val == 0  #nosat<br>                                                                       |[0x80000e80]:fsqrt.d fa1, fa0, dyn<br> [0x80000e84]:csrrs a7, fflags, zero<br> [0x80000e88]:fsd fa1, 1840(a5)<br>  |
| 117|[0x80005550]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000000000f and rm_val == 0  #nosat<br>                                                                       |[0x80000e98]:fsqrt.d fa1, fa0, dyn<br> [0x80000e9c]:csrrs a7, fflags, zero<br> [0x80000ea0]:fsd fa1, 1856(a5)<br>  |
| 118|[0x80005560]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffff0 and rm_val == 0  #nosat<br>                                                                       |[0x80000eb0]:fsqrt.d fa1, fa0, dyn<br> [0x80000eb4]:csrrs a7, fflags, zero<br> [0x80000eb8]:fsd fa1, 1872(a5)<br>  |
| 119|[0x80005570]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000000001f and rm_val == 0  #nosat<br>                                                                       |[0x80000ec8]:fsqrt.d fa1, fa0, dyn<br> [0x80000ecc]:csrrs a7, fflags, zero<br> [0x80000ed0]:fsd fa1, 1888(a5)<br>  |
| 120|[0x80005580]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffffe0 and rm_val == 0  #nosat<br>                                                                       |[0x80000ee0]:fsqrt.d fa1, fa0, dyn<br> [0x80000ee4]:csrrs a7, fflags, zero<br> [0x80000ee8]:fsd fa1, 1904(a5)<br>  |
| 121|[0x80005590]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000000003f and rm_val == 0  #nosat<br>                                                                       |[0x80000ef8]:fsqrt.d fa1, fa0, dyn<br> [0x80000efc]:csrrs a7, fflags, zero<br> [0x80000f00]:fsd fa1, 1920(a5)<br>  |
| 122|[0x800055a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffffc0 and rm_val == 0  #nosat<br>                                                                       |[0x80000f10]:fsqrt.d fa1, fa0, dyn<br> [0x80000f14]:csrrs a7, fflags, zero<br> [0x80000f18]:fsd fa1, 1936(a5)<br>  |
| 123|[0x800055b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000000007f and rm_val == 0  #nosat<br>                                                                       |[0x80000f28]:fsqrt.d fa1, fa0, dyn<br> [0x80000f2c]:csrrs a7, fflags, zero<br> [0x80000f30]:fsd fa1, 1952(a5)<br>  |
| 124|[0x800055c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffff80 and rm_val == 0  #nosat<br>                                                                       |[0x80000f40]:fsqrt.d fa1, fa0, dyn<br> [0x80000f44]:csrrs a7, fflags, zero<br> [0x80000f48]:fsd fa1, 1968(a5)<br>  |
| 125|[0x800055d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000000000ff and rm_val == 0  #nosat<br>                                                                       |[0x80000f58]:fsqrt.d fa1, fa0, dyn<br> [0x80000f5c]:csrrs a7, fflags, zero<br> [0x80000f60]:fsd fa1, 1984(a5)<br>  |
| 126|[0x800055e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffff00 and rm_val == 0  #nosat<br>                                                                       |[0x80000f70]:fsqrt.d fa1, fa0, dyn<br> [0x80000f74]:csrrs a7, fflags, zero<br> [0x80000f78]:fsd fa1, 2000(a5)<br>  |
| 127|[0x800055f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000000001ff and rm_val == 0  #nosat<br>                                                                       |[0x80000f88]:fsqrt.d fa1, fa0, dyn<br> [0x80000f8c]:csrrs a7, fflags, zero<br> [0x80000f90]:fsd fa1, 2016(a5)<br>  |
| 128|[0x80005600]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffe00 and rm_val == 0  #nosat<br>                                                                       |[0x80000fa8]:fsqrt.d fa1, fa0, dyn<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:fsd fa1, 0(a5)<br>     |
| 129|[0x80005610]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000000003ff and rm_val == 0  #nosat<br>                                                                       |[0x80000fc0]:fsqrt.d fa1, fa0, dyn<br> [0x80000fc4]:csrrs a7, fflags, zero<br> [0x80000fc8]:fsd fa1, 16(a5)<br>    |
| 130|[0x80005620]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffffc00 and rm_val == 0  #nosat<br>                                                                       |[0x80000fd8]:fsqrt.d fa1, fa0, dyn<br> [0x80000fdc]:csrrs a7, fflags, zero<br> [0x80000fe0]:fsd fa1, 32(a5)<br>    |
| 131|[0x80005630]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000000007ff and rm_val == 0  #nosat<br>                                                                       |[0x80000ff0]:fsqrt.d fa1, fa0, dyn<br> [0x80000ff4]:csrrs a7, fflags, zero<br> [0x80000ff8]:fsd fa1, 48(a5)<br>    |
| 132|[0x80005640]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffff800 and rm_val == 0  #nosat<br>                                                                       |[0x80001008]:fsqrt.d fa1, fa0, dyn<br> [0x8000100c]:csrrs a7, fflags, zero<br> [0x80001010]:fsd fa1, 64(a5)<br>    |
| 133|[0x80005650]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000000fff and rm_val == 0  #nosat<br>                                                                       |[0x80001020]:fsqrt.d fa1, fa0, dyn<br> [0x80001024]:csrrs a7, fflags, zero<br> [0x80001028]:fsd fa1, 80(a5)<br>    |
| 134|[0x80005660]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffff000 and rm_val == 0  #nosat<br>                                                                       |[0x80001038]:fsqrt.d fa1, fa0, dyn<br> [0x8000103c]:csrrs a7, fflags, zero<br> [0x80001040]:fsd fa1, 96(a5)<br>    |
| 135|[0x80005670]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000001fff and rm_val == 0  #nosat<br>                                                                       |[0x80001050]:fsqrt.d fa1, fa0, dyn<br> [0x80001054]:csrrs a7, fflags, zero<br> [0x80001058]:fsd fa1, 112(a5)<br>   |
| 136|[0x80005680]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffe000 and rm_val == 0  #nosat<br>                                                                       |[0x80001068]:fsqrt.d fa1, fa0, dyn<br> [0x8000106c]:csrrs a7, fflags, zero<br> [0x80001070]:fsd fa1, 128(a5)<br>   |
| 137|[0x80005690]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000003fff and rm_val == 0  #nosat<br>                                                                       |[0x80001080]:fsqrt.d fa1, fa0, dyn<br> [0x80001084]:csrrs a7, fflags, zero<br> [0x80001088]:fsd fa1, 144(a5)<br>   |
| 138|[0x800056a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffc000 and rm_val == 0  #nosat<br>                                                                       |[0x80001098]:fsqrt.d fa1, fa0, dyn<br> [0x8000109c]:csrrs a7, fflags, zero<br> [0x800010a0]:fsd fa1, 160(a5)<br>   |
| 139|[0x800056b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000007fff and rm_val == 0  #nosat<br>                                                                       |[0x800010b0]:fsqrt.d fa1, fa0, dyn<br> [0x800010b4]:csrrs a7, fflags, zero<br> [0x800010b8]:fsd fa1, 176(a5)<br>   |
| 140|[0x800056c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffff8000 and rm_val == 0  #nosat<br>                                                                       |[0x800010c8]:fsqrt.d fa1, fa0, dyn<br> [0x800010cc]:csrrs a7, fflags, zero<br> [0x800010d0]:fsd fa1, 192(a5)<br>   |
| 141|[0x800056d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000000ffff and rm_val == 0  #nosat<br>                                                                       |[0x800010e0]:fsqrt.d fa1, fa0, dyn<br> [0x800010e4]:csrrs a7, fflags, zero<br> [0x800010e8]:fsd fa1, 208(a5)<br>   |
| 142|[0x800056e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffff0000 and rm_val == 0  #nosat<br>                                                                       |[0x800010f8]:fsqrt.d fa1, fa0, dyn<br> [0x800010fc]:csrrs a7, fflags, zero<br> [0x80001100]:fsd fa1, 224(a5)<br>   |
| 143|[0x800056f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000001ffff and rm_val == 0  #nosat<br>                                                                       |[0x80001110]:fsqrt.d fa1, fa0, dyn<br> [0x80001114]:csrrs a7, fflags, zero<br> [0x80001118]:fsd fa1, 240(a5)<br>   |
| 144|[0x80005700]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffe0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001128]:fsqrt.d fa1, fa0, dyn<br> [0x8000112c]:csrrs a7, fflags, zero<br> [0x80001130]:fsd fa1, 256(a5)<br>   |
| 145|[0x80005710]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000003ffff and rm_val == 0  #nosat<br>                                                                       |[0x80001140]:fsqrt.d fa1, fa0, dyn<br> [0x80001144]:csrrs a7, fflags, zero<br> [0x80001148]:fsd fa1, 272(a5)<br>   |
| 146|[0x80005720]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffffc0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001158]:fsqrt.d fa1, fa0, dyn<br> [0x8000115c]:csrrs a7, fflags, zero<br> [0x80001160]:fsd fa1, 288(a5)<br>   |
| 147|[0x80005730]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000007ffff and rm_val == 0  #nosat<br>                                                                       |[0x80001170]:fsqrt.d fa1, fa0, dyn<br> [0x80001174]:csrrs a7, fflags, zero<br> [0x80001178]:fsd fa1, 304(a5)<br>   |
| 148|[0x80005740]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffff80000 and rm_val == 0  #nosat<br>                                                                       |[0x80001188]:fsqrt.d fa1, fa0, dyn<br> [0x8000118c]:csrrs a7, fflags, zero<br> [0x80001190]:fsd fa1, 320(a5)<br>   |
| 149|[0x80005750]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000000fffff and rm_val == 0  #nosat<br>                                                                       |[0x800011a0]:fsqrt.d fa1, fa0, dyn<br> [0x800011a4]:csrrs a7, fflags, zero<br> [0x800011a8]:fsd fa1, 336(a5)<br>   |
| 150|[0x80005760]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffff00000 and rm_val == 0  #nosat<br>                                                                       |[0x800011b8]:fsqrt.d fa1, fa0, dyn<br> [0x800011bc]:csrrs a7, fflags, zero<br> [0x800011c0]:fsd fa1, 352(a5)<br>   |
| 151|[0x80005770]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000001fffff and rm_val == 0  #nosat<br>                                                                       |[0x800011d0]:fsqrt.d fa1, fa0, dyn<br> [0x800011d4]:csrrs a7, fflags, zero<br> [0x800011d8]:fsd fa1, 368(a5)<br>   |
| 152|[0x80005780]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffe00000 and rm_val == 0  #nosat<br>                                                                       |[0x800011e8]:fsqrt.d fa1, fa0, dyn<br> [0x800011ec]:csrrs a7, fflags, zero<br> [0x800011f0]:fsd fa1, 384(a5)<br>   |
| 153|[0x80005790]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000003fffff and rm_val == 0  #nosat<br>                                                                       |[0x80001200]:fsqrt.d fa1, fa0, dyn<br> [0x80001204]:csrrs a7, fflags, zero<br> [0x80001208]:fsd fa1, 400(a5)<br>   |
| 154|[0x800057a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffc00000 and rm_val == 0  #nosat<br>                                                                       |[0x80001218]:fsqrt.d fa1, fa0, dyn<br> [0x8000121c]:csrrs a7, fflags, zero<br> [0x80001220]:fsd fa1, 416(a5)<br>   |
| 155|[0x800057b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000007fffff and rm_val == 0  #nosat<br>                                                                       |[0x80001230]:fsqrt.d fa1, fa0, dyn<br> [0x80001234]:csrrs a7, fflags, zero<br> [0x80001238]:fsd fa1, 432(a5)<br>   |
| 156|[0x800057c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffff800000 and rm_val == 0  #nosat<br>                                                                       |[0x80001248]:fsqrt.d fa1, fa0, dyn<br> [0x8000124c]:csrrs a7, fflags, zero<br> [0x80001250]:fsd fa1, 448(a5)<br>   |
| 157|[0x800057d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000000ffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001260]:fsqrt.d fa1, fa0, dyn<br> [0x80001264]:csrrs a7, fflags, zero<br> [0x80001268]:fsd fa1, 464(a5)<br>   |
| 158|[0x800057e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffff000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001278]:fsqrt.d fa1, fa0, dyn<br> [0x8000127c]:csrrs a7, fflags, zero<br> [0x80001280]:fsd fa1, 480(a5)<br>   |
| 159|[0x800057f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000001ffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001290]:fsqrt.d fa1, fa0, dyn<br> [0x80001294]:csrrs a7, fflags, zero<br> [0x80001298]:fsd fa1, 496(a5)<br>   |
| 160|[0x80005800]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffe000000 and rm_val == 0  #nosat<br>                                                                       |[0x800012a8]:fsqrt.d fa1, fa0, dyn<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:fsd fa1, 512(a5)<br>   |
| 161|[0x80005810]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000003ffffff and rm_val == 0  #nosat<br>                                                                       |[0x800012c0]:fsqrt.d fa1, fa0, dyn<br> [0x800012c4]:csrrs a7, fflags, zero<br> [0x800012c8]:fsd fa1, 528(a5)<br>   |
| 162|[0x80005820]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffffc000000 and rm_val == 0  #nosat<br>                                                                       |[0x800012d8]:fsqrt.d fa1, fa0, dyn<br> [0x800012dc]:csrrs a7, fflags, zero<br> [0x800012e0]:fsd fa1, 544(a5)<br>   |
| 163|[0x80005830]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000007ffffff and rm_val == 0  #nosat<br>                                                                       |[0x800012f0]:fsqrt.d fa1, fa0, dyn<br> [0x800012f4]:csrrs a7, fflags, zero<br> [0x800012f8]:fsd fa1, 560(a5)<br>   |
| 164|[0x80005840]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffff8000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001308]:fsqrt.d fa1, fa0, dyn<br> [0x8000130c]:csrrs a7, fflags, zero<br> [0x80001310]:fsd fa1, 576(a5)<br>   |
| 165|[0x80005850]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000000fffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001320]:fsqrt.d fa1, fa0, dyn<br> [0x80001324]:csrrs a7, fflags, zero<br> [0x80001328]:fsd fa1, 592(a5)<br>   |
| 166|[0x80005860]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffff0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001338]:fsqrt.d fa1, fa0, dyn<br> [0x8000133c]:csrrs a7, fflags, zero<br> [0x80001340]:fsd fa1, 608(a5)<br>   |
| 167|[0x80005870]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000001fffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001350]:fsqrt.d fa1, fa0, dyn<br> [0x80001354]:csrrs a7, fflags, zero<br> [0x80001358]:fsd fa1, 624(a5)<br>   |
| 168|[0x80005880]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffe0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001368]:fsqrt.d fa1, fa0, dyn<br> [0x8000136c]:csrrs a7, fflags, zero<br> [0x80001370]:fsd fa1, 640(a5)<br>   |
| 169|[0x80005890]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000003fffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001380]:fsqrt.d fa1, fa0, dyn<br> [0x80001384]:csrrs a7, fflags, zero<br> [0x80001388]:fsd fa1, 656(a5)<br>   |
| 170|[0x800058a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffc0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001398]:fsqrt.d fa1, fa0, dyn<br> [0x8000139c]:csrrs a7, fflags, zero<br> [0x800013a0]:fsd fa1, 672(a5)<br>   |
| 171|[0x800058b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000007fffffff and rm_val == 0  #nosat<br>                                                                       |[0x800013b0]:fsqrt.d fa1, fa0, dyn<br> [0x800013b4]:csrrs a7, fflags, zero<br> [0x800013b8]:fsd fa1, 688(a5)<br>   |
| 172|[0x800058c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffff80000000 and rm_val == 0  #nosat<br>                                                                       |[0x800013c8]:fsqrt.d fa1, fa0, dyn<br> [0x800013cc]:csrrs a7, fflags, zero<br> [0x800013d0]:fsd fa1, 704(a5)<br>   |
| 173|[0x800058d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00000ffffffff and rm_val == 0  #nosat<br>                                                                       |[0x800013e0]:fsqrt.d fa1, fa0, dyn<br> [0x800013e4]:csrrs a7, fflags, zero<br> [0x800013e8]:fsd fa1, 720(a5)<br>   |
| 174|[0x800058e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffff00000000 and rm_val == 0  #nosat<br>                                                                       |[0x800013f8]:fsqrt.d fa1, fa0, dyn<br> [0x800013fc]:csrrs a7, fflags, zero<br> [0x80001400]:fsd fa1, 736(a5)<br>   |
| 175|[0x800058f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00001ffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001410]:fsqrt.d fa1, fa0, dyn<br> [0x80001414]:csrrs a7, fflags, zero<br> [0x80001418]:fsd fa1, 752(a5)<br>   |
| 176|[0x80005900]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffe00000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001428]:fsqrt.d fa1, fa0, dyn<br> [0x8000142c]:csrrs a7, fflags, zero<br> [0x80001430]:fsd fa1, 768(a5)<br>   |
| 177|[0x80005910]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00003ffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001440]:fsqrt.d fa1, fa0, dyn<br> [0x80001444]:csrrs a7, fflags, zero<br> [0x80001448]:fsd fa1, 784(a5)<br>   |
| 178|[0x80005920]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffffc00000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001458]:fsqrt.d fa1, fa0, dyn<br> [0x8000145c]:csrrs a7, fflags, zero<br> [0x80001460]:fsd fa1, 800(a5)<br>   |
| 179|[0x80005930]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00007ffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001470]:fsqrt.d fa1, fa0, dyn<br> [0x80001474]:csrrs a7, fflags, zero<br> [0x80001478]:fsd fa1, 816(a5)<br>   |
| 180|[0x80005940]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffff800000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001488]:fsqrt.d fa1, fa0, dyn<br> [0x8000148c]:csrrs a7, fflags, zero<br> [0x80001490]:fsd fa1, 832(a5)<br>   |
| 181|[0x80005950]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0000fffffffff and rm_val == 0  #nosat<br>                                                                       |[0x800014a0]:fsqrt.d fa1, fa0, dyn<br> [0x800014a4]:csrrs a7, fflags, zero<br> [0x800014a8]:fsd fa1, 848(a5)<br>   |
| 182|[0x80005960]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffff000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800014b8]:fsqrt.d fa1, fa0, dyn<br> [0x800014bc]:csrrs a7, fflags, zero<br> [0x800014c0]:fsd fa1, 864(a5)<br>   |
| 183|[0x80005970]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0001fffffffff and rm_val == 0  #nosat<br>                                                                       |[0x800014d0]:fsqrt.d fa1, fa0, dyn<br> [0x800014d4]:csrrs a7, fflags, zero<br> [0x800014d8]:fsd fa1, 880(a5)<br>   |
| 184|[0x80005980]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffe000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800014e8]:fsqrt.d fa1, fa0, dyn<br> [0x800014ec]:csrrs a7, fflags, zero<br> [0x800014f0]:fsd fa1, 896(a5)<br>   |
| 185|[0x80005990]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0003fffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001500]:fsqrt.d fa1, fa0, dyn<br> [0x80001504]:csrrs a7, fflags, zero<br> [0x80001508]:fsd fa1, 912(a5)<br>   |
| 186|[0x800059a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffc000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001518]:fsqrt.d fa1, fa0, dyn<br> [0x8000151c]:csrrs a7, fflags, zero<br> [0x80001520]:fsd fa1, 928(a5)<br>   |
| 187|[0x800059b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0007fffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001530]:fsqrt.d fa1, fa0, dyn<br> [0x80001534]:csrrs a7, fflags, zero<br> [0x80001538]:fsd fa1, 944(a5)<br>   |
| 188|[0x800059c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfff8000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001548]:fsqrt.d fa1, fa0, dyn<br> [0x8000154c]:csrrs a7, fflags, zero<br> [0x80001550]:fsd fa1, 960(a5)<br>   |
| 189|[0x800059d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x000ffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001560]:fsqrt.d fa1, fa0, dyn<br> [0x80001564]:csrrs a7, fflags, zero<br> [0x80001568]:fsd fa1, 976(a5)<br>   |
| 190|[0x800059e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfff0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001578]:fsqrt.d fa1, fa0, dyn<br> [0x8000157c]:csrrs a7, fflags, zero<br> [0x80001580]:fsd fa1, 992(a5)<br>   |
| 191|[0x800059f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x001ffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001590]:fsqrt.d fa1, fa0, dyn<br> [0x80001594]:csrrs a7, fflags, zero<br> [0x80001598]:fsd fa1, 1008(a5)<br>  |
| 192|[0x80005a00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffe0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800015a8]:fsqrt.d fa1, fa0, dyn<br> [0x800015ac]:csrrs a7, fflags, zero<br> [0x800015b0]:fsd fa1, 1024(a5)<br>  |
| 193|[0x80005a10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x003ffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x800015c0]:fsqrt.d fa1, fa0, dyn<br> [0x800015c4]:csrrs a7, fflags, zero<br> [0x800015c8]:fsd fa1, 1040(a5)<br>  |
| 194|[0x80005a20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xffc0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800015d8]:fsqrt.d fa1, fa0, dyn<br> [0x800015dc]:csrrs a7, fflags, zero<br> [0x800015e0]:fsd fa1, 1056(a5)<br>  |
| 195|[0x80005a30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x007ffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x800015f0]:fsqrt.d fa1, fa0, dyn<br> [0x800015f4]:csrrs a7, fflags, zero<br> [0x800015f8]:fsd fa1, 1072(a5)<br>  |
| 196|[0x80005a40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xff80000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001608]:fsqrt.d fa1, fa0, dyn<br> [0x8000160c]:csrrs a7, fflags, zero<br> [0x80001610]:fsd fa1, 1088(a5)<br>  |
| 197|[0x80005a50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x00fffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001620]:fsqrt.d fa1, fa0, dyn<br> [0x80001624]:csrrs a7, fflags, zero<br> [0x80001628]:fsd fa1, 1104(a5)<br>  |
| 198|[0x80005a60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xff00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001638]:fsqrt.d fa1, fa0, dyn<br> [0x8000163c]:csrrs a7, fflags, zero<br> [0x80001640]:fsd fa1, 1120(a5)<br>  |
| 199|[0x80005a70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x01fffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001650]:fsqrt.d fa1, fa0, dyn<br> [0x80001654]:csrrs a7, fflags, zero<br> [0x80001658]:fsd fa1, 1136(a5)<br>  |
| 200|[0x80005a80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfe00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001668]:fsqrt.d fa1, fa0, dyn<br> [0x8000166c]:csrrs a7, fflags, zero<br> [0x80001670]:fsd fa1, 1152(a5)<br>  |
| 201|[0x80005a90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x03fffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001680]:fsqrt.d fa1, fa0, dyn<br> [0x80001684]:csrrs a7, fflags, zero<br> [0x80001688]:fsd fa1, 1168(a5)<br>  |
| 202|[0x80005aa0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfc00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001698]:fsqrt.d fa1, fa0, dyn<br> [0x8000169c]:csrrs a7, fflags, zero<br> [0x800016a0]:fsd fa1, 1184(a5)<br>  |
| 203|[0x80005ab0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x07fffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x800016b0]:fsqrt.d fa1, fa0, dyn<br> [0x800016b4]:csrrs a7, fflags, zero<br> [0x800016b8]:fsd fa1, 1200(a5)<br>  |
| 204|[0x80005ac0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xf800000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800016c8]:fsqrt.d fa1, fa0, dyn<br> [0x800016cc]:csrrs a7, fflags, zero<br> [0x800016d0]:fsd fa1, 1216(a5)<br>  |
| 205|[0x80005ad0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x0ffffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x800016e0]:fsqrt.d fa1, fa0, dyn<br> [0x800016e4]:csrrs a7, fflags, zero<br> [0x800016e8]:fsd fa1, 1232(a5)<br>  |
| 206|[0x80005ae0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xf000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800016f8]:fsqrt.d fa1, fa0, dyn<br> [0x800016fc]:csrrs a7, fflags, zero<br> [0x80001700]:fsd fa1, 1248(a5)<br>  |
| 207|[0x80005af0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x1ffffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001710]:fsqrt.d fa1, fa0, dyn<br> [0x80001714]:csrrs a7, fflags, zero<br> [0x80001718]:fsd fa1, 1264(a5)<br>  |
| 208|[0x80005b00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xe000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001728]:fsqrt.d fa1, fa0, dyn<br> [0x8000172c]:csrrs a7, fflags, zero<br> [0x80001730]:fsd fa1, 1280(a5)<br>  |
| 209|[0x80005b10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x3ffffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001740]:fsqrt.d fa1, fa0, dyn<br> [0x80001744]:csrrs a7, fflags, zero<br> [0x80001748]:fsd fa1, 1296(a5)<br>  |
| 210|[0x80005b20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xc000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001758]:fsqrt.d fa1, fa0, dyn<br> [0x8000175c]:csrrs a7, fflags, zero<br> [0x80001760]:fsd fa1, 1312(a5)<br>  |
| 211|[0x80005b30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x7ffffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001770]:fsqrt.d fa1, fa0, dyn<br> [0x80001774]:csrrs a7, fflags, zero<br> [0x80001778]:fsd fa1, 1328(a5)<br>  |
| 212|[0x80005b40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0x8000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001788]:fsqrt.d fa1, fa0, dyn<br> [0x8000178c]:csrrs a7, fflags, zero<br> [0x80001790]:fsd fa1, 1344(a5)<br>  |
| 213|[0x80005b50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37e and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x800017a0]:fsqrt.d fa1, fa0, dyn<br> [0x800017a4]:csrrs a7, fflags, zero<br> [0x800017a8]:fsd fa1, 1360(a5)<br>  |
| 214|[0x80005b60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffffc and rm_val == 0  #nosat<br>                                                                       |[0x800017b8]:fsqrt.d fa1, fa0, dyn<br> [0x800017bc]:csrrs a7, fflags, zero<br> [0x800017c0]:fsd fa1, 1376(a5)<br>  |
| 215|[0x80005b70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffff8 and rm_val == 0  #nosat<br>                                                                       |[0x800017d0]:fsqrt.d fa1, fa0, dyn<br> [0x800017d4]:csrrs a7, fflags, zero<br> [0x800017d8]:fsd fa1, 1392(a5)<br>  |
| 216|[0x80005b80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffff0 and rm_val == 0  #nosat<br>                                                                       |[0x800017e8]:fsqrt.d fa1, fa0, dyn<br> [0x800017ec]:csrrs a7, fflags, zero<br> [0x800017f0]:fsd fa1, 1408(a5)<br>  |
| 217|[0x80005b90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffffe0 and rm_val == 0  #nosat<br>                                                                       |[0x80001800]:fsqrt.d fa1, fa0, dyn<br> [0x80001804]:csrrs a7, fflags, zero<br> [0x80001808]:fsd fa1, 1424(a5)<br>  |
| 218|[0x80005ba0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffffc0 and rm_val == 0  #nosat<br>                                                                       |[0x80001818]:fsqrt.d fa1, fa0, dyn<br> [0x8000181c]:csrrs a7, fflags, zero<br> [0x80001820]:fsd fa1, 1440(a5)<br>  |
| 219|[0x80005bb0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffff80 and rm_val == 0  #nosat<br>                                                                       |[0x80001830]:fsqrt.d fa1, fa0, dyn<br> [0x80001834]:csrrs a7, fflags, zero<br> [0x80001838]:fsd fa1, 1456(a5)<br>  |
| 220|[0x80005bc0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffff00 and rm_val == 0  #nosat<br>                                                                       |[0x80001848]:fsqrt.d fa1, fa0, dyn<br> [0x8000184c]:csrrs a7, fflags, zero<br> [0x80001850]:fsd fa1, 1472(a5)<br>  |
| 221|[0x80005bd0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffe00 and rm_val == 0  #nosat<br>                                                                       |[0x80001860]:fsqrt.d fa1, fa0, dyn<br> [0x80001864]:csrrs a7, fflags, zero<br> [0x80001868]:fsd fa1, 1488(a5)<br>  |
| 222|[0x80005be0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffc00 and rm_val == 0  #nosat<br>                                                                       |[0x80001878]:fsqrt.d fa1, fa0, dyn<br> [0x8000187c]:csrrs a7, fflags, zero<br> [0x80001880]:fsd fa1, 1504(a5)<br>  |
| 223|[0x80005bf0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffff800 and rm_val == 0  #nosat<br>                                                                       |[0x80001890]:fsqrt.d fa1, fa0, dyn<br> [0x80001894]:csrrs a7, fflags, zero<br> [0x80001898]:fsd fa1, 1520(a5)<br>  |
| 224|[0x80005c00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffff000 and rm_val == 0  #nosat<br>                                                                       |[0x800018a8]:fsqrt.d fa1, fa0, dyn<br> [0x800018ac]:csrrs a7, fflags, zero<br> [0x800018b0]:fsd fa1, 1536(a5)<br>  |
| 225|[0x80005c10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffe000 and rm_val == 0  #nosat<br>                                                                       |[0x800018c0]:fsqrt.d fa1, fa0, dyn<br> [0x800018c4]:csrrs a7, fflags, zero<br> [0x800018c8]:fsd fa1, 1552(a5)<br>  |
| 226|[0x80005c20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffffc000 and rm_val == 0  #nosat<br>                                                                       |[0x800018d8]:fsqrt.d fa1, fa0, dyn<br> [0x800018dc]:csrrs a7, fflags, zero<br> [0x800018e0]:fsd fa1, 1568(a5)<br>  |
| 227|[0x80005c30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffff8000 and rm_val == 0  #nosat<br>                                                                       |[0x800018f0]:fsqrt.d fa1, fa0, dyn<br> [0x800018f4]:csrrs a7, fflags, zero<br> [0x800018f8]:fsd fa1, 1584(a5)<br>  |
| 228|[0x80005c40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffff0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001908]:fsqrt.d fa1, fa0, dyn<br> [0x8000190c]:csrrs a7, fflags, zero<br> [0x80001910]:fsd fa1, 1600(a5)<br>  |
| 229|[0x80005c50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffe0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001920]:fsqrt.d fa1, fa0, dyn<br> [0x80001924]:csrrs a7, fflags, zero<br> [0x80001928]:fsd fa1, 1616(a5)<br>  |
| 230|[0x80005c60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffc0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001938]:fsqrt.d fa1, fa0, dyn<br> [0x8000193c]:csrrs a7, fflags, zero<br> [0x80001940]:fsd fa1, 1632(a5)<br>  |
| 231|[0x80005c70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffff80000 and rm_val == 0  #nosat<br>                                                                       |[0x80001950]:fsqrt.d fa1, fa0, dyn<br> [0x80001954]:csrrs a7, fflags, zero<br> [0x80001958]:fsd fa1, 1648(a5)<br>  |
| 232|[0x80005c80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffff00000 and rm_val == 0  #nosat<br>                                                                       |[0x80001968]:fsqrt.d fa1, fa0, dyn<br> [0x8000196c]:csrrs a7, fflags, zero<br> [0x80001970]:fsd fa1, 1664(a5)<br>  |
| 233|[0x80005c90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffe00000 and rm_val == 0  #nosat<br>                                                                       |[0x80001980]:fsqrt.d fa1, fa0, dyn<br> [0x80001984]:csrrs a7, fflags, zero<br> [0x80001988]:fsd fa1, 1680(a5)<br>  |
| 234|[0x80005ca0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffffc00000 and rm_val == 0  #nosat<br>                                                                       |[0x80001998]:fsqrt.d fa1, fa0, dyn<br> [0x8000199c]:csrrs a7, fflags, zero<br> [0x800019a0]:fsd fa1, 1696(a5)<br>  |
| 235|[0x80005cb0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffff800000 and rm_val == 0  #nosat<br>                                                                       |[0x800019b0]:fsqrt.d fa1, fa0, dyn<br> [0x800019b4]:csrrs a7, fflags, zero<br> [0x800019b8]:fsd fa1, 1712(a5)<br>  |
| 236|[0x80005cc0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffff000000 and rm_val == 0  #nosat<br>                                                                       |[0x800019c8]:fsqrt.d fa1, fa0, dyn<br> [0x800019cc]:csrrs a7, fflags, zero<br> [0x800019d0]:fsd fa1, 1728(a5)<br>  |
| 237|[0x80005cd0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffe000000 and rm_val == 0  #nosat<br>                                                                       |[0x800019e0]:fsqrt.d fa1, fa0, dyn<br> [0x800019e4]:csrrs a7, fflags, zero<br> [0x800019e8]:fsd fa1, 1744(a5)<br>  |
| 238|[0x80005ce0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffc000000 and rm_val == 0  #nosat<br>                                                                       |[0x800019f8]:fsqrt.d fa1, fa0, dyn<br> [0x800019fc]:csrrs a7, fflags, zero<br> [0x80001a00]:fsd fa1, 1760(a5)<br>  |
| 239|[0x80005cf0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffff8000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001a10]:fsqrt.d fa1, fa0, dyn<br> [0x80001a14]:csrrs a7, fflags, zero<br> [0x80001a18]:fsd fa1, 1776(a5)<br>  |
| 240|[0x80005d00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffff0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001a28]:fsqrt.d fa1, fa0, dyn<br> [0x80001a2c]:csrrs a7, fflags, zero<br> [0x80001a30]:fsd fa1, 1792(a5)<br>  |
| 241|[0x80005d10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffe0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001a40]:fsqrt.d fa1, fa0, dyn<br> [0x80001a44]:csrrs a7, fflags, zero<br> [0x80001a48]:fsd fa1, 1808(a5)<br>  |
| 242|[0x80005d20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffffc0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001a58]:fsqrt.d fa1, fa0, dyn<br> [0x80001a5c]:csrrs a7, fflags, zero<br> [0x80001a60]:fsd fa1, 1824(a5)<br>  |
| 243|[0x80005d30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffff80000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001a70]:fsqrt.d fa1, fa0, dyn<br> [0x80001a74]:csrrs a7, fflags, zero<br> [0x80001a78]:fsd fa1, 1840(a5)<br>  |
| 244|[0x80005d40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffff00000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001a88]:fsqrt.d fa1, fa0, dyn<br> [0x80001a8c]:csrrs a7, fflags, zero<br> [0x80001a90]:fsd fa1, 1856(a5)<br>  |
| 245|[0x80005d50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x369 and fm1 == 0xfffffffe00000 and rm_val == 0  #nosat<br>                                                                       |[0x80001aa0]:fsqrt.d fa1, fa0, dyn<br> [0x80001aa4]:csrrs a7, fflags, zero<br> [0x80001aa8]:fsd fa1, 1872(a5)<br>  |
| 246|[0x80005d60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffe00000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001ab8]:fsqrt.d fa1, fa0, dyn<br> [0x80001abc]:csrrs a7, fflags, zero<br> [0x80001ac0]:fsd fa1, 1888(a5)<br>  |
| 247|[0x80005d70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x36a and fm1 == 0xffffffff00000 and rm_val == 0  #nosat<br>                                                                       |[0x80001ad0]:fsqrt.d fa1, fa0, dyn<br> [0x80001ad4]:csrrs a7, fflags, zero<br> [0x80001ad8]:fsd fa1, 1904(a5)<br>  |
| 248|[0x80005d80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffc00000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001ae8]:fsqrt.d fa1, fa0, dyn<br> [0x80001aec]:csrrs a7, fflags, zero<br> [0x80001af0]:fsd fa1, 1920(a5)<br>  |
| 249|[0x80005d90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x36b and fm1 == 0xffffffff80000 and rm_val == 0  #nosat<br>                                                                       |[0x80001b00]:fsqrt.d fa1, fa0, dyn<br> [0x80001b04]:csrrs a7, fflags, zero<br> [0x80001b08]:fsd fa1, 1936(a5)<br>  |
| 250|[0x80005da0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffff800000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001b18]:fsqrt.d fa1, fa0, dyn<br> [0x80001b1c]:csrrs a7, fflags, zero<br> [0x80001b20]:fsd fa1, 1952(a5)<br>  |
| 251|[0x80005db0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x36c and fm1 == 0xffffffffc0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001b30]:fsqrt.d fa1, fa0, dyn<br> [0x80001b34]:csrrs a7, fflags, zero<br> [0x80001b38]:fsd fa1, 1968(a5)<br>  |
| 252|[0x80005dc0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffff000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001b48]:fsqrt.d fa1, fa0, dyn<br> [0x80001b4c]:csrrs a7, fflags, zero<br> [0x80001b50]:fsd fa1, 1984(a5)<br>  |
| 253|[0x80005dd0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x36d and fm1 == 0xffffffffe0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001b60]:fsqrt.d fa1, fa0, dyn<br> [0x80001b64]:csrrs a7, fflags, zero<br> [0x80001b68]:fsd fa1, 2000(a5)<br>  |
| 254|[0x80005de0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffe000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001b78]:fsqrt.d fa1, fa0, dyn<br> [0x80001b7c]:csrrs a7, fflags, zero<br> [0x80001b80]:fsd fa1, 2016(a5)<br>  |
| 255|[0x80005df0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x36e and fm1 == 0xfffffffff0000 and rm_val == 0  #nosat<br>                                                                       |[0x80001b9c]:fsqrt.d fa1, fa0, dyn<br> [0x80001ba0]:csrrs a7, fflags, zero<br> [0x80001ba4]:fsd fa1, 0(a5)<br>     |
| 256|[0x80005e00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfffc000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001bb4]:fsqrt.d fa1, fa0, dyn<br> [0x80001bb8]:csrrs a7, fflags, zero<br> [0x80001bbc]:fsd fa1, 16(a5)<br>    |
| 257|[0x80005e10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x36f and fm1 == 0xfffffffff8000 and rm_val == 0  #nosat<br>                                                                       |[0x80001bcc]:fsqrt.d fa1, fa0, dyn<br> [0x80001bd0]:csrrs a7, fflags, zero<br> [0x80001bd4]:fsd fa1, 32(a5)<br>    |
| 258|[0x80005e20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfff8000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001be4]:fsqrt.d fa1, fa0, dyn<br> [0x80001be8]:csrrs a7, fflags, zero<br> [0x80001bec]:fsd fa1, 48(a5)<br>    |
| 259|[0x80005e30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x370 and fm1 == 0xfffffffffc000 and rm_val == 0  #nosat<br>                                                                       |[0x80001bfc]:fsqrt.d fa1, fa0, dyn<br> [0x80001c00]:csrrs a7, fflags, zero<br> [0x80001c04]:fsd fa1, 64(a5)<br>    |
| 260|[0x80005e40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfff0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001c14]:fsqrt.d fa1, fa0, dyn<br> [0x80001c18]:csrrs a7, fflags, zero<br> [0x80001c1c]:fsd fa1, 80(a5)<br>    |
| 261|[0x80005e50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x371 and fm1 == 0xfffffffffe000 and rm_val == 0  #nosat<br>                                                                       |[0x80001c2c]:fsqrt.d fa1, fa0, dyn<br> [0x80001c30]:csrrs a7, fflags, zero<br> [0x80001c34]:fsd fa1, 96(a5)<br>    |
| 262|[0x80005e60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffe0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001c44]:fsqrt.d fa1, fa0, dyn<br> [0x80001c48]:csrrs a7, fflags, zero<br> [0x80001c4c]:fsd fa1, 112(a5)<br>   |
| 263|[0x80005e70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x372 and fm1 == 0xffffffffff000 and rm_val == 0  #nosat<br>                                                                       |[0x80001c5c]:fsqrt.d fa1, fa0, dyn<br> [0x80001c60]:csrrs a7, fflags, zero<br> [0x80001c64]:fsd fa1, 128(a5)<br>   |
| 264|[0x80005e80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffc0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001c74]:fsqrt.d fa1, fa0, dyn<br> [0x80001c78]:csrrs a7, fflags, zero<br> [0x80001c7c]:fsd fa1, 144(a5)<br>   |
| 265|[0x80005e90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x373 and fm1 == 0xffffffffff800 and rm_val == 0  #nosat<br>                                                                       |[0x80001c8c]:fsqrt.d fa1, fa0, dyn<br> [0x80001c90]:csrrs a7, fflags, zero<br> [0x80001c94]:fsd fa1, 160(a5)<br>   |
| 266|[0x80005ea0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xff80000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001ca4]:fsqrt.d fa1, fa0, dyn<br> [0x80001ca8]:csrrs a7, fflags, zero<br> [0x80001cac]:fsd fa1, 176(a5)<br>   |
| 267|[0x80005eb0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x374 and fm1 == 0xffffffffffc00 and rm_val == 0  #nosat<br>                                                                       |[0x80001cbc]:fsqrt.d fa1, fa0, dyn<br> [0x80001cc0]:csrrs a7, fflags, zero<br> [0x80001cc4]:fsd fa1, 192(a5)<br>   |
| 268|[0x80005ec0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xff00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001cd4]:fsqrt.d fa1, fa0, dyn<br> [0x80001cd8]:csrrs a7, fflags, zero<br> [0x80001cdc]:fsd fa1, 208(a5)<br>   |
| 269|[0x80005ed0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x375 and fm1 == 0xffffffffffe00 and rm_val == 0  #nosat<br>                                                                       |[0x80001cec]:fsqrt.d fa1, fa0, dyn<br> [0x80001cf0]:csrrs a7, fflags, zero<br> [0x80001cf4]:fsd fa1, 224(a5)<br>   |
| 270|[0x80005ee0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfe00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001d04]:fsqrt.d fa1, fa0, dyn<br> [0x80001d08]:csrrs a7, fflags, zero<br> [0x80001d0c]:fsd fa1, 240(a5)<br>   |
| 271|[0x80005ef0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x376 and fm1 == 0xfffffffffff00 and rm_val == 0  #nosat<br>                                                                       |[0x80001d1c]:fsqrt.d fa1, fa0, dyn<br> [0x80001d20]:csrrs a7, fflags, zero<br> [0x80001d24]:fsd fa1, 256(a5)<br>   |
| 272|[0x80005f00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xfc00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001d34]:fsqrt.d fa1, fa0, dyn<br> [0x80001d38]:csrrs a7, fflags, zero<br> [0x80001d3c]:fsd fa1, 272(a5)<br>   |
| 273|[0x80005f10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x377 and fm1 == 0xfffffffffff80 and rm_val == 0  #nosat<br>                                                                       |[0x80001d4c]:fsqrt.d fa1, fa0, dyn<br> [0x80001d50]:csrrs a7, fflags, zero<br> [0x80001d54]:fsd fa1, 288(a5)<br>   |
| 274|[0x80005f20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xf800000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001d64]:fsqrt.d fa1, fa0, dyn<br> [0x80001d68]:csrrs a7, fflags, zero<br> [0x80001d6c]:fsd fa1, 304(a5)<br>   |
| 275|[0x80005f30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x378 and fm1 == 0xfffffffffffc0 and rm_val == 0  #nosat<br>                                                                       |[0x80001d7c]:fsqrt.d fa1, fa0, dyn<br> [0x80001d80]:csrrs a7, fflags, zero<br> [0x80001d84]:fsd fa1, 320(a5)<br>   |
| 276|[0x80005f40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xf000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001d94]:fsqrt.d fa1, fa0, dyn<br> [0x80001d98]:csrrs a7, fflags, zero<br> [0x80001d9c]:fsd fa1, 336(a5)<br>   |
| 277|[0x80005f50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x379 and fm1 == 0xfffffffffffe0 and rm_val == 0  #nosat<br>                                                                       |[0x80001dac]:fsqrt.d fa1, fa0, dyn<br> [0x80001db0]:csrrs a7, fflags, zero<br> [0x80001db4]:fsd fa1, 352(a5)<br>   |
| 278|[0x80005f60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xe000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001dc4]:fsqrt.d fa1, fa0, dyn<br> [0x80001dc8]:csrrs a7, fflags, zero<br> [0x80001dcc]:fsd fa1, 368(a5)<br>   |
| 279|[0x80005f70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37a and fm1 == 0xffffffffffff0 and rm_val == 0  #nosat<br>                                                                       |[0x80001ddc]:fsqrt.d fa1, fa0, dyn<br> [0x80001de0]:csrrs a7, fflags, zero<br> [0x80001de4]:fsd fa1, 384(a5)<br>   |
| 280|[0x80005f80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xc000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001df4]:fsqrt.d fa1, fa0, dyn<br> [0x80001df8]:csrrs a7, fflags, zero<br> [0x80001dfc]:fsd fa1, 400(a5)<br>   |
| 281|[0x80005f90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37b and fm1 == 0xffffffffffff8 and rm_val == 0  #nosat<br>                                                                       |[0x80001e0c]:fsqrt.d fa1, fa0, dyn<br> [0x80001e10]:csrrs a7, fflags, zero<br> [0x80001e14]:fsd fa1, 416(a5)<br>   |
| 282|[0x80005fa0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0x8000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001e24]:fsqrt.d fa1, fa0, dyn<br> [0x80001e28]:csrrs a7, fflags, zero<br> [0x80001e2c]:fsd fa1, 432(a5)<br>   |
| 283|[0x80005fb0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37c and fm1 == 0xffffffffffffc and rm_val == 0  #nosat<br>                                                                       |[0x80001e3c]:fsqrt.d fa1, fa0, dyn<br> [0x80001e40]:csrrs a7, fflags, zero<br> [0x80001e44]:fsd fa1, 448(a5)<br>   |
| 284|[0x80005fc0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001e54]:fsqrt.d fa1, fa0, dyn<br> [0x80001e58]:csrrs a7, fflags, zero<br> [0x80001e5c]:fsd fa1, 464(a5)<br>   |
| 285|[0x80005fd0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x37d and fm1 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                       |[0x80001e6c]:fsqrt.d fa1, fa0, dyn<br> [0x80001e70]:csrrs a7, fflags, zero<br> [0x80001e74]:fsd fa1, 480(a5)<br>   |
| 286|[0x80005fe0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001e84]:fsqrt.d fa1, fa0, dyn<br> [0x80001e88]:csrrs a7, fflags, zero<br> [0x80001e8c]:fsd fa1, 496(a5)<br>   |
| 287|[0x80005ff0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x400 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80001e9c]:fsqrt.d fa1, fa0, dyn<br> [0x80001ea0]:csrrs a7, fflags, zero<br> [0x80001ea4]:fsd fa1, 512(a5)<br>   |
| 288|[0x80006000]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                                                                       |[0x80001eb4]:fsqrt.d fa1, fa0, dyn<br> [0x80001eb8]:csrrs a7, fflags, zero<br> [0x80001ebc]:fsd fa1, 528(a5)<br>   |
| 289|[0x80006010]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000002 and rm_val == 0  #nosat<br>                                                                       |[0x80001ecc]:fsqrt.d fa1, fa0, dyn<br> [0x80001ed0]:csrrs a7, fflags, zero<br> [0x80001ed4]:fsd fa1, 544(a5)<br>   |
| 290|[0x80006020]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                       |[0x80001ee4]:fsqrt.d fa1, fa0, dyn<br> [0x80001ee8]:csrrs a7, fflags, zero<br> [0x80001eec]:fsd fa1, 560(a5)<br>   |
| 291|[0x80006030]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000004 and rm_val == 0  #nosat<br>                                                                       |[0x80001efc]:fsqrt.d fa1, fa0, dyn<br> [0x80001f00]:csrrs a7, fflags, zero<br> [0x80001f04]:fsd fa1, 576(a5)<br>   |
| 292|[0x80006040]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffffc and rm_val == 0  #nosat<br>                                                                       |[0x80001f14]:fsqrt.d fa1, fa0, dyn<br> [0x80001f18]:csrrs a7, fflags, zero<br> [0x80001f1c]:fsd fa1, 592(a5)<br>   |
| 293|[0x80006050]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000008 and rm_val == 0  #nosat<br>                                                                       |[0x80001f2c]:fsqrt.d fa1, fa0, dyn<br> [0x80001f30]:csrrs a7, fflags, zero<br> [0x80001f34]:fsd fa1, 608(a5)<br>   |
| 294|[0x80006060]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffff8 and rm_val == 0  #nosat<br>                                                                       |[0x80001f44]:fsqrt.d fa1, fa0, dyn<br> [0x80001f48]:csrrs a7, fflags, zero<br> [0x80001f4c]:fsd fa1, 624(a5)<br>   |
| 295|[0x80006070]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000010 and rm_val == 0  #nosat<br>                                                                       |[0x80001f5c]:fsqrt.d fa1, fa0, dyn<br> [0x80001f60]:csrrs a7, fflags, zero<br> [0x80001f64]:fsd fa1, 640(a5)<br>   |
| 296|[0x80006080]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffff0 and rm_val == 0  #nosat<br>                                                                       |[0x80001f74]:fsqrt.d fa1, fa0, dyn<br> [0x80001f78]:csrrs a7, fflags, zero<br> [0x80001f7c]:fsd fa1, 656(a5)<br>   |
| 297|[0x80006090]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000020 and rm_val == 0  #nosat<br>                                                                       |[0x80001f8c]:fsqrt.d fa1, fa0, dyn<br> [0x80001f90]:csrrs a7, fflags, zero<br> [0x80001f94]:fsd fa1, 672(a5)<br>   |
| 298|[0x800060a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffffe0 and rm_val == 0  #nosat<br>                                                                       |[0x80001fa4]:fsqrt.d fa1, fa0, dyn<br> [0x80001fa8]:csrrs a7, fflags, zero<br> [0x80001fac]:fsd fa1, 688(a5)<br>   |
| 299|[0x800060b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000040 and rm_val == 0  #nosat<br>                                                                       |[0x80001fbc]:fsqrt.d fa1, fa0, dyn<br> [0x80001fc0]:csrrs a7, fflags, zero<br> [0x80001fc4]:fsd fa1, 704(a5)<br>   |
| 300|[0x800060c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffffc0 and rm_val == 0  #nosat<br>                                                                       |[0x80001fd4]:fsqrt.d fa1, fa0, dyn<br> [0x80001fd8]:csrrs a7, fflags, zero<br> [0x80001fdc]:fsd fa1, 720(a5)<br>   |
| 301|[0x800060d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000080 and rm_val == 0  #nosat<br>                                                                       |[0x80001fec]:fsqrt.d fa1, fa0, dyn<br> [0x80001ff0]:csrrs a7, fflags, zero<br> [0x80001ff4]:fsd fa1, 736(a5)<br>   |
| 302|[0x800060e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffff80 and rm_val == 0  #nosat<br>                                                                       |[0x80002004]:fsqrt.d fa1, fa0, dyn<br> [0x80002008]:csrrs a7, fflags, zero<br> [0x8000200c]:fsd fa1, 752(a5)<br>   |
| 303|[0x800060f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000100 and rm_val == 0  #nosat<br>                                                                       |[0x8000201c]:fsqrt.d fa1, fa0, dyn<br> [0x80002020]:csrrs a7, fflags, zero<br> [0x80002024]:fsd fa1, 768(a5)<br>   |
| 304|[0x80006100]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffff00 and rm_val == 0  #nosat<br>                                                                       |[0x80002034]:fsqrt.d fa1, fa0, dyn<br> [0x80002038]:csrrs a7, fflags, zero<br> [0x8000203c]:fsd fa1, 784(a5)<br>   |
| 305|[0x80006110]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000200 and rm_val == 0  #nosat<br>                                                                       |[0x8000204c]:fsqrt.d fa1, fa0, dyn<br> [0x80002050]:csrrs a7, fflags, zero<br> [0x80002054]:fsd fa1, 800(a5)<br>   |
| 306|[0x80006120]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffe00 and rm_val == 0  #nosat<br>                                                                       |[0x80002064]:fsqrt.d fa1, fa0, dyn<br> [0x80002068]:csrrs a7, fflags, zero<br> [0x8000206c]:fsd fa1, 816(a5)<br>   |
| 307|[0x80006130]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000400 and rm_val == 0  #nosat<br>                                                                       |[0x8000207c]:fsqrt.d fa1, fa0, dyn<br> [0x80002080]:csrrs a7, fflags, zero<br> [0x80002084]:fsd fa1, 832(a5)<br>   |
| 308|[0x80006140]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffffc00 and rm_val == 0  #nosat<br>                                                                       |[0x80002094]:fsqrt.d fa1, fa0, dyn<br> [0x80002098]:csrrs a7, fflags, zero<br> [0x8000209c]:fsd fa1, 848(a5)<br>   |
| 309|[0x80006150]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000000800 and rm_val == 0  #nosat<br>                                                                       |[0x800020ac]:fsqrt.d fa1, fa0, dyn<br> [0x800020b0]:csrrs a7, fflags, zero<br> [0x800020b4]:fsd fa1, 864(a5)<br>   |
| 310|[0x80006160]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffff800 and rm_val == 0  #nosat<br>                                                                       |[0x800020c4]:fsqrt.d fa1, fa0, dyn<br> [0x800020c8]:csrrs a7, fflags, zero<br> [0x800020cc]:fsd fa1, 880(a5)<br>   |
| 311|[0x80006170]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000001000 and rm_val == 0  #nosat<br>                                                                       |[0x800020dc]:fsqrt.d fa1, fa0, dyn<br> [0x800020e0]:csrrs a7, fflags, zero<br> [0x800020e4]:fsd fa1, 896(a5)<br>   |
| 312|[0x80006180]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffff000 and rm_val == 0  #nosat<br>                                                                       |[0x800020f4]:fsqrt.d fa1, fa0, dyn<br> [0x800020f8]:csrrs a7, fflags, zero<br> [0x800020fc]:fsd fa1, 912(a5)<br>   |
| 313|[0x80006190]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000002000 and rm_val == 0  #nosat<br>                                                                       |[0x8000210c]:fsqrt.d fa1, fa0, dyn<br> [0x80002110]:csrrs a7, fflags, zero<br> [0x80002114]:fsd fa1, 928(a5)<br>   |
| 314|[0x800061a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffe000 and rm_val == 0  #nosat<br>                                                                       |[0x80002124]:fsqrt.d fa1, fa0, dyn<br> [0x80002128]:csrrs a7, fflags, zero<br> [0x8000212c]:fsd fa1, 944(a5)<br>   |
| 315|[0x800061b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000004000 and rm_val == 0  #nosat<br>                                                                       |[0x8000213c]:fsqrt.d fa1, fa0, dyn<br> [0x80002140]:csrrs a7, fflags, zero<br> [0x80002144]:fsd fa1, 960(a5)<br>   |
| 316|[0x800061c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffffc000 and rm_val == 0  #nosat<br>                                                                       |[0x80002154]:fsqrt.d fa1, fa0, dyn<br> [0x80002158]:csrrs a7, fflags, zero<br> [0x8000215c]:fsd fa1, 976(a5)<br>   |
| 317|[0x800061d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000008000 and rm_val == 0  #nosat<br>                                                                       |[0x8000216c]:fsqrt.d fa1, fa0, dyn<br> [0x80002170]:csrrs a7, fflags, zero<br> [0x80002174]:fsd fa1, 992(a5)<br>   |
| 318|[0x800061e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffff8000 and rm_val == 0  #nosat<br>                                                                       |[0x80002184]:fsqrt.d fa1, fa0, dyn<br> [0x80002188]:csrrs a7, fflags, zero<br> [0x8000218c]:fsd fa1, 1008(a5)<br>  |
| 319|[0x800061f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000010000 and rm_val == 0  #nosat<br>                                                                       |[0x8000219c]:fsqrt.d fa1, fa0, dyn<br> [0x800021a0]:csrrs a7, fflags, zero<br> [0x800021a4]:fsd fa1, 1024(a5)<br>  |
| 320|[0x80006200]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffff0000 and rm_val == 0  #nosat<br>                                                                       |[0x800021b4]:fsqrt.d fa1, fa0, dyn<br> [0x800021b8]:csrrs a7, fflags, zero<br> [0x800021bc]:fsd fa1, 1040(a5)<br>  |
| 321|[0x80006210]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000020000 and rm_val == 0  #nosat<br>                                                                       |[0x800021cc]:fsqrt.d fa1, fa0, dyn<br> [0x800021d0]:csrrs a7, fflags, zero<br> [0x800021d4]:fsd fa1, 1056(a5)<br>  |
| 322|[0x80006220]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffe0000 and rm_val == 0  #nosat<br>                                                                       |[0x800021e4]:fsqrt.d fa1, fa0, dyn<br> [0x800021e8]:csrrs a7, fflags, zero<br> [0x800021ec]:fsd fa1, 1072(a5)<br>  |
| 323|[0x80006230]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000040000 and rm_val == 0  #nosat<br>                                                                       |[0x800021fc]:fsqrt.d fa1, fa0, dyn<br> [0x80002200]:csrrs a7, fflags, zero<br> [0x80002204]:fsd fa1, 1088(a5)<br>  |
| 324|[0x80006240]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffffc0000 and rm_val == 0  #nosat<br>                                                                       |[0x80002214]:fsqrt.d fa1, fa0, dyn<br> [0x80002218]:csrrs a7, fflags, zero<br> [0x8000221c]:fsd fa1, 1104(a5)<br>  |
| 325|[0x80006250]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000080000 and rm_val == 0  #nosat<br>                                                                       |[0x8000222c]:fsqrt.d fa1, fa0, dyn<br> [0x80002230]:csrrs a7, fflags, zero<br> [0x80002234]:fsd fa1, 1120(a5)<br>  |
| 326|[0x80006260]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffff80000 and rm_val == 0  #nosat<br>                                                                       |[0x80002244]:fsqrt.d fa1, fa0, dyn<br> [0x80002248]:csrrs a7, fflags, zero<br> [0x8000224c]:fsd fa1, 1136(a5)<br>  |
| 327|[0x80006270]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000100000 and rm_val == 0  #nosat<br>                                                                       |[0x8000225c]:fsqrt.d fa1, fa0, dyn<br> [0x80002260]:csrrs a7, fflags, zero<br> [0x80002264]:fsd fa1, 1152(a5)<br>  |
| 328|[0x80006280]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffff00000 and rm_val == 0  #nosat<br>                                                                       |[0x80002274]:fsqrt.d fa1, fa0, dyn<br> [0x80002278]:csrrs a7, fflags, zero<br> [0x8000227c]:fsd fa1, 1168(a5)<br>  |
| 329|[0x80006290]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000200000 and rm_val == 0  #nosat<br>                                                                       |[0x8000228c]:fsqrt.d fa1, fa0, dyn<br> [0x80002290]:csrrs a7, fflags, zero<br> [0x80002294]:fsd fa1, 1184(a5)<br>  |
| 330|[0x800062a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffe00000 and rm_val == 0  #nosat<br>                                                                       |[0x800022a4]:fsqrt.d fa1, fa0, dyn<br> [0x800022a8]:csrrs a7, fflags, zero<br> [0x800022ac]:fsd fa1, 1200(a5)<br>  |
| 331|[0x800062b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000400000 and rm_val == 0  #nosat<br>                                                                       |[0x800022bc]:fsqrt.d fa1, fa0, dyn<br> [0x800022c0]:csrrs a7, fflags, zero<br> [0x800022c4]:fsd fa1, 1216(a5)<br>  |
| 332|[0x800062c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffffc00000 and rm_val == 0  #nosat<br>                                                                       |[0x800022d4]:fsqrt.d fa1, fa0, dyn<br> [0x800022d8]:csrrs a7, fflags, zero<br> [0x800022dc]:fsd fa1, 1232(a5)<br>  |
| 333|[0x800062d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000000800000 and rm_val == 0  #nosat<br>                                                                       |[0x800022ec]:fsqrt.d fa1, fa0, dyn<br> [0x800022f0]:csrrs a7, fflags, zero<br> [0x800022f4]:fsd fa1, 1248(a5)<br>  |
| 334|[0x800062e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffff800000 and rm_val == 0  #nosat<br>                                                                       |[0x80002304]:fsqrt.d fa1, fa0, dyn<br> [0x80002308]:csrrs a7, fflags, zero<br> [0x8000230c]:fsd fa1, 1264(a5)<br>  |
| 335|[0x800062f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000001000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000231c]:fsqrt.d fa1, fa0, dyn<br> [0x80002320]:csrrs a7, fflags, zero<br> [0x80002324]:fsd fa1, 1280(a5)<br>  |
| 336|[0x80006300]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffff000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002334]:fsqrt.d fa1, fa0, dyn<br> [0x80002338]:csrrs a7, fflags, zero<br> [0x8000233c]:fsd fa1, 1296(a5)<br>  |
| 337|[0x80006310]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000002000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000234c]:fsqrt.d fa1, fa0, dyn<br> [0x80002350]:csrrs a7, fflags, zero<br> [0x80002354]:fsd fa1, 1312(a5)<br>  |
| 338|[0x80006320]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffe000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002364]:fsqrt.d fa1, fa0, dyn<br> [0x80002368]:csrrs a7, fflags, zero<br> [0x8000236c]:fsd fa1, 1328(a5)<br>  |
| 339|[0x80006330]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000004000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000237c]:fsqrt.d fa1, fa0, dyn<br> [0x80002380]:csrrs a7, fflags, zero<br> [0x80002384]:fsd fa1, 1344(a5)<br>  |
| 340|[0x80006340]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffffc000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002394]:fsqrt.d fa1, fa0, dyn<br> [0x80002398]:csrrs a7, fflags, zero<br> [0x8000239c]:fsd fa1, 1360(a5)<br>  |
| 341|[0x80006350]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000008000000 and rm_val == 0  #nosat<br>                                                                       |[0x800023ac]:fsqrt.d fa1, fa0, dyn<br> [0x800023b0]:csrrs a7, fflags, zero<br> [0x800023b4]:fsd fa1, 1376(a5)<br>  |
| 342|[0x80006360]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffff8000000 and rm_val == 0  #nosat<br>                                                                       |[0x800023c4]:fsqrt.d fa1, fa0, dyn<br> [0x800023c8]:csrrs a7, fflags, zero<br> [0x800023cc]:fsd fa1, 1392(a5)<br>  |
| 343|[0x80006370]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000010000000 and rm_val == 0  #nosat<br>                                                                       |[0x800023dc]:fsqrt.d fa1, fa0, dyn<br> [0x800023e0]:csrrs a7, fflags, zero<br> [0x800023e4]:fsd fa1, 1408(a5)<br>  |
| 344|[0x80006380]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffff0000000 and rm_val == 0  #nosat<br>                                                                       |[0x800023f4]:fsqrt.d fa1, fa0, dyn<br> [0x800023f8]:csrrs a7, fflags, zero<br> [0x800023fc]:fsd fa1, 1424(a5)<br>  |
| 345|[0x80006390]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000020000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000240c]:fsqrt.d fa1, fa0, dyn<br> [0x80002410]:csrrs a7, fflags, zero<br> [0x80002414]:fsd fa1, 1440(a5)<br>  |
| 346|[0x800063a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffe0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002424]:fsqrt.d fa1, fa0, dyn<br> [0x80002428]:csrrs a7, fflags, zero<br> [0x8000242c]:fsd fa1, 1456(a5)<br>  |
| 347|[0x800063b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000040000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000243c]:fsqrt.d fa1, fa0, dyn<br> [0x80002440]:csrrs a7, fflags, zero<br> [0x80002444]:fsd fa1, 1472(a5)<br>  |
| 348|[0x800063c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffffc0000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002454]:fsqrt.d fa1, fa0, dyn<br> [0x80002458]:csrrs a7, fflags, zero<br> [0x8000245c]:fsd fa1, 1488(a5)<br>  |
| 349|[0x800063d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000080000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000246c]:fsqrt.d fa1, fa0, dyn<br> [0x80002470]:csrrs a7, fflags, zero<br> [0x80002474]:fsd fa1, 1504(a5)<br>  |
| 350|[0x800063e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffff80000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002484]:fsqrt.d fa1, fa0, dyn<br> [0x80002488]:csrrs a7, fflags, zero<br> [0x8000248c]:fsd fa1, 1520(a5)<br>  |
| 351|[0x800063f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000100000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000249c]:fsqrt.d fa1, fa0, dyn<br> [0x800024a0]:csrrs a7, fflags, zero<br> [0x800024a4]:fsd fa1, 1536(a5)<br>  |
| 352|[0x80006400]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffff00000000 and rm_val == 0  #nosat<br>                                                                       |[0x800024b4]:fsqrt.d fa1, fa0, dyn<br> [0x800024b8]:csrrs a7, fflags, zero<br> [0x800024bc]:fsd fa1, 1552(a5)<br>  |
| 353|[0x80006410]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000200000000 and rm_val == 0  #nosat<br>                                                                       |[0x800024cc]:fsqrt.d fa1, fa0, dyn<br> [0x800024d0]:csrrs a7, fflags, zero<br> [0x800024d4]:fsd fa1, 1568(a5)<br>  |
| 354|[0x80006420]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffe00000000 and rm_val == 0  #nosat<br>                                                                       |[0x800024e4]:fsqrt.d fa1, fa0, dyn<br> [0x800024e8]:csrrs a7, fflags, zero<br> [0x800024ec]:fsd fa1, 1584(a5)<br>  |
| 355|[0x80006430]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000400000000 and rm_val == 0  #nosat<br>                                                                       |[0x800024fc]:fsqrt.d fa1, fa0, dyn<br> [0x80002500]:csrrs a7, fflags, zero<br> [0x80002504]:fsd fa1, 1600(a5)<br>  |
| 356|[0x80006440]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffffc00000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002514]:fsqrt.d fa1, fa0, dyn<br> [0x80002518]:csrrs a7, fflags, zero<br> [0x8000251c]:fsd fa1, 1616(a5)<br>  |
| 357|[0x80006450]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe000800000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000252c]:fsqrt.d fa1, fa0, dyn<br> [0x80002530]:csrrs a7, fflags, zero<br> [0x80002534]:fsd fa1, 1632(a5)<br>  |
| 358|[0x80006460]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffff800000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002544]:fsqrt.d fa1, fa0, dyn<br> [0x80002548]:csrrs a7, fflags, zero<br> [0x8000254c]:fsd fa1, 1648(a5)<br>  |
| 359|[0x80006470]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe001000000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000255c]:fsqrt.d fa1, fa0, dyn<br> [0x80002560]:csrrs a7, fflags, zero<br> [0x80002564]:fsd fa1, 1664(a5)<br>  |
| 360|[0x80006480]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffff000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002574]:fsqrt.d fa1, fa0, dyn<br> [0x80002578]:csrrs a7, fflags, zero<br> [0x8000257c]:fsd fa1, 1680(a5)<br>  |
| 361|[0x80006490]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe002000000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000258c]:fsqrt.d fa1, fa0, dyn<br> [0x80002590]:csrrs a7, fflags, zero<br> [0x80002594]:fsd fa1, 1696(a5)<br>  |
| 362|[0x800064a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffe000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800025a4]:fsqrt.d fa1, fa0, dyn<br> [0x800025a8]:csrrs a7, fflags, zero<br> [0x800025ac]:fsd fa1, 1712(a5)<br>  |
| 363|[0x800064b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe004000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800025bc]:fsqrt.d fa1, fa0, dyn<br> [0x800025c0]:csrrs a7, fflags, zero<br> [0x800025c4]:fsd fa1, 1728(a5)<br>  |
| 364|[0x800064c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfffc000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800025d4]:fsqrt.d fa1, fa0, dyn<br> [0x800025d8]:csrrs a7, fflags, zero<br> [0x800025dc]:fsd fa1, 1744(a5)<br>  |
| 365|[0x800064d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe008000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800025ec]:fsqrt.d fa1, fa0, dyn<br> [0x800025f0]:csrrs a7, fflags, zero<br> [0x800025f4]:fsd fa1, 1760(a5)<br>  |
| 366|[0x800064e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfff8000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002604]:fsqrt.d fa1, fa0, dyn<br> [0x80002608]:csrrs a7, fflags, zero<br> [0x8000260c]:fsd fa1, 1776(a5)<br>  |
| 367|[0x800064f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe010000000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000261c]:fsqrt.d fa1, fa0, dyn<br> [0x80002620]:csrrs a7, fflags, zero<br> [0x80002624]:fsd fa1, 1792(a5)<br>  |
| 368|[0x80006500]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfff0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002634]:fsqrt.d fa1, fa0, dyn<br> [0x80002638]:csrrs a7, fflags, zero<br> [0x8000263c]:fsd fa1, 1808(a5)<br>  |
| 369|[0x80006510]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe020000000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000264c]:fsqrt.d fa1, fa0, dyn<br> [0x80002650]:csrrs a7, fflags, zero<br> [0x80002654]:fsd fa1, 1824(a5)<br>  |
| 370|[0x80006520]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffe0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002664]:fsqrt.d fa1, fa0, dyn<br> [0x80002668]:csrrs a7, fflags, zero<br> [0x8000266c]:fsd fa1, 1840(a5)<br>  |
| 371|[0x80006530]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe040000000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000267c]:fsqrt.d fa1, fa0, dyn<br> [0x80002680]:csrrs a7, fflags, zero<br> [0x80002684]:fsd fa1, 1856(a5)<br>  |
| 372|[0x80006540]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xffc0000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002694]:fsqrt.d fa1, fa0, dyn<br> [0x80002698]:csrrs a7, fflags, zero<br> [0x8000269c]:fsd fa1, 1872(a5)<br>  |
| 373|[0x80006550]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe080000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800026ac]:fsqrt.d fa1, fa0, dyn<br> [0x800026b0]:csrrs a7, fflags, zero<br> [0x800026b4]:fsd fa1, 1888(a5)<br>  |
| 374|[0x80006560]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xff80000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800026c4]:fsqrt.d fa1, fa0, dyn<br> [0x800026c8]:csrrs a7, fflags, zero<br> [0x800026cc]:fsd fa1, 1904(a5)<br>  |
| 375|[0x80006570]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe100000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800026dc]:fsqrt.d fa1, fa0, dyn<br> [0x800026e0]:csrrs a7, fflags, zero<br> [0x800026e4]:fsd fa1, 1920(a5)<br>  |
| 376|[0x80006580]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xff00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800026f4]:fsqrt.d fa1, fa0, dyn<br> [0x800026f8]:csrrs a7, fflags, zero<br> [0x800026fc]:fsd fa1, 1936(a5)<br>  |
| 377|[0x80006590]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe200000000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000270c]:fsqrt.d fa1, fa0, dyn<br> [0x80002710]:csrrs a7, fflags, zero<br> [0x80002714]:fsd fa1, 1952(a5)<br>  |
| 378|[0x800065a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfe00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002724]:fsqrt.d fa1, fa0, dyn<br> [0x80002728]:csrrs a7, fflags, zero<br> [0x8000272c]:fsd fa1, 1968(a5)<br>  |
| 379|[0x800065b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe400000000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000273c]:fsqrt.d fa1, fa0, dyn<br> [0x80002740]:csrrs a7, fflags, zero<br> [0x80002744]:fsd fa1, 1984(a5)<br>  |
| 380|[0x800065c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xfc00000000000 and rm_val == 0  #nosat<br>                                                                       |[0x80002754]:fsqrt.d fa1, fa0, dyn<br> [0x80002758]:csrrs a7, fflags, zero<br> [0x8000275c]:fsd fa1, 2000(a5)<br>  |
| 381|[0x800065d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xe800000000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000276c]:fsqrt.d fa1, fa0, dyn<br> [0x80002770]:csrrs a7, fflags, zero<br> [0x80002774]:fsd fa1, 2016(a5)<br>  |
| 382|[0x800065e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xf800000000000 and rm_val == 0  #nosat<br>                                                                       |[0x8000278c]:fsqrt.d fa1, fa0, dyn<br> [0x80002790]:csrrs a7, fflags, zero<br> [0x80002794]:fsd fa1, 0(a5)<br>     |
| 383|[0x800065f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0xf000000000000 and rm_val == 0  #nosat<br>                                                                       |[0x800027a4]:fsqrt.d fa1, fa0, dyn<br> [0x800027a8]:csrrs a7, fflags, zero<br> [0x800027ac]:fsd fa1, 16(a5)<br>    |
