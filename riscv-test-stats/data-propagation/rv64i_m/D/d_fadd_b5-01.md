
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001af0')]      |
| SIG_REGION                | [('0x80003f10', '0x80004c50', '424 dwords')]      |
| COV_LABELS                | fadd_b5      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fadd_b5-01.S/ref.S    |
| Total Number of coverpoints| 318     |
| Total Coverpoints Hit     | 312      |
| Total Signature Updates   | 424      |
| STAT1                     | 212      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 212     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fadd.d', 'rs1 : f13', 'rs2 : f13', 'rd : f13', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x800003bc]:fadd.d fa3, fa3, fa3, dyn
	-[0x800003c0]:csrrs a7, fflags, zero
	-[0x800003c4]:fsd fa3, 0(a5)
Current Store : [0x800003c8] : sd a7, 8(a5) -- Store: [0x80003f18]:0x0000000000000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f31', 'rd : f31', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fadd.d ft11, fs5, ft11, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsd ft11, 16(a5)
Current Store : [0x800003e4] : sd a7, 24(a5) -- Store: [0x80003f28]:0x0000000000000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f15', 'rd : f5', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003f4]:fadd.d ft5, ft5, fa5, dyn
	-[0x800003f8]:csrrs a7, fflags, zero
	-[0x800003fc]:fsd ft5, 32(a5)
Current Store : [0x80000400] : sd a7, 40(a5) -- Store: [0x80003f38]:0x0000000000000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f3', 'rd : f6', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x80000410]:fadd.d ft6, ft3, ft3, dyn
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:fsd ft6, 48(a5)
Current Store : [0x8000041c] : sd a7, 56(a5) -- Store: [0x80003f48]:0x0000000000000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f28', 'rd : f25', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000042c]:fadd.d fs9, fs0, ft8, dyn
	-[0x80000430]:csrrs a7, fflags, zero
	-[0x80000434]:fsd fs9, 64(a5)
Current Store : [0x80000438] : sd a7, 72(a5) -- Store: [0x80003f58]:0x0000000000000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f19', 'rd : f9', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fadd.d fs1, ft9, fs3, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd fs1, 80(a5)
Current Store : [0x80000454] : sd a7, 88(a5) -- Store: [0x80003f68]:0x0000000000000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f30', 'rd : f28', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000464]:fadd.d ft8, fs11, ft10, dyn
	-[0x80000468]:csrrs a7, fflags, zero
	-[0x8000046c]:fsd ft8, 96(a5)
Current Store : [0x80000470] : sd a7, 104(a5) -- Store: [0x80003f78]:0x0000000000000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f7', 'rd : f1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000480]:fadd.d ft1, fs6, ft7, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd ft1, 112(a5)
Current Store : [0x8000048c] : sd a7, 120(a5) -- Store: [0x80003f88]:0x0000000000000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f5', 'rd : f4', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000049c]:fadd.d ft4, ft2, ft5, dyn
	-[0x800004a0]:csrrs a7, fflags, zero
	-[0x800004a4]:fsd ft4, 128(a5)
Current Store : [0x800004a8] : sd a7, 136(a5) -- Store: [0x80003f98]:0x0000000000000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f24', 'rd : f3', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004b8]:fadd.d ft3, fa2, fs8, dyn
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:fsd ft3, 144(a5)
Current Store : [0x800004c4] : sd a7, 152(a5) -- Store: [0x80003fa8]:0x0000000000000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f27', 'rd : f7', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d4]:fadd.d ft7, fs4, fs11, dyn
	-[0x800004d8]:csrrs a7, fflags, zero
	-[0x800004dc]:fsd ft7, 160(a5)
Current Store : [0x800004e0] : sd a7, 168(a5) -- Store: [0x80003fb8]:0x0000000000000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f18', 'rd : f29', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fadd.d ft9, fs8, fs2, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd ft9, 176(a5)
Current Store : [0x800004fc] : sd a7, 184(a5) -- Store: [0x80003fc8]:0x0000000000000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f8', 'rd : f16', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000050c]:fadd.d fa6, ft10, fs0, dyn
	-[0x80000510]:csrrs a7, fflags, zero
	-[0x80000514]:fsd fa6, 192(a5)
Current Store : [0x80000518] : sd a7, 200(a5) -- Store: [0x80003fd8]:0x0000000000000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f22', 'rd : f19', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000528]:fadd.d fs3, ft1, fs6, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsd fs3, 208(a5)
Current Store : [0x80000534] : sd a7, 216(a5) -- Store: [0x80003fe8]:0x0000000000000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f16', 'rd : f22', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000544]:fadd.d fs6, fs2, fa6, dyn
	-[0x80000548]:csrrs a7, fflags, zero
	-[0x8000054c]:fsd fs6, 224(a5)
Current Store : [0x80000550] : sd a7, 232(a5) -- Store: [0x80003ff8]:0x0000000000000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f10', 'rd : f24', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fadd.d fs8, fs10, fa0, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd fs8, 240(a5)
Current Store : [0x8000056c] : sd a7, 248(a5) -- Store: [0x80004008]:0x0000000000000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f25', 'rd : f2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000057c]:fadd.d ft2, ft11, fs9, dyn
	-[0x80000580]:csrrs a7, fflags, zero
	-[0x80000584]:fsd ft2, 256(a5)
Current Store : [0x80000588] : sd a7, 264(a5) -- Store: [0x80004018]:0x0000000000000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f4', 'rd : f14', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000598]:fadd.d fa4, fa6, ft4, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd fa4, 272(a5)
Current Store : [0x800005a4] : sd a7, 280(a5) -- Store: [0x80004028]:0x0000000000000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f14', 'rd : f10', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005b4]:fadd.d fa0, ft0, fa4, dyn
	-[0x800005b8]:csrrs a7, fflags, zero
	-[0x800005bc]:fsd fa0, 288(a5)
Current Store : [0x800005c0] : sd a7, 296(a5) -- Store: [0x80004038]:0x0000000000000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f0', 'rd : f26', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005d0]:fadd.d fs10, fs1, ft0, dyn
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:fsd fs10, 304(a5)
Current Store : [0x800005dc] : sd a7, 312(a5) -- Store: [0x80004048]:0x0000000000000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f20', 'rd : f17', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005ec]:fadd.d fa7, ft8, fs4, dyn
	-[0x800005f0]:csrrs a7, fflags, zero
	-[0x800005f4]:fsd fa7, 320(a5)
Current Store : [0x800005f8] : sd a7, 328(a5) -- Store: [0x80004058]:0x0000000000000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f17', 'rd : f30', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000608]:fadd.d ft10, ft7, fa7, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:fsd ft10, 336(a5)
Current Store : [0x80000614] : sd a7, 344(a5) -- Store: [0x80004068]:0x0000000000000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f12', 'rd : f27', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000624]:fadd.d fs11, fa0, fa2, dyn
	-[0x80000628]:csrrs a7, fflags, zero
	-[0x8000062c]:fsd fs11, 352(a5)
Current Store : [0x80000630] : sd a7, 360(a5) -- Store: [0x80004078]:0x0000000000000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f26', 'rd : f23', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000640]:fadd.d fs7, ft4, fs10, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fs7, 368(a5)
Current Store : [0x8000064c] : sd a7, 376(a5) -- Store: [0x80004088]:0x0000000000000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f9', 'rd : f12', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000065c]:fadd.d fa2, fs9, fs1, dyn
	-[0x80000660]:csrrs a7, fflags, zero
	-[0x80000664]:fsd fa2, 384(a5)
Current Store : [0x80000668] : sd a7, 392(a5) -- Store: [0x80004098]:0x0000000000000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f2', 'rd : f11', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000678]:fadd.d fa1, fa4, ft2, dyn
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:fsd fa1, 400(a5)
Current Store : [0x80000684] : sd a7, 408(a5) -- Store: [0x800040a8]:0x0000000000000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f11', 'rd : f8', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000694]:fadd.d fs0, ft6, fa1, dyn
	-[0x80000698]:csrrs a7, fflags, zero
	-[0x8000069c]:fsd fs0, 416(a5)
Current Store : [0x800006a0] : sd a7, 424(a5) -- Store: [0x800040b8]:0x0000000000000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f23', 'rd : f20', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006b0]:fadd.d fs4, fa1, fs7, dyn
	-[0x800006b4]:csrrs a7, fflags, zero
	-[0x800006b8]:fsd fs4, 432(a5)
Current Store : [0x800006bc] : sd a7, 440(a5) -- Store: [0x800040c8]:0x0000000000000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f21', 'rd : f15', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006cc]:fadd.d fa5, fa7, fs5, dyn
	-[0x800006d0]:csrrs a7, fflags, zero
	-[0x800006d4]:fsd fa5, 448(a5)
Current Store : [0x800006d8] : sd a7, 456(a5) -- Store: [0x800040d8]:0x0000000000000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f6', 'rd : f0', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fadd.d ft0, fs7, ft6, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd ft0, 464(a5)
Current Store : [0x800006f4] : sd a7, 472(a5) -- Store: [0x800040e8]:0x0000000000000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f1', 'rd : f21', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000704]:fadd.d fs5, fs3, ft1, dyn
	-[0x80000708]:csrrs a7, fflags, zero
	-[0x8000070c]:fsd fs5, 480(a5)
Current Store : [0x80000710] : sd a7, 488(a5) -- Store: [0x800040f8]:0x0000000000000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f29', 'rd : f18', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000720]:fadd.d fs2, fa5, ft9, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd fs2, 496(a5)
Current Store : [0x8000072c] : sd a7, 504(a5) -- Store: [0x80004108]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000073c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000740]:csrrs a7, fflags, zero
	-[0x80000744]:fsd fa2, 512(a5)
Current Store : [0x80000748] : sd a7, 520(a5) -- Store: [0x80004118]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000758]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000075c]:csrrs a7, fflags, zero
	-[0x80000760]:fsd fa2, 528(a5)
Current Store : [0x80000764] : sd a7, 536(a5) -- Store: [0x80004128]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000774]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000778]:csrrs a7, fflags, zero
	-[0x8000077c]:fsd fa2, 544(a5)
Current Store : [0x80000780] : sd a7, 552(a5) -- Store: [0x80004138]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000790]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa2, 560(a5)
Current Store : [0x8000079c] : sd a7, 568(a5) -- Store: [0x80004148]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800007ac]:fadd.d fa2, fa0, fa1, dyn
	-[0x800007b0]:csrrs a7, fflags, zero
	-[0x800007b4]:fsd fa2, 576(a5)
Current Store : [0x800007b8] : sd a7, 584(a5) -- Store: [0x80004158]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsd fa2, 592(a5)
Current Store : [0x800007d4] : sd a7, 600(a5) -- Store: [0x80004168]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007e4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800007e8]:csrrs a7, fflags, zero
	-[0x800007ec]:fsd fa2, 608(a5)
Current Store : [0x800007f0] : sd a7, 616(a5) -- Store: [0x80004178]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000800]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa2, 624(a5)
Current Store : [0x8000080c] : sd a7, 632(a5) -- Store: [0x80004188]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000081c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000820]:csrrs a7, fflags, zero
	-[0x80000824]:fsd fa2, 640(a5)
Current Store : [0x80000828] : sd a7, 648(a5) -- Store: [0x80004198]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000838]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:fsd fa2, 656(a5)
Current Store : [0x80000844] : sd a7, 664(a5) -- Store: [0x800041a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000854]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000858]:csrrs a7, fflags, zero
	-[0x8000085c]:fsd fa2, 672(a5)
Current Store : [0x80000860] : sd a7, 680(a5) -- Store: [0x800041b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000870]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:fsd fa2, 688(a5)
Current Store : [0x8000087c] : sd a7, 696(a5) -- Store: [0x800041c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000088c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000890]:csrrs a7, fflags, zero
	-[0x80000894]:fsd fa2, 704(a5)
Current Store : [0x80000898] : sd a7, 712(a5) -- Store: [0x800041d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:fsd fa2, 720(a5)
Current Store : [0x800008b4] : sd a7, 728(a5) -- Store: [0x800041e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800008c4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800008c8]:csrrs a7, fflags, zero
	-[0x800008cc]:fsd fa2, 736(a5)
Current Store : [0x800008d0] : sd a7, 744(a5) -- Store: [0x800041f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa2, 752(a5)
Current Store : [0x800008ec] : sd a7, 760(a5) -- Store: [0x80004208]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800008fc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000900]:csrrs a7, fflags, zero
	-[0x80000904]:fsd fa2, 768(a5)
Current Store : [0x80000908] : sd a7, 776(a5) -- Store: [0x80004218]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000918]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:fsd fa2, 784(a5)
Current Store : [0x80000924] : sd a7, 792(a5) -- Store: [0x80004228]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000934]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000938]:csrrs a7, fflags, zero
	-[0x8000093c]:fsd fa2, 800(a5)
Current Store : [0x80000940] : sd a7, 808(a5) -- Store: [0x80004238]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000950]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000954]:csrrs a7, fflags, zero
	-[0x80000958]:fsd fa2, 816(a5)
Current Store : [0x8000095c] : sd a7, 824(a5) -- Store: [0x80004248]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000096c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000970]:csrrs a7, fflags, zero
	-[0x80000974]:fsd fa2, 832(a5)
Current Store : [0x80000978] : sd a7, 840(a5) -- Store: [0x80004258]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000988]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsd fa2, 848(a5)
Current Store : [0x80000994] : sd a7, 856(a5) -- Store: [0x80004268]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009a4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800009a8]:csrrs a7, fflags, zero
	-[0x800009ac]:fsd fa2, 864(a5)
Current Store : [0x800009b0] : sd a7, 872(a5) -- Store: [0x80004278]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa2, 880(a5)
Current Store : [0x800009cc] : sd a7, 888(a5) -- Store: [0x80004288]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800009dc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800009e0]:csrrs a7, fflags, zero
	-[0x800009e4]:fsd fa2, 896(a5)
Current Store : [0x800009e8] : sd a7, 904(a5) -- Store: [0x80004298]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009f8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800009fc]:csrrs a7, fflags, zero
	-[0x80000a00]:fsd fa2, 912(a5)
Current Store : [0x80000a04] : sd a7, 920(a5) -- Store: [0x800042a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a14]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000a18]:csrrs a7, fflags, zero
	-[0x80000a1c]:fsd fa2, 928(a5)
Current Store : [0x80000a20] : sd a7, 936(a5) -- Store: [0x800042b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a30]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000a34]:csrrs a7, fflags, zero
	-[0x80000a38]:fsd fa2, 944(a5)
Current Store : [0x80000a3c] : sd a7, 952(a5) -- Store: [0x800042c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a4c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000a50]:csrrs a7, fflags, zero
	-[0x80000a54]:fsd fa2, 960(a5)
Current Store : [0x80000a58] : sd a7, 968(a5) -- Store: [0x800042d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000a68]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:fsd fa2, 976(a5)
Current Store : [0x80000a74] : sd a7, 984(a5) -- Store: [0x800042e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a84]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000a88]:csrrs a7, fflags, zero
	-[0x80000a8c]:fsd fa2, 992(a5)
Current Store : [0x80000a90] : sd a7, 1000(a5) -- Store: [0x800042f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa2, 1008(a5)
Current Store : [0x80000aac] : sd a7, 1016(a5) -- Store: [0x80004308]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000abc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000ac0]:csrrs a7, fflags, zero
	-[0x80000ac4]:fsd fa2, 1024(a5)
Current Store : [0x80000ac8] : sd a7, 1032(a5) -- Store: [0x80004318]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ad8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000adc]:csrrs a7, fflags, zero
	-[0x80000ae0]:fsd fa2, 1040(a5)
Current Store : [0x80000ae4] : sd a7, 1048(a5) -- Store: [0x80004328]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000af4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000af8]:csrrs a7, fflags, zero
	-[0x80000afc]:fsd fa2, 1056(a5)
Current Store : [0x80000b00] : sd a7, 1064(a5) -- Store: [0x80004338]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b10]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000b14]:csrrs a7, fflags, zero
	-[0x80000b18]:fsd fa2, 1072(a5)
Current Store : [0x80000b1c] : sd a7, 1080(a5) -- Store: [0x80004348]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b2c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000b30]:csrrs a7, fflags, zero
	-[0x80000b34]:fsd fa2, 1088(a5)
Current Store : [0x80000b38] : sd a7, 1096(a5) -- Store: [0x80004358]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b48]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000b4c]:csrrs a7, fflags, zero
	-[0x80000b50]:fsd fa2, 1104(a5)
Current Store : [0x80000b54] : sd a7, 1112(a5) -- Store: [0x80004368]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b64]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000b68]:csrrs a7, fflags, zero
	-[0x80000b6c]:fsd fa2, 1120(a5)
Current Store : [0x80000b70] : sd a7, 1128(a5) -- Store: [0x80004378]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa2, 1136(a5)
Current Store : [0x80000b8c] : sd a7, 1144(a5) -- Store: [0x80004388]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b9c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000ba0]:csrrs a7, fflags, zero
	-[0x80000ba4]:fsd fa2, 1152(a5)
Current Store : [0x80000ba8] : sd a7, 1160(a5) -- Store: [0x80004398]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000bb8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000bbc]:csrrs a7, fflags, zero
	-[0x80000bc0]:fsd fa2, 1168(a5)
Current Store : [0x80000bc4] : sd a7, 1176(a5) -- Store: [0x800043a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000bd4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000bd8]:csrrs a7, fflags, zero
	-[0x80000bdc]:fsd fa2, 1184(a5)
Current Store : [0x80000be0] : sd a7, 1192(a5) -- Store: [0x800043b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bf0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000bf4]:csrrs a7, fflags, zero
	-[0x80000bf8]:fsd fa2, 1200(a5)
Current Store : [0x80000bfc] : sd a7, 1208(a5) -- Store: [0x800043c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000c0c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c10]:csrrs a7, fflags, zero
	-[0x80000c14]:fsd fa2, 1216(a5)
Current Store : [0x80000c18] : sd a7, 1224(a5) -- Store: [0x800043d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c28]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c2c]:csrrs a7, fflags, zero
	-[0x80000c30]:fsd fa2, 1232(a5)
Current Store : [0x80000c34] : sd a7, 1240(a5) -- Store: [0x800043e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c44]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c48]:csrrs a7, fflags, zero
	-[0x80000c4c]:fsd fa2, 1248(a5)
Current Store : [0x80000c50] : sd a7, 1256(a5) -- Store: [0x800043f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa2, 1264(a5)
Current Store : [0x80000c6c] : sd a7, 1272(a5) -- Store: [0x80004408]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c7c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c80]:csrrs a7, fflags, zero
	-[0x80000c84]:fsd fa2, 1280(a5)
Current Store : [0x80000c88] : sd a7, 1288(a5) -- Store: [0x80004418]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000c98]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c9c]:csrrs a7, fflags, zero
	-[0x80000ca0]:fsd fa2, 1296(a5)
Current Store : [0x80000ca4] : sd a7, 1304(a5) -- Store: [0x80004428]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cb4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000cb8]:csrrs a7, fflags, zero
	-[0x80000cbc]:fsd fa2, 1312(a5)
Current Store : [0x80000cc0] : sd a7, 1320(a5) -- Store: [0x80004438]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000cd0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000cd4]:csrrs a7, fflags, zero
	-[0x80000cd8]:fsd fa2, 1328(a5)
Current Store : [0x80000cdc] : sd a7, 1336(a5) -- Store: [0x80004448]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000cec]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000cf0]:csrrs a7, fflags, zero
	-[0x80000cf4]:fsd fa2, 1344(a5)
Current Store : [0x80000cf8] : sd a7, 1352(a5) -- Store: [0x80004458]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d08]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d0c]:csrrs a7, fflags, zero
	-[0x80000d10]:fsd fa2, 1360(a5)
Current Store : [0x80000d14] : sd a7, 1368(a5) -- Store: [0x80004468]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000d24]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d28]:csrrs a7, fflags, zero
	-[0x80000d2c]:fsd fa2, 1376(a5)
Current Store : [0x80000d30] : sd a7, 1384(a5) -- Store: [0x80004478]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa2, 1392(a5)
Current Store : [0x80000d4c] : sd a7, 1400(a5) -- Store: [0x80004488]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d5c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d60]:csrrs a7, fflags, zero
	-[0x80000d64]:fsd fa2, 1408(a5)
Current Store : [0x80000d68] : sd a7, 1416(a5) -- Store: [0x80004498]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d78]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d7c]:csrrs a7, fflags, zero
	-[0x80000d80]:fsd fa2, 1424(a5)
Current Store : [0x80000d84] : sd a7, 1432(a5) -- Store: [0x800044a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d94]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d98]:csrrs a7, fflags, zero
	-[0x80000d9c]:fsd fa2, 1440(a5)
Current Store : [0x80000da0] : sd a7, 1448(a5) -- Store: [0x800044b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000db0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000db4]:csrrs a7, fflags, zero
	-[0x80000db8]:fsd fa2, 1456(a5)
Current Store : [0x80000dbc] : sd a7, 1464(a5) -- Store: [0x800044c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000dcc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000dd0]:csrrs a7, fflags, zero
	-[0x80000dd4]:fsd fa2, 1472(a5)
Current Store : [0x80000dd8] : sd a7, 1480(a5) -- Store: [0x800044d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000de8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000dec]:csrrs a7, fflags, zero
	-[0x80000df0]:fsd fa2, 1488(a5)
Current Store : [0x80000df4] : sd a7, 1496(a5) -- Store: [0x800044e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e04]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e08]:csrrs a7, fflags, zero
	-[0x80000e0c]:fsd fa2, 1504(a5)
Current Store : [0x80000e10] : sd a7, 1512(a5) -- Store: [0x800044f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa2, 1520(a5)
Current Store : [0x80000e2c] : sd a7, 1528(a5) -- Store: [0x80004508]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000e3c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e40]:csrrs a7, fflags, zero
	-[0x80000e44]:fsd fa2, 1536(a5)
Current Store : [0x80000e48] : sd a7, 1544(a5) -- Store: [0x80004518]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e58]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e5c]:csrrs a7, fflags, zero
	-[0x80000e60]:fsd fa2, 1552(a5)
Current Store : [0x80000e64] : sd a7, 1560(a5) -- Store: [0x80004528]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e74]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e78]:csrrs a7, fflags, zero
	-[0x80000e7c]:fsd fa2, 1568(a5)
Current Store : [0x80000e80] : sd a7, 1576(a5) -- Store: [0x80004538]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e90]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e94]:csrrs a7, fflags, zero
	-[0x80000e98]:fsd fa2, 1584(a5)
Current Store : [0x80000e9c] : sd a7, 1592(a5) -- Store: [0x80004548]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000eac]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000eb0]:csrrs a7, fflags, zero
	-[0x80000eb4]:fsd fa2, 1600(a5)
Current Store : [0x80000eb8] : sd a7, 1608(a5) -- Store: [0x80004558]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000ec8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000ecc]:csrrs a7, fflags, zero
	-[0x80000ed0]:fsd fa2, 1616(a5)
Current Store : [0x80000ed4] : sd a7, 1624(a5) -- Store: [0x80004568]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa2, 1632(a5)
Current Store : [0x80000ef0] : sd a7, 1640(a5) -- Store: [0x80004578]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f00]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f04]:csrrs a7, fflags, zero
	-[0x80000f08]:fsd fa2, 1648(a5)
Current Store : [0x80000f0c] : sd a7, 1656(a5) -- Store: [0x80004588]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f1c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f20]:csrrs a7, fflags, zero
	-[0x80000f24]:fsd fa2, 1664(a5)
Current Store : [0x80000f28] : sd a7, 1672(a5) -- Store: [0x80004598]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f38]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f3c]:csrrs a7, fflags, zero
	-[0x80000f40]:fsd fa2, 1680(a5)
Current Store : [0x80000f44] : sd a7, 1688(a5) -- Store: [0x800045a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000f54]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f58]:csrrs a7, fflags, zero
	-[0x80000f5c]:fsd fa2, 1696(a5)
Current Store : [0x80000f60] : sd a7, 1704(a5) -- Store: [0x800045b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f70]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f74]:csrrs a7, fflags, zero
	-[0x80000f78]:fsd fa2, 1712(a5)
Current Store : [0x80000f7c] : sd a7, 1720(a5) -- Store: [0x800045c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f8c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f90]:csrrs a7, fflags, zero
	-[0x80000f94]:fsd fa2, 1728(a5)
Current Store : [0x80000f98] : sd a7, 1736(a5) -- Store: [0x800045d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:fsd fa2, 1744(a5)
Current Store : [0x80000fb4] : sd a7, 1752(a5) -- Store: [0x800045e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa2, 1760(a5)
Current Store : [0x80000fd0] : sd a7, 1768(a5) -- Store: [0x800045f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000fe0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000fe4]:csrrs a7, fflags, zero
	-[0x80000fe8]:fsd fa2, 1776(a5)
Current Store : [0x80000fec] : sd a7, 1784(a5) -- Store: [0x80004608]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ffc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001000]:csrrs a7, fflags, zero
	-[0x80001004]:fsd fa2, 1792(a5)
Current Store : [0x80001008] : sd a7, 1800(a5) -- Store: [0x80004618]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001018]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000101c]:csrrs a7, fflags, zero
	-[0x80001020]:fsd fa2, 1808(a5)
Current Store : [0x80001024] : sd a7, 1816(a5) -- Store: [0x80004628]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001034]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001038]:csrrs a7, fflags, zero
	-[0x8000103c]:fsd fa2, 1824(a5)
Current Store : [0x80001040] : sd a7, 1832(a5) -- Store: [0x80004638]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001050]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001054]:csrrs a7, fflags, zero
	-[0x80001058]:fsd fa2, 1840(a5)
Current Store : [0x8000105c] : sd a7, 1848(a5) -- Store: [0x80004648]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000106c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001070]:csrrs a7, fflags, zero
	-[0x80001074]:fsd fa2, 1856(a5)
Current Store : [0x80001078] : sd a7, 1864(a5) -- Store: [0x80004658]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001088]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000108c]:csrrs a7, fflags, zero
	-[0x80001090]:fsd fa2, 1872(a5)
Current Store : [0x80001094] : sd a7, 1880(a5) -- Store: [0x80004668]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa2, 1888(a5)
Current Store : [0x800010b0] : sd a7, 1896(a5) -- Store: [0x80004678]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010c0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800010c4]:csrrs a7, fflags, zero
	-[0x800010c8]:fsd fa2, 1904(a5)
Current Store : [0x800010cc] : sd a7, 1912(a5) -- Store: [0x80004688]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010dc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800010e0]:csrrs a7, fflags, zero
	-[0x800010e4]:fsd fa2, 1920(a5)
Current Store : [0x800010e8] : sd a7, 1928(a5) -- Store: [0x80004698]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800010f8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800010fc]:csrrs a7, fflags, zero
	-[0x80001100]:fsd fa2, 1936(a5)
Current Store : [0x80001104] : sd a7, 1944(a5) -- Store: [0x800046a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001114]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001118]:csrrs a7, fflags, zero
	-[0x8000111c]:fsd fa2, 1952(a5)
Current Store : [0x80001120] : sd a7, 1960(a5) -- Store: [0x800046b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001130]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001134]:csrrs a7, fflags, zero
	-[0x80001138]:fsd fa2, 1968(a5)
Current Store : [0x8000113c] : sd a7, 1976(a5) -- Store: [0x800046c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000114c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001150]:csrrs a7, fflags, zero
	-[0x80001154]:fsd fa2, 1984(a5)
Current Store : [0x80001158] : sd a7, 1992(a5) -- Store: [0x800046d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001168]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000116c]:csrrs a7, fflags, zero
	-[0x80001170]:fsd fa2, 2000(a5)
Current Store : [0x80001174] : sd a7, 2008(a5) -- Store: [0x800046e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001184]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa2, 2016(a5)
Current Store : [0x80001190] : sd a7, 2024(a5) -- Store: [0x800046f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011ac]:fadd.d fa2, fa0, fa1, dyn
	-[0x800011b0]:csrrs a7, fflags, zero
	-[0x800011b4]:fsd fa2, 0(a5)
Current Store : [0x800011b8] : sd a7, 8(a5) -- Store: [0x80004708]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800011c8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800011cc]:csrrs a7, fflags, zero
	-[0x800011d0]:fsd fa2, 16(a5)
Current Store : [0x800011d4] : sd a7, 24(a5) -- Store: [0x80004718]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa2, 32(a5)
Current Store : [0x800011f0] : sd a7, 40(a5) -- Store: [0x80004728]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001200]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001204]:csrrs a7, fflags, zero
	-[0x80001208]:fsd fa2, 48(a5)
Current Store : [0x8000120c] : sd a7, 56(a5) -- Store: [0x80004738]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000121c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001220]:csrrs a7, fflags, zero
	-[0x80001224]:fsd fa2, 64(a5)
Current Store : [0x80001228] : sd a7, 72(a5) -- Store: [0x80004748]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001238]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000123c]:csrrs a7, fflags, zero
	-[0x80001240]:fsd fa2, 80(a5)
Current Store : [0x80001244] : sd a7, 88(a5) -- Store: [0x80004758]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001254]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001258]:csrrs a7, fflags, zero
	-[0x8000125c]:fsd fa2, 96(a5)
Current Store : [0x80001260] : sd a7, 104(a5) -- Store: [0x80004768]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001270]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001274]:csrrs a7, fflags, zero
	-[0x80001278]:fsd fa2, 112(a5)
Current Store : [0x8000127c] : sd a7, 120(a5) -- Store: [0x80004778]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000128c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001290]:csrrs a7, fflags, zero
	-[0x80001294]:fsd fa2, 128(a5)
Current Store : [0x80001298] : sd a7, 136(a5) -- Store: [0x80004788]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800012a8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:fsd fa2, 144(a5)
Current Store : [0x800012b4] : sd a7, 152(a5) -- Store: [0x80004798]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa2, 160(a5)
Current Store : [0x800012d0] : sd a7, 168(a5) -- Store: [0x800047a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800012e0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800012e4]:csrrs a7, fflags, zero
	-[0x800012e8]:fsd fa2, 176(a5)
Current Store : [0x800012ec] : sd a7, 184(a5) -- Store: [0x800047b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012fc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001300]:csrrs a7, fflags, zero
	-[0x80001304]:fsd fa2, 192(a5)
Current Store : [0x80001308] : sd a7, 200(a5) -- Store: [0x800047c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001318]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000131c]:csrrs a7, fflags, zero
	-[0x80001320]:fsd fa2, 208(a5)
Current Store : [0x80001324] : sd a7, 216(a5) -- Store: [0x800047d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001334]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001338]:csrrs a7, fflags, zero
	-[0x8000133c]:fsd fa2, 224(a5)
Current Store : [0x80001340] : sd a7, 232(a5) -- Store: [0x800047e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001350]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001354]:csrrs a7, fflags, zero
	-[0x80001358]:fsd fa2, 240(a5)
Current Store : [0x8000135c] : sd a7, 248(a5) -- Store: [0x800047f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000136c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001370]:csrrs a7, fflags, zero
	-[0x80001374]:fsd fa2, 256(a5)
Current Store : [0x80001378] : sd a7, 264(a5) -- Store: [0x80004808]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001388]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000138c]:csrrs a7, fflags, zero
	-[0x80001390]:fsd fa2, 272(a5)
Current Store : [0x80001394] : sd a7, 280(a5) -- Store: [0x80004818]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013a4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800013a8]:csrrs a7, fflags, zero
	-[0x800013ac]:fsd fa2, 288(a5)
Current Store : [0x800013b0] : sd a7, 296(a5) -- Store: [0x80004828]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800013c0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800013c4]:csrrs a7, fflags, zero
	-[0x800013c8]:fsd fa2, 304(a5)
Current Store : [0x800013cc] : sd a7, 312(a5) -- Store: [0x80004838]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013dc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800013e0]:csrrs a7, fflags, zero
	-[0x800013e4]:fsd fa2, 320(a5)
Current Store : [0x800013e8] : sd a7, 328(a5) -- Store: [0x80004848]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800013f8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800013fc]:csrrs a7, fflags, zero
	-[0x80001400]:fsd fa2, 336(a5)
Current Store : [0x80001404] : sd a7, 344(a5) -- Store: [0x80004858]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001414]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001418]:csrrs a7, fflags, zero
	-[0x8000141c]:fsd fa2, 352(a5)
Current Store : [0x80001420] : sd a7, 360(a5) -- Store: [0x80004868]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001430]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001434]:csrrs a7, fflags, zero
	-[0x80001438]:fsd fa2, 368(a5)
Current Store : [0x8000143c] : sd a7, 376(a5) -- Store: [0x80004878]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000144c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001450]:csrrs a7, fflags, zero
	-[0x80001454]:fsd fa2, 384(a5)
Current Store : [0x80001458] : sd a7, 392(a5) -- Store: [0x80004888]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001468]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000146c]:csrrs a7, fflags, zero
	-[0x80001470]:fsd fa2, 400(a5)
Current Store : [0x80001474] : sd a7, 408(a5) -- Store: [0x80004898]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001484]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001488]:csrrs a7, fflags, zero
	-[0x8000148c]:fsd fa2, 416(a5)
Current Store : [0x80001490] : sd a7, 424(a5) -- Store: [0x800048a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800014a0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800014a4]:csrrs a7, fflags, zero
	-[0x800014a8]:fsd fa2, 432(a5)
Current Store : [0x800014ac] : sd a7, 440(a5) -- Store: [0x800048b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014bc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800014c0]:csrrs a7, fflags, zero
	-[0x800014c4]:fsd fa2, 448(a5)
Current Store : [0x800014c8] : sd a7, 456(a5) -- Store: [0x800048c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800014d8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800014dc]:csrrs a7, fflags, zero
	-[0x800014e0]:fsd fa2, 464(a5)
Current Store : [0x800014e4] : sd a7, 472(a5) -- Store: [0x800048d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014f4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800014f8]:csrrs a7, fflags, zero
	-[0x800014fc]:fsd fa2, 480(a5)
Current Store : [0x80001500] : sd a7, 488(a5) -- Store: [0x800048e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001510]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001514]:csrrs a7, fflags, zero
	-[0x80001518]:fsd fa2, 496(a5)
Current Store : [0x8000151c] : sd a7, 504(a5) -- Store: [0x800048f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000152c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001530]:csrrs a7, fflags, zero
	-[0x80001534]:fsd fa2, 512(a5)
Current Store : [0x80001538] : sd a7, 520(a5) -- Store: [0x80004908]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001548]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000154c]:csrrs a7, fflags, zero
	-[0x80001550]:fsd fa2, 528(a5)
Current Store : [0x80001554] : sd a7, 536(a5) -- Store: [0x80004918]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001564]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001568]:csrrs a7, fflags, zero
	-[0x8000156c]:fsd fa2, 544(a5)
Current Store : [0x80001570] : sd a7, 552(a5) -- Store: [0x80004928]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001580]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001584]:csrrs a7, fflags, zero
	-[0x80001588]:fsd fa2, 560(a5)
Current Store : [0x8000158c] : sd a7, 568(a5) -- Store: [0x80004938]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000159c]:fadd.d fa2, fa0, fa1, dyn
	-[0x800015a0]:csrrs a7, fflags, zero
	-[0x800015a4]:fsd fa2, 576(a5)
Current Store : [0x800015a8] : sd a7, 584(a5) -- Store: [0x80004948]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800015b8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800015bc]:csrrs a7, fflags, zero
	-[0x800015c0]:fsd fa2, 592(a5)
Current Store : [0x800015c4] : sd a7, 600(a5) -- Store: [0x80004958]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015d4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800015d8]:csrrs a7, fflags, zero
	-[0x800015dc]:fsd fa2, 608(a5)
Current Store : [0x800015e0] : sd a7, 616(a5) -- Store: [0x80004968]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800015f0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800015f4]:csrrs a7, fflags, zero
	-[0x800015f8]:fsd fa2, 624(a5)
Current Store : [0x800015fc] : sd a7, 632(a5) -- Store: [0x80004978]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000160c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:fsd fa2, 640(a5)
Current Store : [0x80001618] : sd a7, 648(a5) -- Store: [0x80004988]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001628]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000162c]:csrrs a7, fflags, zero
	-[0x80001630]:fsd fa2, 656(a5)
Current Store : [0x80001634] : sd a7, 664(a5) -- Store: [0x80004998]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001644]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001648]:csrrs a7, fflags, zero
	-[0x8000164c]:fsd fa2, 672(a5)
Current Store : [0x80001650] : sd a7, 680(a5) -- Store: [0x800049a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001660]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001664]:csrrs a7, fflags, zero
	-[0x80001668]:fsd fa2, 688(a5)
Current Store : [0x8000166c] : sd a7, 696(a5) -- Store: [0x800049b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000167c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001680]:csrrs a7, fflags, zero
	-[0x80001684]:fsd fa2, 704(a5)
Current Store : [0x80001688] : sd a7, 712(a5) -- Store: [0x800049c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001698]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000169c]:csrrs a7, fflags, zero
	-[0x800016a0]:fsd fa2, 720(a5)
Current Store : [0x800016a4] : sd a7, 728(a5) -- Store: [0x800049d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800016b4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800016b8]:csrrs a7, fflags, zero
	-[0x800016bc]:fsd fa2, 736(a5)
Current Store : [0x800016c0] : sd a7, 744(a5) -- Store: [0x800049e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800016d0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800016d4]:csrrs a7, fflags, zero
	-[0x800016d8]:fsd fa2, 752(a5)
Current Store : [0x800016dc] : sd a7, 760(a5) -- Store: [0x800049f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016ec]:fadd.d fa2, fa0, fa1, dyn
	-[0x800016f0]:csrrs a7, fflags, zero
	-[0x800016f4]:fsd fa2, 768(a5)
Current Store : [0x800016f8] : sd a7, 776(a5) -- Store: [0x80004a08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001708]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000170c]:csrrs a7, fflags, zero
	-[0x80001710]:fsd fa2, 784(a5)
Current Store : [0x80001714] : sd a7, 792(a5) -- Store: [0x80004a18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001724]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001728]:csrrs a7, fflags, zero
	-[0x8000172c]:fsd fa2, 800(a5)
Current Store : [0x80001730] : sd a7, 808(a5) -- Store: [0x80004a28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001740]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001744]:csrrs a7, fflags, zero
	-[0x80001748]:fsd fa2, 816(a5)
Current Store : [0x8000174c] : sd a7, 824(a5) -- Store: [0x80004a38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000175c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001760]:csrrs a7, fflags, zero
	-[0x80001764]:fsd fa2, 832(a5)
Current Store : [0x80001768] : sd a7, 840(a5) -- Store: [0x80004a48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001778]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000177c]:csrrs a7, fflags, zero
	-[0x80001780]:fsd fa2, 848(a5)
Current Store : [0x80001784] : sd a7, 856(a5) -- Store: [0x80004a58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001794]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001798]:csrrs a7, fflags, zero
	-[0x8000179c]:fsd fa2, 864(a5)
Current Store : [0x800017a0] : sd a7, 872(a5) -- Store: [0x80004a68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800017b0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800017b4]:csrrs a7, fflags, zero
	-[0x800017b8]:fsd fa2, 880(a5)
Current Store : [0x800017bc] : sd a7, 888(a5) -- Store: [0x80004a78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800017cc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800017d0]:csrrs a7, fflags, zero
	-[0x800017d4]:fsd fa2, 896(a5)
Current Store : [0x800017d8] : sd a7, 904(a5) -- Store: [0x80004a88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800017e8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800017ec]:csrrs a7, fflags, zero
	-[0x800017f0]:fsd fa2, 912(a5)
Current Store : [0x800017f4] : sd a7, 920(a5) -- Store: [0x80004a98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001804]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001808]:csrrs a7, fflags, zero
	-[0x8000180c]:fsd fa2, 928(a5)
Current Store : [0x80001810] : sd a7, 936(a5) -- Store: [0x80004aa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001820]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001824]:csrrs a7, fflags, zero
	-[0x80001828]:fsd fa2, 944(a5)
Current Store : [0x8000182c] : sd a7, 952(a5) -- Store: [0x80004ab8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000183c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001840]:csrrs a7, fflags, zero
	-[0x80001844]:fsd fa2, 960(a5)
Current Store : [0x80001848] : sd a7, 968(a5) -- Store: [0x80004ac8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001858]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000185c]:csrrs a7, fflags, zero
	-[0x80001860]:fsd fa2, 976(a5)
Current Store : [0x80001864] : sd a7, 984(a5) -- Store: [0x80004ad8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001874]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001878]:csrrs a7, fflags, zero
	-[0x8000187c]:fsd fa2, 992(a5)
Current Store : [0x80001880] : sd a7, 1000(a5) -- Store: [0x80004ae8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001890]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001894]:csrrs a7, fflags, zero
	-[0x80001898]:fsd fa2, 1008(a5)
Current Store : [0x8000189c] : sd a7, 1016(a5) -- Store: [0x80004af8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800018ac]:fadd.d fa2, fa0, fa1, dyn
	-[0x800018b0]:csrrs a7, fflags, zero
	-[0x800018b4]:fsd fa2, 1024(a5)
Current Store : [0x800018b8] : sd a7, 1032(a5) -- Store: [0x80004b08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800018c8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800018cc]:csrrs a7, fflags, zero
	-[0x800018d0]:fsd fa2, 1040(a5)
Current Store : [0x800018d4] : sd a7, 1048(a5) -- Store: [0x80004b18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800018e4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800018e8]:csrrs a7, fflags, zero
	-[0x800018ec]:fsd fa2, 1056(a5)
Current Store : [0x800018f0] : sd a7, 1064(a5) -- Store: [0x80004b28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001900]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001904]:csrrs a7, fflags, zero
	-[0x80001908]:fsd fa2, 1072(a5)
Current Store : [0x8000190c] : sd a7, 1080(a5) -- Store: [0x80004b38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000191c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001920]:csrrs a7, fflags, zero
	-[0x80001924]:fsd fa2, 1088(a5)
Current Store : [0x80001928] : sd a7, 1096(a5) -- Store: [0x80004b48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001938]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000193c]:csrrs a7, fflags, zero
	-[0x80001940]:fsd fa2, 1104(a5)
Current Store : [0x80001944] : sd a7, 1112(a5) -- Store: [0x80004b58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001954]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001958]:csrrs a7, fflags, zero
	-[0x8000195c]:fsd fa2, 1120(a5)
Current Store : [0x80001960] : sd a7, 1128(a5) -- Store: [0x80004b68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001970]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:fsd fa2, 1136(a5)
Current Store : [0x8000197c] : sd a7, 1144(a5) -- Store: [0x80004b78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000198c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001990]:csrrs a7, fflags, zero
	-[0x80001994]:fsd fa2, 1152(a5)
Current Store : [0x80001998] : sd a7, 1160(a5) -- Store: [0x80004b88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019a8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800019ac]:csrrs a7, fflags, zero
	-[0x800019b0]:fsd fa2, 1168(a5)
Current Store : [0x800019b4] : sd a7, 1176(a5) -- Store: [0x80004b98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800019c4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800019c8]:csrrs a7, fflags, zero
	-[0x800019cc]:fsd fa2, 1184(a5)
Current Store : [0x800019d0] : sd a7, 1192(a5) -- Store: [0x80004ba8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800019e0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800019e4]:csrrs a7, fflags, zero
	-[0x800019e8]:fsd fa2, 1200(a5)
Current Store : [0x800019ec] : sd a7, 1208(a5) -- Store: [0x80004bb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800019fc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a00]:csrrs a7, fflags, zero
	-[0x80001a04]:fsd fa2, 1216(a5)
Current Store : [0x80001a08] : sd a7, 1224(a5) -- Store: [0x80004bc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001a18]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a1c]:csrrs a7, fflags, zero
	-[0x80001a20]:fsd fa2, 1232(a5)
Current Store : [0x80001a24] : sd a7, 1240(a5) -- Store: [0x80004bd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a34]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a38]:csrrs a7, fflags, zero
	-[0x80001a3c]:fsd fa2, 1248(a5)
Current Store : [0x80001a40] : sd a7, 1256(a5) -- Store: [0x80004be8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001a50]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a54]:csrrs a7, fflags, zero
	-[0x80001a58]:fsd fa2, 1264(a5)
Current Store : [0x80001a5c] : sd a7, 1272(a5) -- Store: [0x80004bf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a6c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a70]:csrrs a7, fflags, zero
	-[0x80001a74]:fsd fa2, 1280(a5)
Current Store : [0x80001a78] : sd a7, 1288(a5) -- Store: [0x80004c08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001a88]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a8c]:csrrs a7, fflags, zero
	-[0x80001a90]:fsd fa2, 1296(a5)
Current Store : [0x80001a94] : sd a7, 1304(a5) -- Store: [0x80004c18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001aa4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001aa8]:csrrs a7, fflags, zero
	-[0x80001aac]:fsd fa2, 1312(a5)
Current Store : [0x80001ab0] : sd a7, 1320(a5) -- Store: [0x80004c28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ac0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001ac4]:csrrs a7, fflags, zero
	-[0x80001ac8]:fsd fa2, 1328(a5)
Current Store : [0x80001acc] : sd a7, 1336(a5) -- Store: [0x80004c38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001adc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001ae0]:csrrs a7, fflags, zero
	-[0x80001ae4]:fsd fa2, 1344(a5)
Current Store : [0x80001ae8] : sd a7, 1352(a5) -- Store: [0x80004c48]:0x0000000000000005





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

|s.no|            signature             |                                                                                                              coverpoints                                                                                                               |                                                         code                                                          |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003f10]<br>0xEADFEEDBEADFEEDB|- opcode : fadd.d<br> - rs1 : f13<br> - rs2 : f13<br> - rd : f13<br> - rs1 == rs2 == rd<br>                                                                                                                                             |[0x800003bc]:fadd.d fa3, fa3, fa3, dyn<br> [0x800003c0]:csrrs a7, fflags, zero<br> [0x800003c4]:fsd fa3, 0(a5)<br>     |
|   2|[0x80003f20]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f21<br> - rs2 : f31<br> - rd : f31<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 4  #nosat<br>                       |[0x800003d8]:fadd.d ft11, fs5, ft11, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsd ft11, 16(a5)<br> |
|   3|[0x80003f30]<br>0x0000000080000390|- rs1 : f5<br> - rs2 : f15<br> - rd : f5<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 3  #nosat<br>                         |[0x800003f4]:fadd.d ft5, ft5, fa5, dyn<br> [0x800003f8]:csrrs a7, fflags, zero<br> [0x800003fc]:fsd ft5, 32(a5)<br>    |
|   4|[0x80003f40]<br>0x0000000080003000|- rs1 : f3<br> - rs2 : f3<br> - rd : f6<br> - rs1 == rs2 != rd<br>                                                                                                                                                                      |[0x80000410]:fadd.d ft6, ft3, ft3, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:fsd ft6, 48(a5)<br>    |
|   5|[0x80003f50]<br>0xEDBEADFEEDBEADFE|- rs1 : f8<br> - rs2 : f28<br> - rd : f25<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 1  #nosat<br> |[0x8000042c]:fadd.d fs9, fs0, ft8, dyn<br> [0x80000430]:csrrs a7, fflags, zero<br> [0x80000434]:fsd fs9, 64(a5)<br>    |
|   6|[0x80003f60]<br>0xADFEEDBEADFEEDBE|- rs1 : f29<br> - rs2 : f19<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 0  #nosat<br>                                               |[0x80000448]:fadd.d fs1, ft9, fs3, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd fs1, 80(a5)<br>    |
|   7|[0x80003f70]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f27<br> - rs2 : f30<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 4  #nosat<br>                                              |[0x80000464]:fadd.d ft8, fs11, ft10, dyn<br> [0x80000468]:csrrs a7, fflags, zero<br> [0x8000046c]:fsd ft8, 96(a5)<br>  |
|   8|[0x80003f80]<br>0xFEEDBEADFEEDBEAD|- rs1 : f22<br> - rs2 : f7<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 3  #nosat<br>                                                |[0x80000480]:fadd.d ft1, fs6, ft7, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd ft1, 112(a5)<br>   |
|   9|[0x80003f90]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f2<br> - rs2 : f5<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 2  #nosat<br>                                                 |[0x8000049c]:fadd.d ft4, ft2, ft5, dyn<br> [0x800004a0]:csrrs a7, fflags, zero<br> [0x800004a4]:fsd ft4, 128(a5)<br>   |
|  10|[0x80003fa0]<br>0x0000000A00000000|- rs1 : f12<br> - rs2 : f24<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 1  #nosat<br>                                               |[0x800004b8]:fadd.d ft3, fa2, fs8, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:fsd ft3, 144(a5)<br>   |
|  11|[0x80003fb0]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f20<br> - rs2 : f27<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 0  #nosat<br>                                               |[0x800004d4]:fadd.d ft7, fs4, fs11, dyn<br> [0x800004d8]:csrrs a7, fflags, zero<br> [0x800004dc]:fsd ft7, 160(a5)<br>  |
|  12|[0x80003fc0]<br>0xEEDBEADFEEDBEADF|- rs1 : f24<br> - rs2 : f18<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 4  #nosat<br>                                              |[0x800004f0]:fadd.d ft9, fs8, fs2, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd ft9, 176(a5)<br>   |
|  13|[0x80003fd0]<br>0x0000000080003010|- rs1 : f30<br> - rs2 : f8<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 3  #nosat<br>                                               |[0x8000050c]:fadd.d fa6, ft10, fs0, dyn<br> [0x80000510]:csrrs a7, fflags, zero<br> [0x80000514]:fsd fa6, 192(a5)<br>  |
|  14|[0x80003fe0]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f1<br> - rs2 : f22<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 2  #nosat<br>                                               |[0x80000528]:fadd.d fs3, ft1, fs6, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsd fs3, 208(a5)<br>   |
|  15|[0x80003ff0]<br>0x6DF56FF76DF56FF7|- rs1 : f18<br> - rs2 : f16<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 1  #nosat<br>                                              |[0x80000544]:fadd.d fs6, fs2, fa6, dyn<br> [0x80000548]:csrrs a7, fflags, zero<br> [0x8000054c]:fsd fs6, 224(a5)<br>   |
|  16|[0x80004000]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f26<br> - rs2 : f10<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 0  #nosat<br>                                              |[0x80000560]:fadd.d fs8, fs10, fa0, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd fs8, 240(a5)<br>  |
|  17|[0x80004010]<br>0x0000000A00006000|- rs1 : f31<br> - rs2 : f25<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 4  #nosat<br>                                               |[0x8000057c]:fadd.d ft2, ft11, fs9, dyn<br> [0x80000580]:csrrs a7, fflags, zero<br> [0x80000584]:fsd ft2, 256(a5)<br>  |
|  18|[0x80004020]<br>0xF56FF76DF56FF76D|- rs1 : f16<br> - rs2 : f4<br> - rd : f14<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 3  #nosat<br>                                               |[0x80000598]:fadd.d fa4, fa6, ft4, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd fa4, 272(a5)<br>   |
|  19|[0x80004030]<br>0x56FF76DF56FF76DF|- rs1 : f0<br> - rs2 : f14<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 2  #nosat<br>                                               |[0x800005b4]:fadd.d fa0, ft0, fa4, dyn<br> [0x800005b8]:csrrs a7, fflags, zero<br> [0x800005bc]:fsd fa0, 288(a5)<br>   |
|  20|[0x80004040]<br>0x76DF56FF76DF56FF|- rs1 : f9<br> - rs2 : f0<br> - rd : f26<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 1  #nosat<br>                                                |[0x800005d0]:fadd.d fs10, fs1, ft0, dyn<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:fsd fs10, 304(a5)<br> |
|  21|[0x80004050]<br>0x0000000000000005|- rs1 : f28<br> - rs2 : f20<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 0  #nosat<br>                                              |[0x800005ec]:fadd.d fa7, ft8, fs4, dyn<br> [0x800005f0]:csrrs a7, fflags, zero<br> [0x800005f4]:fsd fa7, 320(a5)<br>   |
|  22|[0x80004060]<br>0xF76DF56FF76DF56F|- rs1 : f7<br> - rs2 : f17<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 4  #nosat<br>                                               |[0x80000608]:fadd.d ft10, ft7, fa7, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsd ft10, 336(a5)<br> |
|  23|[0x80004070]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f10<br> - rs2 : f12<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 3  #nosat<br>                                              |[0x80000624]:fadd.d fs11, fa0, fa2, dyn<br> [0x80000628]:csrrs a7, fflags, zero<br> [0x8000062c]:fsd fs11, 352(a5)<br> |
|  24|[0x80004080]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f4<br> - rs2 : f26<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 2  #nosat<br>                                               |[0x80000640]:fadd.d fs7, ft4, fs10, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fs7, 368(a5)<br>  |
|  25|[0x80004090]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f25<br> - rs2 : f9<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 1  #nosat<br>                                               |[0x8000065c]:fadd.d fa2, fs9, fs1, dyn<br> [0x80000660]:csrrs a7, fflags, zero<br> [0x80000664]:fsd fa2, 384(a5)<br>   |
|  26|[0x800040a0]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f14<br> - rs2 : f2<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 0  #nosat<br>                                               |[0x80000678]:fadd.d fa1, fa4, ft2, dyn<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:fsd fa1, 400(a5)<br>   |
|  27|[0x800040b0]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f6<br> - rs2 : f11<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 4  #nosat<br>                                                |[0x80000694]:fadd.d fs0, ft6, fa1, dyn<br> [0x80000698]:csrrs a7, fflags, zero<br> [0x8000069c]:fsd fs0, 416(a5)<br>   |
|  28|[0x800040c0]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f11<br> - rs2 : f23<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 3  #nosat<br>                                              |[0x800006b0]:fadd.d fs4, fa1, fs7, dyn<br> [0x800006b4]:csrrs a7, fflags, zero<br> [0x800006b8]:fsd fs4, 432(a5)<br>   |
|  29|[0x800040d0]<br>0x0000000080003F10|- rs1 : f17<br> - rs2 : f21<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 2  #nosat<br>                                              |[0x800006cc]:fadd.d fa5, fa7, fs5, dyn<br> [0x800006d0]:csrrs a7, fflags, zero<br> [0x800006d4]:fsd fa5, 448(a5)<br>   |
|  30|[0x800040e0]<br>0x0000000000000000|- rs1 : f23<br> - rs2 : f6<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 1  #nosat<br>                                                |[0x800006e8]:fadd.d ft0, fs7, ft6, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd ft0, 464(a5)<br>   |
|  31|[0x800040f0]<br>0xDBEADFEEDBEADFEE|- rs1 : f19<br> - rs2 : f1<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 0  #nosat<br>                                               |[0x80000704]:fadd.d fs5, fs3, ft1, dyn<br> [0x80000708]:csrrs a7, fflags, zero<br> [0x8000070c]:fsd fs5, 480(a5)<br>   |
|  32|[0x80004100]<br>0xDF56FF76DF56FF76|- rs1 : f15<br> - rs2 : f29<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 4  #nosat<br>                                              |[0x80000720]:fadd.d fs2, fa5, ft9, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd fs2, 496(a5)<br>   |
|  33|[0x80004110]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 3  #nosat<br>                                                                                             |[0x8000073c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000740]:csrrs a7, fflags, zero<br> [0x80000744]:fsd fa2, 512(a5)<br>   |
|  34|[0x80004120]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 2  #nosat<br>                                                                                             |[0x80000758]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000075c]:csrrs a7, fflags, zero<br> [0x80000760]:fsd fa2, 528(a5)<br>   |
|  35|[0x80004130]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 1  #nosat<br>                                                                                             |[0x80000774]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000778]:csrrs a7, fflags, zero<br> [0x8000077c]:fsd fa2, 544(a5)<br>   |
|  36|[0x80004140]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 0  #nosat<br>                                                                                             |[0x80000790]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa2, 560(a5)<br>   |
|  37|[0x80004150]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 4  #nosat<br>                                                                                             |[0x800007ac]:fadd.d fa2, fa0, fa1, dyn<br> [0x800007b0]:csrrs a7, fflags, zero<br> [0x800007b4]:fsd fa2, 576(a5)<br>   |
|  38|[0x80004160]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 3  #nosat<br>                                                                                             |[0x800007c8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsd fa2, 592(a5)<br>   |
|  39|[0x80004170]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 2  #nosat<br>                                                                                             |[0x800007e4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800007e8]:csrrs a7, fflags, zero<br> [0x800007ec]:fsd fa2, 608(a5)<br>   |
|  40|[0x80004180]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 1  #nosat<br>                                                                                             |[0x80000800]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa2, 624(a5)<br>   |
|  41|[0x80004190]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 0  #nosat<br>                                                                                             |[0x8000081c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000820]:csrrs a7, fflags, zero<br> [0x80000824]:fsd fa2, 640(a5)<br>   |
|  42|[0x800041a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 4  #nosat<br>                                                                                             |[0x80000838]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:fsd fa2, 656(a5)<br>   |
|  43|[0x800041b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 3  #nosat<br>                                                                                             |[0x80000854]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000858]:csrrs a7, fflags, zero<br> [0x8000085c]:fsd fa2, 672(a5)<br>   |
|  44|[0x800041c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 2  #nosat<br>                                                                                             |[0x80000870]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:fsd fa2, 688(a5)<br>   |
|  45|[0x800041d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 1  #nosat<br>                                                                                             |[0x8000088c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000890]:csrrs a7, fflags, zero<br> [0x80000894]:fsd fa2, 704(a5)<br>   |
|  46|[0x800041e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 0  #nosat<br>                                                                                             |[0x800008a8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:fsd fa2, 720(a5)<br>   |
|  47|[0x800041f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 4  #nosat<br>                                                                                             |[0x800008c4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800008c8]:csrrs a7, fflags, zero<br> [0x800008cc]:fsd fa2, 736(a5)<br>   |
|  48|[0x80004200]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 3  #nosat<br>                                                                                             |[0x800008e0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa2, 752(a5)<br>   |
|  49|[0x80004210]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 2  #nosat<br>                                                                                             |[0x800008fc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000900]:csrrs a7, fflags, zero<br> [0x80000904]:fsd fa2, 768(a5)<br>   |
|  50|[0x80004220]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 1  #nosat<br>                                                                                             |[0x80000918]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:fsd fa2, 784(a5)<br>   |
|  51|[0x80004230]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 0  #nosat<br>                                                                                             |[0x80000934]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000938]:csrrs a7, fflags, zero<br> [0x8000093c]:fsd fa2, 800(a5)<br>   |
|  52|[0x80004240]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 4  #nosat<br>                                                                                             |[0x80000950]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000954]:csrrs a7, fflags, zero<br> [0x80000958]:fsd fa2, 816(a5)<br>   |
|  53|[0x80004250]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 3  #nosat<br>                                                                                             |[0x8000096c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000970]:csrrs a7, fflags, zero<br> [0x80000974]:fsd fa2, 832(a5)<br>   |
|  54|[0x80004260]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 2  #nosat<br>                                                                                             |[0x80000988]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsd fa2, 848(a5)<br>   |
|  55|[0x80004270]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 1  #nosat<br>                                                                                             |[0x800009a4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800009a8]:csrrs a7, fflags, zero<br> [0x800009ac]:fsd fa2, 864(a5)<br>   |
|  56|[0x80004280]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 0  #nosat<br>                                                                                             |[0x800009c0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa2, 880(a5)<br>   |
|  57|[0x80004290]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 4  #nosat<br>                                                                                             |[0x800009dc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800009e0]:csrrs a7, fflags, zero<br> [0x800009e4]:fsd fa2, 896(a5)<br>   |
|  58|[0x800042a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 3  #nosat<br>                                                                                             |[0x800009f8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800009fc]:csrrs a7, fflags, zero<br> [0x80000a00]:fsd fa2, 912(a5)<br>   |
|  59|[0x800042b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 2  #nosat<br>                                                                                             |[0x80000a14]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000a18]:csrrs a7, fflags, zero<br> [0x80000a1c]:fsd fa2, 928(a5)<br>   |
|  60|[0x800042c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 1  #nosat<br>                                                                                             |[0x80000a30]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000a34]:csrrs a7, fflags, zero<br> [0x80000a38]:fsd fa2, 944(a5)<br>   |
|  61|[0x800042d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 0  #nosat<br>                                                                                             |[0x80000a4c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000a50]:csrrs a7, fflags, zero<br> [0x80000a54]:fsd fa2, 960(a5)<br>   |
|  62|[0x800042e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 4  #nosat<br>                                                                                             |[0x80000a68]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:fsd fa2, 976(a5)<br>   |
|  63|[0x800042f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 3  #nosat<br>                                                                                             |[0x80000a84]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000a88]:csrrs a7, fflags, zero<br> [0x80000a8c]:fsd fa2, 992(a5)<br>   |
|  64|[0x80004300]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 2  #nosat<br>                                                                                             |[0x80000aa0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa2, 1008(a5)<br>  |
|  65|[0x80004310]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 1  #nosat<br>                                                                                             |[0x80000abc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000ac0]:csrrs a7, fflags, zero<br> [0x80000ac4]:fsd fa2, 1024(a5)<br>  |
|  66|[0x80004320]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 0  #nosat<br>                                                                                             |[0x80000ad8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000adc]:csrrs a7, fflags, zero<br> [0x80000ae0]:fsd fa2, 1040(a5)<br>  |
|  67|[0x80004330]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 4  #nosat<br>                                                                                             |[0x80000af4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000af8]:csrrs a7, fflags, zero<br> [0x80000afc]:fsd fa2, 1056(a5)<br>  |
|  68|[0x80004340]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 3  #nosat<br>                                                                                             |[0x80000b10]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000b14]:csrrs a7, fflags, zero<br> [0x80000b18]:fsd fa2, 1072(a5)<br>  |
|  69|[0x80004350]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 2  #nosat<br>                                                                                             |[0x80000b2c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000b30]:csrrs a7, fflags, zero<br> [0x80000b34]:fsd fa2, 1088(a5)<br>  |
|  70|[0x80004360]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 1  #nosat<br>                                                                                             |[0x80000b48]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000b4c]:csrrs a7, fflags, zero<br> [0x80000b50]:fsd fa2, 1104(a5)<br>  |
|  71|[0x80004370]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 0  #nosat<br>                                                                                             |[0x80000b64]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000b68]:csrrs a7, fflags, zero<br> [0x80000b6c]:fsd fa2, 1120(a5)<br>  |
|  72|[0x80004380]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 4  #nosat<br>                                                                                             |[0x80000b80]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa2, 1136(a5)<br>  |
|  73|[0x80004390]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 3  #nosat<br>                                                                                             |[0x80000b9c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000ba0]:csrrs a7, fflags, zero<br> [0x80000ba4]:fsd fa2, 1152(a5)<br>  |
|  74|[0x800043a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 2  #nosat<br>                                                                                             |[0x80000bb8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000bbc]:csrrs a7, fflags, zero<br> [0x80000bc0]:fsd fa2, 1168(a5)<br>  |
|  75|[0x800043b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 1  #nosat<br>                                                                                             |[0x80000bd4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000bd8]:csrrs a7, fflags, zero<br> [0x80000bdc]:fsd fa2, 1184(a5)<br>  |
|  76|[0x800043c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 0  #nosat<br>                                                                                             |[0x80000bf0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000bf4]:csrrs a7, fflags, zero<br> [0x80000bf8]:fsd fa2, 1200(a5)<br>  |
|  77|[0x800043d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 4  #nosat<br>                                                                                             |[0x80000c0c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c10]:csrrs a7, fflags, zero<br> [0x80000c14]:fsd fa2, 1216(a5)<br>  |
|  78|[0x800043e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 3  #nosat<br>                                                                                             |[0x80000c28]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c2c]:csrrs a7, fflags, zero<br> [0x80000c30]:fsd fa2, 1232(a5)<br>  |
|  79|[0x800043f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 2  #nosat<br>                                                                                             |[0x80000c44]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c48]:csrrs a7, fflags, zero<br> [0x80000c4c]:fsd fa2, 1248(a5)<br>  |
|  80|[0x80004400]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 1  #nosat<br>                                                                                             |[0x80000c60]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa2, 1264(a5)<br>  |
|  81|[0x80004410]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 0  #nosat<br>                                                                                             |[0x80000c7c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c80]:csrrs a7, fflags, zero<br> [0x80000c84]:fsd fa2, 1280(a5)<br>  |
|  82|[0x80004420]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 4  #nosat<br>                                                                                             |[0x80000c98]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c9c]:csrrs a7, fflags, zero<br> [0x80000ca0]:fsd fa2, 1296(a5)<br>  |
|  83|[0x80004430]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 3  #nosat<br>                                                                                             |[0x80000cb4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000cb8]:csrrs a7, fflags, zero<br> [0x80000cbc]:fsd fa2, 1312(a5)<br>  |
|  84|[0x80004440]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 2  #nosat<br>                                                                                             |[0x80000cd0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000cd4]:csrrs a7, fflags, zero<br> [0x80000cd8]:fsd fa2, 1328(a5)<br>  |
|  85|[0x80004450]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 1  #nosat<br>                                                                                             |[0x80000cec]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000cf0]:csrrs a7, fflags, zero<br> [0x80000cf4]:fsd fa2, 1344(a5)<br>  |
|  86|[0x80004460]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 0  #nosat<br>                                                                                             |[0x80000d08]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d0c]:csrrs a7, fflags, zero<br> [0x80000d10]:fsd fa2, 1360(a5)<br>  |
|  87|[0x80004470]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 4  #nosat<br>                                                                                             |[0x80000d24]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d28]:csrrs a7, fflags, zero<br> [0x80000d2c]:fsd fa2, 1376(a5)<br>  |
|  88|[0x80004480]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 3  #nosat<br>                                                                                             |[0x80000d40]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa2, 1392(a5)<br>  |
|  89|[0x80004490]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 2  #nosat<br>                                                                                             |[0x80000d5c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d60]:csrrs a7, fflags, zero<br> [0x80000d64]:fsd fa2, 1408(a5)<br>  |
|  90|[0x800044a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 1  #nosat<br>                                                                                             |[0x80000d78]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d7c]:csrrs a7, fflags, zero<br> [0x80000d80]:fsd fa2, 1424(a5)<br>  |
|  91|[0x800044b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 0  #nosat<br>                                                                                             |[0x80000d94]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d98]:csrrs a7, fflags, zero<br> [0x80000d9c]:fsd fa2, 1440(a5)<br>  |
|  92|[0x800044c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 4  #nosat<br>                                                                                             |[0x80000db0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000db4]:csrrs a7, fflags, zero<br> [0x80000db8]:fsd fa2, 1456(a5)<br>  |
|  93|[0x800044d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 3  #nosat<br>                                                                                             |[0x80000dcc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000dd0]:csrrs a7, fflags, zero<br> [0x80000dd4]:fsd fa2, 1472(a5)<br>  |
|  94|[0x800044e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 2  #nosat<br>                                                                                             |[0x80000de8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000dec]:csrrs a7, fflags, zero<br> [0x80000df0]:fsd fa2, 1488(a5)<br>  |
|  95|[0x800044f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 1  #nosat<br>                                                                                             |[0x80000e04]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e08]:csrrs a7, fflags, zero<br> [0x80000e0c]:fsd fa2, 1504(a5)<br>  |
|  96|[0x80004500]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 0  #nosat<br>                                                                                             |[0x80000e20]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa2, 1520(a5)<br>  |
|  97|[0x80004510]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 4  #nosat<br>                                                                                             |[0x80000e3c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e40]:csrrs a7, fflags, zero<br> [0x80000e44]:fsd fa2, 1536(a5)<br>  |
|  98|[0x80004520]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 3  #nosat<br>                                                                                             |[0x80000e58]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e5c]:csrrs a7, fflags, zero<br> [0x80000e60]:fsd fa2, 1552(a5)<br>  |
|  99|[0x80004530]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 2  #nosat<br>                                                                                             |[0x80000e74]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e78]:csrrs a7, fflags, zero<br> [0x80000e7c]:fsd fa2, 1568(a5)<br>  |
| 100|[0x80004540]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 1  #nosat<br>                                                                                             |[0x80000e90]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e94]:csrrs a7, fflags, zero<br> [0x80000e98]:fsd fa2, 1584(a5)<br>  |
| 101|[0x80004550]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 0  #nosat<br>                                                                                             |[0x80000eac]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000eb0]:csrrs a7, fflags, zero<br> [0x80000eb4]:fsd fa2, 1600(a5)<br>  |
| 102|[0x80004560]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 4  #nosat<br>                                                                                             |[0x80000ec8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000ecc]:csrrs a7, fflags, zero<br> [0x80000ed0]:fsd fa2, 1616(a5)<br>  |
| 103|[0x80004570]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 3  #nosat<br>                                                                                             |[0x80000ee4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa2, 1632(a5)<br>  |
| 104|[0x80004580]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 2  #nosat<br>                                                                                             |[0x80000f00]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f04]:csrrs a7, fflags, zero<br> [0x80000f08]:fsd fa2, 1648(a5)<br>  |
| 105|[0x80004590]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 1  #nosat<br>                                                                                             |[0x80000f1c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f20]:csrrs a7, fflags, zero<br> [0x80000f24]:fsd fa2, 1664(a5)<br>  |
| 106|[0x800045a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 0  #nosat<br>                                                                                             |[0x80000f38]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f3c]:csrrs a7, fflags, zero<br> [0x80000f40]:fsd fa2, 1680(a5)<br>  |
| 107|[0x800045b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 4  #nosat<br>                                                                                             |[0x80000f54]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f58]:csrrs a7, fflags, zero<br> [0x80000f5c]:fsd fa2, 1696(a5)<br>  |
| 108|[0x800045c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 3  #nosat<br>                                                                                             |[0x80000f70]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f74]:csrrs a7, fflags, zero<br> [0x80000f78]:fsd fa2, 1712(a5)<br>  |
| 109|[0x800045d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 2  #nosat<br>                                                                                             |[0x80000f8c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f90]:csrrs a7, fflags, zero<br> [0x80000f94]:fsd fa2, 1728(a5)<br>  |
| 110|[0x800045e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 1  #nosat<br>                                                                                             |[0x80000fa8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:fsd fa2, 1744(a5)<br>  |
| 111|[0x800045f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 0  #nosat<br>                                                                                             |[0x80000fc4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa2, 1760(a5)<br>  |
| 112|[0x80004600]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 4  #nosat<br>                                                                                             |[0x80000fe0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000fe4]:csrrs a7, fflags, zero<br> [0x80000fe8]:fsd fa2, 1776(a5)<br>  |
| 113|[0x80004610]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 3  #nosat<br>                                                                                             |[0x80000ffc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001000]:csrrs a7, fflags, zero<br> [0x80001004]:fsd fa2, 1792(a5)<br>  |
| 114|[0x80004620]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 2  #nosat<br>                                                                                             |[0x80001018]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000101c]:csrrs a7, fflags, zero<br> [0x80001020]:fsd fa2, 1808(a5)<br>  |
| 115|[0x80004630]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 1  #nosat<br>                                                                                             |[0x80001034]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001038]:csrrs a7, fflags, zero<br> [0x8000103c]:fsd fa2, 1824(a5)<br>  |
| 116|[0x80004640]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 0  #nosat<br>                                                                                             |[0x80001050]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001054]:csrrs a7, fflags, zero<br> [0x80001058]:fsd fa2, 1840(a5)<br>  |
| 117|[0x80004650]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 4  #nosat<br>                                                                                             |[0x8000106c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001070]:csrrs a7, fflags, zero<br> [0x80001074]:fsd fa2, 1856(a5)<br>  |
| 118|[0x80004660]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 3  #nosat<br>                                                                                             |[0x80001088]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000108c]:csrrs a7, fflags, zero<br> [0x80001090]:fsd fa2, 1872(a5)<br>  |
| 119|[0x80004670]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 2  #nosat<br>                                                                                             |[0x800010a4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa2, 1888(a5)<br>  |
| 120|[0x80004680]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 1  #nosat<br>                                                                                             |[0x800010c0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800010c4]:csrrs a7, fflags, zero<br> [0x800010c8]:fsd fa2, 1904(a5)<br>  |
| 121|[0x80004690]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 0  #nosat<br>                                                                                             |[0x800010dc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800010e0]:csrrs a7, fflags, zero<br> [0x800010e4]:fsd fa2, 1920(a5)<br>  |
| 122|[0x800046a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 4  #nosat<br>                                                                                             |[0x800010f8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800010fc]:csrrs a7, fflags, zero<br> [0x80001100]:fsd fa2, 1936(a5)<br>  |
| 123|[0x800046b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 3  #nosat<br>                                                                                             |[0x80001114]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001118]:csrrs a7, fflags, zero<br> [0x8000111c]:fsd fa2, 1952(a5)<br>  |
| 124|[0x800046c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 2  #nosat<br>                                                                                             |[0x80001130]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001134]:csrrs a7, fflags, zero<br> [0x80001138]:fsd fa2, 1968(a5)<br>  |
| 125|[0x800046d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 1  #nosat<br>                                                                                             |[0x8000114c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001150]:csrrs a7, fflags, zero<br> [0x80001154]:fsd fa2, 1984(a5)<br>  |
| 126|[0x800046e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 0  #nosat<br>                                                                                             |[0x80001168]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000116c]:csrrs a7, fflags, zero<br> [0x80001170]:fsd fa2, 2000(a5)<br>  |
| 127|[0x800046f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 4  #nosat<br>                                                                                             |[0x80001184]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa2, 2016(a5)<br>  |
| 128|[0x80004700]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 3  #nosat<br>                                                                                             |[0x800011ac]:fadd.d fa2, fa0, fa1, dyn<br> [0x800011b0]:csrrs a7, fflags, zero<br> [0x800011b4]:fsd fa2, 0(a5)<br>     |
| 129|[0x80004710]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 2  #nosat<br>                                                                                             |[0x800011c8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800011cc]:csrrs a7, fflags, zero<br> [0x800011d0]:fsd fa2, 16(a5)<br>    |
| 130|[0x80004720]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 1  #nosat<br>                                                                                             |[0x800011e4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa2, 32(a5)<br>    |
| 131|[0x80004730]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 0  #nosat<br>                                                                                             |[0x80001200]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001204]:csrrs a7, fflags, zero<br> [0x80001208]:fsd fa2, 48(a5)<br>    |
| 132|[0x80004740]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 4  #nosat<br>                                                                                             |[0x8000121c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001220]:csrrs a7, fflags, zero<br> [0x80001224]:fsd fa2, 64(a5)<br>    |
| 133|[0x80004750]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 3  #nosat<br>                                                                                             |[0x80001238]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000123c]:csrrs a7, fflags, zero<br> [0x80001240]:fsd fa2, 80(a5)<br>    |
| 134|[0x80004760]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 2  #nosat<br>                                                                                             |[0x80001254]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001258]:csrrs a7, fflags, zero<br> [0x8000125c]:fsd fa2, 96(a5)<br>    |
| 135|[0x80004770]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 1  #nosat<br>                                                                                             |[0x80001270]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001274]:csrrs a7, fflags, zero<br> [0x80001278]:fsd fa2, 112(a5)<br>   |
| 136|[0x80004780]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 0  #nosat<br>                                                                                             |[0x8000128c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001290]:csrrs a7, fflags, zero<br> [0x80001294]:fsd fa2, 128(a5)<br>   |
| 137|[0x80004790]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 4  #nosat<br>                                                                                             |[0x800012a8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:fsd fa2, 144(a5)<br>   |
| 138|[0x800047a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 3  #nosat<br>                                                                                             |[0x800012c4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa2, 160(a5)<br>   |
| 139|[0x800047b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 2  #nosat<br>                                                                                             |[0x800012e0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800012e4]:csrrs a7, fflags, zero<br> [0x800012e8]:fsd fa2, 176(a5)<br>   |
| 140|[0x800047c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 1  #nosat<br>                                                                                             |[0x800012fc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001300]:csrrs a7, fflags, zero<br> [0x80001304]:fsd fa2, 192(a5)<br>   |
| 141|[0x800047d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 0  #nosat<br>                                                                                             |[0x80001318]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000131c]:csrrs a7, fflags, zero<br> [0x80001320]:fsd fa2, 208(a5)<br>   |
| 142|[0x800047e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 4  #nosat<br>                                                                                             |[0x80001334]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001338]:csrrs a7, fflags, zero<br> [0x8000133c]:fsd fa2, 224(a5)<br>   |
| 143|[0x800047f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 3  #nosat<br>                                                                                             |[0x80001350]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001354]:csrrs a7, fflags, zero<br> [0x80001358]:fsd fa2, 240(a5)<br>   |
| 144|[0x80004800]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 2  #nosat<br>                                                                                             |[0x8000136c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001370]:csrrs a7, fflags, zero<br> [0x80001374]:fsd fa2, 256(a5)<br>   |
| 145|[0x80004810]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 1  #nosat<br>                                                                                             |[0x80001388]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000138c]:csrrs a7, fflags, zero<br> [0x80001390]:fsd fa2, 272(a5)<br>   |
| 146|[0x80004820]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 0  #nosat<br>                                                                                             |[0x800013a4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800013a8]:csrrs a7, fflags, zero<br> [0x800013ac]:fsd fa2, 288(a5)<br>   |
| 147|[0x80004830]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 4  #nosat<br>                                                                                             |[0x800013c0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800013c4]:csrrs a7, fflags, zero<br> [0x800013c8]:fsd fa2, 304(a5)<br>   |
| 148|[0x80004840]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 3  #nosat<br>                                                                                             |[0x800013dc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800013e0]:csrrs a7, fflags, zero<br> [0x800013e4]:fsd fa2, 320(a5)<br>   |
| 149|[0x80004850]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 2  #nosat<br>                                                                                             |[0x800013f8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800013fc]:csrrs a7, fflags, zero<br> [0x80001400]:fsd fa2, 336(a5)<br>   |
| 150|[0x80004860]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 1  #nosat<br>                                                                                             |[0x80001414]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001418]:csrrs a7, fflags, zero<br> [0x8000141c]:fsd fa2, 352(a5)<br>   |
| 151|[0x80004870]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 0  #nosat<br>                                                                                             |[0x80001430]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001434]:csrrs a7, fflags, zero<br> [0x80001438]:fsd fa2, 368(a5)<br>   |
| 152|[0x80004880]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 4  #nosat<br>                                                                                             |[0x8000144c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001450]:csrrs a7, fflags, zero<br> [0x80001454]:fsd fa2, 384(a5)<br>   |
| 153|[0x80004890]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 3  #nosat<br>                                                                                             |[0x80001468]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000146c]:csrrs a7, fflags, zero<br> [0x80001470]:fsd fa2, 400(a5)<br>   |
| 154|[0x800048a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 2  #nosat<br>                                                                                             |[0x80001484]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001488]:csrrs a7, fflags, zero<br> [0x8000148c]:fsd fa2, 416(a5)<br>   |
| 155|[0x800048b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 1  #nosat<br>                                                                                             |[0x800014a0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800014a4]:csrrs a7, fflags, zero<br> [0x800014a8]:fsd fa2, 432(a5)<br>   |
| 156|[0x800048c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 0  #nosat<br>                                                                                             |[0x800014bc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800014c0]:csrrs a7, fflags, zero<br> [0x800014c4]:fsd fa2, 448(a5)<br>   |
| 157|[0x800048d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 4  #nosat<br>                                                                                             |[0x800014d8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800014dc]:csrrs a7, fflags, zero<br> [0x800014e0]:fsd fa2, 464(a5)<br>   |
| 158|[0x800048e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 3  #nosat<br>                                                                                             |[0x800014f4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800014f8]:csrrs a7, fflags, zero<br> [0x800014fc]:fsd fa2, 480(a5)<br>   |
| 159|[0x800048f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 2  #nosat<br>                                                                                             |[0x80001510]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001514]:csrrs a7, fflags, zero<br> [0x80001518]:fsd fa2, 496(a5)<br>   |
| 160|[0x80004900]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 1  #nosat<br>                                                                                             |[0x8000152c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001530]:csrrs a7, fflags, zero<br> [0x80001534]:fsd fa2, 512(a5)<br>   |
| 161|[0x80004910]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 0  #nosat<br>                                                                                             |[0x80001548]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000154c]:csrrs a7, fflags, zero<br> [0x80001550]:fsd fa2, 528(a5)<br>   |
| 162|[0x80004920]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 4  #nosat<br>                                                                                             |[0x80001564]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001568]:csrrs a7, fflags, zero<br> [0x8000156c]:fsd fa2, 544(a5)<br>   |
| 163|[0x80004930]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 3  #nosat<br>                                                                                             |[0x80001580]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001584]:csrrs a7, fflags, zero<br> [0x80001588]:fsd fa2, 560(a5)<br>   |
| 164|[0x80004940]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 2  #nosat<br>                                                                                             |[0x8000159c]:fadd.d fa2, fa0, fa1, dyn<br> [0x800015a0]:csrrs a7, fflags, zero<br> [0x800015a4]:fsd fa2, 576(a5)<br>   |
| 165|[0x80004950]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 1  #nosat<br>                                                                                             |[0x800015b8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800015bc]:csrrs a7, fflags, zero<br> [0x800015c0]:fsd fa2, 592(a5)<br>   |
| 166|[0x80004960]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 0  #nosat<br>                                                                                             |[0x800015d4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800015d8]:csrrs a7, fflags, zero<br> [0x800015dc]:fsd fa2, 608(a5)<br>   |
| 167|[0x80004970]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 4  #nosat<br>                                                                                             |[0x800015f0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800015f4]:csrrs a7, fflags, zero<br> [0x800015f8]:fsd fa2, 624(a5)<br>   |
| 168|[0x80004980]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 3  #nosat<br>                                                                                             |[0x8000160c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:fsd fa2, 640(a5)<br>   |
| 169|[0x80004990]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 2  #nosat<br>                                                                                             |[0x80001628]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000162c]:csrrs a7, fflags, zero<br> [0x80001630]:fsd fa2, 656(a5)<br>   |
| 170|[0x800049a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 1  #nosat<br>                                                                                             |[0x80001644]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001648]:csrrs a7, fflags, zero<br> [0x8000164c]:fsd fa2, 672(a5)<br>   |
| 171|[0x800049b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 0  #nosat<br>                                                                                             |[0x80001660]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001664]:csrrs a7, fflags, zero<br> [0x80001668]:fsd fa2, 688(a5)<br>   |
| 172|[0x800049c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 4  #nosat<br>                                                                                             |[0x8000167c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001680]:csrrs a7, fflags, zero<br> [0x80001684]:fsd fa2, 704(a5)<br>   |
| 173|[0x800049d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 3  #nosat<br>                                                                                             |[0x80001698]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000169c]:csrrs a7, fflags, zero<br> [0x800016a0]:fsd fa2, 720(a5)<br>   |
| 174|[0x800049e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 2  #nosat<br>                                                                                             |[0x800016b4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800016b8]:csrrs a7, fflags, zero<br> [0x800016bc]:fsd fa2, 736(a5)<br>   |
| 175|[0x800049f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 1  #nosat<br>                                                                                             |[0x800016d0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800016d4]:csrrs a7, fflags, zero<br> [0x800016d8]:fsd fa2, 752(a5)<br>   |
| 176|[0x80004a00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 0  #nosat<br>                                                                                             |[0x800016ec]:fadd.d fa2, fa0, fa1, dyn<br> [0x800016f0]:csrrs a7, fflags, zero<br> [0x800016f4]:fsd fa2, 768(a5)<br>   |
| 177|[0x80004a10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 4  #nosat<br>                                                                                             |[0x80001708]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000170c]:csrrs a7, fflags, zero<br> [0x80001710]:fsd fa2, 784(a5)<br>   |
| 178|[0x80004a20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 3  #nosat<br>                                                                                             |[0x80001724]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001728]:csrrs a7, fflags, zero<br> [0x8000172c]:fsd fa2, 800(a5)<br>   |
| 179|[0x80004a30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 2  #nosat<br>                                                                                             |[0x80001740]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001744]:csrrs a7, fflags, zero<br> [0x80001748]:fsd fa2, 816(a5)<br>   |
| 180|[0x80004a40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 1  #nosat<br>                                                                                             |[0x8000175c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001760]:csrrs a7, fflags, zero<br> [0x80001764]:fsd fa2, 832(a5)<br>   |
| 181|[0x80004a50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 0  #nosat<br>                                                                                             |[0x80001778]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000177c]:csrrs a7, fflags, zero<br> [0x80001780]:fsd fa2, 848(a5)<br>   |
| 182|[0x80004a60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 4  #nosat<br>                                                                                             |[0x80001794]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001798]:csrrs a7, fflags, zero<br> [0x8000179c]:fsd fa2, 864(a5)<br>   |
| 183|[0x80004a70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 3  #nosat<br>                                                                                             |[0x800017b0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800017b4]:csrrs a7, fflags, zero<br> [0x800017b8]:fsd fa2, 880(a5)<br>   |
| 184|[0x80004a80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 2  #nosat<br>                                                                                             |[0x800017cc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800017d0]:csrrs a7, fflags, zero<br> [0x800017d4]:fsd fa2, 896(a5)<br>   |
| 185|[0x80004a90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 1  #nosat<br>                                                                                             |[0x800017e8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800017ec]:csrrs a7, fflags, zero<br> [0x800017f0]:fsd fa2, 912(a5)<br>   |
| 186|[0x80004aa0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 0  #nosat<br>                                                                                             |[0x80001804]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001808]:csrrs a7, fflags, zero<br> [0x8000180c]:fsd fa2, 928(a5)<br>   |
| 187|[0x80004ab0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 4  #nosat<br>                                                                                             |[0x80001820]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001824]:csrrs a7, fflags, zero<br> [0x80001828]:fsd fa2, 944(a5)<br>   |
| 188|[0x80004ac0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 3  #nosat<br>                                                                                             |[0x8000183c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001840]:csrrs a7, fflags, zero<br> [0x80001844]:fsd fa2, 960(a5)<br>   |
| 189|[0x80004ad0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 2  #nosat<br>                                                                                             |[0x80001858]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000185c]:csrrs a7, fflags, zero<br> [0x80001860]:fsd fa2, 976(a5)<br>   |
| 190|[0x80004ae0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 1  #nosat<br>                                                                                             |[0x80001874]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001878]:csrrs a7, fflags, zero<br> [0x8000187c]:fsd fa2, 992(a5)<br>   |
| 191|[0x80004af0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 0  #nosat<br>                                                                                             |[0x80001890]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001894]:csrrs a7, fflags, zero<br> [0x80001898]:fsd fa2, 1008(a5)<br>  |
| 192|[0x80004b00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 4  #nosat<br>                                                                                             |[0x800018ac]:fadd.d fa2, fa0, fa1, dyn<br> [0x800018b0]:csrrs a7, fflags, zero<br> [0x800018b4]:fsd fa2, 1024(a5)<br>  |
| 193|[0x80004b10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 3  #nosat<br>                                                                                             |[0x800018c8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800018cc]:csrrs a7, fflags, zero<br> [0x800018d0]:fsd fa2, 1040(a5)<br>  |
| 194|[0x80004b20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 2  #nosat<br>                                                                                             |[0x800018e4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800018e8]:csrrs a7, fflags, zero<br> [0x800018ec]:fsd fa2, 1056(a5)<br>  |
| 195|[0x80004b30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 1  #nosat<br>                                                                                             |[0x80001900]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001904]:csrrs a7, fflags, zero<br> [0x80001908]:fsd fa2, 1072(a5)<br>  |
| 196|[0x80004b40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 0  #nosat<br>                                                                                             |[0x8000191c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001920]:csrrs a7, fflags, zero<br> [0x80001924]:fsd fa2, 1088(a5)<br>  |
| 197|[0x80004b50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 4  #nosat<br>                                                                                             |[0x80001938]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000193c]:csrrs a7, fflags, zero<br> [0x80001940]:fsd fa2, 1104(a5)<br>  |
| 198|[0x80004b60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 3  #nosat<br>                                                                                             |[0x80001954]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001958]:csrrs a7, fflags, zero<br> [0x8000195c]:fsd fa2, 1120(a5)<br>  |
| 199|[0x80004b70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 2  #nosat<br>                                                                                             |[0x80001970]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:fsd fa2, 1136(a5)<br>  |
| 200|[0x80004b80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 1  #nosat<br>                                                                                             |[0x8000198c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001990]:csrrs a7, fflags, zero<br> [0x80001994]:fsd fa2, 1152(a5)<br>  |
| 201|[0x80004b90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 0  #nosat<br>                                                                                             |[0x800019a8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800019ac]:csrrs a7, fflags, zero<br> [0x800019b0]:fsd fa2, 1168(a5)<br>  |
| 202|[0x80004ba0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 4  #nosat<br>                                                                                             |[0x800019c4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800019c8]:csrrs a7, fflags, zero<br> [0x800019cc]:fsd fa2, 1184(a5)<br>  |
| 203|[0x80004bb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 3  #nosat<br>                                                                                             |[0x800019e0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800019e4]:csrrs a7, fflags, zero<br> [0x800019e8]:fsd fa2, 1200(a5)<br>  |
| 204|[0x80004bc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 2  #nosat<br>                                                                                             |[0x800019fc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a00]:csrrs a7, fflags, zero<br> [0x80001a04]:fsd fa2, 1216(a5)<br>  |
| 205|[0x80004bd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 1  #nosat<br>                                                                                             |[0x80001a18]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a1c]:csrrs a7, fflags, zero<br> [0x80001a20]:fsd fa2, 1232(a5)<br>  |
| 206|[0x80004be0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 0  #nosat<br>                                                                                             |[0x80001a34]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a38]:csrrs a7, fflags, zero<br> [0x80001a3c]:fsd fa2, 1248(a5)<br>  |
| 207|[0x80004bf0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 4  #nosat<br>                                                                                             |[0x80001a50]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a54]:csrrs a7, fflags, zero<br> [0x80001a58]:fsd fa2, 1264(a5)<br>  |
| 208|[0x80004c00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 3  #nosat<br>                                                                                             |[0x80001a6c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a70]:csrrs a7, fflags, zero<br> [0x80001a74]:fsd fa2, 1280(a5)<br>  |
| 209|[0x80004c10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 2  #nosat<br>                                                                                             |[0x80001a88]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a8c]:csrrs a7, fflags, zero<br> [0x80001a90]:fsd fa2, 1296(a5)<br>  |
| 210|[0x80004c20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 1  #nosat<br>                                                                                             |[0x80001aa4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001aa8]:csrrs a7, fflags, zero<br> [0x80001aac]:fsd fa2, 1312(a5)<br>  |
| 211|[0x80004c30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 0  #nosat<br>                                                                                             |[0x80001ac0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001ac4]:csrrs a7, fflags, zero<br> [0x80001ac8]:fsd fa2, 1328(a5)<br>  |
| 212|[0x80004c40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 2  #nosat<br>                                                                                             |[0x80001adc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001ae0]:csrrs a7, fflags, zero<br> [0x80001ae4]:fsd fa2, 1344(a5)<br>  |
