
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
| COV_LABELS                | fadd_b12      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fadd_b12-01.S/ref.S    |
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
Last Coverpoint : ['opcode : fadd.d', 'rs1 : f0', 'rs2 : f0', 'rd : f0', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x800003bc]:fadd.d ft0, ft0, ft0, dyn
	-[0x800003c0]:csrrs a7, fflags, zero
	-[0x800003c4]:fsd ft0, 0(a5)
Current Store : [0x800003c8] : sd a7, 8(a5) -- Store: [0x80002518]:0x0000000000000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f8', 'rd : f8', 'rs2 == rd != rs1', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x39beb50761e3d and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fadd.d fs0, ft3, fs0, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsd fs0, 16(a5)
Current Store : [0x800003e4] : sd a7, 24(a5) -- Store: [0x80002528]:0x0000000000000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f6', 'rd : f25', 'rs1 == rd != rs2', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x962eb496df1c1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc05b7f6ba0d90 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003f4]:fadd.d fs9, fs9, ft6, dyn
	-[0x800003f8]:csrrs a7, fflags, zero
	-[0x800003fc]:fsd fs9, 32(a5)
Current Store : [0x80000400] : sd a7, 40(a5) -- Store: [0x80002538]:0x0000000000000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f7', 'rd : f13', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x80000410]:fadd.d fa3, ft7, ft7, dyn
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:fsd fa3, 48(a5)
Current Store : [0x8000041c] : sd a7, 56(a5) -- Store: [0x80002548]:0x0000000000000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f30', 'rd : f27', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 1 and fe1 == 0x7fd and fm1 == 0xcd606a3f0f54d and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000042c]:fadd.d fs11, fs8, ft10, dyn
	-[0x80000430]:csrrs a7, fflags, zero
	-[0x80000434]:fsd fs11, 64(a5)
Current Store : [0x80000438] : sd a7, 72(a5) -- Store: [0x80002558]:0x0000000000000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f4', 'rd : f28', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xe64794dad7d48 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fadd.d ft8, fs3, ft4, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd ft8, 80(a5)
Current Store : [0x80000454] : sd a7, 88(a5) -- Store: [0x80002568]:0x0000000000000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f27', 'rd : f5', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xca428c2b7c81f and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000464]:fadd.d ft5, fa6, fs11, dyn
	-[0x80000468]:csrrs a7, fflags, zero
	-[0x8000046c]:fsd ft5, 96(a5)
Current Store : [0x80000470] : sd a7, 104(a5) -- Store: [0x80002578]:0x0000000000000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f21', 'rd : f17', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x9f8dcc4f1275c and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000480]:fadd.d fa7, fa3, fs5, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd fa7, 112(a5)
Current Store : [0x8000048c] : sd a7, 120(a5) -- Store: [0x80002588]:0x0000000000000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f12', 'rd : f16', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x691ae7e1929e8 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf63ad242f7a0b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000049c]:fadd.d fa6, ft4, fa2, dyn
	-[0x800004a0]:csrrs a7, fflags, zero
	-[0x800004a4]:fsd fa6, 128(a5)
Current Store : [0x800004a8] : sd a7, 136(a5) -- Store: [0x80002598]:0x0000000000000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f16', 'rd : f22', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xdd2178215e056 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b8]:fadd.d fs6, ft2, fa6, dyn
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:fsd fs6, 144(a5)
Current Store : [0x800004c4] : sd a7, 152(a5) -- Store: [0x800025a8]:0x0000000000000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f5', 'rd : f21', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d4]:fadd.d fs5, fs2, ft5, dyn
	-[0x800004d8]:csrrs a7, fflags, zero
	-[0x800004dc]:fsd fs5, 160(a5)
Current Store : [0x800004e0] : sd a7, 168(a5) -- Store: [0x800025b8]:0x0000000000000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f25', 'rd : f10', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fadd.d fa0, fs4, fs9, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd fa0, 176(a5)
Current Store : [0x800004fc] : sd a7, 184(a5) -- Store: [0x800025c8]:0x0000000000000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f2', 'rd : f24', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000050c]:fadd.d fs8, fs7, ft2, dyn
	-[0x80000510]:csrrs a7, fflags, zero
	-[0x80000514]:fsd fs8, 192(a5)
Current Store : [0x80000518] : sd a7, 200(a5) -- Store: [0x800025d8]:0x0000000000000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f19', 'rd : f18', 'fs1 == 1 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x21f9542fdc1b0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000528]:fadd.d fs2, fa0, fs3, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsd fs2, 208(a5)
Current Store : [0x80000534] : sd a7, 216(a5) -- Store: [0x800025e8]:0x0000000000000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f15', 'rd : f30', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000544]:fadd.d ft10, ft9, fa5, dyn
	-[0x80000548]:csrrs a7, fflags, zero
	-[0x8000054c]:fsd ft10, 224(a5)
Current Store : [0x80000550] : sd a7, 232(a5) -- Store: [0x800025f8]:0x0000000000000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f31', 'rd : f29', 'fs1 == 1 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x8125d36d5e46f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fadd.d ft9, ft10, ft11, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd ft9, 240(a5)
Current Store : [0x8000056c] : sd a7, 248(a5) -- Store: [0x80002608]:0x0000000000000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f10', 'rd : f15', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xbb61cc5b43304 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000057c]:fadd.d fa5, ft1, fa0, dyn
	-[0x80000580]:csrrs a7, fflags, zero
	-[0x80000584]:fsd fa5, 256(a5)
Current Store : [0x80000588] : sd a7, 264(a5) -- Store: [0x80002618]:0x0000000000000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f26', 'rd : f6', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf65e46475bdcb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fadd.d ft6, fs6, fs10, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd ft6, 272(a5)
Current Store : [0x800005a4] : sd a7, 280(a5) -- Store: [0x80002628]:0x0000000000000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f20', 'rd : f26', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b4]:fadd.d fs10, ft6, fs4, dyn
	-[0x800005b8]:csrrs a7, fflags, zero
	-[0x800005bc]:fsd fs10, 288(a5)
Current Store : [0x800005c0] : sd a7, 296(a5) -- Store: [0x80002638]:0x0000000000000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f13', 'rd : f19', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d0]:fadd.d fs3, ft5, fa3, dyn
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:fsd fs3, 304(a5)
Current Store : [0x800005dc] : sd a7, 312(a5) -- Store: [0x80002648]:0x0000000000000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f9', 'rd : f12', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005ec]:fadd.d fa2, fa7, fs1, dyn
	-[0x800005f0]:csrrs a7, fflags, zero
	-[0x800005f4]:fsd fa2, 320(a5)
Current Store : [0x800005f8] : sd a7, 328(a5) -- Store: [0x80002658]:0x0000000000000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f3', 'rd : f20', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000608]:fadd.d fs4, fa2, ft3, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:fsd fs4, 336(a5)
Current Store : [0x80000614] : sd a7, 344(a5) -- Store: [0x80002668]:0x0000000000000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f1', 'rd : f9', 'fs1 == 1 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x52162165ec222 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000624]:fadd.d fs1, fa4, ft1, dyn
	-[0x80000628]:csrrs a7, fflags, zero
	-[0x8000062c]:fsd fs1, 352(a5)
Current Store : [0x80000630] : sd a7, 360(a5) -- Store: [0x80002678]:0x0000000000000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f18', 'rd : f23', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fadd.d fs7, fs11, fs2, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fs7, 368(a5)
Current Store : [0x8000064c] : sd a7, 376(a5) -- Store: [0x80002688]:0x0000000000000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f23', 'rd : f4', 'fs1 == 1 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x9a1cc86f24be5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000065c]:fadd.d ft4, fs0, fs7, dyn
	-[0x80000660]:csrrs a7, fflags, zero
	-[0x80000664]:fsd ft4, 384(a5)
Current Store : [0x80000668] : sd a7, 392(a5) -- Store: [0x80002698]:0x0000000000000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f24', 'rd : f11', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000678]:fadd.d fa1, fs1, fs8, dyn
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:fsd fa1, 400(a5)
Current Store : [0x80000684] : sd a7, 408(a5) -- Store: [0x800026a8]:0x0000000000000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f29', 'rd : f31', 'fs1 == 1 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000694]:fadd.d ft11, fs10, ft9, dyn
	-[0x80000698]:csrrs a7, fflags, zero
	-[0x8000069c]:fsd ft11, 416(a5)
Current Store : [0x800006a0] : sd a7, 424(a5) -- Store: [0x800026b8]:0x0000000000000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f22', 'rd : f2', 'fs1 == 1 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x84645048e0d5c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b0]:fadd.d ft2, fa5, fs6, dyn
	-[0x800006b4]:csrrs a7, fflags, zero
	-[0x800006b8]:fsd ft2, 432(a5)
Current Store : [0x800006bc] : sd a7, 440(a5) -- Store: [0x800026c8]:0x0000000000000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f28', 'rd : f3', 'fs1 == 1 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006cc]:fadd.d ft3, fs5, ft8, dyn
	-[0x800006d0]:csrrs a7, fflags, zero
	-[0x800006d4]:fsd ft3, 448(a5)
Current Store : [0x800006d8] : sd a7, 456(a5) -- Store: [0x800026d8]:0x0000000000000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f11', 'rd : f14', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fadd.d fa4, ft11, fa1, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd fa4, 464(a5)
Current Store : [0x800006f4] : sd a7, 472(a5) -- Store: [0x800026e8]:0x0000000000000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f14', 'rd : f1', 'fs1 == 1 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xfa980f38509ed and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000704]:fadd.d ft1, fa1, fa4, dyn
	-[0x80000708]:csrrs a7, fflags, zero
	-[0x8000070c]:fsd ft1, 480(a5)
Current Store : [0x80000710] : sd a7, 488(a5) -- Store: [0x800026f8]:0x0000000000000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f17', 'rd : f7', 'fs1 == 1 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000720]:fadd.d ft7, ft8, fa7, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd ft7, 496(a5)
Current Store : [0x8000072c] : sd a7, 504(a5) -- Store: [0x80002708]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000073c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000740]:csrrs a7, fflags, zero
	-[0x80000744]:fsd fa2, 512(a5)
Current Store : [0x80000748] : sd a7, 520(a5) -- Store: [0x80002718]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x201f96c097d1c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000758]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000075c]:csrrs a7, fflags, zero
	-[0x80000760]:fsd fa2, 528(a5)
Current Store : [0x80000764] : sd a7, 536(a5) -- Store: [0x80002728]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000774]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000778]:csrrs a7, fflags, zero
	-[0x8000077c]:fsd fa2, 544(a5)
Current Store : [0x80000780] : sd a7, 552(a5) -- Store: [0x80002738]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000790]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa2, 560(a5)
Current Store : [0x8000079c] : sd a7, 568(a5) -- Store: [0x80002748]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007ac]:fadd.d fa2, fa0, fa1, dyn
	-[0x800007b0]:csrrs a7, fflags, zero
	-[0x800007b4]:fsd fa2, 576(a5)
Current Store : [0x800007b8] : sd a7, 584(a5) -- Store: [0x80002758]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsd fa2, 592(a5)
Current Store : [0x800007d4] : sd a7, 600(a5) -- Store: [0x80002768]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x254bcc7a78811 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007e4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800007e8]:csrrs a7, fflags, zero
	-[0x800007ec]:fsd fa2, 608(a5)
Current Store : [0x800007f0] : sd a7, 616(a5) -- Store: [0x80002778]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000800]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa2, 624(a5)
Current Store : [0x8000080c] : sd a7, 632(a5) -- Store: [0x80002788]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000081c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000820]:csrrs a7, fflags, zero
	-[0x80000824]:fsd fa2, 640(a5)
Current Store : [0x80000828] : sd a7, 648(a5) -- Store: [0x80002798]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000838]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:fsd fa2, 656(a5)
Current Store : [0x80000844] : sd a7, 664(a5) -- Store: [0x800027a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000854]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000858]:csrrs a7, fflags, zero
	-[0x8000085c]:fsd fa2, 672(a5)
Current Store : [0x80000860] : sd a7, 680(a5) -- Store: [0x800027b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xbcdd3a7258aa7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000870]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:fsd fa2, 688(a5)
Current Store : [0x8000087c] : sd a7, 696(a5) -- Store: [0x800027c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000088c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000890]:csrrs a7, fflags, zero
	-[0x80000894]:fsd fa2, 704(a5)
Current Store : [0x80000898] : sd a7, 712(a5) -- Store: [0x800027d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:fsd fa2, 720(a5)
Current Store : [0x800008b4] : sd a7, 728(a5) -- Store: [0x800027e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800008c8]:csrrs a7, fflags, zero
	-[0x800008cc]:fsd fa2, 736(a5)
Current Store : [0x800008d0] : sd a7, 744(a5) -- Store: [0x800027f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa2, 752(a5)
Current Store : [0x800008ec] : sd a7, 760(a5) -- Store: [0x80002808]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd51953d9ddca4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008fc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000900]:csrrs a7, fflags, zero
	-[0x80000904]:fsd fa2, 768(a5)
Current Store : [0x80000908] : sd a7, 776(a5) -- Store: [0x80002818]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x5be5e5006178e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000918]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:fsd fa2, 784(a5)
Current Store : [0x80000924] : sd a7, 792(a5) -- Store: [0x80002828]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000934]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000938]:csrrs a7, fflags, zero
	-[0x8000093c]:fsd fa2, 800(a5)
Current Store : [0x80000940] : sd a7, 808(a5) -- Store: [0x80002838]:0x0000000000000005




Last Coverpoint : ['fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfe1581ecd07ea and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000950]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000954]:csrrs a7, fflags, zero
	-[0x80000958]:fsd fa2, 816(a5)
Current Store : [0x8000095c] : sd a7, 824(a5) -- Store: [0x80002848]:0x0000000000000005





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

|s.no|            signature             |                                                                                                               coverpoints                                                                                                               |                                                          code                                                          |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002510]<br>0x0000000000000000|- opcode : fadd.d<br> - rs1 : f0<br> - rs2 : f0<br> - rd : f0<br> - rs1 == rs2 == rd<br>                                                                                                                                                 |[0x800003bc]:fadd.d ft0, ft0, ft0, dyn<br> [0x800003c0]:csrrs a7, fflags, zero<br> [0x800003c4]:fsd ft0, 0(a5)<br>      |
|   2|[0x80002520]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f3<br> - rs2 : f8<br> - rd : f8<br> - rs2 == rd != rs1<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x39beb50761e3d and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                           |[0x800003d8]:fadd.d fs0, ft3, fs0, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsd fs0, 16(a5)<br>     |
|   3|[0x80002530]<br>0xEDBEADFEEDBEADFE|- rs1 : f25<br> - rs2 : f6<br> - rd : f25<br> - rs1 == rd != rs2<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x962eb496df1c1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc05b7f6ba0d90 and rm_val == 0  #nosat<br>                         |[0x800003f4]:fadd.d fs9, fs9, ft6, dyn<br> [0x800003f8]:csrrs a7, fflags, zero<br> [0x800003fc]:fsd fs9, 32(a5)<br>     |
|   4|[0x80002540]<br>0xEADFEEDBEADFEEDB|- rs1 : f7<br> - rs2 : f7<br> - rd : f13<br> - rs1 == rs2 != rd<br>                                                                                                                                                                      |[0x80000410]:fadd.d fa3, ft7, ft7, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:fsd fa3, 48(a5)<br>     |
|   5|[0x80002550]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f24<br> - rs2 : f30<br> - rd : f27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 1 and fe1 == 0x7fd and fm1 == 0xcd606a3f0f54d and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br> |[0x8000042c]:fadd.d fs11, fs8, ft10, dyn<br> [0x80000430]:csrrs a7, fflags, zero<br> [0x80000434]:fsd fs11, 64(a5)<br>  |
|   6|[0x80002560]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f19<br> - rs2 : f4<br> - rd : f28<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xe64794dad7d48 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x80000448]:fadd.d ft8, fs3, ft4, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd ft8, 80(a5)<br>     |
|   7|[0x80002570]<br>0x0000000080000390|- rs1 : f16<br> - rs2 : f27<br> - rd : f5<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xca428c2b7c81f and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x80000464]:fadd.d ft5, fa6, fs11, dyn<br> [0x80000468]:csrrs a7, fflags, zero<br> [0x8000046c]:fsd ft5, 96(a5)<br>    |
|   8|[0x80002580]<br>0x0000000000000005|- rs1 : f13<br> - rs2 : f21<br> - rd : f17<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x9f8dcc4f1275c and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                               |[0x80000480]:fadd.d fa7, fa3, fs5, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd fa7, 112(a5)<br>    |
|   9|[0x80002590]<br>0x0000000080002010|- rs1 : f4<br> - rs2 : f12<br> - rd : f16<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x691ae7e1929e8 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf63ad242f7a0b and rm_val == 0  #nosat<br>                                                |[0x8000049c]:fadd.d fa6, ft4, fa2, dyn<br> [0x800004a0]:csrrs a7, fflags, zero<br> [0x800004a4]:fsd fa6, 128(a5)<br>    |
|  10|[0x800025a0]<br>0x6DF56FF76DF56FF7|- rs1 : f2<br> - rs2 : f16<br> - rd : f22<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xdd2178215e056 and rm_val == 0  #nosat<br>                                                |[0x800004b8]:fadd.d fs6, ft2, fa6, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:fsd fs6, 144(a5)<br>    |
|  11|[0x800025b0]<br>0xDBEADFEEDBEADFEE|- rs1 : f18<br> - rs2 : f5<br> - rd : f21<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x800004d4]:fadd.d fs5, fs2, ft5, dyn<br> [0x800004d8]:csrrs a7, fflags, zero<br> [0x800004dc]:fsd fs5, 160(a5)<br>    |
|  12|[0x800025c0]<br>0x56FF76DF56FF76DF|- rs1 : f20<br> - rs2 : f25<br> - rd : f10<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                               |[0x800004f0]:fadd.d fa0, fs4, fs9, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd fa0, 176(a5)<br>    |
|  13|[0x800025d0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f23<br> - rs2 : f2<br> - rd : f24<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x8000050c]:fadd.d fs8, fs7, ft2, dyn<br> [0x80000510]:csrrs a7, fflags, zero<br> [0x80000514]:fsd fs8, 192(a5)<br>    |
|  14|[0x800025e0]<br>0xDF56FF76DF56FF76|- rs1 : f10<br> - rs2 : f19<br> - rd : f18<br> - fs1 == 1 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x21f9542fdc1b0 and rm_val == 0  #nosat<br>                                               |[0x80000528]:fadd.d fs2, fa0, fs3, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsd fs2, 208(a5)<br>    |
|  15|[0x800025f0]<br>0xF76DF56FF76DF56F|- rs1 : f29<br> - rs2 : f15<br> - rd : f30<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                               |[0x80000544]:fadd.d ft10, ft9, fa5, dyn<br> [0x80000548]:csrrs a7, fflags, zero<br> [0x8000054c]:fsd ft10, 224(a5)<br>  |
|  16|[0x80002600]<br>0xEEDBEADFEEDBEADF|- rs1 : f30<br> - rs2 : f31<br> - rd : f29<br> - fs1 == 1 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x8125d36d5e46f and rm_val == 0  #nosat<br>                                               |[0x80000560]:fadd.d ft9, ft10, ft11, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd ft9, 240(a5)<br>  |
|  17|[0x80002610]<br>0x0000000080002510|- rs1 : f1<br> - rs2 : f10<br> - rd : f15<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xbb61cc5b43304 and rm_val == 0  #nosat<br>                                                |[0x8000057c]:fadd.d fa5, ft1, fa0, dyn<br> [0x80000580]:csrrs a7, fflags, zero<br> [0x80000584]:fsd fa5, 256(a5)<br>    |
|  18|[0x80002620]<br>0x0000000080002000|- rs1 : f22<br> - rs2 : f26<br> - rd : f6<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf65e46475bdcb and rm_val == 0  #nosat<br>                                                |[0x80000598]:fadd.d ft6, fs6, fs10, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd ft6, 272(a5)<br>   |
|  19|[0x80002630]<br>0x76DF56FF76DF56FF|- rs1 : f6<br> - rs2 : f20<br> - rd : f26<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x800005b4]:fadd.d fs10, ft6, fs4, dyn<br> [0x800005b8]:csrrs a7, fflags, zero<br> [0x800005bc]:fsd fs10, 288(a5)<br>  |
|  20|[0x80002640]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f5<br> - rs2 : f13<br> - rd : f19<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x800005d0]:fadd.d fs3, ft5, fa3, dyn<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:fsd fs3, 304(a5)<br>    |
|  21|[0x80002650]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f17<br> - rs2 : f9<br> - rd : f12<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x800005ec]:fadd.d fa2, fa7, fs1, dyn<br> [0x800005f0]:csrrs a7, fflags, zero<br> [0x800005f4]:fsd fa2, 320(a5)<br>    |
|  22|[0x80002660]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f12<br> - rs2 : f3<br> - rd : f20<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x80000608]:fadd.d fs4, fa2, ft3, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsd fs4, 336(a5)<br>    |
|  23|[0x80002670]<br>0xADFEEDBEADFEEDBE|- rs1 : f14<br> - rs2 : f1<br> - rd : f9<br> - fs1 == 1 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x52162165ec222 and rm_val == 0  #nosat<br>                                                 |[0x80000624]:fadd.d fs1, fa4, ft1, dyn<br> [0x80000628]:csrrs a7, fflags, zero<br> [0x8000062c]:fsd fs1, 352(a5)<br>    |
|  24|[0x80002680]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f27<br> - rs2 : f18<br> - rd : f23<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                               |[0x80000640]:fadd.d fs7, fs11, fs2, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fs7, 368(a5)<br>   |
|  25|[0x80002690]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f8<br> - rs2 : f23<br> - rd : f4<br> - fs1 == 1 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x9a1cc86f24be5 and rm_val == 0  #nosat<br>                                                 |[0x8000065c]:fadd.d ft4, fs0, fs7, dyn<br> [0x80000660]:csrrs a7, fflags, zero<br> [0x80000664]:fsd ft4, 384(a5)<br>    |
|  26|[0x800026a0]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f9<br> - rs2 : f24<br> - rd : f11<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x80000678]:fadd.d fa1, fs1, fs8, dyn<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:fsd fa1, 400(a5)<br>    |
|  27|[0x800026b0]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f26<br> - rs2 : f29<br> - rd : f31<br> - fs1 == 1 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                               |[0x80000694]:fadd.d ft11, fs10, ft9, dyn<br> [0x80000698]:csrrs a7, fflags, zero<br> [0x8000069c]:fsd ft11, 416(a5)<br> |
|  28|[0x800026c0]<br>0x0000000A00006000|- rs1 : f15<br> - rs2 : f22<br> - rd : f2<br> - fs1 == 1 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x84645048e0d5c and rm_val == 0  #nosat<br>                                                |[0x800006b0]:fadd.d ft2, fa5, fs6, dyn<br> [0x800006b4]:csrrs a7, fflags, zero<br> [0x800006b8]:fsd ft2, 432(a5)<br>    |
|  29|[0x800026d0]<br>0x0000000A00000000|- rs1 : f21<br> - rs2 : f28<br> - rd : f3<br> - fs1 == 1 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x800006cc]:fadd.d ft3, fs5, ft8, dyn<br> [0x800006d0]:csrrs a7, fflags, zero<br> [0x800006d4]:fsd ft3, 448(a5)<br>    |
|  30|[0x800026e0]<br>0xF56FF76DF56FF76D|- rs1 : f31<br> - rs2 : f11<br> - rd : f14<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                               |[0x800006e8]:fadd.d fa4, ft11, fa1, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd fa4, 464(a5)<br>   |
|  31|[0x800026f0]<br>0xFEEDBEADFEEDBEAD|- rs1 : f11<br> - rs2 : f14<br> - rd : f1<br> - fs1 == 1 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xfa980f38509ed and rm_val == 0  #nosat<br>                                                |[0x80000704]:fadd.d ft1, fa1, fa4, dyn<br> [0x80000708]:csrrs a7, fflags, zero<br> [0x8000070c]:fsd ft1, 480(a5)<br>    |
|  32|[0x80002700]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f28<br> - rs2 : f17<br> - rd : f7<br> - fs1 == 1 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x80000720]:fadd.d ft7, ft8, fa7, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd ft7, 496(a5)<br>    |
|  33|[0x80002710]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000073c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000740]:csrrs a7, fflags, zero<br> [0x80000744]:fsd fa2, 512(a5)<br>    |
|  34|[0x80002720]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x201f96c097d1c and rm_val == 0  #nosat<br>                                                                                              |[0x80000758]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000075c]:csrrs a7, fflags, zero<br> [0x80000760]:fsd fa2, 528(a5)<br>    |
|  35|[0x80002730]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000774]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000778]:csrrs a7, fflags, zero<br> [0x8000077c]:fsd fa2, 544(a5)<br>    |
|  36|[0x80002740]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000790]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa2, 560(a5)<br>    |
|  37|[0x80002750]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800007ac]:fadd.d fa2, fa0, fa1, dyn<br> [0x800007b0]:csrrs a7, fflags, zero<br> [0x800007b4]:fsd fa2, 576(a5)<br>    |
|  38|[0x80002760]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800007c8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsd fa2, 592(a5)<br>    |
|  39|[0x80002770]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x254bcc7a78811 and rm_val == 0  #nosat<br>                                                                                              |[0x800007e4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800007e8]:csrrs a7, fflags, zero<br> [0x800007ec]:fsd fa2, 608(a5)<br>    |
|  40|[0x80002780]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000800]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa2, 624(a5)<br>    |
|  41|[0x80002790]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000081c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000820]:csrrs a7, fflags, zero<br> [0x80000824]:fsd fa2, 640(a5)<br>    |
|  42|[0x800027a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000838]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:fsd fa2, 656(a5)<br>    |
|  43|[0x800027b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000854]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000858]:csrrs a7, fflags, zero<br> [0x8000085c]:fsd fa2, 672(a5)<br>    |
|  44|[0x800027c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xbcdd3a7258aa7 and rm_val == 0  #nosat<br>                                                                                              |[0x80000870]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:fsd fa2, 688(a5)<br>    |
|  45|[0x800027d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x8000088c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000890]:csrrs a7, fflags, zero<br> [0x80000894]:fsd fa2, 704(a5)<br>    |
|  46|[0x800027e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800008a8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:fsd fa2, 720(a5)<br>    |
|  47|[0x800027f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800008c4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800008c8]:csrrs a7, fflags, zero<br> [0x800008cc]:fsd fa2, 736(a5)<br>    |
|  48|[0x80002800]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800008e0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa2, 752(a5)<br>    |
|  49|[0x80002810]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd51953d9ddca4 and rm_val == 0  #nosat<br>                                                                                              |[0x800008fc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000900]:csrrs a7, fflags, zero<br> [0x80000904]:fsd fa2, 768(a5)<br>    |
|  50|[0x80002820]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x5be5e5006178e and rm_val == 0  #nosat<br>                                                                                              |[0x80000918]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:fsd fa2, 784(a5)<br>    |
|  51|[0x80002830]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000934]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000938]:csrrs a7, fflags, zero<br> [0x8000093c]:fsd fa2, 800(a5)<br>    |
|  52|[0x80002840]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 1 and fe1 == 0x7fe and fm1 == 0xfe1581ecd07ea and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80000950]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000954]:csrrs a7, fflags, zero<br> [0x80000958]:fsd fa2, 816(a5)<br>    |
