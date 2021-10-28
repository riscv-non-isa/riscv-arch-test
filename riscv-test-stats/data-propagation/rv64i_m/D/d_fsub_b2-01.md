
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002220')]      |
| SIG_REGION                | [('0x80005310', '0x80006460', '554 dwords')]      |
| COV_LABELS                | fsub_b2      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fsub_b2-01.S/ref.S    |
| Total Number of coverpoints| 382     |
| Total Coverpoints Hit     | 376      |
| Total Signature Updates   | 554      |
| STAT1                     | 276      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 277     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800021e8]:fsub.d fa2, fa0, fa1, dyn
      [0x800021ec]:csrrs a7, fflags, zero
      [0x800021f0]:fsd fa2, 336(a5)
 -- Signature Address: 0x80006440 Data: 0xD5BFDDB7D5BFDDB7
 -- Redundant Coverpoints hit by the op
      - opcode : fsub.d
      - rs1 : f10
      - rs2 : f11
      - rd : f12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000039 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fsub.d', 'rs1 : f27', 'rs2 : f5', 'rd : f5', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000012 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000011 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003bc]:fsub.d ft5, fs11, ft5, dyn
	-[0x800003c0]:csrrs a7, fflags, zero
	-[0x800003c4]:fsd ft5, 0(a5)
Current Store : [0x800003c8] : sd a7, 8(a5) -- Store: [0x80005318]:0x0000000000000000




Last Coverpoint : ['rs1 : f17', 'rs2 : f17', 'rd : f17', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x800003d8]:fsub.d fa7, fa7, fa7, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsd fa7, 16(a5)
Current Store : [0x800003e4] : sd a7, 24(a5) -- Store: [0x80005328]:0x0000000000000000




Last Coverpoint : ['rs1 : f22', 'rs2 : f12', 'rd : f13', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000003b and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003f4]:fsub.d fa3, fs6, fa2, dyn
	-[0x800003f8]:csrrs a7, fflags, zero
	-[0x800003fc]:fsd fa3, 32(a5)
Current Store : [0x80000400] : sd a7, 40(a5) -- Store: [0x80005338]:0x0000000000000000




Last Coverpoint : ['rs1 : f26', 'rs2 : f0', 'rd : f26', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000039 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000410]:fsub.d fs10, fs10, ft0, dyn
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:fsd fs10, 48(a5)
Current Store : [0x8000041c] : sd a7, 56(a5) -- Store: [0x80005348]:0x0000000000000000




Last Coverpoint : ['rs1 : f14', 'rs2 : f14', 'rd : f20', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x8000042c]:fsub.d fs4, fa4, fa4, dyn
	-[0x80000430]:csrrs a7, fflags, zero
	-[0x80000434]:fsd fs4, 64(a5)
Current Store : [0x80000438] : sd a7, 72(a5) -- Store: [0x80005358]:0x0000000000000000




Last Coverpoint : ['rs1 : f20', 'rs2 : f30', 'rd : f12', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000038 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fsub.d fa2, fs4, ft10, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd fa2, 80(a5)
Current Store : [0x80000454] : sd a7, 88(a5) -- Store: [0x80005368]:0x0000000000000000




Last Coverpoint : ['rs1 : f25', 'rs2 : f11', 'rd : f6', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000058 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000464]:fsub.d ft6, fs9, fa1, dyn
	-[0x80000468]:csrrs a7, fflags, zero
	-[0x8000046c]:fsd ft6, 96(a5)
Current Store : [0x80000470] : sd a7, 104(a5) -- Store: [0x80005378]:0x0000000000000000




Last Coverpoint : ['rs1 : f30', 'rs2 : f22', 'rd : f2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000056 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000480]:fsub.d ft2, ft10, fs6, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd ft2, 112(a5)
Current Store : [0x8000048c] : sd a7, 120(a5) -- Store: [0x80005388]:0x0000000000000000




Last Coverpoint : ['rs1 : f0', 'rs2 : f8', 'rd : f14', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000007 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000049c]:fsub.d fa4, ft0, fs0, dyn
	-[0x800004a0]:csrrs a7, fflags, zero
	-[0x800004a4]:fsd fa4, 128(a5)
Current Store : [0x800004a8] : sd a7, 136(a5) -- Store: [0x80005398]:0x0000000000000000




Last Coverpoint : ['rs1 : f12', 'rs2 : f1', 'rd : f30', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000045 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b8]:fsub.d ft10, fa2, ft1, dyn
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:fsd ft10, 144(a5)
Current Store : [0x800004c4] : sd a7, 152(a5) -- Store: [0x800053a8]:0x0000000000000000




Last Coverpoint : ['rs1 : f18', 'rs2 : f16', 'rd : f10', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000027 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d4]:fsub.d fa0, fs2, fa6, dyn
	-[0x800004d8]:csrrs a7, fflags, zero
	-[0x800004dc]:fsd fa0, 160(a5)
Current Store : [0x800004e0] : sd a7, 168(a5) -- Store: [0x800053b8]:0x0000000000000000




Last Coverpoint : ['rs1 : f1', 'rs2 : f6', 'rd : f21', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000001b and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fsub.d fs5, ft1, ft6, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd fs5, 176(a5)
Current Store : [0x800004fc] : sd a7, 184(a5) -- Store: [0x800053c8]:0x0000000000000000




Last Coverpoint : ['rs1 : f9', 'rs2 : f15', 'rd : f0', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000060 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000050c]:fsub.d ft0, fs1, fa5, dyn
	-[0x80000510]:csrrs a7, fflags, zero
	-[0x80000514]:fsd ft0, 192(a5)
Current Store : [0x80000518] : sd a7, 200(a5) -- Store: [0x800053d8]:0x0000000000000000




Last Coverpoint : ['rs1 : f23', 'rs2 : f26', 'rd : f1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000057 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000528]:fsub.d ft1, fs7, fs10, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsd ft1, 208(a5)
Current Store : [0x80000534] : sd a7, 216(a5) -- Store: [0x800053e8]:0x0000000000000000




Last Coverpoint : ['rs1 : f11', 'rs2 : f2', 'rd : f28', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000029 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000544]:fsub.d ft8, fa1, ft2, dyn
	-[0x80000548]:csrrs a7, fflags, zero
	-[0x8000054c]:fsd ft8, 224(a5)
Current Store : [0x80000550] : sd a7, 232(a5) -- Store: [0x800053f8]:0x0000000000000000




Last Coverpoint : ['rs1 : f13', 'rs2 : f10', 'rd : f22', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000005d and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fsub.d fs6, fa3, fa0, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd fs6, 240(a5)
Current Store : [0x8000056c] : sd a7, 248(a5) -- Store: [0x80005408]:0x0000000000000000




Last Coverpoint : ['rs1 : f6', 'rs2 : f27', 'rd : f19', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000013 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000057c]:fsub.d fs3, ft6, fs11, dyn
	-[0x80000580]:csrrs a7, fflags, zero
	-[0x80000584]:fsd fs3, 256(a5)
Current Store : [0x80000588] : sd a7, 264(a5) -- Store: [0x80005418]:0x0000000000000000




Last Coverpoint : ['rs1 : f2', 'rs2 : f21', 'rd : f9', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000011 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fsub.d fs1, ft2, fs5, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd fs1, 272(a5)
Current Store : [0x800005a4] : sd a7, 280(a5) -- Store: [0x80005428]:0x0000000000000000




Last Coverpoint : ['rs1 : f4', 'rs2 : f31', 'rd : f18', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000004e and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b4]:fsub.d fs2, ft4, ft11, dyn
	-[0x800005b8]:csrrs a7, fflags, zero
	-[0x800005bc]:fsd fs2, 288(a5)
Current Store : [0x800005c0] : sd a7, 296(a5) -- Store: [0x80005438]:0x0000000000000000




Last Coverpoint : ['rs1 : f8', 'rs2 : f23', 'rd : f7', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000005b and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d0]:fsub.d ft7, fs0, fs7, dyn
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:fsd ft7, 304(a5)
Current Store : [0x800005dc] : sd a7, 312(a5) -- Store: [0x80005448]:0x0000000000000000




Last Coverpoint : ['rs1 : f21', 'rs2 : f7', 'rd : f11', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000028 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005ec]:fsub.d fa1, fs5, ft7, dyn
	-[0x800005f0]:csrrs a7, fflags, zero
	-[0x800005f4]:fsd fa1, 320(a5)
Current Store : [0x800005f8] : sd a7, 328(a5) -- Store: [0x80005458]:0x0000000000000000




Last Coverpoint : ['rs1 : f19', 'rs2 : f9', 'rd : f15', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000017 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000608]:fsub.d fa5, fs3, fs1, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:fsd fa5, 336(a5)
Current Store : [0x80000614] : sd a7, 344(a5) -- Store: [0x80005468]:0x0000000000000000




Last Coverpoint : ['rs1 : f10', 'rs2 : f24', 'rd : f29', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000056 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffff7fff52 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000624]:fsub.d ft9, fa0, fs8, dyn
	-[0x80000628]:csrrs a7, fflags, zero
	-[0x8000062c]:fsd ft9, 352(a5)
Current Store : [0x80000630] : sd a7, 360(a5) -- Store: [0x80005478]:0x0000000000000000




Last Coverpoint : ['rs1 : f5', 'rs2 : f25', 'rd : f23', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000000a and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffbfffea and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fsub.d fs7, ft5, fs9, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fs7, 368(a5)
Current Store : [0x8000064c] : sd a7, 376(a5) -- Store: [0x80005488]:0x0000000000000000




Last Coverpoint : ['rs1 : f7', 'rs2 : f20', 'rd : f31', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000041 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffdfff7c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000065c]:fsub.d ft11, ft7, fs4, dyn
	-[0x80000660]:csrrs a7, fflags, zero
	-[0x80000664]:fsd ft11, 384(a5)
Current Store : [0x80000668] : sd a7, 392(a5) -- Store: [0x80005498]:0x0000000000000000




Last Coverpoint : ['rs1 : f16', 'rs2 : f19', 'rd : f25', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000014 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffefffd6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000678]:fsub.d fs9, fa6, fs3, dyn
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:fsd fs9, 400(a5)
Current Store : [0x80000684] : sd a7, 408(a5) -- Store: [0x800054a8]:0x0000000000000000




Last Coverpoint : ['rs1 : f15', 'rs2 : f28', 'rd : f27', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000040 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffff7ff7e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000694]:fsub.d fs11, fa5, ft8, dyn
	-[0x80000698]:csrrs a7, fflags, zero
	-[0x8000069c]:fsd fs11, 416(a5)
Current Store : [0x800006a0] : sd a7, 424(a5) -- Store: [0x800054b8]:0x0000000000000000




Last Coverpoint : ['rs1 : f28', 'rs2 : f13', 'rd : f24', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000061 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffbff3c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b0]:fsub.d fs8, ft8, fa3, dyn
	-[0x800006b4]:csrrs a7, fflags, zero
	-[0x800006b8]:fsd fs8, 432(a5)
Current Store : [0x800006bc] : sd a7, 440(a5) -- Store: [0x800054c8]:0x0000000000000000




Last Coverpoint : ['rs1 : f31', 'rs2 : f18', 'rd : f16', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffdfffa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006cc]:fsub.d fa6, ft11, fs2, dyn
	-[0x800006d0]:csrrs a7, fflags, zero
	-[0x800006d4]:fsd fa6, 448(a5)
Current Store : [0x800006d8] : sd a7, 456(a5) -- Store: [0x800054d8]:0x0000000000000000




Last Coverpoint : ['rs1 : f3', 'rs2 : f29', 'rd : f4', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000003 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffefff8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fsub.d ft4, ft3, ft9, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd ft4, 464(a5)
Current Store : [0x800006f4] : sd a7, 472(a5) -- Store: [0x800054e8]:0x0000000000000000




Last Coverpoint : ['rs1 : f29', 'rs2 : f4', 'rd : f3', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000005e and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffff7f42 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000704]:fsub.d ft3, ft9, ft4, dyn
	-[0x80000708]:csrrs a7, fflags, zero
	-[0x8000070c]:fsd ft3, 480(a5)
Current Store : [0x80000710] : sd a7, 488(a5) -- Store: [0x800054f8]:0x0000000000000000




Last Coverpoint : ['rs1 : f24', 'rs2 : f3', 'rd : f8', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000047 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffbf70 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000720]:fsub.d fs0, fs8, ft3, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd fs0, 496(a5)
Current Store : [0x8000072c] : sd a7, 504(a5) -- Store: [0x80005508]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000000a and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffdfea and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000073c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000740]:csrrs a7, fflags, zero
	-[0x80000744]:fsd fa2, 512(a5)
Current Store : [0x80000748] : sd a7, 520(a5) -- Store: [0x80005518]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000020 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffefbe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000758]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000075c]:csrrs a7, fflags, zero
	-[0x80000760]:fsd fa2, 528(a5)
Current Store : [0x80000764] : sd a7, 536(a5) -- Store: [0x80005528]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000001d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffff7c4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000774]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000778]:csrrs a7, fflags, zero
	-[0x8000077c]:fsd fa2, 544(a5)
Current Store : [0x80000780] : sd a7, 552(a5) -- Store: [0x80005538]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000000c and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffffbe6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000790]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa2, 560(a5)
Current Store : [0x8000079c] : sd a7, 568(a5) -- Store: [0x80005548]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000004b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffffd68 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007ac]:fsub.d fa2, fa0, fa1, dyn
	-[0x800007b0]:csrrs a7, fflags, zero
	-[0x800007b4]:fsd fa2, 576(a5)
Current Store : [0x800007b8] : sd a7, 584(a5) -- Store: [0x80005558]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000046 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffffe72 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsd fa2, 592(a5)
Current Store : [0x800007d4] : sd a7, 600(a5) -- Store: [0x80005568]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000002b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffff28 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007e4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800007e8]:csrrs a7, fflags, zero
	-[0x800007ec]:fsd fa2, 608(a5)
Current Store : [0x800007f0] : sd a7, 616(a5) -- Store: [0x80005578]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000027 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffff70 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000800]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa2, 624(a5)
Current Store : [0x8000080c] : sd a7, 632(a5) -- Store: [0x80005588]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000029 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffff8c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000081c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000820]:csrrs a7, fflags, zero
	-[0x80000824]:fsd fa2, 640(a5)
Current Store : [0x80000828] : sd a7, 648(a5) -- Store: [0x80005598]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000002a and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffff9a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000838]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:fsd fa2, 656(a5)
Current Store : [0x80000844] : sd a7, 664(a5) -- Store: [0x800055a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000028 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffffa6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000854]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000858]:csrrs a7, fflags, zero
	-[0x8000085c]:fsd fa2, 672(a5)
Current Store : [0x80000860] : sd a7, 680(a5) -- Store: [0x800055b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000001e and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffffbe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000870]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:fsd fa2, 688(a5)
Current Store : [0x8000087c] : sd a7, 696(a5) -- Store: [0x800055c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000053 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffff56 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000088c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000890]:csrrs a7, fflags, zero
	-[0x80000894]:fsd fa2, 704(a5)
Current Store : [0x80000898] : sd a7, 712(a5) -- Store: [0x800055d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000054 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000020002a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:fsd fa2, 720(a5)
Current Store : [0x800008b4] : sd a7, 728(a5) -- Store: [0x800055e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000003a and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000010001d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800008c8]:csrrs a7, fflags, zero
	-[0x800008cc]:fsd fa2, 736(a5)
Current Store : [0x800008d0] : sd a7, 744(a5) -- Store: [0x800055f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000000c and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000080006 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa2, 752(a5)
Current Store : [0x800008ec] : sd a7, 760(a5) -- Store: [0x80005608]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000000b and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000040006 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008fc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000900]:csrrs a7, fflags, zero
	-[0x80000904]:fsd fa2, 768(a5)
Current Store : [0x80000908] : sd a7, 776(a5) -- Store: [0x80005618]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000020 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000020010 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000918]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:fsd fa2, 784(a5)
Current Store : [0x80000924] : sd a7, 792(a5) -- Store: [0x80005628]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000028 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000010014 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000934]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000938]:csrrs a7, fflags, zero
	-[0x8000093c]:fsd fa2, 800(a5)
Current Store : [0x80000940] : sd a7, 808(a5) -- Store: [0x80005638]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000046 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000008023 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000950]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000954]:csrrs a7, fflags, zero
	-[0x80000958]:fsd fa2, 816(a5)
Current Store : [0x8000095c] : sd a7, 824(a5) -- Store: [0x80005648]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000022 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000004011 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000096c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000970]:csrrs a7, fflags, zero
	-[0x80000974]:fsd fa2, 832(a5)
Current Store : [0x80000978] : sd a7, 840(a5) -- Store: [0x80005658]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000055 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000202a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000988]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsd fa2, 848(a5)
Current Store : [0x80000994] : sd a7, 856(a5) -- Store: [0x80005668]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000059 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000102c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009a4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800009a8]:csrrs a7, fflags, zero
	-[0x800009ac]:fsd fa2, 864(a5)
Current Store : [0x800009b0] : sd a7, 872(a5) -- Store: [0x80005678]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000050 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000828 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa2, 880(a5)
Current Store : [0x800009cc] : sd a7, 888(a5) -- Store: [0x80005688]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000021 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000410 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009dc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800009e0]:csrrs a7, fflags, zero
	-[0x800009e4]:fsd fa2, 896(a5)
Current Store : [0x800009e8] : sd a7, 904(a5) -- Store: [0x80005698]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000003b and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000021e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009f8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800009fc]:csrrs a7, fflags, zero
	-[0x80000a00]:fsd fa2, 912(a5)
Current Store : [0x80000a04] : sd a7, 920(a5) -- Store: [0x800056a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000029 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000114 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a14]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000a18]:csrrs a7, fflags, zero
	-[0x80000a1c]:fsd fa2, 928(a5)
Current Store : [0x80000a20] : sd a7, 936(a5) -- Store: [0x800056b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000009 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000084 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a30]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000a34]:csrrs a7, fflags, zero
	-[0x80000a38]:fsd fa2, 944(a5)
Current Store : [0x80000a3c] : sd a7, 952(a5) -- Store: [0x800056c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000029 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000054 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a4c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000a50]:csrrs a7, fflags, zero
	-[0x80000a54]:fsd fa2, 960(a5)
Current Store : [0x80000a58] : sd a7, 968(a5) -- Store: [0x800056d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000003a and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000003d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a68]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:fsd fa2, 976(a5)
Current Store : [0x80000a74] : sd a7, 984(a5) -- Store: [0x800056e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000004d and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000036 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a84]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000a88]:csrrs a7, fflags, zero
	-[0x80000a8c]:fsd fa2, 992(a5)
Current Store : [0x80000a90] : sd a7, 1000(a5) -- Store: [0x800056f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000026 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000001b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa2, 1008(a5)
Current Store : [0x80000aac] : sd a7, 1016(a5) -- Store: [0x80005708]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000004 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000006 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000abc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000ac0]:csrrs a7, fflags, zero
	-[0x80000ac4]:fsd fa2, 1024(a5)
Current Store : [0x80000ac8] : sd a7, 1032(a5) -- Store: [0x80005718]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000029 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000016 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ad8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000adc]:csrrs a7, fflags, zero
	-[0x80000ae0]:fsd fa2, 1040(a5)
Current Store : [0x80000ae4] : sd a7, 1048(a5) -- Store: [0x80005728]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000001b and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000000e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000af4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000af8]:csrrs a7, fflags, zero
	-[0x80000afc]:fsd fa2, 1056(a5)
Current Store : [0x80000b00] : sd a7, 1064(a5) -- Store: [0x80005738]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000029 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000015 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b10]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000b14]:csrrs a7, fflags, zero
	-[0x80000b18]:fsd fa2, 1072(a5)
Current Store : [0x80000b1c] : sd a7, 1080(a5) -- Store: [0x80005748]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000005c and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000003fffa4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b2c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000b30]:csrrs a7, fflags, zero
	-[0x80000b34]:fsd fa2, 1088(a5)
Current Store : [0x80000b38] : sd a7, 1096(a5) -- Store: [0x80005758]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000047 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000001fffb9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b48]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000b4c]:csrrs a7, fflags, zero
	-[0x80000b50]:fsd fa2, 1104(a5)
Current Store : [0x80000b54] : sd a7, 1112(a5) -- Store: [0x80005768]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000046 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000fffba and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b64]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000b68]:csrrs a7, fflags, zero
	-[0x80000b6c]:fsd fa2, 1120(a5)
Current Store : [0x80000b70] : sd a7, 1128(a5) -- Store: [0x80005778]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000038 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000007ffc8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa2, 1136(a5)
Current Store : [0x80000b8c] : sd a7, 1144(a5) -- Store: [0x80005788]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000060 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000003ffa0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b9c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000ba0]:csrrs a7, fflags, zero
	-[0x80000ba4]:fsd fa2, 1152(a5)
Current Store : [0x80000ba8] : sd a7, 1160(a5) -- Store: [0x80005798]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000001f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000001ffe1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bb8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000bbc]:csrrs a7, fflags, zero
	-[0x80000bc0]:fsd fa2, 1168(a5)
Current Store : [0x80000bc4] : sd a7, 1176(a5) -- Store: [0x800057a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000016 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000ffea and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bd4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000bd8]:csrrs a7, fflags, zero
	-[0x80000bdc]:fsd fa2, 1184(a5)
Current Store : [0x80000be0] : sd a7, 1192(a5) -- Store: [0x800057b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000000f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000007ff1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bf0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000bf4]:csrrs a7, fflags, zero
	-[0x80000bf8]:fsd fa2, 1200(a5)
Current Store : [0x80000bfc] : sd a7, 1208(a5) -- Store: [0x800057c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000036 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000003fca and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c0c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c10]:csrrs a7, fflags, zero
	-[0x80000c14]:fsd fa2, 1216(a5)
Current Store : [0x80000c18] : sd a7, 1224(a5) -- Store: [0x800057d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000001f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000001fe1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c28]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c2c]:csrrs a7, fflags, zero
	-[0x80000c30]:fsd fa2, 1232(a5)
Current Store : [0x80000c34] : sd a7, 1240(a5) -- Store: [0x800057e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000006 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000ffa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c44]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c48]:csrrs a7, fflags, zero
	-[0x80000c4c]:fsd fa2, 1248(a5)
Current Store : [0x80000c50] : sd a7, 1256(a5) -- Store: [0x800057f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000035 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000007cb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa2, 1264(a5)
Current Store : [0x80000c6c] : sd a7, 1272(a5) -- Store: [0x80005808]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000003fe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c7c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c80]:csrrs a7, fflags, zero
	-[0x80000c84]:fsd fa2, 1280(a5)
Current Store : [0x80000c88] : sd a7, 1288(a5) -- Store: [0x80005818]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000004f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000001b1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c98]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c9c]:csrrs a7, fflags, zero
	-[0x80000ca0]:fsd fa2, 1296(a5)
Current Store : [0x80000ca4] : sd a7, 1304(a5) -- Store: [0x80005828]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000026 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000000da and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cb4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000cb8]:csrrs a7, fflags, zero
	-[0x80000cbc]:fsd fa2, 1312(a5)
Current Store : [0x80000cc0] : sd a7, 1320(a5) -- Store: [0x80005838]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000000e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000072 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cd0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000cd4]:csrrs a7, fflags, zero
	-[0x80000cd8]:fsd fa2, 1328(a5)
Current Store : [0x80000cdc] : sd a7, 1336(a5) -- Store: [0x80005848]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000003b and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000005 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cec]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000cf0]:csrrs a7, fflags, zero
	-[0x80000cf4]:fsd fa2, 1344(a5)
Current Store : [0x80000cf8] : sd a7, 1352(a5) -- Store: [0x80005858]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000045 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000025 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d08]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d0c]:csrrs a7, fflags, zero
	-[0x80000d10]:fsd fa2, 1360(a5)
Current Store : [0x80000d14] : sd a7, 1368(a5) -- Store: [0x80005868]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000026 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000016 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d24]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d28]:csrrs a7, fflags, zero
	-[0x80000d2c]:fsd fa2, 1376(a5)
Current Store : [0x80000d30] : sd a7, 1384(a5) -- Store: [0x80005878]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000023 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000001b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa2, 1392(a5)
Current Store : [0x80000d4c] : sd a7, 1400(a5) -- Store: [0x80005888]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000049 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000045 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d5c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d60]:csrrs a7, fflags, zero
	-[0x80000d64]:fsd fa2, 1408(a5)
Current Store : [0x80000d68] : sd a7, 1416(a5) -- Store: [0x80005898]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000047 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000045 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d78]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d7c]:csrrs a7, fflags, zero
	-[0x80000d80]:fsd fa2, 1424(a5)
Current Store : [0x80000d84] : sd a7, 1432(a5) -- Store: [0x800058a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000000a and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000009 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d94]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d98]:csrrs a7, fflags, zero
	-[0x80000d9c]:fsd fa2, 1440(a5)
Current Store : [0x80000da0] : sd a7, 1448(a5) -- Store: [0x800058b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004c and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffc0004b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000db0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000db4]:csrrs a7, fflags, zero
	-[0x80000db8]:fsd fa2, 1456(a5)
Current Store : [0x80000dbc] : sd a7, 1464(a5) -- Store: [0x800058c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000f and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffe0000e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dcc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000dd0]:csrrs a7, fflags, zero
	-[0x80000dd4]:fsd fa2, 1472(a5)
Current Store : [0x80000dd8] : sd a7, 1480(a5) -- Store: [0x800058d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000011 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffff00010 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000de8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000dec]:csrrs a7, fflags, zero
	-[0x80000df0]:fsd fa2, 1488(a5)
Current Store : [0x80000df4] : sd a7, 1496(a5) -- Store: [0x800058e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000031 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffff80030 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e04]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e08]:csrrs a7, fflags, zero
	-[0x80000e0c]:fsd fa2, 1504(a5)
Current Store : [0x80000e10] : sd a7, 1512(a5) -- Store: [0x800058f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000035 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffc0034 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa2, 1520(a5)
Current Store : [0x80000e2c] : sd a7, 1528(a5) -- Store: [0x80005908]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002a and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffe0029 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e3c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e40]:csrrs a7, fflags, zero
	-[0x80000e44]:fsd fa2, 1536(a5)
Current Store : [0x80000e48] : sd a7, 1544(a5) -- Store: [0x80005918]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000063 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffff0062 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e58]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e5c]:csrrs a7, fflags, zero
	-[0x80000e60]:fsd fa2, 1552(a5)
Current Store : [0x80000e64] : sd a7, 1560(a5) -- Store: [0x80005928]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004b and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffff804a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e74]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e78]:csrrs a7, fflags, zero
	-[0x80000e7c]:fsd fa2, 1568(a5)
Current Store : [0x80000e80] : sd a7, 1576(a5) -- Store: [0x80005938]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000003f and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffc03e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e90]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e94]:csrrs a7, fflags, zero
	-[0x80000e98]:fsd fa2, 1584(a5)
Current Store : [0x80000e9c] : sd a7, 1592(a5) -- Store: [0x80005948]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004e and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffe04d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000eac]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000eb0]:csrrs a7, fflags, zero
	-[0x80000eb4]:fsd fa2, 1600(a5)
Current Store : [0x80000eb8] : sd a7, 1608(a5) -- Store: [0x80005958]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000026 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffff025 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ec8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000ecc]:csrrs a7, fflags, zero
	-[0x80000ed0]:fsd fa2, 1616(a5)
Current Store : [0x80000ed4] : sd a7, 1624(a5) -- Store: [0x80005968]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002c and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffff82b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa2, 1632(a5)
Current Store : [0x80000ef0] : sd a7, 1640(a5) -- Store: [0x80005978]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000030 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffffc2f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f00]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f04]:csrrs a7, fflags, zero
	-[0x80000f08]:fsd fa2, 1648(a5)
Current Store : [0x80000f0c] : sd a7, 1656(a5) -- Store: [0x80005988]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000041 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffffe40 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f1c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f20]:csrrs a7, fflags, zero
	-[0x80000f24]:fsd fa2, 1664(a5)
Current Store : [0x80000f28] : sd a7, 1672(a5) -- Store: [0x80005998]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002b and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffff2a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f38]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f3c]:csrrs a7, fflags, zero
	-[0x80000f40]:fsd fa2, 1680(a5)
Current Store : [0x80000f44] : sd a7, 1688(a5) -- Store: [0x800059a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000023 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffa2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f54]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f58]:csrrs a7, fflags, zero
	-[0x80000f5c]:fsd fa2, 1696(a5)
Current Store : [0x80000f60] : sd a7, 1704(a5) -- Store: [0x800059b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000045 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000004 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f70]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f74]:csrrs a7, fflags, zero
	-[0x80000f78]:fsd fa2, 1712(a5)
Current Store : [0x80000f7c] : sd a7, 1720(a5) -- Store: [0x800059c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000016 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffffff5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f8c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f90]:csrrs a7, fflags, zero
	-[0x80000f94]:fsd fa2, 1728(a5)
Current Store : [0x80000f98] : sd a7, 1736(a5) -- Store: [0x800059d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000b and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffffffa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:fsd fa2, 1744(a5)
Current Store : [0x80000fb4] : sd a7, 1752(a5) -- Store: [0x800059e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005d and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000054 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa2, 1760(a5)
Current Store : [0x80000fd0] : sd a7, 1768(a5) -- Store: [0x800059f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001f and fs2 == 0 and fe2 == 0x001 and fm2 == 0x000000000001a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fe0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000fe4]:csrrs a7, fflags, zero
	-[0x80000fe8]:fsd fa2, 1776(a5)
Current Store : [0x80000fec] : sd a7, 1784(a5) -- Store: [0x80005a08]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000063 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000060 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ffc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001000]:csrrs a7, fflags, zero
	-[0x80001004]:fsd fa2, 1792(a5)
Current Store : [0x80001008] : sd a7, 1800(a5) -- Store: [0x80005a18]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000045 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000043 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001018]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000101c]:csrrs a7, fflags, zero
	-[0x80001020]:fsd fa2, 1808(a5)
Current Store : [0x80001024] : sd a7, 1816(a5) -- Store: [0x80005a28]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002d and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffbfffd2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001034]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001038]:csrrs a7, fflags, zero
	-[0x8000103c]:fsd fa2, 1824(a5)
Current Store : [0x80001040] : sd a7, 1832(a5) -- Store: [0x80005a38]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000031 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffdfffce and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001050]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001054]:csrrs a7, fflags, zero
	-[0x80001058]:fsd fa2, 1840(a5)
Current Store : [0x8000105c] : sd a7, 1848(a5) -- Store: [0x80005a48]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000057 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffefffa8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000106c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001070]:csrrs a7, fflags, zero
	-[0x80001074]:fsd fa2, 1856(a5)
Current Store : [0x80001078] : sd a7, 1864(a5) -- Store: [0x80005a58]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001c and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffff7ffe3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001088]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000108c]:csrrs a7, fflags, zero
	-[0x80001090]:fsd fa2, 1872(a5)
Current Store : [0x80001094] : sd a7, 1880(a5) -- Store: [0x80005a68]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002c and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffbffd3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa2, 1888(a5)
Current Store : [0x800010b0] : sd a7, 1896(a5) -- Store: [0x80005a78]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000049 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffdffb6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010c0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800010c4]:csrrs a7, fflags, zero
	-[0x800010c8]:fsd fa2, 1904(a5)
Current Store : [0x800010cc] : sd a7, 1912(a5) -- Store: [0x80005a88]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001a and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffeffe5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010dc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800010e0]:csrrs a7, fflags, zero
	-[0x800010e4]:fsd fa2, 1920(a5)
Current Store : [0x800010e8] : sd a7, 1928(a5) -- Store: [0x80005a98]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000003 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffff7ffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010f8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800010fc]:csrrs a7, fflags, zero
	-[0x80001100]:fsd fa2, 1936(a5)
Current Store : [0x80001104] : sd a7, 1944(a5) -- Store: [0x80005aa8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000034 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffbfcb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001114]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001118]:csrrs a7, fflags, zero
	-[0x8000111c]:fsd fa2, 1952(a5)
Current Store : [0x80001120] : sd a7, 1960(a5) -- Store: [0x80005ab8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002a and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffdfd5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001130]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001134]:csrrs a7, fflags, zero
	-[0x80001138]:fsd fa2, 1968(a5)
Current Store : [0x8000113c] : sd a7, 1976(a5) -- Store: [0x80005ac8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffefbf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000114c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001150]:csrrs a7, fflags, zero
	-[0x80001154]:fsd fa2, 1984(a5)
Current Store : [0x80001158] : sd a7, 1992(a5) -- Store: [0x80005ad8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000026 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffff7d9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001168]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000116c]:csrrs a7, fflags, zero
	-[0x80001170]:fsd fa2, 2000(a5)
Current Store : [0x80001174] : sd a7, 2008(a5) -- Store: [0x80005ae8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000056 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffffba9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001184]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa2, 2016(a5)
Current Store : [0x80001190] : sd a7, 2024(a5) -- Store: [0x80005af8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffffdbf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011ac]:fsub.d fa2, fa0, fa1, dyn
	-[0x800011b0]:csrrs a7, fflags, zero
	-[0x800011b4]:fsd fa2, 0(a5)
Current Store : [0x800011b8] : sd a7, 8(a5) -- Store: [0x80005b08]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004c and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffffeb3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011c8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800011cc]:csrrs a7, fflags, zero
	-[0x800011d0]:fsd fa2, 16(a5)
Current Store : [0x800011d4] : sd a7, 24(a5) -- Store: [0x80005b18]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000057 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffff28 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa2, 32(a5)
Current Store : [0x800011f0] : sd a7, 40(a5) -- Store: [0x80005b28]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001b and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffa4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001200]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001204]:csrrs a7, fflags, zero
	-[0x80001208]:fsd fa2, 48(a5)
Current Store : [0x8000120c] : sd a7, 56(a5) -- Store: [0x80005b38]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002d and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffb2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000121c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001220]:csrrs a7, fflags, zero
	-[0x80001224]:fsd fa2, 64(a5)
Current Store : [0x80001228] : sd a7, 72(a5) -- Store: [0x80005b48]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000031 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffbe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001238]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000123c]:csrrs a7, fflags, zero
	-[0x80001240]:fsd fa2, 80(a5)
Current Store : [0x80001244] : sd a7, 88(a5) -- Store: [0x80005b58]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000042 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffb5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001254]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001258]:csrrs a7, fflags, zero
	-[0x8000125c]:fsd fa2, 96(a5)
Current Store : [0x80001260] : sd a7, 104(a5) -- Store: [0x80005b68]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005b and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffa0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001270]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001274]:csrrs a7, fflags, zero
	-[0x80001278]:fsd fa2, 112(a5)
Current Store : [0x8000127c] : sd a7, 120(a5) -- Store: [0x80005b78]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000003b and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffc2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000128c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001290]:csrrs a7, fflags, zero
	-[0x80001294]:fsd fa2, 128(a5)
Current Store : [0x80001298] : sd a7, 136(a5) -- Store: [0x80005b88]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001c and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffe2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012a8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:fsd fa2, 144(a5)
Current Store : [0x800012b4] : sd a7, 152(a5) -- Store: [0x80005b98]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000005 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000400006 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa2, 160(a5)
Current Store : [0x800012d0] : sd a7, 168(a5) -- Store: [0x80005ba8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000200003 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012e0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800012e4]:csrrs a7, fflags, zero
	-[0x800012e8]:fsd fa2, 176(a5)
Current Store : [0x800012ec] : sd a7, 184(a5) -- Store: [0x80005bb8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000021 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000100022 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012fc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001300]:csrrs a7, fflags, zero
	-[0x80001304]:fsd fa2, 192(a5)
Current Store : [0x80001308] : sd a7, 200(a5) -- Store: [0x80005bc8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000036 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000080037 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001318]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000131c]:csrrs a7, fflags, zero
	-[0x80001320]:fsd fa2, 208(a5)
Current Store : [0x80001324] : sd a7, 216(a5) -- Store: [0x80005bd8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000060 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000040061 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001334]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001338]:csrrs a7, fflags, zero
	-[0x8000133c]:fsd fa2, 224(a5)
Current Store : [0x80001340] : sd a7, 232(a5) -- Store: [0x80005be8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000028 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000020029 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001350]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001354]:csrrs a7, fflags, zero
	-[0x80001358]:fsd fa2, 240(a5)
Current Store : [0x8000135c] : sd a7, 248(a5) -- Store: [0x80005bf8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000a and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000001000b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000136c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001370]:csrrs a7, fflags, zero
	-[0x80001374]:fsd fa2, 256(a5)
Current Store : [0x80001378] : sd a7, 264(a5) -- Store: [0x80005c08]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000007 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008008 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001388]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000138c]:csrrs a7, fflags, zero
	-[0x80001390]:fsd fa2, 272(a5)
Current Store : [0x80001394] : sd a7, 280(a5) -- Store: [0x80005c18]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000011 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000004012 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013a4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800013a8]:csrrs a7, fflags, zero
	-[0x800013ac]:fsd fa2, 288(a5)
Current Store : [0x800013b0] : sd a7, 296(a5) -- Store: [0x80005c28]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000002060 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013c0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800013c4]:csrrs a7, fflags, zero
	-[0x800013c8]:fsd fa2, 304(a5)
Current Store : [0x800013cc] : sd a7, 312(a5) -- Store: [0x80005c38]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000037 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000001038 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013dc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800013e0]:csrrs a7, fflags, zero
	-[0x800013e4]:fsd fa2, 320(a5)
Current Store : [0x800013e8] : sd a7, 328(a5) -- Store: [0x80005c48]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000055 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000856 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013f8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800013fc]:csrrs a7, fflags, zero
	-[0x80001400]:fsd fa2, 336(a5)
Current Store : [0x80001404] : sd a7, 344(a5) -- Store: [0x80005c58]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004a and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000044b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001414]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001418]:csrrs a7, fflags, zero
	-[0x8000141c]:fsd fa2, 352(a5)
Current Store : [0x80001420] : sd a7, 360(a5) -- Store: [0x80005c68]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000033 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000234 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001430]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001434]:csrrs a7, fflags, zero
	-[0x80001438]:fsd fa2, 368(a5)
Current Store : [0x8000143c] : sd a7, 376(a5) -- Store: [0x80005c78]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000054 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000155 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000144c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001450]:csrrs a7, fflags, zero
	-[0x80001454]:fsd fa2, 384(a5)
Current Store : [0x80001458] : sd a7, 392(a5) -- Store: [0x80005c88]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000009e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001468]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000146c]:csrrs a7, fflags, zero
	-[0x80001470]:fsd fa2, 400(a5)
Current Store : [0x80001474] : sd a7, 408(a5) -- Store: [0x80005c98]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000043 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000084 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001484]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001488]:csrrs a7, fflags, zero
	-[0x8000148c]:fsd fa2, 416(a5)
Current Store : [0x80001490] : sd a7, 424(a5) -- Store: [0x80005ca8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000051 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000072 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014a0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800014a4]:csrrs a7, fflags, zero
	-[0x800014a8]:fsd fa2, 432(a5)
Current Store : [0x800014ac] : sd a7, 440(a5) -- Store: [0x80005cb8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000046 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000057 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014bc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800014c0]:csrrs a7, fflags, zero
	-[0x800014c4]:fsd fa2, 448(a5)
Current Store : [0x800014c8] : sd a7, 456(a5) -- Store: [0x80005cc8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000057 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000060 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014d8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800014dc]:csrrs a7, fflags, zero
	-[0x800014e0]:fsd fa2, 464(a5)
Current Store : [0x800014e4] : sd a7, 472(a5) -- Store: [0x80005cd8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000060 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014f4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800014f8]:csrrs a7, fflags, zero
	-[0x800014fc]:fsd fa2, 480(a5)
Current Store : [0x80001500] : sd a7, 488(a5) -- Store: [0x80005ce8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000015 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000018 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001510]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001514]:csrrs a7, fflags, zero
	-[0x80001518]:fsd fa2, 496(a5)
Current Store : [0x8000151c] : sd a7, 504(a5) -- Store: [0x80005cf8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000005 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000005 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000152c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001530]:csrrs a7, fflags, zero
	-[0x80001534]:fsd fa2, 512(a5)
Current Store : [0x80001538] : sd a7, 520(a5) -- Store: [0x80005d08]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000033 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000003fffce and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001548]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000154c]:csrrs a7, fflags, zero
	-[0x80001550]:fsd fa2, 528(a5)
Current Store : [0x80001554] : sd a7, 536(a5) -- Store: [0x80005d18]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001d and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000001fffe4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001564]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001568]:csrrs a7, fflags, zero
	-[0x8000156c]:fsd fa2, 544(a5)
Current Store : [0x80001570] : sd a7, 552(a5) -- Store: [0x80005d28]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000038 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000fffc9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001580]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001584]:csrrs a7, fflags, zero
	-[0x80001588]:fsd fa2, 560(a5)
Current Store : [0x8000158c] : sd a7, 568(a5) -- Store: [0x80005d38]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001b and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000007ffe6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000159c]:fsub.d fa2, fa0, fa1, dyn
	-[0x800015a0]:csrrs a7, fflags, zero
	-[0x800015a4]:fsd fa2, 576(a5)
Current Store : [0x800015a8] : sd a7, 584(a5) -- Store: [0x80005d48]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000003ffa3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015b8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800015bc]:csrrs a7, fflags, zero
	-[0x800015c0]:fsd fa2, 592(a5)
Current Store : [0x800015c4] : sd a7, 600(a5) -- Store: [0x80005d58]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000001fff3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015d4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800015d8]:csrrs a7, fflags, zero
	-[0x800015dc]:fsd fa2, 608(a5)
Current Store : [0x800015e0] : sd a7, 616(a5) -- Store: [0x80005d68]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000019 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000ffe8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015f0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800015f4]:csrrs a7, fflags, zero
	-[0x800015f8]:fsd fa2, 624(a5)
Current Store : [0x800015fc] : sd a7, 632(a5) -- Store: [0x80005d78]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002c and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000007fd5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000160c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:fsd fa2, 640(a5)
Current Store : [0x80001618] : sd a7, 648(a5) -- Store: [0x80005d88]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000028 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000003fd9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001628]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000162c]:csrrs a7, fflags, zero
	-[0x80001630]:fsd fa2, 656(a5)
Current Store : [0x80001634] : sd a7, 664(a5) -- Store: [0x80005d98]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000001ff2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001644]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001648]:csrrs a7, fflags, zero
	-[0x8000164c]:fsd fa2, 672(a5)
Current Store : [0x80001650] : sd a7, 680(a5) -- Store: [0x80005da8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000fc1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001660]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001664]:csrrs a7, fflags, zero
	-[0x80001668]:fsd fa2, 688(a5)
Current Store : [0x8000166c] : sd a7, 696(a5) -- Store: [0x80005db8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005a and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000007a7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000167c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001680]:csrrs a7, fflags, zero
	-[0x80001684]:fsd fa2, 704(a5)
Current Store : [0x80001688] : sd a7, 712(a5) -- Store: [0x80005dc8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000026 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000003db and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001698]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000169c]:csrrs a7, fflags, zero
	-[0x800016a0]:fsd fa2, 720(a5)
Current Store : [0x800016a4] : sd a7, 728(a5) -- Store: [0x80005dd8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000053 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000001ae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016b4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800016b8]:csrrs a7, fflags, zero
	-[0x800016bc]:fsd fa2, 736(a5)
Current Store : [0x800016c0] : sd a7, 744(a5) -- Store: [0x80005de8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000055 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000000ac and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016d0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800016d4]:csrrs a7, fflags, zero
	-[0x800016d8]:fsd fa2, 752(a5)
Current Store : [0x800016dc] : sd a7, 760(a5) -- Store: [0x80005df8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000044 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000003d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016ec]:fsub.d fa2, fa0, fa1, dyn
	-[0x800016f0]:csrrs a7, fflags, zero
	-[0x800016f4]:fsd fa2, 768(a5)
Current Store : [0x800016f8] : sd a7, 776(a5) -- Store: [0x80005e08]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000015 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000002c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001708]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000170c]:csrrs a7, fflags, zero
	-[0x80001710]:fsd fa2, 784(a5)
Current Store : [0x80001714] : sd a7, 792(a5) -- Store: [0x80005e18]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000009 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000018 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001724]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001728]:csrrs a7, fflags, zero
	-[0x8000172c]:fsd fa2, 800(a5)
Current Store : [0x80001730] : sd a7, 808(a5) -- Store: [0x80005e28]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000001c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001740]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001744]:csrrs a7, fflags, zero
	-[0x80001748]:fsd fa2, 816(a5)
Current Store : [0x8000174c] : sd a7, 824(a5) -- Store: [0x80005e38]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000050 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000047 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000175c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001760]:csrrs a7, fflags, zero
	-[0x80001764]:fsd fa2, 832(a5)
Current Store : [0x80001768] : sd a7, 840(a5) -- Store: [0x80005e48]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000023 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000001e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001778]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000177c]:csrrs a7, fflags, zero
	-[0x80001780]:fsd fa2, 848(a5)
Current Store : [0x80001784] : sd a7, 856(a5) -- Store: [0x80005e58]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000024 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000021 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001794]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001798]:csrrs a7, fflags, zero
	-[0x8000179c]:fsd fa2, 864(a5)
Current Store : [0x800017a0] : sd a7, 872(a5) -- Store: [0x80005e68]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000061 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000061 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017b0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800017b4]:csrrs a7, fflags, zero
	-[0x800017b8]:fsd fa2, 880(a5)
Current Store : [0x800017bc] : sd a7, 888(a5) -- Store: [0x80005e78]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000003a and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000020001d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017cc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800017d0]:csrrs a7, fflags, zero
	-[0x800017d4]:fsd fa2, 896(a5)
Current Store : [0x800017d8] : sd a7, 904(a5) -- Store: [0x80005e88]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000000b and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000100006 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017e8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800017ec]:csrrs a7, fflags, zero
	-[0x800017f0]:fsd fa2, 912(a5)
Current Store : [0x800017f4] : sd a7, 920(a5) -- Store: [0x80005e98]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000057 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000008002c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001804]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001808]:csrrs a7, fflags, zero
	-[0x8000180c]:fsd fa2, 928(a5)
Current Store : [0x80001810] : sd a7, 936(a5) -- Store: [0x80005ea8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000021 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000040010 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001820]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001824]:csrrs a7, fflags, zero
	-[0x80001828]:fsd fa2, 944(a5)
Current Store : [0x8000182c] : sd a7, 952(a5) -- Store: [0x80005eb8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000000c and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000020006 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000183c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001840]:csrrs a7, fflags, zero
	-[0x80001844]:fsd fa2, 960(a5)
Current Store : [0x80001848] : sd a7, 968(a5) -- Store: [0x80005ec8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000004b and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000010026 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001858]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000185c]:csrrs a7, fflags, zero
	-[0x80001860]:fsd fa2, 976(a5)
Current Store : [0x80001864] : sd a7, 984(a5) -- Store: [0x80005ed8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000017 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000800c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001874]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001878]:csrrs a7, fflags, zero
	-[0x8000187c]:fsd fa2, 992(a5)
Current Store : [0x80001880] : sd a7, 1000(a5) -- Store: [0x80005ee8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000001e and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000400f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001890]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001894]:csrrs a7, fflags, zero
	-[0x80001898]:fsd fa2, 1008(a5)
Current Store : [0x8000189c] : sd a7, 1016(a5) -- Store: [0x80005ef8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000004d and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000002026 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018ac]:fsub.d fa2, fa0, fa1, dyn
	-[0x800018b0]:csrrs a7, fflags, zero
	-[0x800018b4]:fsd fa2, 1024(a5)
Current Store : [0x800018b8] : sd a7, 1032(a5) -- Store: [0x80005f08]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000002b and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000001016 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018c8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800018cc]:csrrs a7, fflags, zero
	-[0x800018d0]:fsd fa2, 1040(a5)
Current Store : [0x800018d4] : sd a7, 1048(a5) -- Store: [0x80005f18]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000050 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000828 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018e4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800018e8]:csrrs a7, fflags, zero
	-[0x800018ec]:fsd fa2, 1056(a5)
Current Store : [0x800018f0] : sd a7, 1064(a5) -- Store: [0x80005f28]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000045 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000422 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001900]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001904]:csrrs a7, fflags, zero
	-[0x80001908]:fsd fa2, 1072(a5)
Current Store : [0x8000190c] : sd a7, 1080(a5) -- Store: [0x80005f38]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000002d and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000216 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000191c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001920]:csrrs a7, fflags, zero
	-[0x80001924]:fsd fa2, 1088(a5)
Current Store : [0x80001928] : sd a7, 1096(a5) -- Store: [0x80005f48]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000002e and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000117 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001938]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000193c]:csrrs a7, fflags, zero
	-[0x80001940]:fsd fa2, 1104(a5)
Current Store : [0x80001944] : sd a7, 1112(a5) -- Store: [0x80005f58]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000035 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000009a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001954]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001958]:csrrs a7, fflags, zero
	-[0x8000195c]:fsd fa2, 1120(a5)
Current Store : [0x80001960] : sd a7, 1128(a5) -- Store: [0x80005f68]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000001a and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000004d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001970]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:fsd fa2, 1136(a5)
Current Store : [0x8000197c] : sd a7, 1144(a5) -- Store: [0x80005f78]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000049 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000044 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000198c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001990]:csrrs a7, fflags, zero
	-[0x80001994]:fsd fa2, 1152(a5)
Current Store : [0x80001998] : sd a7, 1160(a5) -- Store: [0x80005f88]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000003e and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000002f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019a8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800019ac]:csrrs a7, fflags, zero
	-[0x800019b0]:fsd fa2, 1168(a5)
Current Store : [0x800019b4] : sd a7, 1176(a5) -- Store: [0x80005f98]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000037 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000024 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019c4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800019c8]:csrrs a7, fflags, zero
	-[0x800019cc]:fsd fa2, 1184(a5)
Current Store : [0x800019d0] : sd a7, 1192(a5) -- Store: [0x80005fa8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000048 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000028 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019e0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800019e4]:csrrs a7, fflags, zero
	-[0x800019e8]:fsd fa2, 1200(a5)
Current Store : [0x800019ec] : sd a7, 1208(a5) -- Store: [0x80005fb8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000011 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000000a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019fc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001a00]:csrrs a7, fflags, zero
	-[0x80001a04]:fsd fa2, 1216(a5)
Current Store : [0x80001a08] : sd a7, 1224(a5) -- Store: [0x80005fc8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000005f and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000030 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a18]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001a1c]:csrrs a7, fflags, zero
	-[0x80001a20]:fsd fa2, 1232(a5)
Current Store : [0x80001a24] : sd a7, 1240(a5) -- Store: [0x80005fd8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a34]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001a38]:csrrs a7, fflags, zero
	-[0x80001a3c]:fsd fa2, 1248(a5)
Current Store : [0x80001a40] : sd a7, 1256(a5) -- Store: [0x80005fe8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000004e and fs2 == 1 and fe2 == 0x3e0 and fm2 == 0xfffd900000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a50]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001a54]:csrrs a7, fflags, zero
	-[0x80001a58]:fsd fa2, 1264(a5)
Current Store : [0x80001a5c] : sd a7, 1272(a5) -- Store: [0x80005ff8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000055 and fs2 == 1 and fe2 == 0x3df and fm2 == 0xfffab00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a6c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001a70]:csrrs a7, fflags, zero
	-[0x80001a74]:fsd fa2, 1280(a5)
Current Store : [0x80001a78] : sd a7, 1288(a5) -- Store: [0x80006008]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000003b and fs2 == 1 and fe2 == 0x3de and fm2 == 0xfff8a00000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a88]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001a8c]:csrrs a7, fflags, zero
	-[0x80001a90]:fsd fa2, 1296(a5)
Current Store : [0x80001a94] : sd a7, 1304(a5) -- Store: [0x80006018]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000004a and fs2 == 1 and fe2 == 0x3dd and fm2 == 0xffed800000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001aa4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001aa8]:csrrs a7, fflags, zero
	-[0x80001aac]:fsd fa2, 1312(a5)
Current Store : [0x80001ab0] : sd a7, 1320(a5) -- Store: [0x80006028]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000042 and fs2 == 1 and fe2 == 0x3dc and fm2 == 0xffdf000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ac0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001ac4]:csrrs a7, fflags, zero
	-[0x80001ac8]:fsd fa2, 1328(a5)
Current Store : [0x80001acc] : sd a7, 1336(a5) -- Store: [0x80006038]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000001e and fs2 == 1 and fe2 == 0x3db and fm2 == 0xffe2000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001adc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001ae0]:csrrs a7, fflags, zero
	-[0x80001ae4]:fsd fa2, 1344(a5)
Current Store : [0x80001ae8] : sd a7, 1352(a5) -- Store: [0x80006048]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000046 and fs2 == 1 and fe2 == 0x3da and fm2 == 0xff74000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001af8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001afc]:csrrs a7, fflags, zero
	-[0x80001b00]:fsd fa2, 1360(a5)
Current Store : [0x80001b04] : sd a7, 1368(a5) -- Store: [0x80006058]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000063 and fs2 == 1 and fe2 == 0x3d9 and fm2 == 0xfe74000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b14]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001b18]:csrrs a7, fflags, zero
	-[0x80001b1c]:fsd fa2, 1376(a5)
Current Store : [0x80001b20] : sd a7, 1384(a5) -- Store: [0x80006068]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000001e and fs2 == 1 and fe2 == 0x3d8 and fm2 == 0xff10000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b30]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001b34]:csrrs a7, fflags, zero
	-[0x80001b38]:fsd fa2, 1392(a5)
Current Store : [0x80001b3c] : sd a7, 1400(a5) -- Store: [0x80006078]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000016 and fs2 == 1 and fe2 == 0x3d7 and fm2 == 0xfea0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b4c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001b50]:csrrs a7, fflags, zero
	-[0x80001b54]:fsd fa2, 1408(a5)
Current Store : [0x80001b58] : sd a7, 1416(a5) -- Store: [0x80006088]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000053 and fs2 == 1 and fe2 == 0x3d6 and fm2 == 0xf5a0000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b68]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001b6c]:csrrs a7, fflags, zero
	-[0x80001b70]:fsd fa2, 1424(a5)
Current Store : [0x80001b74] : sd a7, 1432(a5) -- Store: [0x80006098]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000004b and fs2 == 1 and fe2 == 0x3d5 and fm2 == 0xed40000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b84]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001b88]:csrrs a7, fflags, zero
	-[0x80001b8c]:fsd fa2, 1440(a5)
Current Store : [0x80001b90] : sd a7, 1448(a5) -- Store: [0x800060a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000004f and fs2 == 1 and fe2 == 0x3d4 and fm2 == 0xd880000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ba0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001ba4]:csrrs a7, fflags, zero
	-[0x80001ba8]:fsd fa2, 1456(a5)
Current Store : [0x80001bac] : sd a7, 1464(a5) -- Store: [0x800060b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000028 and fs2 == 1 and fe2 == 0x3d3 and fm2 == 0xd800000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bbc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001bc0]:csrrs a7, fflags, zero
	-[0x80001bc4]:fsd fa2, 1472(a5)
Current Store : [0x80001bc8] : sd a7, 1480(a5) -- Store: [0x800060c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000003d and fs2 == 1 and fe2 == 0x3d2 and fm2 == 0x8600000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bd8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001bdc]:csrrs a7, fflags, zero
	-[0x80001be0]:fsd fa2, 1488(a5)
Current Store : [0x80001be4] : sd a7, 1496(a5) -- Store: [0x800060d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000005e and fs2 == 1 and fe2 == 0x3d0 and fm2 == 0x1000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bf4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001bf8]:csrrs a7, fflags, zero
	-[0x80001bfc]:fsd fa2, 1504(a5)
Current Store : [0x80001c00] : sd a7, 1512(a5) -- Store: [0x800060e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000030 and fs2 == 1 and fe2 == 0x3cf and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c10]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001c14]:csrrs a7, fflags, zero
	-[0x80001c18]:fsd fa2, 1520(a5)
Current Store : [0x80001c1c] : sd a7, 1528(a5) -- Store: [0x800060f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000043 and fs2 == 0 and fe2 == 0x3d0 and fm2 == 0x1800000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c2c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001c30]:csrrs a7, fflags, zero
	-[0x80001c34]:fsd fa2, 1536(a5)
Current Store : [0x80001c38] : sd a7, 1544(a5) -- Store: [0x80006108]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000000e and fs2 == 1 and fe2 == 0x3cc and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c48]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001c4c]:csrrs a7, fflags, zero
	-[0x80001c50]:fsd fa2, 1552(a5)
Current Store : [0x80001c54] : sd a7, 1560(a5) -- Store: [0x80006118]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000055 and fs2 == 0 and fe2 == 0x3d1 and fm2 == 0x3400000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c64]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001c68]:csrrs a7, fflags, zero
	-[0x80001c6c]:fsd fa2, 1568(a5)
Current Store : [0x80001c70] : sd a7, 1576(a5) -- Store: [0x80006128]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000000c and fs2 == 0 and fe2 == 0x3ce and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c80]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001c84]:csrrs a7, fflags, zero
	-[0x80001c88]:fsd fa2, 1584(a5)
Current Store : [0x80001c8c] : sd a7, 1592(a5) -- Store: [0x80006138]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000005f and fs2 == 0 and fe2 == 0x3d1 and fm2 == 0x7400000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c9c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001ca0]:csrrs a7, fflags, zero
	-[0x80001ca4]:fsd fa2, 1600(a5)
Current Store : [0x80001ca8] : sd a7, 1608(a5) -- Store: [0x80006148]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000005a and fs2 == 0 and fe2 == 0x3d1 and fm2 == 0x6400000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cb8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001cbc]:csrrs a7, fflags, zero
	-[0x80001cc0]:fsd fa2, 1616(a5)
Current Store : [0x80001cc4] : sd a7, 1624(a5) -- Store: [0x80006158]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000040002f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cd4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001cd8]:csrrs a7, fflags, zero
	-[0x80001cdc]:fsd fa2, 1632(a5)
Current Store : [0x80001ce0] : sd a7, 1640(a5) -- Store: [0x80006168]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000056 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000200056 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cf0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001cf4]:csrrs a7, fflags, zero
	-[0x80001cf8]:fsd fa2, 1648(a5)
Current Store : [0x80001cfc] : sd a7, 1656(a5) -- Store: [0x80006178]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000034 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000100034 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d0c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001d10]:csrrs a7, fflags, zero
	-[0x80001d14]:fsd fa2, 1664(a5)
Current Store : [0x80001d18] : sd a7, 1672(a5) -- Store: [0x80006188]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000020 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000080020 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d28]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001d2c]:csrrs a7, fflags, zero
	-[0x80001d30]:fsd fa2, 1680(a5)
Current Store : [0x80001d34] : sd a7, 1688(a5) -- Store: [0x80006198]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000005 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000040005 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d44]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001d48]:csrrs a7, fflags, zero
	-[0x80001d4c]:fsd fa2, 1696(a5)
Current Store : [0x80001d50] : sd a7, 1704(a5) -- Store: [0x800061a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000033 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000020033 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d60]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001d64]:csrrs a7, fflags, zero
	-[0x80001d68]:fsd fa2, 1712(a5)
Current Store : [0x80001d6c] : sd a7, 1720(a5) -- Store: [0x800061b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000010040 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d7c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001d80]:csrrs a7, fflags, zero
	-[0x80001d84]:fsd fa2, 1728(a5)
Current Store : [0x80001d88] : sd a7, 1736(a5) -- Store: [0x800061c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000025 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008025 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d98]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001d9c]:csrrs a7, fflags, zero
	-[0x80001da0]:fsd fa2, 1744(a5)
Current Store : [0x80001da4] : sd a7, 1752(a5) -- Store: [0x800061d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000019 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000004019 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001db4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001db8]:csrrs a7, fflags, zero
	-[0x80001dbc]:fsd fa2, 1760(a5)
Current Store : [0x80001dc0] : sd a7, 1768(a5) -- Store: [0x800061e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000041 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000002041 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001dd0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001dd4]:csrrs a7, fflags, zero
	-[0x80001dd8]:fsd fa2, 1776(a5)
Current Store : [0x80001ddc] : sd a7, 1784(a5) -- Store: [0x800061f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000041 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000001041 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001dec]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001df0]:csrrs a7, fflags, zero
	-[0x80001df4]:fsd fa2, 1792(a5)
Current Store : [0x80001df8] : sd a7, 1800(a5) -- Store: [0x80006208]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000085d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e08]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001e0c]:csrrs a7, fflags, zero
	-[0x80001e10]:fsd fa2, 1808(a5)
Current Store : [0x80001e14] : sd a7, 1816(a5) -- Store: [0x80006218]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000060 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000460 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e24]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001e28]:csrrs a7, fflags, zero
	-[0x80001e2c]:fsd fa2, 1824(a5)
Current Store : [0x80001e30] : sd a7, 1832(a5) -- Store: [0x80006228]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000026 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000226 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e40]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001e44]:csrrs a7, fflags, zero
	-[0x80001e48]:fsd fa2, 1840(a5)
Current Store : [0x80001e4c] : sd a7, 1848(a5) -- Store: [0x80006238]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000051 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000151 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e5c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001e60]:csrrs a7, fflags, zero
	-[0x80001e64]:fsd fa2, 1856(a5)
Current Store : [0x80001e68] : sd a7, 1864(a5) -- Store: [0x80006248]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000008d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e78]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001e7c]:csrrs a7, fflags, zero
	-[0x80001e80]:fsd fa2, 1872(a5)
Current Store : [0x80001e84] : sd a7, 1880(a5) -- Store: [0x80006258]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000048 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000088 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001e94]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001e98]:csrrs a7, fflags, zero
	-[0x80001e9c]:fsd fa2, 1888(a5)
Current Store : [0x80001ea0] : sd a7, 1896(a5) -- Store: [0x80006268]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000003 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000023 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001eb0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001eb4]:csrrs a7, fflags, zero
	-[0x80001eb8]:fsd fa2, 1904(a5)
Current Store : [0x80001ebc] : sd a7, 1912(a5) -- Store: [0x80006278]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000003b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000004b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ecc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001ed0]:csrrs a7, fflags, zero
	-[0x80001ed4]:fsd fa2, 1920(a5)
Current Store : [0x80001ed8] : sd a7, 1928(a5) -- Store: [0x80006288]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000025 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ee8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001eec]:csrrs a7, fflags, zero
	-[0x80001ef0]:fsd fa2, 1936(a5)
Current Store : [0x80001ef4] : sd a7, 1944(a5) -- Store: [0x80006298]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000022 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f04]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001f08]:csrrs a7, fflags, zero
	-[0x80001f0c]:fsd fa2, 1952(a5)
Current Store : [0x80001f10] : sd a7, 1960(a5) -- Store: [0x800062a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000020 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f20]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001f24]:csrrs a7, fflags, zero
	-[0x80001f28]:fsd fa2, 1968(a5)
Current Store : [0x80001f2c] : sd a7, 1976(a5) -- Store: [0x800062b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000041 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f3c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001f40]:csrrs a7, fflags, zero
	-[0x80001f44]:fsd fa2, 1984(a5)
Current Store : [0x80001f48] : sd a7, 1992(a5) -- Store: [0x800062c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000062 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000003fff9e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f58]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001f5c]:csrrs a7, fflags, zero
	-[0x80001f60]:fsd fa2, 2000(a5)
Current Store : [0x80001f64] : sd a7, 2008(a5) -- Store: [0x800062d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000044 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000001fffbc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f74]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001f78]:csrrs a7, fflags, zero
	-[0x80001f7c]:fsd fa2, 2016(a5)
Current Store : [0x80001f80] : sd a7, 2024(a5) -- Store: [0x800062e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005d and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000fffa3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001f9c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001fa0]:csrrs a7, fflags, zero
	-[0x80001fa4]:fsd fa2, 0(a5)
Current Store : [0x80001fa8] : sd a7, 8(a5) -- Store: [0x800062f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001c and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000007ffe4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fb8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001fbc]:csrrs a7, fflags, zero
	-[0x80001fc0]:fsd fa2, 16(a5)
Current Store : [0x80001fc4] : sd a7, 24(a5) -- Store: [0x80006308]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000031 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000003ffcf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001fd4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001fd8]:csrrs a7, fflags, zero
	-[0x80001fdc]:fsd fa2, 32(a5)
Current Store : [0x80001fe0] : sd a7, 40(a5) -- Store: [0x80006318]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000046 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000001ffba and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ff0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001ff4]:csrrs a7, fflags, zero
	-[0x80001ff8]:fsd fa2, 48(a5)
Current Store : [0x80001ffc] : sd a7, 56(a5) -- Store: [0x80006328]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000004 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000fffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000200c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80002010]:csrrs a7, fflags, zero
	-[0x80002014]:fsd fa2, 64(a5)
Current Store : [0x80002018] : sd a7, 72(a5) -- Store: [0x80006338]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000004 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000007ffc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002028]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000202c]:csrrs a7, fflags, zero
	-[0x80002030]:fsd fa2, 80(a5)
Current Store : [0x80002034] : sd a7, 88(a5) -- Store: [0x80006348]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000003ff2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002044]:fsub.d fa2, fa0, fa1, dyn
	-[0x80002048]:csrrs a7, fflags, zero
	-[0x8000204c]:fsd fa2, 96(a5)
Current Store : [0x80002050] : sd a7, 104(a5) -- Store: [0x80006358]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000001fe2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002060]:fsub.d fa2, fa0, fa1, dyn
	-[0x80002064]:csrrs a7, fflags, zero
	-[0x80002068]:fsd fa2, 112(a5)
Current Store : [0x8000206c] : sd a7, 120(a5) -- Store: [0x80006368]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000023 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000fdd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000207c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80002080]:csrrs a7, fflags, zero
	-[0x80002084]:fsd fa2, 128(a5)
Current Store : [0x80002088] : sd a7, 136(a5) -- Store: [0x80006378]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005a and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000007a6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002098]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000209c]:csrrs a7, fflags, zero
	-[0x800020a0]:fsd fa2, 144(a5)
Current Store : [0x800020a4] : sd a7, 152(a5) -- Store: [0x80006388]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000063 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000039d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020b4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800020b8]:csrrs a7, fflags, zero
	-[0x800020bc]:fsd fa2, 160(a5)
Current Store : [0x800020c0] : sd a7, 168(a5) -- Store: [0x80006398]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000001b2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020d0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800020d4]:csrrs a7, fflags, zero
	-[0x800020d8]:fsd fa2, 176(a5)
Current Store : [0x800020dc] : sd a7, 184(a5) -- Store: [0x800063a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000032 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000000ce and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800020ec]:fsub.d fa2, fa0, fa1, dyn
	-[0x800020f0]:csrrs a7, fflags, zero
	-[0x800020f4]:fsd fa2, 192(a5)
Current Store : [0x800020f8] : sd a7, 200(a5) -- Store: [0x800063b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000003f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000041 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002108]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000210c]:csrrs a7, fflags, zero
	-[0x80002110]:fsd fa2, 208(a5)
Current Store : [0x80002114] : sd a7, 216(a5) -- Store: [0x800063c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001b and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000025 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002124]:fsub.d fa2, fa0, fa1, dyn
	-[0x80002128]:csrrs a7, fflags, zero
	-[0x8000212c]:fsd fa2, 224(a5)
Current Store : [0x80002130] : sd a7, 232(a5) -- Store: [0x800063d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000054 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000034 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002140]:fsub.d fa2, fa0, fa1, dyn
	-[0x80002144]:csrrs a7, fflags, zero
	-[0x80002148]:fsd fa2, 240(a5)
Current Store : [0x8000214c] : sd a7, 248(a5) -- Store: [0x800063e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000003a and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000002a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000215c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80002160]:csrrs a7, fflags, zero
	-[0x80002164]:fsd fa2, 256(a5)
Current Store : [0x80002168] : sd a7, 264(a5) -- Store: [0x800063f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000038 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002178]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000217c]:csrrs a7, fflags, zero
	-[0x80002180]:fsd fa2, 272(a5)
Current Store : [0x80002184] : sd a7, 280(a5) -- Store: [0x80006408]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000021 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000001d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002194]:fsub.d fa2, fa0, fa1, dyn
	-[0x80002198]:csrrs a7, fflags, zero
	-[0x8000219c]:fsd fa2, 288(a5)
Current Store : [0x800021a0] : sd a7, 296(a5) -- Store: [0x80006418]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000062 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000060 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021b0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800021b4]:csrrs a7, fflags, zero
	-[0x800021b8]:fsd fa2, 304(a5)
Current Store : [0x800021bc] : sd a7, 312(a5) -- Store: [0x80006428]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000033 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021cc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800021d0]:csrrs a7, fflags, zero
	-[0x800021d4]:fsd fa2, 320(a5)
Current Store : [0x800021d8] : sd a7, 328(a5) -- Store: [0x80006438]:0x0000000000000000




Last Coverpoint : ['opcode : fsub.d', 'rs1 : f10', 'rs2 : f11', 'rd : f12', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000039 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800021e8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800021ec]:csrrs a7, fflags, zero
	-[0x800021f0]:fsd fa2, 336(a5)
Current Store : [0x800021f4] : sd a7, 344(a5) -- Store: [0x80006448]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000021 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80002204]:fsub.d fa2, fa0, fa1, dyn
	-[0x80002208]:csrrs a7, fflags, zero
	-[0x8000220c]:fsd fa2, 352(a5)
Current Store : [0x80002210] : sd a7, 360(a5) -- Store: [0x80006458]:0x0000000000000000





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

|s.no|            signature             |                                                                                                               coverpoints                                                                                                               |                                                         code                                                          |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
|   1|[0x80005310]<br>0x0000000080000390|- opcode : fsub.d<br> - rs1 : f27<br> - rs2 : f5<br> - rd : f5<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000012 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000011 and rm_val == 0  #nosat<br>    |[0x800003bc]:fsub.d ft5, fs11, ft5, dyn<br> [0x800003c0]:csrrs a7, fflags, zero<br> [0x800003c4]:fsd ft5, 0(a5)<br>    |
|   2|[0x80005320]<br>0x0000000000000000|- rs1 : f17<br> - rs2 : f17<br> - rd : f17<br> - rs1 == rs2 == rd<br>                                                                                                                                                                    |[0x800003d8]:fsub.d fa7, fa7, fa7, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsd fa7, 16(a5)<br>    |
|   3|[0x80005330]<br>0xEADFEEDBEADFEEDB|- rs1 : f22<br> - rs2 : f12<br> - rd : f13<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000003b and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br> |[0x800003f4]:fsub.d fa3, fs6, fa2, dyn<br> [0x800003f8]:csrrs a7, fflags, zero<br> [0x800003fc]:fsd fa3, 32(a5)<br>    |
|   4|[0x80005340]<br>0x76DF56FF76DF56FF|- rs1 : f26<br> - rs2 : f0<br> - rd : f26<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000039 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                         |[0x80000410]:fsub.d fs10, fs10, ft0, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:fsd fs10, 48(a5)<br> |
|   5|[0x80005350]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f14<br> - rs2 : f14<br> - rd : f20<br> - rs1 == rs2 != rd<br>                                                                                                                                                                    |[0x8000042c]:fsub.d fs4, fa4, fa4, dyn<br> [0x80000430]:csrrs a7, fflags, zero<br> [0x80000434]:fsd fs4, 64(a5)<br>    |
|   6|[0x80005360]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f20<br> - rs2 : f30<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000038 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                               |[0x80000448]:fsub.d fa2, fs4, ft10, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd fa2, 80(a5)<br>   |
|   7|[0x80005370]<br>0x0000000080004000|- rs1 : f25<br> - rs2 : f11<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000058 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x80000464]:fsub.d ft6, fs9, fa1, dyn<br> [0x80000468]:csrrs a7, fflags, zero<br> [0x8000046c]:fsd ft6, 96(a5)<br>    |
|   8|[0x80005380]<br>0x0000000A00006000|- rs1 : f30<br> - rs2 : f22<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000056 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x80000480]:fsub.d ft2, ft10, fs6, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd ft2, 112(a5)<br>  |
|   9|[0x80005390]<br>0xF56FF76DF56FF76D|- rs1 : f0<br> - rs2 : f8<br> - rd : f14<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000007 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                 |[0x8000049c]:fsub.d fa4, ft0, fs0, dyn<br> [0x800004a0]:csrrs a7, fflags, zero<br> [0x800004a4]:fsd fa4, 128(a5)<br>   |
|  10|[0x800053a0]<br>0xF76DF56FF76DF56F|- rs1 : f12<br> - rs2 : f1<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000045 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x800004b8]:fsub.d ft10, fa2, ft1, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:fsd ft10, 144(a5)<br> |
|  11|[0x800053b0]<br>0x56FF76DF56FF76DF|- rs1 : f18<br> - rs2 : f16<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000027 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                               |[0x800004d4]:fsub.d fa0, fs2, fa6, dyn<br> [0x800004d8]:csrrs a7, fflags, zero<br> [0x800004dc]:fsd fa0, 160(a5)<br>   |
|  12|[0x800053c0]<br>0xDBEADFEEDBEADFEE|- rs1 : f1<br> - rs2 : f6<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000001b and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                 |[0x800004f0]:fsub.d fs5, ft1, ft6, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd fs5, 176(a5)<br>   |
|  13|[0x800053d0]<br>0x0000000000000000|- rs1 : f9<br> - rs2 : f15<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000060 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                 |[0x8000050c]:fsub.d ft0, fs1, fa5, dyn<br> [0x80000510]:csrrs a7, fflags, zero<br> [0x80000514]:fsd ft0, 192(a5)<br>   |
|  14|[0x800053e0]<br>0xFEEDBEADFEEDBEAD|- rs1 : f23<br> - rs2 : f26<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000057 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x80000528]:fsub.d ft1, fs7, fs10, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsd ft1, 208(a5)<br>  |
|  15|[0x800053f0]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f11<br> - rs2 : f2<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000029 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x80000544]:fsub.d ft8, fa1, ft2, dyn<br> [0x80000548]:csrrs a7, fflags, zero<br> [0x8000054c]:fsd ft8, 224(a5)<br>   |
|  16|[0x80005400]<br>0x6DF56FF76DF56FF7|- rs1 : f13<br> - rs2 : f10<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000005d and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                               |[0x80000560]:fsub.d fs6, fa3, fa0, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd fs6, 240(a5)<br>   |
|  17|[0x80005410]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f6<br> - rs2 : f27<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000013 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x8000057c]:fsub.d fs3, ft6, fs11, dyn<br> [0x80000580]:csrrs a7, fflags, zero<br> [0x80000584]:fsd fs3, 256(a5)<br>  |
|  18|[0x80005420]<br>0xADFEEDBEADFEEDBE|- rs1 : f2<br> - rs2 : f21<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000011 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                 |[0x80000598]:fsub.d fs1, ft2, fs5, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd fs1, 272(a5)<br>   |
|  19|[0x80005430]<br>0xDF56FF76DF56FF76|- rs1 : f4<br> - rs2 : f31<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000004e and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x800005b4]:fsub.d fs2, ft4, ft11, dyn<br> [0x800005b8]:csrrs a7, fflags, zero<br> [0x800005bc]:fsd fs2, 288(a5)<br>  |
|  20|[0x80005440]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f8<br> - rs2 : f23<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000005b and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                 |[0x800005d0]:fsub.d ft7, fs0, fs7, dyn<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:fsd ft7, 304(a5)<br>   |
|  21|[0x80005450]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f21<br> - rs2 : f7<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000028 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x800005ec]:fsub.d fa1, fs5, ft7, dyn<br> [0x800005f0]:csrrs a7, fflags, zero<br> [0x800005f4]:fsd fa1, 320(a5)<br>   |
|  22|[0x80005460]<br>0x0000000080005310|- rs1 : f19<br> - rs2 : f9<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000017 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                |[0x80000608]:fsub.d fa5, fs3, fs1, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsd fa5, 336(a5)<br>   |
|  23|[0x80005470]<br>0xEEDBEADFEEDBEADF|- rs1 : f10<br> - rs2 : f24<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000056 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffff7fff52 and rm_val == 0  #nosat<br>                                               |[0x80000624]:fsub.d ft9, fa0, fs8, dyn<br> [0x80000628]:csrrs a7, fflags, zero<br> [0x8000062c]:fsd ft9, 352(a5)<br>   |
|  24|[0x80005480]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f5<br> - rs2 : f25<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000000a and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffbfffea and rm_val == 0  #nosat<br>                                                |[0x80000640]:fsub.d fs7, ft5, fs9, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fs7, 368(a5)<br>   |
|  25|[0x80005490]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f7<br> - rs2 : f20<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000041 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffdfff7c and rm_val == 0  #nosat<br>                                                |[0x8000065c]:fsub.d ft11, ft7, fs4, dyn<br> [0x80000660]:csrrs a7, fflags, zero<br> [0x80000664]:fsd ft11, 384(a5)<br> |
|  26|[0x800054a0]<br>0xEDBEADFEEDBEADFE|- rs1 : f16<br> - rs2 : f19<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000014 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffefffd6 and rm_val == 0  #nosat<br>                                               |[0x80000678]:fsub.d fs9, fa6, fs3, dyn<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:fsd fs9, 400(a5)<br>   |
|  27|[0x800054b0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f15<br> - rs2 : f28<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000040 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffff7ff7e and rm_val == 0  #nosat<br>                                               |[0x80000694]:fsub.d fs11, fa5, ft8, dyn<br> [0x80000698]:csrrs a7, fflags, zero<br> [0x8000069c]:fsd fs11, 416(a5)<br> |
|  28|[0x800054c0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f28<br> - rs2 : f13<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000061 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffbff3c and rm_val == 0  #nosat<br>                                               |[0x800006b0]:fsub.d fs8, ft8, fa3, dyn<br> [0x800006b4]:csrrs a7, fflags, zero<br> [0x800006b8]:fsd fs8, 432(a5)<br>   |
|  29|[0x800054d0]<br>0x0000000080004010|- rs1 : f31<br> - rs2 : f18<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffdfffa and rm_val == 0  #nosat<br>                                               |[0x800006cc]:fsub.d fa6, ft11, fs2, dyn<br> [0x800006d0]:csrrs a7, fflags, zero<br> [0x800006d4]:fsd fa6, 448(a5)<br>  |
|  30|[0x800054e0]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f3<br> - rs2 : f29<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000003 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffefff8 and rm_val == 0  #nosat<br>                                                 |[0x800006e8]:fsub.d ft4, ft3, ft9, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd ft4, 464(a5)<br>   |
|  31|[0x800054f0]<br>0x0000000A00000000|- rs1 : f29<br> - rs2 : f4<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000005e and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffff7f42 and rm_val == 0  #nosat<br>                                                 |[0x80000704]:fsub.d ft3, ft9, ft4, dyn<br> [0x80000708]:csrrs a7, fflags, zero<br> [0x8000070c]:fsd ft3, 480(a5)<br>   |
|  32|[0x80005500]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f24<br> - rs2 : f3<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000047 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffbf70 and rm_val == 0  #nosat<br>                                                 |[0x80000720]:fsub.d fs0, fs8, ft3, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd fs0, 496(a5)<br>   |
|  33|[0x80005510]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000000a and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffdfea and rm_val == 0  #nosat<br>                                                                                              |[0x8000073c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000740]:csrrs a7, fflags, zero<br> [0x80000744]:fsd fa2, 512(a5)<br>   |
|  34|[0x80005520]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000020 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffefbe and rm_val == 0  #nosat<br>                                                                                              |[0x80000758]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000075c]:csrrs a7, fflags, zero<br> [0x80000760]:fsd fa2, 528(a5)<br>   |
|  35|[0x80005530]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000001d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffff7c4 and rm_val == 0  #nosat<br>                                                                                              |[0x80000774]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000778]:csrrs a7, fflags, zero<br> [0x8000077c]:fsd fa2, 544(a5)<br>   |
|  36|[0x80005540]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000000c and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffffbe6 and rm_val == 0  #nosat<br>                                                                                              |[0x80000790]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa2, 560(a5)<br>   |
|  37|[0x80005550]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000004b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffffd68 and rm_val == 0  #nosat<br>                                                                                              |[0x800007ac]:fsub.d fa2, fa0, fa1, dyn<br> [0x800007b0]:csrrs a7, fflags, zero<br> [0x800007b4]:fsd fa2, 576(a5)<br>   |
|  38|[0x80005560]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000046 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xffffffffffe72 and rm_val == 0  #nosat<br>                                                                                              |[0x800007c8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsd fa2, 592(a5)<br>   |
|  39|[0x80005570]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000002b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffff28 and rm_val == 0  #nosat<br>                                                                                              |[0x800007e4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800007e8]:csrrs a7, fflags, zero<br> [0x800007ec]:fsd fa2, 608(a5)<br>   |
|  40|[0x80005580]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000027 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffff70 and rm_val == 0  #nosat<br>                                                                                              |[0x80000800]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa2, 624(a5)<br>   |
|  41|[0x80005590]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000029 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffff8c and rm_val == 0  #nosat<br>                                                                                              |[0x8000081c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000820]:csrrs a7, fflags, zero<br> [0x80000824]:fsd fa2, 640(a5)<br>   |
|  42|[0x800055a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000002a and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffff9a and rm_val == 0  #nosat<br>                                                                                              |[0x80000838]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:fsd fa2, 656(a5)<br>   |
|  43|[0x800055b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000028 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffffa6 and rm_val == 0  #nosat<br>                                                                                              |[0x80000854]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000858]:csrrs a7, fflags, zero<br> [0x8000085c]:fsd fa2, 672(a5)<br>   |
|  44|[0x800055c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x000000000001e and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffffbe and rm_val == 0  #nosat<br>                                                                                              |[0x80000870]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:fsd fa2, 688(a5)<br>   |
|  45|[0x800055d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000053 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfffffffffff56 and rm_val == 0  #nosat<br>                                                                                              |[0x8000088c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000890]:csrrs a7, fflags, zero<br> [0x80000894]:fsd fa2, 704(a5)<br>   |
|  46|[0x800055e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000054 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000020002a and rm_val == 0  #nosat<br>                                                                                              |[0x800008a8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:fsd fa2, 720(a5)<br>   |
|  47|[0x800055f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000003a and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000010001d and rm_val == 0  #nosat<br>                                                                                              |[0x800008c4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800008c8]:csrrs a7, fflags, zero<br> [0x800008cc]:fsd fa2, 736(a5)<br>   |
|  48|[0x80005600]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000000c and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000080006 and rm_val == 0  #nosat<br>                                                                                              |[0x800008e0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa2, 752(a5)<br>   |
|  49|[0x80005610]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000000b and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000040006 and rm_val == 0  #nosat<br>                                                                                              |[0x800008fc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000900]:csrrs a7, fflags, zero<br> [0x80000904]:fsd fa2, 768(a5)<br>   |
|  50|[0x80005620]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000020 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000020010 and rm_val == 0  #nosat<br>                                                                                              |[0x80000918]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:fsd fa2, 784(a5)<br>   |
|  51|[0x80005630]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000028 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000010014 and rm_val == 0  #nosat<br>                                                                                              |[0x80000934]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000938]:csrrs a7, fflags, zero<br> [0x8000093c]:fsd fa2, 800(a5)<br>   |
|  52|[0x80005640]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000046 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000008023 and rm_val == 0  #nosat<br>                                                                                              |[0x80000950]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000954]:csrrs a7, fflags, zero<br> [0x80000958]:fsd fa2, 816(a5)<br>   |
|  53|[0x80005650]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000022 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000004011 and rm_val == 0  #nosat<br>                                                                                              |[0x8000096c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000970]:csrrs a7, fflags, zero<br> [0x80000974]:fsd fa2, 832(a5)<br>   |
|  54|[0x80005660]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000055 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000202a and rm_val == 0  #nosat<br>                                                                                              |[0x80000988]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsd fa2, 848(a5)<br>   |
|  55|[0x80005670]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000059 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000102c and rm_val == 0  #nosat<br>                                                                                              |[0x800009a4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800009a8]:csrrs a7, fflags, zero<br> [0x800009ac]:fsd fa2, 864(a5)<br>   |
|  56|[0x80005680]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000050 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000828 and rm_val == 0  #nosat<br>                                                                                              |[0x800009c0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa2, 880(a5)<br>   |
|  57|[0x80005690]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000021 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000410 and rm_val == 0  #nosat<br>                                                                                              |[0x800009dc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800009e0]:csrrs a7, fflags, zero<br> [0x800009e4]:fsd fa2, 896(a5)<br>   |
|  58|[0x800056a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000003b and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000021e and rm_val == 0  #nosat<br>                                                                                              |[0x800009f8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800009fc]:csrrs a7, fflags, zero<br> [0x80000a00]:fsd fa2, 912(a5)<br>   |
|  59|[0x800056b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000029 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000114 and rm_val == 0  #nosat<br>                                                                                              |[0x80000a14]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000a18]:csrrs a7, fflags, zero<br> [0x80000a1c]:fsd fa2, 928(a5)<br>   |
|  60|[0x800056c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000009 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000084 and rm_val == 0  #nosat<br>                                                                                              |[0x80000a30]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000a34]:csrrs a7, fflags, zero<br> [0x80000a38]:fsd fa2, 944(a5)<br>   |
|  61|[0x800056d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000029 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000054 and rm_val == 0  #nosat<br>                                                                                              |[0x80000a4c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000a50]:csrrs a7, fflags, zero<br> [0x80000a54]:fsd fa2, 960(a5)<br>   |
|  62|[0x800056e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000003a and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000003d and rm_val == 0  #nosat<br>                                                                                              |[0x80000a68]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:fsd fa2, 976(a5)<br>   |
|  63|[0x800056f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000004d and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000036 and rm_val == 0  #nosat<br>                                                                                              |[0x80000a84]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000a88]:csrrs a7, fflags, zero<br> [0x80000a8c]:fsd fa2, 992(a5)<br>   |
|  64|[0x80005700]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000026 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000001b and rm_val == 0  #nosat<br>                                                                                              |[0x80000aa0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa2, 1008(a5)<br>  |
|  65|[0x80005710]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000004 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000006 and rm_val == 0  #nosat<br>                                                                                              |[0x80000abc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000ac0]:csrrs a7, fflags, zero<br> [0x80000ac4]:fsd fa2, 1024(a5)<br>  |
|  66|[0x80005720]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000029 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000016 and rm_val == 0  #nosat<br>                                                                                              |[0x80000ad8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000adc]:csrrs a7, fflags, zero<br> [0x80000ae0]:fsd fa2, 1040(a5)<br>  |
|  67|[0x80005730]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000001b and fs2 == 0 and fe2 == 0x002 and fm2 == 0x000000000000e and rm_val == 0  #nosat<br>                                                                                              |[0x80000af4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000af8]:csrrs a7, fflags, zero<br> [0x80000afc]:fsd fa2, 1056(a5)<br>  |
|  68|[0x80005740]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000029 and fs2 == 0 and fe2 == 0x002 and fm2 == 0x0000000000015 and rm_val == 0  #nosat<br>                                                                                              |[0x80000b10]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000b14]:csrrs a7, fflags, zero<br> [0x80000b18]:fsd fa2, 1072(a5)<br>  |
|  69|[0x80005750]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000005c and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000003fffa4 and rm_val == 0  #nosat<br>                                                                                              |[0x80000b2c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000b30]:csrrs a7, fflags, zero<br> [0x80000b34]:fsd fa2, 1088(a5)<br>  |
|  70|[0x80005760]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000047 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000001fffb9 and rm_val == 0  #nosat<br>                                                                                              |[0x80000b48]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000b4c]:csrrs a7, fflags, zero<br> [0x80000b50]:fsd fa2, 1104(a5)<br>  |
|  71|[0x80005770]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000046 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000fffba and rm_val == 0  #nosat<br>                                                                                              |[0x80000b64]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000b68]:csrrs a7, fflags, zero<br> [0x80000b6c]:fsd fa2, 1120(a5)<br>  |
|  72|[0x80005780]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000038 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000007ffc8 and rm_val == 0  #nosat<br>                                                                                              |[0x80000b80]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa2, 1136(a5)<br>  |
|  73|[0x80005790]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000060 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000003ffa0 and rm_val == 0  #nosat<br>                                                                                              |[0x80000b9c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000ba0]:csrrs a7, fflags, zero<br> [0x80000ba4]:fsd fa2, 1152(a5)<br>  |
|  74|[0x800057a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000001f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000001ffe1 and rm_val == 0  #nosat<br>                                                                                              |[0x80000bb8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000bbc]:csrrs a7, fflags, zero<br> [0x80000bc0]:fsd fa2, 1168(a5)<br>  |
|  75|[0x800057b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000016 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000ffea and rm_val == 0  #nosat<br>                                                                                              |[0x80000bd4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000bd8]:csrrs a7, fflags, zero<br> [0x80000bdc]:fsd fa2, 1184(a5)<br>  |
|  76|[0x800057c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000000f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000007ff1 and rm_val == 0  #nosat<br>                                                                                              |[0x80000bf0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000bf4]:csrrs a7, fflags, zero<br> [0x80000bf8]:fsd fa2, 1200(a5)<br>  |
|  77|[0x800057d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000036 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000003fca and rm_val == 0  #nosat<br>                                                                                              |[0x80000c0c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c10]:csrrs a7, fflags, zero<br> [0x80000c14]:fsd fa2, 1216(a5)<br>  |
|  78|[0x800057e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000001f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000001fe1 and rm_val == 0  #nosat<br>                                                                                              |[0x80000c28]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c2c]:csrrs a7, fflags, zero<br> [0x80000c30]:fsd fa2, 1232(a5)<br>  |
|  79|[0x800057f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000006 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000ffa and rm_val == 0  #nosat<br>                                                                                              |[0x80000c44]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c48]:csrrs a7, fflags, zero<br> [0x80000c4c]:fsd fa2, 1248(a5)<br>  |
|  80|[0x80005800]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000035 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000007cb and rm_val == 0  #nosat<br>                                                                                              |[0x80000c60]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa2, 1264(a5)<br>  |
|  81|[0x80005810]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000002 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000003fe and rm_val == 0  #nosat<br>                                                                                              |[0x80000c7c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c80]:csrrs a7, fflags, zero<br> [0x80000c84]:fsd fa2, 1280(a5)<br>  |
|  82|[0x80005820]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000004f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000001b1 and rm_val == 0  #nosat<br>                                                                                              |[0x80000c98]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c9c]:csrrs a7, fflags, zero<br> [0x80000ca0]:fsd fa2, 1296(a5)<br>  |
|  83|[0x80005830]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000026 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000000da and rm_val == 0  #nosat<br>                                                                                              |[0x80000cb4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000cb8]:csrrs a7, fflags, zero<br> [0x80000cbc]:fsd fa2, 1312(a5)<br>  |
|  84|[0x80005840]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000000e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000072 and rm_val == 0  #nosat<br>                                                                                              |[0x80000cd0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000cd4]:csrrs a7, fflags, zero<br> [0x80000cd8]:fsd fa2, 1328(a5)<br>  |
|  85|[0x80005850]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000003b and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000005 and rm_val == 0  #nosat<br>                                                                                              |[0x80000cec]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000cf0]:csrrs a7, fflags, zero<br> [0x80000cf4]:fsd fa2, 1344(a5)<br>  |
|  86|[0x80005860]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000045 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000025 and rm_val == 0  #nosat<br>                                                                                              |[0x80000d08]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d0c]:csrrs a7, fflags, zero<br> [0x80000d10]:fsd fa2, 1360(a5)<br>  |
|  87|[0x80005870]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000026 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000016 and rm_val == 0  #nosat<br>                                                                                              |[0x80000d24]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d28]:csrrs a7, fflags, zero<br> [0x80000d2c]:fsd fa2, 1376(a5)<br>  |
|  88|[0x80005880]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000023 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000001b and rm_val == 0  #nosat<br>                                                                                              |[0x80000d40]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa2, 1392(a5)<br>  |
|  89|[0x80005890]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000049 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000045 and rm_val == 0  #nosat<br>                                                                                              |[0x80000d5c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d60]:csrrs a7, fflags, zero<br> [0x80000d64]:fsd fa2, 1408(a5)<br>  |
|  90|[0x800058a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x0000000000047 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000045 and rm_val == 0  #nosat<br>                                                                                              |[0x80000d78]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d7c]:csrrs a7, fflags, zero<br> [0x80000d80]:fsd fa2, 1424(a5)<br>  |
|  91|[0x800058b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x001 and fm1 == 0x000000000000a and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000009 and rm_val == 0  #nosat<br>                                                                                              |[0x80000d94]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d98]:csrrs a7, fflags, zero<br> [0x80000d9c]:fsd fa2, 1440(a5)<br>  |
|  92|[0x800058c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004c and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffc0004b and rm_val == 0  #nosat<br>                                                                                              |[0x80000db0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000db4]:csrrs a7, fflags, zero<br> [0x80000db8]:fsd fa2, 1456(a5)<br>  |
|  93|[0x800058d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000f and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffe0000e and rm_val == 0  #nosat<br>                                                                                              |[0x80000dcc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000dd0]:csrrs a7, fflags, zero<br> [0x80000dd4]:fsd fa2, 1472(a5)<br>  |
|  94|[0x800058e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000011 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffff00010 and rm_val == 0  #nosat<br>                                                                                              |[0x80000de8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000dec]:csrrs a7, fflags, zero<br> [0x80000df0]:fsd fa2, 1488(a5)<br>  |
|  95|[0x800058f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000031 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffff80030 and rm_val == 0  #nosat<br>                                                                                              |[0x80000e04]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e08]:csrrs a7, fflags, zero<br> [0x80000e0c]:fsd fa2, 1504(a5)<br>  |
|  96|[0x80005900]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000035 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffc0034 and rm_val == 0  #nosat<br>                                                                                              |[0x80000e20]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa2, 1520(a5)<br>  |
|  97|[0x80005910]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002a and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffe0029 and rm_val == 0  #nosat<br>                                                                                              |[0x80000e3c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e40]:csrrs a7, fflags, zero<br> [0x80000e44]:fsd fa2, 1536(a5)<br>  |
|  98|[0x80005920]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000063 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffff0062 and rm_val == 0  #nosat<br>                                                                                              |[0x80000e58]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e5c]:csrrs a7, fflags, zero<br> [0x80000e60]:fsd fa2, 1552(a5)<br>  |
|  99|[0x80005930]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004b and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffff804a and rm_val == 0  #nosat<br>                                                                                              |[0x80000e74]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e78]:csrrs a7, fflags, zero<br> [0x80000e7c]:fsd fa2, 1568(a5)<br>  |
| 100|[0x80005940]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000003f and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffc03e and rm_val == 0  #nosat<br>                                                                                              |[0x80000e90]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e94]:csrrs a7, fflags, zero<br> [0x80000e98]:fsd fa2, 1584(a5)<br>  |
| 101|[0x80005950]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004e and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffe04d and rm_val == 0  #nosat<br>                                                                                              |[0x80000eac]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000eb0]:csrrs a7, fflags, zero<br> [0x80000eb4]:fsd fa2, 1600(a5)<br>  |
| 102|[0x80005960]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000026 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffff025 and rm_val == 0  #nosat<br>                                                                                              |[0x80000ec8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000ecc]:csrrs a7, fflags, zero<br> [0x80000ed0]:fsd fa2, 1616(a5)<br>  |
| 103|[0x80005970]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002c and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffff82b and rm_val == 0  #nosat<br>                                                                                              |[0x80000ee4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa2, 1632(a5)<br>  |
| 104|[0x80005980]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000030 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffffc2f and rm_val == 0  #nosat<br>                                                                                              |[0x80000f00]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f04]:csrrs a7, fflags, zero<br> [0x80000f08]:fsd fa2, 1648(a5)<br>  |
| 105|[0x80005990]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000041 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffffe40 and rm_val == 0  #nosat<br>                                                                                              |[0x80000f1c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f20]:csrrs a7, fflags, zero<br> [0x80000f24]:fsd fa2, 1664(a5)<br>  |
| 106|[0x800059a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002b and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffff2a and rm_val == 0  #nosat<br>                                                                                              |[0x80000f38]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f3c]:csrrs a7, fflags, zero<br> [0x80000f40]:fsd fa2, 1680(a5)<br>  |
| 107|[0x800059b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000023 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xfffffffffffa2 and rm_val == 0  #nosat<br>                                                                                              |[0x80000f54]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f58]:csrrs a7, fflags, zero<br> [0x80000f5c]:fsd fa2, 1696(a5)<br>  |
| 108|[0x800059c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000045 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000004 and rm_val == 0  #nosat<br>                                                                                              |[0x80000f70]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f74]:csrrs a7, fflags, zero<br> [0x80000f78]:fsd fa2, 1712(a5)<br>  |
| 109|[0x800059d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000016 and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffffff5 and rm_val == 0  #nosat<br>                                                                                              |[0x80000f8c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f90]:csrrs a7, fflags, zero<br> [0x80000f94]:fsd fa2, 1728(a5)<br>  |
| 110|[0x800059e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000b and fs2 == 0 and fe2 == 0x000 and fm2 == 0xffffffffffffa and rm_val == 0  #nosat<br>                                                                                              |[0x80000fa8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:fsd fa2, 1744(a5)<br>  |
| 111|[0x800059f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005d and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000054 and rm_val == 0  #nosat<br>                                                                                              |[0x80000fc4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa2, 1760(a5)<br>  |
| 112|[0x80005a00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001f and fs2 == 0 and fe2 == 0x001 and fm2 == 0x000000000001a and rm_val == 0  #nosat<br>                                                                                              |[0x80000fe0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000fe4]:csrrs a7, fflags, zero<br> [0x80000fe8]:fsd fa2, 1776(a5)<br>  |
| 113|[0x80005a10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000063 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000060 and rm_val == 0  #nosat<br>                                                                                              |[0x80000ffc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001000]:csrrs a7, fflags, zero<br> [0x80001004]:fsd fa2, 1792(a5)<br>  |
| 114|[0x80005a20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000045 and fs2 == 0 and fe2 == 0x001 and fm2 == 0x0000000000043 and rm_val == 0  #nosat<br>                                                                                              |[0x80001018]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000101c]:csrrs a7, fflags, zero<br> [0x80001020]:fsd fa2, 1808(a5)<br>  |
| 115|[0x80005a30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002d and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffbfffd2 and rm_val == 0  #nosat<br>                                                                                              |[0x80001034]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001038]:csrrs a7, fflags, zero<br> [0x8000103c]:fsd fa2, 1824(a5)<br>  |
| 116|[0x80005a40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000031 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffdfffce and rm_val == 0  #nosat<br>                                                                                              |[0x80001050]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001054]:csrrs a7, fflags, zero<br> [0x80001058]:fsd fa2, 1840(a5)<br>  |
| 117|[0x80005a50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000057 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffefffa8 and rm_val == 0  #nosat<br>                                                                                              |[0x8000106c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001070]:csrrs a7, fflags, zero<br> [0x80001074]:fsd fa2, 1856(a5)<br>  |
| 118|[0x80005a60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001c and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffff7ffe3 and rm_val == 0  #nosat<br>                                                                                              |[0x80001088]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000108c]:csrrs a7, fflags, zero<br> [0x80001090]:fsd fa2, 1872(a5)<br>  |
| 119|[0x80005a70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002c and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffbffd3 and rm_val == 0  #nosat<br>                                                                                              |[0x800010a4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa2, 1888(a5)<br>  |
| 120|[0x80005a80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000049 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffdffb6 and rm_val == 0  #nosat<br>                                                                                              |[0x800010c0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800010c4]:csrrs a7, fflags, zero<br> [0x800010c8]:fsd fa2, 1904(a5)<br>  |
| 121|[0x80005a90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001a and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffeffe5 and rm_val == 0  #nosat<br>                                                                                              |[0x800010dc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800010e0]:csrrs a7, fflags, zero<br> [0x800010e4]:fsd fa2, 1920(a5)<br>  |
| 122|[0x80005aa0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000003 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffff7ffc and rm_val == 0  #nosat<br>                                                                                              |[0x800010f8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800010fc]:csrrs a7, fflags, zero<br> [0x80001100]:fsd fa2, 1936(a5)<br>  |
| 123|[0x80005ab0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000034 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffbfcb and rm_val == 0  #nosat<br>                                                                                              |[0x80001114]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001118]:csrrs a7, fflags, zero<br> [0x8000111c]:fsd fa2, 1952(a5)<br>  |
| 124|[0x80005ac0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002a and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffdfd5 and rm_val == 0  #nosat<br>                                                                                              |[0x80001130]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001134]:csrrs a7, fflags, zero<br> [0x80001138]:fsd fa2, 1968(a5)<br>  |
| 125|[0x80005ad0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffefbf and rm_val == 0  #nosat<br>                                                                                              |[0x8000114c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001150]:csrrs a7, fflags, zero<br> [0x80001154]:fsd fa2, 1984(a5)<br>  |
| 126|[0x80005ae0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000026 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffff7d9 and rm_val == 0  #nosat<br>                                                                                              |[0x80001168]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000116c]:csrrs a7, fflags, zero<br> [0x80001170]:fsd fa2, 2000(a5)<br>  |
| 127|[0x80005af0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000056 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffffba9 and rm_val == 0  #nosat<br>                                                                                              |[0x80001184]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa2, 2016(a5)<br>  |
| 128|[0x80005b00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffffdbf and rm_val == 0  #nosat<br>                                                                                              |[0x800011ac]:fsub.d fa2, fa0, fa1, dyn<br> [0x800011b0]:csrrs a7, fflags, zero<br> [0x800011b4]:fsd fa2, 0(a5)<br>     |
| 129|[0x80005b10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004c and fs2 == 1 and fe2 == 0x000 and fm2 == 0xffffffffffeb3 and rm_val == 0  #nosat<br>                                                                                              |[0x800011c8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800011cc]:csrrs a7, fflags, zero<br> [0x800011d0]:fsd fa2, 16(a5)<br>    |
| 130|[0x80005b20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000057 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffff28 and rm_val == 0  #nosat<br>                                                                                              |[0x800011e4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa2, 32(a5)<br>    |
| 131|[0x80005b30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001b and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffa4 and rm_val == 0  #nosat<br>                                                                                              |[0x80001200]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001204]:csrrs a7, fflags, zero<br> [0x80001208]:fsd fa2, 48(a5)<br>    |
| 132|[0x80005b40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002d and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffb2 and rm_val == 0  #nosat<br>                                                                                              |[0x8000121c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001220]:csrrs a7, fflags, zero<br> [0x80001224]:fsd fa2, 64(a5)<br>    |
| 133|[0x80005b50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000031 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffbe and rm_val == 0  #nosat<br>                                                                                              |[0x80001238]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000123c]:csrrs a7, fflags, zero<br> [0x80001240]:fsd fa2, 80(a5)<br>    |
| 134|[0x80005b60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000042 and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffb5 and rm_val == 0  #nosat<br>                                                                                              |[0x80001254]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001258]:csrrs a7, fflags, zero<br> [0x8000125c]:fsd fa2, 96(a5)<br>    |
| 135|[0x80005b70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005b and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffa0 and rm_val == 0  #nosat<br>                                                                                              |[0x80001270]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001274]:csrrs a7, fflags, zero<br> [0x80001278]:fsd fa2, 112(a5)<br>   |
| 136|[0x80005b80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000003b and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffc2 and rm_val == 0  #nosat<br>                                                                                              |[0x8000128c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001290]:csrrs a7, fflags, zero<br> [0x80001294]:fsd fa2, 128(a5)<br>   |
| 137|[0x80005b90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001c and fs2 == 1 and fe2 == 0x000 and fm2 == 0xfffffffffffe2 and rm_val == 0  #nosat<br>                                                                                              |[0x800012a8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:fsd fa2, 144(a5)<br>   |
| 138|[0x80005ba0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000005 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000400006 and rm_val == 0  #nosat<br>                                                                                              |[0x800012c4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa2, 160(a5)<br>   |
| 139|[0x80005bb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000002 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000200003 and rm_val == 0  #nosat<br>                                                                                              |[0x800012e0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800012e4]:csrrs a7, fflags, zero<br> [0x800012e8]:fsd fa2, 176(a5)<br>   |
| 140|[0x80005bc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000021 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000100022 and rm_val == 0  #nosat<br>                                                                                              |[0x800012fc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001300]:csrrs a7, fflags, zero<br> [0x80001304]:fsd fa2, 192(a5)<br>   |
| 141|[0x80005bd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000036 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000080037 and rm_val == 0  #nosat<br>                                                                                              |[0x80001318]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000131c]:csrrs a7, fflags, zero<br> [0x80001320]:fsd fa2, 208(a5)<br>   |
| 142|[0x80005be0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000060 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000040061 and rm_val == 0  #nosat<br>                                                                                              |[0x80001334]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001338]:csrrs a7, fflags, zero<br> [0x8000133c]:fsd fa2, 224(a5)<br>   |
| 143|[0x80005bf0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000028 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000020029 and rm_val == 0  #nosat<br>                                                                                              |[0x80001350]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001354]:csrrs a7, fflags, zero<br> [0x80001358]:fsd fa2, 240(a5)<br>   |
| 144|[0x80005c00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000a and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000001000b and rm_val == 0  #nosat<br>                                                                                              |[0x8000136c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001370]:csrrs a7, fflags, zero<br> [0x80001374]:fsd fa2, 256(a5)<br>   |
| 145|[0x80005c10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000007 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008008 and rm_val == 0  #nosat<br>                                                                                              |[0x80001388]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000138c]:csrrs a7, fflags, zero<br> [0x80001390]:fsd fa2, 272(a5)<br>   |
| 146|[0x80005c20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000011 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000004012 and rm_val == 0  #nosat<br>                                                                                              |[0x800013a4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800013a8]:csrrs a7, fflags, zero<br> [0x800013ac]:fsd fa2, 288(a5)<br>   |
| 147|[0x80005c30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000002060 and rm_val == 0  #nosat<br>                                                                                              |[0x800013c0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800013c4]:csrrs a7, fflags, zero<br> [0x800013c8]:fsd fa2, 304(a5)<br>   |
| 148|[0x80005c40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000037 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000001038 and rm_val == 0  #nosat<br>                                                                                              |[0x800013dc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800013e0]:csrrs a7, fflags, zero<br> [0x800013e4]:fsd fa2, 320(a5)<br>   |
| 149|[0x80005c50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000055 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000856 and rm_val == 0  #nosat<br>                                                                                              |[0x800013f8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800013fc]:csrrs a7, fflags, zero<br> [0x80001400]:fsd fa2, 336(a5)<br>   |
| 150|[0x80005c60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004a and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000044b and rm_val == 0  #nosat<br>                                                                                              |[0x80001414]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001418]:csrrs a7, fflags, zero<br> [0x8000141c]:fsd fa2, 352(a5)<br>   |
| 151|[0x80005c70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000033 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000234 and rm_val == 0  #nosat<br>                                                                                              |[0x80001430]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001434]:csrrs a7, fflags, zero<br> [0x80001438]:fsd fa2, 368(a5)<br>   |
| 152|[0x80005c80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000054 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000155 and rm_val == 0  #nosat<br>                                                                                              |[0x8000144c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001450]:csrrs a7, fflags, zero<br> [0x80001454]:fsd fa2, 384(a5)<br>   |
| 153|[0x80005c90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000009e and rm_val == 0  #nosat<br>                                                                                              |[0x80001468]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000146c]:csrrs a7, fflags, zero<br> [0x80001470]:fsd fa2, 400(a5)<br>   |
| 154|[0x80005ca0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000043 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000084 and rm_val == 0  #nosat<br>                                                                                              |[0x80001484]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001488]:csrrs a7, fflags, zero<br> [0x8000148c]:fsd fa2, 416(a5)<br>   |
| 155|[0x80005cb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000051 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000072 and rm_val == 0  #nosat<br>                                                                                              |[0x800014a0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800014a4]:csrrs a7, fflags, zero<br> [0x800014a8]:fsd fa2, 432(a5)<br>   |
| 156|[0x80005cc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000046 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000057 and rm_val == 0  #nosat<br>                                                                                              |[0x800014bc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800014c0]:csrrs a7, fflags, zero<br> [0x800014c4]:fsd fa2, 448(a5)<br>   |
| 157|[0x80005cd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000057 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000060 and rm_val == 0  #nosat<br>                                                                                              |[0x800014d8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800014dc]:csrrs a7, fflags, zero<br> [0x800014e0]:fsd fa2, 464(a5)<br>   |
| 158|[0x80005ce0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000060 and rm_val == 0  #nosat<br>                                                                                              |[0x800014f4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800014f8]:csrrs a7, fflags, zero<br> [0x800014fc]:fsd fa2, 480(a5)<br>   |
| 159|[0x80005cf0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000015 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000018 and rm_val == 0  #nosat<br>                                                                                              |[0x80001510]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001514]:csrrs a7, fflags, zero<br> [0x80001518]:fsd fa2, 496(a5)<br>   |
| 160|[0x80005d00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000005 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000005 and rm_val == 0  #nosat<br>                                                                                              |[0x8000152c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001530]:csrrs a7, fflags, zero<br> [0x80001534]:fsd fa2, 512(a5)<br>   |
| 161|[0x80005d10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000033 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000003fffce and rm_val == 0  #nosat<br>                                                                                              |[0x80001548]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000154c]:csrrs a7, fflags, zero<br> [0x80001550]:fsd fa2, 528(a5)<br>   |
| 162|[0x80005d20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001d and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000001fffe4 and rm_val == 0  #nosat<br>                                                                                              |[0x80001564]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001568]:csrrs a7, fflags, zero<br> [0x8000156c]:fsd fa2, 544(a5)<br>   |
| 163|[0x80005d30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000038 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000fffc9 and rm_val == 0  #nosat<br>                                                                                              |[0x80001580]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001584]:csrrs a7, fflags, zero<br> [0x80001588]:fsd fa2, 560(a5)<br>   |
| 164|[0x80005d40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001b and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000007ffe6 and rm_val == 0  #nosat<br>                                                                                              |[0x8000159c]:fsub.d fa2, fa0, fa1, dyn<br> [0x800015a0]:csrrs a7, fflags, zero<br> [0x800015a4]:fsd fa2, 576(a5)<br>   |
| 165|[0x80005d50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000003ffa3 and rm_val == 0  #nosat<br>                                                                                              |[0x800015b8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800015bc]:csrrs a7, fflags, zero<br> [0x800015c0]:fsd fa2, 592(a5)<br>   |
| 166|[0x80005d60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000001fff3 and rm_val == 0  #nosat<br>                                                                                              |[0x800015d4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800015d8]:csrrs a7, fflags, zero<br> [0x800015dc]:fsd fa2, 608(a5)<br>   |
| 167|[0x80005d70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000019 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000ffe8 and rm_val == 0  #nosat<br>                                                                                              |[0x800015f0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800015f4]:csrrs a7, fflags, zero<br> [0x800015f8]:fsd fa2, 624(a5)<br>   |
| 168|[0x80005d80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002c and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000007fd5 and rm_val == 0  #nosat<br>                                                                                              |[0x8000160c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:fsd fa2, 640(a5)<br>   |
| 169|[0x80005d90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000028 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000003fd9 and rm_val == 0  #nosat<br>                                                                                              |[0x80001628]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000162c]:csrrs a7, fflags, zero<br> [0x80001630]:fsd fa2, 656(a5)<br>   |
| 170|[0x80005da0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000001ff2 and rm_val == 0  #nosat<br>                                                                                              |[0x80001644]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001648]:csrrs a7, fflags, zero<br> [0x8000164c]:fsd fa2, 672(a5)<br>   |
| 171|[0x80005db0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000fc1 and rm_val == 0  #nosat<br>                                                                                              |[0x80001660]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001664]:csrrs a7, fflags, zero<br> [0x80001668]:fsd fa2, 688(a5)<br>   |
| 172|[0x80005dc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005a and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000007a7 and rm_val == 0  #nosat<br>                                                                                              |[0x8000167c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001680]:csrrs a7, fflags, zero<br> [0x80001684]:fsd fa2, 704(a5)<br>   |
| 173|[0x80005dd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000026 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000003db and rm_val == 0  #nosat<br>                                                                                              |[0x80001698]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000169c]:csrrs a7, fflags, zero<br> [0x800016a0]:fsd fa2, 720(a5)<br>   |
| 174|[0x80005de0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000053 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000001ae and rm_val == 0  #nosat<br>                                                                                              |[0x800016b4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800016b8]:csrrs a7, fflags, zero<br> [0x800016bc]:fsd fa2, 736(a5)<br>   |
| 175|[0x80005df0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000055 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000000ac and rm_val == 0  #nosat<br>                                                                                              |[0x800016d0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800016d4]:csrrs a7, fflags, zero<br> [0x800016d8]:fsd fa2, 752(a5)<br>   |
| 176|[0x80005e00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000044 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000003d and rm_val == 0  #nosat<br>                                                                                              |[0x800016ec]:fsub.d fa2, fa0, fa1, dyn<br> [0x800016f0]:csrrs a7, fflags, zero<br> [0x800016f4]:fsd fa2, 768(a5)<br>   |
| 177|[0x80005e10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000015 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000002c and rm_val == 0  #nosat<br>                                                                                              |[0x80001708]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000170c]:csrrs a7, fflags, zero<br> [0x80001710]:fsd fa2, 784(a5)<br>   |
| 178|[0x80005e20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000009 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000018 and rm_val == 0  #nosat<br>                                                                                              |[0x80001724]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001728]:csrrs a7, fflags, zero<br> [0x8000172c]:fsd fa2, 800(a5)<br>   |
| 179|[0x80005e30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000001c and rm_val == 0  #nosat<br>                                                                                              |[0x80001740]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001744]:csrrs a7, fflags, zero<br> [0x80001748]:fsd fa2, 816(a5)<br>   |
| 180|[0x80005e40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000050 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000047 and rm_val == 0  #nosat<br>                                                                                              |[0x8000175c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001760]:csrrs a7, fflags, zero<br> [0x80001764]:fsd fa2, 832(a5)<br>   |
| 181|[0x80005e50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000023 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000001e and rm_val == 0  #nosat<br>                                                                                              |[0x80001778]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000177c]:csrrs a7, fflags, zero<br> [0x80001780]:fsd fa2, 848(a5)<br>   |
| 182|[0x80005e60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000024 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000021 and rm_val == 0  #nosat<br>                                                                                              |[0x80001794]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001798]:csrrs a7, fflags, zero<br> [0x8000179c]:fsd fa2, 864(a5)<br>   |
| 183|[0x80005e70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000061 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000061 and rm_val == 0  #nosat<br>                                                                                              |[0x800017b0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800017b4]:csrrs a7, fflags, zero<br> [0x800017b8]:fsd fa2, 880(a5)<br>   |
| 184|[0x80005e80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000003a and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000020001d and rm_val == 0  #nosat<br>                                                                                              |[0x800017cc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800017d0]:csrrs a7, fflags, zero<br> [0x800017d4]:fsd fa2, 896(a5)<br>   |
| 185|[0x80005e90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000000b and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000100006 and rm_val == 0  #nosat<br>                                                                                              |[0x800017e8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800017ec]:csrrs a7, fflags, zero<br> [0x800017f0]:fsd fa2, 912(a5)<br>   |
| 186|[0x80005ea0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000057 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000008002c and rm_val == 0  #nosat<br>                                                                                              |[0x80001804]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001808]:csrrs a7, fflags, zero<br> [0x8000180c]:fsd fa2, 928(a5)<br>   |
| 187|[0x80005eb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000021 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000040010 and rm_val == 0  #nosat<br>                                                                                              |[0x80001820]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001824]:csrrs a7, fflags, zero<br> [0x80001828]:fsd fa2, 944(a5)<br>   |
| 188|[0x80005ec0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000000c and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000020006 and rm_val == 0  #nosat<br>                                                                                              |[0x8000183c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001840]:csrrs a7, fflags, zero<br> [0x80001844]:fsd fa2, 960(a5)<br>   |
| 189|[0x80005ed0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000004b and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000010026 and rm_val == 0  #nosat<br>                                                                                              |[0x80001858]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000185c]:csrrs a7, fflags, zero<br> [0x80001860]:fsd fa2, 976(a5)<br>   |
| 190|[0x80005ee0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000017 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000800c and rm_val == 0  #nosat<br>                                                                                              |[0x80001874]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001878]:csrrs a7, fflags, zero<br> [0x8000187c]:fsd fa2, 992(a5)<br>   |
| 191|[0x80005ef0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000001e and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000400f and rm_val == 0  #nosat<br>                                                                                              |[0x80001890]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001894]:csrrs a7, fflags, zero<br> [0x80001898]:fsd fa2, 1008(a5)<br>  |
| 192|[0x80005f00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000004d and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000002026 and rm_val == 0  #nosat<br>                                                                                              |[0x800018ac]:fsub.d fa2, fa0, fa1, dyn<br> [0x800018b0]:csrrs a7, fflags, zero<br> [0x800018b4]:fsd fa2, 1024(a5)<br>  |
| 193|[0x80005f10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000002b and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000001016 and rm_val == 0  #nosat<br>                                                                                              |[0x800018c8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800018cc]:csrrs a7, fflags, zero<br> [0x800018d0]:fsd fa2, 1040(a5)<br>  |
| 194|[0x80005f20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000050 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000828 and rm_val == 0  #nosat<br>                                                                                              |[0x800018e4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800018e8]:csrrs a7, fflags, zero<br> [0x800018ec]:fsd fa2, 1056(a5)<br>  |
| 195|[0x80005f30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000045 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000422 and rm_val == 0  #nosat<br>                                                                                              |[0x80001900]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001904]:csrrs a7, fflags, zero<br> [0x80001908]:fsd fa2, 1072(a5)<br>  |
| 196|[0x80005f40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000002d and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000216 and rm_val == 0  #nosat<br>                                                                                              |[0x8000191c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001920]:csrrs a7, fflags, zero<br> [0x80001924]:fsd fa2, 1088(a5)<br>  |
| 197|[0x80005f50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000002e and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000117 and rm_val == 0  #nosat<br>                                                                                              |[0x80001938]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000193c]:csrrs a7, fflags, zero<br> [0x80001940]:fsd fa2, 1104(a5)<br>  |
| 198|[0x80005f60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000035 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000009a and rm_val == 0  #nosat<br>                                                                                              |[0x80001954]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001958]:csrrs a7, fflags, zero<br> [0x8000195c]:fsd fa2, 1120(a5)<br>  |
| 199|[0x80005f70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000001a and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000004d and rm_val == 0  #nosat<br>                                                                                              |[0x80001970]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:fsd fa2, 1136(a5)<br>  |
| 200|[0x80005f80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000049 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000044 and rm_val == 0  #nosat<br>                                                                                              |[0x8000198c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001990]:csrrs a7, fflags, zero<br> [0x80001994]:fsd fa2, 1152(a5)<br>  |
| 201|[0x80005f90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000003e and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000002f and rm_val == 0  #nosat<br>                                                                                              |[0x800019a8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800019ac]:csrrs a7, fflags, zero<br> [0x800019b0]:fsd fa2, 1168(a5)<br>  |
| 202|[0x80005fa0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000037 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000024 and rm_val == 0  #nosat<br>                                                                                              |[0x800019c4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800019c8]:csrrs a7, fflags, zero<br> [0x800019cc]:fsd fa2, 1184(a5)<br>  |
| 203|[0x80005fb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000048 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000028 and rm_val == 0  #nosat<br>                                                                                              |[0x800019e0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800019e4]:csrrs a7, fflags, zero<br> [0x800019e8]:fsd fa2, 1200(a5)<br>  |
| 204|[0x80005fc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000011 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x000000000000a and rm_val == 0  #nosat<br>                                                                                              |[0x800019fc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001a00]:csrrs a7, fflags, zero<br> [0x80001a04]:fsd fa2, 1216(a5)<br>  |
| 205|[0x80005fd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x000000000005f and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000030 and rm_val == 0  #nosat<br>                                                                                              |[0x80001a18]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001a1c]:csrrs a7, fflags, zero<br> [0x80001a20]:fsd fa2, 1232(a5)<br>  |
| 206|[0x80005fe0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x0000000000001 and fs2 == 0 and fe2 == 0x3f9 and fm2 == 0x0000000000001 and rm_val == 0  #nosat<br>                                                                                              |[0x80001a34]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001a38]:csrrs a7, fflags, zero<br> [0x80001a3c]:fsd fa2, 1248(a5)<br>  |
| 207|[0x80005ff0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000004e and fs2 == 1 and fe2 == 0x3e0 and fm2 == 0xfffd900000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001a50]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001a54]:csrrs a7, fflags, zero<br> [0x80001a58]:fsd fa2, 1264(a5)<br>  |
| 208|[0x80006000]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000055 and fs2 == 1 and fe2 == 0x3df and fm2 == 0xfffab00000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001a6c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001a70]:csrrs a7, fflags, zero<br> [0x80001a74]:fsd fa2, 1280(a5)<br>  |
| 209|[0x80006010]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000003b and fs2 == 1 and fe2 == 0x3de and fm2 == 0xfff8a00000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001a88]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001a8c]:csrrs a7, fflags, zero<br> [0x80001a90]:fsd fa2, 1296(a5)<br>  |
| 210|[0x80006020]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000004a and fs2 == 1 and fe2 == 0x3dd and fm2 == 0xffed800000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001aa4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001aa8]:csrrs a7, fflags, zero<br> [0x80001aac]:fsd fa2, 1312(a5)<br>  |
| 211|[0x80006030]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000042 and fs2 == 1 and fe2 == 0x3dc and fm2 == 0xffdf000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001ac0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001ac4]:csrrs a7, fflags, zero<br> [0x80001ac8]:fsd fa2, 1328(a5)<br>  |
| 212|[0x80006040]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000001e and fs2 == 1 and fe2 == 0x3db and fm2 == 0xffe2000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001adc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001ae0]:csrrs a7, fflags, zero<br> [0x80001ae4]:fsd fa2, 1344(a5)<br>  |
| 213|[0x80006050]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000046 and fs2 == 1 and fe2 == 0x3da and fm2 == 0xff74000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001af8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001afc]:csrrs a7, fflags, zero<br> [0x80001b00]:fsd fa2, 1360(a5)<br>  |
| 214|[0x80006060]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000063 and fs2 == 1 and fe2 == 0x3d9 and fm2 == 0xfe74000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001b14]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001b18]:csrrs a7, fflags, zero<br> [0x80001b1c]:fsd fa2, 1376(a5)<br>  |
| 215|[0x80006070]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000001e and fs2 == 1 and fe2 == 0x3d8 and fm2 == 0xff10000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001b30]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001b34]:csrrs a7, fflags, zero<br> [0x80001b38]:fsd fa2, 1392(a5)<br>  |
| 216|[0x80006080]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000016 and fs2 == 1 and fe2 == 0x3d7 and fm2 == 0xfea0000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001b4c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001b50]:csrrs a7, fflags, zero<br> [0x80001b54]:fsd fa2, 1408(a5)<br>  |
| 217|[0x80006090]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000053 and fs2 == 1 and fe2 == 0x3d6 and fm2 == 0xf5a0000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001b68]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001b6c]:csrrs a7, fflags, zero<br> [0x80001b70]:fsd fa2, 1424(a5)<br>  |
| 218|[0x800060a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000004b and fs2 == 1 and fe2 == 0x3d5 and fm2 == 0xed40000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001b84]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001b88]:csrrs a7, fflags, zero<br> [0x80001b8c]:fsd fa2, 1440(a5)<br>  |
| 219|[0x800060b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000004f and fs2 == 1 and fe2 == 0x3d4 and fm2 == 0xd880000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001ba0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001ba4]:csrrs a7, fflags, zero<br> [0x80001ba8]:fsd fa2, 1456(a5)<br>  |
| 220|[0x800060c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000028 and fs2 == 1 and fe2 == 0x3d3 and fm2 == 0xd800000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001bbc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001bc0]:csrrs a7, fflags, zero<br> [0x80001bc4]:fsd fa2, 1472(a5)<br>  |
| 221|[0x800060d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000003d and fs2 == 1 and fe2 == 0x3d2 and fm2 == 0x8600000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001bd8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001bdc]:csrrs a7, fflags, zero<br> [0x80001be0]:fsd fa2, 1488(a5)<br>  |
| 222|[0x800060e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000005e and fs2 == 1 and fe2 == 0x3d0 and fm2 == 0x1000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001bf4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001bf8]:csrrs a7, fflags, zero<br> [0x80001bfc]:fsd fa2, 1504(a5)<br>  |
| 223|[0x800060f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000030 and fs2 == 1 and fe2 == 0x3cf and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001c10]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001c14]:csrrs a7, fflags, zero<br> [0x80001c18]:fsd fa2, 1520(a5)<br>  |
| 224|[0x80006100]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000043 and fs2 == 0 and fe2 == 0x3d0 and fm2 == 0x1800000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001c2c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001c30]:csrrs a7, fflags, zero<br> [0x80001c34]:fsd fa2, 1536(a5)<br>  |
| 225|[0x80006110]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000000e and fs2 == 1 and fe2 == 0x3cc and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001c48]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001c4c]:csrrs a7, fflags, zero<br> [0x80001c50]:fsd fa2, 1552(a5)<br>  |
| 226|[0x80006120]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000055 and fs2 == 0 and fe2 == 0x3d1 and fm2 == 0x3400000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001c64]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001c68]:csrrs a7, fflags, zero<br> [0x80001c6c]:fsd fa2, 1568(a5)<br>  |
| 227|[0x80006130]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000000c and fs2 == 0 and fe2 == 0x3ce and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001c80]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001c84]:csrrs a7, fflags, zero<br> [0x80001c88]:fsd fa2, 1584(a5)<br>  |
| 228|[0x80006140]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000005f and fs2 == 0 and fe2 == 0x3d1 and fm2 == 0x7400000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001c9c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001ca0]:csrrs a7, fflags, zero<br> [0x80001ca4]:fsd fa2, 1600(a5)<br>  |
| 229|[0x80006150]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x3ff and fm1 == 0x000000000005a and fs2 == 0 and fe2 == 0x3d1 and fm2 == 0x6400000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80001cb8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001cbc]:csrrs a7, fflags, zero<br> [0x80001cc0]:fsd fa2, 1616(a5)<br>  |
| 230|[0x80006160]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000002f and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000040002f and rm_val == 0  #nosat<br>                                                                                              |[0x80001cd4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001cd8]:csrrs a7, fflags, zero<br> [0x80001cdc]:fsd fa2, 1632(a5)<br>  |
| 231|[0x80006170]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000056 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000200056 and rm_val == 0  #nosat<br>                                                                                              |[0x80001cf0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001cf4]:csrrs a7, fflags, zero<br> [0x80001cf8]:fsd fa2, 1648(a5)<br>  |
| 232|[0x80006180]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000034 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000100034 and rm_val == 0  #nosat<br>                                                                                              |[0x80001d0c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001d10]:csrrs a7, fflags, zero<br> [0x80001d14]:fsd fa2, 1664(a5)<br>  |
| 233|[0x80006190]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000020 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000080020 and rm_val == 0  #nosat<br>                                                                                              |[0x80001d28]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001d2c]:csrrs a7, fflags, zero<br> [0x80001d30]:fsd fa2, 1680(a5)<br>  |
| 234|[0x800061a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000005 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000040005 and rm_val == 0  #nosat<br>                                                                                              |[0x80001d44]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001d48]:csrrs a7, fflags, zero<br> [0x80001d4c]:fsd fa2, 1696(a5)<br>  |
| 235|[0x800061b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000033 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000020033 and rm_val == 0  #nosat<br>                                                                                              |[0x80001d60]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001d64]:csrrs a7, fflags, zero<br> [0x80001d68]:fsd fa2, 1712(a5)<br>  |
| 236|[0x800061c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000010040 and rm_val == 0  #nosat<br>                                                                                              |[0x80001d7c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001d80]:csrrs a7, fflags, zero<br> [0x80001d84]:fsd fa2, 1728(a5)<br>  |
| 237|[0x800061d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000025 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000008025 and rm_val == 0  #nosat<br>                                                                                              |[0x80001d98]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001d9c]:csrrs a7, fflags, zero<br> [0x80001da0]:fsd fa2, 1744(a5)<br>  |
| 238|[0x800061e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000019 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000004019 and rm_val == 0  #nosat<br>                                                                                              |[0x80001db4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001db8]:csrrs a7, fflags, zero<br> [0x80001dbc]:fsd fa2, 1760(a5)<br>  |
| 239|[0x800061f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000041 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000002041 and rm_val == 0  #nosat<br>                                                                                              |[0x80001dd0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001dd4]:csrrs a7, fflags, zero<br> [0x80001dd8]:fsd fa2, 1776(a5)<br>  |
| 240|[0x80006200]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000041 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000001041 and rm_val == 0  #nosat<br>                                                                                              |[0x80001dec]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001df0]:csrrs a7, fflags, zero<br> [0x80001df4]:fsd fa2, 1792(a5)<br>  |
| 241|[0x80006210]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000085d and rm_val == 0  #nosat<br>                                                                                              |[0x80001e08]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001e0c]:csrrs a7, fflags, zero<br> [0x80001e10]:fsd fa2, 1808(a5)<br>  |
| 242|[0x80006220]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000060 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000460 and rm_val == 0  #nosat<br>                                                                                              |[0x80001e24]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001e28]:csrrs a7, fflags, zero<br> [0x80001e2c]:fsd fa2, 1824(a5)<br>  |
| 243|[0x80006230]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000026 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000226 and rm_val == 0  #nosat<br>                                                                                              |[0x80001e40]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001e44]:csrrs a7, fflags, zero<br> [0x80001e48]:fsd fa2, 1840(a5)<br>  |
| 244|[0x80006240]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000051 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000151 and rm_val == 0  #nosat<br>                                                                                              |[0x80001e5c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001e60]:csrrs a7, fflags, zero<br> [0x80001e64]:fsd fa2, 1856(a5)<br>  |
| 245|[0x80006250]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000008d and rm_val == 0  #nosat<br>                                                                                              |[0x80001e78]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001e7c]:csrrs a7, fflags, zero<br> [0x80001e80]:fsd fa2, 1872(a5)<br>  |
| 246|[0x80006260]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000048 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000088 and rm_val == 0  #nosat<br>                                                                                              |[0x80001e94]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001e98]:csrrs a7, fflags, zero<br> [0x80001e9c]:fsd fa2, 1888(a5)<br>  |
| 247|[0x80006270]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000003 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000023 and rm_val == 0  #nosat<br>                                                                                              |[0x80001eb0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001eb4]:csrrs a7, fflags, zero<br> [0x80001eb8]:fsd fa2, 1904(a5)<br>  |
| 248|[0x80006280]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000003b and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000004b and rm_val == 0  #nosat<br>                                                                                              |[0x80001ecc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001ed0]:csrrs a7, fflags, zero<br> [0x80001ed4]:fsd fa2, 1920(a5)<br>  |
| 249|[0x80006290]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001d and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000025 and rm_val == 0  #nosat<br>                                                                                              |[0x80001ee8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001eec]:csrrs a7, fflags, zero<br> [0x80001ef0]:fsd fa2, 1936(a5)<br>  |
| 250|[0x800062a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000022 and rm_val == 0  #nosat<br>                                                                                              |[0x80001f04]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001f08]:csrrs a7, fflags, zero<br> [0x80001f0c]:fsd fa2, 1952(a5)<br>  |
| 251|[0x800062b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001e and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000020 and rm_val == 0  #nosat<br>                                                                                              |[0x80001f20]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001f24]:csrrs a7, fflags, zero<br> [0x80001f28]:fsd fa2, 1968(a5)<br>  |
| 252|[0x800062c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000041 and rm_val == 0  #nosat<br>                                                                                              |[0x80001f3c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001f40]:csrrs a7, fflags, zero<br> [0x80001f44]:fsd fa2, 1984(a5)<br>  |
| 253|[0x800062d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000062 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000003fff9e and rm_val == 0  #nosat<br>                                                                                              |[0x80001f58]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001f5c]:csrrs a7, fflags, zero<br> [0x80001f60]:fsd fa2, 2000(a5)<br>  |
| 254|[0x800062e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000044 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000001fffbc and rm_val == 0  #nosat<br>                                                                                              |[0x80001f74]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001f78]:csrrs a7, fflags, zero<br> [0x80001f7c]:fsd fa2, 2016(a5)<br>  |
| 255|[0x800062f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005d and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000fffa3 and rm_val == 0  #nosat<br>                                                                                              |[0x80001f9c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001fa0]:csrrs a7, fflags, zero<br> [0x80001fa4]:fsd fa2, 0(a5)<br>     |
| 256|[0x80006300]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001c and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000007ffe4 and rm_val == 0  #nosat<br>                                                                                              |[0x80001fb8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001fbc]:csrrs a7, fflags, zero<br> [0x80001fc0]:fsd fa2, 16(a5)<br>    |
| 257|[0x80006310]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000031 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000003ffcf and rm_val == 0  #nosat<br>                                                                                              |[0x80001fd4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001fd8]:csrrs a7, fflags, zero<br> [0x80001fdc]:fsd fa2, 32(a5)<br>    |
| 258|[0x80006320]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000046 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000001ffba and rm_val == 0  #nosat<br>                                                                                              |[0x80001ff0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001ff4]:csrrs a7, fflags, zero<br> [0x80001ff8]:fsd fa2, 48(a5)<br>    |
| 259|[0x80006330]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000004 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000fffc and rm_val == 0  #nosat<br>                                                                                              |[0x8000200c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80002010]:csrrs a7, fflags, zero<br> [0x80002014]:fsd fa2, 64(a5)<br>    |
| 260|[0x80006340]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000004 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000007ffc and rm_val == 0  #nosat<br>                                                                                              |[0x80002028]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000202c]:csrrs a7, fflags, zero<br> [0x80002030]:fsd fa2, 80(a5)<br>    |
| 261|[0x80006350]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000000e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000003ff2 and rm_val == 0  #nosat<br>                                                                                              |[0x80002044]:fsub.d fa2, fa0, fa1, dyn<br> [0x80002048]:csrrs a7, fflags, zero<br> [0x8000204c]:fsd fa2, 96(a5)<br>    |
| 262|[0x80006360]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000001fe2 and rm_val == 0  #nosat<br>                                                                                              |[0x80002060]:fsub.d fa2, fa0, fa1, dyn<br> [0x80002064]:csrrs a7, fflags, zero<br> [0x80002068]:fsd fa2, 112(a5)<br>   |
| 263|[0x80006370]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000023 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000fdd and rm_val == 0  #nosat<br>                                                                                              |[0x8000207c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80002080]:csrrs a7, fflags, zero<br> [0x80002084]:fsd fa2, 128(a5)<br>   |
| 264|[0x80006380]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000005a and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000007a6 and rm_val == 0  #nosat<br>                                                                                              |[0x80002098]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000209c]:csrrs a7, fflags, zero<br> [0x800020a0]:fsd fa2, 144(a5)<br>   |
| 265|[0x80006390]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000063 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x000000000039d and rm_val == 0  #nosat<br>                                                                                              |[0x800020b4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800020b8]:csrrs a7, fflags, zero<br> [0x800020bc]:fsd fa2, 160(a5)<br>   |
| 266|[0x800063a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000004e and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000001b2 and rm_val == 0  #nosat<br>                                                                                              |[0x800020d0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800020d4]:csrrs a7, fflags, zero<br> [0x800020d8]:fsd fa2, 176(a5)<br>   |
| 267|[0x800063b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000032 and fs2 == 1 and fe2 == 0x000 and fm2 == 0x00000000000ce and rm_val == 0  #nosat<br>                                                                                              |[0x800020ec]:fsub.d fa2, fa0, fa1, dyn<br> [0x800020f0]:csrrs a7, fflags, zero<br> [0x800020f4]:fsd fa2, 192(a5)<br>   |
| 268|[0x800063c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000003f and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000041 and rm_val == 0  #nosat<br>                                                                                              |[0x80002108]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000210c]:csrrs a7, fflags, zero<br> [0x80002110]:fsd fa2, 208(a5)<br>   |
| 269|[0x800063d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000001b and fs2 == 1 and fe2 == 0x000 and fm2 == 0x0000000000025 and rm_val == 0  #nosat<br>                                                                                              |[0x80002124]:fsub.d fa2, fa0, fa1, dyn<br> [0x80002128]:csrrs a7, fflags, zero<br> [0x8000212c]:fsd fa2, 224(a5)<br>   |
| 270|[0x800063e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000054 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000034 and rm_val == 0  #nosat<br>                                                                                              |[0x80002140]:fsub.d fa2, fa0, fa1, dyn<br> [0x80002144]:csrrs a7, fflags, zero<br> [0x80002148]:fsd fa2, 240(a5)<br>   |
| 271|[0x800063f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x000000000003a and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000002a and rm_val == 0  #nosat<br>                                                                                              |[0x8000215c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80002160]:csrrs a7, fflags, zero<br> [0x80002164]:fsd fa2, 256(a5)<br>   |
| 272|[0x80006400]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000040 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000038 and rm_val == 0  #nosat<br>                                                                                              |[0x80002178]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000217c]:csrrs a7, fflags, zero<br> [0x80002180]:fsd fa2, 272(a5)<br>   |
| 273|[0x80006410]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000021 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x000000000001d and rm_val == 0  #nosat<br>                                                                                              |[0x80002194]:fsub.d fa2, fa0, fa1, dyn<br> [0x80002198]:csrrs a7, fflags, zero<br> [0x8000219c]:fsd fa2, 288(a5)<br>   |
| 274|[0x80006420]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000062 and fs2 == 0 and fe2 == 0x000 and fm2 == 0x0000000000060 and rm_val == 0  #nosat<br>                                                                                              |[0x800021b0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800021b4]:csrrs a7, fflags, zero<br> [0x800021b8]:fsd fa2, 304(a5)<br>   |
| 275|[0x80006430]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000033 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x800021cc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800021d0]:csrrs a7, fflags, zero<br> [0x800021d4]:fsd fa2, 320(a5)<br>   |
| 276|[0x80006450]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0000000000021 and fs2 == 0 and fe2 == 0x7ff and fm2 == 0x0000000000000 and rm_val == 0  #nosat<br>                                                                                              |[0x80002204]:fsub.d fa2, fa0, fa1, dyn<br> [0x80002208]:csrrs a7, fflags, zero<br> [0x8000220c]:fsd fa2, 352(a5)<br>   |
