
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000960')]      |
| SIG_REGION                | [('0x80002510', '0x80002850', '104 dwords')]      |
| COV_LABELS                | fsub_b12      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fsub_b12-01.S/ref.S    |
| Total Number of coverpoints| 158     |
| Total Coverpoints Hit     | 152      |
| Total Signature Updates   | 104      |
| STAT1                     | 52      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 52     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fsub.d', 'rs1 : f22', 'rs2 : f6', 'rd : f6', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0x132d8f91b7583 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6d1771ceea796 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003bc]:fsub.d ft6, fs6, ft6, dyn
	-[0x800003c0]:csrrs a7, fflags, zero
	-[0x800003c4]:fsd ft6, 0(a5)
Current Store : [0x800003c8] : sd a7, 8(a5) -- Store: [0x80002518]:0x0000000000000001




Last Coverpoint : ['rs1 : f13', 'rs2 : f13', 'rd : f13', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x800003d8]:fsub.d fa3, fa3, fa3, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsd fa3, 16(a5)
Current Store : [0x800003e4] : sd a7, 24(a5) -- Store: [0x80002528]:0x0000000000000001




Last Coverpoint : ['rs1 : f11', 'rs2 : f9', 'rd : f26', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9e4795c8459f5 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x296ec52d097ea and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003f4]:fsub.d fs10, fa1, fs1, dyn
	-[0x800003f8]:csrrs a7, fflags, zero
	-[0x800003fc]:fsd fs10, 32(a5)
Current Store : [0x80000400] : sd a7, 40(a5) -- Store: [0x80002538]:0x0000000000000001




Last Coverpoint : ['rs1 : f17', 'rs2 : f18', 'rd : f17', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc5b9547c0fb71 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x2a58446d0baa8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000410]:fsub.d fa7, fa7, fs2, dyn
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:fsd fa7, 48(a5)
Current Store : [0x8000041c] : sd a7, 56(a5) -- Store: [0x80002548]:0x0000000000000001




Last Coverpoint : ['rs1 : f25', 'rs2 : f25', 'rd : f28', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x8000042c]:fsub.d ft8, fs9, fs9, dyn
	-[0x80000430]:csrrs a7, fflags, zero
	-[0x80000434]:fsd ft8, 64(a5)
Current Store : [0x80000438] : sd a7, 72(a5) -- Store: [0x80002558]:0x0000000000000001




Last Coverpoint : ['rs1 : f15', 'rs2 : f24', 'rd : f5', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xea0b252eae7e0 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xe71ed696201f1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fsub.d ft5, fa5, fs8, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd ft5, 80(a5)
Current Store : [0x80000454] : sd a7, 88(a5) -- Store: [0x80002568]:0x0000000000000001




Last Coverpoint : ['rs1 : f31', 'rs2 : f29', 'rd : f8', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x13bdffd461269 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x1d67f1f990c0b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000464]:fsub.d fs0, ft11, ft9, dyn
	-[0x80000468]:csrrs a7, fflags, zero
	-[0x8000046c]:fsd fs0, 96(a5)
Current Store : [0x80000470] : sd a7, 104(a5) -- Store: [0x80002578]:0x0000000000000001




Last Coverpoint : ['rs1 : f29', 'rs2 : f8', 'rd : f22', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x27d4b8969c0b2 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xe60b40e314f0c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000480]:fsub.d fs6, ft9, fs0, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd fs6, 112(a5)
Current Store : [0x8000048c] : sd a7, 120(a5) -- Store: [0x80002588]:0x0000000000000001




Last Coverpoint : ['rs1 : f19', 'rs2 : f26', 'rd : f20', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x070d1456013e3 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xc13973c0771d8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000049c]:fsub.d fs4, fs3, fs10, dyn
	-[0x800004a0]:csrrs a7, fflags, zero
	-[0x800004a4]:fsd fs4, 128(a5)
Current Store : [0x800004a8] : sd a7, 136(a5) -- Store: [0x80002598]:0x0000000000000001




Last Coverpoint : ['rs1 : f14', 'rs2 : f0', 'rd : f9', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb877e6e317fa2 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x41981cc935638 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b8]:fsub.d fs1, fa4, ft0, dyn
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:fsd fs1, 144(a5)
Current Store : [0x800004c4] : sd a7, 152(a5) -- Store: [0x800025a8]:0x0000000000000001




Last Coverpoint : ['rs1 : f2', 'rs2 : f28', 'rd : f3', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8a82024cc4e03 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xd8e5154788b84 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d4]:fsub.d ft3, ft2, ft8, dyn
	-[0x800004d8]:csrrs a7, fflags, zero
	-[0x800004dc]:fsd ft3, 160(a5)
Current Store : [0x800004e0] : sd a7, 168(a5) -- Store: [0x800025b8]:0x0000000000000001




Last Coverpoint : ['rs1 : f28', 'rs2 : f20', 'rd : f10', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0125698e86242 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xeb5aac6486d0c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fsub.d fa0, ft8, fs4, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd fa0, 176(a5)
Current Store : [0x800004fc] : sd a7, 184(a5) -- Store: [0x800025c8]:0x0000000000000001




Last Coverpoint : ['rs1 : f18', 'rs2 : f23', 'rd : f12', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x930bcbd2d6035 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xc9378d7a8307f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000050c]:fsub.d fa2, fs2, fs7, dyn
	-[0x80000510]:csrrs a7, fflags, zero
	-[0x80000514]:fsd fa2, 192(a5)
Current Store : [0x80000518] : sd a7, 200(a5) -- Store: [0x800025d8]:0x0000000000000001




Last Coverpoint : ['rs1 : f3', 'rs2 : f15', 'rd : f27', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf7646167590ef and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x8f5d3484b0730 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000528]:fsub.d fs11, ft3, fa5, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsd fs11, 208(a5)
Current Store : [0x80000534] : sd a7, 216(a5) -- Store: [0x800025e8]:0x0000000000000001




Last Coverpoint : ['rs1 : f23', 'rs2 : f27', 'rd : f14', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0x643f753bef22f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x51ddbb228ba06 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000544]:fsub.d fa4, fs7, fs11, dyn
	-[0x80000548]:csrrs a7, fflags, zero
	-[0x8000054c]:fsd fa4, 224(a5)
Current Store : [0x80000550] : sd a7, 232(a5) -- Store: [0x800025f8]:0x0000000000000001




Last Coverpoint : ['rs1 : f1', 'rs2 : f3', 'rd : f30', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf57237ddcb451 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xd72951a1b8967 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fsub.d ft10, ft1, ft3, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd ft10, 240(a5)
Current Store : [0x8000056c] : sd a7, 248(a5) -- Store: [0x80002608]:0x0000000000000001




Last Coverpoint : ['rs1 : f7', 'rs2 : f31', 'rd : f29', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0ab870b5c1c40 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x057ed5782c7d6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000057c]:fsub.d ft9, ft7, ft11, dyn
	-[0x80000580]:csrrs a7, fflags, zero
	-[0x80000584]:fsd ft9, 256(a5)
Current Store : [0x80000588] : sd a7, 264(a5) -- Store: [0x80002618]:0x0000000000000001




Last Coverpoint : ['rs1 : f16', 'rs2 : f11', 'rd : f18', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x04507a06e8587 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x147f1b87235fc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fsub.d fs2, fa6, fa1, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd fs2, 272(a5)
Current Store : [0x800005a4] : sd a7, 280(a5) -- Store: [0x80002628]:0x0000000000000001




Last Coverpoint : ['rs1 : f0', 'rs2 : f12', 'rd : f4', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7fb2260b115e9 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x0734092792958 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b4]:fsub.d ft4, ft0, fa2, dyn
	-[0x800005b8]:csrrs a7, fflags, zero
	-[0x800005bc]:fsd ft4, 288(a5)
Current Store : [0x800005c0] : sd a7, 296(a5) -- Store: [0x80002638]:0x0000000000000001




Last Coverpoint : ['rs1 : f10', 'rs2 : f5', 'rd : f7', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x67f4f571a752e and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0xd3d8104d0cdc0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d0]:fsub.d ft7, fa0, ft5, dyn
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:fsd ft7, 304(a5)
Current Store : [0x800005dc] : sd a7, 312(a5) -- Store: [0x80002648]:0x0000000000000001




Last Coverpoint : ['rs1 : f6', 'rs2 : f7', 'rd : f1', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0x6251b45dfbd3b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x80cf7341ff72e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005ec]:fsub.d ft1, ft6, ft7, dyn
	-[0x800005f0]:csrrs a7, fflags, zero
	-[0x800005f4]:fsd ft1, 320(a5)
Current Store : [0x800005f8] : sd a7, 328(a5) -- Store: [0x80002658]:0x0000000000000001




Last Coverpoint : ['rs1 : f26', 'rs2 : f21', 'rd : f0', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x98455e99dfdb1 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x8848cf5ea9657 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000608]:fsub.d ft0, fs10, fs5, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:fsd ft0, 336(a5)
Current Store : [0x80000614] : sd a7, 344(a5) -- Store: [0x80002668]:0x0000000000000001




Last Coverpoint : ['rs1 : f8', 'rs2 : f4', 'rd : f15', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0x1ad5e9ebc09df and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xaa6c2d4374fa3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000624]:fsub.d fa5, fs0, ft4, dyn
	-[0x80000628]:csrrs a7, fflags, zero
	-[0x8000062c]:fsd fa5, 352(a5)
Current Store : [0x80000630] : sd a7, 360(a5) -- Store: [0x80002678]:0x0000000000000001




Last Coverpoint : ['rs1 : f30', 'rs2 : f17', 'rd : f19', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x02b48f992cb49 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x56e924eb7c838 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fsub.d fs3, ft10, fa7, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fs3, 368(a5)
Current Store : [0x8000064c] : sd a7, 376(a5) -- Store: [0x80002688]:0x0000000000000001




Last Coverpoint : ['rs1 : f12', 'rs2 : f16', 'rd : f11', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc3d4499ff58c3 and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x2937fe3bd9f20 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000065c]:fsub.d fa1, fa2, fa6, dyn
	-[0x80000660]:csrrs a7, fflags, zero
	-[0x80000664]:fsd fa1, 384(a5)
Current Store : [0x80000668] : sd a7, 392(a5) -- Store: [0x80002698]:0x0000000000000001




Last Coverpoint : ['rs1 : f4', 'rs2 : f14', 'rd : f23', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x36a63c245f557 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x23087ed83ab89 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000678]:fsub.d fs7, ft4, fa4, dyn
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:fsd fs7, 400(a5)
Current Store : [0x80000684] : sd a7, 408(a5) -- Store: [0x800026a8]:0x0000000000000001




Last Coverpoint : ['rs1 : f21', 'rs2 : f30', 'rd : f24', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa8fa703a4078c and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x472096b867e58 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000694]:fsub.d fs8, fs5, ft10, dyn
	-[0x80000698]:csrrs a7, fflags, zero
	-[0x8000069c]:fsd fs8, 416(a5)
Current Store : [0x800006a0] : sd a7, 424(a5) -- Store: [0x800026b8]:0x0000000000000001




Last Coverpoint : ['rs1 : f9', 'rs2 : f22', 'rd : f21', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdf7523fde6c5d and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x0756bb5d68556 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b0]:fsub.d fs5, fs1, fs6, dyn
	-[0x800006b4]:csrrs a7, fflags, zero
	-[0x800006b8]:fsd fs5, 432(a5)
Current Store : [0x800006bc] : sd a7, 440(a5) -- Store: [0x800026c8]:0x0000000000000001




Last Coverpoint : ['rs1 : f27', 'rs2 : f19', 'rd : f31', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7166677e49c3c and fs2 == 0 and fe2 == 0x7f8 and fm2 == 0x5144e78f2a6c0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006cc]:fsub.d ft11, fs11, fs3, dyn
	-[0x800006d0]:csrrs a7, fflags, zero
	-[0x800006d4]:fsd ft11, 448(a5)
Current Store : [0x800006d8] : sd a7, 456(a5) -- Store: [0x800026d8]:0x0000000000000001




Last Coverpoint : ['rs1 : f24', 'rs2 : f1', 'rd : f25', 'fs1 == 0 and fe1 == 0x7fb and fm1 == 0xef2a4f7c7db7f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xb1c6f0270591a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fsub.d fs9, fs8, ft1, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd fs9, 464(a5)
Current Store : [0x800006f4] : sd a7, 472(a5) -- Store: [0x800026e8]:0x0000000000000001




Last Coverpoint : ['rs1 : f20', 'rs2 : f2', 'rd : f16', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfc2ea66e5019e and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x0f8ef46d602a4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000704]:fsub.d fa6, fs4, ft2, dyn
	-[0x80000708]:csrrs a7, fflags, zero
	-[0x8000070c]:fsd fa6, 480(a5)
Current Store : [0x80000710] : sd a7, 488(a5) -- Store: [0x800026f8]:0x0000000000000001




Last Coverpoint : ['rs1 : f5', 'rs2 : f10', 'rd : f2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x48dace8666677 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xd35766bc3e2c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000720]:fsub.d ft2, ft5, fa0, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd ft2, 496(a5)
Current Store : [0x8000072c] : sd a7, 504(a5) -- Store: [0x80002708]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xacd7053aa42a2 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x1fdee0ff3e0e2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000073c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000740]:csrrs a7, fflags, zero
	-[0x80000744]:fsd fa2, 512(a5)
Current Store : [0x80000748] : sd a7, 520(a5) -- Store: [0x80002718]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x28bc82f697c4d and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x12bb1d4152629 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000758]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000075c]:csrrs a7, fflags, zero
	-[0x80000760]:fsd fa2, 528(a5)
Current Store : [0x80000764] : sd a7, 536(a5) -- Store: [0x80002728]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc01045c2cd787 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xed344f30f8d23 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000774]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000778]:csrrs a7, fflags, zero
	-[0x8000077c]:fsd fa2, 544(a5)
Current Store : [0x80000780] : sd a7, 552(a5) -- Store: [0x80002738]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xdd5b61587fd27 and fs2 == 0 and fe2 == 0x7f6 and fm2 == 0x22b4aace78200 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000790]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa2, 560(a5)
Current Store : [0x8000079c] : sd a7, 568(a5) -- Store: [0x80002748]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc0659af8369fd and fs2 == 1 and fe2 == 0x7fa and fm2 == 0xda84ca746bd30 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007ac]:fsub.d fa2, fa0, fa1, dyn
	-[0x800007b0]:csrrs a7, fflags, zero
	-[0x800007b4]:fsd fa2, 576(a5)
Current Store : [0x800007b8] : sd a7, 584(a5) -- Store: [0x80002758]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xdbcde43895c3f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x8a8c8b3c6f2ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsd fa2, 592(a5)
Current Store : [0x800007d4] : sd a7, 600(a5) -- Store: [0x80002768]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xbb9876f8130c3 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa4e630c1be6d7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007e4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800007e8]:csrrs a7, fflags, zero
	-[0x800007ec]:fsd fa2, 608(a5)
Current Store : [0x800007f0] : sd a7, 616(a5) -- Store: [0x80002778]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe0d828b86622a and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x1daaf50c76c8b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000800]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa2, 624(a5)
Current Store : [0x8000080c] : sd a7, 632(a5) -- Store: [0x80002788]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xa0e7ad32453df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x082cc69704a64 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000081c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000820]:csrrs a7, fflags, zero
	-[0x80000824]:fsd fa2, 640(a5)
Current Store : [0x80000828] : sd a7, 648(a5) -- Store: [0x80002798]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcd87e65450c45 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xbdde68d2e30aa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000838]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:fsd fa2, 656(a5)
Current Store : [0x80000844] : sd a7, 664(a5) -- Store: [0x800027a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xd481499755d4b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6eda32e0b56e8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000854]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000858]:csrrs a7, fflags, zero
	-[0x8000085c]:fsd fa2, 672(a5)
Current Store : [0x80000860] : sd a7, 680(a5) -- Store: [0x800027b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc81394a2171e9 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x1ac7cf448b205 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000870]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:fsd fa2, 688(a5)
Current Store : [0x8000087c] : sd a7, 696(a5) -- Store: [0x800027c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x86499331191c4 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x853587c49095b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000088c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000890]:csrrs a7, fflags, zero
	-[0x80000894]:fsd fa2, 704(a5)
Current Store : [0x80000898] : sd a7, 712(a5) -- Store: [0x800027d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xabe96758f2a09 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x9cab846424ba1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:fsd fa2, 720(a5)
Current Store : [0x800008b4] : sd a7, 728(a5) -- Store: [0x800027e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x8072e8f9c858f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x0c566d30677f7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800008c8]:csrrs a7, fflags, zero
	-[0x800008cc]:fsd fa2, 736(a5)
Current Store : [0x800008d0] : sd a7, 744(a5) -- Store: [0x800027f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4d9d98184b9d9 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x18d7cfd491228 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa2, 752(a5)
Current Store : [0x800008ec] : sd a7, 760(a5) -- Store: [0x80002808]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfb5355e167379 and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x785f9927a57c0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008fc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000900]:csrrs a7, fflags, zero
	-[0x80000904]:fsd fa2, 768(a5)
Current Store : [0x80000908] : sd a7, 776(a5) -- Store: [0x80002818]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x870d778409f12 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x04750f3c7df65 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000918]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:fsd fa2, 784(a5)
Current Store : [0x80000924] : sd a7, 792(a5) -- Store: [0x80002828]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1f6a4c4d26ab9 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x1506f64179e12 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000934]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000938]:csrrs a7, fflags, zero
	-[0x8000093c]:fsd fa2, 800(a5)
Current Store : [0x80000940] : sd a7, 808(a5) -- Store: [0x80002838]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x913b4236d8411 and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x2db788640aba0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000950]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000954]:csrrs a7, fflags, zero
	-[0x80000958]:fsd fa2, 816(a5)
Current Store : [0x8000095c] : sd a7, 824(a5) -- Store: [0x80002848]:0x0000000000000001





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

|s.no|            signature             |                                                                                                              coverpoints                                                                                                               |                                                          code                                                          |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002510]<br>0x0000000080002000|- opcode : fsub.d<br> - rs1 : f22<br> - rs2 : f6<br> - rd : f6<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0x132d8f91b7583 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6d1771ceea796 and rm_val == 0  #nosat<br>   |[0x800003bc]:fsub.d ft6, fs6, ft6, dyn<br> [0x800003c0]:csrrs a7, fflags, zero<br> [0x800003c4]:fsd ft6, 0(a5)<br>      |
|   2|[0x80002520]<br>0xEADFEEDBEADFEEDB|- rs1 : f13<br> - rs2 : f13<br> - rd : f13<br> - rs1 == rs2 == rd<br>                                                                                                                                                                   |[0x800003d8]:fsub.d fa3, fa3, fa3, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsd fa3, 16(a5)<br>     |
|   3|[0x80002530]<br>0x76DF56FF76DF56FF|- rs1 : f11<br> - rs2 : f9<br> - rd : f26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9e4795c8459f5 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x296ec52d097ea and rm_val == 0  #nosat<br> |[0x800003f4]:fsub.d fs10, fa1, fs1, dyn<br> [0x800003f8]:csrrs a7, fflags, zero<br> [0x800003fc]:fsd fs10, 32(a5)<br>   |
|   4|[0x80002540]<br>0x0000000000000001|- rs1 : f17<br> - rs2 : f18<br> - rd : f17<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc5b9547c0fb71 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x2a58446d0baa8 and rm_val == 0  #nosat<br>                       |[0x80000410]:fsub.d fa7, fa7, fs2, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:fsd fa7, 48(a5)<br>     |
|   5|[0x80002550]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f25<br> - rs2 : f25<br> - rd : f28<br> - rs1 == rs2 != rd<br>                                                                                                                                                                   |[0x8000042c]:fsub.d ft8, fs9, fs9, dyn<br> [0x80000430]:csrrs a7, fflags, zero<br> [0x80000434]:fsd ft8, 64(a5)<br>     |
|   6|[0x80002560]<br>0x0000000080000390|- rs1 : f15<br> - rs2 : f24<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xea0b252eae7e0 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xe71ed696201f1 and rm_val == 0  #nosat<br>                                               |[0x80000448]:fsub.d ft5, fa5, fs8, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd ft5, 80(a5)<br>     |
|   7|[0x80002570]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f31<br> - rs2 : f29<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x13bdffd461269 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x1d67f1f990c0b and rm_val == 0  #nosat<br>                                               |[0x80000464]:fsub.d fs0, ft11, ft9, dyn<br> [0x80000468]:csrrs a7, fflags, zero<br> [0x8000046c]:fsd fs0, 96(a5)<br>    |
|   8|[0x80002580]<br>0x6DF56FF76DF56FF7|- rs1 : f29<br> - rs2 : f8<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x27d4b8969c0b2 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xe60b40e314f0c and rm_val == 0  #nosat<br>                                               |[0x80000480]:fsub.d fs6, ft9, fs0, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd fs6, 112(a5)<br>    |
|   9|[0x80002590]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f19<br> - rs2 : f26<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x070d1456013e3 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xc13973c0771d8 and rm_val == 0  #nosat<br>                                              |[0x8000049c]:fsub.d fs4, fs3, fs10, dyn<br> [0x800004a0]:csrrs a7, fflags, zero<br> [0x800004a4]:fsd fs4, 128(a5)<br>   |
|  10|[0x800025a0]<br>0xADFEEDBEADFEEDBE|- rs1 : f14<br> - rs2 : f0<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb877e6e317fa2 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x41981cc935638 and rm_val == 0  #nosat<br>                                                |[0x800004b8]:fsub.d fs1, fa4, ft0, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:fsd fs1, 144(a5)<br>    |
|  11|[0x800025b0]<br>0x0000000A00000000|- rs1 : f2<br> - rs2 : f28<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8a82024cc4e03 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xd8e5154788b84 and rm_val == 0  #nosat<br>                                                |[0x800004d4]:fsub.d ft3, ft2, ft8, dyn<br> [0x800004d8]:csrrs a7, fflags, zero<br> [0x800004dc]:fsd ft3, 160(a5)<br>    |
|  12|[0x800025c0]<br>0x56FF76DF56FF76DF|- rs1 : f28<br> - rs2 : f20<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0125698e86242 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xeb5aac6486d0c and rm_val == 0  #nosat<br>                                              |[0x800004f0]:fsub.d fa0, ft8, fs4, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd fa0, 176(a5)<br>    |
|  13|[0x800025d0]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f18<br> - rs2 : f23<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x930bcbd2d6035 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xc9378d7a8307f and rm_val == 0  #nosat<br>                                              |[0x8000050c]:fsub.d fa2, fs2, fs7, dyn<br> [0x80000510]:csrrs a7, fflags, zero<br> [0x80000514]:fsd fa2, 192(a5)<br>    |
|  14|[0x800025e0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f3<br> - rs2 : f15<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf7646167590ef and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x8f5d3484b0730 and rm_val == 0  #nosat<br>                                               |[0x80000528]:fsub.d fs11, ft3, fa5, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsd fs11, 208(a5)<br>  |
|  15|[0x800025f0]<br>0xF56FF76DF56FF76D|- rs1 : f23<br> - rs2 : f27<br> - rd : f14<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0x643f753bef22f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x51ddbb228ba06 and rm_val == 0  #nosat<br>                                              |[0x80000544]:fsub.d fa4, fs7, fs11, dyn<br> [0x80000548]:csrrs a7, fflags, zero<br> [0x8000054c]:fsd fa4, 224(a5)<br>   |
|  16|[0x80002600]<br>0xF76DF56FF76DF56F|- rs1 : f1<br> - rs2 : f3<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf57237ddcb451 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xd72951a1b8967 and rm_val == 0  #nosat<br>                                                |[0x80000560]:fsub.d ft10, ft1, ft3, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd ft10, 240(a5)<br>  |
|  17|[0x80002610]<br>0xEEDBEADFEEDBEADF|- rs1 : f7<br> - rs2 : f31<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0ab870b5c1c40 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x057ed5782c7d6 and rm_val == 0  #nosat<br>                                               |[0x8000057c]:fsub.d ft9, ft7, ft11, dyn<br> [0x80000580]:csrrs a7, fflags, zero<br> [0x80000584]:fsd ft9, 256(a5)<br>   |
|  18|[0x80002620]<br>0xDF56FF76DF56FF76|- rs1 : f16<br> - rs2 : f11<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x04507a06e8587 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x147f1b87235fc and rm_val == 0  #nosat<br>                                              |[0x80000598]:fsub.d fs2, fa6, fa1, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd fs2, 272(a5)<br>    |
|  19|[0x80002630]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f0<br> - rs2 : f12<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7fb2260b115e9 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x0734092792958 and rm_val == 0  #nosat<br>                                                |[0x800005b4]:fsub.d ft4, ft0, fa2, dyn<br> [0x800005b8]:csrrs a7, fflags, zero<br> [0x800005bc]:fsd ft4, 288(a5)<br>    |
|  20|[0x80002640]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f10<br> - rs2 : f5<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x67f4f571a752e and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0xd3d8104d0cdc0 and rm_val == 0  #nosat<br>                                                |[0x800005d0]:fsub.d ft7, fa0, ft5, dyn<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:fsd ft7, 304(a5)<br>    |
|  21|[0x80002650]<br>0xFEEDBEADFEEDBEAD|- rs1 : f6<br> - rs2 : f7<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0x6251b45dfbd3b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x80cf7341ff72e and rm_val == 0  #nosat<br>                                                 |[0x800005ec]:fsub.d ft1, ft6, ft7, dyn<br> [0x800005f0]:csrrs a7, fflags, zero<br> [0x800005f4]:fsd ft1, 320(a5)<br>    |
|  22|[0x80002660]<br>0x0000000000000000|- rs1 : f26<br> - rs2 : f21<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x98455e99dfdb1 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x8848cf5ea9657 and rm_val == 0  #nosat<br>                                               |[0x80000608]:fsub.d ft0, fs10, fs5, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsd ft0, 336(a5)<br>   |
|  23|[0x80002670]<br>0x0000000080002510|- rs1 : f8<br> - rs2 : f4<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0x1ad5e9ebc09df and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xaa6c2d4374fa3 and rm_val == 0  #nosat<br>                                                |[0x80000624]:fsub.d fa5, fs0, ft4, dyn<br> [0x80000628]:csrrs a7, fflags, zero<br> [0x8000062c]:fsd fa5, 352(a5)<br>    |
|  24|[0x80002680]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f30<br> - rs2 : f17<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x02b48f992cb49 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x56e924eb7c838 and rm_val == 0  #nosat<br>                                              |[0x80000640]:fsub.d fs3, ft10, fa7, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fs3, 368(a5)<br>   |
|  25|[0x80002690]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f12<br> - rs2 : f16<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc3d4499ff58c3 and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x2937fe3bd9f20 and rm_val == 0  #nosat<br>                                              |[0x8000065c]:fsub.d fa1, fa2, fa6, dyn<br> [0x80000660]:csrrs a7, fflags, zero<br> [0x80000664]:fsd fa1, 384(a5)<br>    |
|  26|[0x800026a0]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f4<br> - rs2 : f14<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x36a63c245f557 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x23087ed83ab89 and rm_val == 0  #nosat<br>                                               |[0x80000678]:fsub.d fs7, ft4, fa4, dyn<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:fsd fs7, 400(a5)<br>    |
|  27|[0x800026b0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f21<br> - rs2 : f30<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa8fa703a4078c and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x472096b867e58 and rm_val == 0  #nosat<br>                                              |[0x80000694]:fsub.d fs8, fs5, ft10, dyn<br> [0x80000698]:csrrs a7, fflags, zero<br> [0x8000069c]:fsd fs8, 416(a5)<br>   |
|  28|[0x800026c0]<br>0xDBEADFEEDBEADFEE|- rs1 : f9<br> - rs2 : f22<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdf7523fde6c5d and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x0756bb5d68556 and rm_val == 0  #nosat<br>                                               |[0x800006b0]:fsub.d fs5, fs1, fs6, dyn<br> [0x800006b4]:csrrs a7, fflags, zero<br> [0x800006b8]:fsd fs5, 432(a5)<br>    |
|  29|[0x800026d0]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f27<br> - rs2 : f19<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7166677e49c3c and fs2 == 0 and fe2 == 0x7f8 and fm2 == 0x5144e78f2a6c0 and rm_val == 0  #nosat<br>                                              |[0x800006cc]:fsub.d ft11, fs11, fs3, dyn<br> [0x800006d0]:csrrs a7, fflags, zero<br> [0x800006d4]:fsd ft11, 448(a5)<br> |
|  30|[0x800026e0]<br>0xEDBEADFEEDBEADFE|- rs1 : f24<br> - rs2 : f1<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x7fb and fm1 == 0xef2a4f7c7db7f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xb1c6f0270591a and rm_val == 0  #nosat<br>                                               |[0x800006e8]:fsub.d fs9, fs8, ft1, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd fs9, 464(a5)<br>    |
|  31|[0x800026f0]<br>0x0000000080002010|- rs1 : f20<br> - rs2 : f2<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfc2ea66e5019e and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x0f8ef46d602a4 and rm_val == 0  #nosat<br>                                               |[0x80000704]:fsub.d fa6, fs4, ft2, dyn<br> [0x80000708]:csrrs a7, fflags, zero<br> [0x8000070c]:fsd fa6, 480(a5)<br>    |
|  32|[0x80002700]<br>0x0000000A00006000|- rs1 : f5<br> - rs2 : f10<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x48dace8666677 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xd35766bc3e2c3 and rm_val == 0  #nosat<br>                                                |[0x80000720]:fsub.d ft2, ft5, fa0, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd ft2, 496(a5)<br>    |
|  33|[0x80002710]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xacd7053aa42a2 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x1fdee0ff3e0e2 and rm_val == 0  #nosat<br>                                                                                             |[0x8000073c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000740]:csrrs a7, fflags, zero<br> [0x80000744]:fsd fa2, 512(a5)<br>    |
|  34|[0x80002720]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x28bc82f697c4d and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x12bb1d4152629 and rm_val == 0  #nosat<br>                                                                                             |[0x80000758]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000075c]:csrrs a7, fflags, zero<br> [0x80000760]:fsd fa2, 528(a5)<br>    |
|  35|[0x80002730]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc01045c2cd787 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xed344f30f8d23 and rm_val == 0  #nosat<br>                                                                                             |[0x80000774]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000778]:csrrs a7, fflags, zero<br> [0x8000077c]:fsd fa2, 544(a5)<br>    |
|  36|[0x80002740]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xdd5b61587fd27 and fs2 == 0 and fe2 == 0x7f6 and fm2 == 0x22b4aace78200 and rm_val == 0  #nosat<br>                                                                                             |[0x80000790]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa2, 560(a5)<br>    |
|  37|[0x80002750]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc0659af8369fd and fs2 == 1 and fe2 == 0x7fa and fm2 == 0xda84ca746bd30 and rm_val == 0  #nosat<br>                                                                                             |[0x800007ac]:fsub.d fa2, fa0, fa1, dyn<br> [0x800007b0]:csrrs a7, fflags, zero<br> [0x800007b4]:fsd fa2, 576(a5)<br>    |
|  38|[0x80002760]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xdbcde43895c3f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x8a8c8b3c6f2ff and rm_val == 0  #nosat<br>                                                                                             |[0x800007c8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsd fa2, 592(a5)<br>    |
|  39|[0x80002770]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xbb9876f8130c3 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa4e630c1be6d7 and rm_val == 0  #nosat<br>                                                                                             |[0x800007e4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800007e8]:csrrs a7, fflags, zero<br> [0x800007ec]:fsd fa2, 608(a5)<br>    |
|  40|[0x80002780]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe0d828b86622a and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x1daaf50c76c8b and rm_val == 0  #nosat<br>                                                                                             |[0x80000800]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa2, 624(a5)<br>    |
|  41|[0x80002790]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xa0e7ad32453df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x082cc69704a64 and rm_val == 0  #nosat<br>                                                                                             |[0x8000081c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000820]:csrrs a7, fflags, zero<br> [0x80000824]:fsd fa2, 640(a5)<br>    |
|  42|[0x800027a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcd87e65450c45 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xbdde68d2e30aa and rm_val == 0  #nosat<br>                                                                                             |[0x80000838]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:fsd fa2, 656(a5)<br>    |
|  43|[0x800027b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xd481499755d4b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6eda32e0b56e8 and rm_val == 0  #nosat<br>                                                                                             |[0x80000854]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000858]:csrrs a7, fflags, zero<br> [0x8000085c]:fsd fa2, 672(a5)<br>    |
|  44|[0x800027c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc81394a2171e9 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x1ac7cf448b205 and rm_val == 0  #nosat<br>                                                                                             |[0x80000870]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:fsd fa2, 688(a5)<br>    |
|  45|[0x800027d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x86499331191c4 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x853587c49095b and rm_val == 0  #nosat<br>                                                                                             |[0x8000088c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000890]:csrrs a7, fflags, zero<br> [0x80000894]:fsd fa2, 704(a5)<br>    |
|  46|[0x800027e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xabe96758f2a09 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x9cab846424ba1 and rm_val == 0  #nosat<br>                                                                                             |[0x800008a8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:fsd fa2, 720(a5)<br>    |
|  47|[0x800027f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x8072e8f9c858f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x0c566d30677f7 and rm_val == 0  #nosat<br>                                                                                             |[0x800008c4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800008c8]:csrrs a7, fflags, zero<br> [0x800008cc]:fsd fa2, 736(a5)<br>    |
|  48|[0x80002800]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4d9d98184b9d9 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x18d7cfd491228 and rm_val == 0  #nosat<br>                                                                                             |[0x800008e0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa2, 752(a5)<br>    |
|  49|[0x80002810]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfb5355e167379 and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x785f9927a57c0 and rm_val == 0  #nosat<br>                                                                                             |[0x800008fc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000900]:csrrs a7, fflags, zero<br> [0x80000904]:fsd fa2, 768(a5)<br>    |
|  50|[0x80002820]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x870d778409f12 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x04750f3c7df65 and rm_val == 0  #nosat<br>                                                                                             |[0x80000918]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:fsd fa2, 784(a5)<br>    |
|  51|[0x80002830]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1f6a4c4d26ab9 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x1506f64179e12 and rm_val == 0  #nosat<br>                                                                                             |[0x80000934]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000938]:csrrs a7, fflags, zero<br> [0x8000093c]:fsd fa2, 800(a5)<br>    |
|  52|[0x80002840]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x913b4236d8411 and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x2db788640aba0 and rm_val == 0  #nosat<br>                                                                                             |[0x80000950]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000954]:csrrs a7, fflags, zero<br> [0x80000958]:fsd fa2, 816(a5)<br>    |
