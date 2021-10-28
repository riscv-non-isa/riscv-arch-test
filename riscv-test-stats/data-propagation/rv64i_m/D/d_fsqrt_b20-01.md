
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001090')]      |
| SIG_REGION                | [('0x80003610', '0x80003ea0', '274 dwords')]      |
| COV_LABELS                | fsqrt_b20      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fsqrt_b20-01.S/ref.S    |
| Total Number of coverpoints| 209     |
| Total Coverpoints Hit     | 204      |
| Total Signature Updates   | 274      |
| STAT1                     | 137      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 137     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fsqrt.d', 'rs1 : f5', 'rd : f5', 'rs1 == rd', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fsqrt.d ft5, ft5, dyn
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:fsd ft5, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80003618]:0x0000000000000000




Last Coverpoint : ['rs1 : f19', 'rd : f11', 'rs1 != rd', 'fs1 == 0 and fe1 == 0x141 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d0]:fsqrt.d fa1, fs3, dyn
	-[0x800003d4]:csrrs a7, fflags, zero
	-[0x800003d8]:fsd fa1, 16(a5)
Current Store : [0x800003dc] : sd a7, 24(a5) -- Store: [0x80003628]:0x0000000000000000




Last Coverpoint : ['rs1 : f3', 'rd : f19', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fsqrt.d fs3, ft3, dyn
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:fsd fs3, 32(a5)
Current Store : [0x800003f4] : sd a7, 40(a5) -- Store: [0x80003638]:0x0000000000000000




Last Coverpoint : ['rs1 : f14', 'rd : f17', 'fs1 == 0 and fe1 == 0x1d6 and fm1 == 0xb935452b4bc7c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fsqrt.d fa7, fa4, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fa7, 48(a5)
Current Store : [0x8000040c] : sd a7, 56(a5) -- Store: [0x80003648]:0x0000000000000001




Last Coverpoint : ['rs1 : f17', 'rd : f25', 'fs1 == 0 and fe1 == 0x610 and fm1 == 0x21ccea37c6190 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fsqrt.d fs9, fa7, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsd fs9, 64(a5)
Current Store : [0x80000424] : sd a7, 72(a5) -- Store: [0x80003658]:0x0000000000000001




Last Coverpoint : ['rs1 : f20', 'rd : f4', 'fs1 == 0 and fe1 == 0x243 and fm1 == 0x7730427032993 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fsqrt.d ft4, fs4, dyn
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:fsd ft4, 80(a5)
Current Store : [0x8000043c] : sd a7, 88(a5) -- Store: [0x80003668]:0x0000000000000001




Last Coverpoint : ['rs1 : f28', 'rd : f9', 'fs1 == 0 and fe1 == 0x24a and fm1 == 0x596ffbdcf9515 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fsqrt.d fs1, ft8, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd fs1, 96(a5)
Current Store : [0x80000454] : sd a7, 104(a5) -- Store: [0x80003678]:0x0000000000000001




Last Coverpoint : ['rs1 : f24', 'rd : f15', 'fs1 == 0 and fe1 == 0x0dd and fm1 == 0xb962d97d9e0d3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000460]:fsqrt.d fa5, fs8, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd fa5, 112(a5)
Current Store : [0x8000046c] : sd a7, 120(a5) -- Store: [0x80003688]:0x0000000000000001




Last Coverpoint : ['rs1 : f22', 'rd : f12', 'fs1 == 0 and fe1 == 0x49e and fm1 == 0x6d6aa7b5d5523 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000478]:fsqrt.d fa2, fs6, dyn
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:fsd fa2, 128(a5)
Current Store : [0x80000484] : sd a7, 136(a5) -- Store: [0x80003698]:0x0000000000000001




Last Coverpoint : ['rs1 : f16', 'rd : f29', 'fs1 == 0 and fe1 == 0x664 and fm1 == 0x1f53f3796faa0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000490]:fsqrt.d ft9, fa6, dyn
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:fsd ft9, 144(a5)
Current Store : [0x8000049c] : sd a7, 152(a5) -- Store: [0x800036a8]:0x0000000000000001




Last Coverpoint : ['rs1 : f29', 'rd : f27', 'fs1 == 0 and fe1 == 0x220 and fm1 == 0xb615804e82f0b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fsqrt.d fs11, ft9, dyn
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:fsd fs11, 160(a5)
Current Store : [0x800004b4] : sd a7, 168(a5) -- Store: [0x800036b8]:0x0000000000000001




Last Coverpoint : ['rs1 : f11', 'rd : f3', 'fs1 == 0 and fe1 == 0x1dd and fm1 == 0x00eff45d8a020 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fsqrt.d ft3, fa1, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd ft3, 176(a5)
Current Store : [0x800004cc] : sd a7, 184(a5) -- Store: [0x800036c8]:0x0000000000000001




Last Coverpoint : ['rs1 : f12', 'rd : f18', 'fs1 == 0 and fe1 == 0x4eb and fm1 == 0xa52bfc61f44e1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d8]:fsqrt.d fs2, fa2, dyn
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:fsd fs2, 192(a5)
Current Store : [0x800004e4] : sd a7, 200(a5) -- Store: [0x800036d8]:0x0000000000000001




Last Coverpoint : ['rs1 : f13', 'rd : f7', 'fs1 == 0 and fe1 == 0x0b8 and fm1 == 0x676d52bcd2ca2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fsqrt.d ft7, fa3, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd ft7, 208(a5)
Current Store : [0x800004fc] : sd a7, 216(a5) -- Store: [0x800036e8]:0x0000000000000001




Last Coverpoint : ['rs1 : f0', 'rd : f22', 'fs1 == 0 and fe1 == 0x21c and fm1 == 0x1fc5f6573038b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000508]:fsqrt.d fs6, ft0, dyn
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:fsd fs6, 224(a5)
Current Store : [0x80000514] : sd a7, 232(a5) -- Store: [0x800036f8]:0x0000000000000001




Last Coverpoint : ['rs1 : f1', 'rd : f0', 'fs1 == 0 and fe1 == 0x27a and fm1 == 0xfedcb647b5255 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000520]:fsqrt.d ft0, ft1, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd ft0, 240(a5)
Current Store : [0x8000052c] : sd a7, 248(a5) -- Store: [0x80003708]:0x0000000000000001




Last Coverpoint : ['rs1 : f31', 'rd : f30', 'fs1 == 0 and fe1 == 0x046 and fm1 == 0x10964a3288ede and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000538]:fsqrt.d ft10, ft11, dyn
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:fsd ft10, 256(a5)
Current Store : [0x80000544] : sd a7, 264(a5) -- Store: [0x80003718]:0x0000000000000001




Last Coverpoint : ['rs1 : f21', 'rd : f14', 'fs1 == 0 and fe1 == 0x6cc and fm1 == 0xda4837dc75a45 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000550]:fsqrt.d fa4, fs5, dyn
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:fsd fa4, 272(a5)
Current Store : [0x8000055c] : sd a7, 280(a5) -- Store: [0x80003728]:0x0000000000000001




Last Coverpoint : ['rs1 : f6', 'rd : f1', 'fs1 == 0 and fe1 == 0x379 and fm1 == 0x609ba7e28b6d6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fsqrt.d ft1, ft6, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsd ft1, 288(a5)
Current Store : [0x80000574] : sd a7, 296(a5) -- Store: [0x80003738]:0x0000000000000001




Last Coverpoint : ['rs1 : f25', 'rd : f31', 'fs1 == 0 and fe1 == 0x010 and fm1 == 0x19147937aef10 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000580]:fsqrt.d ft11, fs9, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd ft11, 304(a5)
Current Store : [0x8000058c] : sd a7, 312(a5) -- Store: [0x80003748]:0x0000000000000001




Last Coverpoint : ['rs1 : f4', 'rd : f24', 'fs1 == 0 and fe1 == 0x5cd and fm1 == 0x0415c96d286b2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fsqrt.d fs8, ft4, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd fs8, 320(a5)
Current Store : [0x800005a4] : sd a7, 328(a5) -- Store: [0x80003758]:0x0000000000000001




Last Coverpoint : ['rs1 : f2', 'rd : f28', 'fs1 == 0 and fe1 == 0x562 and fm1 == 0xd8a88b54ddbd1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b0]:fsqrt.d ft8, ft2, dyn
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:fsd ft8, 336(a5)
Current Store : [0x800005bc] : sd a7, 344(a5) -- Store: [0x80003768]:0x0000000000000001




Last Coverpoint : ['rs1 : f7', 'rd : f20', 'fs1 == 0 and fe1 == 0x5b4 and fm1 == 0x3b6ba19f71958 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fsqrt.d fs4, ft7, dyn
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:fsd fs4, 352(a5)
Current Store : [0x800005d4] : sd a7, 360(a5) -- Store: [0x80003778]:0x0000000000000001




Last Coverpoint : ['rs1 : f26', 'rd : f2', 'fs1 == 0 and fe1 == 0x36f and fm1 == 0xb907cc9a3dfc5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fsqrt.d ft2, fs10, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd ft2, 368(a5)
Current Store : [0x800005ec] : sd a7, 376(a5) -- Store: [0x80003788]:0x0000000000000001




Last Coverpoint : ['rs1 : f23', 'rd : f6', 'fs1 == 0 and fe1 == 0x62a and fm1 == 0xc5b706ee884bd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005f8]:fsqrt.d ft6, fs7, dyn
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:fsd ft6, 384(a5)
Current Store : [0x80000604] : sd a7, 392(a5) -- Store: [0x80003798]:0x0000000000000001




Last Coverpoint : ['rs1 : f10', 'rd : f16', 'fs1 == 0 and fe1 == 0x6ac and fm1 == 0xa53af1e9e6297 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fsqrt.d fa6, fa0, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsd fa6, 400(a5)
Current Store : [0x8000061c] : sd a7, 408(a5) -- Store: [0x800037a8]:0x0000000000000001




Last Coverpoint : ['rs1 : f15', 'rd : f13', 'fs1 == 0 and fe1 == 0x5f2 and fm1 == 0x2c7839914630c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000628]:fsqrt.d fa3, fa5, dyn
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:fsd fa3, 416(a5)
Current Store : [0x80000634] : sd a7, 424(a5) -- Store: [0x800037b8]:0x0000000000000001




Last Coverpoint : ['rs1 : f8', 'rd : f26', 'fs1 == 0 and fe1 == 0x68a and fm1 == 0xd3f8d47593f76 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fsqrt.d fs10, fs0, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fs10, 432(a5)
Current Store : [0x8000064c] : sd a7, 440(a5) -- Store: [0x800037c8]:0x0000000000000001




Last Coverpoint : ['rs1 : f9', 'rd : f10', 'fs1 == 0 and fe1 == 0x14c and fm1 == 0x3543bca6412dd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000658]:fsqrt.d fa0, fs1, dyn
	-[0x8000065c]:csrrs a7, fflags, zero
	-[0x80000660]:fsd fa0, 448(a5)
Current Store : [0x80000664] : sd a7, 456(a5) -- Store: [0x800037d8]:0x0000000000000001




Last Coverpoint : ['rs1 : f27', 'rd : f8', 'fs1 == 0 and fe1 == 0x390 and fm1 == 0x5ad9865ef1ae8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000670]:fsqrt.d fs0, fs11, dyn
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:fsd fs0, 464(a5)
Current Store : [0x8000067c] : sd a7, 472(a5) -- Store: [0x800037e8]:0x0000000000000001




Last Coverpoint : ['rs1 : f18', 'rd : f21', 'fs1 == 0 and fe1 == 0x27b and fm1 == 0x9ef64199541d0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000688]:fsqrt.d fs5, fs2, dyn
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:fsd fs5, 480(a5)
Current Store : [0x80000694] : sd a7, 488(a5) -- Store: [0x800037f8]:0x0000000000000001




Last Coverpoint : ['rs1 : f30', 'rd : f23', 'fs1 == 0 and fe1 == 0x429 and fm1 == 0xf1125eaac3f81 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fsqrt.d fs7, ft10, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd fs7, 496(a5)
Current Store : [0x800006ac] : sd a7, 504(a5) -- Store: [0x80003808]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x277 and fm1 == 0x8a162e2f42a21 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fsqrt.d fa1, fa0, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsd fa1, 512(a5)
Current Store : [0x800006c4] : sd a7, 520(a5) -- Store: [0x80003818]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x361 and fm1 == 0x67017bfbb2e14 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006d0]:fsqrt.d fa1, fa0, dyn
	-[0x800006d4]:csrrs a7, fflags, zero
	-[0x800006d8]:fsd fa1, 528(a5)
Current Store : [0x800006dc] : sd a7, 536(a5) -- Store: [0x80003828]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01e and fm1 == 0x28a5fa032b6d5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fsqrt.d fa1, fa0, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd fa1, 544(a5)
Current Store : [0x800006f4] : sd a7, 552(a5) -- Store: [0x80003838]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x443 and fm1 == 0xbb0584a3e9fb1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000700]:fsqrt.d fa1, fa0, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:fsd fa1, 560(a5)
Current Store : [0x8000070c] : sd a7, 568(a5) -- Store: [0x80003848]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x4a7 and fm1 == 0x480c0e0c26ad5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000718]:fsqrt.d fa1, fa0, dyn
	-[0x8000071c]:csrrs a7, fflags, zero
	-[0x80000720]:fsd fa1, 576(a5)
Current Store : [0x80000724] : sd a7, 584(a5) -- Store: [0x80003858]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x463 and fm1 == 0x53fdb488151bd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000730]:fsqrt.d fa1, fa0, dyn
	-[0x80000734]:csrrs a7, fflags, zero
	-[0x80000738]:fsd fa1, 592(a5)
Current Store : [0x8000073c] : sd a7, 600(a5) -- Store: [0x80003868]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x6e6 and fm1 == 0xd658cf235f718 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000748]:fsqrt.d fa1, fa0, dyn
	-[0x8000074c]:csrrs a7, fflags, zero
	-[0x80000750]:fsd fa1, 608(a5)
Current Store : [0x80000754] : sd a7, 616(a5) -- Store: [0x80003878]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x2ac and fm1 == 0x903f3a50115bf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000760]:fsqrt.d fa1, fa0, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsd fa1, 624(a5)
Current Store : [0x8000076c] : sd a7, 632(a5) -- Store: [0x80003888]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x55f and fm1 == 0x831433085a13f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000778]:fsqrt.d fa1, fa0, dyn
	-[0x8000077c]:csrrs a7, fflags, zero
	-[0x80000780]:fsd fa1, 640(a5)
Current Store : [0x80000784] : sd a7, 648(a5) -- Store: [0x80003898]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x6de and fm1 == 0x4a8493263d912 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000790]:fsqrt.d fa1, fa0, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa1, 656(a5)
Current Store : [0x8000079c] : sd a7, 664(a5) -- Store: [0x800038a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x028 and fm1 == 0x50d5c9d17a718 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007a8]:fsqrt.d fa1, fa0, dyn
	-[0x800007ac]:csrrs a7, fflags, zero
	-[0x800007b0]:fsd fa1, 672(a5)
Current Store : [0x800007b4] : sd a7, 680(a5) -- Store: [0x800038b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3a6 and fm1 == 0x8dea07a7d2f66 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fsqrt.d fa1, fa0, dyn
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:fsd fa1, 688(a5)
Current Store : [0x800007cc] : sd a7, 696(a5) -- Store: [0x800038c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x04d and fm1 == 0xf54d566d3af23 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007d8]:fsqrt.d fa1, fa0, dyn
	-[0x800007dc]:csrrs a7, fflags, zero
	-[0x800007e0]:fsd fa1, 704(a5)
Current Store : [0x800007e4] : sd a7, 712(a5) -- Store: [0x800038d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x352 and fm1 == 0x68bf7bba24887 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007f0]:fsqrt.d fa1, fa0, dyn
	-[0x800007f4]:csrrs a7, fflags, zero
	-[0x800007f8]:fsd fa1, 720(a5)
Current Store : [0x800007fc] : sd a7, 728(a5) -- Store: [0x800038e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x74733452ff5d7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000808]:fsqrt.d fa1, fa0, dyn
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsd fa1, 736(a5)
Current Store : [0x80000814] : sd a7, 744(a5) -- Store: [0x800038f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x68c and fm1 == 0x4f2b6e728ce0c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000820]:fsqrt.d fa1, fa0, dyn
	-[0x80000824]:csrrs a7, fflags, zero
	-[0x80000828]:fsd fa1, 752(a5)
Current Store : [0x8000082c] : sd a7, 760(a5) -- Store: [0x80003908]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x15c and fm1 == 0xb61d12a3db43b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000838]:fsqrt.d fa1, fa0, dyn
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:fsd fa1, 768(a5)
Current Store : [0x80000844] : sd a7, 776(a5) -- Store: [0x80003918]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x011 and fm1 == 0x421e71936ce4f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000850]:fsqrt.d fa1, fa0, dyn
	-[0x80000854]:csrrs a7, fflags, zero
	-[0x80000858]:fsd fa1, 784(a5)
Current Store : [0x8000085c] : sd a7, 792(a5) -- Store: [0x80003928]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x253 and fm1 == 0xcf11866f044c6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000868]:fsqrt.d fa1, fa0, dyn
	-[0x8000086c]:csrrs a7, fflags, zero
	-[0x80000870]:fsd fa1, 800(a5)
Current Store : [0x80000874] : sd a7, 808(a5) -- Store: [0x80003938]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x245 and fm1 == 0xe2ded1447a9b2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000880]:fsqrt.d fa1, fa0, dyn
	-[0x80000884]:csrrs a7, fflags, zero
	-[0x80000888]:fsd fa1, 816(a5)
Current Store : [0x8000088c] : sd a7, 824(a5) -- Store: [0x80003948]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x794 and fm1 == 0xdf650f96fc9dc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000898]:fsqrt.d fa1, fa0, dyn
	-[0x8000089c]:csrrs a7, fflags, zero
	-[0x800008a0]:fsd fa1, 832(a5)
Current Store : [0x800008a4] : sd a7, 840(a5) -- Store: [0x80003958]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f7 and fm1 == 0x0c82887c59b71 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008b0]:fsqrt.d fa1, fa0, dyn
	-[0x800008b4]:csrrs a7, fflags, zero
	-[0x800008b8]:fsd fa1, 848(a5)
Current Store : [0x800008bc] : sd a7, 856(a5) -- Store: [0x80003968]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x56c and fm1 == 0xc901d6ca9fe73 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c8]:fsqrt.d fa1, fa0, dyn
	-[0x800008cc]:csrrs a7, fflags, zero
	-[0x800008d0]:fsd fa1, 864(a5)
Current Store : [0x800008d4] : sd a7, 872(a5) -- Store: [0x80003978]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x36a and fm1 == 0x1a98d1d649d85 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fsqrt.d fa1, fa0, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa1, 880(a5)
Current Store : [0x800008ec] : sd a7, 888(a5) -- Store: [0x80003988]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x293 and fm1 == 0x1fa2f7bf8a3cd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008f8]:fsqrt.d fa1, fa0, dyn
	-[0x800008fc]:csrrs a7, fflags, zero
	-[0x80000900]:fsd fa1, 896(a5)
Current Store : [0x80000904] : sd a7, 904(a5) -- Store: [0x80003998]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x6c4 and fm1 == 0x936ef74f68734 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000910]:fsqrt.d fa1, fa0, dyn
	-[0x80000914]:csrrs a7, fflags, zero
	-[0x80000918]:fsd fa1, 912(a5)
Current Store : [0x8000091c] : sd a7, 920(a5) -- Store: [0x800039a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f6 and fm1 == 0xddff45305d0a3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000928]:fsqrt.d fa1, fa0, dyn
	-[0x8000092c]:csrrs a7, fflags, zero
	-[0x80000930]:fsd fa1, 928(a5)
Current Store : [0x80000934] : sd a7, 936(a5) -- Store: [0x800039b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x70b and fm1 == 0xa9bb9576e08fe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000940]:fsqrt.d fa1, fa0, dyn
	-[0x80000944]:csrrs a7, fflags, zero
	-[0x80000948]:fsd fa1, 944(a5)
Current Store : [0x8000094c] : sd a7, 952(a5) -- Store: [0x800039c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5c5 and fm1 == 0x4051a49e409ef and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000958]:fsqrt.d fa1, fa0, dyn
	-[0x8000095c]:csrrs a7, fflags, zero
	-[0x80000960]:fsd fa1, 960(a5)
Current Store : [0x80000964] : sd a7, 968(a5) -- Store: [0x800039d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1dc and fm1 == 0x184be59c54b98 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000970]:fsqrt.d fa1, fa0, dyn
	-[0x80000974]:csrrs a7, fflags, zero
	-[0x80000978]:fsd fa1, 976(a5)
Current Store : [0x8000097c] : sd a7, 984(a5) -- Store: [0x800039e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x69d and fm1 == 0x3245461ecff87 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000988]:fsqrt.d fa1, fa0, dyn
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsd fa1, 992(a5)
Current Store : [0x80000994] : sd a7, 1000(a5) -- Store: [0x800039f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x2f2 and fm1 == 0xa186bad3f3b95 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009a0]:fsqrt.d fa1, fa0, dyn
	-[0x800009a4]:csrrs a7, fflags, zero
	-[0x800009a8]:fsd fa1, 1008(a5)
Current Store : [0x800009ac] : sd a7, 1016(a5) -- Store: [0x80003a08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x216 and fm1 == 0x5901f1856027c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009b8]:fsqrt.d fa1, fa0, dyn
	-[0x800009bc]:csrrs a7, fflags, zero
	-[0x800009c0]:fsd fa1, 1024(a5)
Current Store : [0x800009c4] : sd a7, 1032(a5) -- Store: [0x80003a18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0f6 and fm1 == 0x0e8dcc21fc0dc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009d0]:fsqrt.d fa1, fa0, dyn
	-[0x800009d4]:csrrs a7, fflags, zero
	-[0x800009d8]:fsd fa1, 1040(a5)
Current Store : [0x800009dc] : sd a7, 1048(a5) -- Store: [0x80003a28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x6b8 and fm1 == 0x28048e71f9d08 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009e8]:fsqrt.d fa1, fa0, dyn
	-[0x800009ec]:csrrs a7, fflags, zero
	-[0x800009f0]:fsd fa1, 1056(a5)
Current Store : [0x800009f4] : sd a7, 1064(a5) -- Store: [0x80003a38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x227 and fm1 == 0x127f90c3b9090 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fsqrt.d fa1, fa0, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsd fa1, 1072(a5)
Current Store : [0x80000a0c] : sd a7, 1080(a5) -- Store: [0x80003a48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x076 and fm1 == 0x033274a480488 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a18]:fsqrt.d fa1, fa0, dyn
	-[0x80000a1c]:csrrs a7, fflags, zero
	-[0x80000a20]:fsd fa1, 1088(a5)
Current Store : [0x80000a24] : sd a7, 1096(a5) -- Store: [0x80003a58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x01b and fm1 == 0xd960e82d4b810 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a30]:fsqrt.d fa1, fa0, dyn
	-[0x80000a34]:csrrs a7, fflags, zero
	-[0x80000a38]:fsd fa1, 1104(a5)
Current Store : [0x80000a3c] : sd a7, 1112(a5) -- Store: [0x80003a68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fc and fm1 == 0x9ed0caa415ec8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a48]:fsqrt.d fa1, fa0, dyn
	-[0x80000a4c]:csrrs a7, fflags, zero
	-[0x80000a50]:fsd fa1, 1120(a5)
Current Store : [0x80000a54] : sd a7, 1128(a5) -- Store: [0x80003a78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fd and fm1 == 0x822bf1e14a240 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a60]:fsqrt.d fa1, fa0, dyn
	-[0x80000a64]:csrrs a7, fflags, zero
	-[0x80000a68]:fsd fa1, 1136(a5)
Current Store : [0x80000a6c] : sd a7, 1144(a5) -- Store: [0x80003a88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x31e and fm1 == 0x77fad24880120 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a78]:fsqrt.d fa1, fa0, dyn
	-[0x80000a7c]:csrrs a7, fflags, zero
	-[0x80000a80]:fsd fa1, 1152(a5)
Current Store : [0x80000a84] : sd a7, 1160(a5) -- Store: [0x80003a98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000fe99b3b666 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a90]:fsqrt.d fa1, fa0, dyn
	-[0x80000a94]:csrrs a7, fflags, zero
	-[0x80000a98]:fsd fa1, 1168(a5)
Current Store : [0x80000a9c] : sd a7, 1176(a5) -- Store: [0x80003aa8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x62a and fm1 == 0x0e613a46ac880 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa8]:fsqrt.d fa1, fa0, dyn
	-[0x80000aac]:csrrs a7, fflags, zero
	-[0x80000ab0]:fsd fa1, 1184(a5)
Current Store : [0x80000ab4] : sd a7, 1192(a5) -- Store: [0x80003ab8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x6bb and fm1 == 0x4d07b1ed41100 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ac0]:fsqrt.d fa1, fa0, dyn
	-[0x80000ac4]:csrrs a7, fflags, zero
	-[0x80000ac8]:fsd fa1, 1200(a5)
Current Store : [0x80000acc] : sd a7, 1208(a5) -- Store: [0x80003ac8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x4ee and fm1 == 0x71b0e933c2200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ad8]:fsqrt.d fa1, fa0, dyn
	-[0x80000adc]:csrrs a7, fflags, zero
	-[0x80000ae0]:fsd fa1, 1216(a5)
Current Store : [0x80000ae4] : sd a7, 1224(a5) -- Store: [0x80003ad8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x674 and fm1 == 0x0202a3cf79200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000af0]:fsqrt.d fa1, fa0, dyn
	-[0x80000af4]:csrrs a7, fflags, zero
	-[0x80000af8]:fsd fa1, 1232(a5)
Current Store : [0x80000afc] : sd a7, 1240(a5) -- Store: [0x80003ae8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5b3 and fm1 == 0x979ca2ec8c400 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b08]:fsqrt.d fa1, fa0, dyn
	-[0x80000b0c]:csrrs a7, fflags, zero
	-[0x80000b10]:fsd fa1, 1248(a5)
Current Store : [0x80000b14] : sd a7, 1256(a5) -- Store: [0x80003af8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x176 and fm1 == 0xeb971282f8200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b20]:fsqrt.d fa1, fa0, dyn
	-[0x80000b24]:csrrs a7, fflags, zero
	-[0x80000b28]:fsd fa1, 1264(a5)
Current Store : [0x80000b2c] : sd a7, 1272(a5) -- Store: [0x80003b08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3cb and fm1 == 0xf0b8ab6b51000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b38]:fsqrt.d fa1, fa0, dyn
	-[0x80000b3c]:csrrs a7, fflags, zero
	-[0x80000b40]:fsd fa1, 1280(a5)
Current Store : [0x80000b44] : sd a7, 1288(a5) -- Store: [0x80003b18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x55c and fm1 == 0x27109d2e38800 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b50]:fsqrt.d fa1, fa0, dyn
	-[0x80000b54]:csrrs a7, fflags, zero
	-[0x80000b58]:fsd fa1, 1296(a5)
Current Store : [0x80000b5c] : sd a7, 1304(a5) -- Store: [0x80003b28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x32b and fm1 == 0x0c8ac416c9000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b68]:fsqrt.d fa1, fa0, dyn
	-[0x80000b6c]:csrrs a7, fflags, zero
	-[0x80000b70]:fsd fa1, 1312(a5)
Current Store : [0x80000b74] : sd a7, 1320(a5) -- Store: [0x80003b38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x693 and fm1 == 0x32159f7764000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fsqrt.d fa1, fa0, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa1, 1328(a5)
Current Store : [0x80000b8c] : sd a7, 1336(a5) -- Store: [0x80003b48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x74a and fm1 == 0x5095cd3c62000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b98]:fsqrt.d fa1, fa0, dyn
	-[0x80000b9c]:csrrs a7, fflags, zero
	-[0x80000ba0]:fsd fa1, 1344(a5)
Current Store : [0x80000ba4] : sd a7, 1352(a5) -- Store: [0x80003b58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x26e and fm1 == 0x8a8a8502e2000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bb0]:fsqrt.d fa1, fa0, dyn
	-[0x80000bb4]:csrrs a7, fflags, zero
	-[0x80000bb8]:fsd fa1, 1360(a5)
Current Store : [0x80000bbc] : sd a7, 1368(a5) -- Store: [0x80003b68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5b0 and fm1 == 0x8f302c02c8000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bc8]:fsqrt.d fa1, fa0, dyn
	-[0x80000bcc]:csrrs a7, fflags, zero
	-[0x80000bd0]:fsd fa1, 1376(a5)
Current Store : [0x80000bd4] : sd a7, 1384(a5) -- Store: [0x80003b78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x32d and fm1 == 0xb63d043d10000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000be0]:fsqrt.d fa1, fa0, dyn
	-[0x80000be4]:csrrs a7, fflags, zero
	-[0x80000be8]:fsd fa1, 1392(a5)
Current Store : [0x80000bec] : sd a7, 1400(a5) -- Store: [0x80003b88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3d1 and fm1 == 0xc9c3e06610000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bf8]:fsqrt.d fa1, fa0, dyn
	-[0x80000bfc]:csrrs a7, fflags, zero
	-[0x80000c00]:fsd fa1, 1408(a5)
Current Store : [0x80000c04] : sd a7, 1416(a5) -- Store: [0x80003b98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x60c and fm1 == 0x4df3876008000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c10]:fsqrt.d fa1, fa0, dyn
	-[0x80000c14]:csrrs a7, fflags, zero
	-[0x80000c18]:fsd fa1, 1424(a5)
Current Store : [0x80000c1c] : sd a7, 1432(a5) -- Store: [0x80003ba8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x181 and fm1 == 0x0226265640000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c28]:fsqrt.d fa1, fa0, dyn
	-[0x80000c2c]:csrrs a7, fflags, zero
	-[0x80000c30]:fsd fa1, 1440(a5)
Current Store : [0x80000c34] : sd a7, 1448(a5) -- Store: [0x80003bb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x56f and fm1 == 0xeb77b14440000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c40]:fsqrt.d fa1, fa0, dyn
	-[0x80000c44]:csrrs a7, fflags, zero
	-[0x80000c48]:fsd fa1, 1456(a5)
Current Store : [0x80000c4c] : sd a7, 1464(a5) -- Store: [0x80003bc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x712 and fm1 == 0x28efb9fd20000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c58]:fsqrt.d fa1, fa0, dyn
	-[0x80000c5c]:csrrs a7, fflags, zero
	-[0x80000c60]:fsd fa1, 1472(a5)
Current Store : [0x80000c64] : sd a7, 1480(a5) -- Store: [0x80003bd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c1 and fm1 == 0x56c3dcb100000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c70]:fsqrt.d fa1, fa0, dyn
	-[0x80000c74]:csrrs a7, fflags, zero
	-[0x80000c78]:fsd fa1, 1488(a5)
Current Store : [0x80000c7c] : sd a7, 1496(a5) -- Store: [0x80003be8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1f9 and fm1 == 0x0aef451100000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c88]:fsqrt.d fa1, fa0, dyn
	-[0x80000c8c]:csrrs a7, fflags, zero
	-[0x80000c90]:fsd fa1, 1504(a5)
Current Store : [0x80000c94] : sd a7, 1512(a5) -- Store: [0x80003bf8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ab and fm1 == 0x155b835100000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fsqrt.d fa1, fa0, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsd fa1, 1520(a5)
Current Store : [0x80000cac] : sd a7, 1528(a5) -- Store: [0x80003c08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x15f94b0040000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cb8]:fsqrt.d fa1, fa0, dyn
	-[0x80000cbc]:csrrs a7, fflags, zero
	-[0x80000cc0]:fsd fa1, 1536(a5)
Current Store : [0x80000cc4] : sd a7, 1544(a5) -- Store: [0x80003c18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1cd and fm1 == 0x1de7626400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cd0]:fsqrt.d fa1, fa0, dyn
	-[0x80000cd4]:csrrs a7, fflags, zero
	-[0x80000cd8]:fsd fa1, 1552(a5)
Current Store : [0x80000cdc] : sd a7, 1560(a5) -- Store: [0x80003c28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x2c5 and fm1 == 0x1fdb0a6400000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ce8]:fsqrt.d fa1, fa0, dyn
	-[0x80000cec]:csrrs a7, fflags, zero
	-[0x80000cf0]:fsd fa1, 1568(a5)
Current Store : [0x80000cf4] : sd a7, 1576(a5) -- Store: [0x80003c38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x00000668b9824 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d00]:fsqrt.d fa1, fa0, dyn
	-[0x80000d04]:csrrs a7, fflags, zero
	-[0x80000d08]:fsd fa1, 1584(a5)
Current Store : [0x80000d0c] : sd a7, 1592(a5) -- Store: [0x80003c48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x6eb and fm1 == 0x812dd01000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d18]:fsqrt.d fa1, fa0, dyn
	-[0x80000d1c]:csrrs a7, fflags, zero
	-[0x80000d20]:fsd fa1, 1600(a5)
Current Store : [0x80000d24] : sd a7, 1608(a5) -- Store: [0x80003c58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x05f and fm1 == 0x19ad084000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d30]:fsqrt.d fa1, fa0, dyn
	-[0x80000d34]:csrrs a7, fflags, zero
	-[0x80000d38]:fsd fa1, 1616(a5)
Current Store : [0x80000d3c] : sd a7, 1624(a5) -- Store: [0x80003c68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x531 and fm1 == 0x1ef1f04000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d48]:fsqrt.d fa1, fa0, dyn
	-[0x80000d4c]:csrrs a7, fflags, zero
	-[0x80000d50]:fsd fa1, 1632(a5)
Current Store : [0x80000d54] : sd a7, 1640(a5) -- Store: [0x80003c78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7ec and fm1 == 0xfe704e2000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d60]:fsqrt.d fa1, fa0, dyn
	-[0x80000d64]:csrrs a7, fflags, zero
	-[0x80000d68]:fsd fa1, 1648(a5)
Current Store : [0x80000d6c] : sd a7, 1656(a5) -- Store: [0x80003c88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x79d and fm1 == 0xcca7da4000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d78]:fsqrt.d fa1, fa0, dyn
	-[0x80000d7c]:csrrs a7, fflags, zero
	-[0x80000d80]:fsd fa1, 1664(a5)
Current Store : [0x80000d84] : sd a7, 1672(a5) -- Store: [0x80003c98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6b21548000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d90]:fsqrt.d fa1, fa0, dyn
	-[0x80000d94]:csrrs a7, fflags, zero
	-[0x80000d98]:fsd fa1, 1680(a5)
Current Store : [0x80000d9c] : sd a7, 1688(a5) -- Store: [0x80003ca8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1de and fm1 == 0x249cb08000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000da8]:fsqrt.d fa1, fa0, dyn
	-[0x80000dac]:csrrs a7, fflags, zero
	-[0x80000db0]:fsd fa1, 1696(a5)
Current Store : [0x80000db4] : sd a7, 1704(a5) -- Store: [0x80003cb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x282 and fm1 == 0x42d6888000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dc0]:fsqrt.d fa1, fa0, dyn
	-[0x80000dc4]:csrrs a7, fflags, zero
	-[0x80000dc8]:fsd fa1, 1712(a5)
Current Store : [0x80000dcc] : sd a7, 1720(a5) -- Store: [0x80003cc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x66e and fm1 == 0x22d1c20000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dd8]:fsqrt.d fa1, fa0, dyn
	-[0x80000ddc]:csrrs a7, fflags, zero
	-[0x80000de0]:fsd fa1, 1728(a5)
Current Store : [0x80000de4] : sd a7, 1736(a5) -- Store: [0x80003cd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x500 and fm1 == 0x21b0a20000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000df0]:fsqrt.d fa1, fa0, dyn
	-[0x80000df4]:csrrs a7, fflags, zero
	-[0x80000df8]:fsd fa1, 1744(a5)
Current Store : [0x80000dfc] : sd a7, 1752(a5) -- Store: [0x80003ce8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x74e and fm1 == 0x9e67b20000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e08]:fsqrt.d fa1, fa0, dyn
	-[0x80000e0c]:csrrs a7, fflags, zero
	-[0x80000e10]:fsd fa1, 1760(a5)
Current Store : [0x80000e14] : sd a7, 1768(a5) -- Store: [0x80003cf8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x0db and fm1 == 0xb6b4c40000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fsqrt.d fa1, fa0, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa1, 1776(a5)
Current Store : [0x80000e2c] : sd a7, 1784(a5) -- Store: [0x80003d08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5de and fm1 == 0xd19a080000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e38]:fsqrt.d fa1, fa0, dyn
	-[0x80000e3c]:csrrs a7, fflags, zero
	-[0x80000e40]:fsd fa1, 1792(a5)
Current Store : [0x80000e44] : sd a7, 1800(a5) -- Store: [0x80003d18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x350 and fm1 == 0x7c46c80000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e50]:fsqrt.d fa1, fa0, dyn
	-[0x80000e54]:csrrs a7, fflags, zero
	-[0x80000e58]:fsd fa1, 1808(a5)
Current Store : [0x80000e5c] : sd a7, 1816(a5) -- Store: [0x80003d28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x19e and fm1 == 0x11ed200000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e68]:fsqrt.d fa1, fa0, dyn
	-[0x80000e6c]:csrrs a7, fflags, zero
	-[0x80000e70]:fsd fa1, 1824(a5)
Current Store : [0x80000e74] : sd a7, 1832(a5) -- Store: [0x80003d38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x697 and fm1 == 0xd4fe400000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e80]:fsqrt.d fa1, fa0, dyn
	-[0x80000e84]:csrrs a7, fflags, zero
	-[0x80000e88]:fsd fa1, 1840(a5)
Current Store : [0x80000e8c] : sd a7, 1848(a5) -- Store: [0x80003d48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3fa and fm1 == 0xdab4800000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e98]:fsqrt.d fa1, fa0, dyn
	-[0x80000e9c]:csrrs a7, fflags, zero
	-[0x80000ea0]:fsd fa1, 1856(a5)
Current Store : [0x80000ea4] : sd a7, 1864(a5) -- Store: [0x80003d58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3d7 and fm1 == 0x8d81000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000eb0]:fsqrt.d fa1, fa0, dyn
	-[0x80000eb4]:csrrs a7, fflags, zero
	-[0x80000eb8]:fsd fa1, 1872(a5)
Current Store : [0x80000ebc] : sd a7, 1880(a5) -- Store: [0x80003d68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x67c and fm1 == 0x12a8800000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ec8]:fsqrt.d fa1, fa0, dyn
	-[0x80000ecc]:csrrs a7, fflags, zero
	-[0x80000ed0]:fsd fa1, 1888(a5)
Current Store : [0x80000ed4] : sd a7, 1896(a5) -- Store: [0x80003d78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x771 and fm1 == 0xf771000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ee0]:fsqrt.d fa1, fa0, dyn
	-[0x80000ee4]:csrrs a7, fflags, zero
	-[0x80000ee8]:fsd fa1, 1904(a5)
Current Store : [0x80000eec] : sd a7, 1912(a5) -- Store: [0x80003d88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1cb and fm1 == 0xd3a4000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ef8]:fsqrt.d fa1, fa0, dyn
	-[0x80000efc]:csrrs a7, fflags, zero
	-[0x80000f00]:fsd fa1, 1920(a5)
Current Store : [0x80000f04] : sd a7, 1928(a5) -- Store: [0x80003d98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c1 and fm1 == 0xffe4000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f10]:fsqrt.d fa1, fa0, dyn
	-[0x80000f14]:csrrs a7, fflags, zero
	-[0x80000f18]:fsd fa1, 1936(a5)
Current Store : [0x80000f1c] : sd a7, 1944(a5) -- Store: [0x80003da8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x322 and fm1 == 0xc988000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f28]:fsqrt.d fa1, fa0, dyn
	-[0x80000f2c]:csrrs a7, fflags, zero
	-[0x80000f30]:fsd fa1, 1952(a5)
Current Store : [0x80000f34] : sd a7, 1960(a5) -- Store: [0x80003db8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43a and fm1 == 0xf808000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f40]:fsqrt.d fa1, fa0, dyn
	-[0x80000f44]:csrrs a7, fflags, zero
	-[0x80000f48]:fsd fa1, 1968(a5)
Current Store : [0x80000f4c] : sd a7, 1976(a5) -- Store: [0x80003dc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x42a and fm1 == 0x2608000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f58]:fsqrt.d fa1, fa0, dyn
	-[0x80000f5c]:csrrs a7, fflags, zero
	-[0x80000f60]:fsd fa1, 1984(a5)
Current Store : [0x80000f64] : sd a7, 1992(a5) -- Store: [0x80003dd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x46a and fm1 == 0xd120000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f70]:fsqrt.d fa1, fa0, dyn
	-[0x80000f74]:csrrs a7, fflags, zero
	-[0x80000f78]:fsd fa1, 2000(a5)
Current Store : [0x80000f7c] : sd a7, 2008(a5) -- Store: [0x80003de8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x2c7 and fm1 == 0xfa40000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f88]:fsqrt.d fa1, fa0, dyn
	-[0x80000f8c]:csrrs a7, fflags, zero
	-[0x80000f90]:fsd fa1, 2016(a5)
Current Store : [0x80000f94] : sd a7, 2024(a5) -- Store: [0x80003df8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x11a and fm1 == 0xd120000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:fsqrt.d fa1, fa0, dyn
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:fsd fa1, 0(a5)
Current Store : [0x80000fb4] : sd a7, 8(a5) -- Store: [0x80003e08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1d3 and fm1 == 0x2100000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fc0]:fsqrt.d fa1, fa0, dyn
	-[0x80000fc4]:csrrs a7, fflags, zero
	-[0x80000fc8]:fsd fa1, 16(a5)
Current Store : [0x80000fcc] : sd a7, 24(a5) -- Store: [0x80003e18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x40a and fm1 == 0x0880000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fd8]:fsqrt.d fa1, fa0, dyn
	-[0x80000fdc]:csrrs a7, fflags, zero
	-[0x80000fe0]:fsd fa1, 32(a5)
Current Store : [0x80000fe4] : sd a7, 40(a5) -- Store: [0x80003e28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x4b5 and fm1 == 0xb900000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ff0]:fsqrt.d fa1, fa0, dyn
	-[0x80000ff4]:csrrs a7, fflags, zero
	-[0x80000ff8]:fsd fa1, 48(a5)
Current Store : [0x80000ffc] : sd a7, 56(a5) -- Store: [0x80003e38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x426 and fm1 == 0xe080000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001008]:fsqrt.d fa1, fa0, dyn
	-[0x8000100c]:csrrs a7, fflags, zero
	-[0x80001010]:fsd fa1, 64(a5)
Current Store : [0x80001014] : sd a7, 72(a5) -- Store: [0x80003e48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x792 and fm1 == 0xc200000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001020]:fsqrt.d fa1, fa0, dyn
	-[0x80001024]:csrrs a7, fflags, zero
	-[0x80001028]:fsd fa1, 80(a5)
Current Store : [0x8000102c] : sd a7, 88(a5) -- Store: [0x80003e58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x637 and fm1 == 0xe400000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001038]:fsqrt.d fa1, fa0, dyn
	-[0x8000103c]:csrrs a7, fflags, zero
	-[0x80001040]:fsd fa1, 96(a5)
Current Store : [0x80001044] : sd a7, 104(a5) -- Store: [0x80003e68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5b1 and fm1 == 0xe400000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001050]:fsqrt.d fa1, fa0, dyn
	-[0x80001054]:csrrs a7, fflags, zero
	-[0x80001058]:fsd fa1, 112(a5)
Current Store : [0x8000105c] : sd a7, 120(a5) -- Store: [0x80003e78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7c7 and fm1 == 0x9000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001068]:fsqrt.d fa1, fa0, dyn
	-[0x8000106c]:csrrs a7, fflags, zero
	-[0x80001070]:fsd fa1, 128(a5)
Current Store : [0x80001074] : sd a7, 136(a5) -- Store: [0x80003e88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x1c7 and fm1 == 0x9000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001080]:fsqrt.d fa1, fa0, dyn
	-[0x80001084]:csrrs a7, fflags, zero
	-[0x80001088]:fsd fa1, 144(a5)
Current Store : [0x8000108c] : sd a7, 152(a5) -- Store: [0x80003e98]:0x0000000000000001





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

|s.no|            signature             |                                                                      coverpoints                                                                      |                                                        code                                                        |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003610]<br>0x0000000080000390|- opcode : fsqrt.d<br> - rs1 : f5<br> - rd : f5<br> - rs1 == rd<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br> |[0x800003b8]:fsqrt.d ft5, ft5, dyn<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:fsd ft5, 0(a5)<br>      |
|   2|[0x80003620]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f19<br> - rd : f11<br> - rs1 != rd<br> - fs1 == 0 and fe1 == 0x141 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                      |[0x800003d0]:fsqrt.d fa1, fs3, dyn<br> [0x800003d4]:csrrs a7, fflags, zero<br> [0x800003d8]:fsd fa1, 16(a5)<br>     |
|   3|[0x80003630]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f3<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                                       |[0x800003e8]:fsqrt.d fs3, ft3, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:fsd fs3, 32(a5)<br>     |
|   4|[0x80003640]<br>0x0000000000000001|- rs1 : f14<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x1d6 and fm1 == 0xb935452b4bc7c and rm_val == 0  #nosat<br>                                      |[0x80000400]:fsqrt.d fa7, fa4, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fa7, 48(a5)<br>     |
|   5|[0x80003650]<br>0xEDBEADFEEDBEADFE|- rs1 : f17<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x610 and fm1 == 0x21ccea37c6190 and rm_val == 0  #nosat<br>                                      |[0x80000418]:fsqrt.d fs9, fa7, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsd fs9, 64(a5)<br>     |
|   6|[0x80003660]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f20<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x243 and fm1 == 0x7730427032993 and rm_val == 0  #nosat<br>                                       |[0x80000430]:fsqrt.d ft4, fs4, dyn<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:fsd ft4, 80(a5)<br>     |
|   7|[0x80003670]<br>0xADFEEDBEADFEEDBE|- rs1 : f28<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x24a and fm1 == 0x596ffbdcf9515 and rm_val == 0  #nosat<br>                                       |[0x80000448]:fsqrt.d fs1, ft8, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd fs1, 96(a5)<br>     |
|   8|[0x80003680]<br>0x0000000080003610|- rs1 : f24<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x0dd and fm1 == 0xb962d97d9e0d3 and rm_val == 0  #nosat<br>                                      |[0x80000460]:fsqrt.d fa5, fs8, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd fa5, 112(a5)<br>    |
|   9|[0x80003690]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f22<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x49e and fm1 == 0x6d6aa7b5d5523 and rm_val == 0  #nosat<br>                                      |[0x80000478]:fsqrt.d fa2, fs6, dyn<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:fsd fa2, 128(a5)<br>    |
|  10|[0x800036a0]<br>0xEEDBEADFEEDBEADF|- rs1 : f16<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x664 and fm1 == 0x1f53f3796faa0 and rm_val == 0  #nosat<br>                                      |[0x80000490]:fsqrt.d ft9, fa6, dyn<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:fsd ft9, 144(a5)<br>    |
|  11|[0x800036b0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f29<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x220 and fm1 == 0xb615804e82f0b and rm_val == 0  #nosat<br>                                      |[0x800004a8]:fsqrt.d fs11, ft9, dyn<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:fsd fs11, 160(a5)<br>  |
|  12|[0x800036c0]<br>0x0000000A00000000|- rs1 : f11<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x1dd and fm1 == 0x00eff45d8a020 and rm_val == 0  #nosat<br>                                       |[0x800004c0]:fsqrt.d ft3, fa1, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd ft3, 176(a5)<br>    |
|  13|[0x800036d0]<br>0xDF56FF76DF56FF76|- rs1 : f12<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x4eb and fm1 == 0xa52bfc61f44e1 and rm_val == 0  #nosat<br>                                      |[0x800004d8]:fsqrt.d fs2, fa2, dyn<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:fsd fs2, 192(a5)<br>    |
|  14|[0x800036e0]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f13<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x0b8 and fm1 == 0x676d52bcd2ca2 and rm_val == 0  #nosat<br>                                       |[0x800004f0]:fsqrt.d ft7, fa3, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd ft7, 208(a5)<br>    |
|  15|[0x800036f0]<br>0x6DF56FF76DF56FF7|- rs1 : f0<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x21c and fm1 == 0x1fc5f6573038b and rm_val == 0  #nosat<br>                                       |[0x80000508]:fsqrt.d fs6, ft0, dyn<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:fsd fs6, 224(a5)<br>    |
|  16|[0x80003700]<br>0x0000000000000000|- rs1 : f1<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x27a and fm1 == 0xfedcb647b5255 and rm_val == 0  #nosat<br>                                        |[0x80000520]:fsqrt.d ft0, ft1, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd ft0, 240(a5)<br>    |
|  17|[0x80003710]<br>0xF76DF56FF76DF56F|- rs1 : f31<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x046 and fm1 == 0x10964a3288ede and rm_val == 0  #nosat<br>                                      |[0x80000538]:fsqrt.d ft10, ft11, dyn<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:fsd ft10, 256(a5)<br> |
|  18|[0x80003720]<br>0xF56FF76DF56FF76D|- rs1 : f21<br> - rd : f14<br> - fs1 == 0 and fe1 == 0x6cc and fm1 == 0xda4837dc75a45 and rm_val == 0  #nosat<br>                                      |[0x80000550]:fsqrt.d fa4, fs5, dyn<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:fsd fa4, 272(a5)<br>    |
|  19|[0x80003730]<br>0xFEEDBEADFEEDBEAD|- rs1 : f6<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x379 and fm1 == 0x609ba7e28b6d6 and rm_val == 0  #nosat<br>                                        |[0x80000568]:fsqrt.d ft1, ft6, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsd ft1, 288(a5)<br>    |
|  20|[0x80003740]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f25<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x010 and fm1 == 0x19147937aef10 and rm_val == 0  #nosat<br>                                      |[0x80000580]:fsqrt.d ft11, fs9, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd ft11, 304(a5)<br>  |
|  21|[0x80003750]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f4<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x5cd and fm1 == 0x0415c96d286b2 and rm_val == 0  #nosat<br>                                       |[0x80000598]:fsqrt.d fs8, ft4, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd fs8, 320(a5)<br>    |
|  22|[0x80003760]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f2<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x562 and fm1 == 0xd8a88b54ddbd1 and rm_val == 0  #nosat<br>                                       |[0x800005b0]:fsqrt.d ft8, ft2, dyn<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:fsd ft8, 336(a5)<br>    |
|  23|[0x80003770]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f7<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x5b4 and fm1 == 0x3b6ba19f71958 and rm_val == 0  #nosat<br>                                       |[0x800005c8]:fsqrt.d fs4, ft7, dyn<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:fsd fs4, 352(a5)<br>    |
|  24|[0x80003780]<br>0x0000000A00006000|- rs1 : f26<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x36f and fm1 == 0xb907cc9a3dfc5 and rm_val == 0  #nosat<br>                                       |[0x800005e0]:fsqrt.d ft2, fs10, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd ft2, 368(a5)<br>   |
|  25|[0x80003790]<br>0x0000000080003000|- rs1 : f23<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x62a and fm1 == 0xc5b706ee884bd and rm_val == 0  #nosat<br>                                       |[0x800005f8]:fsqrt.d ft6, fs7, dyn<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:fsd ft6, 384(a5)<br>    |
|  26|[0x800037a0]<br>0x0000000080003010|- rs1 : f10<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x6ac and fm1 == 0xa53af1e9e6297 and rm_val == 0  #nosat<br>                                      |[0x80000610]:fsqrt.d fa6, fa0, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsd fa6, 400(a5)<br>    |
|  27|[0x800037b0]<br>0xEADFEEDBEADFEEDB|- rs1 : f15<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x5f2 and fm1 == 0x2c7839914630c and rm_val == 0  #nosat<br>                                      |[0x80000628]:fsqrt.d fa3, fa5, dyn<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:fsd fa3, 416(a5)<br>    |
|  28|[0x800037c0]<br>0x76DF56FF76DF56FF|- rs1 : f8<br> - rd : f26<br> - fs1 == 0 and fe1 == 0x68a and fm1 == 0xd3f8d47593f76 and rm_val == 0  #nosat<br>                                       |[0x80000640]:fsqrt.d fs10, fs0, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fs10, 432(a5)<br>  |
|  29|[0x800037d0]<br>0x56FF76DF56FF76DF|- rs1 : f9<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x14c and fm1 == 0x3543bca6412dd and rm_val == 0  #nosat<br>                                       |[0x80000658]:fsqrt.d fa0, fs1, dyn<br> [0x8000065c]:csrrs a7, fflags, zero<br> [0x80000660]:fsd fa0, 448(a5)<br>    |
|  30|[0x800037e0]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f27<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x390 and fm1 == 0x5ad9865ef1ae8 and rm_val == 0  #nosat<br>                                       |[0x80000670]:fsqrt.d fs0, fs11, dyn<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:fsd fs0, 464(a5)<br>   |
|  31|[0x800037f0]<br>0xDBEADFEEDBEADFEE|- rs1 : f18<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x27b and fm1 == 0x9ef64199541d0 and rm_val == 0  #nosat<br>                                      |[0x80000688]:fsqrt.d fs5, fs2, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsd fs5, 480(a5)<br>    |
|  32|[0x80003800]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f30<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x429 and fm1 == 0xf1125eaac3f81 and rm_val == 0  #nosat<br>                                      |[0x800006a0]:fsqrt.d fs7, ft10, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd fs7, 496(a5)<br>   |
|  33|[0x80003810]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x277 and fm1 == 0x8a162e2f42a21 and rm_val == 0  #nosat<br>                                                                     |[0x800006b8]:fsqrt.d fa1, fa0, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsd fa1, 512(a5)<br>    |
|  34|[0x80003820]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x361 and fm1 == 0x67017bfbb2e14 and rm_val == 0  #nosat<br>                                                                     |[0x800006d0]:fsqrt.d fa1, fa0, dyn<br> [0x800006d4]:csrrs a7, fflags, zero<br> [0x800006d8]:fsd fa1, 528(a5)<br>    |
|  35|[0x80003830]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x01e and fm1 == 0x28a5fa032b6d5 and rm_val == 0  #nosat<br>                                                                     |[0x800006e8]:fsqrt.d fa1, fa0, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd fa1, 544(a5)<br>    |
|  36|[0x80003840]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x443 and fm1 == 0xbb0584a3e9fb1 and rm_val == 0  #nosat<br>                                                                     |[0x80000700]:fsqrt.d fa1, fa0, dyn<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:fsd fa1, 560(a5)<br>    |
|  37|[0x80003850]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x4a7 and fm1 == 0x480c0e0c26ad5 and rm_val == 0  #nosat<br>                                                                     |[0x80000718]:fsqrt.d fa1, fa0, dyn<br> [0x8000071c]:csrrs a7, fflags, zero<br> [0x80000720]:fsd fa1, 576(a5)<br>    |
|  38|[0x80003860]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x463 and fm1 == 0x53fdb488151bd and rm_val == 0  #nosat<br>                                                                     |[0x80000730]:fsqrt.d fa1, fa0, dyn<br> [0x80000734]:csrrs a7, fflags, zero<br> [0x80000738]:fsd fa1, 592(a5)<br>    |
|  39|[0x80003870]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x6e6 and fm1 == 0xd658cf235f718 and rm_val == 0  #nosat<br>                                                                     |[0x80000748]:fsqrt.d fa1, fa0, dyn<br> [0x8000074c]:csrrs a7, fflags, zero<br> [0x80000750]:fsd fa1, 608(a5)<br>    |
|  40|[0x80003880]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x2ac and fm1 == 0x903f3a50115bf and rm_val == 0  #nosat<br>                                                                     |[0x80000760]:fsqrt.d fa1, fa0, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsd fa1, 624(a5)<br>    |
|  41|[0x80003890]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x55f and fm1 == 0x831433085a13f and rm_val == 0  #nosat<br>                                                                     |[0x80000778]:fsqrt.d fa1, fa0, dyn<br> [0x8000077c]:csrrs a7, fflags, zero<br> [0x80000780]:fsd fa1, 640(a5)<br>    |
|  42|[0x800038a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x6de and fm1 == 0x4a8493263d912 and rm_val == 0  #nosat<br>                                                                     |[0x80000790]:fsqrt.d fa1, fa0, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa1, 656(a5)<br>    |
|  43|[0x800038b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x028 and fm1 == 0x50d5c9d17a718 and rm_val == 0  #nosat<br>                                                                     |[0x800007a8]:fsqrt.d fa1, fa0, dyn<br> [0x800007ac]:csrrs a7, fflags, zero<br> [0x800007b0]:fsd fa1, 672(a5)<br>    |
|  44|[0x800038c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3a6 and fm1 == 0x8dea07a7d2f66 and rm_val == 0  #nosat<br>                                                                     |[0x800007c0]:fsqrt.d fa1, fa0, dyn<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:fsd fa1, 688(a5)<br>    |
|  45|[0x800038d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x04d and fm1 == 0xf54d566d3af23 and rm_val == 0  #nosat<br>                                                                     |[0x800007d8]:fsqrt.d fa1, fa0, dyn<br> [0x800007dc]:csrrs a7, fflags, zero<br> [0x800007e0]:fsd fa1, 704(a5)<br>    |
|  46|[0x800038e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x352 and fm1 == 0x68bf7bba24887 and rm_val == 0  #nosat<br>                                                                     |[0x800007f0]:fsqrt.d fa1, fa0, dyn<br> [0x800007f4]:csrrs a7, fflags, zero<br> [0x800007f8]:fsd fa1, 720(a5)<br>    |
|  47|[0x800038f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x74733452ff5d7 and rm_val == 0  #nosat<br>                                                                     |[0x80000808]:fsqrt.d fa1, fa0, dyn<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsd fa1, 736(a5)<br>    |
|  48|[0x80003900]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x68c and fm1 == 0x4f2b6e728ce0c and rm_val == 0  #nosat<br>                                                                     |[0x80000820]:fsqrt.d fa1, fa0, dyn<br> [0x80000824]:csrrs a7, fflags, zero<br> [0x80000828]:fsd fa1, 752(a5)<br>    |
|  49|[0x80003910]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x15c and fm1 == 0xb61d12a3db43b and rm_val == 0  #nosat<br>                                                                     |[0x80000838]:fsqrt.d fa1, fa0, dyn<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:fsd fa1, 768(a5)<br>    |
|  50|[0x80003920]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x011 and fm1 == 0x421e71936ce4f and rm_val == 0  #nosat<br>                                                                     |[0x80000850]:fsqrt.d fa1, fa0, dyn<br> [0x80000854]:csrrs a7, fflags, zero<br> [0x80000858]:fsd fa1, 784(a5)<br>    |
|  51|[0x80003930]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x253 and fm1 == 0xcf11866f044c6 and rm_val == 0  #nosat<br>                                                                     |[0x80000868]:fsqrt.d fa1, fa0, dyn<br> [0x8000086c]:csrrs a7, fflags, zero<br> [0x80000870]:fsd fa1, 800(a5)<br>    |
|  52|[0x80003940]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x245 and fm1 == 0xe2ded1447a9b2 and rm_val == 0  #nosat<br>                                                                     |[0x80000880]:fsqrt.d fa1, fa0, dyn<br> [0x80000884]:csrrs a7, fflags, zero<br> [0x80000888]:fsd fa1, 816(a5)<br>    |
|  53|[0x80003950]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x794 and fm1 == 0xdf650f96fc9dc and rm_val == 0  #nosat<br>                                                                     |[0x80000898]:fsqrt.d fa1, fa0, dyn<br> [0x8000089c]:csrrs a7, fflags, zero<br> [0x800008a0]:fsd fa1, 832(a5)<br>    |
|  54|[0x80003960]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x1f7 and fm1 == 0x0c82887c59b71 and rm_val == 0  #nosat<br>                                                                     |[0x800008b0]:fsqrt.d fa1, fa0, dyn<br> [0x800008b4]:csrrs a7, fflags, zero<br> [0x800008b8]:fsd fa1, 848(a5)<br>    |
|  55|[0x80003970]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x56c and fm1 == 0xc901d6ca9fe73 and rm_val == 0  #nosat<br>                                                                     |[0x800008c8]:fsqrt.d fa1, fa0, dyn<br> [0x800008cc]:csrrs a7, fflags, zero<br> [0x800008d0]:fsd fa1, 864(a5)<br>    |
|  56|[0x80003980]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x36a and fm1 == 0x1a98d1d649d85 and rm_val == 0  #nosat<br>                                                                     |[0x800008e0]:fsqrt.d fa1, fa0, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa1, 880(a5)<br>    |
|  57|[0x80003990]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x293 and fm1 == 0x1fa2f7bf8a3cd and rm_val == 0  #nosat<br>                                                                     |[0x800008f8]:fsqrt.d fa1, fa0, dyn<br> [0x800008fc]:csrrs a7, fflags, zero<br> [0x80000900]:fsd fa1, 896(a5)<br>    |
|  58|[0x800039a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x6c4 and fm1 == 0x936ef74f68734 and rm_val == 0  #nosat<br>                                                                     |[0x80000910]:fsqrt.d fa1, fa0, dyn<br> [0x80000914]:csrrs a7, fflags, zero<br> [0x80000918]:fsd fa1, 912(a5)<br>    |
|  59|[0x800039b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x1f6 and fm1 == 0xddff45305d0a3 and rm_val == 0  #nosat<br>                                                                     |[0x80000928]:fsqrt.d fa1, fa0, dyn<br> [0x8000092c]:csrrs a7, fflags, zero<br> [0x80000930]:fsd fa1, 928(a5)<br>    |
|  60|[0x800039c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x70b and fm1 == 0xa9bb9576e08fe and rm_val == 0  #nosat<br>                                                                     |[0x80000940]:fsqrt.d fa1, fa0, dyn<br> [0x80000944]:csrrs a7, fflags, zero<br> [0x80000948]:fsd fa1, 944(a5)<br>    |
|  61|[0x800039d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x5c5 and fm1 == 0x4051a49e409ef and rm_val == 0  #nosat<br>                                                                     |[0x80000958]:fsqrt.d fa1, fa0, dyn<br> [0x8000095c]:csrrs a7, fflags, zero<br> [0x80000960]:fsd fa1, 960(a5)<br>    |
|  62|[0x800039e0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x1dc and fm1 == 0x184be59c54b98 and rm_val == 0  #nosat<br>                                                                     |[0x80000970]:fsqrt.d fa1, fa0, dyn<br> [0x80000974]:csrrs a7, fflags, zero<br> [0x80000978]:fsd fa1, 976(a5)<br>    |
|  63|[0x800039f0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x69d and fm1 == 0x3245461ecff87 and rm_val == 0  #nosat<br>                                                                     |[0x80000988]:fsqrt.d fa1, fa0, dyn<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsd fa1, 992(a5)<br>    |
|  64|[0x80003a00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x2f2 and fm1 == 0xa186bad3f3b95 and rm_val == 0  #nosat<br>                                                                     |[0x800009a0]:fsqrt.d fa1, fa0, dyn<br> [0x800009a4]:csrrs a7, fflags, zero<br> [0x800009a8]:fsd fa1, 1008(a5)<br>   |
|  65|[0x80003a10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x216 and fm1 == 0x5901f1856027c and rm_val == 0  #nosat<br>                                                                     |[0x800009b8]:fsqrt.d fa1, fa0, dyn<br> [0x800009bc]:csrrs a7, fflags, zero<br> [0x800009c0]:fsd fa1, 1024(a5)<br>   |
|  66|[0x80003a20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x0f6 and fm1 == 0x0e8dcc21fc0dc and rm_val == 0  #nosat<br>                                                                     |[0x800009d0]:fsqrt.d fa1, fa0, dyn<br> [0x800009d4]:csrrs a7, fflags, zero<br> [0x800009d8]:fsd fa1, 1040(a5)<br>   |
|  67|[0x80003a30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x6b8 and fm1 == 0x28048e71f9d08 and rm_val == 0  #nosat<br>                                                                     |[0x800009e8]:fsqrt.d fa1, fa0, dyn<br> [0x800009ec]:csrrs a7, fflags, zero<br> [0x800009f0]:fsd fa1, 1056(a5)<br>   |
|  68|[0x80003a40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x227 and fm1 == 0x127f90c3b9090 and rm_val == 0  #nosat<br>                                                                     |[0x80000a00]:fsqrt.d fa1, fa0, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsd fa1, 1072(a5)<br>   |
|  69|[0x80003a50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x076 and fm1 == 0x033274a480488 and rm_val == 0  #nosat<br>                                                                     |[0x80000a18]:fsqrt.d fa1, fa0, dyn<br> [0x80000a1c]:csrrs a7, fflags, zero<br> [0x80000a20]:fsd fa1, 1088(a5)<br>   |
|  70|[0x80003a60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x01b and fm1 == 0xd960e82d4b810 and rm_val == 0  #nosat<br>                                                                     |[0x80000a30]:fsqrt.d fa1, fa0, dyn<br> [0x80000a34]:csrrs a7, fflags, zero<br> [0x80000a38]:fsd fa1, 1104(a5)<br>   |
|  71|[0x80003a70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x5fc and fm1 == 0x9ed0caa415ec8 and rm_val == 0  #nosat<br>                                                                     |[0x80000a48]:fsqrt.d fa1, fa0, dyn<br> [0x80000a4c]:csrrs a7, fflags, zero<br> [0x80000a50]:fsd fa1, 1120(a5)<br>   |
|  72|[0x80003a80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x5fd and fm1 == 0x822bf1e14a240 and rm_val == 0  #nosat<br>                                                                     |[0x80000a60]:fsqrt.d fa1, fa0, dyn<br> [0x80000a64]:csrrs a7, fflags, zero<br> [0x80000a68]:fsd fa1, 1136(a5)<br>   |
|  73|[0x80003a90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x31e and fm1 == 0x77fad24880120 and rm_val == 0  #nosat<br>                                                                     |[0x80000a78]:fsqrt.d fa1, fa0, dyn<br> [0x80000a7c]:csrrs a7, fflags, zero<br> [0x80000a80]:fsd fa1, 1152(a5)<br>   |
|  74|[0x80003aa0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000fe99b3b666 and rm_val == 0  #nosat<br>                                                                     |[0x80000a90]:fsqrt.d fa1, fa0, dyn<br> [0x80000a94]:csrrs a7, fflags, zero<br> [0x80000a98]:fsd fa1, 1168(a5)<br>   |
|  75|[0x80003ab0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x62a and fm1 == 0x0e613a46ac880 and rm_val == 0  #nosat<br>                                                                     |[0x80000aa8]:fsqrt.d fa1, fa0, dyn<br> [0x80000aac]:csrrs a7, fflags, zero<br> [0x80000ab0]:fsd fa1, 1184(a5)<br>   |
|  76|[0x80003ac0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x6bb and fm1 == 0x4d07b1ed41100 and rm_val == 0  #nosat<br>                                                                     |[0x80000ac0]:fsqrt.d fa1, fa0, dyn<br> [0x80000ac4]:csrrs a7, fflags, zero<br> [0x80000ac8]:fsd fa1, 1200(a5)<br>   |
|  77|[0x80003ad0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x4ee and fm1 == 0x71b0e933c2200 and rm_val == 0  #nosat<br>                                                                     |[0x80000ad8]:fsqrt.d fa1, fa0, dyn<br> [0x80000adc]:csrrs a7, fflags, zero<br> [0x80000ae0]:fsd fa1, 1216(a5)<br>   |
|  78|[0x80003ae0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x674 and fm1 == 0x0202a3cf79200 and rm_val == 0  #nosat<br>                                                                     |[0x80000af0]:fsqrt.d fa1, fa0, dyn<br> [0x80000af4]:csrrs a7, fflags, zero<br> [0x80000af8]:fsd fa1, 1232(a5)<br>   |
|  79|[0x80003af0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x5b3 and fm1 == 0x979ca2ec8c400 and rm_val == 0  #nosat<br>                                                                     |[0x80000b08]:fsqrt.d fa1, fa0, dyn<br> [0x80000b0c]:csrrs a7, fflags, zero<br> [0x80000b10]:fsd fa1, 1248(a5)<br>   |
|  80|[0x80003b00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x176 and fm1 == 0xeb971282f8200 and rm_val == 0  #nosat<br>                                                                     |[0x80000b20]:fsqrt.d fa1, fa0, dyn<br> [0x80000b24]:csrrs a7, fflags, zero<br> [0x80000b28]:fsd fa1, 1264(a5)<br>   |
|  81|[0x80003b10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3cb and fm1 == 0xf0b8ab6b51000 and rm_val == 0  #nosat<br>                                                                     |[0x80000b38]:fsqrt.d fa1, fa0, dyn<br> [0x80000b3c]:csrrs a7, fflags, zero<br> [0x80000b40]:fsd fa1, 1280(a5)<br>   |
|  82|[0x80003b20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x55c and fm1 == 0x27109d2e38800 and rm_val == 0  #nosat<br>                                                                     |[0x80000b50]:fsqrt.d fa1, fa0, dyn<br> [0x80000b54]:csrrs a7, fflags, zero<br> [0x80000b58]:fsd fa1, 1296(a5)<br>   |
|  83|[0x80003b30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x32b and fm1 == 0x0c8ac416c9000 and rm_val == 0  #nosat<br>                                                                     |[0x80000b68]:fsqrt.d fa1, fa0, dyn<br> [0x80000b6c]:csrrs a7, fflags, zero<br> [0x80000b70]:fsd fa1, 1312(a5)<br>   |
|  84|[0x80003b40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x693 and fm1 == 0x32159f7764000 and rm_val == 0  #nosat<br>                                                                     |[0x80000b80]:fsqrt.d fa1, fa0, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa1, 1328(a5)<br>   |
|  85|[0x80003b50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x74a and fm1 == 0x5095cd3c62000 and rm_val == 0  #nosat<br>                                                                     |[0x80000b98]:fsqrt.d fa1, fa0, dyn<br> [0x80000b9c]:csrrs a7, fflags, zero<br> [0x80000ba0]:fsd fa1, 1344(a5)<br>   |
|  86|[0x80003b60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x26e and fm1 == 0x8a8a8502e2000 and rm_val == 0  #nosat<br>                                                                     |[0x80000bb0]:fsqrt.d fa1, fa0, dyn<br> [0x80000bb4]:csrrs a7, fflags, zero<br> [0x80000bb8]:fsd fa1, 1360(a5)<br>   |
|  87|[0x80003b70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x5b0 and fm1 == 0x8f302c02c8000 and rm_val == 0  #nosat<br>                                                                     |[0x80000bc8]:fsqrt.d fa1, fa0, dyn<br> [0x80000bcc]:csrrs a7, fflags, zero<br> [0x80000bd0]:fsd fa1, 1376(a5)<br>   |
|  88|[0x80003b80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x32d and fm1 == 0xb63d043d10000 and rm_val == 0  #nosat<br>                                                                     |[0x80000be0]:fsqrt.d fa1, fa0, dyn<br> [0x80000be4]:csrrs a7, fflags, zero<br> [0x80000be8]:fsd fa1, 1392(a5)<br>   |
|  89|[0x80003b90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3d1 and fm1 == 0xc9c3e06610000 and rm_val == 0  #nosat<br>                                                                     |[0x80000bf8]:fsqrt.d fa1, fa0, dyn<br> [0x80000bfc]:csrrs a7, fflags, zero<br> [0x80000c00]:fsd fa1, 1408(a5)<br>   |
|  90|[0x80003ba0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x60c and fm1 == 0x4df3876008000 and rm_val == 0  #nosat<br>                                                                     |[0x80000c10]:fsqrt.d fa1, fa0, dyn<br> [0x80000c14]:csrrs a7, fflags, zero<br> [0x80000c18]:fsd fa1, 1424(a5)<br>   |
|  91|[0x80003bb0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x181 and fm1 == 0x0226265640000 and rm_val == 0  #nosat<br>                                                                     |[0x80000c28]:fsqrt.d fa1, fa0, dyn<br> [0x80000c2c]:csrrs a7, fflags, zero<br> [0x80000c30]:fsd fa1, 1440(a5)<br>   |
|  92|[0x80003bc0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x56f and fm1 == 0xeb77b14440000 and rm_val == 0  #nosat<br>                                                                     |[0x80000c40]:fsqrt.d fa1, fa0, dyn<br> [0x80000c44]:csrrs a7, fflags, zero<br> [0x80000c48]:fsd fa1, 1456(a5)<br>   |
|  93|[0x80003bd0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x712 and fm1 == 0x28efb9fd20000 and rm_val == 0  #nosat<br>                                                                     |[0x80000c58]:fsqrt.d fa1, fa0, dyn<br> [0x80000c5c]:csrrs a7, fflags, zero<br> [0x80000c60]:fsd fa1, 1472(a5)<br>   |
|  94|[0x80003be0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x7c1 and fm1 == 0x56c3dcb100000 and rm_val == 0  #nosat<br>                                                                     |[0x80000c70]:fsqrt.d fa1, fa0, dyn<br> [0x80000c74]:csrrs a7, fflags, zero<br> [0x80000c78]:fsd fa1, 1488(a5)<br>   |
|  95|[0x80003bf0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x1f9 and fm1 == 0x0aef451100000 and rm_val == 0  #nosat<br>                                                                     |[0x80000c88]:fsqrt.d fa1, fa0, dyn<br> [0x80000c8c]:csrrs a7, fflags, zero<br> [0x80000c90]:fsd fa1, 1504(a5)<br>   |
|  96|[0x80003c00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x7ab and fm1 == 0x155b835100000 and rm_val == 0  #nosat<br>                                                                     |[0x80000ca0]:fsqrt.d fa1, fa0, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsd fa1, 1520(a5)<br>   |
|  97|[0x80003c10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x15f94b0040000 and rm_val == 0  #nosat<br>                                                                     |[0x80000cb8]:fsqrt.d fa1, fa0, dyn<br> [0x80000cbc]:csrrs a7, fflags, zero<br> [0x80000cc0]:fsd fa1, 1536(a5)<br>   |
|  98|[0x80003c20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x1cd and fm1 == 0x1de7626400000 and rm_val == 0  #nosat<br>                                                                     |[0x80000cd0]:fsqrt.d fa1, fa0, dyn<br> [0x80000cd4]:csrrs a7, fflags, zero<br> [0x80000cd8]:fsd fa1, 1552(a5)<br>   |
|  99|[0x80003c30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x2c5 and fm1 == 0x1fdb0a6400000 and rm_val == 0  #nosat<br>                                                                     |[0x80000ce8]:fsqrt.d fa1, fa0, dyn<br> [0x80000cec]:csrrs a7, fflags, zero<br> [0x80000cf0]:fsd fa1, 1568(a5)<br>   |
| 100|[0x80003c40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x00000668b9824 and rm_val == 0  #nosat<br>                                                                     |[0x80000d00]:fsqrt.d fa1, fa0, dyn<br> [0x80000d04]:csrrs a7, fflags, zero<br> [0x80000d08]:fsd fa1, 1584(a5)<br>   |
| 101|[0x80003c50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x6eb and fm1 == 0x812dd01000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000d18]:fsqrt.d fa1, fa0, dyn<br> [0x80000d1c]:csrrs a7, fflags, zero<br> [0x80000d20]:fsd fa1, 1600(a5)<br>   |
| 102|[0x80003c60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x05f and fm1 == 0x19ad084000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000d30]:fsqrt.d fa1, fa0, dyn<br> [0x80000d34]:csrrs a7, fflags, zero<br> [0x80000d38]:fsd fa1, 1616(a5)<br>   |
| 103|[0x80003c70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x531 and fm1 == 0x1ef1f04000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000d48]:fsqrt.d fa1, fa0, dyn<br> [0x80000d4c]:csrrs a7, fflags, zero<br> [0x80000d50]:fsd fa1, 1632(a5)<br>   |
| 104|[0x80003c80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x7ec and fm1 == 0xfe704e2000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000d60]:fsqrt.d fa1, fa0, dyn<br> [0x80000d64]:csrrs a7, fflags, zero<br> [0x80000d68]:fsd fa1, 1648(a5)<br>   |
| 105|[0x80003c90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x79d and fm1 == 0xcca7da4000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000d78]:fsqrt.d fa1, fa0, dyn<br> [0x80000d7c]:csrrs a7, fflags, zero<br> [0x80000d80]:fsd fa1, 1664(a5)<br>   |
| 106|[0x80003ca0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6b21548000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000d90]:fsqrt.d fa1, fa0, dyn<br> [0x80000d94]:csrrs a7, fflags, zero<br> [0x80000d98]:fsd fa1, 1680(a5)<br>   |
| 107|[0x80003cb0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x1de and fm1 == 0x249cb08000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000da8]:fsqrt.d fa1, fa0, dyn<br> [0x80000dac]:csrrs a7, fflags, zero<br> [0x80000db0]:fsd fa1, 1696(a5)<br>   |
| 108|[0x80003cc0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x282 and fm1 == 0x42d6888000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000dc0]:fsqrt.d fa1, fa0, dyn<br> [0x80000dc4]:csrrs a7, fflags, zero<br> [0x80000dc8]:fsd fa1, 1712(a5)<br>   |
| 109|[0x80003cd0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x66e and fm1 == 0x22d1c20000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000dd8]:fsqrt.d fa1, fa0, dyn<br> [0x80000ddc]:csrrs a7, fflags, zero<br> [0x80000de0]:fsd fa1, 1728(a5)<br>   |
| 110|[0x80003ce0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x500 and fm1 == 0x21b0a20000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000df0]:fsqrt.d fa1, fa0, dyn<br> [0x80000df4]:csrrs a7, fflags, zero<br> [0x80000df8]:fsd fa1, 1744(a5)<br>   |
| 111|[0x80003cf0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x74e and fm1 == 0x9e67b20000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000e08]:fsqrt.d fa1, fa0, dyn<br> [0x80000e0c]:csrrs a7, fflags, zero<br> [0x80000e10]:fsd fa1, 1760(a5)<br>   |
| 112|[0x80003d00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x0db and fm1 == 0xb6b4c40000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000e20]:fsqrt.d fa1, fa0, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa1, 1776(a5)<br>   |
| 113|[0x80003d10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x5de and fm1 == 0xd19a080000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000e38]:fsqrt.d fa1, fa0, dyn<br> [0x80000e3c]:csrrs a7, fflags, zero<br> [0x80000e40]:fsd fa1, 1792(a5)<br>   |
| 114|[0x80003d20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x350 and fm1 == 0x7c46c80000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000e50]:fsqrt.d fa1, fa0, dyn<br> [0x80000e54]:csrrs a7, fflags, zero<br> [0x80000e58]:fsd fa1, 1808(a5)<br>   |
| 115|[0x80003d30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x19e and fm1 == 0x11ed200000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000e68]:fsqrt.d fa1, fa0, dyn<br> [0x80000e6c]:csrrs a7, fflags, zero<br> [0x80000e70]:fsd fa1, 1824(a5)<br>   |
| 116|[0x80003d40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x697 and fm1 == 0xd4fe400000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000e80]:fsqrt.d fa1, fa0, dyn<br> [0x80000e84]:csrrs a7, fflags, zero<br> [0x80000e88]:fsd fa1, 1840(a5)<br>   |
| 117|[0x80003d50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3fa and fm1 == 0xdab4800000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000e98]:fsqrt.d fa1, fa0, dyn<br> [0x80000e9c]:csrrs a7, fflags, zero<br> [0x80000ea0]:fsd fa1, 1856(a5)<br>   |
| 118|[0x80003d60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x3d7 and fm1 == 0x8d81000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000eb0]:fsqrt.d fa1, fa0, dyn<br> [0x80000eb4]:csrrs a7, fflags, zero<br> [0x80000eb8]:fsd fa1, 1872(a5)<br>   |
| 119|[0x80003d70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x67c and fm1 == 0x12a8800000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000ec8]:fsqrt.d fa1, fa0, dyn<br> [0x80000ecc]:csrrs a7, fflags, zero<br> [0x80000ed0]:fsd fa1, 1888(a5)<br>   |
| 120|[0x80003d80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x771 and fm1 == 0xf771000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000ee0]:fsqrt.d fa1, fa0, dyn<br> [0x80000ee4]:csrrs a7, fflags, zero<br> [0x80000ee8]:fsd fa1, 1904(a5)<br>   |
| 121|[0x80003d90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x1cb and fm1 == 0xd3a4000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000ef8]:fsqrt.d fa1, fa0, dyn<br> [0x80000efc]:csrrs a7, fflags, zero<br> [0x80000f00]:fsd fa1, 1920(a5)<br>   |
| 122|[0x80003da0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x7c1 and fm1 == 0xffe4000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000f10]:fsqrt.d fa1, fa0, dyn<br> [0x80000f14]:csrrs a7, fflags, zero<br> [0x80000f18]:fsd fa1, 1936(a5)<br>   |
| 123|[0x80003db0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x322 and fm1 == 0xc988000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000f28]:fsqrt.d fa1, fa0, dyn<br> [0x80000f2c]:csrrs a7, fflags, zero<br> [0x80000f30]:fsd fa1, 1952(a5)<br>   |
| 124|[0x80003dc0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43a and fm1 == 0xf808000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000f40]:fsqrt.d fa1, fa0, dyn<br> [0x80000f44]:csrrs a7, fflags, zero<br> [0x80000f48]:fsd fa1, 1968(a5)<br>   |
| 125|[0x80003dd0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x42a and fm1 == 0x2608000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000f58]:fsqrt.d fa1, fa0, dyn<br> [0x80000f5c]:csrrs a7, fflags, zero<br> [0x80000f60]:fsd fa1, 1984(a5)<br>   |
| 126|[0x80003de0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x46a and fm1 == 0xd120000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000f70]:fsqrt.d fa1, fa0, dyn<br> [0x80000f74]:csrrs a7, fflags, zero<br> [0x80000f78]:fsd fa1, 2000(a5)<br>   |
| 127|[0x80003df0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x2c7 and fm1 == 0xfa40000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000f88]:fsqrt.d fa1, fa0, dyn<br> [0x80000f8c]:csrrs a7, fflags, zero<br> [0x80000f90]:fsd fa1, 2016(a5)<br>   |
| 128|[0x80003e00]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x11a and fm1 == 0xd120000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000fa8]:fsqrt.d fa1, fa0, dyn<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:fsd fa1, 0(a5)<br>      |
| 129|[0x80003e10]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x1d3 and fm1 == 0x2100000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000fc0]:fsqrt.d fa1, fa0, dyn<br> [0x80000fc4]:csrrs a7, fflags, zero<br> [0x80000fc8]:fsd fa1, 16(a5)<br>     |
| 130|[0x80003e20]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x40a and fm1 == 0x0880000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000fd8]:fsqrt.d fa1, fa0, dyn<br> [0x80000fdc]:csrrs a7, fflags, zero<br> [0x80000fe0]:fsd fa1, 32(a5)<br>     |
| 131|[0x80003e30]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x4b5 and fm1 == 0xb900000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80000ff0]:fsqrt.d fa1, fa0, dyn<br> [0x80000ff4]:csrrs a7, fflags, zero<br> [0x80000ff8]:fsd fa1, 48(a5)<br>     |
| 132|[0x80003e40]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x426 and fm1 == 0xe080000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80001008]:fsqrt.d fa1, fa0, dyn<br> [0x8000100c]:csrrs a7, fflags, zero<br> [0x80001010]:fsd fa1, 64(a5)<br>     |
| 133|[0x80003e50]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x792 and fm1 == 0xc200000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80001020]:fsqrt.d fa1, fa0, dyn<br> [0x80001024]:csrrs a7, fflags, zero<br> [0x80001028]:fsd fa1, 80(a5)<br>     |
| 134|[0x80003e60]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x637 and fm1 == 0xe400000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80001038]:fsqrt.d fa1, fa0, dyn<br> [0x8000103c]:csrrs a7, fflags, zero<br> [0x80001040]:fsd fa1, 96(a5)<br>     |
| 135|[0x80003e70]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x5b1 and fm1 == 0xe400000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80001050]:fsqrt.d fa1, fa0, dyn<br> [0x80001054]:csrrs a7, fflags, zero<br> [0x80001058]:fsd fa1, 112(a5)<br>    |
| 136|[0x80003e80]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x7c7 and fm1 == 0x9000000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80001068]:fsqrt.d fa1, fa0, dyn<br> [0x8000106c]:csrrs a7, fflags, zero<br> [0x80001070]:fsd fa1, 128(a5)<br>    |
| 137|[0x80003e90]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x1c7 and fm1 == 0x9000000000000 and rm_val == 0  #nosat<br>                                                                     |[0x80001080]:fsqrt.d fa1, fa0, dyn<br> [0x80001084]:csrrs a7, fflags, zero<br> [0x80001088]:fsd fa1, 144(a5)<br>    |
