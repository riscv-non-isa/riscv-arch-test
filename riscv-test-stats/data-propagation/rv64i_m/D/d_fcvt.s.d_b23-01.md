
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800007f0')]      |
| SIG_REGION                | [('0x80002310', '0x800025e0', '90 dwords')]      |
| COV_LABELS                | fcvt.s.d_b23      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fcvt.s.d_b23-01.S/ref.S    |
| Total Number of coverpoints| 117     |
| Total Coverpoints Hit     | 112      |
| Total Signature Updates   | 90      |
| STAT1                     | 45      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 45     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.s.d', 'rs1 : f26', 'rd : f20', 'rs1 != rd', 'fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fcvt.s.d fs4, fs10, dyn
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:fsd fs4, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80002318]:0x0000000000000001




Last Coverpoint : ['rs1 : f13', 'rd : f13', 'rs1 == rd', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000004 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003d0]:fcvt.s.d fa3, fa3, dyn
	-[0x800003d4]:csrrs a7, fflags, zero
	-[0x800003d8]:fsd fa3, 16(a5)
Current Store : [0x800003dc] : sd a7, 24(a5) -- Store: [0x80002328]:0x0000000000000001




Last Coverpoint : ['rs1 : f10', 'rd : f23', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000004 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fcvt.s.d fs7, fa0, dyn
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:fsd fs7, 32(a5)
Current Store : [0x800003f4] : sd a7, 40(a5) -- Store: [0x80002338]:0x0000000000000001




Last Coverpoint : ['rs1 : f31', 'rd : f18', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000004 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000400]:fcvt.s.d fs2, ft11, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fs2, 48(a5)
Current Store : [0x8000040c] : sd a7, 56(a5) -- Store: [0x80002348]:0x0000000000000001




Last Coverpoint : ['rs1 : f2', 'rd : f19', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000004 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000418]:fcvt.s.d fs3, ft2, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsd fs3, 64(a5)
Current Store : [0x80000424] : sd a7, 72(a5) -- Store: [0x80002358]:0x0000000000000001




Last Coverpoint : ['rs1 : f20', 'rd : f9', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000004 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fcvt.s.d fs1, fs4, dyn
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:fsd fs1, 80(a5)
Current Store : [0x8000043c] : sd a7, 88(a5) -- Store: [0x80002368]:0x0000000000000001




Last Coverpoint : ['rs1 : f16', 'rd : f17', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000003 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000448]:fcvt.s.d fa7, fa6, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd fa7, 96(a5)
Current Store : [0x80000454] : sd a7, 104(a5) -- Store: [0x80002378]:0x0000000000000001




Last Coverpoint : ['rs1 : f30', 'rd : f29', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000003 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000460]:fcvt.s.d ft9, ft10, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd ft9, 112(a5)
Current Store : [0x8000046c] : sd a7, 120(a5) -- Store: [0x80002388]:0x0000000000000001




Last Coverpoint : ['rs1 : f3', 'rd : f5', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000003 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000478]:fcvt.s.d ft5, ft3, dyn
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:fsd ft5, 128(a5)
Current Store : [0x80000484] : sd a7, 136(a5) -- Store: [0x80002398]:0x0000000000000001




Last Coverpoint : ['rs1 : f19', 'rd : f0', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000003 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000490]:fcvt.s.d ft0, fs3, dyn
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:fsd ft0, 144(a5)
Current Store : [0x8000049c] : sd a7, 152(a5) -- Store: [0x800023a8]:0x0000000000000001




Last Coverpoint : ['rs1 : f27', 'rd : f8', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fcvt.s.d fs0, fs11, dyn
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:fsd fs0, 160(a5)
Current Store : [0x800004b4] : sd a7, 168(a5) -- Store: [0x800023b8]:0x0000000000000001




Last Coverpoint : ['rs1 : f4', 'rd : f21', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000002 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fcvt.s.d fs5, ft4, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd fs5, 176(a5)
Current Store : [0x800004cc] : sd a7, 184(a5) -- Store: [0x800023c8]:0x0000000000000001




Last Coverpoint : ['rs1 : f17', 'rd : f11', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000002 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004d8]:fcvt.s.d fa1, fa7, dyn
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:fsd fa1, 192(a5)
Current Store : [0x800004e4] : sd a7, 200(a5) -- Store: [0x800023d8]:0x0000000000000001




Last Coverpoint : ['rs1 : f15', 'rd : f12', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000002 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fcvt.s.d fa2, fa5, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd fa2, 208(a5)
Current Store : [0x800004fc] : sd a7, 216(a5) -- Store: [0x800023e8]:0x0000000000000001




Last Coverpoint : ['rs1 : f14', 'rd : f15', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000508]:fcvt.s.d fa5, fa4, dyn
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:fsd fa5, 224(a5)
Current Store : [0x80000514] : sd a7, 232(a5) -- Store: [0x800023f8]:0x0000000000000001




Last Coverpoint : ['rs1 : f21', 'rd : f6', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000002 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000520]:fcvt.s.d ft6, fs5, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd ft6, 240(a5)
Current Store : [0x8000052c] : sd a7, 248(a5) -- Store: [0x80002408]:0x0000000000000001




Last Coverpoint : ['rs1 : f0', 'rd : f27', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000001 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000538]:fcvt.s.d fs11, ft0, dyn
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:fsd fs11, 256(a5)
Current Store : [0x80000544] : sd a7, 264(a5) -- Store: [0x80002418]:0x0000000000000001




Last Coverpoint : ['rs1 : f6', 'rd : f25', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000001 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000550]:fcvt.s.d fs9, ft6, dyn
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:fsd fs9, 272(a5)
Current Store : [0x8000055c] : sd a7, 280(a5) -- Store: [0x80002428]:0x0000000000000001




Last Coverpoint : ['rs1 : f18', 'rd : f7', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000001 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000568]:fcvt.s.d ft7, fs2, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsd ft7, 288(a5)
Current Store : [0x80000574] : sd a7, 296(a5) -- Store: [0x80002438]:0x0000000000000001




Last Coverpoint : ['rs1 : f5', 'rd : f14', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000580]:fcvt.s.d fa4, ft5, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd fa4, 304(a5)
Current Store : [0x8000058c] : sd a7, 312(a5) -- Store: [0x80002448]:0x0000000000000001




Last Coverpoint : ['rs1 : f24', 'rd : f22', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fcvt.s.d fs6, fs8, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd fs6, 320(a5)
Current Store : [0x800005a4] : sd a7, 328(a5) -- Store: [0x80002458]:0x0000000000000001




Last Coverpoint : ['rs1 : f8', 'rd : f30', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800005b0]:fcvt.s.d ft10, fs0, dyn
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:fsd ft10, 336(a5)
Current Store : [0x800005bc] : sd a7, 344(a5) -- Store: [0x80002468]:0x0000000000000001




Last Coverpoint : ['rs1 : f25', 'rd : f10', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fcvt.s.d fa0, fs9, dyn
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:fsd fa0, 352(a5)
Current Store : [0x800005d4] : sd a7, 360(a5) -- Store: [0x80002478]:0x0000000000000001




Last Coverpoint : ['rs1 : f23', 'rd : f26', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fcvt.s.d fs10, fs7, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd fs10, 368(a5)
Current Store : [0x800005ec] : sd a7, 376(a5) -- Store: [0x80002488]:0x0000000000000001




Last Coverpoint : ['rs1 : f22', 'rd : f1', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005f8]:fcvt.s.d ft1, fs6, dyn
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:fsd ft1, 384(a5)
Current Store : [0x80000604] : sd a7, 392(a5) -- Store: [0x80002498]:0x0000000000000001




Last Coverpoint : ['rs1 : f29', 'rd : f4', 'fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fcvt.s.d ft4, ft9, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsd ft4, 400(a5)
Current Store : [0x8000061c] : sd a7, 408(a5) -- Store: [0x800024a8]:0x0000000000000001




Last Coverpoint : ['rs1 : f9', 'rd : f2', 'fs1 == 0 and fe1 == 0x43d and fm1 == 0xfffffffffffff and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000628]:fcvt.s.d ft2, fs1, dyn
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:fsd ft2, 416(a5)
Current Store : [0x80000634] : sd a7, 424(a5) -- Store: [0x800024b8]:0x0000000000000001




Last Coverpoint : ['rs1 : f11', 'rd : f16', 'fs1 == 0 and fe1 == 0x43d and fm1 == 0xfffffffffffff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000640]:fcvt.s.d fa6, fa1, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fa6, 432(a5)
Current Store : [0x8000064c] : sd a7, 440(a5) -- Store: [0x800024c8]:0x0000000000000001




Last Coverpoint : ['rs1 : f1', 'rd : f3', 'fs1 == 0 and fe1 == 0x43d and fm1 == 0xfffffffffffff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000658]:fcvt.s.d ft3, ft1, dyn
	-[0x8000065c]:csrrs a7, fflags, zero
	-[0x80000660]:fsd ft3, 448(a5)
Current Store : [0x80000664] : sd a7, 456(a5) -- Store: [0x800024d8]:0x0000000000000001




Last Coverpoint : ['rs1 : f12', 'rd : f24', 'fs1 == 0 and fe1 == 0x43d and fm1 == 0xfffffffffffff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000670]:fcvt.s.d fs8, fa2, dyn
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:fsd fs8, 464(a5)
Current Store : [0x8000067c] : sd a7, 472(a5) -- Store: [0x800024e8]:0x0000000000000001




Last Coverpoint : ['rs1 : f7', 'rd : f31', 'fs1 == 0 and fe1 == 0x43d and fm1 == 0xfffffffffffff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000688]:fcvt.s.d ft11, ft7, dyn
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:fsd ft11, 480(a5)
Current Store : [0x80000694] : sd a7, 488(a5) -- Store: [0x800024f8]:0x0000000000000001




Last Coverpoint : ['rs1 : f28', 'fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffe and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fcvt.s.d ft11, ft8, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd ft11, 496(a5)
Current Store : [0x800006ac] : sd a7, 504(a5) -- Store: [0x80002508]:0x0000000000000001




Last Coverpoint : ['rd : f28', 'fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffe and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fcvt.s.d ft8, fa7, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsd ft8, 512(a5)
Current Store : [0x800006c4] : sd a7, 520(a5) -- Store: [0x80002518]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffe and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006d0]:fcvt.s.d fa1, fa0, dyn
	-[0x800006d4]:csrrs a7, fflags, zero
	-[0x800006d8]:fsd fa1, 528(a5)
Current Store : [0x800006dc] : sd a7, 536(a5) -- Store: [0x80002528]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fcvt.s.d fa1, fa0, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd fa1, 544(a5)
Current Store : [0x800006f4] : sd a7, 552(a5) -- Store: [0x80002538]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000700]:fcvt.s.d fa1, fa0, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:fsd fa1, 560(a5)
Current Store : [0x8000070c] : sd a7, 568(a5) -- Store: [0x80002548]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffd and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000718]:fcvt.s.d fa1, fa0, dyn
	-[0x8000071c]:csrrs a7, fflags, zero
	-[0x80000720]:fsd fa1, 576(a5)
Current Store : [0x80000724] : sd a7, 584(a5) -- Store: [0x80002558]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000730]:fcvt.s.d fa1, fa0, dyn
	-[0x80000734]:csrrs a7, fflags, zero
	-[0x80000738]:fsd fa1, 592(a5)
Current Store : [0x8000073c] : sd a7, 600(a5) -- Store: [0x80002568]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffd and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000748]:fcvt.s.d fa1, fa0, dyn
	-[0x8000074c]:csrrs a7, fflags, zero
	-[0x80000750]:fsd fa1, 608(a5)
Current Store : [0x80000754] : sd a7, 616(a5) -- Store: [0x80002578]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffd and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000760]:fcvt.s.d fa1, fa0, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsd fa1, 624(a5)
Current Store : [0x8000076c] : sd a7, 632(a5) -- Store: [0x80002588]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000778]:fcvt.s.d fa1, fa0, dyn
	-[0x8000077c]:csrrs a7, fflags, zero
	-[0x80000780]:fsd fa1, 640(a5)
Current Store : [0x80000784] : sd a7, 648(a5) -- Store: [0x80002598]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000790]:fcvt.s.d fa1, fa0, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa1, 656(a5)
Current Store : [0x8000079c] : sd a7, 664(a5) -- Store: [0x800025a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007a8]:fcvt.s.d fa1, fa0, dyn
	-[0x800007ac]:csrrs a7, fflags, zero
	-[0x800007b0]:fsd fa1, 672(a5)
Current Store : [0x800007b4] : sd a7, 680(a5) -- Store: [0x800025b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fcvt.s.d fa1, fa0, dyn
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:fsd fa1, 688(a5)
Current Store : [0x800007cc] : sd a7, 696(a5) -- Store: [0x800025c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800007d8]:fcvt.s.d fa1, fa0, dyn
	-[0x800007dc]:csrrs a7, fflags, zero
	-[0x800007e0]:fsd fa1, 704(a5)
Current Store : [0x800007e4] : sd a7, 712(a5) -- Store: [0x800025d8]:0x0000000000000001





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

|s.no|            signature             |                                                                       coverpoints                                                                        |                                                        code                                                        |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002310]<br>0xB7D5BFDDB7D5BFDD|- opcode : fcvt.s.d<br> - rs1 : f26<br> - rd : f20<br> - rs1 != rd<br> - fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffc and rm_val == 0  #nosat<br> |[0x800003b8]:fcvt.s.d fs4, fs10, dyn<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:fsd fs4, 0(a5)<br>    |
|   2|[0x80002320]<br>0xEADFEEDBEADFEEDB|- rs1 : f13<br> - rd : f13<br> - rs1 == rd<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000004 and rm_val == 4  #nosat<br>                         |[0x800003d0]:fcvt.s.d fa3, fa3, dyn<br> [0x800003d4]:csrrs a7, fflags, zero<br> [0x800003d8]:fsd fa3, 16(a5)<br>    |
|   3|[0x80002330]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f10<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000004 and rm_val == 3  #nosat<br>                                         |[0x800003e8]:fcvt.s.d fs7, fa0, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:fsd fs7, 32(a5)<br>    |
|   4|[0x80002340]<br>0xDF56FF76DF56FF76|- rs1 : f31<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000004 and rm_val == 2  #nosat<br>                                         |[0x80000400]:fcvt.s.d fs2, ft11, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fs2, 48(a5)<br>   |
|   5|[0x80002350]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f2<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000004 and rm_val == 1  #nosat<br>                                          |[0x80000418]:fcvt.s.d fs3, ft2, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsd fs3, 64(a5)<br>    |
|   6|[0x80002360]<br>0xADFEEDBEADFEEDBE|- rs1 : f20<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000004 and rm_val == 0  #nosat<br>                                          |[0x80000430]:fcvt.s.d fs1, fs4, dyn<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:fsd fs1, 80(a5)<br>    |
|   7|[0x80002370]<br>0x0000000000000001|- rs1 : f16<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000003 and rm_val == 4  #nosat<br>                                         |[0x80000448]:fcvt.s.d fa7, fa6, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd fa7, 96(a5)<br>    |
|   8|[0x80002380]<br>0xEEDBEADFEEDBEADF|- rs1 : f30<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000003 and rm_val == 3  #nosat<br>                                         |[0x80000460]:fcvt.s.d ft9, ft10, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd ft9, 112(a5)<br>  |
|   9|[0x80002390]<br>0x0000000080000390|- rs1 : f3<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000003 and rm_val == 2  #nosat<br>                                           |[0x80000478]:fcvt.s.d ft5, ft3, dyn<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:fsd ft5, 128(a5)<br>   |
|  10|[0x800023a0]<br>0x0000000000000000|- rs1 : f19<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000003 and rm_val == 1  #nosat<br>                                          |[0x80000490]:fcvt.s.d ft0, fs3, dyn<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:fsd ft0, 144(a5)<br>   |
|  11|[0x800023b0]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f27<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000003 and rm_val == 0  #nosat<br>                                          |[0x800004a8]:fcvt.s.d fs0, fs11, dyn<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:fsd fs0, 160(a5)<br>  |
|  12|[0x800023c0]<br>0xDBEADFEEDBEADFEE|- rs1 : f4<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000002 and rm_val == 4  #nosat<br>                                          |[0x800004c0]:fcvt.s.d fs5, ft4, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd fs5, 176(a5)<br>   |
|  13|[0x800023d0]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f17<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000002 and rm_val == 3  #nosat<br>                                         |[0x800004d8]:fcvt.s.d fa1, fa7, dyn<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:fsd fa1, 192(a5)<br>   |
|  14|[0x800023e0]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f15<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000002 and rm_val == 2  #nosat<br>                                         |[0x800004f0]:fcvt.s.d fa2, fa5, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd fa2, 208(a5)<br>   |
|  15|[0x800023f0]<br>0x0000000080002310|- rs1 : f14<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000002 and rm_val == 1  #nosat<br>                                         |[0x80000508]:fcvt.s.d fa5, fa4, dyn<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:fsd fa5, 224(a5)<br>   |
|  16|[0x80002400]<br>0x0000000080002000|- rs1 : f21<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000002 and rm_val == 0  #nosat<br>                                          |[0x80000520]:fcvt.s.d ft6, fs5, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd ft6, 240(a5)<br>   |
|  17|[0x80002410]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f0<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000001 and rm_val == 4  #nosat<br>                                          |[0x80000538]:fcvt.s.d fs11, ft0, dyn<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:fsd fs11, 256(a5)<br> |
|  18|[0x80002420]<br>0xEDBEADFEEDBEADFE|- rs1 : f6<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000001 and rm_val == 3  #nosat<br>                                          |[0x80000550]:fcvt.s.d fs9, ft6, dyn<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:fsd fs9, 272(a5)<br>   |
|  19|[0x80002430]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f18<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000001 and rm_val == 2  #nosat<br>                                          |[0x80000568]:fcvt.s.d ft7, fs2, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsd ft7, 288(a5)<br>   |
|  20|[0x80002440]<br>0xF56FF76DF56FF76D|- rs1 : f5<br> - rd : f14<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000001 and rm_val == 1  #nosat<br>                                          |[0x80000580]:fcvt.s.d fa4, ft5, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd fa4, 304(a5)<br>   |
|  21|[0x80002450]<br>0x6DF56FF76DF56FF7|- rs1 : f24<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                                         |[0x80000598]:fcvt.s.d fs6, fs8, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd fs6, 320(a5)<br>   |
|  22|[0x80002460]<br>0xF76DF56FF76DF56F|- rs1 : f8<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 4  #nosat<br>                                          |[0x800005b0]:fcvt.s.d ft10, fs0, dyn<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:fsd ft10, 336(a5)<br> |
|  23|[0x80002470]<br>0x56FF76DF56FF76DF|- rs1 : f25<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 3  #nosat<br>                                         |[0x800005c8]:fcvt.s.d fa0, fs9, dyn<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:fsd fa0, 352(a5)<br>   |
|  24|[0x80002480]<br>0x76DF56FF76DF56FF|- rs1 : f23<br> - rd : f26<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 2  #nosat<br>                                         |[0x800005e0]:fcvt.s.d fs10, fs7, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd fs10, 368(a5)<br> |
|  25|[0x80002490]<br>0xFEEDBEADFEEDBEAD|- rs1 : f22<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 1  #nosat<br>                                          |[0x800005f8]:fcvt.s.d ft1, fs6, dyn<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:fsd ft1, 384(a5)<br>   |
|  26|[0x800024a0]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f29<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x43e and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                                          |[0x80000610]:fcvt.s.d ft4, ft9, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsd ft4, 400(a5)<br>   |
|  27|[0x800024b0]<br>0x0000000A00006000|- rs1 : f9<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x43d and fm1 == 0xfffffffffffff and rm_val == 4  #nosat<br>                                           |[0x80000628]:fcvt.s.d ft2, fs1, dyn<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:fsd ft2, 416(a5)<br>   |
|  28|[0x800024c0]<br>0x0000000080002010|- rs1 : f11<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x43d and fm1 == 0xfffffffffffff and rm_val == 3  #nosat<br>                                         |[0x80000640]:fcvt.s.d fa6, fa1, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fa6, 432(a5)<br>   |
|  29|[0x800024d0]<br>0x0000000A00000000|- rs1 : f1<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x43d and fm1 == 0xfffffffffffff and rm_val == 2  #nosat<br>                                           |[0x80000658]:fcvt.s.d ft3, ft1, dyn<br> [0x8000065c]:csrrs a7, fflags, zero<br> [0x80000660]:fsd ft3, 448(a5)<br>   |
|  30|[0x800024e0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f12<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x43d and fm1 == 0xfffffffffffff and rm_val == 1  #nosat<br>                                         |[0x80000670]:fcvt.s.d fs8, fa2, dyn<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:fsd fs8, 464(a5)<br>   |
|  31|[0x800024f0]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f7<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x43d and fm1 == 0xfffffffffffff and rm_val == 0  #nosat<br>                                          |[0x80000688]:fcvt.s.d ft11, ft7, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsd ft11, 480(a5)<br> |
|  32|[0x80002500]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f28<br> - fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffe and rm_val == 4  #nosat<br>                                                        |[0x800006a0]:fcvt.s.d ft11, ft8, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd ft11, 496(a5)<br> |
|  33|[0x80002510]<br>0xDDB7D5BFDDB7D5BF|- rd : f28<br> - fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffe and rm_val == 3  #nosat<br>                                                         |[0x800006b8]:fcvt.s.d ft8, fa7, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsd ft8, 512(a5)<br>   |
|  34|[0x80002520]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffe and rm_val == 2  #nosat<br>                                                                        |[0x800006d0]:fcvt.s.d fa1, fa0, dyn<br> [0x800006d4]:csrrs a7, fflags, zero<br> [0x800006d8]:fsd fa1, 528(a5)<br>   |
|  35|[0x80002530]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffe and rm_val == 1  #nosat<br>                                                                        |[0x800006e8]:fcvt.s.d fa1, fa0, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd fa1, 544(a5)<br>   |
|  36|[0x80002540]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffe and rm_val == 0  #nosat<br>                                                                        |[0x80000700]:fcvt.s.d fa1, fa0, dyn<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:fsd fa1, 560(a5)<br>   |
|  37|[0x80002550]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffd and rm_val == 4  #nosat<br>                                                                        |[0x80000718]:fcvt.s.d fa1, fa0, dyn<br> [0x8000071c]:csrrs a7, fflags, zero<br> [0x80000720]:fsd fa1, 576(a5)<br>   |
|  38|[0x80002560]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffd and rm_val == 3  #nosat<br>                                                                        |[0x80000730]:fcvt.s.d fa1, fa0, dyn<br> [0x80000734]:csrrs a7, fflags, zero<br> [0x80000738]:fsd fa1, 592(a5)<br>   |
|  39|[0x80002570]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffd and rm_val == 2  #nosat<br>                                                                        |[0x80000748]:fcvt.s.d fa1, fa0, dyn<br> [0x8000074c]:csrrs a7, fflags, zero<br> [0x80000750]:fsd fa1, 608(a5)<br>   |
|  40|[0x80002580]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffd and rm_val == 1  #nosat<br>                                                                        |[0x80000760]:fcvt.s.d fa1, fa0, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsd fa1, 624(a5)<br>   |
|  41|[0x80002590]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffd and rm_val == 0  #nosat<br>                                                                        |[0x80000778]:fcvt.s.d fa1, fa0, dyn<br> [0x8000077c]:csrrs a7, fflags, zero<br> [0x80000780]:fsd fa1, 640(a5)<br>   |
|  42|[0x800025a0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffc and rm_val == 4  #nosat<br>                                                                        |[0x80000790]:fcvt.s.d fa1, fa0, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa1, 656(a5)<br>   |
|  43|[0x800025b0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffc and rm_val == 3  #nosat<br>                                                                        |[0x800007a8]:fcvt.s.d fa1, fa0, dyn<br> [0x800007ac]:csrrs a7, fflags, zero<br> [0x800007b0]:fsd fa1, 672(a5)<br>   |
|  44|[0x800025c0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffc and rm_val == 2  #nosat<br>                                                                        |[0x800007c0]:fcvt.s.d fa1, fa0, dyn<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:fsd fa1, 688(a5)<br>   |
|  45|[0x800025d0]<br>0xAB7FBB6FAB7FBB6F|- fs1 == 0 and fe1 == 0x43d and fm1 == 0xffffffffffffc and rm_val == 1  #nosat<br>                                                                        |[0x800007d8]:fcvt.s.d fa1, fa0, dyn<br> [0x800007dc]:csrrs a7, fflags, zero<br> [0x800007e0]:fsd fa1, 704(a5)<br>   |
