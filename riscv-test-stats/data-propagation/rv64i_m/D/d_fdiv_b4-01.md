
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001350')]      |
| SIG_REGION                | [('0x80003a10', '0x800042f0', '284 dwords')]      |
| COV_LABELS                | fdiv_b4      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fdiv_b4-01.S/ref.S    |
| Total Number of coverpoints| 248     |
| Total Coverpoints Hit     | 242      |
| Total Signature Updates   | 284      |
| STAT1                     | 142      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 142     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fdiv.d', 'rs1 : f28', 'rs2 : f7', 'rd : f8', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4733f0771afc6 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x4733f0771afc7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003bc]:fdiv.d fs0, ft8, ft7, dyn
	-[0x800003c0]:csrrs a7, fflags, zero
	-[0x800003c4]:fsd fs0, 0(a5)
Current Store : [0x800003c8] : sd a7, 8(a5) -- Store: [0x80003a18]:0x0000000000000001




Last Coverpoint : ['rs1 : f22', 'rs2 : f17', 'rd : f22', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6a91f2b02b477 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x307470eb37ae6 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fdiv.d fs6, fs6, fa7, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsd fs6, 16(a5)
Current Store : [0x800003e4] : sd a7, 24(a5) -- Store: [0x80003a28]:0x0000000000000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f6', 'rd : f31', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x800003f4]:fdiv.d ft11, ft6, ft6, dyn
	-[0x800003f8]:csrrs a7, fflags, zero
	-[0x800003fc]:fsd ft11, 32(a5)
Current Store : [0x80000400] : sd a7, 40(a5) -- Store: [0x80003a38]:0x0000000000000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f29', 'rd : f29', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x80000410]:fdiv.d ft9, ft9, ft9, dyn
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:fsd ft9, 48(a5)
Current Store : [0x8000041c] : sd a7, 56(a5) -- Store: [0x80003a48]:0x0000000000000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f11', 'rd : f11', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6a91f2b02b477 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x307470eb37ae6 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000042c]:fdiv.d fa1, ft2, fa1, dyn
	-[0x80000430]:csrrs a7, fflags, zero
	-[0x80000434]:fsd fa1, 64(a5)
Current Store : [0x80000438] : sd a7, 72(a5) -- Store: [0x80003a58]:0x0000000000000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f9', 'rd : f10', 'fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6a91f2b02b477 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x307470eb37ae6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fdiv.d fa0, fs0, fs1, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd fa0, 80(a5)
Current Store : [0x80000454] : sd a7, 88(a5) -- Store: [0x80003a68]:0x0000000000000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f2', 'rd : f1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537f328e16b0 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x05599f9cea6c5 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000464]:fdiv.d ft1, fs4, ft2, dyn
	-[0x80000468]:csrrs a7, fflags, zero
	-[0x8000046c]:fsd ft1, 96(a5)
Current Store : [0x80000470] : sd a7, 104(a5) -- Store: [0x80003a78]:0x0000000000000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f12', 'rd : f17', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537f328e16b0 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x05599f9cea6c5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000480]:fdiv.d fa7, fa3, fa2, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd fa7, 112(a5)
Current Store : [0x8000048c] : sd a7, 120(a5) -- Store: [0x80003a88]:0x0000000000000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f15', 'rd : f12', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537f328e16b0 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x05599f9cea6c5 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x8000049c]:fdiv.d fa2, fs5, fa5, dyn
	-[0x800004a0]:csrrs a7, fflags, zero
	-[0x800004a4]:fsd fa2, 128(a5)
Current Store : [0x800004a8] : sd a7, 136(a5) -- Store: [0x80003a98]:0x0000000000000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f8', 'rd : f18', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537f328e16b0 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x05599f9cea6c5 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800004b8]:fdiv.d fs2, fs7, fs0, dyn
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:fsd fs2, 144(a5)
Current Store : [0x800004c4] : sd a7, 152(a5) -- Store: [0x80003aa8]:0x0000000000000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f25', 'rd : f16', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537f328e16b0 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x05599f9cea6c5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d4]:fdiv.d fa6, fa7, fs9, dyn
	-[0x800004d8]:csrrs a7, fflags, zero
	-[0x800004dc]:fsd fa6, 160(a5)
Current Store : [0x800004e0] : sd a7, 168(a5) -- Store: [0x80003ab8]:0x0000000000000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f21', 'rd : f3', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x23cbe38fed7af and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xf0658023805a7 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fdiv.d ft3, fs3, fs5, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd ft3, 176(a5)
Current Store : [0x800004fc] : sd a7, 184(a5) -- Store: [0x80003ac8]:0x0000000000000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f3', 'rd : f19', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x23cbe38fed7af and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xf0658023805a7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000050c]:fdiv.d fs3, fa0, ft3, dyn
	-[0x80000510]:csrrs a7, fflags, zero
	-[0x80000514]:fsd fs3, 192(a5)
Current Store : [0x80000518] : sd a7, 200(a5) -- Store: [0x80003ad8]:0x0000000000000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f0', 'rd : f15', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x23cbe38fed7af and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xf0658023805a7 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000528]:fdiv.d fa5, fa1, ft0, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsd fa5, 208(a5)
Current Store : [0x80000534] : sd a7, 216(a5) -- Store: [0x80003ae8]:0x0000000000000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f22', 'rd : f23', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x23cbe38fed7af and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xf0658023805a7 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000544]:fdiv.d fs7, ft1, fs6, dyn
	-[0x80000548]:csrrs a7, fflags, zero
	-[0x8000054c]:fsd fs7, 224(a5)
Current Store : [0x80000550] : sd a7, 232(a5) -- Store: [0x80003af8]:0x0000000000000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f19', 'rd : f24', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x23cbe38fed7af and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xf0658023805a7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fdiv.d fs8, ft7, fs3, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd fs8, 240(a5)
Current Store : [0x8000056c] : sd a7, 248(a5) -- Store: [0x80003b08]:0x0000000000000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f27', 'rd : f7', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9c883bf3c926 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xaba54e6a92610 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000057c]:fdiv.d ft7, fs10, fs11, dyn
	-[0x80000580]:csrrs a7, fflags, zero
	-[0x80000584]:fsd ft7, 256(a5)
Current Store : [0x80000588] : sd a7, 264(a5) -- Store: [0x80003b18]:0x0000000000000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f18', 'rd : f4', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9c883bf3c926 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xaba54e6a92610 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000598]:fdiv.d ft4, fs9, fs2, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd ft4, 272(a5)
Current Store : [0x800005a4] : sd a7, 280(a5) -- Store: [0x80003b28]:0x0000000000000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f13', 'rd : f6', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9c883bf3c926 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xaba54e6a92610 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800005b4]:fdiv.d ft6, ft5, fa3, dyn
	-[0x800005b8]:csrrs a7, fflags, zero
	-[0x800005bc]:fsd ft6, 288(a5)
Current Store : [0x800005c0] : sd a7, 296(a5) -- Store: [0x80003b38]:0x0000000000000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f31', 'rd : f2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9c883bf3c926 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xaba54e6a92610 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800005d0]:fdiv.d ft2, ft3, ft11, dyn
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:fsd ft2, 304(a5)
Current Store : [0x800005dc] : sd a7, 312(a5) -- Store: [0x80003b48]:0x0000000000000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f14', 'rd : f21', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9c883bf3c926 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xaba54e6a92610 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005ec]:fdiv.d fs5, ft10, fa4, dyn
	-[0x800005f0]:csrrs a7, fflags, zero
	-[0x800005f4]:fsd fs5, 320(a5)
Current Store : [0x800005f8] : sd a7, 328(a5) -- Store: [0x80003b58]:0x0000000000000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f23', 'rd : f20', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d796ca9f3e52 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x37ee1635d02ad and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000608]:fdiv.d fs4, ft4, fs7, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:fsd fs4, 336(a5)
Current Store : [0x80000614] : sd a7, 344(a5) -- Store: [0x80003b68]:0x0000000000000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f16', 'rd : f5', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d796ca9f3e52 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x37ee1635d02ad and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000624]:fdiv.d ft5, fa5, fa6, dyn
	-[0x80000628]:csrrs a7, fflags, zero
	-[0x8000062c]:fsd ft5, 352(a5)
Current Store : [0x80000630] : sd a7, 360(a5) -- Store: [0x80003b78]:0x0000000000000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f30', 'rd : f0', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d796ca9f3e52 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x37ee1635d02ad and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000640]:fdiv.d ft0, fs11, ft10, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd ft0, 368(a5)
Current Store : [0x8000064c] : sd a7, 376(a5) -- Store: [0x80003b88]:0x0000000000000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f26', 'rd : f25', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d796ca9f3e52 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x37ee1635d02ad and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000065c]:fdiv.d fs9, fs1, fs10, dyn
	-[0x80000660]:csrrs a7, fflags, zero
	-[0x80000664]:fsd fs9, 384(a5)
Current Store : [0x80000668] : sd a7, 392(a5) -- Store: [0x80003b98]:0x0000000000000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f5', 'rd : f28', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d796ca9f3e52 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x37ee1635d02ad and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000678]:fdiv.d ft8, fa6, ft5, dyn
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:fsd ft8, 400(a5)
Current Store : [0x80000684] : sd a7, 408(a5) -- Store: [0x80003ba8]:0x0000000000000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f4', 'rd : f30', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcf344fe49aeb9 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x6532d1e36a2eb and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000694]:fdiv.d ft10, fs8, ft4, dyn
	-[0x80000698]:csrrs a7, fflags, zero
	-[0x8000069c]:fsd ft10, 416(a5)
Current Store : [0x800006a0] : sd a7, 424(a5) -- Store: [0x80003bb8]:0x0000000000000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f24', 'rd : f26', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcf344fe49aeb9 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x6532d1e36a2eb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006b0]:fdiv.d fs10, fa2, fs8, dyn
	-[0x800006b4]:csrrs a7, fflags, zero
	-[0x800006b8]:fsd fs10, 432(a5)
Current Store : [0x800006bc] : sd a7, 440(a5) -- Store: [0x80003bc8]:0x0000000000000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f28', 'rd : f27', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcf344fe49aeb9 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x6532d1e36a2eb and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800006cc]:fdiv.d fs11, ft11, ft8, dyn
	-[0x800006d0]:csrrs a7, fflags, zero
	-[0x800006d4]:fsd fs11, 448(a5)
Current Store : [0x800006d8] : sd a7, 456(a5) -- Store: [0x80003bd8]:0x0000000000000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f10', 'rd : f14', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcf344fe49aeb9 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x6532d1e36a2eb and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fdiv.d fa4, fs2, fa0, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd fa4, 464(a5)
Current Store : [0x800006f4] : sd a7, 472(a5) -- Store: [0x80003be8]:0x0000000000000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f20', 'rd : f9', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcf344fe49aeb9 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x6532d1e36a2eb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000704]:fdiv.d fs1, fa4, fs4, dyn
	-[0x80000708]:csrrs a7, fflags, zero
	-[0x8000070c]:fsd fs1, 480(a5)
Current Store : [0x80000710] : sd a7, 488(a5) -- Store: [0x80003bf8]:0x0000000000000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f1', 'rd : f13', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8a57b94e3940 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x48da4dd1231eb and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000720]:fdiv.d fa3, ft0, ft1, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd fa3, 496(a5)
Current Store : [0x8000072c] : sd a7, 504(a5) -- Store: [0x80003c08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8a57b94e3940 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x48da4dd1231eb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000073c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000740]:csrrs a7, fflags, zero
	-[0x80000744]:fsd fa2, 512(a5)
Current Store : [0x80000748] : sd a7, 520(a5) -- Store: [0x80003c18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8a57b94e3940 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x48da4dd1231eb and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000758]:fdiv.d fa2, fa0, fa1, dyn
	-[0x8000075c]:csrrs a7, fflags, zero
	-[0x80000760]:fsd fa2, 528(a5)
Current Store : [0x80000764] : sd a7, 536(a5) -- Store: [0x80003c28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8a57b94e3940 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x48da4dd1231eb and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000774]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000778]:csrrs a7, fflags, zero
	-[0x8000077c]:fsd fa2, 544(a5)
Current Store : [0x80000780] : sd a7, 552(a5) -- Store: [0x80003c38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8a57b94e3940 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x48da4dd1231eb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000790]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa2, 560(a5)
Current Store : [0x8000079c] : sd a7, 568(a5) -- Store: [0x80003c48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57b12a6c8424b and fs2 == 0 and fe2 == 0x401 and fm2 == 0x4641d0f801954 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800007ac]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800007b0]:csrrs a7, fflags, zero
	-[0x800007b4]:fsd fa2, 576(a5)
Current Store : [0x800007b8] : sd a7, 584(a5) -- Store: [0x80003c58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57b12a6c8424b and fs2 == 0 and fe2 == 0x401 and fm2 == 0x4641d0f801954 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsd fa2, 592(a5)
Current Store : [0x800007d4] : sd a7, 600(a5) -- Store: [0x80003c68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57b12a6c8424b and fs2 == 0 and fe2 == 0x401 and fm2 == 0x4641d0f801954 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800007e4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800007e8]:csrrs a7, fflags, zero
	-[0x800007ec]:fsd fa2, 608(a5)
Current Store : [0x800007f0] : sd a7, 616(a5) -- Store: [0x80003c78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57b12a6c8424b and fs2 == 0 and fe2 == 0x401 and fm2 == 0x4641d0f801954 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000800]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa2, 624(a5)
Current Store : [0x8000080c] : sd a7, 632(a5) -- Store: [0x80003c88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57b12a6c8424b and fs2 == 0 and fe2 == 0x401 and fm2 == 0x4641d0f801954 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000081c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000820]:csrrs a7, fflags, zero
	-[0x80000824]:fsd fa2, 640(a5)
Current Store : [0x80000828] : sd a7, 648(a5) -- Store: [0x80003c98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb67a2291e65ec and fs2 == 1 and fe2 == 0x402 and fm2 == 0xa235bc761aff3 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000838]:fdiv.d fa2, fa0, fa1, dyn
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:fsd fa2, 656(a5)
Current Store : [0x80000844] : sd a7, 664(a5) -- Store: [0x80003ca8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb67a2291e65ec and fs2 == 1 and fe2 == 0x402 and fm2 == 0xa235bc761aff3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000854]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000858]:csrrs a7, fflags, zero
	-[0x8000085c]:fsd fa2, 672(a5)
Current Store : [0x80000860] : sd a7, 680(a5) -- Store: [0x80003cb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb67a2291e65ec and fs2 == 1 and fe2 == 0x402 and fm2 == 0xa235bc761aff3 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000870]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:fsd fa2, 688(a5)
Current Store : [0x8000087c] : sd a7, 696(a5) -- Store: [0x80003cc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb67a2291e65ec and fs2 == 1 and fe2 == 0x402 and fm2 == 0xa235bc761aff3 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000088c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000890]:csrrs a7, fflags, zero
	-[0x80000894]:fsd fa2, 704(a5)
Current Store : [0x80000898] : sd a7, 712(a5) -- Store: [0x80003cd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb67a2291e65ec and fs2 == 1 and fe2 == 0x402 and fm2 == 0xa235bc761aff3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:fsd fa2, 720(a5)
Current Store : [0x800008b4] : sd a7, 728(a5) -- Store: [0x80003ce8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5d2cc33a9b554 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x5cc5dca299a03 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800008c4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800008c8]:csrrs a7, fflags, zero
	-[0x800008cc]:fsd fa2, 736(a5)
Current Store : [0x800008d0] : sd a7, 744(a5) -- Store: [0x80003cf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5d2cc33a9b554 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x5cc5dca299a03 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa2, 752(a5)
Current Store : [0x800008ec] : sd a7, 760(a5) -- Store: [0x80003d08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5d2cc33a9b554 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x5cc5dca299a03 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800008fc]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000900]:csrrs a7, fflags, zero
	-[0x80000904]:fsd fa2, 768(a5)
Current Store : [0x80000908] : sd a7, 776(a5) -- Store: [0x80003d18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5d2cc33a9b554 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x5cc5dca299a03 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000918]:fdiv.d fa2, fa0, fa1, dyn
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:fsd fa2, 784(a5)
Current Store : [0x80000924] : sd a7, 792(a5) -- Store: [0x80003d28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5d2cc33a9b554 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x5cc5dca299a03 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000934]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000938]:csrrs a7, fflags, zero
	-[0x8000093c]:fsd fa2, 800(a5)
Current Store : [0x80000940] : sd a7, 808(a5) -- Store: [0x80003d38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b230d0edf6b7 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x35940f409b3a7 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000950]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000954]:csrrs a7, fflags, zero
	-[0x80000958]:fsd fa2, 816(a5)
Current Store : [0x8000095c] : sd a7, 824(a5) -- Store: [0x80003d48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b230d0edf6b7 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x35940f409b3a7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000096c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000970]:csrrs a7, fflags, zero
	-[0x80000974]:fsd fa2, 832(a5)
Current Store : [0x80000978] : sd a7, 840(a5) -- Store: [0x80003d58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b230d0edf6b7 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x35940f409b3a7 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000988]:fdiv.d fa2, fa0, fa1, dyn
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsd fa2, 848(a5)
Current Store : [0x80000994] : sd a7, 856(a5) -- Store: [0x80003d68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b230d0edf6b7 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x35940f409b3a7 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800009a4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800009a8]:csrrs a7, fflags, zero
	-[0x800009ac]:fsd fa2, 864(a5)
Current Store : [0x800009b0] : sd a7, 872(a5) -- Store: [0x80003d78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b230d0edf6b7 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x35940f409b3a7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa2, 880(a5)
Current Store : [0x800009cc] : sd a7, 888(a5) -- Store: [0x80003d88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x675514445d7d5 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe5a4a18c215cc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800009dc]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800009e0]:csrrs a7, fflags, zero
	-[0x800009e4]:fsd fa2, 896(a5)
Current Store : [0x800009e8] : sd a7, 904(a5) -- Store: [0x80003d98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x675514445d7d5 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe5a4a18c215cc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009f8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800009fc]:csrrs a7, fflags, zero
	-[0x80000a00]:fsd fa2, 912(a5)
Current Store : [0x80000a04] : sd a7, 920(a5) -- Store: [0x80003da8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x675514445d7d5 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe5a4a18c215cc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000a14]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000a18]:csrrs a7, fflags, zero
	-[0x80000a1c]:fsd fa2, 928(a5)
Current Store : [0x80000a20] : sd a7, 936(a5) -- Store: [0x80003db8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x675514445d7d5 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe5a4a18c215cc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000a30]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000a34]:csrrs a7, fflags, zero
	-[0x80000a38]:fsd fa2, 944(a5)
Current Store : [0x80000a3c] : sd a7, 952(a5) -- Store: [0x80003dc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x675514445d7d5 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe5a4a18c215cc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a4c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000a50]:csrrs a7, fflags, zero
	-[0x80000a54]:fsd fa2, 960(a5)
Current Store : [0x80000a58] : sd a7, 968(a5) -- Store: [0x80003dd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x03b55a3557b05 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdd343eb3a6aa7 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000a68]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:fsd fa2, 976(a5)
Current Store : [0x80000a74] : sd a7, 984(a5) -- Store: [0x80003de8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x03b55a3557b05 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdd343eb3a6aa7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a84]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000a88]:csrrs a7, fflags, zero
	-[0x80000a8c]:fsd fa2, 992(a5)
Current Store : [0x80000a90] : sd a7, 1000(a5) -- Store: [0x80003df8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x03b55a3557b05 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdd343eb3a6aa7 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa2, 1008(a5)
Current Store : [0x80000aac] : sd a7, 1016(a5) -- Store: [0x80003e08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x03b55a3557b05 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdd343eb3a6aa7 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000abc]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000ac0]:csrrs a7, fflags, zero
	-[0x80000ac4]:fsd fa2, 1024(a5)
Current Store : [0x80000ac8] : sd a7, 1032(a5) -- Store: [0x80003e18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x03b55a3557b05 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdd343eb3a6aa7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ad8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000adc]:csrrs a7, fflags, zero
	-[0x80000ae0]:fsd fa2, 1040(a5)
Current Store : [0x80000ae4] : sd a7, 1048(a5) -- Store: [0x80003e28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40d80b76bc040 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x51122ed26efd8 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000af4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000af8]:csrrs a7, fflags, zero
	-[0x80000afc]:fsd fa2, 1056(a5)
Current Store : [0x80000b00] : sd a7, 1064(a5) -- Store: [0x80003e38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40d80b76bc040 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x51122ed26efd8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b10]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000b14]:csrrs a7, fflags, zero
	-[0x80000b18]:fsd fa2, 1072(a5)
Current Store : [0x80000b1c] : sd a7, 1080(a5) -- Store: [0x80003e48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40d80b76bc040 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x51122ed26efd8 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000b2c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000b30]:csrrs a7, fflags, zero
	-[0x80000b34]:fsd fa2, 1088(a5)
Current Store : [0x80000b38] : sd a7, 1096(a5) -- Store: [0x80003e58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40d80b76bc040 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x51122ed26efd8 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000b48]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000b4c]:csrrs a7, fflags, zero
	-[0x80000b50]:fsd fa2, 1104(a5)
Current Store : [0x80000b54] : sd a7, 1112(a5) -- Store: [0x80003e68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40d80b76bc040 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x51122ed26efd8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b64]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000b68]:csrrs a7, fflags, zero
	-[0x80000b6c]:fsd fa2, 1120(a5)
Current Store : [0x80000b70] : sd a7, 1128(a5) -- Store: [0x80003e78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xee5369ab02b92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xee5369ab02b94 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa2, 1136(a5)
Current Store : [0x80000b8c] : sd a7, 1144(a5) -- Store: [0x80003e88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xee5369ab02b92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xee5369ab02b94 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b9c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000ba0]:csrrs a7, fflags, zero
	-[0x80000ba4]:fsd fa2, 1152(a5)
Current Store : [0x80000ba8] : sd a7, 1160(a5) -- Store: [0x80003e98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xee5369ab02b92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xee5369ab02b94 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000bb8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000bbc]:csrrs a7, fflags, zero
	-[0x80000bc0]:fsd fa2, 1168(a5)
Current Store : [0x80000bc4] : sd a7, 1176(a5) -- Store: [0x80003ea8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xee5369ab02b92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xee5369ab02b94 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000bd4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000bd8]:csrrs a7, fflags, zero
	-[0x80000bdc]:fsd fa2, 1184(a5)
Current Store : [0x80000be0] : sd a7, 1192(a5) -- Store: [0x80003eb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xee5369ab02b92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xee5369ab02b94 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bf0]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000bf4]:csrrs a7, fflags, zero
	-[0x80000bf8]:fsd fa2, 1200(a5)
Current Store : [0x80000bfc] : sd a7, 1208(a5) -- Store: [0x80003ec8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x1676d77eb0adb and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x1676d77eb0adc and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000c0c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000c10]:csrrs a7, fflags, zero
	-[0x80000c14]:fsd fa2, 1216(a5)
Current Store : [0x80000c18] : sd a7, 1224(a5) -- Store: [0x80003ed8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x1676d77eb0adb and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x1676d77eb0adc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c28]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000c2c]:csrrs a7, fflags, zero
	-[0x80000c30]:fsd fa2, 1232(a5)
Current Store : [0x80000c34] : sd a7, 1240(a5) -- Store: [0x80003ee8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x1676d77eb0adb and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x1676d77eb0adc and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000c44]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000c48]:csrrs a7, fflags, zero
	-[0x80000c4c]:fsd fa2, 1248(a5)
Current Store : [0x80000c50] : sd a7, 1256(a5) -- Store: [0x80003ef8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x1676d77eb0adb and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x1676d77eb0adc and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa2, 1264(a5)
Current Store : [0x80000c6c] : sd a7, 1272(a5) -- Store: [0x80003f08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x1676d77eb0adb and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x1676d77eb0adc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c7c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000c80]:csrrs a7, fflags, zero
	-[0x80000c84]:fsd fa2, 1280(a5)
Current Store : [0x80000c88] : sd a7, 1288(a5) -- Store: [0x80003f18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1facf9764ac8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xc1facf9764aca and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000c98]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000c9c]:csrrs a7, fflags, zero
	-[0x80000ca0]:fsd fa2, 1296(a5)
Current Store : [0x80000ca4] : sd a7, 1304(a5) -- Store: [0x80003f28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1facf9764ac8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xc1facf9764aca and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cb4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000cb8]:csrrs a7, fflags, zero
	-[0x80000cbc]:fsd fa2, 1312(a5)
Current Store : [0x80000cc0] : sd a7, 1320(a5) -- Store: [0x80003f38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1facf9764ac8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xc1facf9764aca and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000cd0]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000cd4]:csrrs a7, fflags, zero
	-[0x80000cd8]:fsd fa2, 1328(a5)
Current Store : [0x80000cdc] : sd a7, 1336(a5) -- Store: [0x80003f48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1facf9764ac8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xc1facf9764aca and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000cec]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000cf0]:csrrs a7, fflags, zero
	-[0x80000cf4]:fsd fa2, 1344(a5)
Current Store : [0x80000cf8] : sd a7, 1352(a5) -- Store: [0x80003f58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1facf9764ac8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xc1facf9764aca and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d08]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000d0c]:csrrs a7, fflags, zero
	-[0x80000d10]:fsd fa2, 1360(a5)
Current Store : [0x80000d14] : sd a7, 1368(a5) -- Store: [0x80003f68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc74abdfb676c7 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xc74abdfb676c8 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000d24]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000d28]:csrrs a7, fflags, zero
	-[0x80000d2c]:fsd fa2, 1376(a5)
Current Store : [0x80000d30] : sd a7, 1384(a5) -- Store: [0x80003f78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc74abdfb676c7 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xc74abdfb676c8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa2, 1392(a5)
Current Store : [0x80000d4c] : sd a7, 1400(a5) -- Store: [0x80003f88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc74abdfb676c7 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xc74abdfb676c8 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000d5c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000d60]:csrrs a7, fflags, zero
	-[0x80000d64]:fsd fa2, 1408(a5)
Current Store : [0x80000d68] : sd a7, 1416(a5) -- Store: [0x80003f98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc74abdfb676c7 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xc74abdfb676c8 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000d78]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000d7c]:csrrs a7, fflags, zero
	-[0x80000d80]:fsd fa2, 1424(a5)
Current Store : [0x80000d84] : sd a7, 1432(a5) -- Store: [0x80003fa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc74abdfb676c7 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xc74abdfb676c8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d94]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000d98]:csrrs a7, fflags, zero
	-[0x80000d9c]:fsd fa2, 1440(a5)
Current Store : [0x80000da0] : sd a7, 1448(a5) -- Store: [0x80003fb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9471495d333b3 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9471495d333b5 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000db0]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000db4]:csrrs a7, fflags, zero
	-[0x80000db8]:fsd fa2, 1456(a5)
Current Store : [0x80000dbc] : sd a7, 1464(a5) -- Store: [0x80003fc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9471495d333b3 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9471495d333b5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000dcc]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000dd0]:csrrs a7, fflags, zero
	-[0x80000dd4]:fsd fa2, 1472(a5)
Current Store : [0x80000dd8] : sd a7, 1480(a5) -- Store: [0x80003fd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9471495d333b3 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9471495d333b5 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000de8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000dec]:csrrs a7, fflags, zero
	-[0x80000df0]:fsd fa2, 1488(a5)
Current Store : [0x80000df4] : sd a7, 1496(a5) -- Store: [0x80003fe8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9471495d333b3 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9471495d333b5 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e04]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000e08]:csrrs a7, fflags, zero
	-[0x80000e0c]:fsd fa2, 1504(a5)
Current Store : [0x80000e10] : sd a7, 1512(a5) -- Store: [0x80003ff8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9471495d333b3 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9471495d333b5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa2, 1520(a5)
Current Store : [0x80000e2c] : sd a7, 1528(a5) -- Store: [0x80004008]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6da2613270600 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x6da2613270601 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000e3c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000e40]:csrrs a7, fflags, zero
	-[0x80000e44]:fsd fa2, 1536(a5)
Current Store : [0x80000e48] : sd a7, 1544(a5) -- Store: [0x80004018]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6da2613270600 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x6da2613270601 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e58]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000e5c]:csrrs a7, fflags, zero
	-[0x80000e60]:fsd fa2, 1552(a5)
Current Store : [0x80000e64] : sd a7, 1560(a5) -- Store: [0x80004028]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6da2613270600 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x6da2613270601 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000e74]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000e78]:csrrs a7, fflags, zero
	-[0x80000e7c]:fsd fa2, 1568(a5)
Current Store : [0x80000e80] : sd a7, 1576(a5) -- Store: [0x80004038]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6da2613270600 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x6da2613270601 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000e90]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000e94]:csrrs a7, fflags, zero
	-[0x80000e98]:fsd fa2, 1584(a5)
Current Store : [0x80000e9c] : sd a7, 1592(a5) -- Store: [0x80004048]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6da2613270600 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x6da2613270601 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000eac]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000eb0]:csrrs a7, fflags, zero
	-[0x80000eb4]:fsd fa2, 1600(a5)
Current Store : [0x80000eb8] : sd a7, 1608(a5) -- Store: [0x80004058]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7009b07ae3d88 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x7009b07ae3d89 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000ec8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000ecc]:csrrs a7, fflags, zero
	-[0x80000ed0]:fsd fa2, 1616(a5)
Current Store : [0x80000ed4] : sd a7, 1624(a5) -- Store: [0x80004068]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7009b07ae3d88 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x7009b07ae3d89 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa2, 1632(a5)
Current Store : [0x80000ef0] : sd a7, 1640(a5) -- Store: [0x80004078]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7009b07ae3d88 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x7009b07ae3d89 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f00]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000f04]:csrrs a7, fflags, zero
	-[0x80000f08]:fsd fa2, 1648(a5)
Current Store : [0x80000f0c] : sd a7, 1656(a5) -- Store: [0x80004088]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7009b07ae3d88 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x7009b07ae3d89 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000f1c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000f20]:csrrs a7, fflags, zero
	-[0x80000f24]:fsd fa2, 1664(a5)
Current Store : [0x80000f28] : sd a7, 1672(a5) -- Store: [0x80004098]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7009b07ae3d88 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x7009b07ae3d89 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f38]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000f3c]:csrrs a7, fflags, zero
	-[0x80000f40]:fsd fa2, 1680(a5)
Current Store : [0x80000f44] : sd a7, 1688(a5) -- Store: [0x800040a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb2662d13e5e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xbb2662d13e5e5 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000f54]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000f58]:csrrs a7, fflags, zero
	-[0x80000f5c]:fsd fa2, 1696(a5)
Current Store : [0x80000f60] : sd a7, 1704(a5) -- Store: [0x800040b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb2662d13e5e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xbb2662d13e5e5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f70]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000f74]:csrrs a7, fflags, zero
	-[0x80000f78]:fsd fa2, 1712(a5)
Current Store : [0x80000f7c] : sd a7, 1720(a5) -- Store: [0x800040c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb2662d13e5e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xbb2662d13e5e5 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80000f8c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000f90]:csrrs a7, fflags, zero
	-[0x80000f94]:fsd fa2, 1728(a5)
Current Store : [0x80000f98] : sd a7, 1736(a5) -- Store: [0x800040d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb2662d13e5e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xbb2662d13e5e5 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:fsd fa2, 1744(a5)
Current Store : [0x80000fb4] : sd a7, 1752(a5) -- Store: [0x800040e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb2662d13e5e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xbb2662d13e5e5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa2, 1760(a5)
Current Store : [0x80000fd0] : sd a7, 1768(a5) -- Store: [0x800040f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x347f8263d98bd and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x347f8263d98be and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80000fe0]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80000fe4]:csrrs a7, fflags, zero
	-[0x80000fe8]:fsd fa2, 1776(a5)
Current Store : [0x80000fec] : sd a7, 1784(a5) -- Store: [0x80004108]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x347f8263d98bd and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x347f8263d98be and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ffc]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001000]:csrrs a7, fflags, zero
	-[0x80001004]:fsd fa2, 1792(a5)
Current Store : [0x80001008] : sd a7, 1800(a5) -- Store: [0x80004118]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x347f8263d98bd and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x347f8263d98be and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001018]:fdiv.d fa2, fa0, fa1, dyn
	-[0x8000101c]:csrrs a7, fflags, zero
	-[0x80001020]:fsd fa2, 1808(a5)
Current Store : [0x80001024] : sd a7, 1816(a5) -- Store: [0x80004128]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x347f8263d98bd and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x347f8263d98be and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001034]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001038]:csrrs a7, fflags, zero
	-[0x8000103c]:fsd fa2, 1824(a5)
Current Store : [0x80001040] : sd a7, 1832(a5) -- Store: [0x80004138]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x347f8263d98bd and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x347f8263d98be and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001050]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001054]:csrrs a7, fflags, zero
	-[0x80001058]:fsd fa2, 1840(a5)
Current Store : [0x8000105c] : sd a7, 1848(a5) -- Store: [0x80004148]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8436c13d47a1b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x8436c13d47a1c and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000106c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001070]:csrrs a7, fflags, zero
	-[0x80001074]:fsd fa2, 1856(a5)
Current Store : [0x80001078] : sd a7, 1864(a5) -- Store: [0x80004158]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8436c13d47a1b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x8436c13d47a1c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001088]:fdiv.d fa2, fa0, fa1, dyn
	-[0x8000108c]:csrrs a7, fflags, zero
	-[0x80001090]:fsd fa2, 1872(a5)
Current Store : [0x80001094] : sd a7, 1880(a5) -- Store: [0x80004168]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8436c13d47a1b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x8436c13d47a1c and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa2, 1888(a5)
Current Store : [0x800010b0] : sd a7, 1896(a5) -- Store: [0x80004178]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8436c13d47a1b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x8436c13d47a1c and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800010c0]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800010c4]:csrrs a7, fflags, zero
	-[0x800010c8]:fsd fa2, 1904(a5)
Current Store : [0x800010cc] : sd a7, 1912(a5) -- Store: [0x80004188]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8436c13d47a1b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x8436c13d47a1c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010dc]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800010e0]:csrrs a7, fflags, zero
	-[0x800010e4]:fsd fa2, 1920(a5)
Current Store : [0x800010e8] : sd a7, 1928(a5) -- Store: [0x80004198]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57c33eb1be367 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x57c33eb1be368 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800010f8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800010fc]:csrrs a7, fflags, zero
	-[0x80001100]:fsd fa2, 1936(a5)
Current Store : [0x80001104] : sd a7, 1944(a5) -- Store: [0x800041a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57c33eb1be367 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x57c33eb1be368 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001114]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001118]:csrrs a7, fflags, zero
	-[0x8000111c]:fsd fa2, 1952(a5)
Current Store : [0x80001120] : sd a7, 1960(a5) -- Store: [0x800041b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57c33eb1be367 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x57c33eb1be368 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001130]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001134]:csrrs a7, fflags, zero
	-[0x80001138]:fsd fa2, 1968(a5)
Current Store : [0x8000113c] : sd a7, 1976(a5) -- Store: [0x800041c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57c33eb1be367 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x57c33eb1be368 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000114c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001150]:csrrs a7, fflags, zero
	-[0x80001154]:fsd fa2, 1984(a5)
Current Store : [0x80001158] : sd a7, 1992(a5) -- Store: [0x800041d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57c33eb1be367 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x57c33eb1be368 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001168]:fdiv.d fa2, fa0, fa1, dyn
	-[0x8000116c]:csrrs a7, fflags, zero
	-[0x80001170]:fsd fa2, 2000(a5)
Current Store : [0x80001174] : sd a7, 2008(a5) -- Store: [0x800041e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bde6858f4b91 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x0bde6858f4b92 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x80001184]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa2, 2016(a5)
Current Store : [0x80001190] : sd a7, 2024(a5) -- Store: [0x800041f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bde6858f4b91 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x0bde6858f4b92 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011ac]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800011b0]:csrrs a7, fflags, zero
	-[0x800011b4]:fsd fa2, 0(a5)
Current Store : [0x800011b8] : sd a7, 8(a5) -- Store: [0x80004208]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bde6858f4b91 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x0bde6858f4b92 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800011c8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800011cc]:csrrs a7, fflags, zero
	-[0x800011d0]:fsd fa2, 16(a5)
Current Store : [0x800011d4] : sd a7, 24(a5) -- Store: [0x80004218]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bde6858f4b91 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x0bde6858f4b92 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa2, 32(a5)
Current Store : [0x800011f0] : sd a7, 40(a5) -- Store: [0x80004228]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bde6858f4b91 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x0bde6858f4b92 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001200]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001204]:csrrs a7, fflags, zero
	-[0x80001208]:fsd fa2, 48(a5)
Current Store : [0x8000120c] : sd a7, 56(a5) -- Store: [0x80004238]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x450c74c9b42e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x450c74c9b42e5 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x8000121c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001220]:csrrs a7, fflags, zero
	-[0x80001224]:fsd fa2, 64(a5)
Current Store : [0x80001228] : sd a7, 72(a5) -- Store: [0x80004248]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x450c74c9b42e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x450c74c9b42e5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001238]:fdiv.d fa2, fa0, fa1, dyn
	-[0x8000123c]:csrrs a7, fflags, zero
	-[0x80001240]:fsd fa2, 80(a5)
Current Store : [0x80001244] : sd a7, 88(a5) -- Store: [0x80004258]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x450c74c9b42e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x450c74c9b42e5 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001254]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001258]:csrrs a7, fflags, zero
	-[0x8000125c]:fsd fa2, 96(a5)
Current Store : [0x80001260] : sd a7, 104(a5) -- Store: [0x80004268]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x450c74c9b42e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x450c74c9b42e5 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80001270]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001274]:csrrs a7, fflags, zero
	-[0x80001278]:fsd fa2, 112(a5)
Current Store : [0x8000127c] : sd a7, 120(a5) -- Store: [0x80004278]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x450c74c9b42e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x450c74c9b42e5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000128c]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001290]:csrrs a7, fflags, zero
	-[0x80001294]:fsd fa2, 128(a5)
Current Store : [0x80001298] : sd a7, 136(a5) -- Store: [0x80004288]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4733f0771afc6 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x4733f0771afc7 and rm_val == 4  #nosat']
Last Code Sequence : 
	-[0x800012a8]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:fsd fa2, 144(a5)
Current Store : [0x800012b4] : sd a7, 152(a5) -- Store: [0x80004298]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4733f0771afc6 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x4733f0771afc7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa2, 160(a5)
Current Store : [0x800012d0] : sd a7, 168(a5) -- Store: [0x800042a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4733f0771afc6 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x4733f0771afc7 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x800012e0]:fdiv.d fa2, fa0, fa1, dyn
	-[0x800012e4]:csrrs a7, fflags, zero
	-[0x800012e8]:fsd fa2, 176(a5)
Current Store : [0x800012ec] : sd a7, 184(a5) -- Store: [0x800042b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4733f0771afc6 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x4733f0771afc7 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800012fc]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001300]:csrrs a7, fflags, zero
	-[0x80001304]:fsd fa2, 192(a5)
Current Store : [0x80001308] : sd a7, 200(a5) -- Store: [0x800042c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6a91f2b02b477 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x307470eb37ae6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001318]:fdiv.d fa2, fa0, fa1, dyn
	-[0x8000131c]:csrrs a7, fflags, zero
	-[0x80001320]:fsd fa2, 208(a5)
Current Store : [0x80001324] : sd a7, 216(a5) -- Store: [0x800042d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6a91f2b02b477 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x307470eb37ae6 and rm_val == 2  #nosat']
Last Code Sequence : 
	-[0x80001334]:fdiv.d fa2, fa0, fa1, dyn
	-[0x80001338]:csrrs a7, fflags, zero
	-[0x8000133c]:fsd fa2, 224(a5)
Current Store : [0x80001340] : sd a7, 232(a5) -- Store: [0x800042e8]:0x0000000000000005





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

|s.no|            signature             |                                                                                                                         coverpoints                                                                                                                         |                                                          code                                                          |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003a10]<br>0x5BFDDB7D5BFDDB7D|- opcode : fdiv.d<br> - rs1 : f28<br> - rs2 : f7<br> - rd : f8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4733f0771afc6 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x4733f0771afc7 and rm_val == 0  #nosat<br> |[0x800003bc]:fdiv.d fs0, ft8, ft7, dyn<br> [0x800003c0]:csrrs a7, fflags, zero<br> [0x800003c4]:fsd fs0, 0(a5)<br>      |
|   2|[0x80003a20]<br>0x6DF56FF76DF56FF7|- rs1 : f22<br> - rs2 : f17<br> - rd : f22<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6a91f2b02b477 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x307470eb37ae6 and rm_val == 4  #nosat<br>                                            |[0x800003d8]:fdiv.d fs6, fs6, fa7, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsd fs6, 16(a5)<br>     |
|   3|[0x80003a30]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f6<br> - rs2 : f6<br> - rd : f31<br> - rs1 == rs2 != rd<br>                                                                                                                                                                                          |[0x800003f4]:fdiv.d ft11, ft6, ft6, dyn<br> [0x800003f8]:csrrs a7, fflags, zero<br> [0x800003fc]:fsd ft11, 32(a5)<br>   |
|   4|[0x80003a40]<br>0xEEDBEADFEEDBEADF|- rs1 : f29<br> - rs2 : f29<br> - rd : f29<br> - rs1 == rs2 == rd<br>                                                                                                                                                                                        |[0x80000410]:fdiv.d ft9, ft9, ft9, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:fsd ft9, 48(a5)<br>     |
|   5|[0x80003a50]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f2<br> - rs2 : f11<br> - rd : f11<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6a91f2b02b477 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x307470eb37ae6 and rm_val == 1  #nosat<br>                                             |[0x8000042c]:fdiv.d fa1, ft2, fa1, dyn<br> [0x80000430]:csrrs a7, fflags, zero<br> [0x80000434]:fsd fa1, 64(a5)<br>     |
|   6|[0x80003a60]<br>0x56FF76DF56FF76DF|- rs1 : f8<br> - rs2 : f9<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6a91f2b02b477 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x307470eb37ae6 and rm_val == 0  #nosat<br>                                                                     |[0x80000448]:fdiv.d fa0, fs0, fs1, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd fa0, 80(a5)<br>     |
|   7|[0x80003a70]<br>0xFEEDBEADFEEDBEAD|- rs1 : f20<br> - rs2 : f2<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537f328e16b0 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x05599f9cea6c5 and rm_val == 4  #nosat<br>                                                                     |[0x80000464]:fdiv.d ft1, fs4, ft2, dyn<br> [0x80000468]:csrrs a7, fflags, zero<br> [0x8000046c]:fsd ft1, 96(a5)<br>     |
|   8|[0x80003a80]<br>0x0000000000000005|- rs1 : f13<br> - rs2 : f12<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537f328e16b0 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x05599f9cea6c5 and rm_val == 3  #nosat<br>                                                                   |[0x80000480]:fdiv.d fa7, fa3, fa2, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd fa7, 112(a5)<br>    |
|   9|[0x80003a90]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f21<br> - rs2 : f15<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537f328e16b0 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x05599f9cea6c5 and rm_val == 2  #nosat<br>                                                                   |[0x8000049c]:fdiv.d fa2, fs5, fa5, dyn<br> [0x800004a0]:csrrs a7, fflags, zero<br> [0x800004a4]:fsd fa2, 128(a5)<br>    |
|  10|[0x80003aa0]<br>0xDF56FF76DF56FF76|- rs1 : f23<br> - rs2 : f8<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537f328e16b0 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x05599f9cea6c5 and rm_val == 1  #nosat<br>                                                                    |[0x800004b8]:fdiv.d fs2, fs7, fs0, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:fsd fs2, 144(a5)<br>    |
|  11|[0x80003ab0]<br>0x0000000080003010|- rs1 : f17<br> - rs2 : f25<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb537f328e16b0 and fs2 == 0 and fe2 == 0x3ff and fm2 == 0x05599f9cea6c5 and rm_val == 0  #nosat<br>                                                                   |[0x800004d4]:fdiv.d fa6, fa7, fs9, dyn<br> [0x800004d8]:csrrs a7, fflags, zero<br> [0x800004dc]:fsd fa6, 160(a5)<br>    |
|  12|[0x80003ac0]<br>0x0000000A00000000|- rs1 : f19<br> - rs2 : f21<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x23cbe38fed7af and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xf0658023805a7 and rm_val == 4  #nosat<br>                                                                    |[0x800004f0]:fdiv.d ft3, fs3, fs5, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd ft3, 176(a5)<br>    |
|  13|[0x80003ad0]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f10<br> - rs2 : f3<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x23cbe38fed7af and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xf0658023805a7 and rm_val == 3  #nosat<br>                                                                    |[0x8000050c]:fdiv.d fs3, fa0, ft3, dyn<br> [0x80000510]:csrrs a7, fflags, zero<br> [0x80000514]:fsd fs3, 192(a5)<br>    |
|  14|[0x80003ae0]<br>0x0000000080003A10|- rs1 : f11<br> - rs2 : f0<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x23cbe38fed7af and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xf0658023805a7 and rm_val == 2  #nosat<br>                                                                    |[0x80000528]:fdiv.d fa5, fa1, ft0, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsd fa5, 208(a5)<br>    |
|  15|[0x80003af0]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f1<br> - rs2 : f22<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x23cbe38fed7af and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xf0658023805a7 and rm_val == 1  #nosat<br>                                                                    |[0x80000544]:fdiv.d fs7, ft1, fs6, dyn<br> [0x80000548]:csrrs a7, fflags, zero<br> [0x8000054c]:fsd fs7, 224(a5)<br>    |
|  16|[0x80003b00]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f7<br> - rs2 : f19<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x23cbe38fed7af and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xf0658023805a7 and rm_val == 0  #nosat<br>                                                                    |[0x80000560]:fdiv.d fs8, ft7, fs3, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd fs8, 240(a5)<br>    |
|  17|[0x80003b10]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f26<br> - rs2 : f27<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9c883bf3c926 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xaba54e6a92610 and rm_val == 4  #nosat<br>                                                                    |[0x8000057c]:fdiv.d ft7, fs10, fs11, dyn<br> [0x80000580]:csrrs a7, fflags, zero<br> [0x80000584]:fsd ft7, 256(a5)<br>  |
|  18|[0x80003b20]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f25<br> - rs2 : f18<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9c883bf3c926 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xaba54e6a92610 and rm_val == 3  #nosat<br>                                                                    |[0x80000598]:fdiv.d ft4, fs9, fs2, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd ft4, 272(a5)<br>    |
|  19|[0x80003b30]<br>0x0000000080003000|- rs1 : f5<br> - rs2 : f13<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9c883bf3c926 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xaba54e6a92610 and rm_val == 2  #nosat<br>                                                                     |[0x800005b4]:fdiv.d ft6, ft5, fa3, dyn<br> [0x800005b8]:csrrs a7, fflags, zero<br> [0x800005bc]:fsd ft6, 288(a5)<br>    |
|  20|[0x80003b40]<br>0x0000000A00006000|- rs1 : f3<br> - rs2 : f31<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9c883bf3c926 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xaba54e6a92610 and rm_val == 1  #nosat<br>                                                                     |[0x800005d0]:fdiv.d ft2, ft3, ft11, dyn<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:fsd ft2, 304(a5)<br>   |
|  21|[0x80003b50]<br>0xDBEADFEEDBEADFEE|- rs1 : f30<br> - rs2 : f14<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9c883bf3c926 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xaba54e6a92610 and rm_val == 0  #nosat<br>                                                                   |[0x800005ec]:fdiv.d fs5, ft10, fa4, dyn<br> [0x800005f0]:csrrs a7, fflags, zero<br> [0x800005f4]:fsd fs5, 320(a5)<br>   |
|  22|[0x80003b60]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f4<br> - rs2 : f23<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d796ca9f3e52 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x37ee1635d02ad and rm_val == 4  #nosat<br>                                                                    |[0x80000608]:fdiv.d fs4, ft4, fs7, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsd fs4, 336(a5)<br>    |
|  23|[0x80003b70]<br>0x0000000080000390|- rs1 : f15<br> - rs2 : f16<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d796ca9f3e52 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x37ee1635d02ad and rm_val == 3  #nosat<br>                                                                    |[0x80000624]:fdiv.d ft5, fa5, fa6, dyn<br> [0x80000628]:csrrs a7, fflags, zero<br> [0x8000062c]:fsd ft5, 352(a5)<br>    |
|  24|[0x80003b80]<br>0x0000000000000000|- rs1 : f27<br> - rs2 : f30<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d796ca9f3e52 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x37ee1635d02ad and rm_val == 2  #nosat<br>                                                                    |[0x80000640]:fdiv.d ft0, fs11, ft10, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd ft0, 368(a5)<br>  |
|  25|[0x80003b90]<br>0xEDBEADFEEDBEADFE|- rs1 : f9<br> - rs2 : f26<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d796ca9f3e52 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x37ee1635d02ad and rm_val == 1  #nosat<br>                                                                    |[0x8000065c]:fdiv.d fs9, fs1, fs10, dyn<br> [0x80000660]:csrrs a7, fflags, zero<br> [0x80000664]:fsd fs9, 384(a5)<br>   |
|  26|[0x80003ba0]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f16<br> - rs2 : f5<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d796ca9f3e52 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x37ee1635d02ad and rm_val == 0  #nosat<br>                                                                    |[0x80000678]:fdiv.d ft8, fa6, ft5, dyn<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:fsd ft8, 400(a5)<br>    |
|  27|[0x80003bb0]<br>0xF76DF56FF76DF56F|- rs1 : f24<br> - rs2 : f4<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcf344fe49aeb9 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x6532d1e36a2eb and rm_val == 4  #nosat<br>                                                                    |[0x80000694]:fdiv.d ft10, fs8, ft4, dyn<br> [0x80000698]:csrrs a7, fflags, zero<br> [0x8000069c]:fsd ft10, 416(a5)<br>  |
|  28|[0x80003bc0]<br>0x76DF56FF76DF56FF|- rs1 : f12<br> - rs2 : f24<br> - rd : f26<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcf344fe49aeb9 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x6532d1e36a2eb and rm_val == 3  #nosat<br>                                                                   |[0x800006b0]:fdiv.d fs10, fa2, fs8, dyn<br> [0x800006b4]:csrrs a7, fflags, zero<br> [0x800006b8]:fsd fs10, 432(a5)<br>  |
|  29|[0x80003bd0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f31<br> - rs2 : f28<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcf344fe49aeb9 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x6532d1e36a2eb and rm_val == 2  #nosat<br>                                                                   |[0x800006cc]:fdiv.d fs11, ft11, ft8, dyn<br> [0x800006d0]:csrrs a7, fflags, zero<br> [0x800006d4]:fsd fs11, 448(a5)<br> |
|  30|[0x80003be0]<br>0xF56FF76DF56FF76D|- rs1 : f18<br> - rs2 : f10<br> - rd : f14<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcf344fe49aeb9 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x6532d1e36a2eb and rm_val == 1  #nosat<br>                                                                   |[0x800006e8]:fdiv.d fa4, fs2, fa0, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd fa4, 464(a5)<br>    |
|  31|[0x80003bf0]<br>0xADFEEDBEADFEEDBE|- rs1 : f14<br> - rs2 : f20<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcf344fe49aeb9 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x6532d1e36a2eb and rm_val == 0  #nosat<br>                                                                    |[0x80000704]:fdiv.d fs1, fa4, fs4, dyn<br> [0x80000708]:csrrs a7, fflags, zero<br> [0x8000070c]:fsd fs1, 480(a5)<br>    |
|  32|[0x80003c00]<br>0xEADFEEDBEADFEEDB|- rs1 : f0<br> - rs2 : f1<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8a57b94e3940 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x48da4dd1231eb and rm_val == 4  #nosat<br>                                                                     |[0x80000720]:fdiv.d fa3, ft0, ft1, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd fa3, 496(a5)<br>    |
|  33|[0x80003c10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8a57b94e3940 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x48da4dd1231eb and rm_val == 3  #nosat<br>                                                                                                                  |[0x8000073c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000740]:csrrs a7, fflags, zero<br> [0x80000744]:fsd fa2, 512(a5)<br>    |
|  34|[0x80003c20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8a57b94e3940 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x48da4dd1231eb and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000758]:fdiv.d fa2, fa0, fa1, dyn<br> [0x8000075c]:csrrs a7, fflags, zero<br> [0x80000760]:fsd fa2, 528(a5)<br>    |
|  35|[0x80003c30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8a57b94e3940 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x48da4dd1231eb and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000774]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000778]:csrrs a7, fflags, zero<br> [0x8000077c]:fsd fa2, 544(a5)<br>    |
|  36|[0x80003c40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8a57b94e3940 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x48da4dd1231eb and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000790]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa2, 560(a5)<br>    |
|  37|[0x80003c50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57b12a6c8424b and fs2 == 0 and fe2 == 0x401 and fm2 == 0x4641d0f801954 and rm_val == 4  #nosat<br>                                                                                                                  |[0x800007ac]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800007b0]:csrrs a7, fflags, zero<br> [0x800007b4]:fsd fa2, 576(a5)<br>    |
|  38|[0x80003c60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57b12a6c8424b and fs2 == 0 and fe2 == 0x401 and fm2 == 0x4641d0f801954 and rm_val == 3  #nosat<br>                                                                                                                  |[0x800007c8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsd fa2, 592(a5)<br>    |
|  39|[0x80003c70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57b12a6c8424b and fs2 == 0 and fe2 == 0x401 and fm2 == 0x4641d0f801954 and rm_val == 2  #nosat<br>                                                                                                                  |[0x800007e4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800007e8]:csrrs a7, fflags, zero<br> [0x800007ec]:fsd fa2, 608(a5)<br>    |
|  40|[0x80003c80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57b12a6c8424b and fs2 == 0 and fe2 == 0x401 and fm2 == 0x4641d0f801954 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000800]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa2, 624(a5)<br>    |
|  41|[0x80003c90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57b12a6c8424b and fs2 == 0 and fe2 == 0x401 and fm2 == 0x4641d0f801954 and rm_val == 0  #nosat<br>                                                                                                                  |[0x8000081c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000820]:csrrs a7, fflags, zero<br> [0x80000824]:fsd fa2, 640(a5)<br>    |
|  42|[0x80003ca0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb67a2291e65ec and fs2 == 1 and fe2 == 0x402 and fm2 == 0xa235bc761aff3 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000838]:fdiv.d fa2, fa0, fa1, dyn<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:fsd fa2, 656(a5)<br>    |
|  43|[0x80003cb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb67a2291e65ec and fs2 == 1 and fe2 == 0x402 and fm2 == 0xa235bc761aff3 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000854]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000858]:csrrs a7, fflags, zero<br> [0x8000085c]:fsd fa2, 672(a5)<br>    |
|  44|[0x80003cc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb67a2291e65ec and fs2 == 1 and fe2 == 0x402 and fm2 == 0xa235bc761aff3 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000870]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:fsd fa2, 688(a5)<br>    |
|  45|[0x80003cd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb67a2291e65ec and fs2 == 1 and fe2 == 0x402 and fm2 == 0xa235bc761aff3 and rm_val == 1  #nosat<br>                                                                                                                  |[0x8000088c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000890]:csrrs a7, fflags, zero<br> [0x80000894]:fsd fa2, 704(a5)<br>    |
|  46|[0x80003ce0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb67a2291e65ec and fs2 == 1 and fe2 == 0x402 and fm2 == 0xa235bc761aff3 and rm_val == 0  #nosat<br>                                                                                                                  |[0x800008a8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:fsd fa2, 720(a5)<br>    |
|  47|[0x80003cf0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5d2cc33a9b554 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x5cc5dca299a03 and rm_val == 4  #nosat<br>                                                                                                                  |[0x800008c4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800008c8]:csrrs a7, fflags, zero<br> [0x800008cc]:fsd fa2, 736(a5)<br>    |
|  48|[0x80003d00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5d2cc33a9b554 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x5cc5dca299a03 and rm_val == 3  #nosat<br>                                                                                                                  |[0x800008e0]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa2, 752(a5)<br>    |
|  49|[0x80003d10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5d2cc33a9b554 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x5cc5dca299a03 and rm_val == 2  #nosat<br>                                                                                                                  |[0x800008fc]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000900]:csrrs a7, fflags, zero<br> [0x80000904]:fsd fa2, 768(a5)<br>    |
|  50|[0x80003d20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5d2cc33a9b554 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x5cc5dca299a03 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000918]:fdiv.d fa2, fa0, fa1, dyn<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:fsd fa2, 784(a5)<br>    |
|  51|[0x80003d30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5d2cc33a9b554 and fs2 == 0 and fe2 == 0x402 and fm2 == 0x5cc5dca299a03 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000934]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000938]:csrrs a7, fflags, zero<br> [0x8000093c]:fsd fa2, 800(a5)<br>    |
|  52|[0x80003d40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b230d0edf6b7 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x35940f409b3a7 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000950]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000954]:csrrs a7, fflags, zero<br> [0x80000958]:fsd fa2, 816(a5)<br>    |
|  53|[0x80003d50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b230d0edf6b7 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x35940f409b3a7 and rm_val == 3  #nosat<br>                                                                                                                  |[0x8000096c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000970]:csrrs a7, fflags, zero<br> [0x80000974]:fsd fa2, 832(a5)<br>    |
|  54|[0x80003d60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b230d0edf6b7 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x35940f409b3a7 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000988]:fdiv.d fa2, fa0, fa1, dyn<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsd fa2, 848(a5)<br>    |
|  55|[0x80003d70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b230d0edf6b7 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x35940f409b3a7 and rm_val == 1  #nosat<br>                                                                                                                  |[0x800009a4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800009a8]:csrrs a7, fflags, zero<br> [0x800009ac]:fsd fa2, 864(a5)<br>    |
|  56|[0x80003d80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b230d0edf6b7 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x35940f409b3a7 and rm_val == 0  #nosat<br>                                                                                                                  |[0x800009c0]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa2, 880(a5)<br>    |
|  57|[0x80003d90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x675514445d7d5 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe5a4a18c215cc and rm_val == 4  #nosat<br>                                                                                                                  |[0x800009dc]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800009e0]:csrrs a7, fflags, zero<br> [0x800009e4]:fsd fa2, 896(a5)<br>    |
|  58|[0x80003da0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x675514445d7d5 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe5a4a18c215cc and rm_val == 3  #nosat<br>                                                                                                                  |[0x800009f8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800009fc]:csrrs a7, fflags, zero<br> [0x80000a00]:fsd fa2, 912(a5)<br>    |
|  59|[0x80003db0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x675514445d7d5 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe5a4a18c215cc and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000a14]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000a18]:csrrs a7, fflags, zero<br> [0x80000a1c]:fsd fa2, 928(a5)<br>    |
|  60|[0x80003dc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x675514445d7d5 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe5a4a18c215cc and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000a30]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000a34]:csrrs a7, fflags, zero<br> [0x80000a38]:fsd fa2, 944(a5)<br>    |
|  61|[0x80003dd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x675514445d7d5 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xe5a4a18c215cc and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000a4c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000a50]:csrrs a7, fflags, zero<br> [0x80000a54]:fsd fa2, 960(a5)<br>    |
|  62|[0x80003de0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x03b55a3557b05 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdd343eb3a6aa7 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000a68]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:fsd fa2, 976(a5)<br>    |
|  63|[0x80003df0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x03b55a3557b05 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdd343eb3a6aa7 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000a84]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000a88]:csrrs a7, fflags, zero<br> [0x80000a8c]:fsd fa2, 992(a5)<br>    |
|  64|[0x80003e00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x03b55a3557b05 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdd343eb3a6aa7 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000aa0]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa2, 1008(a5)<br>   |
|  65|[0x80003e10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x03b55a3557b05 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdd343eb3a6aa7 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000abc]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000ac0]:csrrs a7, fflags, zero<br> [0x80000ac4]:fsd fa2, 1024(a5)<br>   |
|  66|[0x80003e20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x03b55a3557b05 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdd343eb3a6aa7 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000ad8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000adc]:csrrs a7, fflags, zero<br> [0x80000ae0]:fsd fa2, 1040(a5)<br>   |
|  67|[0x80003e30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40d80b76bc040 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x51122ed26efd8 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000af4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000af8]:csrrs a7, fflags, zero<br> [0x80000afc]:fsd fa2, 1056(a5)<br>   |
|  68|[0x80003e40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40d80b76bc040 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x51122ed26efd8 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000b10]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000b14]:csrrs a7, fflags, zero<br> [0x80000b18]:fsd fa2, 1072(a5)<br>   |
|  69|[0x80003e50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40d80b76bc040 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x51122ed26efd8 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000b2c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000b30]:csrrs a7, fflags, zero<br> [0x80000b34]:fsd fa2, 1088(a5)<br>   |
|  70|[0x80003e60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40d80b76bc040 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x51122ed26efd8 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000b48]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000b4c]:csrrs a7, fflags, zero<br> [0x80000b50]:fsd fa2, 1104(a5)<br>   |
|  71|[0x80003e70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40d80b76bc040 and fs2 == 0 and fe2 == 0x400 and fm2 == 0x51122ed26efd8 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000b64]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000b68]:csrrs a7, fflags, zero<br> [0x80000b6c]:fsd fa2, 1120(a5)<br>   |
|  72|[0x80003e80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xee5369ab02b92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xee5369ab02b94 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000b80]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa2, 1136(a5)<br>   |
|  73|[0x80003e90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xee5369ab02b92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xee5369ab02b94 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000b9c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000ba0]:csrrs a7, fflags, zero<br> [0x80000ba4]:fsd fa2, 1152(a5)<br>   |
|  74|[0x80003ea0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xee5369ab02b92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xee5369ab02b94 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000bb8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000bbc]:csrrs a7, fflags, zero<br> [0x80000bc0]:fsd fa2, 1168(a5)<br>   |
|  75|[0x80003eb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xee5369ab02b92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xee5369ab02b94 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000bd4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000bd8]:csrrs a7, fflags, zero<br> [0x80000bdc]:fsd fa2, 1184(a5)<br>   |
|  76|[0x80003ec0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xee5369ab02b92 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xee5369ab02b94 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000bf0]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000bf4]:csrrs a7, fflags, zero<br> [0x80000bf8]:fsd fa2, 1200(a5)<br>   |
|  77|[0x80003ed0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x1676d77eb0adb and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x1676d77eb0adc and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000c0c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000c10]:csrrs a7, fflags, zero<br> [0x80000c14]:fsd fa2, 1216(a5)<br>   |
|  78|[0x80003ee0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x1676d77eb0adb and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x1676d77eb0adc and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000c28]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000c2c]:csrrs a7, fflags, zero<br> [0x80000c30]:fsd fa2, 1232(a5)<br>   |
|  79|[0x80003ef0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x1676d77eb0adb and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x1676d77eb0adc and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000c44]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000c48]:csrrs a7, fflags, zero<br> [0x80000c4c]:fsd fa2, 1248(a5)<br>   |
|  80|[0x80003f00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x1676d77eb0adb and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x1676d77eb0adc and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000c60]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa2, 1264(a5)<br>   |
|  81|[0x80003f10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x1676d77eb0adb and fs2 == 0 and fe2 == 0x3fc and fm2 == 0x1676d77eb0adc and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000c7c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000c80]:csrrs a7, fflags, zero<br> [0x80000c84]:fsd fa2, 1280(a5)<br>   |
|  82|[0x80003f20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1facf9764ac8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xc1facf9764aca and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000c98]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000c9c]:csrrs a7, fflags, zero<br> [0x80000ca0]:fsd fa2, 1296(a5)<br>   |
|  83|[0x80003f30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1facf9764ac8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xc1facf9764aca and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000cb4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000cb8]:csrrs a7, fflags, zero<br> [0x80000cbc]:fsd fa2, 1312(a5)<br>   |
|  84|[0x80003f40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1facf9764ac8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xc1facf9764aca and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000cd0]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000cd4]:csrrs a7, fflags, zero<br> [0x80000cd8]:fsd fa2, 1328(a5)<br>   |
|  85|[0x80003f50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1facf9764ac8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xc1facf9764aca and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000cec]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000cf0]:csrrs a7, fflags, zero<br> [0x80000cf4]:fsd fa2, 1344(a5)<br>   |
|  86|[0x80003f60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1facf9764ac8 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xc1facf9764aca and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000d08]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000d0c]:csrrs a7, fflags, zero<br> [0x80000d10]:fsd fa2, 1360(a5)<br>   |
|  87|[0x80003f70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc74abdfb676c7 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xc74abdfb676c8 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000d24]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000d28]:csrrs a7, fflags, zero<br> [0x80000d2c]:fsd fa2, 1376(a5)<br>   |
|  88|[0x80003f80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc74abdfb676c7 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xc74abdfb676c8 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000d40]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa2, 1392(a5)<br>   |
|  89|[0x80003f90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc74abdfb676c7 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xc74abdfb676c8 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000d5c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000d60]:csrrs a7, fflags, zero<br> [0x80000d64]:fsd fa2, 1408(a5)<br>   |
|  90|[0x80003fa0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc74abdfb676c7 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xc74abdfb676c8 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000d78]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000d7c]:csrrs a7, fflags, zero<br> [0x80000d80]:fsd fa2, 1424(a5)<br>   |
|  91|[0x80003fb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc74abdfb676c7 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0xc74abdfb676c8 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000d94]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000d98]:csrrs a7, fflags, zero<br> [0x80000d9c]:fsd fa2, 1440(a5)<br>   |
|  92|[0x80003fc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9471495d333b3 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9471495d333b5 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000db0]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000db4]:csrrs a7, fflags, zero<br> [0x80000db8]:fsd fa2, 1456(a5)<br>   |
|  93|[0x80003fd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9471495d333b3 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9471495d333b5 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000dcc]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000dd0]:csrrs a7, fflags, zero<br> [0x80000dd4]:fsd fa2, 1472(a5)<br>   |
|  94|[0x80003fe0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9471495d333b3 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9471495d333b5 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000de8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000dec]:csrrs a7, fflags, zero<br> [0x80000df0]:fsd fa2, 1488(a5)<br>   |
|  95|[0x80003ff0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9471495d333b3 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9471495d333b5 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000e04]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000e08]:csrrs a7, fflags, zero<br> [0x80000e0c]:fsd fa2, 1504(a5)<br>   |
|  96|[0x80004000]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9471495d333b3 and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x9471495d333b5 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000e20]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa2, 1520(a5)<br>   |
|  97|[0x80004010]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6da2613270600 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x6da2613270601 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000e3c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000e40]:csrrs a7, fflags, zero<br> [0x80000e44]:fsd fa2, 1536(a5)<br>   |
|  98|[0x80004020]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6da2613270600 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x6da2613270601 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000e58]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000e5c]:csrrs a7, fflags, zero<br> [0x80000e60]:fsd fa2, 1552(a5)<br>   |
|  99|[0x80004030]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6da2613270600 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x6da2613270601 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000e74]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000e78]:csrrs a7, fflags, zero<br> [0x80000e7c]:fsd fa2, 1568(a5)<br>   |
| 100|[0x80004040]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6da2613270600 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x6da2613270601 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000e90]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000e94]:csrrs a7, fflags, zero<br> [0x80000e98]:fsd fa2, 1584(a5)<br>   |
| 101|[0x80004050]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6da2613270600 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x6da2613270601 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000eac]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000eb0]:csrrs a7, fflags, zero<br> [0x80000eb4]:fsd fa2, 1600(a5)<br>   |
| 102|[0x80004060]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7009b07ae3d88 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x7009b07ae3d89 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000ec8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000ecc]:csrrs a7, fflags, zero<br> [0x80000ed0]:fsd fa2, 1616(a5)<br>   |
| 103|[0x80004070]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7009b07ae3d88 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x7009b07ae3d89 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000ee4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa2, 1632(a5)<br>   |
| 104|[0x80004080]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7009b07ae3d88 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x7009b07ae3d89 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000f00]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000f04]:csrrs a7, fflags, zero<br> [0x80000f08]:fsd fa2, 1648(a5)<br>   |
| 105|[0x80004090]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7009b07ae3d88 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x7009b07ae3d89 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000f1c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000f20]:csrrs a7, fflags, zero<br> [0x80000f24]:fsd fa2, 1664(a5)<br>   |
| 106|[0x800040a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7009b07ae3d88 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x7009b07ae3d89 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000f38]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000f3c]:csrrs a7, fflags, zero<br> [0x80000f40]:fsd fa2, 1680(a5)<br>   |
| 107|[0x800040b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb2662d13e5e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xbb2662d13e5e5 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000f54]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000f58]:csrrs a7, fflags, zero<br> [0x80000f5c]:fsd fa2, 1696(a5)<br>   |
| 108|[0x800040c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb2662d13e5e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xbb2662d13e5e5 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000f70]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000f74]:csrrs a7, fflags, zero<br> [0x80000f78]:fsd fa2, 1712(a5)<br>   |
| 109|[0x800040d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb2662d13e5e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xbb2662d13e5e5 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80000f8c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000f90]:csrrs a7, fflags, zero<br> [0x80000f94]:fsd fa2, 1728(a5)<br>   |
| 110|[0x800040e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb2662d13e5e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xbb2662d13e5e5 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80000fa8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:fsd fa2, 1744(a5)<br>   |
| 111|[0x800040f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbb2662d13e5e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0xbb2662d13e5e5 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80000fc4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa2, 1760(a5)<br>   |
| 112|[0x80004100]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x347f8263d98bd and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x347f8263d98be and rm_val == 4  #nosat<br>                                                                                                                  |[0x80000fe0]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80000fe4]:csrrs a7, fflags, zero<br> [0x80000fe8]:fsd fa2, 1776(a5)<br>   |
| 113|[0x80004110]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x347f8263d98bd and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x347f8263d98be and rm_val == 3  #nosat<br>                                                                                                                  |[0x80000ffc]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001000]:csrrs a7, fflags, zero<br> [0x80001004]:fsd fa2, 1792(a5)<br>   |
| 114|[0x80004120]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x347f8263d98bd and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x347f8263d98be and rm_val == 2  #nosat<br>                                                                                                                  |[0x80001018]:fdiv.d fa2, fa0, fa1, dyn<br> [0x8000101c]:csrrs a7, fflags, zero<br> [0x80001020]:fsd fa2, 1808(a5)<br>   |
| 115|[0x80004130]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x347f8263d98bd and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x347f8263d98be and rm_val == 1  #nosat<br>                                                                                                                  |[0x80001034]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001038]:csrrs a7, fflags, zero<br> [0x8000103c]:fsd fa2, 1824(a5)<br>   |
| 116|[0x80004140]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x347f8263d98bd and fs2 == 0 and fe2 == 0x3fd and fm2 == 0x347f8263d98be and rm_val == 0  #nosat<br>                                                                                                                  |[0x80001050]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001054]:csrrs a7, fflags, zero<br> [0x80001058]:fsd fa2, 1840(a5)<br>   |
| 117|[0x80004150]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8436c13d47a1b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x8436c13d47a1c and rm_val == 4  #nosat<br>                                                                                                                  |[0x8000106c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001070]:csrrs a7, fflags, zero<br> [0x80001074]:fsd fa2, 1856(a5)<br>   |
| 118|[0x80004160]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8436c13d47a1b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x8436c13d47a1c and rm_val == 3  #nosat<br>                                                                                                                  |[0x80001088]:fdiv.d fa2, fa0, fa1, dyn<br> [0x8000108c]:csrrs a7, fflags, zero<br> [0x80001090]:fsd fa2, 1872(a5)<br>   |
| 119|[0x80004170]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8436c13d47a1b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x8436c13d47a1c and rm_val == 2  #nosat<br>                                                                                                                  |[0x800010a4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa2, 1888(a5)<br>   |
| 120|[0x80004180]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8436c13d47a1b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x8436c13d47a1c and rm_val == 1  #nosat<br>                                                                                                                  |[0x800010c0]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800010c4]:csrrs a7, fflags, zero<br> [0x800010c8]:fsd fa2, 1904(a5)<br>   |
| 121|[0x80004190]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8436c13d47a1b and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x8436c13d47a1c and rm_val == 0  #nosat<br>                                                                                                                  |[0x800010dc]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800010e0]:csrrs a7, fflags, zero<br> [0x800010e4]:fsd fa2, 1920(a5)<br>   |
| 122|[0x800041a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57c33eb1be367 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x57c33eb1be368 and rm_val == 4  #nosat<br>                                                                                                                  |[0x800010f8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800010fc]:csrrs a7, fflags, zero<br> [0x80001100]:fsd fa2, 1936(a5)<br>   |
| 123|[0x800041b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57c33eb1be367 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x57c33eb1be368 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80001114]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001118]:csrrs a7, fflags, zero<br> [0x8000111c]:fsd fa2, 1952(a5)<br>   |
| 124|[0x800041c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57c33eb1be367 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x57c33eb1be368 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80001130]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001134]:csrrs a7, fflags, zero<br> [0x80001138]:fsd fa2, 1968(a5)<br>   |
| 125|[0x800041d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57c33eb1be367 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x57c33eb1be368 and rm_val == 1  #nosat<br>                                                                                                                  |[0x8000114c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001150]:csrrs a7, fflags, zero<br> [0x80001154]:fsd fa2, 1984(a5)<br>   |
| 126|[0x800041e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57c33eb1be367 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x57c33eb1be368 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80001168]:fdiv.d fa2, fa0, fa1, dyn<br> [0x8000116c]:csrrs a7, fflags, zero<br> [0x80001170]:fsd fa2, 2000(a5)<br>   |
| 127|[0x800041f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bde6858f4b91 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x0bde6858f4b92 and rm_val == 4  #nosat<br>                                                                                                                  |[0x80001184]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa2, 2016(a5)<br>   |
| 128|[0x80004200]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bde6858f4b91 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x0bde6858f4b92 and rm_val == 3  #nosat<br>                                                                                                                  |[0x800011ac]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800011b0]:csrrs a7, fflags, zero<br> [0x800011b4]:fsd fa2, 0(a5)<br>      |
| 129|[0x80004210]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bde6858f4b91 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x0bde6858f4b92 and rm_val == 2  #nosat<br>                                                                                                                  |[0x800011c8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800011cc]:csrrs a7, fflags, zero<br> [0x800011d0]:fsd fa2, 16(a5)<br>     |
| 130|[0x80004220]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bde6858f4b91 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x0bde6858f4b92 and rm_val == 1  #nosat<br>                                                                                                                  |[0x800011e4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa2, 32(a5)<br>     |
| 131|[0x80004230]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bde6858f4b91 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x0bde6858f4b92 and rm_val == 0  #nosat<br>                                                                                                                  |[0x80001200]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001204]:csrrs a7, fflags, zero<br> [0x80001208]:fsd fa2, 48(a5)<br>     |
| 132|[0x80004240]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x450c74c9b42e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x450c74c9b42e5 and rm_val == 4  #nosat<br>                                                                                                                  |[0x8000121c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001220]:csrrs a7, fflags, zero<br> [0x80001224]:fsd fa2, 64(a5)<br>     |
| 133|[0x80004250]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x450c74c9b42e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x450c74c9b42e5 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80001238]:fdiv.d fa2, fa0, fa1, dyn<br> [0x8000123c]:csrrs a7, fflags, zero<br> [0x80001240]:fsd fa2, 80(a5)<br>     |
| 134|[0x80004260]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x450c74c9b42e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x450c74c9b42e5 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80001254]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001258]:csrrs a7, fflags, zero<br> [0x8000125c]:fsd fa2, 96(a5)<br>     |
| 135|[0x80004270]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x450c74c9b42e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x450c74c9b42e5 and rm_val == 1  #nosat<br>                                                                                                                  |[0x80001270]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001274]:csrrs a7, fflags, zero<br> [0x80001278]:fsd fa2, 112(a5)<br>    |
| 136|[0x80004280]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x450c74c9b42e4 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x450c74c9b42e5 and rm_val == 0  #nosat<br>                                                                                                                  |[0x8000128c]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001290]:csrrs a7, fflags, zero<br> [0x80001294]:fsd fa2, 128(a5)<br>    |
| 137|[0x80004290]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4733f0771afc6 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x4733f0771afc7 and rm_val == 4  #nosat<br>                                                                                                                  |[0x800012a8]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:fsd fa2, 144(a5)<br>    |
| 138|[0x800042a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4733f0771afc6 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x4733f0771afc7 and rm_val == 3  #nosat<br>                                                                                                                  |[0x800012c4]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa2, 160(a5)<br>    |
| 139|[0x800042b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4733f0771afc6 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x4733f0771afc7 and rm_val == 2  #nosat<br>                                                                                                                  |[0x800012e0]:fdiv.d fa2, fa0, fa1, dyn<br> [0x800012e4]:csrrs a7, fflags, zero<br> [0x800012e8]:fsd fa2, 176(a5)<br>    |
| 140|[0x800042c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4733f0771afc6 and fs2 == 0 and fe2 == 0x3fe and fm2 == 0x4733f0771afc7 and rm_val == 1  #nosat<br>                                                                                                                  |[0x800012fc]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001300]:csrrs a7, fflags, zero<br> [0x80001304]:fsd fa2, 192(a5)<br>    |
| 141|[0x800042d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6a91f2b02b477 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x307470eb37ae6 and rm_val == 3  #nosat<br>                                                                                                                  |[0x80001318]:fdiv.d fa2, fa0, fa1, dyn<br> [0x8000131c]:csrrs a7, fflags, zero<br> [0x80001320]:fsd fa2, 208(a5)<br>    |
| 142|[0x800042e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6a91f2b02b477 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x307470eb37ae6 and rm_val == 2  #nosat<br>                                                                                                                  |[0x80001334]:fdiv.d fa2, fa0, fa1, dyn<br> [0x80001338]:csrrs a7, fflags, zero<br> [0x8000133c]:fsd fa2, 224(a5)<br>    |
