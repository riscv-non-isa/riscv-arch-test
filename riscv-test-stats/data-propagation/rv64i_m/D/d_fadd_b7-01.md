
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800028c0')]      |
| SIG_REGION                | [('0x80005710', '0x80006c30', '676 dwords')]      |
| COV_LABELS                | fadd_b7      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fadd_b7-01.S/ref.S    |
| Total Number of coverpoints| 444     |
| Total Coverpoints Hit     | 438      |
| Total Signature Updates   | 676      |
| STAT1                     | 338      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 338     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fadd.d', 'rs1 : f3', 'rs2 : f3', 'rd : f3', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x800003bc]:fadd.d ft3, ft3, ft3, dyn
	-[0x800003c0]:csrrs a7, fflags, zero
	-[0x800003c4]:fsd ft3, 0(a5)
Current Store : [0x800003c8] : sd a7, 8(a5) -- Store: [0x80005718]:0x0000000000000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f8', 'rd : f8', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0xd04149240396f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xd04149240396f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fadd.d fs0, fa3, fs0, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsd fs0, 16(a5)
Current Store : [0x800003e4] : sd a7, 24(a5) -- Store: [0x80005728]:0x0000000000000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f24', 'rd : f9', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x663d37d2b8c0a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x663d37d2b8c0a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800003f4]:fadd.d fs1, fs1, fs8, dyn
	-[0x800003f8]:csrrs a7, fflags, zero
	-[0x800003fc]:fsd fs1, 32(a5)
Current Store : [0x80000400] : sd a7, 40(a5) -- Store: [0x80005738]:0x0000000000000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f20', 'rd : f31', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x80000410]:fadd.d ft11, fs4, fs4, dyn
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:fsd ft11, 48(a5)
Current Store : [0x8000041c] : sd a7, 56(a5) -- Store: [0x80005748]:0x0000000000000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f11', 'rd : f27', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0x51543c76f092f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x51543c76f092f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000042c]:fadd.d fs11, fa2, fa1, dyn
	-[0x80000430]:csrrs a7, fflags, zero
	-[0x80000434]:fsd fs11, 64(a5)
Current Store : [0x80000438] : sd a7, 72(a5) -- Store: [0x80005758]:0x0000000000000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f23', 'rd : f28', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5688295949924 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5688295949924 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000448]:fadd.d ft8, ft0, fs7, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd ft8, 80(a5)
Current Store : [0x80000454] : sd a7, 88(a5) -- Store: [0x80005768]:0x0000000000000005




Last Coverpoint : ['rs1 : f6', 'rs2 : f27', 'rd : f13', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5f6241fcc17b9 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5f6241fcc17b9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000464]:fadd.d fa3, ft6, fs11, dyn
	-[0x80000468]:csrrs a7, fflags, zero
	-[0x8000046c]:fsd fa3, 96(a5)
Current Store : [0x80000470] : sd a7, 104(a5) -- Store: [0x80005778]:0x0000000000000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f14', 'rd : f25', 'fs1 == 0 and fe1 == 0x7fb and fm1 == 0x1035095fb0c7f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x1035095fb0c7f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000480]:fadd.d fs9, ft9, fa4, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd fs9, 112(a5)
Current Store : [0x8000048c] : sd a7, 120(a5) -- Store: [0x80005788]:0x0000000000000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f10', 'rd : f16', 'fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x4b499d8a230bf and fs2 == 1 and fe2 == 0x7f8 and fm2 == 0x4b499d8a230bf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000049c]:fadd.d fa6, fs11, fa0, dyn
	-[0x800004a0]:csrrs a7, fflags, zero
	-[0x800004a4]:fsd fa6, 128(a5)
Current Store : [0x800004a8] : sd a7, 136(a5) -- Store: [0x80005798]:0x0000000000000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f26', 'rd : f6', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe2d876b20b2cd and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe2d876b20b2cd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004b8]:fadd.d ft6, fs3, fs10, dyn
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:fsd ft6, 144(a5)
Current Store : [0x800004c4] : sd a7, 152(a5) -- Store: [0x800057a8]:0x0000000000000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f31', 'rd : f1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3e06598dce41c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3e06598dce41c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004d4]:fadd.d ft1, fa0, ft11, dyn
	-[0x800004d8]:csrrs a7, fflags, zero
	-[0x800004dc]:fsd ft1, 160(a5)
Current Store : [0x800004e0] : sd a7, 168(a5) -- Store: [0x800057b8]:0x0000000000000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f25', 'rd : f29', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7d8c1fdfb6a69 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x7d8c1fdfb6a69 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fadd.d ft9, fa1, fs9, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd ft9, 176(a5)
Current Store : [0x800004fc] : sd a7, 184(a5) -- Store: [0x800057c8]:0x0000000000000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f7', 'rd : f0', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0xed56e9c6a326f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0xed56e9c6a326f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000050c]:fadd.d ft0, fa4, ft7, dyn
	-[0x80000510]:csrrs a7, fflags, zero
	-[0x80000514]:fsd ft0, 192(a5)
Current Store : [0x80000518] : sd a7, 200(a5) -- Store: [0x800057d8]:0x0000000000000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f0', 'rd : f18', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x45e0c0bf1170b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x45e0c0bf1170b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000528]:fadd.d fs2, fa6, ft0, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsd fs2, 208(a5)
Current Store : [0x80000534] : sd a7, 216(a5) -- Store: [0x800057e8]:0x0000000000000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f15', 'rd : f7', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8280abe92e75 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8280abe92e75 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000544]:fadd.d ft7, ft11, fa5, dyn
	-[0x80000548]:csrrs a7, fflags, zero
	-[0x8000054c]:fsd ft7, 224(a5)
Current Store : [0x80000550] : sd a7, 232(a5) -- Store: [0x800057f8]:0x0000000000000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f1', 'rd : f30', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe40271df052d1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe40271df052d1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000560]:fadd.d ft10, ft2, ft1, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd ft10, 240(a5)
Current Store : [0x8000056c] : sd a7, 248(a5) -- Store: [0x80005808]:0x0000000000000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f13', 'rd : f26', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5625f693222e6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5625f693222e6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000057c]:fadd.d fs10, ft5, fa3, dyn
	-[0x80000580]:csrrs a7, fflags, zero
	-[0x80000584]:fsd fs10, 256(a5)
Current Store : [0x80000588] : sd a7, 264(a5) -- Store: [0x80005818]:0x0000000000000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f28', 'rd : f20', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2e9fbd9df2c67 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2e9fbd9df2c67 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000598]:fadd.d fs4, fs8, ft8, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd fs4, 272(a5)
Current Store : [0x800005a4] : sd a7, 280(a5) -- Store: [0x80005828]:0x0000000000000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f22', 'rd : f17', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x64e15e87b6907 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x64e15e87b6907 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005b4]:fadd.d fa7, fs5, fs6, dyn
	-[0x800005b8]:csrrs a7, fflags, zero
	-[0x800005bc]:fsd fa7, 288(a5)
Current Store : [0x800005c0] : sd a7, 296(a5) -- Store: [0x80005838]:0x0000000000000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f17', 'rd : f11', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x41f380c8d1ec8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x41f380c8d1ec8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005d0]:fadd.d fa1, ft4, fa7, dyn
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:fsd fa1, 304(a5)
Current Store : [0x800005dc] : sd a7, 312(a5) -- Store: [0x80005848]:0x0000000000000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f30', 'rd : f24', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2b44ad389f673 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x2b44ad389f673 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005ec]:fadd.d fs8, ft1, ft10, dyn
	-[0x800005f0]:csrrs a7, fflags, zero
	-[0x800005f4]:fsd fs8, 320(a5)
Current Store : [0x800005f8] : sd a7, 328(a5) -- Store: [0x80005858]:0x0000000000000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f12', 'rd : f21', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e9e23b9dbe28 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x8e9e23b9dbe28 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000608]:fadd.d fs5, fa5, fa2, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:fsd fs5, 336(a5)
Current Store : [0x80000614] : sd a7, 344(a5) -- Store: [0x80005868]:0x0000000000000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f29', 'rd : f12', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x44e981a2c9e6f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x44e981a2c9e6f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000624]:fadd.d fa2, fs7, ft9, dyn
	-[0x80000628]:csrrs a7, fflags, zero
	-[0x8000062c]:fsd fa2, 352(a5)
Current Store : [0x80000630] : sd a7, 360(a5) -- Store: [0x80005878]:0x0000000000000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f9', 'rd : f2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x10107d46bd56f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x10107d46bd56f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000640]:fadd.d ft2, fs2, fs1, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd ft2, 368(a5)
Current Store : [0x8000064c] : sd a7, 376(a5) -- Store: [0x80005888]:0x0000000000000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f2', 'rd : f19', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x25e0f16179d08 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x25e0f16179d08 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000065c]:fadd.d fs3, fs9, ft2, dyn
	-[0x80000660]:csrrs a7, fflags, zero
	-[0x80000664]:fsd fs3, 384(a5)
Current Store : [0x80000668] : sd a7, 392(a5) -- Store: [0x80005898]:0x0000000000000005




Last Coverpoint : ['rs1 : f28', 'rs2 : f6', 'rd : f22', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x28a501a431151 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x28a501a431151 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000678]:fadd.d fs6, ft8, ft6, dyn
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:fsd fs6, 400(a5)
Current Store : [0x80000684] : sd a7, 408(a5) -- Store: [0x800058a8]:0x0000000000000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f21', 'rd : f14', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0x4ef5cc116e8a3 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x4ef5cc116e8a3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000694]:fadd.d fa4, ft10, fs5, dyn
	-[0x80000698]:csrrs a7, fflags, zero
	-[0x8000069c]:fsd fa4, 416(a5)
Current Store : [0x800006a0] : sd a7, 424(a5) -- Store: [0x800058b8]:0x0000000000000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f4', 'rd : f15', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0xfe0c60e404d7f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xfe0c60e404d7f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006b0]:fadd.d fa5, fa7, ft4, dyn
	-[0x800006b4]:csrrs a7, fflags, zero
	-[0x800006b8]:fsd fa5, 432(a5)
Current Store : [0x800006bc] : sd a7, 440(a5) -- Store: [0x800058c8]:0x0000000000000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f18', 'rd : f10', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5c0c3b0f20ae1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x5c0c3b0f20ae1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006cc]:fadd.d fa0, ft7, fs2, dyn
	-[0x800006d0]:csrrs a7, fflags, zero
	-[0x800006d4]:fsd fa0, 448(a5)
Current Store : [0x800006d8] : sd a7, 456(a5) -- Store: [0x800058d8]:0x0000000000000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f16', 'rd : f5', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x95a004d0cc955 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x95a004d0cc955 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fadd.d ft5, fs6, fa6, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd ft5, 464(a5)
Current Store : [0x800006f4] : sd a7, 472(a5) -- Store: [0x800058e8]:0x0000000000000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f19', 'rd : f4', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x30d9918574e31 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x30d9918574e31 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000704]:fadd.d ft4, fs0, fs3, dyn
	-[0x80000708]:csrrs a7, fflags, zero
	-[0x8000070c]:fsd ft4, 480(a5)
Current Store : [0x80000710] : sd a7, 488(a5) -- Store: [0x800058f8]:0x0000000000000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f5', 'rd : f23', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x82ac91eb0b042 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x82ac91eb0b042 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000720]:fadd.d fs7, fs10, ft5, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd fs7, 496(a5)
Current Store : [0x8000072c] : sd a7, 504(a5) -- Store: [0x80005908]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x02abb1ad4a0a3 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x02abb1ad4a0a3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000073c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000740]:csrrs a7, fflags, zero
	-[0x80000744]:fsd fa2, 512(a5)
Current Store : [0x80000748] : sd a7, 520(a5) -- Store: [0x80005918]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x95be9fb8e8257 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x95be9fb8e8257 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000758]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000075c]:csrrs a7, fflags, zero
	-[0x80000760]:fsd fa2, 528(a5)
Current Store : [0x80000764] : sd a7, 536(a5) -- Store: [0x80005928]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0d5d3ab8fef6e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0d5d3ab8fef6e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000774]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000778]:csrrs a7, fflags, zero
	-[0x8000077c]:fsd fa2, 544(a5)
Current Store : [0x80000780] : sd a7, 552(a5) -- Store: [0x80005938]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x4c297c00425ff and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x4c297c00425ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000790]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa2, 560(a5)
Current Store : [0x8000079c] : sd a7, 568(a5) -- Store: [0x80005948]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xeeed208a47b6f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xeeed208a47b6f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007ac]:fadd.d fa2, fa0, fa1, dyn
	-[0x800007b0]:csrrs a7, fflags, zero
	-[0x800007b4]:fsd fa2, 576(a5)
Current Store : [0x800007b8] : sd a7, 584(a5) -- Store: [0x80005958]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1ecf7d50e7867 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x1ecf7d50e7867 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsd fa2, 592(a5)
Current Store : [0x800007d4] : sd a7, 600(a5) -- Store: [0x80005968]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xdbe0fc8b3298f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xdbe0fc8b3298f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007e4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800007e8]:csrrs a7, fflags, zero
	-[0x800007ec]:fsd fa2, 608(a5)
Current Store : [0x800007f0] : sd a7, 616(a5) -- Store: [0x80005978]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5b3a3e9fd9fb7 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5b3a3e9fd9fb7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000800]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa2, 624(a5)
Current Store : [0x8000080c] : sd a7, 632(a5) -- Store: [0x80005988]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x699f5f701628b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x699f5f701628b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000081c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000820]:csrrs a7, fflags, zero
	-[0x80000824]:fsd fa2, 640(a5)
Current Store : [0x80000828] : sd a7, 648(a5) -- Store: [0x80005998]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x172584a6fc7c6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x172584a6fc7c6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000838]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:fsd fa2, 656(a5)
Current Store : [0x80000844] : sd a7, 664(a5) -- Store: [0x800059a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x898a6dfea4b33 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x898a6dfea4b33 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000854]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000858]:csrrs a7, fflags, zero
	-[0x8000085c]:fsd fa2, 672(a5)
Current Store : [0x80000860] : sd a7, 680(a5) -- Store: [0x800059b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f7 and fm1 == 0xfda686ffdecff and fs2 == 1 and fe2 == 0x7f7 and fm2 == 0xfda686ffdecff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000870]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:fsd fa2, 688(a5)
Current Store : [0x8000087c] : sd a7, 696(a5) -- Store: [0x800059c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x65e23ddcbddd1 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x65e23ddcbddd1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000088c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000890]:csrrs a7, fflags, zero
	-[0x80000894]:fsd fa2, 704(a5)
Current Store : [0x80000898] : sd a7, 712(a5) -- Store: [0x800059d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa10df54b7350b and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa10df54b7350b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:fsd fa2, 720(a5)
Current Store : [0x800008b4] : sd a7, 728(a5) -- Store: [0x800059e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x464ca5c58934b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x464ca5c58934b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008c4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800008c8]:csrrs a7, fflags, zero
	-[0x800008cc]:fsd fa2, 736(a5)
Current Store : [0x800008d0] : sd a7, 744(a5) -- Store: [0x800059f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x23fa6c5af95c3 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x23fa6c5af95c3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa2, 752(a5)
Current Store : [0x800008ec] : sd a7, 760(a5) -- Store: [0x80005a08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xd0546b2b91d49 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xd0546b2b91d49 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008fc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000900]:csrrs a7, fflags, zero
	-[0x80000904]:fsd fa2, 768(a5)
Current Store : [0x80000908] : sd a7, 776(a5) -- Store: [0x80005a18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xba13e3965dc9d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xba13e3965dc9d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000918]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:fsd fa2, 784(a5)
Current Store : [0x80000924] : sd a7, 792(a5) -- Store: [0x80005a28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9858f917ba8dd and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x9858f917ba8dd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000934]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000938]:csrrs a7, fflags, zero
	-[0x8000093c]:fsd fa2, 800(a5)
Current Store : [0x80000940] : sd a7, 808(a5) -- Store: [0x80005a38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x97605fecf75de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x97605fecf75de and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000950]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000954]:csrrs a7, fflags, zero
	-[0x80000958]:fsd fa2, 816(a5)
Current Store : [0x8000095c] : sd a7, 824(a5) -- Store: [0x80005a48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1dc9fa26c1435 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x1dc9fa26c1435 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000096c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000970]:csrrs a7, fflags, zero
	-[0x80000974]:fsd fa2, 832(a5)
Current Store : [0x80000978] : sd a7, 840(a5) -- Store: [0x80005a58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x97d11446f38d6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x97d11446f38d6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000988]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsd fa2, 848(a5)
Current Store : [0x80000994] : sd a7, 856(a5) -- Store: [0x80005a68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe230580ba7bd1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe230580ba7bd1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009a4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800009a8]:csrrs a7, fflags, zero
	-[0x800009ac]:fsd fa2, 864(a5)
Current Store : [0x800009b0] : sd a7, 872(a5) -- Store: [0x80005a78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa1c5a75f20f3f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa1c5a75f20f3f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa2, 880(a5)
Current Store : [0x800009cc] : sd a7, 888(a5) -- Store: [0x80005a88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x74d41339ae482 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x74d41339ae482 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009dc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800009e0]:csrrs a7, fflags, zero
	-[0x800009e4]:fsd fa2, 896(a5)
Current Store : [0x800009e8] : sd a7, 904(a5) -- Store: [0x80005a98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa26ee9811427d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa26ee9811427d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009f8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800009fc]:csrrs a7, fflags, zero
	-[0x80000a00]:fsd fa2, 912(a5)
Current Store : [0x80000a04] : sd a7, 920(a5) -- Store: [0x80005aa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe5da67e1de883 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe5da67e1de883 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a14]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000a18]:csrrs a7, fflags, zero
	-[0x80000a1c]:fsd fa2, 928(a5)
Current Store : [0x80000a20] : sd a7, 936(a5) -- Store: [0x80005ab8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc77c9350fee6d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xc77c9350fee6d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a30]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000a34]:csrrs a7, fflags, zero
	-[0x80000a38]:fsd fa2, 944(a5)
Current Store : [0x80000a3c] : sd a7, 952(a5) -- Store: [0x80005ac8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x46206996b12da and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x46206996b12da and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a4c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000a50]:csrrs a7, fflags, zero
	-[0x80000a54]:fsd fa2, 960(a5)
Current Store : [0x80000a58] : sd a7, 968(a5) -- Store: [0x80005ad8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2365849750ca3 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x2365849750ca3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a68]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:fsd fa2, 976(a5)
Current Store : [0x80000a74] : sd a7, 984(a5) -- Store: [0x80005ae8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x19ff775aac054 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x19ff775aac054 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a84]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000a88]:csrrs a7, fflags, zero
	-[0x80000a8c]:fsd fa2, 992(a5)
Current Store : [0x80000a90] : sd a7, 1000(a5) -- Store: [0x80005af8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x2bdf74439828f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x2bdf74439828f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa2, 1008(a5)
Current Store : [0x80000aac] : sd a7, 1016(a5) -- Store: [0x80005b08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x50af5b268139f and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0x50af5b268139f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000abc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000ac0]:csrrs a7, fflags, zero
	-[0x80000ac4]:fsd fa2, 1024(a5)
Current Store : [0x80000ac8] : sd a7, 1032(a5) -- Store: [0x80005b18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x7aed2f71a352f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x7aed2f71a352f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ad8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000adc]:csrrs a7, fflags, zero
	-[0x80000ae0]:fsd fa2, 1040(a5)
Current Store : [0x80000ae4] : sd a7, 1048(a5) -- Store: [0x80005b28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2a0b81afacd4f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x2a0b81afacd4f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000af4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000af8]:csrrs a7, fflags, zero
	-[0x80000afc]:fsd fa2, 1056(a5)
Current Store : [0x80000b00] : sd a7, 1064(a5) -- Store: [0x80005b38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf155693c9590b and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xf155693c9590b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b10]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000b14]:csrrs a7, fflags, zero
	-[0x80000b18]:fsd fa2, 1072(a5)
Current Store : [0x80000b1c] : sd a7, 1080(a5) -- Store: [0x80005b48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9bd90b8e42a3f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9bd90b8e42a3f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b2c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000b30]:csrrs a7, fflags, zero
	-[0x80000b34]:fsd fa2, 1088(a5)
Current Store : [0x80000b38] : sd a7, 1096(a5) -- Store: [0x80005b58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcb9c1949673fd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcb9c1949673fd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b48]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000b4c]:csrrs a7, fflags, zero
	-[0x80000b50]:fsd fa2, 1104(a5)
Current Store : [0x80000b54] : sd a7, 1112(a5) -- Store: [0x80005b68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x29651713b2616 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x29651713b2616 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b64]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000b68]:csrrs a7, fflags, zero
	-[0x80000b6c]:fsd fa2, 1120(a5)
Current Store : [0x80000b70] : sd a7, 1128(a5) -- Store: [0x80005b78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfc642d452bf98 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfc642d452bf98 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa2, 1136(a5)
Current Store : [0x80000b8c] : sd a7, 1144(a5) -- Store: [0x80005b88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4596be54ed4ed and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x4596be54ed4ed and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b9c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000ba0]:csrrs a7, fflags, zero
	-[0x80000ba4]:fsd fa2, 1152(a5)
Current Store : [0x80000ba8] : sd a7, 1160(a5) -- Store: [0x80005b98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdfcf16f837dfc and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xdfcf16f837dfc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000bb8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000bbc]:csrrs a7, fflags, zero
	-[0x80000bc0]:fsd fa2, 1168(a5)
Current Store : [0x80000bc4] : sd a7, 1176(a5) -- Store: [0x80005ba8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe4bb35faff00f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe4bb35faff00f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000bd4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000bd8]:csrrs a7, fflags, zero
	-[0x80000bdc]:fsd fa2, 1184(a5)
Current Store : [0x80000be0] : sd a7, 1192(a5) -- Store: [0x80005bb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xeedb9ccd51d70 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xeedb9ccd51d70 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000bf0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000bf4]:csrrs a7, fflags, zero
	-[0x80000bf8]:fsd fa2, 1200(a5)
Current Store : [0x80000bfc] : sd a7, 1208(a5) -- Store: [0x80005bc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xeb18879086a84 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xeb18879086a84 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c0c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c10]:csrrs a7, fflags, zero
	-[0x80000c14]:fsd fa2, 1216(a5)
Current Store : [0x80000c18] : sd a7, 1224(a5) -- Store: [0x80005bd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xcc5a8af41138f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xcc5a8af41138f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c28]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c2c]:csrrs a7, fflags, zero
	-[0x80000c30]:fsd fa2, 1232(a5)
Current Store : [0x80000c34] : sd a7, 1240(a5) -- Store: [0x80005be8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb7e5dd8914aef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb7e5dd8914aef and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c44]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c48]:csrrs a7, fflags, zero
	-[0x80000c4c]:fsd fa2, 1248(a5)
Current Store : [0x80000c50] : sd a7, 1256(a5) -- Store: [0x80005bf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x93dda7765991f and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0x93dda7765991f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa2, 1264(a5)
Current Store : [0x80000c6c] : sd a7, 1272(a5) -- Store: [0x80005c08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f7 and fm1 == 0xd6d9096268f7f and fs2 == 1 and fe2 == 0x7f7 and fm2 == 0xd6d9096268f7f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c7c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c80]:csrrs a7, fflags, zero
	-[0x80000c84]:fsd fa2, 1280(a5)
Current Store : [0x80000c88] : sd a7, 1288(a5) -- Store: [0x80005c18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe063e979a868f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe063e979a868f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c98]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000c9c]:csrrs a7, fflags, zero
	-[0x80000ca0]:fsd fa2, 1296(a5)
Current Store : [0x80000ca4] : sd a7, 1304(a5) -- Store: [0x80005c28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa3695ba8b56f7 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa3695ba8b56f7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cb4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000cb8]:csrrs a7, fflags, zero
	-[0x80000cbc]:fsd fa2, 1312(a5)
Current Store : [0x80000cc0] : sd a7, 1320(a5) -- Store: [0x80005c38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc97053092bae8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc97053092bae8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cd0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000cd4]:csrrs a7, fflags, zero
	-[0x80000cd8]:fsd fa2, 1328(a5)
Current Store : [0x80000cdc] : sd a7, 1336(a5) -- Store: [0x80005c48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa354d897694eb and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa354d897694eb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cec]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000cf0]:csrrs a7, fflags, zero
	-[0x80000cf4]:fsd fa2, 1344(a5)
Current Store : [0x80000cf8] : sd a7, 1352(a5) -- Store: [0x80005c58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x46821d48c93bf and fs2 == 1 and fe2 == 0x7f8 and fm2 == 0x46821d48c93bf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d08]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d0c]:csrrs a7, fflags, zero
	-[0x80000d10]:fsd fa2, 1360(a5)
Current Store : [0x80000d14] : sd a7, 1368(a5) -- Store: [0x80005c68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xe15232c378b7f and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0xe15232c378b7f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d24]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d28]:csrrs a7, fflags, zero
	-[0x80000d2c]:fsd fa2, 1376(a5)
Current Store : [0x80000d30] : sd a7, 1384(a5) -- Store: [0x80005c78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x2011ca3e25417 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x2011ca3e25417 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa2, 1392(a5)
Current Store : [0x80000d4c] : sd a7, 1400(a5) -- Store: [0x80005c88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x71f120502a5e1 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x71f120502a5e1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d5c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d60]:csrrs a7, fflags, zero
	-[0x80000d64]:fsd fa2, 1408(a5)
Current Store : [0x80000d68] : sd a7, 1416(a5) -- Store: [0x80005c98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd6ac2d374cb87 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd6ac2d374cb87 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d78]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d7c]:csrrs a7, fflags, zero
	-[0x80000d80]:fsd fa2, 1424(a5)
Current Store : [0x80000d84] : sd a7, 1432(a5) -- Store: [0x80005ca8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5f72319ab0728 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5f72319ab0728 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d94]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000d98]:csrrs a7, fflags, zero
	-[0x80000d9c]:fsd fa2, 1440(a5)
Current Store : [0x80000da0] : sd a7, 1448(a5) -- Store: [0x80005cb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xf700ae54ab8df and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0xf700ae54ab8df and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000db0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000db4]:csrrs a7, fflags, zero
	-[0x80000db8]:fsd fa2, 1456(a5)
Current Store : [0x80000dbc] : sd a7, 1464(a5) -- Store: [0x80005cc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8c31f809fe79b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x8c31f809fe79b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000dcc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000dd0]:csrrs a7, fflags, zero
	-[0x80000dd4]:fsd fa2, 1472(a5)
Current Store : [0x80000dd8] : sd a7, 1480(a5) -- Store: [0x80005cd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa99dd8880ddad and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa99dd8880ddad and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000de8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000dec]:csrrs a7, fflags, zero
	-[0x80000df0]:fsd fa2, 1488(a5)
Current Store : [0x80000df4] : sd a7, 1496(a5) -- Store: [0x80005ce8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd883cdc560c7e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd883cdc560c7e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e04]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e08]:csrrs a7, fflags, zero
	-[0x80000e0c]:fsd fa2, 1504(a5)
Current Store : [0x80000e10] : sd a7, 1512(a5) -- Store: [0x80005cf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb4318b7227e1b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xb4318b7227e1b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa2, 1520(a5)
Current Store : [0x80000e2c] : sd a7, 1528(a5) -- Store: [0x80005d08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x38a399f905ab9 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x38a399f905ab9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e3c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e40]:csrrs a7, fflags, zero
	-[0x80000e44]:fsd fa2, 1536(a5)
Current Store : [0x80000e48] : sd a7, 1544(a5) -- Store: [0x80005d18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x65a21c61847d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x65a21c61847d5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e58]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e5c]:csrrs a7, fflags, zero
	-[0x80000e60]:fsd fa2, 1552(a5)
Current Store : [0x80000e64] : sd a7, 1560(a5) -- Store: [0x80005d28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc70d21e827c6a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc70d21e827c6a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e74]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e78]:csrrs a7, fflags, zero
	-[0x80000e7c]:fsd fa2, 1568(a5)
Current Store : [0x80000e80] : sd a7, 1576(a5) -- Store: [0x80005d38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7ee0eb8d7cc7f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x7ee0eb8d7cc7f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e90]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000e94]:csrrs a7, fflags, zero
	-[0x80000e98]:fsd fa2, 1584(a5)
Current Store : [0x80000e9c] : sd a7, 1592(a5) -- Store: [0x80005d48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x24c28db80e5f8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x24c28db80e5f8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000eac]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000eb0]:csrrs a7, fflags, zero
	-[0x80000eb4]:fsd fa2, 1600(a5)
Current Store : [0x80000eb8] : sd a7, 1608(a5) -- Store: [0x80005d58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe3baa16148b70 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe3baa16148b70 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ec8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000ecc]:csrrs a7, fflags, zero
	-[0x80000ed0]:fsd fa2, 1616(a5)
Current Store : [0x80000ed4] : sd a7, 1624(a5) -- Store: [0x80005d68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf1d543a0b07fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xf1d543a0b07fb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa2, 1632(a5)
Current Store : [0x80000ef0] : sd a7, 1640(a5) -- Store: [0x80005d78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x6db2c39b92e2f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x6db2c39b92e2f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f00]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f04]:csrrs a7, fflags, zero
	-[0x80000f08]:fsd fa2, 1648(a5)
Current Store : [0x80000f0c] : sd a7, 1656(a5) -- Store: [0x80005d88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x94410aa872e85 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x94410aa872e85 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f1c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f20]:csrrs a7, fflags, zero
	-[0x80000f24]:fsd fa2, 1664(a5)
Current Store : [0x80000f28] : sd a7, 1672(a5) -- Store: [0x80005d98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8363338c30c8b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x8363338c30c8b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f38]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f3c]:csrrs a7, fflags, zero
	-[0x80000f40]:fsd fa2, 1680(a5)
Current Store : [0x80000f44] : sd a7, 1688(a5) -- Store: [0x80005da8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9071429916f5c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9071429916f5c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f54]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f58]:csrrs a7, fflags, zero
	-[0x80000f5c]:fsd fa2, 1696(a5)
Current Store : [0x80000f60] : sd a7, 1704(a5) -- Store: [0x80005db8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x922ba23fbbdc6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x922ba23fbbdc6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f70]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f74]:csrrs a7, fflags, zero
	-[0x80000f78]:fsd fa2, 1712(a5)
Current Store : [0x80000f7c] : sd a7, 1720(a5) -- Store: [0x80005dc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed93307c783a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed93307c783a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f8c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000f90]:csrrs a7, fflags, zero
	-[0x80000f94]:fsd fa2, 1728(a5)
Current Store : [0x80000f98] : sd a7, 1736(a5) -- Store: [0x80005dd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbebcdefd48729 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbebcdefd48729 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:fsd fa2, 1744(a5)
Current Store : [0x80000fb4] : sd a7, 1752(a5) -- Store: [0x80005de8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x99434052cdad4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x99434052cdad4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa2, 1760(a5)
Current Store : [0x80000fd0] : sd a7, 1768(a5) -- Store: [0x80005df8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x0451c9f55e3a7 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x0451c9f55e3a7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fe0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80000fe4]:csrrs a7, fflags, zero
	-[0x80000fe8]:fsd fa2, 1776(a5)
Current Store : [0x80000fec] : sd a7, 1784(a5) -- Store: [0x80005e08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3e7bb112f7fe8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3e7bb112f7fe8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ffc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001000]:csrrs a7, fflags, zero
	-[0x80001004]:fsd fa2, 1792(a5)
Current Store : [0x80001008] : sd a7, 1800(a5) -- Store: [0x80005e18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xfd3af1f060647 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xfd3af1f060647 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001018]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000101c]:csrrs a7, fflags, zero
	-[0x80001020]:fsd fa2, 1808(a5)
Current Store : [0x80001024] : sd a7, 1816(a5) -- Store: [0x80005e28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x43be7b7bc5458 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x43be7b7bc5458 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001034]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001038]:csrrs a7, fflags, zero
	-[0x8000103c]:fsd fa2, 1824(a5)
Current Store : [0x80001040] : sd a7, 1832(a5) -- Store: [0x80005e38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x38619d6cda314 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x38619d6cda314 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001050]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001054]:csrrs a7, fflags, zero
	-[0x80001058]:fsd fa2, 1840(a5)
Current Store : [0x8000105c] : sd a7, 1848(a5) -- Store: [0x80005e48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf6165c8e35259 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xf6165c8e35259 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000106c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001070]:csrrs a7, fflags, zero
	-[0x80001074]:fsd fa2, 1856(a5)
Current Store : [0x80001078] : sd a7, 1864(a5) -- Store: [0x80005e58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x889db2e44701b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x889db2e44701b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001088]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000108c]:csrrs a7, fflags, zero
	-[0x80001090]:fsd fa2, 1872(a5)
Current Store : [0x80001094] : sd a7, 1880(a5) -- Store: [0x80005e68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x19295f298916c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x19295f298916c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa2, 1888(a5)
Current Store : [0x800010b0] : sd a7, 1896(a5) -- Store: [0x80005e78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x428af114baf6a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x428af114baf6a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010c0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800010c4]:csrrs a7, fflags, zero
	-[0x800010c8]:fsd fa2, 1904(a5)
Current Store : [0x800010cc] : sd a7, 1912(a5) -- Store: [0x80005e88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x09f50264a8d1f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x09f50264a8d1f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010dc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800010e0]:csrrs a7, fflags, zero
	-[0x800010e4]:fsd fa2, 1920(a5)
Current Store : [0x800010e8] : sd a7, 1928(a5) -- Store: [0x80005e98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe230c7e39a5d7 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe230c7e39a5d7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010f8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800010fc]:csrrs a7, fflags, zero
	-[0x80001100]:fsd fa2, 1936(a5)
Current Store : [0x80001104] : sd a7, 1944(a5) -- Store: [0x80005ea8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8bf6a13abca7f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x8bf6a13abca7f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001114]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001118]:csrrs a7, fflags, zero
	-[0x8000111c]:fsd fa2, 1952(a5)
Current Store : [0x80001120] : sd a7, 1960(a5) -- Store: [0x80005eb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa501ef8480c55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa501ef8480c55 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001130]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001134]:csrrs a7, fflags, zero
	-[0x80001138]:fsd fa2, 1968(a5)
Current Store : [0x8000113c] : sd a7, 1976(a5) -- Store: [0x80005ec8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x360373cf6f10f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x360373cf6f10f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000114c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001150]:csrrs a7, fflags, zero
	-[0x80001154]:fsd fa2, 1984(a5)
Current Store : [0x80001158] : sd a7, 1992(a5) -- Store: [0x80005ed8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6f335d0539418 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6f335d0539418 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001168]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000116c]:csrrs a7, fflags, zero
	-[0x80001170]:fsd fa2, 2000(a5)
Current Store : [0x80001174] : sd a7, 2008(a5) -- Store: [0x80005ee8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf7a288f1ea41f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xf7a288f1ea41f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001184]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa2, 2016(a5)
Current Store : [0x80001190] : sd a7, 2024(a5) -- Store: [0x80005ef8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x265eb5ece1e0f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x265eb5ece1e0f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011ac]:fadd.d fa2, fa0, fa1, dyn
	-[0x800011b0]:csrrs a7, fflags, zero
	-[0x800011b4]:fsd fa2, 0(a5)
Current Store : [0x800011b8] : sd a7, 8(a5) -- Store: [0x80005f08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa8edfc5560a8d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa8edfc5560a8d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011c8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800011cc]:csrrs a7, fflags, zero
	-[0x800011d0]:fsd fa2, 16(a5)
Current Store : [0x800011d4] : sd a7, 24(a5) -- Store: [0x80005f18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x04c0c63d2bf03 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x04c0c63d2bf03 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa2, 32(a5)
Current Store : [0x800011f0] : sd a7, 40(a5) -- Store: [0x80005f28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0xfe0614a7b9fbf and fs2 == 1 and fe2 == 0x7fa and fm2 == 0xfe0614a7b9fbf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001200]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001204]:csrrs a7, fflags, zero
	-[0x80001208]:fsd fa2, 48(a5)
Current Store : [0x8000120c] : sd a7, 56(a5) -- Store: [0x80005f38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa1ddeeb12c253 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa1ddeeb12c253 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000121c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001220]:csrrs a7, fflags, zero
	-[0x80001224]:fsd fa2, 64(a5)
Current Store : [0x80001228] : sd a7, 72(a5) -- Store: [0x80005f48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe2c9f3b4cd220 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe2c9f3b4cd220 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001238]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000123c]:csrrs a7, fflags, zero
	-[0x80001240]:fsd fa2, 80(a5)
Current Store : [0x80001244] : sd a7, 88(a5) -- Store: [0x80005f58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x0cc870fcad57f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x0cc870fcad57f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001254]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001258]:csrrs a7, fflags, zero
	-[0x8000125c]:fsd fa2, 96(a5)
Current Store : [0x80001260] : sd a7, 104(a5) -- Store: [0x80005f68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0382dd247f3f9 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0382dd247f3f9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001270]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001274]:csrrs a7, fflags, zero
	-[0x80001278]:fsd fa2, 112(a5)
Current Store : [0x8000127c] : sd a7, 120(a5) -- Store: [0x80005f78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f2 and fm1 == 0xf8c6f685f5fff and fs2 == 1 and fe2 == 0x7f2 and fm2 == 0xf8c6f685f5fff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000128c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001290]:csrrs a7, fflags, zero
	-[0x80001294]:fsd fa2, 128(a5)
Current Store : [0x80001298] : sd a7, 136(a5) -- Store: [0x80005f88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x989b40414f92c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x989b40414f92c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012a8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:fsd fa2, 144(a5)
Current Store : [0x800012b4] : sd a7, 152(a5) -- Store: [0x80005f98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2c3b1b8ef2d41 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2c3b1b8ef2d41 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa2, 160(a5)
Current Store : [0x800012d0] : sd a7, 168(a5) -- Store: [0x80005fa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x950338fe39141 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x950338fe39141 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012e0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800012e4]:csrrs a7, fflags, zero
	-[0x800012e8]:fsd fa2, 176(a5)
Current Store : [0x800012ec] : sd a7, 184(a5) -- Store: [0x80005fb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa6c1b4fe3e3c0 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa6c1b4fe3e3c0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012fc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001300]:csrrs a7, fflags, zero
	-[0x80001304]:fsd fa2, 192(a5)
Current Store : [0x80001308] : sd a7, 200(a5) -- Store: [0x80005fc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x122215f9ac41a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x122215f9ac41a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001318]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000131c]:csrrs a7, fflags, zero
	-[0x80001320]:fsd fa2, 208(a5)
Current Store : [0x80001324] : sd a7, 216(a5) -- Store: [0x80005fd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcfc27db04baa5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcfc27db04baa5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001334]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001338]:csrrs a7, fflags, zero
	-[0x8000133c]:fsd fa2, 224(a5)
Current Store : [0x80001340] : sd a7, 232(a5) -- Store: [0x80005fe8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfb271584e30d0 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfb271584e30d0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001350]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001354]:csrrs a7, fflags, zero
	-[0x80001358]:fsd fa2, 240(a5)
Current Store : [0x8000135c] : sd a7, 248(a5) -- Store: [0x80005ff8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c37606126e28 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9c37606126e28 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000136c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001370]:csrrs a7, fflags, zero
	-[0x80001374]:fsd fa2, 256(a5)
Current Store : [0x80001378] : sd a7, 264(a5) -- Store: [0x80006008]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x25d29d05cd288 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x25d29d05cd288 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001388]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000138c]:csrrs a7, fflags, zero
	-[0x80001390]:fsd fa2, 272(a5)
Current Store : [0x80001394] : sd a7, 280(a5) -- Store: [0x80006018]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcd5bbb21e85e5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcd5bbb21e85e5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013a4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800013a8]:csrrs a7, fflags, zero
	-[0x800013ac]:fsd fa2, 288(a5)
Current Store : [0x800013b0] : sd a7, 296(a5) -- Store: [0x80006028]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xefec1cd7c3bcb and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xefec1cd7c3bcb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013c0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800013c4]:csrrs a7, fflags, zero
	-[0x800013c8]:fsd fa2, 304(a5)
Current Store : [0x800013cc] : sd a7, 312(a5) -- Store: [0x80006038]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x30c845de62d3f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x30c845de62d3f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013dc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800013e0]:csrrs a7, fflags, zero
	-[0x800013e4]:fsd fa2, 320(a5)
Current Store : [0x800013e8] : sd a7, 328(a5) -- Store: [0x80006048]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5287546e52d99 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x5287546e52d99 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013f8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800013fc]:csrrs a7, fflags, zero
	-[0x80001400]:fsd fa2, 336(a5)
Current Store : [0x80001404] : sd a7, 344(a5) -- Store: [0x80006058]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xf4dd0c2472fbf and fs2 == 1 and fe2 == 0x7f8 and fm2 == 0xf4dd0c2472fbf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001414]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001418]:csrrs a7, fflags, zero
	-[0x8000141c]:fsd fa2, 352(a5)
Current Store : [0x80001420] : sd a7, 360(a5) -- Store: [0x80006068]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xccfc542168107 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xccfc542168107 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001430]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001434]:csrrs a7, fflags, zero
	-[0x80001438]:fsd fa2, 368(a5)
Current Store : [0x8000143c] : sd a7, 376(a5) -- Store: [0x80006078]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbcdfd8ba97c91 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbcdfd8ba97c91 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000144c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001450]:csrrs a7, fflags, zero
	-[0x80001454]:fsd fa2, 384(a5)
Current Store : [0x80001458] : sd a7, 392(a5) -- Store: [0x80006088]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x0fce9799927f7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x0fce9799927f7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001468]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000146c]:csrrs a7, fflags, zero
	-[0x80001470]:fsd fa2, 400(a5)
Current Store : [0x80001474] : sd a7, 408(a5) -- Store: [0x80006098]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6faef3ad3537e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6faef3ad3537e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001484]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001488]:csrrs a7, fflags, zero
	-[0x8000148c]:fsd fa2, 416(a5)
Current Store : [0x80001490] : sd a7, 424(a5) -- Store: [0x800060a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xaf465058419e9 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xaf465058419e9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014a0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800014a4]:csrrs a7, fflags, zero
	-[0x800014a8]:fsd fa2, 432(a5)
Current Store : [0x800014ac] : sd a7, 440(a5) -- Store: [0x800060b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x070c0d4d218f9 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x070c0d4d218f9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014bc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800014c0]:csrrs a7, fflags, zero
	-[0x800014c4]:fsd fa2, 448(a5)
Current Store : [0x800014c8] : sd a7, 456(a5) -- Store: [0x800060c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x228e5619b5bff and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x228e5619b5bff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014d8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800014dc]:csrrs a7, fflags, zero
	-[0x800014e0]:fsd fa2, 464(a5)
Current Store : [0x800014e4] : sd a7, 472(a5) -- Store: [0x800060d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc4ac8145e5cc and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc4ac8145e5cc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014f4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800014f8]:csrrs a7, fflags, zero
	-[0x800014fc]:fsd fa2, 480(a5)
Current Store : [0x80001500] : sd a7, 488(a5) -- Store: [0x800060e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5c62b6da50e51 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x5c62b6da50e51 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001510]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001514]:csrrs a7, fflags, zero
	-[0x80001518]:fsd fa2, 496(a5)
Current Store : [0x8000151c] : sd a7, 504(a5) -- Store: [0x800060f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3833da7b9aa37 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3833da7b9aa37 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000152c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001530]:csrrs a7, fflags, zero
	-[0x80001534]:fsd fa2, 512(a5)
Current Store : [0x80001538] : sd a7, 520(a5) -- Store: [0x80006108]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57132c37fb117 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x57132c37fb117 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001548]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000154c]:csrrs a7, fflags, zero
	-[0x80001550]:fsd fa2, 528(a5)
Current Store : [0x80001554] : sd a7, 536(a5) -- Store: [0x80006118]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfe6749ffc4763 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfe6749ffc4763 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001564]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001568]:csrrs a7, fflags, zero
	-[0x8000156c]:fsd fa2, 544(a5)
Current Store : [0x80001570] : sd a7, 552(a5) -- Store: [0x80006128]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd5872438d16b0 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd5872438d16b0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001580]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001584]:csrrs a7, fflags, zero
	-[0x80001588]:fsd fa2, 560(a5)
Current Store : [0x8000158c] : sd a7, 568(a5) -- Store: [0x80006138]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc15c34215bcf5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc15c34215bcf5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000159c]:fadd.d fa2, fa0, fa1, dyn
	-[0x800015a0]:csrrs a7, fflags, zero
	-[0x800015a4]:fsd fa2, 576(a5)
Current Store : [0x800015a8] : sd a7, 584(a5) -- Store: [0x80006148]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9fa60dd1b5e57 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x9fa60dd1b5e57 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800015b8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800015bc]:csrrs a7, fflags, zero
	-[0x800015c0]:fsd fa2, 592(a5)
Current Store : [0x800015c4] : sd a7, 600(a5) -- Store: [0x80006158]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf74a5c9f39c6c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xf74a5c9f39c6c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800015d4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800015d8]:csrrs a7, fflags, zero
	-[0x800015dc]:fsd fa2, 608(a5)
Current Store : [0x800015e0] : sd a7, 616(a5) -- Store: [0x80006168]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x35eecb1ad0a6b and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x35eecb1ad0a6b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800015f0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800015f4]:csrrs a7, fflags, zero
	-[0x800015f8]:fsd fa2, 624(a5)
Current Store : [0x800015fc] : sd a7, 632(a5) -- Store: [0x80006178]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x831acfae4a49b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x831acfae4a49b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000160c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:fsd fa2, 640(a5)
Current Store : [0x80001618] : sd a7, 648(a5) -- Store: [0x80006188]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2bbbe71ac902b and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x2bbbe71ac902b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001628]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000162c]:csrrs a7, fflags, zero
	-[0x80001630]:fsd fa2, 656(a5)
Current Store : [0x80001634] : sd a7, 664(a5) -- Store: [0x80006198]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe55b30b309254 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe55b30b309254 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001644]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001648]:csrrs a7, fflags, zero
	-[0x8000164c]:fsd fa2, 672(a5)
Current Store : [0x80001650] : sd a7, 680(a5) -- Store: [0x800061a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa8693ca418657 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa8693ca418657 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001660]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001664]:csrrs a7, fflags, zero
	-[0x80001668]:fsd fa2, 688(a5)
Current Store : [0x8000166c] : sd a7, 696(a5) -- Store: [0x800061b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xe70e78fe823f7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xe70e78fe823f7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000167c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001680]:csrrs a7, fflags, zero
	-[0x80001684]:fsd fa2, 704(a5)
Current Store : [0x80001688] : sd a7, 712(a5) -- Store: [0x800061c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xce7352604fe6b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xce7352604fe6b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001698]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000169c]:csrrs a7, fflags, zero
	-[0x800016a0]:fsd fa2, 720(a5)
Current Store : [0x800016a4] : sd a7, 728(a5) -- Store: [0x800061d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x676d1681c4823 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x676d1681c4823 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800016b4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800016b8]:csrrs a7, fflags, zero
	-[0x800016bc]:fsd fa2, 736(a5)
Current Store : [0x800016c0] : sd a7, 744(a5) -- Store: [0x800061e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x058fe9a4daa6f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x058fe9a4daa6f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800016d0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800016d4]:csrrs a7, fflags, zero
	-[0x800016d8]:fsd fa2, 752(a5)
Current Store : [0x800016dc] : sd a7, 760(a5) -- Store: [0x800061f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb992011891a75 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xb992011891a75 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800016ec]:fadd.d fa2, fa0, fa1, dyn
	-[0x800016f0]:csrrs a7, fflags, zero
	-[0x800016f4]:fsd fa2, 768(a5)
Current Store : [0x800016f8] : sd a7, 776(a5) -- Store: [0x80006208]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0b2db44ae8c01 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0b2db44ae8c01 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001708]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000170c]:csrrs a7, fflags, zero
	-[0x80001710]:fsd fa2, 784(a5)
Current Store : [0x80001714] : sd a7, 792(a5) -- Store: [0x80006218]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x792be19c2d7a1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x792be19c2d7a1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001724]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001728]:csrrs a7, fflags, zero
	-[0x8000172c]:fsd fa2, 800(a5)
Current Store : [0x80001730] : sd a7, 808(a5) -- Store: [0x80006228]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5bcd8bcde77b5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5bcd8bcde77b5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001740]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001744]:csrrs a7, fflags, zero
	-[0x80001748]:fsd fa2, 816(a5)
Current Store : [0x8000174c] : sd a7, 824(a5) -- Store: [0x80006238]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf4587ce4e6a55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xf4587ce4e6a55 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000175c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001760]:csrrs a7, fflags, zero
	-[0x80001764]:fsd fa2, 832(a5)
Current Store : [0x80001768] : sd a7, 840(a5) -- Store: [0x80006248]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x09badb528c6c8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x09badb528c6c8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001778]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000177c]:csrrs a7, fflags, zero
	-[0x80001780]:fsd fa2, 848(a5)
Current Store : [0x80001784] : sd a7, 856(a5) -- Store: [0x80006258]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x01430191b8abf and fs2 == 1 and fe2 == 0x7f8 and fm2 == 0x01430191b8abf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001794]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001798]:csrrs a7, fflags, zero
	-[0x8000179c]:fsd fa2, 864(a5)
Current Store : [0x800017a0] : sd a7, 872(a5) -- Store: [0x80006268]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7feee78e25d36 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x7feee78e25d36 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800017b0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800017b4]:csrrs a7, fflags, zero
	-[0x800017b8]:fsd fa2, 880(a5)
Current Store : [0x800017bc] : sd a7, 888(a5) -- Store: [0x80006278]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x0da8a99d945d7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x0da8a99d945d7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800017cc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800017d0]:csrrs a7, fflags, zero
	-[0x800017d4]:fsd fa2, 896(a5)
Current Store : [0x800017d8] : sd a7, 904(a5) -- Store: [0x80006288]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf2f998bf74bb4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xf2f998bf74bb4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800017e8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800017ec]:csrrs a7, fflags, zero
	-[0x800017f0]:fsd fa2, 912(a5)
Current Store : [0x800017f4] : sd a7, 920(a5) -- Store: [0x80006298]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40e45564208fa and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x40e45564208fa and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001804]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001808]:csrrs a7, fflags, zero
	-[0x8000180c]:fsd fa2, 928(a5)
Current Store : [0x80001810] : sd a7, 936(a5) -- Store: [0x800062a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc9eec489f6667 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc9eec489f6667 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001820]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001824]:csrrs a7, fflags, zero
	-[0x80001828]:fsd fa2, 944(a5)
Current Store : [0x8000182c] : sd a7, 952(a5) -- Store: [0x800062b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3526172ae3f6b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3526172ae3f6b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000183c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001840]:csrrs a7, fflags, zero
	-[0x80001844]:fsd fa2, 960(a5)
Current Store : [0x80001848] : sd a7, 968(a5) -- Store: [0x800062c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x66315a9fdae1d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x66315a9fdae1d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001858]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000185c]:csrrs a7, fflags, zero
	-[0x80001860]:fsd fa2, 976(a5)
Current Store : [0x80001864] : sd a7, 984(a5) -- Store: [0x800062d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5fe6340fe9dff and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x5fe6340fe9dff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001874]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001878]:csrrs a7, fflags, zero
	-[0x8000187c]:fsd fa2, 992(a5)
Current Store : [0x80001880] : sd a7, 1000(a5) -- Store: [0x800062e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xae83ac33105f8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xae83ac33105f8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001890]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001894]:csrrs a7, fflags, zero
	-[0x80001898]:fsd fa2, 1008(a5)
Current Store : [0x8000189c] : sd a7, 1016(a5) -- Store: [0x800062f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd13b901ecb86d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd13b901ecb86d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800018ac]:fadd.d fa2, fa0, fa1, dyn
	-[0x800018b0]:csrrs a7, fflags, zero
	-[0x800018b4]:fsd fa2, 1024(a5)
Current Store : [0x800018b8] : sd a7, 1032(a5) -- Store: [0x80006308]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa8acc80de84a1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa8acc80de84a1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800018c8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800018cc]:csrrs a7, fflags, zero
	-[0x800018d0]:fsd fa2, 1040(a5)
Current Store : [0x800018d4] : sd a7, 1048(a5) -- Store: [0x80006318]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9cd85f6af39ef and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x9cd85f6af39ef and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800018e4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800018e8]:csrrs a7, fflags, zero
	-[0x800018ec]:fsd fa2, 1056(a5)
Current Store : [0x800018f0] : sd a7, 1064(a5) -- Store: [0x80006328]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bcd3d6ea260a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0bcd3d6ea260a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001900]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001904]:csrrs a7, fflags, zero
	-[0x80001908]:fsd fa2, 1072(a5)
Current Store : [0x8000190c] : sd a7, 1080(a5) -- Store: [0x80006338]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x8b50ed3b44d4f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x8b50ed3b44d4f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000191c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001920]:csrrs a7, fflags, zero
	-[0x80001924]:fsd fa2, 1088(a5)
Current Store : [0x80001928] : sd a7, 1096(a5) -- Store: [0x80006348]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe989c8dd81bc5 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe989c8dd81bc5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001938]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000193c]:csrrs a7, fflags, zero
	-[0x80001940]:fsd fa2, 1104(a5)
Current Store : [0x80001944] : sd a7, 1112(a5) -- Store: [0x80006358]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18d2ef084c097 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18d2ef084c097 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001954]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001958]:csrrs a7, fflags, zero
	-[0x8000195c]:fsd fa2, 1120(a5)
Current Store : [0x80001960] : sd a7, 1128(a5) -- Store: [0x80006368]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x287ac6ae322ff and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x287ac6ae322ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001970]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:fsd fa2, 1136(a5)
Current Store : [0x8000197c] : sd a7, 1144(a5) -- Store: [0x80006378]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x4f961e264020f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x4f961e264020f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000198c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001990]:csrrs a7, fflags, zero
	-[0x80001994]:fsd fa2, 1152(a5)
Current Store : [0x80001998] : sd a7, 1160(a5) -- Store: [0x80006388]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3db72bc24857c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3db72bc24857c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800019a8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800019ac]:csrrs a7, fflags, zero
	-[0x800019b0]:fsd fa2, 1168(a5)
Current Store : [0x800019b4] : sd a7, 1176(a5) -- Store: [0x80006398]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6fdf2805ff4db and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6fdf2805ff4db and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800019c4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800019c8]:csrrs a7, fflags, zero
	-[0x800019cc]:fsd fa2, 1184(a5)
Current Store : [0x800019d0] : sd a7, 1192(a5) -- Store: [0x800063a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5569022b338ff and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x5569022b338ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800019e0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800019e4]:csrrs a7, fflags, zero
	-[0x800019e8]:fsd fa2, 1200(a5)
Current Store : [0x800019ec] : sd a7, 1208(a5) -- Store: [0x800063b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x238a22371e9ff and fs2 == 1 and fe2 == 0x7f8 and fm2 == 0x238a22371e9ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800019fc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a00]:csrrs a7, fflags, zero
	-[0x80001a04]:fsd fa2, 1216(a5)
Current Store : [0x80001a08] : sd a7, 1224(a5) -- Store: [0x800063c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa9aa2b6025f07 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa9aa2b6025f07 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a18]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a1c]:csrrs a7, fflags, zero
	-[0x80001a20]:fsd fa2, 1232(a5)
Current Store : [0x80001a24] : sd a7, 1240(a5) -- Store: [0x800063d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7d6356ef8a62f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x7d6356ef8a62f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a34]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a38]:csrrs a7, fflags, zero
	-[0x80001a3c]:fsd fa2, 1248(a5)
Current Store : [0x80001a40] : sd a7, 1256(a5) -- Store: [0x800063e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xce30065d5ac1b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xce30065d5ac1b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a50]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a54]:csrrs a7, fflags, zero
	-[0x80001a58]:fsd fa2, 1264(a5)
Current Store : [0x80001a5c] : sd a7, 1272(a5) -- Store: [0x800063f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4f8b971fa5a72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x4f8b971fa5a72 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a6c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a70]:csrrs a7, fflags, zero
	-[0x80001a74]:fsd fa2, 1280(a5)
Current Store : [0x80001a78] : sd a7, 1288(a5) -- Store: [0x80006408]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7f8e997d84592 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x7f8e997d84592 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a88]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001a8c]:csrrs a7, fflags, zero
	-[0x80001a90]:fsd fa2, 1296(a5)
Current Store : [0x80001a94] : sd a7, 1304(a5) -- Store: [0x80006418]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1d803765d304 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1d803765d304 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001aa4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001aa8]:csrrs a7, fflags, zero
	-[0x80001aac]:fsd fa2, 1312(a5)
Current Store : [0x80001ab0] : sd a7, 1320(a5) -- Store: [0x80006428]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe49bfb977b300 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe49bfb977b300 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001ac0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001ac4]:csrrs a7, fflags, zero
	-[0x80001ac8]:fsd fa2, 1328(a5)
Current Store : [0x80001acc] : sd a7, 1336(a5) -- Store: [0x80006438]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5cab9bd09e6c4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5cab9bd09e6c4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001adc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001ae0]:csrrs a7, fflags, zero
	-[0x80001ae4]:fsd fa2, 1344(a5)
Current Store : [0x80001ae8] : sd a7, 1352(a5) -- Store: [0x80006448]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x30526056a01ff and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0x30526056a01ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001af8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001afc]:csrrs a7, fflags, zero
	-[0x80001b00]:fsd fa2, 1360(a5)
Current Store : [0x80001b04] : sd a7, 1368(a5) -- Store: [0x80006458]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbe64efc9e258d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbe64efc9e258d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b14]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001b18]:csrrs a7, fflags, zero
	-[0x80001b1c]:fsd fa2, 1376(a5)
Current Store : [0x80001b20] : sd a7, 1384(a5) -- Store: [0x80006468]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4d3375e946b52 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x4d3375e946b52 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b30]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001b34]:csrrs a7, fflags, zero
	-[0x80001b38]:fsd fa2, 1392(a5)
Current Store : [0x80001b3c] : sd a7, 1400(a5) -- Store: [0x80006478]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x113ecba7502a7 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x113ecba7502a7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b4c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001b50]:csrrs a7, fflags, zero
	-[0x80001b54]:fsd fa2, 1408(a5)
Current Store : [0x80001b58] : sd a7, 1416(a5) -- Store: [0x80006488]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x95adca0768ede and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x95adca0768ede and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b68]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001b6c]:csrrs a7, fflags, zero
	-[0x80001b70]:fsd fa2, 1424(a5)
Current Store : [0x80001b74] : sd a7, 1432(a5) -- Store: [0x80006498]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x194e95f4fa0e5 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x194e95f4fa0e5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b84]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001b88]:csrrs a7, fflags, zero
	-[0x80001b8c]:fsd fa2, 1440(a5)
Current Store : [0x80001b90] : sd a7, 1448(a5) -- Store: [0x800064a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x963785d0567a5 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x963785d0567a5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001ba0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001ba4]:csrrs a7, fflags, zero
	-[0x80001ba8]:fsd fa2, 1456(a5)
Current Store : [0x80001bac] : sd a7, 1464(a5) -- Store: [0x800064b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9a5710f3828f7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x9a5710f3828f7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001bbc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001bc0]:csrrs a7, fflags, zero
	-[0x80001bc4]:fsd fa2, 1472(a5)
Current Store : [0x80001bc8] : sd a7, 1480(a5) -- Store: [0x800064c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1eb3cbd822141 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x1eb3cbd822141 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001bd8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001bdc]:csrrs a7, fflags, zero
	-[0x80001be0]:fsd fa2, 1488(a5)
Current Store : [0x80001be4] : sd a7, 1496(a5) -- Store: [0x800064d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4c6c848cb47df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x4c6c848cb47df and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001bf4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001bf8]:csrrs a7, fflags, zero
	-[0x80001bfc]:fsd fa2, 1504(a5)
Current Store : [0x80001c00] : sd a7, 1512(a5) -- Store: [0x800064e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9086506183f67 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x9086506183f67 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c10]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001c14]:csrrs a7, fflags, zero
	-[0x80001c18]:fsd fa2, 1520(a5)
Current Store : [0x80001c1c] : sd a7, 1528(a5) -- Store: [0x800064f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa53d0d2b3faec and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa53d0d2b3faec and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c2c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001c30]:csrrs a7, fflags, zero
	-[0x80001c34]:fsd fa2, 1536(a5)
Current Store : [0x80001c38] : sd a7, 1544(a5) -- Store: [0x80006508]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6f451c304de2e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6f451c304de2e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c48]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001c4c]:csrrs a7, fflags, zero
	-[0x80001c50]:fsd fa2, 1552(a5)
Current Store : [0x80001c54] : sd a7, 1560(a5) -- Store: [0x80006518]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x43c3f0806f2cd and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x43c3f0806f2cd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c64]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001c68]:csrrs a7, fflags, zero
	-[0x80001c6c]:fsd fa2, 1568(a5)
Current Store : [0x80001c70] : sd a7, 1576(a5) -- Store: [0x80006528]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9b75de798ac5f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x9b75de798ac5f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c80]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001c84]:csrrs a7, fflags, zero
	-[0x80001c88]:fsd fa2, 1584(a5)
Current Store : [0x80001c8c] : sd a7, 1592(a5) -- Store: [0x80006538]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x737bdc485a77d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x737bdc485a77d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c9c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001ca0]:csrrs a7, fflags, zero
	-[0x80001ca4]:fsd fa2, 1600(a5)
Current Store : [0x80001ca8] : sd a7, 1608(a5) -- Store: [0x80006548]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x442435bea0eb5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x442435bea0eb5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001cb8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001cbc]:csrrs a7, fflags, zero
	-[0x80001cc0]:fsd fa2, 1616(a5)
Current Store : [0x80001cc4] : sd a7, 1624(a5) -- Store: [0x80006558]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8106d28c6e8ff and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x8106d28c6e8ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001cd4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001cd8]:csrrs a7, fflags, zero
	-[0x80001cdc]:fsd fa2, 1632(a5)
Current Store : [0x80001ce0] : sd a7, 1640(a5) -- Store: [0x80006568]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc00223fe58e9e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc00223fe58e9e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001cf0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001cf4]:csrrs a7, fflags, zero
	-[0x80001cf8]:fsd fa2, 1648(a5)
Current Store : [0x80001cfc] : sd a7, 1656(a5) -- Store: [0x80006578]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xde18ff8661b6b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xde18ff8661b6b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d0c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001d10]:csrrs a7, fflags, zero
	-[0x80001d14]:fsd fa2, 1664(a5)
Current Store : [0x80001d18] : sd a7, 1672(a5) -- Store: [0x80006588]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfa73e129b8879 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfa73e129b8879 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d28]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001d2c]:csrrs a7, fflags, zero
	-[0x80001d30]:fsd fa2, 1680(a5)
Current Store : [0x80001d34] : sd a7, 1688(a5) -- Store: [0x80006598]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x82cee64001220 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x82cee64001220 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d44]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001d48]:csrrs a7, fflags, zero
	-[0x80001d4c]:fsd fa2, 1696(a5)
Current Store : [0x80001d50] : sd a7, 1704(a5) -- Store: [0x800065a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf2f5c0f43aa65 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xf2f5c0f43aa65 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d60]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001d64]:csrrs a7, fflags, zero
	-[0x80001d68]:fsd fa2, 1712(a5)
Current Store : [0x80001d6c] : sd a7, 1720(a5) -- Store: [0x800065b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x42f12d7244f4f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x42f12d7244f4f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d7c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001d80]:csrrs a7, fflags, zero
	-[0x80001d84]:fsd fa2, 1728(a5)
Current Store : [0x80001d88] : sd a7, 1736(a5) -- Store: [0x800065c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc80a67882d6d1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xc80a67882d6d1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d98]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001d9c]:csrrs a7, fflags, zero
	-[0x80001da0]:fsd fa2, 1744(a5)
Current Store : [0x80001da4] : sd a7, 1752(a5) -- Store: [0x800065d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x530b56ed605ac and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x530b56ed605ac and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001db4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001db8]:csrrs a7, fflags, zero
	-[0x80001dbc]:fsd fa2, 1760(a5)
Current Store : [0x80001dc0] : sd a7, 1768(a5) -- Store: [0x800065e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6756366451777 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6756366451777 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001dd0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001dd4]:csrrs a7, fflags, zero
	-[0x80001dd8]:fsd fa2, 1776(a5)
Current Store : [0x80001ddc] : sd a7, 1784(a5) -- Store: [0x800065f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa85a268409ae9 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa85a268409ae9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001dec]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001df0]:csrrs a7, fflags, zero
	-[0x80001df4]:fsd fa2, 1792(a5)
Current Store : [0x80001df8] : sd a7, 1800(a5) -- Store: [0x80006608]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc0377eab1f21f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc0377eab1f21f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e08]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001e0c]:csrrs a7, fflags, zero
	-[0x80001e10]:fsd fa2, 1808(a5)
Current Store : [0x80001e14] : sd a7, 1816(a5) -- Store: [0x80006618]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x465936dcae3fb and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x465936dcae3fb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e24]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001e28]:csrrs a7, fflags, zero
	-[0x80001e2c]:fsd fa2, 1824(a5)
Current Store : [0x80001e30] : sd a7, 1832(a5) -- Store: [0x80006628]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x566d65947d7e7 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x566d65947d7e7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e40]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001e44]:csrrs a7, fflags, zero
	-[0x80001e48]:fsd fa2, 1840(a5)
Current Store : [0x80001e4c] : sd a7, 1848(a5) -- Store: [0x80006638]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x8f90cc1b18bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x8f90cc1b18bff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e5c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001e60]:csrrs a7, fflags, zero
	-[0x80001e64]:fsd fa2, 1856(a5)
Current Store : [0x80001e68] : sd a7, 1864(a5) -- Store: [0x80006648]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa85d306a197c5 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa85d306a197c5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e78]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001e7c]:csrrs a7, fflags, zero
	-[0x80001e80]:fsd fa2, 1872(a5)
Current Store : [0x80001e84] : sd a7, 1880(a5) -- Store: [0x80006658]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6e65a8d3dbea5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6e65a8d3dbea5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e94]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001e98]:csrrs a7, fflags, zero
	-[0x80001e9c]:fsd fa2, 1888(a5)
Current Store : [0x80001ea0] : sd a7, 1896(a5) -- Store: [0x80006668]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x447a9936a43d3 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x447a9936a43d3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001eb0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001eb4]:csrrs a7, fflags, zero
	-[0x80001eb8]:fsd fa2, 1904(a5)
Current Store : [0x80001ebc] : sd a7, 1912(a5) -- Store: [0x80006678]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6fd2704b8e37f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x6fd2704b8e37f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001ecc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001ed0]:csrrs a7, fflags, zero
	-[0x80001ed4]:fsd fa2, 1920(a5)
Current Store : [0x80001ed8] : sd a7, 1928(a5) -- Store: [0x80006688]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x68add14e18ecb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x68add14e18ecb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001ee8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001eec]:csrrs a7, fflags, zero
	-[0x80001ef0]:fsd fa2, 1936(a5)
Current Store : [0x80001ef4] : sd a7, 1944(a5) -- Store: [0x80006698]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xebc97dc31d5a7 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xebc97dc31d5a7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f04]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001f08]:csrrs a7, fflags, zero
	-[0x80001f0c]:fsd fa2, 1952(a5)
Current Store : [0x80001f10] : sd a7, 1960(a5) -- Store: [0x800066a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x76587e2d6216f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x76587e2d6216f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f20]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001f24]:csrrs a7, fflags, zero
	-[0x80001f28]:fsd fa2, 1968(a5)
Current Store : [0x80001f2c] : sd a7, 1976(a5) -- Store: [0x800066b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7bafa3050f8b7 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x7bafa3050f8b7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f3c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001f40]:csrrs a7, fflags, zero
	-[0x80001f44]:fsd fa2, 1984(a5)
Current Store : [0x80001f48] : sd a7, 1992(a5) -- Store: [0x800066c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1f06fdec36709 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x1f06fdec36709 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f58]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001f5c]:csrrs a7, fflags, zero
	-[0x80001f60]:fsd fa2, 2000(a5)
Current Store : [0x80001f64] : sd a7, 2008(a5) -- Store: [0x800066d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xace1ecea16623 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xace1ecea16623 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f74]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001f78]:csrrs a7, fflags, zero
	-[0x80001f7c]:fsd fa2, 2016(a5)
Current Store : [0x80001f80] : sd a7, 2024(a5) -- Store: [0x800066e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3eebb35310409 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3eebb35310409 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f9c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001fa0]:csrrs a7, fflags, zero
	-[0x80001fa4]:fsd fa2, 0(a5)
Current Store : [0x80001fa8] : sd a7, 8(a5) -- Store: [0x800066f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2362beb7fcccc and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2362beb7fcccc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001fb8]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001fbc]:csrrs a7, fflags, zero
	-[0x80001fc0]:fsd fa2, 16(a5)
Current Store : [0x80001fc4] : sd a7, 24(a5) -- Store: [0x80006708]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe2f1c5d734347 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe2f1c5d734347 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001fd4]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001fd8]:csrrs a7, fflags, zero
	-[0x80001fdc]:fsd fa2, 32(a5)
Current Store : [0x80001fe0] : sd a7, 40(a5) -- Store: [0x80006718]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc4edf85532923 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xc4edf85532923 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001ff0]:fadd.d fa2, fa0, fa1, dyn
	-[0x80001ff4]:csrrs a7, fflags, zero
	-[0x80001ff8]:fsd fa2, 48(a5)
Current Store : [0x80001ffc] : sd a7, 56(a5) -- Store: [0x80006728]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x00b42e8f00d47 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x00b42e8f00d47 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000200c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002010]:csrrs a7, fflags, zero
	-[0x80002014]:fsd fa2, 64(a5)
Current Store : [0x80002018] : sd a7, 72(a5) -- Store: [0x80006738]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0db7e0a5d748 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0db7e0a5d748 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002028]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000202c]:csrrs a7, fflags, zero
	-[0x80002030]:fsd fa2, 80(a5)
Current Store : [0x80002034] : sd a7, 88(a5) -- Store: [0x80006748]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0xdb8da7279369f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0xdb8da7279369f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002044]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002048]:csrrs a7, fflags, zero
	-[0x8000204c]:fsd fa2, 96(a5)
Current Store : [0x80002050] : sd a7, 104(a5) -- Store: [0x80006758]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5864580d04bef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5864580d04bef and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002060]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002064]:csrrs a7, fflags, zero
	-[0x80002068]:fsd fa2, 112(a5)
Current Store : [0x8000206c] : sd a7, 120(a5) -- Store: [0x80006768]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd64347e477166 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd64347e477166 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000207c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002080]:csrrs a7, fflags, zero
	-[0x80002084]:fsd fa2, 128(a5)
Current Store : [0x80002088] : sd a7, 136(a5) -- Store: [0x80006778]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x76940d9e18057 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x76940d9e18057 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002098]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000209c]:csrrs a7, fflags, zero
	-[0x800020a0]:fsd fa2, 144(a5)
Current Store : [0x800020a4] : sd a7, 152(a5) -- Store: [0x80006788]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9847d9429817b and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x9847d9429817b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800020b4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800020b8]:csrrs a7, fflags, zero
	-[0x800020bc]:fsd fa2, 160(a5)
Current Store : [0x800020c0] : sd a7, 168(a5) -- Store: [0x80006798]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9d5f97660dadf and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x9d5f97660dadf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800020d0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800020d4]:csrrs a7, fflags, zero
	-[0x800020d8]:fsd fa2, 176(a5)
Current Store : [0x800020dc] : sd a7, 184(a5) -- Store: [0x800067a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x01dca4dde57a5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x01dca4dde57a5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800020ec]:fadd.d fa2, fa0, fa1, dyn
	-[0x800020f0]:csrrs a7, fflags, zero
	-[0x800020f4]:fsd fa2, 192(a5)
Current Store : [0x800020f8] : sd a7, 200(a5) -- Store: [0x800067b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x66b37637d118d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x66b37637d118d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002108]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000210c]:csrrs a7, fflags, zero
	-[0x80002110]:fsd fa2, 208(a5)
Current Store : [0x80002114] : sd a7, 216(a5) -- Store: [0x800067c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc44223126cbc7 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xc44223126cbc7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002124]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002128]:csrrs a7, fflags, zero
	-[0x8000212c]:fsd fa2, 224(a5)
Current Store : [0x80002130] : sd a7, 232(a5) -- Store: [0x800067d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9fbeb1abfb6e7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x9fbeb1abfb6e7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002140]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002144]:csrrs a7, fflags, zero
	-[0x80002148]:fsd fa2, 240(a5)
Current Store : [0x8000214c] : sd a7, 248(a5) -- Store: [0x800067e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x75450c5a9817f and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0x75450c5a9817f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000215c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002160]:csrrs a7, fflags, zero
	-[0x80002164]:fsd fa2, 256(a5)
Current Store : [0x80002168] : sd a7, 264(a5) -- Store: [0x800067f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x99fb7503e8d08 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x99fb7503e8d08 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002178]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000217c]:csrrs a7, fflags, zero
	-[0x80002180]:fsd fa2, 272(a5)
Current Store : [0x80002184] : sd a7, 280(a5) -- Store: [0x80006808]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xfb797ef55e1cf and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xfb797ef55e1cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002194]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002198]:csrrs a7, fflags, zero
	-[0x8000219c]:fsd fa2, 288(a5)
Current Store : [0x800021a0] : sd a7, 296(a5) -- Store: [0x80006818]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xec0c4abe1fd0e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xec0c4abe1fd0e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800021b0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800021b4]:csrrs a7, fflags, zero
	-[0x800021b8]:fsd fa2, 304(a5)
Current Store : [0x800021bc] : sd a7, 312(a5) -- Store: [0x80006828]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x2a1fa26c0948f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x2a1fa26c0948f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800021cc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800021d0]:csrrs a7, fflags, zero
	-[0x800021d4]:fsd fa2, 320(a5)
Current Store : [0x800021d8] : sd a7, 328(a5) -- Store: [0x80006838]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7b05f6eabb69f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x7b05f6eabb69f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800021e8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800021ec]:csrrs a7, fflags, zero
	-[0x800021f0]:fsd fa2, 336(a5)
Current Store : [0x800021f4] : sd a7, 344(a5) -- Store: [0x80006848]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26e34e07a9172 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26e34e07a9172 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002204]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002208]:csrrs a7, fflags, zero
	-[0x8000220c]:fsd fa2, 352(a5)
Current Store : [0x80002210] : sd a7, 360(a5) -- Store: [0x80006858]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x451eb54c10b8b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x451eb54c10b8b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002220]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002224]:csrrs a7, fflags, zero
	-[0x80002228]:fsd fa2, 368(a5)
Current Store : [0x8000222c] : sd a7, 376(a5) -- Store: [0x80006868]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5c762dc4bc5d6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5c762dc4bc5d6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000223c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002240]:csrrs a7, fflags, zero
	-[0x80002244]:fsd fa2, 384(a5)
Current Store : [0x80002248] : sd a7, 392(a5) -- Store: [0x80006878]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ed9e7beff05 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ed9e7beff05 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002258]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000225c]:csrrs a7, fflags, zero
	-[0x80002260]:fsd fa2, 400(a5)
Current Store : [0x80002264] : sd a7, 408(a5) -- Store: [0x80006888]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x728eb744bb2ef and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x728eb744bb2ef and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002274]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002278]:csrrs a7, fflags, zero
	-[0x8000227c]:fsd fa2, 416(a5)
Current Store : [0x80002280] : sd a7, 424(a5) -- Store: [0x80006898]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2bbdffdaf66c3 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x2bbdffdaf66c3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002290]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002294]:csrrs a7, fflags, zero
	-[0x80002298]:fsd fa2, 432(a5)
Current Store : [0x8000229c] : sd a7, 440(a5) -- Store: [0x800068a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa1bf5c83faf60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa1bf5c83faf60 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800022ac]:fadd.d fa2, fa0, fa1, dyn
	-[0x800022b0]:csrrs a7, fflags, zero
	-[0x800022b4]:fsd fa2, 448(a5)
Current Store : [0x800022b8] : sd a7, 456(a5) -- Store: [0x800068b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x96d3944ae92c5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x96d3944ae92c5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800022c8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800022cc]:csrrs a7, fflags, zero
	-[0x800022d0]:fsd fa2, 464(a5)
Current Store : [0x800022d4] : sd a7, 472(a5) -- Store: [0x800068c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xdfc83569216bf and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xdfc83569216bf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800022e4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800022e8]:csrrs a7, fflags, zero
	-[0x800022ec]:fsd fa2, 480(a5)
Current Store : [0x800022f0] : sd a7, 488(a5) -- Store: [0x800068d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf1bca90426463 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xf1bca90426463 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002300]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002304]:csrrs a7, fflags, zero
	-[0x80002308]:fsd fa2, 496(a5)
Current Store : [0x8000230c] : sd a7, 504(a5) -- Store: [0x800068e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x42a2ac1575123 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x42a2ac1575123 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000231c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002320]:csrrs a7, fflags, zero
	-[0x80002324]:fsd fa2, 512(a5)
Current Store : [0x80002328] : sd a7, 520(a5) -- Store: [0x800068f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39beb50761e3d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39beb50761e3d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002338]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000233c]:csrrs a7, fflags, zero
	-[0x80002340]:fsd fa2, 528(a5)
Current Store : [0x80002344] : sd a7, 536(a5) -- Store: [0x80006908]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x962eb496df1c1 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x962eb496df1c1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002354]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002358]:csrrs a7, fflags, zero
	-[0x8000235c]:fsd fa2, 544(a5)
Current Store : [0x80002360] : sd a7, 552(a5) -- Store: [0x80006918]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfe1581ecd07ea and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfe1581ecd07ea and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002370]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002374]:csrrs a7, fflags, zero
	-[0x80002378]:fsd fa2, 560(a5)
Current Store : [0x8000237c] : sd a7, 568(a5) -- Store: [0x80006928]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xcd606a3f0f54d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xcd606a3f0f54d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000238c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002390]:csrrs a7, fflags, zero
	-[0x80002394]:fsd fa2, 576(a5)
Current Store : [0x80002398] : sd a7, 584(a5) -- Store: [0x80006938]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe64794dad7d48 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe64794dad7d48 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800023a8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800023ac]:csrrs a7, fflags, zero
	-[0x800023b0]:fsd fa2, 592(a5)
Current Store : [0x800023b4] : sd a7, 600(a5) -- Store: [0x80006948]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xca428c2b7c81f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xca428c2b7c81f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800023c4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800023c8]:csrrs a7, fflags, zero
	-[0x800023cc]:fsd fa2, 608(a5)
Current Store : [0x800023d0] : sd a7, 616(a5) -- Store: [0x80006958]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9f8dcc4f1275c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9f8dcc4f1275c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800023e0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800023e4]:csrrs a7, fflags, zero
	-[0x800023e8]:fsd fa2, 624(a5)
Current Store : [0x800023ec] : sd a7, 632(a5) -- Store: [0x80006968]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x691ae7e1929e8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x691ae7e1929e8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800023fc]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002400]:csrrs a7, fflags, zero
	-[0x80002404]:fsd fa2, 640(a5)
Current Store : [0x80002408] : sd a7, 648(a5) -- Store: [0x80006978]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002418]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000241c]:csrrs a7, fflags, zero
	-[0x80002420]:fsd fa2, 656(a5)
Current Store : [0x80002424] : sd a7, 664(a5) -- Store: [0x80006988]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002434]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002438]:csrrs a7, fflags, zero
	-[0x8000243c]:fsd fa2, 672(a5)
Current Store : [0x80002440] : sd a7, 680(a5) -- Store: [0x80006998]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002450]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002454]:csrrs a7, fflags, zero
	-[0x80002458]:fsd fa2, 688(a5)
Current Store : [0x8000245c] : sd a7, 696(a5) -- Store: [0x800069a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000246c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002470]:csrrs a7, fflags, zero
	-[0x80002474]:fsd fa2, 704(a5)
Current Store : [0x80002478] : sd a7, 712(a5) -- Store: [0x800069b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002488]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000248c]:csrrs a7, fflags, zero
	-[0x80002490]:fsd fa2, 720(a5)
Current Store : [0x80002494] : sd a7, 728(a5) -- Store: [0x800069c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800024a4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800024a8]:csrrs a7, fflags, zero
	-[0x800024ac]:fsd fa2, 736(a5)
Current Store : [0x800024b0] : sd a7, 744(a5) -- Store: [0x800069d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800024c0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800024c4]:csrrs a7, fflags, zero
	-[0x800024c8]:fsd fa2, 752(a5)
Current Store : [0x800024cc] : sd a7, 760(a5) -- Store: [0x800069e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800024dc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800024e0]:csrrs a7, fflags, zero
	-[0x800024e4]:fsd fa2, 768(a5)
Current Store : [0x800024e8] : sd a7, 776(a5) -- Store: [0x800069f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800024f8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800024fc]:csrrs a7, fflags, zero
	-[0x80002500]:fsd fa2, 784(a5)
Current Store : [0x80002504] : sd a7, 792(a5) -- Store: [0x80006a08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002514]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002518]:csrrs a7, fflags, zero
	-[0x8000251c]:fsd fa2, 800(a5)
Current Store : [0x80002520] : sd a7, 808(a5) -- Store: [0x80006a18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002530]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002534]:csrrs a7, fflags, zero
	-[0x80002538]:fsd fa2, 816(a5)
Current Store : [0x8000253c] : sd a7, 824(a5) -- Store: [0x80006a28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000254c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002550]:csrrs a7, fflags, zero
	-[0x80002554]:fsd fa2, 832(a5)
Current Store : [0x80002558] : sd a7, 840(a5) -- Store: [0x80006a38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002568]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000256c]:csrrs a7, fflags, zero
	-[0x80002570]:fsd fa2, 848(a5)
Current Store : [0x80002574] : sd a7, 856(a5) -- Store: [0x80006a48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002584]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002588]:csrrs a7, fflags, zero
	-[0x8000258c]:fsd fa2, 864(a5)
Current Store : [0x80002590] : sd a7, 872(a5) -- Store: [0x80006a58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800025a0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800025a4]:csrrs a7, fflags, zero
	-[0x800025a8]:fsd fa2, 880(a5)
Current Store : [0x800025ac] : sd a7, 888(a5) -- Store: [0x80006a68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800025bc]:fadd.d fa2, fa0, fa1, dyn
	-[0x800025c0]:csrrs a7, fflags, zero
	-[0x800025c4]:fsd fa2, 896(a5)
Current Store : [0x800025c8] : sd a7, 904(a5) -- Store: [0x80006a78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800025d8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800025dc]:csrrs a7, fflags, zero
	-[0x800025e0]:fsd fa2, 912(a5)
Current Store : [0x800025e4] : sd a7, 920(a5) -- Store: [0x80006a88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800025f4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800025f8]:csrrs a7, fflags, zero
	-[0x800025fc]:fsd fa2, 928(a5)
Current Store : [0x80002600] : sd a7, 936(a5) -- Store: [0x80006a98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002610]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002614]:csrrs a7, fflags, zero
	-[0x80002618]:fsd fa2, 944(a5)
Current Store : [0x8000261c] : sd a7, 952(a5) -- Store: [0x80006aa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000262c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002630]:csrrs a7, fflags, zero
	-[0x80002634]:fsd fa2, 960(a5)
Current Store : [0x80002638] : sd a7, 968(a5) -- Store: [0x80006ab8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002648]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000264c]:csrrs a7, fflags, zero
	-[0x80002650]:fsd fa2, 976(a5)
Current Store : [0x80002654] : sd a7, 984(a5) -- Store: [0x80006ac8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002664]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002668]:csrrs a7, fflags, zero
	-[0x8000266c]:fsd fa2, 992(a5)
Current Store : [0x80002670] : sd a7, 1000(a5) -- Store: [0x80006ad8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002680]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002684]:csrrs a7, fflags, zero
	-[0x80002688]:fsd fa2, 1008(a5)
Current Store : [0x8000268c] : sd a7, 1016(a5) -- Store: [0x80006ae8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000269c]:fadd.d fa2, fa0, fa1, dyn
	-[0x800026a0]:csrrs a7, fflags, zero
	-[0x800026a4]:fsd fa2, 1024(a5)
Current Store : [0x800026a8] : sd a7, 1032(a5) -- Store: [0x80006af8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800026b8]:fadd.d fa2, fa0, fa1, dyn
	-[0x800026bc]:csrrs a7, fflags, zero
	-[0x800026c0]:fsd fa2, 1040(a5)
Current Store : [0x800026c4] : sd a7, 1048(a5) -- Store: [0x80006b08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800026d4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800026d8]:csrrs a7, fflags, zero
	-[0x800026dc]:fsd fa2, 1056(a5)
Current Store : [0x800026e0] : sd a7, 1064(a5) -- Store: [0x80006b18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800026f0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800026f4]:csrrs a7, fflags, zero
	-[0x800026f8]:fsd fa2, 1072(a5)
Current Store : [0x800026fc] : sd a7, 1080(a5) -- Store: [0x80006b28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000270c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002710]:csrrs a7, fflags, zero
	-[0x80002714]:fsd fa2, 1088(a5)
Current Store : [0x80002718] : sd a7, 1096(a5) -- Store: [0x80006b38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002728]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000272c]:csrrs a7, fflags, zero
	-[0x80002730]:fsd fa2, 1104(a5)
Current Store : [0x80002734] : sd a7, 1112(a5) -- Store: [0x80006b48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002744]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002748]:csrrs a7, fflags, zero
	-[0x8000274c]:fsd fa2, 1120(a5)
Current Store : [0x80002750] : sd a7, 1128(a5) -- Store: [0x80006b58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002760]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002764]:csrrs a7, fflags, zero
	-[0x80002768]:fsd fa2, 1136(a5)
Current Store : [0x8000276c] : sd a7, 1144(a5) -- Store: [0x80006b68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000277c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002780]:csrrs a7, fflags, zero
	-[0x80002784]:fsd fa2, 1152(a5)
Current Store : [0x80002788] : sd a7, 1160(a5) -- Store: [0x80006b78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002798]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000279c]:csrrs a7, fflags, zero
	-[0x800027a0]:fsd fa2, 1168(a5)
Current Store : [0x800027a4] : sd a7, 1176(a5) -- Store: [0x80006b88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800027b4]:fadd.d fa2, fa0, fa1, dyn
	-[0x800027b8]:csrrs a7, fflags, zero
	-[0x800027bc]:fsd fa2, 1184(a5)
Current Store : [0x800027c0] : sd a7, 1192(a5) -- Store: [0x80006b98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800027d0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800027d4]:csrrs a7, fflags, zero
	-[0x800027d8]:fsd fa2, 1200(a5)
Current Store : [0x800027dc] : sd a7, 1208(a5) -- Store: [0x80006ba8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800027ec]:fadd.d fa2, fa0, fa1, dyn
	-[0x800027f0]:csrrs a7, fflags, zero
	-[0x800027f4]:fsd fa2, 1216(a5)
Current Store : [0x800027f8] : sd a7, 1224(a5) -- Store: [0x80006bb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002808]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000280c]:csrrs a7, fflags, zero
	-[0x80002810]:fsd fa2, 1232(a5)
Current Store : [0x80002814] : sd a7, 1240(a5) -- Store: [0x80006bc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002824]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002828]:csrrs a7, fflags, zero
	-[0x8000282c]:fsd fa2, 1248(a5)
Current Store : [0x80002830] : sd a7, 1256(a5) -- Store: [0x80006bd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002840]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002844]:csrrs a7, fflags, zero
	-[0x80002848]:fsd fa2, 1264(a5)
Current Store : [0x8000284c] : sd a7, 1272(a5) -- Store: [0x80006be8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000285c]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002860]:csrrs a7, fflags, zero
	-[0x80002864]:fsd fa2, 1280(a5)
Current Store : [0x80002868] : sd a7, 1288(a5) -- Store: [0x80006bf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002878]:fadd.d fa2, fa0, fa1, dyn
	-[0x8000287c]:csrrs a7, fflags, zero
	-[0x80002880]:fsd fa2, 1296(a5)
Current Store : [0x80002884] : sd a7, 1304(a5) -- Store: [0x80006c08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002894]:fadd.d fa2, fa0, fa1, dyn
	-[0x80002898]:csrrs a7, fflags, zero
	-[0x8000289c]:fsd fa2, 1312(a5)
Current Store : [0x800028a0] : sd a7, 1320(a5) -- Store: [0x80006c18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xffd6ba914d0ca and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xffd6ba914d0ca and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800028b0]:fadd.d fa2, fa0, fa1, dyn
	-[0x800028b4]:csrrs a7, fflags, zero
	-[0x800028b8]:fsd fa2, 1328(a5)
Current Store : [0x800028bc] : sd a7, 1336(a5) -- Store: [0x80006c28]:0x0000000000000005





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
|   1|[0x80005710]<br>0x0000000A00000000|- opcode : fadd.d<br> - rs1 : f3<br> - rs2 : f3<br> - rd : f3<br> - rs1 == rs2 == rd<br>                                                                                                                                                 |[0x800003bc]:fadd.d ft3, ft3, ft3, dyn<br> [0x800003c0]:csrrs a7, fflags, zero<br> [0x800003c4]:fsd ft3, 0(a5)<br>     |
|   2|[0x80005720]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f13<br> - rs2 : f8<br> - rd : f8<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0xd04149240396f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xd04149240396f and rm_val == 3  #nosat<br>                          |[0x800003d8]:fadd.d fs0, fa3, fs0, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsd fs0, 16(a5)<br>    |
|   3|[0x80005730]<br>0xADFEEDBEADFEEDBE|- rs1 : f9<br> - rs2 : f24<br> - rd : f9<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x663d37d2b8c0a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x663d37d2b8c0a and rm_val == 3  #nosat<br>                          |[0x800003f4]:fadd.d fs1, fs1, fs8, dyn<br> [0x800003f8]:csrrs a7, fflags, zero<br> [0x800003fc]:fsd fs1, 32(a5)<br>    |
|   4|[0x80005740]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f20<br> - rs2 : f20<br> - rd : f31<br> - rs1 == rs2 != rd<br>                                                                                                                                                                    |[0x80000410]:fadd.d ft11, fs4, fs4, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:fsd ft11, 48(a5)<br>  |
|   5|[0x80005750]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f12<br> - rs2 : f11<br> - rd : f27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0x51543c76f092f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x51543c76f092f and rm_val == 3  #nosat<br> |[0x8000042c]:fadd.d fs11, fa2, fa1, dyn<br> [0x80000430]:csrrs a7, fflags, zero<br> [0x80000434]:fsd fs11, 64(a5)<br>  |
|   6|[0x80005760]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f0<br> - rs2 : f23<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5688295949924 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5688295949924 and rm_val == 3  #nosat<br>                                                |[0x80000448]:fadd.d ft8, ft0, fs7, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd ft8, 80(a5)<br>    |
|   7|[0x80005770]<br>0xEADFEEDBEADFEEDB|- rs1 : f6<br> - rs2 : f27<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5f6241fcc17b9 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5f6241fcc17b9 and rm_val == 3  #nosat<br>                                                |[0x80000464]:fadd.d fa3, ft6, fs11, dyn<br> [0x80000468]:csrrs a7, fflags, zero<br> [0x8000046c]:fsd fa3, 96(a5)<br>   |
|   8|[0x80005780]<br>0xEDBEADFEEDBEADFE|- rs1 : f29<br> - rs2 : f14<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x7fb and fm1 == 0x1035095fb0c7f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x1035095fb0c7f and rm_val == 3  #nosat<br>                                               |[0x80000480]:fadd.d fs9, ft9, fa4, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd fs9, 112(a5)<br>   |
|   9|[0x80005790]<br>0x0000000080004010|- rs1 : f27<br> - rs2 : f10<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x4b499d8a230bf and fs2 == 1 and fe2 == 0x7f8 and fm2 == 0x4b499d8a230bf and rm_val == 3  #nosat<br>                                               |[0x8000049c]:fadd.d fa6, fs11, fa0, dyn<br> [0x800004a0]:csrrs a7, fflags, zero<br> [0x800004a4]:fsd fa6, 128(a5)<br>  |
|  10|[0x800057a0]<br>0x0000000080004000|- rs1 : f19<br> - rs2 : f26<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe2d876b20b2cd and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe2d876b20b2cd and rm_val == 3  #nosat<br>                                                |[0x800004b8]:fadd.d ft6, fs3, fs10, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:fsd ft6, 144(a5)<br>  |
|  11|[0x800057b0]<br>0xFEEDBEADFEEDBEAD|- rs1 : f10<br> - rs2 : f31<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3e06598dce41c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3e06598dce41c and rm_val == 3  #nosat<br>                                                |[0x800004d4]:fadd.d ft1, fa0, ft11, dyn<br> [0x800004d8]:csrrs a7, fflags, zero<br> [0x800004dc]:fsd ft1, 160(a5)<br>  |
|  12|[0x800057c0]<br>0xEEDBEADFEEDBEADF|- rs1 : f11<br> - rs2 : f25<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7d8c1fdfb6a69 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x7d8c1fdfb6a69 and rm_val == 3  #nosat<br>                                               |[0x800004f0]:fadd.d ft9, fa1, fs9, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd ft9, 176(a5)<br>   |
|  13|[0x800057d0]<br>0x0000000000000000|- rs1 : f14<br> - rs2 : f7<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0xed56e9c6a326f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0xed56e9c6a326f and rm_val == 3  #nosat<br>                                                 |[0x8000050c]:fadd.d ft0, fa4, ft7, dyn<br> [0x80000510]:csrrs a7, fflags, zero<br> [0x80000514]:fsd ft0, 192(a5)<br>   |
|  14|[0x800057e0]<br>0xDF56FF76DF56FF76|- rs1 : f16<br> - rs2 : f0<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x45e0c0bf1170b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x45e0c0bf1170b and rm_val == 3  #nosat<br>                                                |[0x80000528]:fadd.d fs2, fa6, ft0, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsd fs2, 208(a5)<br>   |
|  15|[0x800057f0]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f31<br> - rs2 : f15<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8280abe92e75 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8280abe92e75 and rm_val == 3  #nosat<br>                                                |[0x80000544]:fadd.d ft7, ft11, fa5, dyn<br> [0x80000548]:csrrs a7, fflags, zero<br> [0x8000054c]:fsd ft7, 224(a5)<br>  |
|  16|[0x80005800]<br>0xF76DF56FF76DF56F|- rs1 : f2<br> - rs2 : f1<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe40271df052d1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe40271df052d1 and rm_val == 3  #nosat<br>                                                 |[0x80000560]:fadd.d ft10, ft2, ft1, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd ft10, 240(a5)<br> |
|  17|[0x80005810]<br>0x76DF56FF76DF56FF|- rs1 : f5<br> - rs2 : f13<br> - rd : f26<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5625f693222e6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5625f693222e6 and rm_val == 3  #nosat<br>                                                |[0x8000057c]:fadd.d fs10, ft5, fa3, dyn<br> [0x80000580]:csrrs a7, fflags, zero<br> [0x80000584]:fsd fs10, 256(a5)<br> |
|  18|[0x80005820]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f24<br> - rs2 : f28<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2e9fbd9df2c67 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2e9fbd9df2c67 and rm_val == 3  #nosat<br>                                               |[0x80000598]:fadd.d fs4, fs8, ft8, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd fs4, 272(a5)<br>   |
|  19|[0x80005830]<br>0x0000000000000005|- rs1 : f21<br> - rs2 : f22<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x64e15e87b6907 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x64e15e87b6907 and rm_val == 3  #nosat<br>                                               |[0x800005b4]:fadd.d fa7, fs5, fs6, dyn<br> [0x800005b8]:csrrs a7, fflags, zero<br> [0x800005bc]:fsd fa7, 288(a5)<br>   |
|  20|[0x80005840]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f4<br> - rs2 : f17<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x41f380c8d1ec8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x41f380c8d1ec8 and rm_val == 3  #nosat<br>                                                |[0x800005d0]:fadd.d fa1, ft4, fa7, dyn<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:fsd fa1, 304(a5)<br>   |
|  21|[0x80005850]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f1<br> - rs2 : f30<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2b44ad389f673 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x2b44ad389f673 and rm_val == 3  #nosat<br>                                                |[0x800005ec]:fadd.d fs8, ft1, ft10, dyn<br> [0x800005f0]:csrrs a7, fflags, zero<br> [0x800005f4]:fsd fs8, 320(a5)<br>  |
|  22|[0x80005860]<br>0xDBEADFEEDBEADFEE|- rs1 : f15<br> - rs2 : f12<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8e9e23b9dbe28 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x8e9e23b9dbe28 and rm_val == 3  #nosat<br>                                               |[0x80000608]:fadd.d fs5, fa5, fa2, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsd fs5, 336(a5)<br>   |
|  23|[0x80005870]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f23<br> - rs2 : f29<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x44e981a2c9e6f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x44e981a2c9e6f and rm_val == 3  #nosat<br>                                               |[0x80000624]:fadd.d fa2, fs7, ft9, dyn<br> [0x80000628]:csrrs a7, fflags, zero<br> [0x8000062c]:fsd fa2, 352(a5)<br>   |
|  24|[0x80005880]<br>0x0000000A00006000|- rs1 : f18<br> - rs2 : f9<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x10107d46bd56f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x10107d46bd56f and rm_val == 3  #nosat<br>                                                 |[0x80000640]:fadd.d ft2, fs2, fs1, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd ft2, 368(a5)<br>   |
|  25|[0x80005890]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f25<br> - rs2 : f2<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x25e0f16179d08 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x25e0f16179d08 and rm_val == 3  #nosat<br>                                                |[0x8000065c]:fadd.d fs3, fs9, ft2, dyn<br> [0x80000660]:csrrs a7, fflags, zero<br> [0x80000664]:fsd fs3, 384(a5)<br>   |
|  26|[0x800058a0]<br>0x6DF56FF76DF56FF7|- rs1 : f28<br> - rs2 : f6<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x28a501a431151 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x28a501a431151 and rm_val == 3  #nosat<br>                                                |[0x80000678]:fadd.d fs6, ft8, ft6, dyn<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:fsd fs6, 400(a5)<br>   |
|  27|[0x800058b0]<br>0xF56FF76DF56FF76D|- rs1 : f30<br> - rs2 : f21<br> - rd : f14<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0x4ef5cc116e8a3 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x4ef5cc116e8a3 and rm_val == 3  #nosat<br>                                               |[0x80000694]:fadd.d fa4, ft10, fs5, dyn<br> [0x80000698]:csrrs a7, fflags, zero<br> [0x8000069c]:fsd fa4, 416(a5)<br>  |
|  28|[0x800058c0]<br>0x0000000080005710|- rs1 : f17<br> - rs2 : f4<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0xfe0c60e404d7f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xfe0c60e404d7f and rm_val == 3  #nosat<br>                                                |[0x800006b0]:fadd.d fa5, fa7, ft4, dyn<br> [0x800006b4]:csrrs a7, fflags, zero<br> [0x800006b8]:fsd fa5, 432(a5)<br>   |
|  29|[0x800058d0]<br>0x56FF76DF56FF76DF|- rs1 : f7<br> - rs2 : f18<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5c0c3b0f20ae1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x5c0c3b0f20ae1 and rm_val == 3  #nosat<br>                                                |[0x800006cc]:fadd.d fa0, ft7, fs2, dyn<br> [0x800006d0]:csrrs a7, fflags, zero<br> [0x800006d4]:fsd fa0, 448(a5)<br>   |
|  30|[0x800058e0]<br>0x0000000080000390|- rs1 : f22<br> - rs2 : f16<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x95a004d0cc955 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x95a004d0cc955 and rm_val == 3  #nosat<br>                                                |[0x800006e8]:fadd.d ft5, fs6, fa6, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd ft5, 464(a5)<br>   |
|  31|[0x800058f0]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f8<br> - rs2 : f19<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x30d9918574e31 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x30d9918574e31 and rm_val == 3  #nosat<br>                                                 |[0x80000704]:fadd.d ft4, fs0, fs3, dyn<br> [0x80000708]:csrrs a7, fflags, zero<br> [0x8000070c]:fsd ft4, 480(a5)<br>   |
|  32|[0x80005900]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f26<br> - rs2 : f5<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x82ac91eb0b042 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x82ac91eb0b042 and rm_val == 3  #nosat<br>                                                |[0x80000720]:fadd.d fs7, fs10, ft5, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd fs7, 496(a5)<br>  |
|  33|[0x80005910]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x02abb1ad4a0a3 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x02abb1ad4a0a3 and rm_val == 3  #nosat<br>                                                                                              |[0x8000073c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000740]:csrrs a7, fflags, zero<br> [0x80000744]:fsd fa2, 512(a5)<br>   |
|  34|[0x80005920]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x95be9fb8e8257 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x95be9fb8e8257 and rm_val == 3  #nosat<br>                                                                                              |[0x80000758]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000075c]:csrrs a7, fflags, zero<br> [0x80000760]:fsd fa2, 528(a5)<br>   |
|  35|[0x80005930]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0d5d3ab8fef6e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0d5d3ab8fef6e and rm_val == 3  #nosat<br>                                                                                              |[0x80000774]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000778]:csrrs a7, fflags, zero<br> [0x8000077c]:fsd fa2, 544(a5)<br>   |
|  36|[0x80005940]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x4c297c00425ff and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x4c297c00425ff and rm_val == 3  #nosat<br>                                                                                              |[0x80000790]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa2, 560(a5)<br>   |
|  37|[0x80005950]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xeeed208a47b6f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xeeed208a47b6f and rm_val == 3  #nosat<br>                                                                                              |[0x800007ac]:fadd.d fa2, fa0, fa1, dyn<br> [0x800007b0]:csrrs a7, fflags, zero<br> [0x800007b4]:fsd fa2, 576(a5)<br>   |
|  38|[0x80005960]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1ecf7d50e7867 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x1ecf7d50e7867 and rm_val == 3  #nosat<br>                                                                                              |[0x800007c8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsd fa2, 592(a5)<br>   |
|  39|[0x80005970]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xdbe0fc8b3298f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xdbe0fc8b3298f and rm_val == 3  #nosat<br>                                                                                              |[0x800007e4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800007e8]:csrrs a7, fflags, zero<br> [0x800007ec]:fsd fa2, 608(a5)<br>   |
|  40|[0x80005980]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5b3a3e9fd9fb7 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5b3a3e9fd9fb7 and rm_val == 3  #nosat<br>                                                                                              |[0x80000800]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa2, 624(a5)<br>   |
|  41|[0x80005990]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x699f5f701628b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x699f5f701628b and rm_val == 3  #nosat<br>                                                                                              |[0x8000081c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000820]:csrrs a7, fflags, zero<br> [0x80000824]:fsd fa2, 640(a5)<br>   |
|  42|[0x800059a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x172584a6fc7c6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x172584a6fc7c6 and rm_val == 3  #nosat<br>                                                                                              |[0x80000838]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:fsd fa2, 656(a5)<br>   |
|  43|[0x800059b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x898a6dfea4b33 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x898a6dfea4b33 and rm_val == 3  #nosat<br>                                                                                              |[0x80000854]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000858]:csrrs a7, fflags, zero<br> [0x8000085c]:fsd fa2, 672(a5)<br>   |
|  44|[0x800059c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f7 and fm1 == 0xfda686ffdecff and fs2 == 1 and fe2 == 0x7f7 and fm2 == 0xfda686ffdecff and rm_val == 3  #nosat<br>                                                                                              |[0x80000870]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:fsd fa2, 688(a5)<br>   |
|  45|[0x800059d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x65e23ddcbddd1 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x65e23ddcbddd1 and rm_val == 3  #nosat<br>                                                                                              |[0x8000088c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000890]:csrrs a7, fflags, zero<br> [0x80000894]:fsd fa2, 704(a5)<br>   |
|  46|[0x800059e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa10df54b7350b and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa10df54b7350b and rm_val == 3  #nosat<br>                                                                                              |[0x800008a8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:fsd fa2, 720(a5)<br>   |
|  47|[0x800059f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x464ca5c58934b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x464ca5c58934b and rm_val == 3  #nosat<br>                                                                                              |[0x800008c4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800008c8]:csrrs a7, fflags, zero<br> [0x800008cc]:fsd fa2, 736(a5)<br>   |
|  48|[0x80005a00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x23fa6c5af95c3 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x23fa6c5af95c3 and rm_val == 3  #nosat<br>                                                                                              |[0x800008e0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa2, 752(a5)<br>   |
|  49|[0x80005a10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xd0546b2b91d49 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xd0546b2b91d49 and rm_val == 3  #nosat<br>                                                                                              |[0x800008fc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000900]:csrrs a7, fflags, zero<br> [0x80000904]:fsd fa2, 768(a5)<br>   |
|  50|[0x80005a20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xba13e3965dc9d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xba13e3965dc9d and rm_val == 3  #nosat<br>                                                                                              |[0x80000918]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:fsd fa2, 784(a5)<br>   |
|  51|[0x80005a30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9858f917ba8dd and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x9858f917ba8dd and rm_val == 3  #nosat<br>                                                                                              |[0x80000934]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000938]:csrrs a7, fflags, zero<br> [0x8000093c]:fsd fa2, 800(a5)<br>   |
|  52|[0x80005a40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x97605fecf75de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x97605fecf75de and rm_val == 3  #nosat<br>                                                                                              |[0x80000950]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000954]:csrrs a7, fflags, zero<br> [0x80000958]:fsd fa2, 816(a5)<br>   |
|  53|[0x80005a50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1dc9fa26c1435 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x1dc9fa26c1435 and rm_val == 3  #nosat<br>                                                                                              |[0x8000096c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000970]:csrrs a7, fflags, zero<br> [0x80000974]:fsd fa2, 832(a5)<br>   |
|  54|[0x80005a60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x97d11446f38d6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x97d11446f38d6 and rm_val == 3  #nosat<br>                                                                                              |[0x80000988]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsd fa2, 848(a5)<br>   |
|  55|[0x80005a70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe230580ba7bd1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe230580ba7bd1 and rm_val == 3  #nosat<br>                                                                                              |[0x800009a4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800009a8]:csrrs a7, fflags, zero<br> [0x800009ac]:fsd fa2, 864(a5)<br>   |
|  56|[0x80005a80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa1c5a75f20f3f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa1c5a75f20f3f and rm_val == 3  #nosat<br>                                                                                              |[0x800009c0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa2, 880(a5)<br>   |
|  57|[0x80005a90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x74d41339ae482 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x74d41339ae482 and rm_val == 3  #nosat<br>                                                                                              |[0x800009dc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800009e0]:csrrs a7, fflags, zero<br> [0x800009e4]:fsd fa2, 896(a5)<br>   |
|  58|[0x80005aa0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa26ee9811427d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa26ee9811427d and rm_val == 3  #nosat<br>                                                                                              |[0x800009f8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800009fc]:csrrs a7, fflags, zero<br> [0x80000a00]:fsd fa2, 912(a5)<br>   |
|  59|[0x80005ab0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe5da67e1de883 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe5da67e1de883 and rm_val == 3  #nosat<br>                                                                                              |[0x80000a14]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000a18]:csrrs a7, fflags, zero<br> [0x80000a1c]:fsd fa2, 928(a5)<br>   |
|  60|[0x80005ac0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc77c9350fee6d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xc77c9350fee6d and rm_val == 3  #nosat<br>                                                                                              |[0x80000a30]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000a34]:csrrs a7, fflags, zero<br> [0x80000a38]:fsd fa2, 944(a5)<br>   |
|  61|[0x80005ad0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x46206996b12da and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x46206996b12da and rm_val == 3  #nosat<br>                                                                                              |[0x80000a4c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000a50]:csrrs a7, fflags, zero<br> [0x80000a54]:fsd fa2, 960(a5)<br>   |
|  62|[0x80005ae0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2365849750ca3 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x2365849750ca3 and rm_val == 3  #nosat<br>                                                                                              |[0x80000a68]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:fsd fa2, 976(a5)<br>   |
|  63|[0x80005af0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x19ff775aac054 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x19ff775aac054 and rm_val == 3  #nosat<br>                                                                                              |[0x80000a84]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000a88]:csrrs a7, fflags, zero<br> [0x80000a8c]:fsd fa2, 992(a5)<br>   |
|  64|[0x80005b00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x2bdf74439828f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x2bdf74439828f and rm_val == 3  #nosat<br>                                                                                              |[0x80000aa0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa2, 1008(a5)<br>  |
|  65|[0x80005b10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x50af5b268139f and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0x50af5b268139f and rm_val == 3  #nosat<br>                                                                                              |[0x80000abc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000ac0]:csrrs a7, fflags, zero<br> [0x80000ac4]:fsd fa2, 1024(a5)<br>  |
|  66|[0x80005b20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x7aed2f71a352f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x7aed2f71a352f and rm_val == 3  #nosat<br>                                                                                              |[0x80000ad8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000adc]:csrrs a7, fflags, zero<br> [0x80000ae0]:fsd fa2, 1040(a5)<br>  |
|  67|[0x80005b30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2a0b81afacd4f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x2a0b81afacd4f and rm_val == 3  #nosat<br>                                                                                              |[0x80000af4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000af8]:csrrs a7, fflags, zero<br> [0x80000afc]:fsd fa2, 1056(a5)<br>  |
|  68|[0x80005b40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf155693c9590b and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xf155693c9590b and rm_val == 3  #nosat<br>                                                                                              |[0x80000b10]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000b14]:csrrs a7, fflags, zero<br> [0x80000b18]:fsd fa2, 1072(a5)<br>  |
|  69|[0x80005b50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9bd90b8e42a3f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9bd90b8e42a3f and rm_val == 3  #nosat<br>                                                                                              |[0x80000b2c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000b30]:csrrs a7, fflags, zero<br> [0x80000b34]:fsd fa2, 1088(a5)<br>  |
|  70|[0x80005b60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcb9c1949673fd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcb9c1949673fd and rm_val == 3  #nosat<br>                                                                                              |[0x80000b48]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000b4c]:csrrs a7, fflags, zero<br> [0x80000b50]:fsd fa2, 1104(a5)<br>  |
|  71|[0x80005b70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x29651713b2616 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x29651713b2616 and rm_val == 3  #nosat<br>                                                                                              |[0x80000b64]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000b68]:csrrs a7, fflags, zero<br> [0x80000b6c]:fsd fa2, 1120(a5)<br>  |
|  72|[0x80005b80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfc642d452bf98 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfc642d452bf98 and rm_val == 3  #nosat<br>                                                                                              |[0x80000b80]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa2, 1136(a5)<br>  |
|  73|[0x80005b90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4596be54ed4ed and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x4596be54ed4ed and rm_val == 3  #nosat<br>                                                                                              |[0x80000b9c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000ba0]:csrrs a7, fflags, zero<br> [0x80000ba4]:fsd fa2, 1152(a5)<br>  |
|  74|[0x80005ba0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdfcf16f837dfc and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xdfcf16f837dfc and rm_val == 3  #nosat<br>                                                                                              |[0x80000bb8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000bbc]:csrrs a7, fflags, zero<br> [0x80000bc0]:fsd fa2, 1168(a5)<br>  |
|  75|[0x80005bb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe4bb35faff00f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe4bb35faff00f and rm_val == 3  #nosat<br>                                                                                              |[0x80000bd4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000bd8]:csrrs a7, fflags, zero<br> [0x80000bdc]:fsd fa2, 1184(a5)<br>  |
|  76|[0x80005bc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xeedb9ccd51d70 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xeedb9ccd51d70 and rm_val == 3  #nosat<br>                                                                                              |[0x80000bf0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000bf4]:csrrs a7, fflags, zero<br> [0x80000bf8]:fsd fa2, 1200(a5)<br>  |
|  77|[0x80005bd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xeb18879086a84 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xeb18879086a84 and rm_val == 3  #nosat<br>                                                                                              |[0x80000c0c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c10]:csrrs a7, fflags, zero<br> [0x80000c14]:fsd fa2, 1216(a5)<br>  |
|  78|[0x80005be0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xcc5a8af41138f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xcc5a8af41138f and rm_val == 3  #nosat<br>                                                                                              |[0x80000c28]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c2c]:csrrs a7, fflags, zero<br> [0x80000c30]:fsd fa2, 1232(a5)<br>  |
|  79|[0x80005bf0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb7e5dd8914aef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb7e5dd8914aef and rm_val == 3  #nosat<br>                                                                                              |[0x80000c44]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c48]:csrrs a7, fflags, zero<br> [0x80000c4c]:fsd fa2, 1248(a5)<br>  |
|  80|[0x80005c00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x93dda7765991f and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0x93dda7765991f and rm_val == 3  #nosat<br>                                                                                              |[0x80000c60]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa2, 1264(a5)<br>  |
|  81|[0x80005c10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f7 and fm1 == 0xd6d9096268f7f and fs2 == 1 and fe2 == 0x7f7 and fm2 == 0xd6d9096268f7f and rm_val == 3  #nosat<br>                                                                                              |[0x80000c7c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c80]:csrrs a7, fflags, zero<br> [0x80000c84]:fsd fa2, 1280(a5)<br>  |
|  82|[0x80005c20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe063e979a868f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe063e979a868f and rm_val == 3  #nosat<br>                                                                                              |[0x80000c98]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000c9c]:csrrs a7, fflags, zero<br> [0x80000ca0]:fsd fa2, 1296(a5)<br>  |
|  83|[0x80005c30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa3695ba8b56f7 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa3695ba8b56f7 and rm_val == 3  #nosat<br>                                                                                              |[0x80000cb4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000cb8]:csrrs a7, fflags, zero<br> [0x80000cbc]:fsd fa2, 1312(a5)<br>  |
|  84|[0x80005c40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc97053092bae8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc97053092bae8 and rm_val == 3  #nosat<br>                                                                                              |[0x80000cd0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000cd4]:csrrs a7, fflags, zero<br> [0x80000cd8]:fsd fa2, 1328(a5)<br>  |
|  85|[0x80005c50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa354d897694eb and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa354d897694eb and rm_val == 3  #nosat<br>                                                                                              |[0x80000cec]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000cf0]:csrrs a7, fflags, zero<br> [0x80000cf4]:fsd fa2, 1344(a5)<br>  |
|  86|[0x80005c60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x46821d48c93bf and fs2 == 1 and fe2 == 0x7f8 and fm2 == 0x46821d48c93bf and rm_val == 3  #nosat<br>                                                                                              |[0x80000d08]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d0c]:csrrs a7, fflags, zero<br> [0x80000d10]:fsd fa2, 1360(a5)<br>  |
|  87|[0x80005c70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xe15232c378b7f and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0xe15232c378b7f and rm_val == 3  #nosat<br>                                                                                              |[0x80000d24]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d28]:csrrs a7, fflags, zero<br> [0x80000d2c]:fsd fa2, 1376(a5)<br>  |
|  88|[0x80005c80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x2011ca3e25417 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x2011ca3e25417 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d40]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa2, 1392(a5)<br>  |
|  89|[0x80005c90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x71f120502a5e1 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x71f120502a5e1 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d5c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d60]:csrrs a7, fflags, zero<br> [0x80000d64]:fsd fa2, 1408(a5)<br>  |
|  90|[0x80005ca0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd6ac2d374cb87 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd6ac2d374cb87 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d78]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d7c]:csrrs a7, fflags, zero<br> [0x80000d80]:fsd fa2, 1424(a5)<br>  |
|  91|[0x80005cb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5f72319ab0728 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5f72319ab0728 and rm_val == 3  #nosat<br>                                                                                              |[0x80000d94]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000d98]:csrrs a7, fflags, zero<br> [0x80000d9c]:fsd fa2, 1440(a5)<br>  |
|  92|[0x80005cc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xf700ae54ab8df and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0xf700ae54ab8df and rm_val == 3  #nosat<br>                                                                                              |[0x80000db0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000db4]:csrrs a7, fflags, zero<br> [0x80000db8]:fsd fa2, 1456(a5)<br>  |
|  93|[0x80005cd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8c31f809fe79b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x8c31f809fe79b and rm_val == 3  #nosat<br>                                                                                              |[0x80000dcc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000dd0]:csrrs a7, fflags, zero<br> [0x80000dd4]:fsd fa2, 1472(a5)<br>  |
|  94|[0x80005ce0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa99dd8880ddad and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa99dd8880ddad and rm_val == 3  #nosat<br>                                                                                              |[0x80000de8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000dec]:csrrs a7, fflags, zero<br> [0x80000df0]:fsd fa2, 1488(a5)<br>  |
|  95|[0x80005cf0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd883cdc560c7e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd883cdc560c7e and rm_val == 3  #nosat<br>                                                                                              |[0x80000e04]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e08]:csrrs a7, fflags, zero<br> [0x80000e0c]:fsd fa2, 1504(a5)<br>  |
|  96|[0x80005d00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb4318b7227e1b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xb4318b7227e1b and rm_val == 3  #nosat<br>                                                                                              |[0x80000e20]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa2, 1520(a5)<br>  |
|  97|[0x80005d10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x38a399f905ab9 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x38a399f905ab9 and rm_val == 3  #nosat<br>                                                                                              |[0x80000e3c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e40]:csrrs a7, fflags, zero<br> [0x80000e44]:fsd fa2, 1536(a5)<br>  |
|  98|[0x80005d20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x65a21c61847d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x65a21c61847d5 and rm_val == 3  #nosat<br>                                                                                              |[0x80000e58]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e5c]:csrrs a7, fflags, zero<br> [0x80000e60]:fsd fa2, 1552(a5)<br>  |
|  99|[0x80005d30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc70d21e827c6a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc70d21e827c6a and rm_val == 3  #nosat<br>                                                                                              |[0x80000e74]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e78]:csrrs a7, fflags, zero<br> [0x80000e7c]:fsd fa2, 1568(a5)<br>  |
| 100|[0x80005d40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7ee0eb8d7cc7f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x7ee0eb8d7cc7f and rm_val == 3  #nosat<br>                                                                                              |[0x80000e90]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000e94]:csrrs a7, fflags, zero<br> [0x80000e98]:fsd fa2, 1584(a5)<br>  |
| 101|[0x80005d50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x24c28db80e5f8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x24c28db80e5f8 and rm_val == 3  #nosat<br>                                                                                              |[0x80000eac]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000eb0]:csrrs a7, fflags, zero<br> [0x80000eb4]:fsd fa2, 1600(a5)<br>  |
| 102|[0x80005d60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe3baa16148b70 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe3baa16148b70 and rm_val == 3  #nosat<br>                                                                                              |[0x80000ec8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000ecc]:csrrs a7, fflags, zero<br> [0x80000ed0]:fsd fa2, 1616(a5)<br>  |
| 103|[0x80005d70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf1d543a0b07fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xf1d543a0b07fb and rm_val == 3  #nosat<br>                                                                                              |[0x80000ee4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa2, 1632(a5)<br>  |
| 104|[0x80005d80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x6db2c39b92e2f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x6db2c39b92e2f and rm_val == 3  #nosat<br>                                                                                              |[0x80000f00]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f04]:csrrs a7, fflags, zero<br> [0x80000f08]:fsd fa2, 1648(a5)<br>  |
| 105|[0x80005d90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x94410aa872e85 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x94410aa872e85 and rm_val == 3  #nosat<br>                                                                                              |[0x80000f1c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f20]:csrrs a7, fflags, zero<br> [0x80000f24]:fsd fa2, 1664(a5)<br>  |
| 106|[0x80005da0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8363338c30c8b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x8363338c30c8b and rm_val == 3  #nosat<br>                                                                                              |[0x80000f38]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f3c]:csrrs a7, fflags, zero<br> [0x80000f40]:fsd fa2, 1680(a5)<br>  |
| 107|[0x80005db0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9071429916f5c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9071429916f5c and rm_val == 3  #nosat<br>                                                                                              |[0x80000f54]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f58]:csrrs a7, fflags, zero<br> [0x80000f5c]:fsd fa2, 1696(a5)<br>  |
| 108|[0x80005dc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x922ba23fbbdc6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x922ba23fbbdc6 and rm_val == 3  #nosat<br>                                                                                              |[0x80000f70]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f74]:csrrs a7, fflags, zero<br> [0x80000f78]:fsd fa2, 1712(a5)<br>  |
| 109|[0x80005dd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed93307c783a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed93307c783a and rm_val == 3  #nosat<br>                                                                                              |[0x80000f8c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000f90]:csrrs a7, fflags, zero<br> [0x80000f94]:fsd fa2, 1728(a5)<br>  |
| 110|[0x80005de0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbebcdefd48729 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbebcdefd48729 and rm_val == 3  #nosat<br>                                                                                              |[0x80000fa8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:fsd fa2, 1744(a5)<br>  |
| 111|[0x80005df0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x99434052cdad4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x99434052cdad4 and rm_val == 3  #nosat<br>                                                                                              |[0x80000fc4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa2, 1760(a5)<br>  |
| 112|[0x80005e00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x0451c9f55e3a7 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x0451c9f55e3a7 and rm_val == 3  #nosat<br>                                                                                              |[0x80000fe0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80000fe4]:csrrs a7, fflags, zero<br> [0x80000fe8]:fsd fa2, 1776(a5)<br>  |
| 113|[0x80005e10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3e7bb112f7fe8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3e7bb112f7fe8 and rm_val == 3  #nosat<br>                                                                                              |[0x80000ffc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001000]:csrrs a7, fflags, zero<br> [0x80001004]:fsd fa2, 1792(a5)<br>  |
| 114|[0x80005e20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xfd3af1f060647 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xfd3af1f060647 and rm_val == 3  #nosat<br>                                                                                              |[0x80001018]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000101c]:csrrs a7, fflags, zero<br> [0x80001020]:fsd fa2, 1808(a5)<br>  |
| 115|[0x80005e30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x43be7b7bc5458 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x43be7b7bc5458 and rm_val == 3  #nosat<br>                                                                                              |[0x80001034]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001038]:csrrs a7, fflags, zero<br> [0x8000103c]:fsd fa2, 1824(a5)<br>  |
| 116|[0x80005e40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x38619d6cda314 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x38619d6cda314 and rm_val == 3  #nosat<br>                                                                                              |[0x80001050]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001054]:csrrs a7, fflags, zero<br> [0x80001058]:fsd fa2, 1840(a5)<br>  |
| 117|[0x80005e50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf6165c8e35259 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xf6165c8e35259 and rm_val == 3  #nosat<br>                                                                                              |[0x8000106c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001070]:csrrs a7, fflags, zero<br> [0x80001074]:fsd fa2, 1856(a5)<br>  |
| 118|[0x80005e60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x889db2e44701b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x889db2e44701b and rm_val == 3  #nosat<br>                                                                                              |[0x80001088]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000108c]:csrrs a7, fflags, zero<br> [0x80001090]:fsd fa2, 1872(a5)<br>  |
| 119|[0x80005e70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x19295f298916c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x19295f298916c and rm_val == 3  #nosat<br>                                                                                              |[0x800010a4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa2, 1888(a5)<br>  |
| 120|[0x80005e80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x428af114baf6a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x428af114baf6a and rm_val == 3  #nosat<br>                                                                                              |[0x800010c0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800010c4]:csrrs a7, fflags, zero<br> [0x800010c8]:fsd fa2, 1904(a5)<br>  |
| 121|[0x80005e90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x09f50264a8d1f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x09f50264a8d1f and rm_val == 3  #nosat<br>                                                                                              |[0x800010dc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800010e0]:csrrs a7, fflags, zero<br> [0x800010e4]:fsd fa2, 1920(a5)<br>  |
| 122|[0x80005ea0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe230c7e39a5d7 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe230c7e39a5d7 and rm_val == 3  #nosat<br>                                                                                              |[0x800010f8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800010fc]:csrrs a7, fflags, zero<br> [0x80001100]:fsd fa2, 1936(a5)<br>  |
| 123|[0x80005eb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8bf6a13abca7f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x8bf6a13abca7f and rm_val == 3  #nosat<br>                                                                                              |[0x80001114]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001118]:csrrs a7, fflags, zero<br> [0x8000111c]:fsd fa2, 1952(a5)<br>  |
| 124|[0x80005ec0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa501ef8480c55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa501ef8480c55 and rm_val == 3  #nosat<br>                                                                                              |[0x80001130]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001134]:csrrs a7, fflags, zero<br> [0x80001138]:fsd fa2, 1968(a5)<br>  |
| 125|[0x80005ed0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x360373cf6f10f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x360373cf6f10f and rm_val == 3  #nosat<br>                                                                                              |[0x8000114c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001150]:csrrs a7, fflags, zero<br> [0x80001154]:fsd fa2, 1984(a5)<br>  |
| 126|[0x80005ee0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6f335d0539418 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6f335d0539418 and rm_val == 3  #nosat<br>                                                                                              |[0x80001168]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000116c]:csrrs a7, fflags, zero<br> [0x80001170]:fsd fa2, 2000(a5)<br>  |
| 127|[0x80005ef0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf7a288f1ea41f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xf7a288f1ea41f and rm_val == 3  #nosat<br>                                                                                              |[0x80001184]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa2, 2016(a5)<br>  |
| 128|[0x80005f00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x265eb5ece1e0f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x265eb5ece1e0f and rm_val == 3  #nosat<br>                                                                                              |[0x800011ac]:fadd.d fa2, fa0, fa1, dyn<br> [0x800011b0]:csrrs a7, fflags, zero<br> [0x800011b4]:fsd fa2, 0(a5)<br>     |
| 129|[0x80005f10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa8edfc5560a8d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa8edfc5560a8d and rm_val == 3  #nosat<br>                                                                                              |[0x800011c8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800011cc]:csrrs a7, fflags, zero<br> [0x800011d0]:fsd fa2, 16(a5)<br>    |
| 130|[0x80005f20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x04c0c63d2bf03 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x04c0c63d2bf03 and rm_val == 3  #nosat<br>                                                                                              |[0x800011e4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa2, 32(a5)<br>    |
| 131|[0x80005f30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0xfe0614a7b9fbf and fs2 == 1 and fe2 == 0x7fa and fm2 == 0xfe0614a7b9fbf and rm_val == 3  #nosat<br>                                                                                              |[0x80001200]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001204]:csrrs a7, fflags, zero<br> [0x80001208]:fsd fa2, 48(a5)<br>    |
| 132|[0x80005f40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa1ddeeb12c253 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa1ddeeb12c253 and rm_val == 3  #nosat<br>                                                                                              |[0x8000121c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001220]:csrrs a7, fflags, zero<br> [0x80001224]:fsd fa2, 64(a5)<br>    |
| 133|[0x80005f50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe2c9f3b4cd220 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe2c9f3b4cd220 and rm_val == 3  #nosat<br>                                                                                              |[0x80001238]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000123c]:csrrs a7, fflags, zero<br> [0x80001240]:fsd fa2, 80(a5)<br>    |
| 134|[0x80005f60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x0cc870fcad57f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x0cc870fcad57f and rm_val == 3  #nosat<br>                                                                                              |[0x80001254]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001258]:csrrs a7, fflags, zero<br> [0x8000125c]:fsd fa2, 96(a5)<br>    |
| 135|[0x80005f70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0382dd247f3f9 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0382dd247f3f9 and rm_val == 3  #nosat<br>                                                                                              |[0x80001270]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001274]:csrrs a7, fflags, zero<br> [0x80001278]:fsd fa2, 112(a5)<br>   |
| 136|[0x80005f80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f2 and fm1 == 0xf8c6f685f5fff and fs2 == 1 and fe2 == 0x7f2 and fm2 == 0xf8c6f685f5fff and rm_val == 3  #nosat<br>                                                                                              |[0x8000128c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001290]:csrrs a7, fflags, zero<br> [0x80001294]:fsd fa2, 128(a5)<br>   |
| 137|[0x80005f90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x989b40414f92c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x989b40414f92c and rm_val == 3  #nosat<br>                                                                                              |[0x800012a8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:fsd fa2, 144(a5)<br>   |
| 138|[0x80005fa0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2c3b1b8ef2d41 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2c3b1b8ef2d41 and rm_val == 3  #nosat<br>                                                                                              |[0x800012c4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa2, 160(a5)<br>   |
| 139|[0x80005fb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x950338fe39141 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x950338fe39141 and rm_val == 3  #nosat<br>                                                                                              |[0x800012e0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800012e4]:csrrs a7, fflags, zero<br> [0x800012e8]:fsd fa2, 176(a5)<br>   |
| 140|[0x80005fc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa6c1b4fe3e3c0 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa6c1b4fe3e3c0 and rm_val == 3  #nosat<br>                                                                                              |[0x800012fc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001300]:csrrs a7, fflags, zero<br> [0x80001304]:fsd fa2, 192(a5)<br>   |
| 141|[0x80005fd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x122215f9ac41a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x122215f9ac41a and rm_val == 3  #nosat<br>                                                                                              |[0x80001318]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000131c]:csrrs a7, fflags, zero<br> [0x80001320]:fsd fa2, 208(a5)<br>   |
| 142|[0x80005fe0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcfc27db04baa5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcfc27db04baa5 and rm_val == 3  #nosat<br>                                                                                              |[0x80001334]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001338]:csrrs a7, fflags, zero<br> [0x8000133c]:fsd fa2, 224(a5)<br>   |
| 143|[0x80005ff0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfb271584e30d0 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfb271584e30d0 and rm_val == 3  #nosat<br>                                                                                              |[0x80001350]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001354]:csrrs a7, fflags, zero<br> [0x80001358]:fsd fa2, 240(a5)<br>   |
| 144|[0x80006000]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9c37606126e28 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9c37606126e28 and rm_val == 3  #nosat<br>                                                                                              |[0x8000136c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001370]:csrrs a7, fflags, zero<br> [0x80001374]:fsd fa2, 256(a5)<br>   |
| 145|[0x80006010]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x25d29d05cd288 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x25d29d05cd288 and rm_val == 3  #nosat<br>                                                                                              |[0x80001388]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000138c]:csrrs a7, fflags, zero<br> [0x80001390]:fsd fa2, 272(a5)<br>   |
| 146|[0x80006020]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcd5bbb21e85e5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcd5bbb21e85e5 and rm_val == 3  #nosat<br>                                                                                              |[0x800013a4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800013a8]:csrrs a7, fflags, zero<br> [0x800013ac]:fsd fa2, 288(a5)<br>   |
| 147|[0x80006030]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xefec1cd7c3bcb and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xefec1cd7c3bcb and rm_val == 3  #nosat<br>                                                                                              |[0x800013c0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800013c4]:csrrs a7, fflags, zero<br> [0x800013c8]:fsd fa2, 304(a5)<br>   |
| 148|[0x80006040]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x30c845de62d3f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x30c845de62d3f and rm_val == 3  #nosat<br>                                                                                              |[0x800013dc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800013e0]:csrrs a7, fflags, zero<br> [0x800013e4]:fsd fa2, 320(a5)<br>   |
| 149|[0x80006050]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5287546e52d99 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x5287546e52d99 and rm_val == 3  #nosat<br>                                                                                              |[0x800013f8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800013fc]:csrrs a7, fflags, zero<br> [0x80001400]:fsd fa2, 336(a5)<br>   |
| 150|[0x80006060]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xf4dd0c2472fbf and fs2 == 1 and fe2 == 0x7f8 and fm2 == 0xf4dd0c2472fbf and rm_val == 3  #nosat<br>                                                                                              |[0x80001414]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001418]:csrrs a7, fflags, zero<br> [0x8000141c]:fsd fa2, 352(a5)<br>   |
| 151|[0x80006070]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xccfc542168107 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xccfc542168107 and rm_val == 3  #nosat<br>                                                                                              |[0x80001430]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001434]:csrrs a7, fflags, zero<br> [0x80001438]:fsd fa2, 368(a5)<br>   |
| 152|[0x80006080]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbcdfd8ba97c91 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbcdfd8ba97c91 and rm_val == 3  #nosat<br>                                                                                              |[0x8000144c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001450]:csrrs a7, fflags, zero<br> [0x80001454]:fsd fa2, 384(a5)<br>   |
| 153|[0x80006090]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x0fce9799927f7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x0fce9799927f7 and rm_val == 3  #nosat<br>                                                                                              |[0x80001468]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000146c]:csrrs a7, fflags, zero<br> [0x80001470]:fsd fa2, 400(a5)<br>   |
| 154|[0x800060a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6faef3ad3537e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6faef3ad3537e and rm_val == 3  #nosat<br>                                                                                              |[0x80001484]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001488]:csrrs a7, fflags, zero<br> [0x8000148c]:fsd fa2, 416(a5)<br>   |
| 155|[0x800060b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xaf465058419e9 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xaf465058419e9 and rm_val == 3  #nosat<br>                                                                                              |[0x800014a0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800014a4]:csrrs a7, fflags, zero<br> [0x800014a8]:fsd fa2, 432(a5)<br>   |
| 156|[0x800060c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x070c0d4d218f9 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x070c0d4d218f9 and rm_val == 3  #nosat<br>                                                                                              |[0x800014bc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800014c0]:csrrs a7, fflags, zero<br> [0x800014c4]:fsd fa2, 448(a5)<br>   |
| 157|[0x800060d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x228e5619b5bff and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x228e5619b5bff and rm_val == 3  #nosat<br>                                                                                              |[0x800014d8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800014dc]:csrrs a7, fflags, zero<br> [0x800014e0]:fsd fa2, 464(a5)<br>   |
| 158|[0x800060e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc4ac8145e5cc and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc4ac8145e5cc and rm_val == 3  #nosat<br>                                                                                              |[0x800014f4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800014f8]:csrrs a7, fflags, zero<br> [0x800014fc]:fsd fa2, 480(a5)<br>   |
| 159|[0x800060f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5c62b6da50e51 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x5c62b6da50e51 and rm_val == 3  #nosat<br>                                                                                              |[0x80001510]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001514]:csrrs a7, fflags, zero<br> [0x80001518]:fsd fa2, 496(a5)<br>   |
| 160|[0x80006100]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3833da7b9aa37 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3833da7b9aa37 and rm_val == 3  #nosat<br>                                                                                              |[0x8000152c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001530]:csrrs a7, fflags, zero<br> [0x80001534]:fsd fa2, 512(a5)<br>   |
| 161|[0x80006110]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x57132c37fb117 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x57132c37fb117 and rm_val == 3  #nosat<br>                                                                                              |[0x80001548]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000154c]:csrrs a7, fflags, zero<br> [0x80001550]:fsd fa2, 528(a5)<br>   |
| 162|[0x80006120]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfe6749ffc4763 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfe6749ffc4763 and rm_val == 3  #nosat<br>                                                                                              |[0x80001564]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001568]:csrrs a7, fflags, zero<br> [0x8000156c]:fsd fa2, 544(a5)<br>   |
| 163|[0x80006130]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd5872438d16b0 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd5872438d16b0 and rm_val == 3  #nosat<br>                                                                                              |[0x80001580]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001584]:csrrs a7, fflags, zero<br> [0x80001588]:fsd fa2, 560(a5)<br>   |
| 164|[0x80006140]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc15c34215bcf5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc15c34215bcf5 and rm_val == 3  #nosat<br>                                                                                              |[0x8000159c]:fadd.d fa2, fa0, fa1, dyn<br> [0x800015a0]:csrrs a7, fflags, zero<br> [0x800015a4]:fsd fa2, 576(a5)<br>   |
| 165|[0x80006150]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9fa60dd1b5e57 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x9fa60dd1b5e57 and rm_val == 3  #nosat<br>                                                                                              |[0x800015b8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800015bc]:csrrs a7, fflags, zero<br> [0x800015c0]:fsd fa2, 592(a5)<br>   |
| 166|[0x80006160]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf74a5c9f39c6c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xf74a5c9f39c6c and rm_val == 3  #nosat<br>                                                                                              |[0x800015d4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800015d8]:csrrs a7, fflags, zero<br> [0x800015dc]:fsd fa2, 608(a5)<br>   |
| 167|[0x80006170]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x35eecb1ad0a6b and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x35eecb1ad0a6b and rm_val == 3  #nosat<br>                                                                                              |[0x800015f0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800015f4]:csrrs a7, fflags, zero<br> [0x800015f8]:fsd fa2, 624(a5)<br>   |
| 168|[0x80006180]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x831acfae4a49b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x831acfae4a49b and rm_val == 3  #nosat<br>                                                                                              |[0x8000160c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:fsd fa2, 640(a5)<br>   |
| 169|[0x80006190]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2bbbe71ac902b and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x2bbbe71ac902b and rm_val == 3  #nosat<br>                                                                                              |[0x80001628]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000162c]:csrrs a7, fflags, zero<br> [0x80001630]:fsd fa2, 656(a5)<br>   |
| 170|[0x800061a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe55b30b309254 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe55b30b309254 and rm_val == 3  #nosat<br>                                                                                              |[0x80001644]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001648]:csrrs a7, fflags, zero<br> [0x8000164c]:fsd fa2, 672(a5)<br>   |
| 171|[0x800061b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa8693ca418657 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa8693ca418657 and rm_val == 3  #nosat<br>                                                                                              |[0x80001660]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001664]:csrrs a7, fflags, zero<br> [0x80001668]:fsd fa2, 688(a5)<br>   |
| 172|[0x800061c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xe70e78fe823f7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xe70e78fe823f7 and rm_val == 3  #nosat<br>                                                                                              |[0x8000167c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001680]:csrrs a7, fflags, zero<br> [0x80001684]:fsd fa2, 704(a5)<br>   |
| 173|[0x800061d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xce7352604fe6b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xce7352604fe6b and rm_val == 3  #nosat<br>                                                                                              |[0x80001698]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000169c]:csrrs a7, fflags, zero<br> [0x800016a0]:fsd fa2, 720(a5)<br>   |
| 174|[0x800061e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x676d1681c4823 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x676d1681c4823 and rm_val == 3  #nosat<br>                                                                                              |[0x800016b4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800016b8]:csrrs a7, fflags, zero<br> [0x800016bc]:fsd fa2, 736(a5)<br>   |
| 175|[0x800061f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x058fe9a4daa6f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x058fe9a4daa6f and rm_val == 3  #nosat<br>                                                                                              |[0x800016d0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800016d4]:csrrs a7, fflags, zero<br> [0x800016d8]:fsd fa2, 752(a5)<br>   |
| 176|[0x80006200]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb992011891a75 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xb992011891a75 and rm_val == 3  #nosat<br>                                                                                              |[0x800016ec]:fadd.d fa2, fa0, fa1, dyn<br> [0x800016f0]:csrrs a7, fflags, zero<br> [0x800016f4]:fsd fa2, 768(a5)<br>   |
| 177|[0x80006210]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0b2db44ae8c01 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0b2db44ae8c01 and rm_val == 3  #nosat<br>                                                                                              |[0x80001708]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000170c]:csrrs a7, fflags, zero<br> [0x80001710]:fsd fa2, 784(a5)<br>   |
| 178|[0x80006220]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x792be19c2d7a1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x792be19c2d7a1 and rm_val == 3  #nosat<br>                                                                                              |[0x80001724]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001728]:csrrs a7, fflags, zero<br> [0x8000172c]:fsd fa2, 800(a5)<br>   |
| 179|[0x80006230]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5bcd8bcde77b5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5bcd8bcde77b5 and rm_val == 3  #nosat<br>                                                                                              |[0x80001740]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001744]:csrrs a7, fflags, zero<br> [0x80001748]:fsd fa2, 816(a5)<br>   |
| 180|[0x80006240]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf4587ce4e6a55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xf4587ce4e6a55 and rm_val == 3  #nosat<br>                                                                                              |[0x8000175c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001760]:csrrs a7, fflags, zero<br> [0x80001764]:fsd fa2, 832(a5)<br>   |
| 181|[0x80006250]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x09badb528c6c8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x09badb528c6c8 and rm_val == 3  #nosat<br>                                                                                              |[0x80001778]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000177c]:csrrs a7, fflags, zero<br> [0x80001780]:fsd fa2, 848(a5)<br>   |
| 182|[0x80006260]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x01430191b8abf and fs2 == 1 and fe2 == 0x7f8 and fm2 == 0x01430191b8abf and rm_val == 3  #nosat<br>                                                                                              |[0x80001794]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001798]:csrrs a7, fflags, zero<br> [0x8000179c]:fsd fa2, 864(a5)<br>   |
| 183|[0x80006270]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7feee78e25d36 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x7feee78e25d36 and rm_val == 3  #nosat<br>                                                                                              |[0x800017b0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800017b4]:csrrs a7, fflags, zero<br> [0x800017b8]:fsd fa2, 880(a5)<br>   |
| 184|[0x80006280]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x0da8a99d945d7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x0da8a99d945d7 and rm_val == 3  #nosat<br>                                                                                              |[0x800017cc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800017d0]:csrrs a7, fflags, zero<br> [0x800017d4]:fsd fa2, 896(a5)<br>   |
| 185|[0x80006290]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf2f998bf74bb4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xf2f998bf74bb4 and rm_val == 3  #nosat<br>                                                                                              |[0x800017e8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800017ec]:csrrs a7, fflags, zero<br> [0x800017f0]:fsd fa2, 912(a5)<br>   |
| 186|[0x800062a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x40e45564208fa and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x40e45564208fa and rm_val == 3  #nosat<br>                                                                                              |[0x80001804]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001808]:csrrs a7, fflags, zero<br> [0x8000180c]:fsd fa2, 928(a5)<br>   |
| 187|[0x800062b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc9eec489f6667 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc9eec489f6667 and rm_val == 3  #nosat<br>                                                                                              |[0x80001820]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001824]:csrrs a7, fflags, zero<br> [0x80001828]:fsd fa2, 944(a5)<br>   |
| 188|[0x800062c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3526172ae3f6b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3526172ae3f6b and rm_val == 3  #nosat<br>                                                                                              |[0x8000183c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001840]:csrrs a7, fflags, zero<br> [0x80001844]:fsd fa2, 960(a5)<br>   |
| 189|[0x800062d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x66315a9fdae1d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x66315a9fdae1d and rm_val == 3  #nosat<br>                                                                                              |[0x80001858]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000185c]:csrrs a7, fflags, zero<br> [0x80001860]:fsd fa2, 976(a5)<br>   |
| 190|[0x800062e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5fe6340fe9dff and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x5fe6340fe9dff and rm_val == 3  #nosat<br>                                                                                              |[0x80001874]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001878]:csrrs a7, fflags, zero<br> [0x8000187c]:fsd fa2, 992(a5)<br>   |
| 191|[0x800062f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xae83ac33105f8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xae83ac33105f8 and rm_val == 3  #nosat<br>                                                                                              |[0x80001890]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001894]:csrrs a7, fflags, zero<br> [0x80001898]:fsd fa2, 1008(a5)<br>  |
| 192|[0x80006300]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd13b901ecb86d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd13b901ecb86d and rm_val == 3  #nosat<br>                                                                                              |[0x800018ac]:fadd.d fa2, fa0, fa1, dyn<br> [0x800018b0]:csrrs a7, fflags, zero<br> [0x800018b4]:fsd fa2, 1024(a5)<br>  |
| 193|[0x80006310]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa8acc80de84a1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa8acc80de84a1 and rm_val == 3  #nosat<br>                                                                                              |[0x800018c8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800018cc]:csrrs a7, fflags, zero<br> [0x800018d0]:fsd fa2, 1040(a5)<br>  |
| 194|[0x80006320]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9cd85f6af39ef and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x9cd85f6af39ef and rm_val == 3  #nosat<br>                                                                                              |[0x800018e4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800018e8]:csrrs a7, fflags, zero<br> [0x800018ec]:fsd fa2, 1056(a5)<br>  |
| 195|[0x80006330]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0bcd3d6ea260a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0bcd3d6ea260a and rm_val == 3  #nosat<br>                                                                                              |[0x80001900]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001904]:csrrs a7, fflags, zero<br> [0x80001908]:fsd fa2, 1072(a5)<br>  |
| 196|[0x80006340]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x8b50ed3b44d4f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x8b50ed3b44d4f and rm_val == 3  #nosat<br>                                                                                              |[0x8000191c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001920]:csrrs a7, fflags, zero<br> [0x80001924]:fsd fa2, 1088(a5)<br>  |
| 197|[0x80006350]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe989c8dd81bc5 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe989c8dd81bc5 and rm_val == 3  #nosat<br>                                                                                              |[0x80001938]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000193c]:csrrs a7, fflags, zero<br> [0x80001940]:fsd fa2, 1104(a5)<br>  |
| 198|[0x80006360]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18d2ef084c097 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18d2ef084c097 and rm_val == 3  #nosat<br>                                                                                              |[0x80001954]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001958]:csrrs a7, fflags, zero<br> [0x8000195c]:fsd fa2, 1120(a5)<br>  |
| 199|[0x80006370]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x287ac6ae322ff and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x287ac6ae322ff and rm_val == 3  #nosat<br>                                                                                              |[0x80001970]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:fsd fa2, 1136(a5)<br>  |
| 200|[0x80006380]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x4f961e264020f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x4f961e264020f and rm_val == 3  #nosat<br>                                                                                              |[0x8000198c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001990]:csrrs a7, fflags, zero<br> [0x80001994]:fsd fa2, 1152(a5)<br>  |
| 201|[0x80006390]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3db72bc24857c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3db72bc24857c and rm_val == 3  #nosat<br>                                                                                              |[0x800019a8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800019ac]:csrrs a7, fflags, zero<br> [0x800019b0]:fsd fa2, 1168(a5)<br>  |
| 202|[0x800063a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6fdf2805ff4db and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6fdf2805ff4db and rm_val == 3  #nosat<br>                                                                                              |[0x800019c4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800019c8]:csrrs a7, fflags, zero<br> [0x800019cc]:fsd fa2, 1184(a5)<br>  |
| 203|[0x800063b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5569022b338ff and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x5569022b338ff and rm_val == 3  #nosat<br>                                                                                              |[0x800019e0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800019e4]:csrrs a7, fflags, zero<br> [0x800019e8]:fsd fa2, 1200(a5)<br>  |
| 204|[0x800063c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x238a22371e9ff and fs2 == 1 and fe2 == 0x7f8 and fm2 == 0x238a22371e9ff and rm_val == 3  #nosat<br>                                                                                              |[0x800019fc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a00]:csrrs a7, fflags, zero<br> [0x80001a04]:fsd fa2, 1216(a5)<br>  |
| 205|[0x800063d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa9aa2b6025f07 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xa9aa2b6025f07 and rm_val == 3  #nosat<br>                                                                                              |[0x80001a18]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a1c]:csrrs a7, fflags, zero<br> [0x80001a20]:fsd fa2, 1232(a5)<br>  |
| 206|[0x800063e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7d6356ef8a62f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x7d6356ef8a62f and rm_val == 3  #nosat<br>                                                                                              |[0x80001a34]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a38]:csrrs a7, fflags, zero<br> [0x80001a3c]:fsd fa2, 1248(a5)<br>  |
| 207|[0x800063f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xce30065d5ac1b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xce30065d5ac1b and rm_val == 3  #nosat<br>                                                                                              |[0x80001a50]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a54]:csrrs a7, fflags, zero<br> [0x80001a58]:fsd fa2, 1264(a5)<br>  |
| 208|[0x80006400]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4f8b971fa5a72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x4f8b971fa5a72 and rm_val == 3  #nosat<br>                                                                                              |[0x80001a6c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a70]:csrrs a7, fflags, zero<br> [0x80001a74]:fsd fa2, 1280(a5)<br>  |
| 209|[0x80006410]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7f8e997d84592 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x7f8e997d84592 and rm_val == 3  #nosat<br>                                                                                              |[0x80001a88]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001a8c]:csrrs a7, fflags, zero<br> [0x80001a90]:fsd fa2, 1296(a5)<br>  |
| 210|[0x80006420]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1d803765d304 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1d803765d304 and rm_val == 3  #nosat<br>                                                                                              |[0x80001aa4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001aa8]:csrrs a7, fflags, zero<br> [0x80001aac]:fsd fa2, 1312(a5)<br>  |
| 211|[0x80006430]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe49bfb977b300 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe49bfb977b300 and rm_val == 3  #nosat<br>                                                                                              |[0x80001ac0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001ac4]:csrrs a7, fflags, zero<br> [0x80001ac8]:fsd fa2, 1328(a5)<br>  |
| 212|[0x80006440]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5cab9bd09e6c4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5cab9bd09e6c4 and rm_val == 3  #nosat<br>                                                                                              |[0x80001adc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001ae0]:csrrs a7, fflags, zero<br> [0x80001ae4]:fsd fa2, 1344(a5)<br>  |
| 213|[0x80006450]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x30526056a01ff and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0x30526056a01ff and rm_val == 3  #nosat<br>                                                                                              |[0x80001af8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001afc]:csrrs a7, fflags, zero<br> [0x80001b00]:fsd fa2, 1360(a5)<br>  |
| 214|[0x80006460]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbe64efc9e258d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbe64efc9e258d and rm_val == 3  #nosat<br>                                                                                              |[0x80001b14]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001b18]:csrrs a7, fflags, zero<br> [0x80001b1c]:fsd fa2, 1376(a5)<br>  |
| 215|[0x80006470]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4d3375e946b52 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x4d3375e946b52 and rm_val == 3  #nosat<br>                                                                                              |[0x80001b30]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001b34]:csrrs a7, fflags, zero<br> [0x80001b38]:fsd fa2, 1392(a5)<br>  |
| 216|[0x80006480]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x113ecba7502a7 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x113ecba7502a7 and rm_val == 3  #nosat<br>                                                                                              |[0x80001b4c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001b50]:csrrs a7, fflags, zero<br> [0x80001b54]:fsd fa2, 1408(a5)<br>  |
| 217|[0x80006490]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x95adca0768ede and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x95adca0768ede and rm_val == 3  #nosat<br>                                                                                              |[0x80001b68]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001b6c]:csrrs a7, fflags, zero<br> [0x80001b70]:fsd fa2, 1424(a5)<br>  |
| 218|[0x800064a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x194e95f4fa0e5 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x194e95f4fa0e5 and rm_val == 3  #nosat<br>                                                                                              |[0x80001b84]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001b88]:csrrs a7, fflags, zero<br> [0x80001b8c]:fsd fa2, 1440(a5)<br>  |
| 219|[0x800064b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x963785d0567a5 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x963785d0567a5 and rm_val == 3  #nosat<br>                                                                                              |[0x80001ba0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001ba4]:csrrs a7, fflags, zero<br> [0x80001ba8]:fsd fa2, 1456(a5)<br>  |
| 220|[0x800064c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9a5710f3828f7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x9a5710f3828f7 and rm_val == 3  #nosat<br>                                                                                              |[0x80001bbc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001bc0]:csrrs a7, fflags, zero<br> [0x80001bc4]:fsd fa2, 1472(a5)<br>  |
| 221|[0x800064d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1eb3cbd822141 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x1eb3cbd822141 and rm_val == 3  #nosat<br>                                                                                              |[0x80001bd8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001bdc]:csrrs a7, fflags, zero<br> [0x80001be0]:fsd fa2, 1488(a5)<br>  |
| 222|[0x800064e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4c6c848cb47df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x4c6c848cb47df and rm_val == 3  #nosat<br>                                                                                              |[0x80001bf4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001bf8]:csrrs a7, fflags, zero<br> [0x80001bfc]:fsd fa2, 1504(a5)<br>  |
| 223|[0x800064f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9086506183f67 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x9086506183f67 and rm_val == 3  #nosat<br>                                                                                              |[0x80001c10]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001c14]:csrrs a7, fflags, zero<br> [0x80001c18]:fsd fa2, 1520(a5)<br>  |
| 224|[0x80006500]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa53d0d2b3faec and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa53d0d2b3faec and rm_val == 3  #nosat<br>                                                                                              |[0x80001c2c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001c30]:csrrs a7, fflags, zero<br> [0x80001c34]:fsd fa2, 1536(a5)<br>  |
| 225|[0x80006510]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6f451c304de2e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6f451c304de2e and rm_val == 3  #nosat<br>                                                                                              |[0x80001c48]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001c4c]:csrrs a7, fflags, zero<br> [0x80001c50]:fsd fa2, 1552(a5)<br>  |
| 226|[0x80006520]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x43c3f0806f2cd and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x43c3f0806f2cd and rm_val == 3  #nosat<br>                                                                                              |[0x80001c64]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001c68]:csrrs a7, fflags, zero<br> [0x80001c6c]:fsd fa2, 1568(a5)<br>  |
| 227|[0x80006530]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9b75de798ac5f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x9b75de798ac5f and rm_val == 3  #nosat<br>                                                                                              |[0x80001c80]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001c84]:csrrs a7, fflags, zero<br> [0x80001c88]:fsd fa2, 1584(a5)<br>  |
| 228|[0x80006540]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x737bdc485a77d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x737bdc485a77d and rm_val == 3  #nosat<br>                                                                                              |[0x80001c9c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001ca0]:csrrs a7, fflags, zero<br> [0x80001ca4]:fsd fa2, 1600(a5)<br>  |
| 229|[0x80006550]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x442435bea0eb5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x442435bea0eb5 and rm_val == 3  #nosat<br>                                                                                              |[0x80001cb8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001cbc]:csrrs a7, fflags, zero<br> [0x80001cc0]:fsd fa2, 1616(a5)<br>  |
| 230|[0x80006560]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8106d28c6e8ff and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x8106d28c6e8ff and rm_val == 3  #nosat<br>                                                                                              |[0x80001cd4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001cd8]:csrrs a7, fflags, zero<br> [0x80001cdc]:fsd fa2, 1632(a5)<br>  |
| 231|[0x80006570]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc00223fe58e9e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc00223fe58e9e and rm_val == 3  #nosat<br>                                                                                              |[0x80001cf0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001cf4]:csrrs a7, fflags, zero<br> [0x80001cf8]:fsd fa2, 1648(a5)<br>  |
| 232|[0x80006580]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xde18ff8661b6b and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xde18ff8661b6b and rm_val == 3  #nosat<br>                                                                                              |[0x80001d0c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001d10]:csrrs a7, fflags, zero<br> [0x80001d14]:fsd fa2, 1664(a5)<br>  |
| 233|[0x80006590]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfa73e129b8879 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xfa73e129b8879 and rm_val == 3  #nosat<br>                                                                                              |[0x80001d28]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001d2c]:csrrs a7, fflags, zero<br> [0x80001d30]:fsd fa2, 1680(a5)<br>  |
| 234|[0x800065a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x82cee64001220 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x82cee64001220 and rm_val == 3  #nosat<br>                                                                                              |[0x80001d44]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001d48]:csrrs a7, fflags, zero<br> [0x80001d4c]:fsd fa2, 1696(a5)<br>  |
| 235|[0x800065b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf2f5c0f43aa65 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xf2f5c0f43aa65 and rm_val == 3  #nosat<br>                                                                                              |[0x80001d60]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001d64]:csrrs a7, fflags, zero<br> [0x80001d68]:fsd fa2, 1712(a5)<br>  |
| 236|[0x800065c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x42f12d7244f4f and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x42f12d7244f4f and rm_val == 3  #nosat<br>                                                                                              |[0x80001d7c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001d80]:csrrs a7, fflags, zero<br> [0x80001d84]:fsd fa2, 1728(a5)<br>  |
| 237|[0x800065d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc80a67882d6d1 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xc80a67882d6d1 and rm_val == 3  #nosat<br>                                                                                              |[0x80001d98]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001d9c]:csrrs a7, fflags, zero<br> [0x80001da0]:fsd fa2, 1744(a5)<br>  |
| 238|[0x800065e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x530b56ed605ac and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x530b56ed605ac and rm_val == 3  #nosat<br>                                                                                              |[0x80001db4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001db8]:csrrs a7, fflags, zero<br> [0x80001dbc]:fsd fa2, 1760(a5)<br>  |
| 239|[0x800065f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6756366451777 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6756366451777 and rm_val == 3  #nosat<br>                                                                                              |[0x80001dd0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001dd4]:csrrs a7, fflags, zero<br> [0x80001dd8]:fsd fa2, 1776(a5)<br>  |
| 240|[0x80006600]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa85a268409ae9 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa85a268409ae9 and rm_val == 3  #nosat<br>                                                                                              |[0x80001dec]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001df0]:csrrs a7, fflags, zero<br> [0x80001df4]:fsd fa2, 1792(a5)<br>  |
| 241|[0x80006610]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc0377eab1f21f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xc0377eab1f21f and rm_val == 3  #nosat<br>                                                                                              |[0x80001e08]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001e0c]:csrrs a7, fflags, zero<br> [0x80001e10]:fsd fa2, 1808(a5)<br>  |
| 242|[0x80006620]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x465936dcae3fb and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x465936dcae3fb and rm_val == 3  #nosat<br>                                                                                              |[0x80001e24]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001e28]:csrrs a7, fflags, zero<br> [0x80001e2c]:fsd fa2, 1824(a5)<br>  |
| 243|[0x80006630]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x566d65947d7e7 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x566d65947d7e7 and rm_val == 3  #nosat<br>                                                                                              |[0x80001e40]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001e44]:csrrs a7, fflags, zero<br> [0x80001e48]:fsd fa2, 1840(a5)<br>  |
| 244|[0x80006640]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x8f90cc1b18bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x8f90cc1b18bff and rm_val == 3  #nosat<br>                                                                                              |[0x80001e5c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001e60]:csrrs a7, fflags, zero<br> [0x80001e64]:fsd fa2, 1856(a5)<br>  |
| 245|[0x80006650]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa85d306a197c5 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xa85d306a197c5 and rm_val == 3  #nosat<br>                                                                                              |[0x80001e78]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001e7c]:csrrs a7, fflags, zero<br> [0x80001e80]:fsd fa2, 1872(a5)<br>  |
| 246|[0x80006660]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6e65a8d3dbea5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x6e65a8d3dbea5 and rm_val == 3  #nosat<br>                                                                                              |[0x80001e94]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001e98]:csrrs a7, fflags, zero<br> [0x80001e9c]:fsd fa2, 1888(a5)<br>  |
| 247|[0x80006670]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x447a9936a43d3 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x447a9936a43d3 and rm_val == 3  #nosat<br>                                                                                              |[0x80001eb0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001eb4]:csrrs a7, fflags, zero<br> [0x80001eb8]:fsd fa2, 1904(a5)<br>  |
| 248|[0x80006680]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6fd2704b8e37f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x6fd2704b8e37f and rm_val == 3  #nosat<br>                                                                                              |[0x80001ecc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001ed0]:csrrs a7, fflags, zero<br> [0x80001ed4]:fsd fa2, 1920(a5)<br>  |
| 249|[0x80006690]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x68add14e18ecb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x68add14e18ecb and rm_val == 3  #nosat<br>                                                                                              |[0x80001ee8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001eec]:csrrs a7, fflags, zero<br> [0x80001ef0]:fsd fa2, 1936(a5)<br>  |
| 250|[0x800066a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xebc97dc31d5a7 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xebc97dc31d5a7 and rm_val == 3  #nosat<br>                                                                                              |[0x80001f04]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001f08]:csrrs a7, fflags, zero<br> [0x80001f0c]:fsd fa2, 1952(a5)<br>  |
| 251|[0x800066b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x76587e2d6216f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x76587e2d6216f and rm_val == 3  #nosat<br>                                                                                              |[0x80001f20]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001f24]:csrrs a7, fflags, zero<br> [0x80001f28]:fsd fa2, 1968(a5)<br>  |
| 252|[0x800066c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7bafa3050f8b7 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x7bafa3050f8b7 and rm_val == 3  #nosat<br>                                                                                              |[0x80001f3c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001f40]:csrrs a7, fflags, zero<br> [0x80001f44]:fsd fa2, 1984(a5)<br>  |
| 253|[0x800066d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1f06fdec36709 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x1f06fdec36709 and rm_val == 3  #nosat<br>                                                                                              |[0x80001f58]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001f5c]:csrrs a7, fflags, zero<br> [0x80001f60]:fsd fa2, 2000(a5)<br>  |
| 254|[0x800066e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xace1ecea16623 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xace1ecea16623 and rm_val == 3  #nosat<br>                                                                                              |[0x80001f74]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001f78]:csrrs a7, fflags, zero<br> [0x80001f7c]:fsd fa2, 2016(a5)<br>  |
| 255|[0x800066f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3eebb35310409 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3eebb35310409 and rm_val == 3  #nosat<br>                                                                                              |[0x80001f9c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001fa0]:csrrs a7, fflags, zero<br> [0x80001fa4]:fsd fa2, 0(a5)<br>     |
| 256|[0x80006700]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2362beb7fcccc and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2362beb7fcccc and rm_val == 3  #nosat<br>                                                                                              |[0x80001fb8]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001fbc]:csrrs a7, fflags, zero<br> [0x80001fc0]:fsd fa2, 16(a5)<br>    |
| 257|[0x80006710]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe2f1c5d734347 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe2f1c5d734347 and rm_val == 3  #nosat<br>                                                                                              |[0x80001fd4]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001fd8]:csrrs a7, fflags, zero<br> [0x80001fdc]:fsd fa2, 32(a5)<br>    |
| 258|[0x80006720]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc4edf85532923 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xc4edf85532923 and rm_val == 3  #nosat<br>                                                                                              |[0x80001ff0]:fadd.d fa2, fa0, fa1, dyn<br> [0x80001ff4]:csrrs a7, fflags, zero<br> [0x80001ff8]:fsd fa2, 48(a5)<br>    |
| 259|[0x80006730]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x00b42e8f00d47 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x00b42e8f00d47 and rm_val == 3  #nosat<br>                                                                                              |[0x8000200c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002010]:csrrs a7, fflags, zero<br> [0x80002014]:fsd fa2, 64(a5)<br>    |
| 260|[0x80006740]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0db7e0a5d748 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0db7e0a5d748 and rm_val == 3  #nosat<br>                                                                                              |[0x80002028]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000202c]:csrrs a7, fflags, zero<br> [0x80002030]:fsd fa2, 80(a5)<br>    |
| 261|[0x80006750]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0xdb8da7279369f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0xdb8da7279369f and rm_val == 3  #nosat<br>                                                                                              |[0x80002044]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002048]:csrrs a7, fflags, zero<br> [0x8000204c]:fsd fa2, 96(a5)<br>    |
| 262|[0x80006760]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5864580d04bef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5864580d04bef and rm_val == 3  #nosat<br>                                                                                              |[0x80002060]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002064]:csrrs a7, fflags, zero<br> [0x80002068]:fsd fa2, 112(a5)<br>   |
| 263|[0x80006770]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd64347e477166 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd64347e477166 and rm_val == 3  #nosat<br>                                                                                              |[0x8000207c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002080]:csrrs a7, fflags, zero<br> [0x80002084]:fsd fa2, 128(a5)<br>   |
| 264|[0x80006780]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x76940d9e18057 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x76940d9e18057 and rm_val == 3  #nosat<br>                                                                                              |[0x80002098]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000209c]:csrrs a7, fflags, zero<br> [0x800020a0]:fsd fa2, 144(a5)<br>   |
| 265|[0x80006790]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9847d9429817b and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x9847d9429817b and rm_val == 3  #nosat<br>                                                                                              |[0x800020b4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800020b8]:csrrs a7, fflags, zero<br> [0x800020bc]:fsd fa2, 160(a5)<br>   |
| 266|[0x800067a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9d5f97660dadf and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x9d5f97660dadf and rm_val == 3  #nosat<br>                                                                                              |[0x800020d0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800020d4]:csrrs a7, fflags, zero<br> [0x800020d8]:fsd fa2, 176(a5)<br>   |
| 267|[0x800067b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x01dca4dde57a5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x01dca4dde57a5 and rm_val == 3  #nosat<br>                                                                                              |[0x800020ec]:fadd.d fa2, fa0, fa1, dyn<br> [0x800020f0]:csrrs a7, fflags, zero<br> [0x800020f4]:fsd fa2, 192(a5)<br>   |
| 268|[0x800067c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x66b37637d118d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x66b37637d118d and rm_val == 3  #nosat<br>                                                                                              |[0x80002108]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000210c]:csrrs a7, fflags, zero<br> [0x80002110]:fsd fa2, 208(a5)<br>   |
| 269|[0x800067d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc44223126cbc7 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xc44223126cbc7 and rm_val == 3  #nosat<br>                                                                                              |[0x80002124]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002128]:csrrs a7, fflags, zero<br> [0x8000212c]:fsd fa2, 224(a5)<br>   |
| 270|[0x800067e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9fbeb1abfb6e7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x9fbeb1abfb6e7 and rm_val == 3  #nosat<br>                                                                                              |[0x80002140]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002144]:csrrs a7, fflags, zero<br> [0x80002148]:fsd fa2, 240(a5)<br>   |
| 271|[0x800067f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x75450c5a9817f and fs2 == 1 and fe2 == 0x7f9 and fm2 == 0x75450c5a9817f and rm_val == 3  #nosat<br>                                                                                              |[0x8000215c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002160]:csrrs a7, fflags, zero<br> [0x80002164]:fsd fa2, 256(a5)<br>   |
| 272|[0x80006800]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x99fb7503e8d08 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x99fb7503e8d08 and rm_val == 3  #nosat<br>                                                                                              |[0x80002178]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000217c]:csrrs a7, fflags, zero<br> [0x80002180]:fsd fa2, 272(a5)<br>   |
| 273|[0x80006810]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xfb797ef55e1cf and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xfb797ef55e1cf and rm_val == 3  #nosat<br>                                                                                              |[0x80002194]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002198]:csrrs a7, fflags, zero<br> [0x8000219c]:fsd fa2, 288(a5)<br>   |
| 274|[0x80006820]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xec0c4abe1fd0e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xec0c4abe1fd0e and rm_val == 3  #nosat<br>                                                                                              |[0x800021b0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800021b4]:csrrs a7, fflags, zero<br> [0x800021b8]:fsd fa2, 304(a5)<br>   |
| 275|[0x80006830]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x2a1fa26c0948f and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x2a1fa26c0948f and rm_val == 3  #nosat<br>                                                                                              |[0x800021cc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800021d0]:csrrs a7, fflags, zero<br> [0x800021d4]:fsd fa2, 320(a5)<br>   |
| 276|[0x80006840]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7b05f6eabb69f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x7b05f6eabb69f and rm_val == 3  #nosat<br>                                                                                              |[0x800021e8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800021ec]:csrrs a7, fflags, zero<br> [0x800021f0]:fsd fa2, 336(a5)<br>   |
| 277|[0x80006850]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26e34e07a9172 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26e34e07a9172 and rm_val == 3  #nosat<br>                                                                                              |[0x80002204]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002208]:csrrs a7, fflags, zero<br> [0x8000220c]:fsd fa2, 352(a5)<br>   |
| 278|[0x80006860]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x451eb54c10b8b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x451eb54c10b8b and rm_val == 3  #nosat<br>                                                                                              |[0x80002220]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002224]:csrrs a7, fflags, zero<br> [0x80002228]:fsd fa2, 368(a5)<br>   |
| 279|[0x80006870]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5c762dc4bc5d6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x5c762dc4bc5d6 and rm_val == 3  #nosat<br>                                                                                              |[0x8000223c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002240]:csrrs a7, fflags, zero<br> [0x80002244]:fsd fa2, 384(a5)<br>   |
| 280|[0x80006880]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ed9e7beff05 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ed9e7beff05 and rm_val == 3  #nosat<br>                                                                                              |[0x80002258]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000225c]:csrrs a7, fflags, zero<br> [0x80002260]:fsd fa2, 400(a5)<br>   |
| 281|[0x80006890]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x728eb744bb2ef and fs2 == 1 and fe2 == 0x7fa and fm2 == 0x728eb744bb2ef and rm_val == 3  #nosat<br>                                                                                              |[0x80002274]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002278]:csrrs a7, fflags, zero<br> [0x8000227c]:fsd fa2, 416(a5)<br>   |
| 282|[0x800068a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2bbdffdaf66c3 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x2bbdffdaf66c3 and rm_val == 3  #nosat<br>                                                                                              |[0x80002290]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002294]:csrrs a7, fflags, zero<br> [0x80002298]:fsd fa2, 432(a5)<br>   |
| 283|[0x800068b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa1bf5c83faf60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa1bf5c83faf60 and rm_val == 3  #nosat<br>                                                                                              |[0x800022ac]:fadd.d fa2, fa0, fa1, dyn<br> [0x800022b0]:csrrs a7, fflags, zero<br> [0x800022b4]:fsd fa2, 448(a5)<br>   |
| 284|[0x800068c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x96d3944ae92c5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x96d3944ae92c5 and rm_val == 3  #nosat<br>                                                                                              |[0x800022c8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800022cc]:csrrs a7, fflags, zero<br> [0x800022d0]:fsd fa2, 464(a5)<br>   |
| 285|[0x800068d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xdfc83569216bf and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xdfc83569216bf and rm_val == 3  #nosat<br>                                                                                              |[0x800022e4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800022e8]:csrrs a7, fflags, zero<br> [0x800022ec]:fsd fa2, 480(a5)<br>   |
| 286|[0x800068e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf1bca90426463 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xf1bca90426463 and rm_val == 3  #nosat<br>                                                                                              |[0x80002300]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002304]:csrrs a7, fflags, zero<br> [0x80002308]:fsd fa2, 496(a5)<br>   |
| 287|[0x800068f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x42a2ac1575123 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x42a2ac1575123 and rm_val == 3  #nosat<br>                                                                                              |[0x8000231c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002320]:csrrs a7, fflags, zero<br> [0x80002324]:fsd fa2, 512(a5)<br>   |
| 288|[0x80006900]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39beb50761e3d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39beb50761e3d and rm_val == 3  #nosat<br>                                                                                              |[0x80002338]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000233c]:csrrs a7, fflags, zero<br> [0x80002340]:fsd fa2, 528(a5)<br>   |
| 289|[0x80006910]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x962eb496df1c1 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x962eb496df1c1 and rm_val == 3  #nosat<br>                                                                                              |[0x80002354]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002358]:csrrs a7, fflags, zero<br> [0x8000235c]:fsd fa2, 544(a5)<br>   |
| 290|[0x80006920]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfe1581ecd07ea and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xfe1581ecd07ea and rm_val == 3  #nosat<br>                                                                                              |[0x80002370]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002374]:csrrs a7, fflags, zero<br> [0x80002378]:fsd fa2, 560(a5)<br>   |
| 291|[0x80006930]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xcd606a3f0f54d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xcd606a3f0f54d and rm_val == 3  #nosat<br>                                                                                              |[0x8000238c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002390]:csrrs a7, fflags, zero<br> [0x80002394]:fsd fa2, 576(a5)<br>   |
| 292|[0x80006940]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe64794dad7d48 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xe64794dad7d48 and rm_val == 3  #nosat<br>                                                                                              |[0x800023a8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800023ac]:csrrs a7, fflags, zero<br> [0x800023b0]:fsd fa2, 592(a5)<br>   |
| 293|[0x80006950]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xca428c2b7c81f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xca428c2b7c81f and rm_val == 3  #nosat<br>                                                                                              |[0x800023c4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800023c8]:csrrs a7, fflags, zero<br> [0x800023cc]:fsd fa2, 608(a5)<br>   |
| 294|[0x80006960]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9f8dcc4f1275c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9f8dcc4f1275c and rm_val == 3  #nosat<br>                                                                                              |[0x800023e0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800023e4]:csrrs a7, fflags, zero<br> [0x800023e8]:fsd fa2, 624(a5)<br>   |
| 295|[0x80006970]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x691ae7e1929e8 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x691ae7e1929e8 and rm_val == 3  #nosat<br>                                                                                              |[0x800023fc]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002400]:csrrs a7, fflags, zero<br> [0x80002404]:fsd fa2, 640(a5)<br>   |
| 296|[0x80006980]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x14c9836bbe6ff and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x14c9836bbe6ff and rm_val == 3  #nosat<br>                                                                                              |[0x80002418]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000241c]:csrrs a7, fflags, zero<br> [0x80002420]:fsd fa2, 656(a5)<br>   |
| 297|[0x80006990]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcbdd58ecc1b45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcbdd58ecc1b45 and rm_val == 3  #nosat<br>                                                                                              |[0x80002434]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002438]:csrrs a7, fflags, zero<br> [0x8000243c]:fsd fa2, 672(a5)<br>   |
| 298|[0x800069a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd8c56582791a6 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd8c56582791a6 and rm_val == 3  #nosat<br>                                                                                              |[0x80002450]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002454]:csrrs a7, fflags, zero<br> [0x80002458]:fsd fa2, 688(a5)<br>   |
| 299|[0x800069b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x83e4a9485598d and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x83e4a9485598d and rm_val == 3  #nosat<br>                                                                                              |[0x8000246c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002470]:csrrs a7, fflags, zero<br> [0x80002474]:fsd fa2, 704(a5)<br>   |
| 300|[0x800069c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe7f7bd88d7c8f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe7f7bd88d7c8f and rm_val == 3  #nosat<br>                                                                                              |[0x80002488]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000248c]:csrrs a7, fflags, zero<br> [0x80002490]:fsd fa2, 720(a5)<br>   |
| 301|[0x800069d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39bd67fecd9d5 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x39bd67fecd9d5 and rm_val == 3  #nosat<br>                                                                                              |[0x800024a4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800024a8]:csrrs a7, fflags, zero<br> [0x800024ac]:fsd fa2, 736(a5)<br>   |
| 302|[0x800069e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x83df99d24bacb and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x83df99d24bacb and rm_val == 3  #nosat<br>                                                                                              |[0x800024c0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800024c4]:csrrs a7, fflags, zero<br> [0x800024c8]:fsd fa2, 752(a5)<br>   |
| 303|[0x800069f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x26bbbacf7eaef and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x26bbbacf7eaef and rm_val == 3  #nosat<br>                                                                                              |[0x800024dc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800024e0]:csrrs a7, fflags, zero<br> [0x800024e4]:fsd fa2, 768(a5)<br>   |
| 304|[0x80006a00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x314c82f3115df and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x314c82f3115df and rm_val == 3  #nosat<br>                                                                                              |[0x800024f8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800024fc]:csrrs a7, fflags, zero<br> [0x80002500]:fsd fa2, 784(a5)<br>   |
| 305|[0x80006a10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2cdc24d268f9f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x2cdc24d268f9f and rm_val == 3  #nosat<br>                                                                                              |[0x80002514]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002518]:csrrs a7, fflags, zero<br> [0x8000251c]:fsd fa2, 800(a5)<br>   |
| 306|[0x80006a20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed7c3ef329d04 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xed7c3ef329d04 and rm_val == 3  #nosat<br>                                                                                              |[0x80002530]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002534]:csrrs a7, fflags, zero<br> [0x80002538]:fsd fa2, 816(a5)<br>   |
| 307|[0x80006a30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa101ccfb0623a and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa101ccfb0623a and rm_val == 3  #nosat<br>                                                                                              |[0x8000254c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002550]:csrrs a7, fflags, zero<br> [0x80002554]:fsd fa2, 832(a5)<br>   |
| 308|[0x80006a40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x69c26ac7fce60 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x69c26ac7fce60 and rm_val == 3  #nosat<br>                                                                                              |[0x80002568]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000256c]:csrrs a7, fflags, zero<br> [0x80002570]:fsd fa2, 848(a5)<br>   |
| 309|[0x80006a50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbeb3709a573b7 and fs2 == 1 and fe2 == 0x7fb and fm2 == 0xbeb3709a573b7 and rm_val == 3  #nosat<br>                                                                                              |[0x80002584]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002588]:csrrs a7, fflags, zero<br> [0x8000258c]:fsd fa2, 864(a5)<br>   |
| 310|[0x80006a60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0410cbbfdec45 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x0410cbbfdec45 and rm_val == 3  #nosat<br>                                                                                              |[0x800025a0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800025a4]:csrrs a7, fflags, zero<br> [0x800025a8]:fsd fa2, 880(a5)<br>   |
| 311|[0x80006a70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x49818dfc8788f and fs2 == 1 and fe2 == 0x7fb and fm2 == 0x49818dfc8788f and rm_val == 3  #nosat<br>                                                                                              |[0x800025bc]:fadd.d fa2, fa0, fa1, dyn<br> [0x800025c0]:csrrs a7, fflags, zero<br> [0x800025c4]:fsd fa2, 896(a5)<br>   |
| 312|[0x80006a80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b3a56e2c058e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9b3a56e2c058e and rm_val == 3  #nosat<br>                                                                                              |[0x800025d8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800025dc]:csrrs a7, fflags, zero<br> [0x800025e0]:fsd fa2, 912(a5)<br>   |
| 313|[0x80006a90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe8af77cda8053 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0xe8af77cda8053 and rm_val == 3  #nosat<br>                                                                                              |[0x800025f4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800025f8]:csrrs a7, fflags, zero<br> [0x800025fc]:fsd fa2, 928(a5)<br>   |
| 314|[0x80006aa0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x874e2eeac1c13 and fs2 == 1 and fe2 == 0x7fc and fm2 == 0x874e2eeac1c13 and rm_val == 3  #nosat<br>                                                                                              |[0x80002610]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002614]:csrrs a7, fflags, zero<br> [0x80002618]:fsd fa2, 944(a5)<br>   |
| 315|[0x80006ab0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d025f5a10f55 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x4d025f5a10f55 and rm_val == 3  #nosat<br>                                                                                              |[0x8000262c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002630]:csrrs a7, fflags, zero<br> [0x80002634]:fsd fa2, 960(a5)<br>   |
| 316|[0x80006ac0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc366e555215f and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xbc366e555215f and rm_val == 3  #nosat<br>                                                                                              |[0x80002648]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000264c]:csrrs a7, fflags, zero<br> [0x80002650]:fsd fa2, 976(a5)<br>   |
| 317|[0x80006ad0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0x2b954e52a4bff and fs2 == 1 and fe2 == 0x7f5 and fm2 == 0x2b954e52a4bff and rm_val == 3  #nosat<br>                                                                                              |[0x80002664]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002668]:csrrs a7, fflags, zero<br> [0x8000266c]:fsd fa2, 992(a5)<br>   |
| 318|[0x80006ae0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa65214b23e38e and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xa65214b23e38e and rm_val == 3  #nosat<br>                                                                                              |[0x80002680]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002684]:csrrs a7, fflags, zero<br> [0x80002688]:fsd fa2, 1008(a5)<br>  |
| 319|[0x80006af0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x707d21f5c40de and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x707d21f5c40de and rm_val == 3  #nosat<br>                                                                                              |[0x8000269c]:fadd.d fa2, fa0, fa1, dyn<br> [0x800026a0]:csrrs a7, fflags, zero<br> [0x800026a4]:fsd fa2, 1024(a5)<br>  |
| 320|[0x80006b00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ef1d7a9fa74 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x18ef1d7a9fa74 and rm_val == 3  #nosat<br>                                                                                              |[0x800026b8]:fadd.d fa2, fa0, fa1, dyn<br> [0x800026bc]:csrrs a7, fflags, zero<br> [0x800026c0]:fsd fa2, 1040(a5)<br>  |
| 321|[0x80006b10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0abe7f07f8c6f and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x0abe7f07f8c6f and rm_val == 3  #nosat<br>                                                                                              |[0x800026d4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800026d8]:csrrs a7, fflags, zero<br> [0x800026dc]:fsd fa2, 1056(a5)<br>  |
| 322|[0x80006b20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe8754038aa2cf and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe8754038aa2cf and rm_val == 3  #nosat<br>                                                                                              |[0x800026f0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800026f4]:csrrs a7, fflags, zero<br> [0x800026f8]:fsd fa2, 1072(a5)<br>  |
| 323|[0x80006b30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3762f4d1629c and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd3762f4d1629c and rm_val == 3  #nosat<br>                                                                                              |[0x8000270c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002710]:csrrs a7, fflags, zero<br> [0x80002714]:fsd fa2, 1088(a5)<br>  |
| 324|[0x80006b40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc978aa879221 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xbc978aa879221 and rm_val == 3  #nosat<br>                                                                                              |[0x80002728]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000272c]:csrrs a7, fflags, zero<br> [0x80002730]:fsd fa2, 1104(a5)<br>  |
| 325|[0x80006b50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe3796147a7f97 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe3796147a7f97 and rm_val == 3  #nosat<br>                                                                                              |[0x80002744]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002748]:csrrs a7, fflags, zero<br> [0x8000274c]:fsd fa2, 1120(a5)<br>  |
| 326|[0x80006b60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc3488366e29b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xcc3488366e29b and rm_val == 3  #nosat<br>                                                                                              |[0x80002760]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002764]:csrrs a7, fflags, zero<br> [0x80002768]:fsd fa2, 1136(a5)<br>  |
| 327|[0x80006b70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3d97530ca446d and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x3d97530ca446d and rm_val == 3  #nosat<br>                                                                                              |[0x8000277c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002780]:csrrs a7, fflags, zero<br> [0x80002784]:fsd fa2, 1152(a5)<br>  |
| 328|[0x80006b80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9ed4cb2685903 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x9ed4cb2685903 and rm_val == 3  #nosat<br>                                                                                              |[0x80002798]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000279c]:csrrs a7, fflags, zero<br> [0x800027a0]:fsd fa2, 1168(a5)<br>  |
| 329|[0x80006b90]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd1ca42e21585b and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd1ca42e21585b and rm_val == 3  #nosat<br>                                                                                              |[0x800027b4]:fadd.d fa2, fa0, fa1, dyn<br> [0x800027b8]:csrrs a7, fflags, zero<br> [0x800027bc]:fsd fa2, 1184(a5)<br>  |
| 330|[0x80006ba0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c9adc7329695 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x3c9adc7329695 and rm_val == 3  #nosat<br>                                                                                              |[0x800027d0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800027d4]:csrrs a7, fflags, zero<br> [0x800027d8]:fsd fa2, 1200(a5)<br>  |
| 331|[0x80006bb0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x209a1991e3307 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0x209a1991e3307 and rm_val == 3  #nosat<br>                                                                                              |[0x800027ec]:fadd.d fa2, fa0, fa1, dyn<br> [0x800027f0]:csrrs a7, fflags, zero<br> [0x800027f4]:fsd fa2, 1216(a5)<br>  |
| 332|[0x80006bc0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd0f42c0dfaf72 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xd0f42c0dfaf72 and rm_val == 3  #nosat<br>                                                                                              |[0x80002808]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000280c]:csrrs a7, fflags, zero<br> [0x80002810]:fsd fa2, 1232(a5)<br>  |
| 333|[0x80006bd0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe809082dd48fb and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xe809082dd48fb and rm_val == 3  #nosat<br>                                                                                              |[0x80002824]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002828]:csrrs a7, fflags, zero<br> [0x8000282c]:fsd fa2, 1248(a5)<br>  |
| 334|[0x80006be0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x914e0c751c4f4 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x914e0c751c4f4 and rm_val == 3  #nosat<br>                                                                                              |[0x80002840]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002844]:csrrs a7, fflags, zero<br> [0x80002848]:fsd fa2, 1264(a5)<br>  |
| 335|[0x80006bf0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x05c5ccdf19706 and fs2 == 1 and fe2 == 0x7fe and fm2 == 0x05c5ccdf19706 and rm_val == 3  #nosat<br>                                                                                              |[0x8000285c]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002860]:csrrs a7, fflags, zero<br> [0x80002864]:fsd fa2, 1280(a5)<br>  |
| 336|[0x80006c00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeaa51052e977 and fs2 == 1 and fe2 == 0x7fd and fm2 == 0xaeaa51052e977 and rm_val == 3  #nosat<br>                                                                                              |[0x80002878]:fadd.d fa2, fa0, fa1, dyn<br> [0x8000287c]:csrrs a7, fflags, zero<br> [0x80002880]:fsd fa2, 1296(a5)<br>  |
| 337|[0x80006c10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb0580f98a7dbd and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xb0580f98a7dbd and rm_val == 3  #nosat<br>                                                                                              |[0x80002894]:fadd.d fa2, fa0, fa1, dyn<br> [0x80002898]:csrrs a7, fflags, zero<br> [0x8000289c]:fsd fa2, 1312(a5)<br>  |
| 338|[0x80006c20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xffd6ba914d0ca and fs2 == 1 and fe2 == 0x7fe and fm2 == 0xffd6ba914d0ca and rm_val == 3  #nosat<br>                                                                                              |[0x800028b0]:fadd.d fa2, fa0, fa1, dyn<br> [0x800028b4]:csrrs a7, fflags, zero<br> [0x800028b8]:fsd fa2, 1328(a5)<br>  |
