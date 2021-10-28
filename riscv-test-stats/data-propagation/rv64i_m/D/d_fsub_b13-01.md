
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800019e0')]      |
| SIG_REGION                | [('0x80003e10', '0x80004ab0', '404 dwords')]      |
| COV_LABELS                | fsub_b13      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fsub_b13-01.S/ref.S    |
| Total Number of coverpoints| 308     |
| Total Coverpoints Hit     | 302      |
| Total Signature Updates   | 404      |
| STAT1                     | 200      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 202     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019a8]:fsub.d fa2, fa0, fa1, dyn
      [0x800019ac]:csrrs a7, fflags, zero
      [0x800019b0]:fsd fa2, 1168(a5)
 -- Signature Address: 0x80004a90 Data: 0xD5BFDDB7D5BFDDB7
 -- Redundant Coverpoints hit by the op
      - opcode : fsub.d
      - rs1 : f10
      - rs2 : f11
      - rd : f12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa623d9ab2139f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xa623d9ab2139f and rm_val == 0  #nosat




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019c4]:fsub.d fa2, fa0, fa1, dyn
      [0x800019c8]:csrrs a7, fflags, zero
      [0x800019cc]:fsd fa2, 1184(a5)
 -- Signature Address: 0x80004aa0 Data: 0xD5BFDDB7D5BFDDB7
 -- Redundant Coverpoints hit by the op
      - opcode : fsub.d
      - rs1 : f10
      - rs2 : f11
      - rd : f12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5f7ea628e7311 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x5f7ea628e7311 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fsub.d', 'rs1 : f24', 'rs2 : f21', 'rd : f21', 'rs2 == rd != rs1', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0x132d8f91b7583 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x132d8f91b7583 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003bc]:fsub.d fs5, fs8, fs5, dyn
	-[0x800003c0]:csrrs a7, fflags, zero
	-[0x800003c4]:fsd fs5, 0(a5)
Current Store : [0x800003c8] : sd a7, 8(a5) -- Store: [0x80003e18]:0x0000000000000000




Last Coverpoint : ['rs1 : f3', 'rs2 : f3', 'rd : f3', 'rs1 == rs2 == rd', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa623d9ab2139f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xa623d9ab2139f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d8]:fsub.d ft3, ft3, ft3, dyn
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:fsd ft3, 16(a5)
Current Store : [0x800003e4] : sd a7, 24(a5) -- Store: [0x80003e28]:0x0000000000000000




Last Coverpoint : ['rs1 : f22', 'rs2 : f0', 'rd : f31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xea51987a6fe4b and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xea51987a6fe4b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003f4]:fsub.d ft11, fs6, ft0, dyn
	-[0x800003f8]:csrrs a7, fflags, zero
	-[0x800003fc]:fsd ft11, 32(a5)
Current Store : [0x80000400] : sd a7, 40(a5) -- Store: [0x80003e38]:0x0000000000000000




Last Coverpoint : ['rs1 : f29', 'rs2 : f2', 'rd : f29', 'rs1 == rd != rs2', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe830fb501fc6b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xe830fb501fc6b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000410]:fsub.d ft9, ft9, ft2, dyn
	-[0x80000414]:csrrs a7, fflags, zero
	-[0x80000418]:fsd ft9, 48(a5)
Current Store : [0x8000041c] : sd a7, 56(a5) -- Store: [0x80003e48]:0x0000000000000000




Last Coverpoint : ['rs1 : f31', 'rs2 : f31', 'rd : f20', 'rs1 == rs2 != rd', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5f7ea628e7311 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x5f7ea628e7311 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000042c]:fsub.d fs4, ft11, ft11, dyn
	-[0x80000430]:csrrs a7, fflags, zero
	-[0x80000434]:fsd fs4, 64(a5)
Current Store : [0x80000438] : sd a7, 72(a5) -- Store: [0x80003e58]:0x0000000000000000




Last Coverpoint : ['rs1 : f17', 'rs2 : f16', 'rd : f0', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4c34b3fae86a6 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x4c34b3fae86a6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fsub.d ft0, fa7, fa6, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd ft0, 80(a5)
Current Store : [0x80000454] : sd a7, 88(a5) -- Store: [0x80003e68]:0x0000000000000000




Last Coverpoint : ['rs1 : f15', 'rs2 : f7', 'rd : f19', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0eb1fe944dafc and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x0eb1fe944dafc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000464]:fsub.d fs3, fa5, ft7, dyn
	-[0x80000468]:csrrs a7, fflags, zero
	-[0x8000046c]:fsd fs3, 96(a5)
Current Store : [0x80000470] : sd a7, 104(a5) -- Store: [0x80003e78]:0x0000000000000000




Last Coverpoint : ['rs1 : f13', 'rs2 : f4', 'rd : f28', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0xde44cb7c6a477 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xde44cb7c6a477 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000480]:fsub.d ft8, fa3, ft4, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd ft8, 112(a5)
Current Store : [0x8000048c] : sd a7, 120(a5) -- Store: [0x80003e88]:0x0000000000000000




Last Coverpoint : ['rs1 : f25', 'rs2 : f29', 'rd : f15', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9ab5479609cdf and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x9ab5479609cdf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000049c]:fsub.d fa5, fs9, ft9, dyn
	-[0x800004a0]:csrrs a7, fflags, zero
	-[0x800004a4]:fsd fa5, 128(a5)
Current Store : [0x800004a8] : sd a7, 136(a5) -- Store: [0x80003e98]:0x0000000000000000




Last Coverpoint : ['rs1 : f18', 'rs2 : f8', 'rd : f27', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa86a1651b8f6d and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xa86a1651b8f6d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004b8]:fsub.d fs11, fs2, fs0, dyn
	-[0x800004bc]:csrrs a7, fflags, zero
	-[0x800004c0]:fsd fs11, 144(a5)
Current Store : [0x800004c4] : sd a7, 152(a5) -- Store: [0x80003ea8]:0x0000000000000000




Last Coverpoint : ['rs1 : f26', 'rs2 : f17', 'rd : f1', 'fs1 == 0 and fe1 == 0x7fc and fm1 == 0x0043a4237475b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x0043a4237475b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d4]:fsub.d ft1, fs10, fa7, dyn
	-[0x800004d8]:csrrs a7, fflags, zero
	-[0x800004dc]:fsd ft1, 160(a5)
Current Store : [0x800004e0] : sd a7, 168(a5) -- Store: [0x80003eb8]:0x0000000000000000




Last Coverpoint : ['rs1 : f30', 'rs2 : f19', 'rd : f13', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6b764b4a3fc09 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x6b764b4a3fc09 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fsub.d fa3, ft10, fs3, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd fa3, 176(a5)
Current Store : [0x800004fc] : sd a7, 184(a5) -- Store: [0x80003ec8]:0x0000000000000000




Last Coverpoint : ['rs1 : f16', 'rs2 : f30', 'rd : f25', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x242628c135d65 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x242628c135d65 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000050c]:fsub.d fs9, fa6, ft10, dyn
	-[0x80000510]:csrrs a7, fflags, zero
	-[0x80000514]:fsd fs9, 192(a5)
Current Store : [0x80000518] : sd a7, 200(a5) -- Store: [0x80003ed8]:0x0000000000000000




Last Coverpoint : ['rs1 : f0', 'rs2 : f25', 'rd : f6', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4afa083bb05d4 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x4afa083bb05d4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000528]:fsub.d ft6, ft0, fs9, dyn
	-[0x8000052c]:csrrs a7, fflags, zero
	-[0x80000530]:fsd ft6, 208(a5)
Current Store : [0x80000534] : sd a7, 216(a5) -- Store: [0x80003ee8]:0x0000000000000000




Last Coverpoint : ['rs1 : f2', 'rs2 : f26', 'rd : f4', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x08290cbe2e23f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x08290cbe2e23f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000544]:fsub.d ft4, ft2, fs10, dyn
	-[0x80000548]:csrrs a7, fflags, zero
	-[0x8000054c]:fsd ft4, 224(a5)
Current Store : [0x80000550] : sd a7, 232(a5) -- Store: [0x80003ef8]:0x0000000000000000




Last Coverpoint : ['rs1 : f21', 'rs2 : f18', 'rd : f11', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x95351e6b0b955 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x95351e6b0b955 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fsub.d fa1, fs5, fs2, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd fa1, 240(a5)
Current Store : [0x8000056c] : sd a7, 248(a5) -- Store: [0x80003f08]:0x0000000000000000




Last Coverpoint : ['rs1 : f27', 'rs2 : f13', 'rd : f16', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb3dca1e26f92c and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xb3dca1e26f92c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000057c]:fsub.d fa6, fs11, fa3, dyn
	-[0x80000580]:csrrs a7, fflags, zero
	-[0x80000584]:fsd fa6, 256(a5)
Current Store : [0x80000588] : sd a7, 264(a5) -- Store: [0x80003f18]:0x0000000000000000




Last Coverpoint : ['rs1 : f6', 'rs2 : f12', 'rd : f30', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1939e8900399e and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x1939e8900399e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fsub.d ft10, ft6, fa2, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd ft10, 272(a5)
Current Store : [0x800005a4] : sd a7, 280(a5) -- Store: [0x80003f28]:0x0000000000000000




Last Coverpoint : ['rs1 : f1', 'rs2 : f9', 'rd : f17', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed40ea1c96a68 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xed40ea1c96a68 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b4]:fsub.d fa7, ft1, fs1, dyn
	-[0x800005b8]:csrrs a7, fflags, zero
	-[0x800005bc]:fsd fa7, 288(a5)
Current Store : [0x800005c0] : sd a7, 296(a5) -- Store: [0x80003f38]:0x0000000000000000




Last Coverpoint : ['rs1 : f9', 'rs2 : f5', 'rd : f22', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x02a602e38e2e5 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x02a602e38e2e5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005d0]:fsub.d fs6, fs1, ft5, dyn
	-[0x800005d4]:csrrs a7, fflags, zero
	-[0x800005d8]:fsd fs6, 304(a5)
Current Store : [0x800005dc] : sd a7, 312(a5) -- Store: [0x80003f48]:0x0000000000000000




Last Coverpoint : ['rs1 : f28', 'rs2 : f24', 'rd : f18', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6dfd78772ca12 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x6dfd78772ca12 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005ec]:fsub.d fs2, ft8, fs8, dyn
	-[0x800005f0]:csrrs a7, fflags, zero
	-[0x800005f4]:fsd fs2, 320(a5)
Current Store : [0x800005f8] : sd a7, 328(a5) -- Store: [0x80003f58]:0x0000000000000000




Last Coverpoint : ['rs1 : f4', 'rs2 : f14', 'rd : f2', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbb0574c4cc8c3 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xbb0574c4cc8c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000608]:fsub.d ft2, ft4, fa4, dyn
	-[0x8000060c]:csrrs a7, fflags, zero
	-[0x80000610]:fsd ft2, 336(a5)
Current Store : [0x80000614] : sd a7, 344(a5) -- Store: [0x80003f68]:0x0000000000000000




Last Coverpoint : ['rs1 : f7', 'rs2 : f1', 'rd : f24', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x61129e8d25d53 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x61129e8d25d53 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000624]:fsub.d fs8, ft7, ft1, dyn
	-[0x80000628]:csrrs a7, fflags, zero
	-[0x8000062c]:fsd fs8, 352(a5)
Current Store : [0x80000630] : sd a7, 360(a5) -- Store: [0x80003f78]:0x0000000000000000




Last Coverpoint : ['rs1 : f10', 'rs2 : f15', 'rd : f26', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xae72a87c61e34 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xae72a87c61e34 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fsub.d fs10, fa0, fa5, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fs10, 368(a5)
Current Store : [0x8000064c] : sd a7, 376(a5) -- Store: [0x80003f88]:0x0000000000000000




Last Coverpoint : ['rs1 : f20', 'rs2 : f28', 'rd : f23', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b930ceb054c0 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x9b930ceb054c0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000065c]:fsub.d fs7, fs4, ft8, dyn
	-[0x80000660]:csrrs a7, fflags, zero
	-[0x80000664]:fsd fs7, 384(a5)
Current Store : [0x80000668] : sd a7, 392(a5) -- Store: [0x80003f98]:0x0000000000000000




Last Coverpoint : ['rs1 : f23', 'rs2 : f10', 'rd : f8', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x43a781e917815 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x43a781e917815 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000678]:fsub.d fs0, fs7, fa0, dyn
	-[0x8000067c]:csrrs a7, fflags, zero
	-[0x80000680]:fsd fs0, 400(a5)
Current Store : [0x80000684] : sd a7, 408(a5) -- Store: [0x80003fa8]:0x0000000000000000




Last Coverpoint : ['rs1 : f14', 'rs2 : f11', 'rd : f7', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd22aa76e3f8bc and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd22aa76e3f8bc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000694]:fsub.d ft7, fa4, fa1, dyn
	-[0x80000698]:csrrs a7, fflags, zero
	-[0x8000069c]:fsd ft7, 416(a5)
Current Store : [0x800006a0] : sd a7, 424(a5) -- Store: [0x80003fb8]:0x0000000000000000




Last Coverpoint : ['rs1 : f19', 'rs2 : f20', 'rd : f9', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc99ac0cd3b3ca and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc99ac0cd3b3ca and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b0]:fsub.d fs1, fs3, fs4, dyn
	-[0x800006b4]:csrrs a7, fflags, zero
	-[0x800006b8]:fsd fs1, 432(a5)
Current Store : [0x800006bc] : sd a7, 440(a5) -- Store: [0x80003fc8]:0x0000000000000000




Last Coverpoint : ['rs1 : f12', 'rs2 : f23', 'rd : f14', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd6b5f3e68568b and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd6b5f3e68568b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006cc]:fsub.d fa4, fa2, fs7, dyn
	-[0x800006d0]:csrrs a7, fflags, zero
	-[0x800006d4]:fsd fa4, 448(a5)
Current Store : [0x800006d8] : sd a7, 456(a5) -- Store: [0x80003fd8]:0x0000000000000000




Last Coverpoint : ['rs1 : f5', 'rs2 : f6', 'rd : f12', 'fs1 == 0 and fe1 == 0x7fb and fm1 == 0xb5c56d6b2c837 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xb5c56d6b2c837 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fsub.d fa2, ft5, ft6, dyn
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd fa2, 464(a5)
Current Store : [0x800006f4] : sd a7, 472(a5) -- Store: [0x80003fe8]:0x0000000000000000




Last Coverpoint : ['rs1 : f11', 'rs2 : f22', 'rd : f5', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa4a2387765198 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xa4a2387765198 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000704]:fsub.d ft5, fa1, fs6, dyn
	-[0x80000708]:csrrs a7, fflags, zero
	-[0x8000070c]:fsd ft5, 480(a5)
Current Store : [0x80000710] : sd a7, 488(a5) -- Store: [0x80003ff8]:0x0000000000000000




Last Coverpoint : ['rs1 : f8', 'rs2 : f27', 'rd : f10', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8d6b438992705 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x8d6b438992705 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000720]:fsub.d fa0, fs0, fs11, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd fa0, 496(a5)
Current Store : [0x8000072c] : sd a7, 504(a5) -- Store: [0x80004008]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe60134aa9369f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xe60134aa9369f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000073c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000740]:csrrs a7, fflags, zero
	-[0x80000744]:fsd fa2, 512(a5)
Current Store : [0x80000748] : sd a7, 520(a5) -- Store: [0x80004018]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x97081394ff7c0 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x97081394ff7c0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000758]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000075c]:csrrs a7, fflags, zero
	-[0x80000760]:fsd fa2, 528(a5)
Current Store : [0x80000764] : sd a7, 536(a5) -- Store: [0x80004028]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x3bc28319d6d6f and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x3bc28319d6d6f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000774]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000778]:csrrs a7, fflags, zero
	-[0x8000077c]:fsd fa2, 544(a5)
Current Store : [0x80000780] : sd a7, 552(a5) -- Store: [0x80004038]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf9196c3c02c3d and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xf9196c3c02c3d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000790]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa2, 560(a5)
Current Store : [0x8000079c] : sd a7, 568(a5) -- Store: [0x80004048]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x29cd1fe017e0f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x29cd1fe017e0f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007ac]:fsub.d fa2, fa0, fa1, dyn
	-[0x800007b0]:csrrs a7, fflags, zero
	-[0x800007b4]:fsd fa2, 576(a5)
Current Store : [0x800007b8] : sd a7, 584(a5) -- Store: [0x80004058]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x33bb4c0b03e47 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x33bb4c0b03e47 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800007cc]:csrrs a7, fflags, zero
	-[0x800007d0]:fsd fa2, 592(a5)
Current Store : [0x800007d4] : sd a7, 600(a5) -- Store: [0x80004068]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1a3782778609c and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x1a3782778609c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007e4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800007e8]:csrrs a7, fflags, zero
	-[0x800007ec]:fsd fa2, 608(a5)
Current Store : [0x800007f0] : sd a7, 616(a5) -- Store: [0x80004078]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf3381366daa33 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xf3381366daa33 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000800]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa2, 624(a5)
Current Store : [0x8000080c] : sd a7, 632(a5) -- Store: [0x80004088]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf5f5f1385c1af and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xf5f5f1385c1af and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000081c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000820]:csrrs a7, fflags, zero
	-[0x80000824]:fsd fa2, 640(a5)
Current Store : [0x80000828] : sd a7, 648(a5) -- Store: [0x80004098]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2870c773af305 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x2870c773af305 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000838]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:fsd fa2, 656(a5)
Current Store : [0x80000844] : sd a7, 664(a5) -- Store: [0x800040a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x565b7f0cebd9f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x565b7f0cebd9f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000854]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000858]:csrrs a7, fflags, zero
	-[0x8000085c]:fsd fa2, 672(a5)
Current Store : [0x80000860] : sd a7, 680(a5) -- Store: [0x800040b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc978dd3af76c1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc978dd3af76c1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000870]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000874]:csrrs a7, fflags, zero
	-[0x80000878]:fsd fa2, 688(a5)
Current Store : [0x8000087c] : sd a7, 696(a5) -- Store: [0x800040c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x445637e5783c3 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x445637e5783c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000088c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000890]:csrrs a7, fflags, zero
	-[0x80000894]:fsd fa2, 704(a5)
Current Store : [0x80000898] : sd a7, 712(a5) -- Store: [0x800040d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3a25a98541333 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x3a25a98541333 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800008ac]:csrrs a7, fflags, zero
	-[0x800008b0]:fsd fa2, 720(a5)
Current Store : [0x800008b4] : sd a7, 728(a5) -- Store: [0x800040e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe1a7f48e8e26b and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xe1a7f48e8e26b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800008c8]:csrrs a7, fflags, zero
	-[0x800008cc]:fsd fa2, 736(a5)
Current Store : [0x800008d0] : sd a7, 744(a5) -- Store: [0x800040f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4dd45324c2409 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x4dd45324c2409 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa2, 752(a5)
Current Store : [0x800008ec] : sd a7, 760(a5) -- Store: [0x80004108]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf77d273035d94 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf77d273035d94 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008fc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000900]:csrrs a7, fflags, zero
	-[0x80000904]:fsd fa2, 768(a5)
Current Store : [0x80000908] : sd a7, 776(a5) -- Store: [0x80004118]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x4d4955a3d407f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x4d4955a3d407f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000918]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000091c]:csrrs a7, fflags, zero
	-[0x80000920]:fsd fa2, 784(a5)
Current Store : [0x80000924] : sd a7, 792(a5) -- Store: [0x80004128]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3ab263197fe7f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x3ab263197fe7f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000934]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000938]:csrrs a7, fflags, zero
	-[0x8000093c]:fsd fa2, 800(a5)
Current Store : [0x80000940] : sd a7, 808(a5) -- Store: [0x80004138]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x094dd69773d7b and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x094dd69773d7b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000950]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000954]:csrrs a7, fflags, zero
	-[0x80000958]:fsd fa2, 816(a5)
Current Store : [0x8000095c] : sd a7, 824(a5) -- Store: [0x80004148]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x605a6a1e02c96 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x605a6a1e02c96 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000096c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000970]:csrrs a7, fflags, zero
	-[0x80000974]:fsd fa2, 832(a5)
Current Store : [0x80000978] : sd a7, 840(a5) -- Store: [0x80004158]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5bc627909931 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf5bc627909931 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000988]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsd fa2, 848(a5)
Current Store : [0x80000994] : sd a7, 856(a5) -- Store: [0x80004168]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xb8b73fc8fea5b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xb8b73fc8fea5b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009a4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800009a8]:csrrs a7, fflags, zero
	-[0x800009ac]:fsd fa2, 864(a5)
Current Store : [0x800009b0] : sd a7, 872(a5) -- Store: [0x80004178]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf0892add2cc6e and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf0892add2cc6e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa2, 880(a5)
Current Store : [0x800009cc] : sd a7, 888(a5) -- Store: [0x80004188]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3a81e544f745 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd3a81e544f745 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009dc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800009e0]:csrrs a7, fflags, zero
	-[0x800009e4]:fsd fa2, 896(a5)
Current Store : [0x800009e8] : sd a7, 904(a5) -- Store: [0x80004198]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x40ccb2b303daf and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x40ccb2b303daf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009f8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800009fc]:csrrs a7, fflags, zero
	-[0x80000a00]:fsd fa2, 912(a5)
Current Store : [0x80000a04] : sd a7, 920(a5) -- Store: [0x800041a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3171b5147eff2 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x3171b5147eff2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a14]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000a18]:csrrs a7, fflags, zero
	-[0x80000a1c]:fsd fa2, 928(a5)
Current Store : [0x80000a20] : sd a7, 936(a5) -- Store: [0x800041b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf715337b3d172 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf715337b3d172 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a30]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000a34]:csrrs a7, fflags, zero
	-[0x80000a38]:fsd fa2, 944(a5)
Current Store : [0x80000a3c] : sd a7, 952(a5) -- Store: [0x800041c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x44919c1beab5f and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x44919c1beab5f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a4c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000a50]:csrrs a7, fflags, zero
	-[0x80000a54]:fsd fa2, 960(a5)
Current Store : [0x80000a58] : sd a7, 968(a5) -- Store: [0x800041d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9a21046a4c767 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x9a21046a4c767 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a68]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000a6c]:csrrs a7, fflags, zero
	-[0x80000a70]:fsd fa2, 976(a5)
Current Store : [0x80000a74] : sd a7, 984(a5) -- Store: [0x800041e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x037df25b16113 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x037df25b16113 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a84]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000a88]:csrrs a7, fflags, zero
	-[0x80000a8c]:fsd fa2, 992(a5)
Current Store : [0x80000a90] : sd a7, 1000(a5) -- Store: [0x800041f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd185a4345fd91 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd185a4345fd91 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa2, 1008(a5)
Current Store : [0x80000aac] : sd a7, 1016(a5) -- Store: [0x80004208]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x835b1de73afa3 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x835b1de73afa3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000abc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000ac0]:csrrs a7, fflags, zero
	-[0x80000ac4]:fsd fa2, 1024(a5)
Current Store : [0x80000ac8] : sd a7, 1032(a5) -- Store: [0x80004218]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xa5356adec5cbf and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xa5356adec5cbf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ad8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000adc]:csrrs a7, fflags, zero
	-[0x80000ae0]:fsd fa2, 1040(a5)
Current Store : [0x80000ae4] : sd a7, 1048(a5) -- Store: [0x80004228]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xee6dc228b09a7 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xee6dc228b09a7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000af4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000af8]:csrrs a7, fflags, zero
	-[0x80000afc]:fsd fa2, 1056(a5)
Current Store : [0x80000b00] : sd a7, 1064(a5) -- Store: [0x80004238]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xd95388e6dd7e7 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xd95388e6dd7e7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b10]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000b14]:csrrs a7, fflags, zero
	-[0x80000b18]:fsd fa2, 1072(a5)
Current Store : [0x80000b1c] : sd a7, 1080(a5) -- Store: [0x80004248]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf9efe9258e03a and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf9efe9258e03a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b2c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000b30]:csrrs a7, fflags, zero
	-[0x80000b34]:fsd fa2, 1088(a5)
Current Store : [0x80000b38] : sd a7, 1096(a5) -- Store: [0x80004258]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x47df70c06ea5f and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x47df70c06ea5f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b48]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000b4c]:csrrs a7, fflags, zero
	-[0x80000b50]:fsd fa2, 1104(a5)
Current Store : [0x80000b54] : sd a7, 1112(a5) -- Store: [0x80004268]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xd775b7a6f9327 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xd775b7a6f9327 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b64]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000b68]:csrrs a7, fflags, zero
	-[0x80000b6c]:fsd fa2, 1120(a5)
Current Store : [0x80000b70] : sd a7, 1128(a5) -- Store: [0x80004278]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x574031c0ee5b5 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x574031c0ee5b5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa2, 1136(a5)
Current Store : [0x80000b8c] : sd a7, 1144(a5) -- Store: [0x80004288]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa7d13a52ed5ec and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xa7d13a52ed5ec and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b9c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000ba0]:csrrs a7, fflags, zero
	-[0x80000ba4]:fsd fa2, 1152(a5)
Current Store : [0x80000ba8] : sd a7, 1160(a5) -- Store: [0x80004298]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1bd5cc8dca1e5 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x1bd5cc8dca1e5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bb8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000bbc]:csrrs a7, fflags, zero
	-[0x80000bc0]:fsd fa2, 1168(a5)
Current Store : [0x80000bc4] : sd a7, 1176(a5) -- Store: [0x800042a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd9a2688750f46 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd9a2688750f46 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bd4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000bd8]:csrrs a7, fflags, zero
	-[0x80000bdc]:fsd fa2, 1184(a5)
Current Store : [0x80000be0] : sd a7, 1192(a5) -- Store: [0x800042b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc812c292ea556 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc812c292ea556 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bf0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000bf4]:csrrs a7, fflags, zero
	-[0x80000bf8]:fsd fa2, 1200(a5)
Current Store : [0x80000bfc] : sd a7, 1208(a5) -- Store: [0x800042c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x4ed205e78cd0f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x4ed205e78cd0f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c0c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c10]:csrrs a7, fflags, zero
	-[0x80000c14]:fsd fa2, 1216(a5)
Current Store : [0x80000c18] : sd a7, 1224(a5) -- Store: [0x800042d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x243d79e337b38 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x243d79e337b38 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c28]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c2c]:csrrs a7, fflags, zero
	-[0x80000c30]:fsd fa2, 1232(a5)
Current Store : [0x80000c34] : sd a7, 1240(a5) -- Store: [0x800042e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9055ab3b464b5 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x9055ab3b464b5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c44]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c48]:csrrs a7, fflags, zero
	-[0x80000c4c]:fsd fa2, 1248(a5)
Current Store : [0x80000c50] : sd a7, 1256(a5) -- Store: [0x800042f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5d14398eae23f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x5d14398eae23f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa2, 1264(a5)
Current Store : [0x80000c6c] : sd a7, 1272(a5) -- Store: [0x80004308]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9383ffc96dd3f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x9383ffc96dd3f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c7c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c80]:csrrs a7, fflags, zero
	-[0x80000c84]:fsd fa2, 1280(a5)
Current Store : [0x80000c88] : sd a7, 1288(a5) -- Store: [0x80004318]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x2bccdcc2ad897 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x2bccdcc2ad897 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c98]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000c9c]:csrrs a7, fflags, zero
	-[0x80000ca0]:fsd fa2, 1296(a5)
Current Store : [0x80000ca4] : sd a7, 1304(a5) -- Store: [0x80004328]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xab1c42a43630f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xab1c42a43630f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cb4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000cb8]:csrrs a7, fflags, zero
	-[0x80000cbc]:fsd fa2, 1312(a5)
Current Store : [0x80000cc0] : sd a7, 1320(a5) -- Store: [0x80004338]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x153045947810b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x153045947810b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cd0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000cd4]:csrrs a7, fflags, zero
	-[0x80000cd8]:fsd fa2, 1328(a5)
Current Store : [0x80000cdc] : sd a7, 1336(a5) -- Store: [0x80004348]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe89afcadc456f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xe89afcadc456f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cec]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000cf0]:csrrs a7, fflags, zero
	-[0x80000cf4]:fsd fa2, 1344(a5)
Current Store : [0x80000cf8] : sd a7, 1352(a5) -- Store: [0x80004358]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc1e737c6a698 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xbc1e737c6a698 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d08]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d0c]:csrrs a7, fflags, zero
	-[0x80000d10]:fsd fa2, 1360(a5)
Current Store : [0x80000d14] : sd a7, 1368(a5) -- Store: [0x80004368]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5c73bb8e94b2b and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x5c73bb8e94b2b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d24]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d28]:csrrs a7, fflags, zero
	-[0x80000d2c]:fsd fa2, 1376(a5)
Current Store : [0x80000d30] : sd a7, 1384(a5) -- Store: [0x80004378]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xaea8e11056b0f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xaea8e11056b0f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa2, 1392(a5)
Current Store : [0x80000d4c] : sd a7, 1400(a5) -- Store: [0x80004388]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x84aae05543502 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x84aae05543502 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d5c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d60]:csrrs a7, fflags, zero
	-[0x80000d64]:fsd fa2, 1408(a5)
Current Store : [0x80000d68] : sd a7, 1416(a5) -- Store: [0x80004398]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd26cfda272030 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd26cfda272030 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d78]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d7c]:csrrs a7, fflags, zero
	-[0x80000d80]:fsd fa2, 1424(a5)
Current Store : [0x80000d84] : sd a7, 1432(a5) -- Store: [0x800043a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x5ad9a8441acdf and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x5ad9a8441acdf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d94]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000d98]:csrrs a7, fflags, zero
	-[0x80000d9c]:fsd fa2, 1440(a5)
Current Store : [0x80000da0] : sd a7, 1448(a5) -- Store: [0x800043b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe08b2a10b8fdf and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xe08b2a10b8fdf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000db0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000db4]:csrrs a7, fflags, zero
	-[0x80000db8]:fsd fa2, 1456(a5)
Current Store : [0x80000dbc] : sd a7, 1464(a5) -- Store: [0x800043c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0206ee24c395 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xf0206ee24c395 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dcc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000dd0]:csrrs a7, fflags, zero
	-[0x80000dd4]:fsd fa2, 1472(a5)
Current Store : [0x80000dd8] : sd a7, 1480(a5) -- Store: [0x800043d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc3c90ab59cc1f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc3c90ab59cc1f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000de8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000dec]:csrrs a7, fflags, zero
	-[0x80000df0]:fsd fa2, 1488(a5)
Current Store : [0x80000df4] : sd a7, 1496(a5) -- Store: [0x800043e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdd47ad230c500 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xdd47ad230c500 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e04]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e08]:csrrs a7, fflags, zero
	-[0x80000e0c]:fsd fa2, 1504(a5)
Current Store : [0x80000e10] : sd a7, 1512(a5) -- Store: [0x800043f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x59522cc62b803 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x59522cc62b803 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa2, 1520(a5)
Current Store : [0x80000e2c] : sd a7, 1528(a5) -- Store: [0x80004408]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5b3be3b6f1597 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x5b3be3b6f1597 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e3c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e40]:csrrs a7, fflags, zero
	-[0x80000e44]:fsd fa2, 1536(a5)
Current Store : [0x80000e48] : sd a7, 1544(a5) -- Store: [0x80004418]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf95e94a40dc56 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf95e94a40dc56 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e58]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e5c]:csrrs a7, fflags, zero
	-[0x80000e60]:fsd fa2, 1552(a5)
Current Store : [0x80000e64] : sd a7, 1560(a5) -- Store: [0x80004428]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b58d2db8786f and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x9b58d2db8786f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e74]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e78]:csrrs a7, fflags, zero
	-[0x80000e7c]:fsd fa2, 1568(a5)
Current Store : [0x80000e80] : sd a7, 1576(a5) -- Store: [0x80004438]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcca2a15201aa9 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xcca2a15201aa9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e90]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000e94]:csrrs a7, fflags, zero
	-[0x80000e98]:fsd fa2, 1584(a5)
Current Store : [0x80000e9c] : sd a7, 1592(a5) -- Store: [0x80004448]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d27694e5a38b and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x4d27694e5a38b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000eac]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000eb0]:csrrs a7, fflags, zero
	-[0x80000eb4]:fsd fa2, 1600(a5)
Current Store : [0x80000eb8] : sd a7, 1608(a5) -- Store: [0x80004458]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2f2dacc08696f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x2f2dacc08696f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ec8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000ecc]:csrrs a7, fflags, zero
	-[0x80000ed0]:fsd fa2, 1616(a5)
Current Store : [0x80000ed4] : sd a7, 1624(a5) -- Store: [0x80004468]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xabb8bbe03b7df and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xabb8bbe03b7df and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa2, 1632(a5)
Current Store : [0x80000ef0] : sd a7, 1640(a5) -- Store: [0x80004478]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbb5746cbb34cd and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xbb5746cbb34cd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f00]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f04]:csrrs a7, fflags, zero
	-[0x80000f08]:fsd fa2, 1648(a5)
Current Store : [0x80000f0c] : sd a7, 1656(a5) -- Store: [0x80004488]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa5666b92c9353 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xa5666b92c9353 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f1c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f20]:csrrs a7, fflags, zero
	-[0x80000f24]:fsd fa2, 1664(a5)
Current Store : [0x80000f28] : sd a7, 1672(a5) -- Store: [0x80004498]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x830a4319a6f37 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x830a4319a6f37 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f38]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f3c]:csrrs a7, fflags, zero
	-[0x80000f40]:fsd fa2, 1680(a5)
Current Store : [0x80000f44] : sd a7, 1688(a5) -- Store: [0x800044a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6875b8a7de9f5 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x6875b8a7de9f5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f54]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f58]:csrrs a7, fflags, zero
	-[0x80000f5c]:fsd fa2, 1696(a5)
Current Store : [0x80000f60] : sd a7, 1704(a5) -- Store: [0x800044b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc4dccb7ac380 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xbc4dccb7ac380 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f70]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f74]:csrrs a7, fflags, zero
	-[0x80000f78]:fsd fa2, 1712(a5)
Current Store : [0x80000f7c] : sd a7, 1720(a5) -- Store: [0x800044c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x23fbd09d7e9b6 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x23fbd09d7e9b6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f8c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000f90]:csrrs a7, fflags, zero
	-[0x80000f94]:fsd fa2, 1728(a5)
Current Store : [0x80000f98] : sd a7, 1736(a5) -- Store: [0x800044d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa38a3f0decfff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xa38a3f0decfff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fa8]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000fac]:csrrs a7, fflags, zero
	-[0x80000fb0]:fsd fa2, 1744(a5)
Current Store : [0x80000fb4] : sd a7, 1752(a5) -- Store: [0x800044e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1e74ff66f075 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc1e74ff66f075 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa2, 1760(a5)
Current Store : [0x80000fd0] : sd a7, 1768(a5) -- Store: [0x800044f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x026a2990b0a7f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x026a2990b0a7f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fe0]:fsub.d fa2, fa0, fa1, dyn
	-[0x80000fe4]:csrrs a7, fflags, zero
	-[0x80000fe8]:fsd fa2, 1776(a5)
Current Store : [0x80000fec] : sd a7, 1784(a5) -- Store: [0x80004508]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7cd8dfca2011d and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x7cd8dfca2011d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ffc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001000]:csrrs a7, fflags, zero
	-[0x80001004]:fsd fa2, 1792(a5)
Current Store : [0x80001008] : sd a7, 1800(a5) -- Store: [0x80004518]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3dcff67566087 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x3dcff67566087 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001018]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000101c]:csrrs a7, fflags, zero
	-[0x80001020]:fsd fa2, 1808(a5)
Current Store : [0x80001024] : sd a7, 1816(a5) -- Store: [0x80004528]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x39bd6a090d93f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x39bd6a090d93f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001034]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001038]:csrrs a7, fflags, zero
	-[0x8000103c]:fsd fa2, 1824(a5)
Current Store : [0x80001040] : sd a7, 1832(a5) -- Store: [0x80004538]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xef9105cd9390b and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xef9105cd9390b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001050]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001054]:csrrs a7, fflags, zero
	-[0x80001058]:fsd fa2, 1840(a5)
Current Store : [0x8000105c] : sd a7, 1848(a5) -- Store: [0x80004548]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0xe19152f3266af and fs2 == 0 and fe2 == 0x7fa and fm2 == 0xe19152f3266af and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000106c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001070]:csrrs a7, fflags, zero
	-[0x80001074]:fsd fa2, 1856(a5)
Current Store : [0x80001078] : sd a7, 1864(a5) -- Store: [0x80004558]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x48f4a954751bd and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x48f4a954751bd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001088]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000108c]:csrrs a7, fflags, zero
	-[0x80001090]:fsd fa2, 1872(a5)
Current Store : [0x80001094] : sd a7, 1880(a5) -- Store: [0x80004568]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x946024d663351 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x946024d663351 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa2, 1888(a5)
Current Store : [0x800010b0] : sd a7, 1896(a5) -- Store: [0x80004578]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc91ade861e02b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xc91ade861e02b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010c0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800010c4]:csrrs a7, fflags, zero
	-[0x800010c8]:fsd fa2, 1904(a5)
Current Store : [0x800010cc] : sd a7, 1912(a5) -- Store: [0x80004588]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x987aaa2c7bb6a and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x987aaa2c7bb6a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010dc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800010e0]:csrrs a7, fflags, zero
	-[0x800010e4]:fsd fa2, 1920(a5)
Current Store : [0x800010e8] : sd a7, 1928(a5) -- Store: [0x80004598]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc3c9ccfa1b1bb and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xc3c9ccfa1b1bb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010f8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800010fc]:csrrs a7, fflags, zero
	-[0x80001100]:fsd fa2, 1936(a5)
Current Store : [0x80001104] : sd a7, 1944(a5) -- Store: [0x800045a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5b39db9b4e7ac and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x5b39db9b4e7ac and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001114]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001118]:csrrs a7, fflags, zero
	-[0x8000111c]:fsd fa2, 1952(a5)
Current Store : [0x80001120] : sd a7, 1960(a5) -- Store: [0x800045b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x482567721754b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x482567721754b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001130]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001134]:csrrs a7, fflags, zero
	-[0x80001138]:fsd fa2, 1968(a5)
Current Store : [0x8000113c] : sd a7, 1976(a5) -- Store: [0x800045c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2bf422090b207 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x2bf422090b207 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000114c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001150]:csrrs a7, fflags, zero
	-[0x80001154]:fsd fa2, 1984(a5)
Current Store : [0x80001158] : sd a7, 1992(a5) -- Store: [0x800045d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x551579cd90e3f and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0x551579cd90e3f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001168]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000116c]:csrrs a7, fflags, zero
	-[0x80001170]:fsd fa2, 2000(a5)
Current Store : [0x80001174] : sd a7, 2008(a5) -- Store: [0x800045e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3617941ba03e8 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x3617941ba03e8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001184]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa2, 2016(a5)
Current Store : [0x80001190] : sd a7, 2024(a5) -- Store: [0x800045f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x052debfe82e13 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x052debfe82e13 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011ac]:fsub.d fa2, fa0, fa1, dyn
	-[0x800011b0]:csrrs a7, fflags, zero
	-[0x800011b4]:fsd fa2, 0(a5)
Current Store : [0x800011b8] : sd a7, 8(a5) -- Store: [0x80004608]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbd7ce681c543f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xbd7ce681c543f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011c8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800011cc]:csrrs a7, fflags, zero
	-[0x800011d0]:fsd fa2, 16(a5)
Current Store : [0x800011d4] : sd a7, 24(a5) -- Store: [0x80004618]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaf054e65e9fad and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xaf054e65e9fad and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa2, 32(a5)
Current Store : [0x800011f0] : sd a7, 40(a5) -- Store: [0x80004628]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x833a9a7efc6ff and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0x833a9a7efc6ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001200]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001204]:csrrs a7, fflags, zero
	-[0x80001208]:fsd fa2, 48(a5)
Current Store : [0x8000120c] : sd a7, 56(a5) -- Store: [0x80004638]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x49bad4bf8d1a9 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x49bad4bf8d1a9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000121c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001220]:csrrs a7, fflags, zero
	-[0x80001224]:fsd fa2, 64(a5)
Current Store : [0x80001228] : sd a7, 72(a5) -- Store: [0x80004648]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6c5583d2d8f82 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x6c5583d2d8f82 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001238]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000123c]:csrrs a7, fflags, zero
	-[0x80001240]:fsd fa2, 80(a5)
Current Store : [0x80001244] : sd a7, 88(a5) -- Store: [0x80004658]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x585c60a81aa3f and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x585c60a81aa3f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001254]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001258]:csrrs a7, fflags, zero
	-[0x8000125c]:fsd fa2, 96(a5)
Current Store : [0x80001260] : sd a7, 104(a5) -- Store: [0x80004668]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x46e9bf4155d7b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x46e9bf4155d7b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001270]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001274]:csrrs a7, fflags, zero
	-[0x80001278]:fsd fa2, 112(a5)
Current Store : [0x8000127c] : sd a7, 120(a5) -- Store: [0x80004678]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x60b0632528095 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x60b0632528095 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000128c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001290]:csrrs a7, fflags, zero
	-[0x80001294]:fsd fa2, 128(a5)
Current Store : [0x80001298] : sd a7, 136(a5) -- Store: [0x80004688]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xc07725983617f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xc07725983617f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012a8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800012ac]:csrrs a7, fflags, zero
	-[0x800012b0]:fsd fa2, 144(a5)
Current Store : [0x800012b4] : sd a7, 152(a5) -- Store: [0x80004698]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x82dc4511ff204 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x82dc4511ff204 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa2, 160(a5)
Current Store : [0x800012d0] : sd a7, 168(a5) -- Store: [0x800046a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x1175939fbdd3f and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0x1175939fbdd3f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012e0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800012e4]:csrrs a7, fflags, zero
	-[0x800012e8]:fsd fa2, 176(a5)
Current Store : [0x800012ec] : sd a7, 184(a5) -- Store: [0x800046b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x58a25604824f3 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x58a25604824f3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012fc]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001300]:csrrs a7, fflags, zero
	-[0x80001304]:fsd fa2, 192(a5)
Current Store : [0x80001308] : sd a7, 200(a5) -- Store: [0x800046c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x056bcd04279ed and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x056bcd04279ed and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001318]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000131c]:csrrs a7, fflags, zero
	-[0x80001320]:fsd fa2, 208(a5)
Current Store : [0x80001324] : sd a7, 216(a5) -- Store: [0x800046d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x981d2bf67b45e and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x981d2bf67b45e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001334]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001338]:csrrs a7, fflags, zero
	-[0x8000133c]:fsd fa2, 224(a5)
Current Store : [0x80001340] : sd a7, 232(a5) -- Store: [0x800046e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8d62745dccc1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xb8d62745dccc1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001350]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001354]:csrrs a7, fflags, zero
	-[0x80001358]:fsd fa2, 240(a5)
Current Store : [0x8000135c] : sd a7, 248(a5) -- Store: [0x800046f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x6aedbc8cfe5cb and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x6aedbc8cfe5cb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000136c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001370]:csrrs a7, fflags, zero
	-[0x80001374]:fsd fa2, 256(a5)
Current Store : [0x80001378] : sd a7, 264(a5) -- Store: [0x80004708]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xca57966fc21ff and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0xca57966fc21ff and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001388]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000138c]:csrrs a7, fflags, zero
	-[0x80001390]:fsd fa2, 272(a5)
Current Store : [0x80001394] : sd a7, 280(a5) -- Store: [0x80004718]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39935e95315b1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x39935e95315b1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013a4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800013a8]:csrrs a7, fflags, zero
	-[0x800013ac]:fsd fa2, 288(a5)
Current Store : [0x800013b0] : sd a7, 296(a5) -- Store: [0x80004728]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x13b37e2291279 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x13b37e2291279 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013c0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800013c4]:csrrs a7, fflags, zero
	-[0x800013c8]:fsd fa2, 304(a5)
Current Store : [0x800013cc] : sd a7, 312(a5) -- Store: [0x80004738]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6d5a59350bdcb and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x6d5a59350bdcb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013dc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800013e0]:csrrs a7, fflags, zero
	-[0x800013e4]:fsd fa2, 320(a5)
Current Store : [0x800013e8] : sd a7, 328(a5) -- Store: [0x80004748]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x026ab89a75256 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x026ab89a75256 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013f8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800013fc]:csrrs a7, fflags, zero
	-[0x80001400]:fsd fa2, 336(a5)
Current Store : [0x80001404] : sd a7, 344(a5) -- Store: [0x80004758]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x23d6f3e37b4f1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x23d6f3e37b4f1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001414]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001418]:csrrs a7, fflags, zero
	-[0x8000141c]:fsd fa2, 352(a5)
Current Store : [0x80001420] : sd a7, 360(a5) -- Store: [0x80004768]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0xcbc315eca5f3f and fs2 == 0 and fe2 == 0x7fa and fm2 == 0xcbc315eca5f3f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001430]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001434]:csrrs a7, fflags, zero
	-[0x80001438]:fsd fa2, 368(a5)
Current Store : [0x8000143c] : sd a7, 376(a5) -- Store: [0x80004778]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1f6a4c4d26ab9 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x1f6a4c4d26ab9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000144c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001450]:csrrs a7, fflags, zero
	-[0x80001454]:fsd fa2, 384(a5)
Current Store : [0x80001458] : sd a7, 392(a5) -- Store: [0x80004788]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9e4795c8459f5 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x9e4795c8459f5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001468]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000146c]:csrrs a7, fflags, zero
	-[0x80001470]:fsd fa2, 400(a5)
Current Store : [0x80001474] : sd a7, 408(a5) -- Store: [0x80004798]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc5b9547c0fb71 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc5b9547c0fb71 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001484]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001488]:csrrs a7, fflags, zero
	-[0x8000148c]:fsd fa2, 416(a5)
Current Store : [0x80001490] : sd a7, 424(a5) -- Store: [0x800047a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x913b4236d8411 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x913b4236d8411 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014a0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800014a4]:csrrs a7, fflags, zero
	-[0x800014a8]:fsd fa2, 432(a5)
Current Store : [0x800014ac] : sd a7, 440(a5) -- Store: [0x800047b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xea0b252eae7e0 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xea0b252eae7e0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014bc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800014c0]:csrrs a7, fflags, zero
	-[0x800014c4]:fsd fa2, 448(a5)
Current Store : [0x800014c8] : sd a7, 456(a5) -- Store: [0x800047c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x13bdffd461269 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x13bdffd461269 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014d8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800014dc]:csrrs a7, fflags, zero
	-[0x800014e0]:fsd fa2, 464(a5)
Current Store : [0x800014e4] : sd a7, 472(a5) -- Store: [0x800047d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x27d4b8969c0b2 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x27d4b8969c0b2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014f4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800014f8]:csrrs a7, fflags, zero
	-[0x800014fc]:fsd fa2, 480(a5)
Current Store : [0x80001500] : sd a7, 488(a5) -- Store: [0x800047e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x070d1456013e3 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x070d1456013e3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001510]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001514]:csrrs a7, fflags, zero
	-[0x80001518]:fsd fa2, 496(a5)
Current Store : [0x8000151c] : sd a7, 504(a5) -- Store: [0x800047f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb877e6e317fa2 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xb877e6e317fa2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000152c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001530]:csrrs a7, fflags, zero
	-[0x80001534]:fsd fa2, 512(a5)
Current Store : [0x80001538] : sd a7, 520(a5) -- Store: [0x80004808]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8a82024cc4e03 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x8a82024cc4e03 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001548]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000154c]:csrrs a7, fflags, zero
	-[0x80001550]:fsd fa2, 528(a5)
Current Store : [0x80001554] : sd a7, 536(a5) -- Store: [0x80004818]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0125698e86242 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x0125698e86242 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001564]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001568]:csrrs a7, fflags, zero
	-[0x8000156c]:fsd fa2, 544(a5)
Current Store : [0x80001570] : sd a7, 552(a5) -- Store: [0x80004828]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x930bcbd2d6035 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x930bcbd2d6035 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001580]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001584]:csrrs a7, fflags, zero
	-[0x80001588]:fsd fa2, 560(a5)
Current Store : [0x8000158c] : sd a7, 568(a5) -- Store: [0x80004838]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf7646167590ef and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf7646167590ef and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000159c]:fsub.d fa2, fa0, fa1, dyn
	-[0x800015a0]:csrrs a7, fflags, zero
	-[0x800015a4]:fsd fa2, 576(a5)
Current Store : [0x800015a8] : sd a7, 584(a5) -- Store: [0x80004848]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x643f753bef22f and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x643f753bef22f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015b8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800015bc]:csrrs a7, fflags, zero
	-[0x800015c0]:fsd fa2, 592(a5)
Current Store : [0x800015c4] : sd a7, 600(a5) -- Store: [0x80004858]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf57237ddcb451 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xf57237ddcb451 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015d4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800015d8]:csrrs a7, fflags, zero
	-[0x800015dc]:fsd fa2, 608(a5)
Current Store : [0x800015e0] : sd a7, 616(a5) -- Store: [0x80004868]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0ab870b5c1c40 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x0ab870b5c1c40 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015f0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800015f4]:csrrs a7, fflags, zero
	-[0x800015f8]:fsd fa2, 624(a5)
Current Store : [0x800015fc] : sd a7, 632(a5) -- Store: [0x80004878]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x04507a06e8587 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x04507a06e8587 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000160c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:fsd fa2, 640(a5)
Current Store : [0x80001618] : sd a7, 648(a5) -- Store: [0x80004888]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7fb2260b115e9 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x7fb2260b115e9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001628]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000162c]:csrrs a7, fflags, zero
	-[0x80001630]:fsd fa2, 656(a5)
Current Store : [0x80001634] : sd a7, 664(a5) -- Store: [0x80004898]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x67f4f571a752e and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x67f4f571a752e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001644]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001648]:csrrs a7, fflags, zero
	-[0x8000164c]:fsd fa2, 672(a5)
Current Store : [0x80001650] : sd a7, 680(a5) -- Store: [0x800048a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x6251b45dfbd3b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x6251b45dfbd3b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001660]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001664]:csrrs a7, fflags, zero
	-[0x80001668]:fsd fa2, 688(a5)
Current Store : [0x8000166c] : sd a7, 696(a5) -- Store: [0x800048b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x98455e99dfdb1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x98455e99dfdb1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000167c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001680]:csrrs a7, fflags, zero
	-[0x80001684]:fsd fa2, 704(a5)
Current Store : [0x80001688] : sd a7, 712(a5) -- Store: [0x800048c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x1ad5e9ebc09df and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x1ad5e9ebc09df and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001698]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000169c]:csrrs a7, fflags, zero
	-[0x800016a0]:fsd fa2, 720(a5)
Current Store : [0x800016a4] : sd a7, 728(a5) -- Store: [0x800048d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x02b48f992cb49 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x02b48f992cb49 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016b4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800016b8]:csrrs a7, fflags, zero
	-[0x800016bc]:fsd fa2, 736(a5)
Current Store : [0x800016c0] : sd a7, 744(a5) -- Store: [0x800048e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc3d4499ff58c3 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc3d4499ff58c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016d0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800016d4]:csrrs a7, fflags, zero
	-[0x800016d8]:fsd fa2, 752(a5)
Current Store : [0x800016dc] : sd a7, 760(a5) -- Store: [0x800048f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x36a63c245f557 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x36a63c245f557 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016ec]:fsub.d fa2, fa0, fa1, dyn
	-[0x800016f0]:csrrs a7, fflags, zero
	-[0x800016f4]:fsd fa2, 768(a5)
Current Store : [0x800016f8] : sd a7, 776(a5) -- Store: [0x80004908]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa8fa703a4078c and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xa8fa703a4078c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001708]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000170c]:csrrs a7, fflags, zero
	-[0x80001710]:fsd fa2, 784(a5)
Current Store : [0x80001714] : sd a7, 792(a5) -- Store: [0x80004918]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdf7523fde6c5d and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xdf7523fde6c5d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001724]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001728]:csrrs a7, fflags, zero
	-[0x8000172c]:fsd fa2, 800(a5)
Current Store : [0x80001730] : sd a7, 808(a5) -- Store: [0x80004928]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7166677e49c3c and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x7166677e49c3c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001740]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001744]:csrrs a7, fflags, zero
	-[0x80001748]:fsd fa2, 816(a5)
Current Store : [0x8000174c] : sd a7, 824(a5) -- Store: [0x80004938]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xef2a4f7c7db7f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xef2a4f7c7db7f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000175c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001760]:csrrs a7, fflags, zero
	-[0x80001764]:fsd fa2, 832(a5)
Current Store : [0x80001768] : sd a7, 840(a5) -- Store: [0x80004948]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfc2ea66e5019e and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfc2ea66e5019e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001778]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000177c]:csrrs a7, fflags, zero
	-[0x80001780]:fsd fa2, 848(a5)
Current Store : [0x80001784] : sd a7, 856(a5) -- Store: [0x80004958]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x48dace8666677 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x48dace8666677 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001794]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001798]:csrrs a7, fflags, zero
	-[0x8000179c]:fsd fa2, 864(a5)
Current Store : [0x800017a0] : sd a7, 872(a5) -- Store: [0x80004968]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xacd7053aa42a2 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xacd7053aa42a2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017b0]:fsub.d fa2, fa0, fa1, dyn
	-[0x800017b4]:csrrs a7, fflags, zero
	-[0x800017b8]:fsd fa2, 880(a5)
Current Store : [0x800017bc] : sd a7, 888(a5) -- Store: [0x80004978]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x28bc82f697c4d and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x28bc82f697c4d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017cc]:fsub.d fa2, fa0, fa1, dyn
	-[0x800017d0]:csrrs a7, fflags, zero
	-[0x800017d4]:fsd fa2, 896(a5)
Current Store : [0x800017d8] : sd a7, 904(a5) -- Store: [0x80004988]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc01045c2cd787 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xc01045c2cd787 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017e8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800017ec]:csrrs a7, fflags, zero
	-[0x800017f0]:fsd fa2, 912(a5)
Current Store : [0x800017f4] : sd a7, 920(a5) -- Store: [0x80004998]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xdd5b61587fd27 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xdd5b61587fd27 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001804]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001808]:csrrs a7, fflags, zero
	-[0x8000180c]:fsd fa2, 928(a5)
Current Store : [0x80001810] : sd a7, 936(a5) -- Store: [0x800049a8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc0659af8369fd and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xc0659af8369fd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001820]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001824]:csrrs a7, fflags, zero
	-[0x80001828]:fsd fa2, 944(a5)
Current Store : [0x8000182c] : sd a7, 952(a5) -- Store: [0x800049b8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xdbcde43895c3f and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0xdbcde43895c3f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000183c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001840]:csrrs a7, fflags, zero
	-[0x80001844]:fsd fa2, 960(a5)
Current Store : [0x80001848] : sd a7, 968(a5) -- Store: [0x800049c8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xbb9876f8130c3 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xbb9876f8130c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001858]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000185c]:csrrs a7, fflags, zero
	-[0x80001860]:fsd fa2, 976(a5)
Current Store : [0x80001864] : sd a7, 984(a5) -- Store: [0x800049d8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe0d828b86622a and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xe0d828b86622a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001874]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001878]:csrrs a7, fflags, zero
	-[0x8000187c]:fsd fa2, 992(a5)
Current Store : [0x80001880] : sd a7, 1000(a5) -- Store: [0x800049e8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xa0e7ad32453df and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0xa0e7ad32453df and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001890]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001894]:csrrs a7, fflags, zero
	-[0x80001898]:fsd fa2, 1008(a5)
Current Store : [0x8000189c] : sd a7, 1016(a5) -- Store: [0x800049f8]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcd87e65450c45 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xcd87e65450c45 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018ac]:fsub.d fa2, fa0, fa1, dyn
	-[0x800018b0]:csrrs a7, fflags, zero
	-[0x800018b4]:fsd fa2, 1024(a5)
Current Store : [0x800018b8] : sd a7, 1032(a5) -- Store: [0x80004a08]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xd481499755d4b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xd481499755d4b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018c8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800018cc]:csrrs a7, fflags, zero
	-[0x800018d0]:fsd fa2, 1040(a5)
Current Store : [0x800018d4] : sd a7, 1048(a5) -- Store: [0x80004a18]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc81394a2171e9 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xc81394a2171e9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018e4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800018e8]:csrrs a7, fflags, zero
	-[0x800018ec]:fsd fa2, 1056(a5)
Current Store : [0x800018f0] : sd a7, 1064(a5) -- Store: [0x80004a28]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x86499331191c4 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x86499331191c4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001900]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001904]:csrrs a7, fflags, zero
	-[0x80001908]:fsd fa2, 1072(a5)
Current Store : [0x8000190c] : sd a7, 1080(a5) -- Store: [0x80004a38]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xabe96758f2a09 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xabe96758f2a09 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000191c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001920]:csrrs a7, fflags, zero
	-[0x80001924]:fsd fa2, 1088(a5)
Current Store : [0x80001928] : sd a7, 1096(a5) -- Store: [0x80004a48]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x8072e8f9c858f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x8072e8f9c858f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001938]:fsub.d fa2, fa0, fa1, dyn
	-[0x8000193c]:csrrs a7, fflags, zero
	-[0x80001940]:fsd fa2, 1104(a5)
Current Store : [0x80001944] : sd a7, 1112(a5) -- Store: [0x80004a58]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4d9d98184b9d9 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x4d9d98184b9d9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001954]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001958]:csrrs a7, fflags, zero
	-[0x8000195c]:fsd fa2, 1120(a5)
Current Store : [0x80001960] : sd a7, 1128(a5) -- Store: [0x80004a68]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfb5355e167379 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xfb5355e167379 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001970]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:fsd fa2, 1136(a5)
Current Store : [0x8000197c] : sd a7, 1144(a5) -- Store: [0x80004a78]:0x0000000000000000




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x870d778409f12 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x870d778409f12 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000198c]:fsub.d fa2, fa0, fa1, dyn
	-[0x80001990]:csrrs a7, fflags, zero
	-[0x80001994]:fsd fa2, 1152(a5)
Current Store : [0x80001998] : sd a7, 1160(a5) -- Store: [0x80004a88]:0x0000000000000000




Last Coverpoint : ['opcode : fsub.d', 'rs1 : f10', 'rs2 : f11', 'rd : f12', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa623d9ab2139f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xa623d9ab2139f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019a8]:fsub.d fa2, fa0, fa1, dyn
	-[0x800019ac]:csrrs a7, fflags, zero
	-[0x800019b0]:fsd fa2, 1168(a5)
Current Store : [0x800019b4] : sd a7, 1176(a5) -- Store: [0x80004a98]:0x0000000000000000




Last Coverpoint : ['opcode : fsub.d', 'rs1 : f10', 'rs2 : f11', 'rd : f12', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5f7ea628e7311 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x5f7ea628e7311 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019c4]:fsub.d fa2, fa0, fa1, dyn
	-[0x800019c8]:csrrs a7, fflags, zero
	-[0x800019cc]:fsd fa2, 1184(a5)
Current Store : [0x800019d0] : sd a7, 1192(a5) -- Store: [0x80004aa8]:0x0000000000000000





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
|   1|[0x80003e10]<br>0xDBEADFEEDBEADFEE|- opcode : fsub.d<br> - rs1 : f24<br> - rs2 : f21<br> - rd : f21<br> - rs2 == rd != rs1<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0x132d8f91b7583 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x132d8f91b7583 and rm_val == 0  #nosat<br> |[0x800003bc]:fsub.d fs5, fs8, fs5, dyn<br> [0x800003c0]:csrrs a7, fflags, zero<br> [0x800003c4]:fsd fs5, 0(a5)<br>     |
|   2|[0x80003e20]<br>0x0000000A00000000|- rs1 : f3<br> - rs2 : f3<br> - rd : f3<br> - rs1 == rs2 == rd<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa623d9ab2139f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xa623d9ab2139f and rm_val == 0  #nosat<br>                          |[0x800003d8]:fsub.d ft3, ft3, ft3, dyn<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:fsd ft3, 16(a5)<br>    |
|   3|[0x80003e30]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f22<br> - rs2 : f0<br> - rd : f31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xea51987a6fe4b and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xea51987a6fe4b and rm_val == 0  #nosat<br> |[0x800003f4]:fsub.d ft11, fs6, ft0, dyn<br> [0x800003f8]:csrrs a7, fflags, zero<br> [0x800003fc]:fsd ft11, 32(a5)<br>  |
|   4|[0x80003e40]<br>0xEEDBEADFEEDBEADF|- rs1 : f29<br> - rs2 : f2<br> - rd : f29<br> - rs1 == rd != rs2<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe830fb501fc6b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xe830fb501fc6b and rm_val == 0  #nosat<br>                        |[0x80000410]:fsub.d ft9, ft9, ft2, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:fsd ft9, 48(a5)<br>    |
|   5|[0x80003e50]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f31<br> - rs2 : f31<br> - rd : f20<br> - rs1 == rs2 != rd<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5f7ea628e7311 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x5f7ea628e7311 and rm_val == 0  #nosat<br>                       |[0x8000042c]:fsub.d fs4, ft11, ft11, dyn<br> [0x80000430]:csrrs a7, fflags, zero<br> [0x80000434]:fsd fs4, 64(a5)<br>  |
|   6|[0x80003e60]<br>0x0000000000000000|- rs1 : f17<br> - rs2 : f16<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4c34b3fae86a6 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x4c34b3fae86a6 and rm_val == 0  #nosat<br>                                               |[0x80000448]:fsub.d ft0, fa7, fa6, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd ft0, 80(a5)<br>    |
|   7|[0x80003e70]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f15<br> - rs2 : f7<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0eb1fe944dafc and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x0eb1fe944dafc and rm_val == 0  #nosat<br>                                               |[0x80000464]:fsub.d fs3, fa5, ft7, dyn<br> [0x80000468]:csrrs a7, fflags, zero<br> [0x8000046c]:fsd fs3, 96(a5)<br>    |
|   8|[0x80003e80]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f13<br> - rs2 : f4<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0xde44cb7c6a477 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xde44cb7c6a477 and rm_val == 0  #nosat<br>                                               |[0x80000480]:fsub.d ft8, fa3, ft4, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd ft8, 112(a5)<br>   |
|   9|[0x80003e90]<br>0x0000000080003E10|- rs1 : f25<br> - rs2 : f29<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9ab5479609cdf and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x9ab5479609cdf and rm_val == 0  #nosat<br>                                              |[0x8000049c]:fsub.d fa5, fs9, ft9, dyn<br> [0x800004a0]:csrrs a7, fflags, zero<br> [0x800004a4]:fsd fa5, 128(a5)<br>   |
|  10|[0x80003ea0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f18<br> - rs2 : f8<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa86a1651b8f6d and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xa86a1651b8f6d and rm_val == 0  #nosat<br>                                               |[0x800004b8]:fsub.d fs11, fs2, fs0, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:fsd fs11, 144(a5)<br> |
|  11|[0x80003eb0]<br>0xFEEDBEADFEEDBEAD|- rs1 : f26<br> - rs2 : f17<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x7fc and fm1 == 0x0043a4237475b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x0043a4237475b and rm_val == 0  #nosat<br>                                               |[0x800004d4]:fsub.d ft1, fs10, fa7, dyn<br> [0x800004d8]:csrrs a7, fflags, zero<br> [0x800004dc]:fsd ft1, 160(a5)<br>  |
|  12|[0x80003ec0]<br>0xEADFEEDBEADFEEDB|- rs1 : f30<br> - rs2 : f19<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6b764b4a3fc09 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x6b764b4a3fc09 and rm_val == 0  #nosat<br>                                              |[0x800004f0]:fsub.d fa3, ft10, fs3, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd fa3, 176(a5)<br>  |
|  13|[0x80003ed0]<br>0xEDBEADFEEDBEADFE|- rs1 : f16<br> - rs2 : f30<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x242628c135d65 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x242628c135d65 and rm_val == 0  #nosat<br>                                              |[0x8000050c]:fsub.d fs9, fa6, ft10, dyn<br> [0x80000510]:csrrs a7, fflags, zero<br> [0x80000514]:fsd fs9, 192(a5)<br>  |
|  14|[0x80003ee0]<br>0x0000000080003000|- rs1 : f0<br> - rs2 : f25<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4afa083bb05d4 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x4afa083bb05d4 and rm_val == 0  #nosat<br>                                                |[0x80000528]:fsub.d ft6, ft0, fs9, dyn<br> [0x8000052c]:csrrs a7, fflags, zero<br> [0x80000530]:fsd ft6, 208(a5)<br>   |
|  15|[0x80003ef0]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f2<br> - rs2 : f26<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x08290cbe2e23f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x08290cbe2e23f and rm_val == 0  #nosat<br>                                                |[0x80000544]:fsub.d ft4, ft2, fs10, dyn<br> [0x80000548]:csrrs a7, fflags, zero<br> [0x8000054c]:fsd ft4, 224(a5)<br>  |
|  16|[0x80003f00]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f21<br> - rs2 : f18<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x95351e6b0b955 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x95351e6b0b955 and rm_val == 0  #nosat<br>                                              |[0x80000560]:fsub.d fa1, fs5, fs2, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd fa1, 240(a5)<br>   |
|  17|[0x80003f10]<br>0x0000000080003010|- rs1 : f27<br> - rs2 : f13<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb3dca1e26f92c and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xb3dca1e26f92c and rm_val == 0  #nosat<br>                                              |[0x8000057c]:fsub.d fa6, fs11, fa3, dyn<br> [0x80000580]:csrrs a7, fflags, zero<br> [0x80000584]:fsd fa6, 256(a5)<br>  |
|  18|[0x80003f20]<br>0xF76DF56FF76DF56F|- rs1 : f6<br> - rs2 : f12<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1939e8900399e and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x1939e8900399e and rm_val == 0  #nosat<br>                                               |[0x80000598]:fsub.d ft10, ft6, fa2, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd ft10, 272(a5)<br> |
|  19|[0x80003f30]<br>0x0000000000000000|- rs1 : f1<br> - rs2 : f9<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xed40ea1c96a68 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xed40ea1c96a68 and rm_val == 0  #nosat<br>                                                |[0x800005b4]:fsub.d fa7, ft1, fs1, dyn<br> [0x800005b8]:csrrs a7, fflags, zero<br> [0x800005bc]:fsd fa7, 288(a5)<br>   |
|  20|[0x80003f40]<br>0x6DF56FF76DF56FF7|- rs1 : f9<br> - rs2 : f5<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x02a602e38e2e5 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x02a602e38e2e5 and rm_val == 0  #nosat<br>                                                |[0x800005d0]:fsub.d fs6, fs1, ft5, dyn<br> [0x800005d4]:csrrs a7, fflags, zero<br> [0x800005d8]:fsd fs6, 304(a5)<br>   |
|  21|[0x80003f50]<br>0xDF56FF76DF56FF76|- rs1 : f28<br> - rs2 : f24<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6dfd78772ca12 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x6dfd78772ca12 and rm_val == 0  #nosat<br>                                              |[0x800005ec]:fsub.d fs2, ft8, fs8, dyn<br> [0x800005f0]:csrrs a7, fflags, zero<br> [0x800005f4]:fsd fs2, 320(a5)<br>   |
|  22|[0x80003f60]<br>0x0000000A00006000|- rs1 : f4<br> - rs2 : f14<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbb0574c4cc8c3 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xbb0574c4cc8c3 and rm_val == 0  #nosat<br>                                                |[0x80000608]:fsub.d ft2, ft4, fa4, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsd ft2, 336(a5)<br>   |
|  23|[0x80003f70]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f7<br> - rs2 : f1<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x61129e8d25d53 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x61129e8d25d53 and rm_val == 0  #nosat<br>                                                |[0x80000624]:fsub.d fs8, ft7, ft1, dyn<br> [0x80000628]:csrrs a7, fflags, zero<br> [0x8000062c]:fsd fs8, 352(a5)<br>   |
|  24|[0x80003f80]<br>0x76DF56FF76DF56FF|- rs1 : f10<br> - rs2 : f15<br> - rd : f26<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xae72a87c61e34 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xae72a87c61e34 and rm_val == 0  #nosat<br>                                              |[0x80000640]:fsub.d fs10, fa0, fa5, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fs10, 368(a5)<br> |
|  25|[0x80003f90]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f20<br> - rs2 : f28<br> - rd : f23<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9b930ceb054c0 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x9b930ceb054c0 and rm_val == 0  #nosat<br>                                              |[0x8000065c]:fsub.d fs7, fs4, ft8, dyn<br> [0x80000660]:csrrs a7, fflags, zero<br> [0x80000664]:fsd fs7, 384(a5)<br>   |
|  26|[0x80003fa0]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f23<br> - rs2 : f10<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x43a781e917815 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x43a781e917815 and rm_val == 0  #nosat<br>                                               |[0x80000678]:fsub.d fs0, fs7, fa0, dyn<br> [0x8000067c]:csrrs a7, fflags, zero<br> [0x80000680]:fsd fs0, 400(a5)<br>   |
|  27|[0x80003fb0]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f14<br> - rs2 : f11<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd22aa76e3f8bc and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd22aa76e3f8bc and rm_val == 0  #nosat<br>                                               |[0x80000694]:fsub.d ft7, fa4, fa1, dyn<br> [0x80000698]:csrrs a7, fflags, zero<br> [0x8000069c]:fsd ft7, 416(a5)<br>   |
|  28|[0x80003fc0]<br>0xADFEEDBEADFEEDBE|- rs1 : f19<br> - rs2 : f20<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc99ac0cd3b3ca and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc99ac0cd3b3ca and rm_val == 0  #nosat<br>                                               |[0x800006b0]:fsub.d fs1, fs3, fs4, dyn<br> [0x800006b4]:csrrs a7, fflags, zero<br> [0x800006b8]:fsd fs1, 432(a5)<br>   |
|  29|[0x80003fd0]<br>0xF56FF76DF56FF76D|- rs1 : f12<br> - rs2 : f23<br> - rd : f14<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd6b5f3e68568b and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd6b5f3e68568b and rm_val == 0  #nosat<br>                                              |[0x800006cc]:fsub.d fa4, fa2, fs7, dyn<br> [0x800006d0]:csrrs a7, fflags, zero<br> [0x800006d4]:fsd fa4, 448(a5)<br>   |
|  30|[0x80003fe0]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f5<br> - rs2 : f6<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x7fb and fm1 == 0xb5c56d6b2c837 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xb5c56d6b2c837 and rm_val == 0  #nosat<br>                                                |[0x800006e8]:fsub.d fa2, ft5, ft6, dyn<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd fa2, 464(a5)<br>   |
|  31|[0x80003ff0]<br>0x0000000080000390|- rs1 : f11<br> - rs2 : f22<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa4a2387765198 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xa4a2387765198 and rm_val == 0  #nosat<br>                                               |[0x80000704]:fsub.d ft5, fa1, fs6, dyn<br> [0x80000708]:csrrs a7, fflags, zero<br> [0x8000070c]:fsd ft5, 480(a5)<br>   |
|  32|[0x80004000]<br>0x56FF76DF56FF76DF|- rs1 : f8<br> - rs2 : f27<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8d6b438992705 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x8d6b438992705 and rm_val == 0  #nosat<br>                                               |[0x80000720]:fsub.d fa0, fs0, fs11, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd fa0, 496(a5)<br>  |
|  33|[0x80004010]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe60134aa9369f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xe60134aa9369f and rm_val == 0  #nosat<br>                                                                                             |[0x8000073c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000740]:csrrs a7, fflags, zero<br> [0x80000744]:fsd fa2, 512(a5)<br>   |
|  34|[0x80004020]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x97081394ff7c0 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x97081394ff7c0 and rm_val == 0  #nosat<br>                                                                                             |[0x80000758]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000075c]:csrrs a7, fflags, zero<br> [0x80000760]:fsd fa2, 528(a5)<br>   |
|  35|[0x80004030]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x3bc28319d6d6f and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x3bc28319d6d6f and rm_val == 0  #nosat<br>                                                                                             |[0x80000774]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000778]:csrrs a7, fflags, zero<br> [0x8000077c]:fsd fa2, 544(a5)<br>   |
|  36|[0x80004040]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf9196c3c02c3d and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xf9196c3c02c3d and rm_val == 0  #nosat<br>                                                                                             |[0x80000790]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa2, 560(a5)<br>   |
|  37|[0x80004050]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x29cd1fe017e0f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x29cd1fe017e0f and rm_val == 0  #nosat<br>                                                                                             |[0x800007ac]:fsub.d fa2, fa0, fa1, dyn<br> [0x800007b0]:csrrs a7, fflags, zero<br> [0x800007b4]:fsd fa2, 576(a5)<br>   |
|  38|[0x80004060]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x33bb4c0b03e47 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x33bb4c0b03e47 and rm_val == 0  #nosat<br>                                                                                             |[0x800007c8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800007cc]:csrrs a7, fflags, zero<br> [0x800007d0]:fsd fa2, 592(a5)<br>   |
|  39|[0x80004070]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1a3782778609c and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x1a3782778609c and rm_val == 0  #nosat<br>                                                                                             |[0x800007e4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800007e8]:csrrs a7, fflags, zero<br> [0x800007ec]:fsd fa2, 608(a5)<br>   |
|  40|[0x80004080]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf3381366daa33 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xf3381366daa33 and rm_val == 0  #nosat<br>                                                                                             |[0x80000800]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa2, 624(a5)<br>   |
|  41|[0x80004090]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf5f5f1385c1af and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xf5f5f1385c1af and rm_val == 0  #nosat<br>                                                                                             |[0x8000081c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000820]:csrrs a7, fflags, zero<br> [0x80000824]:fsd fa2, 640(a5)<br>   |
|  42|[0x800040a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2870c773af305 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x2870c773af305 and rm_val == 0  #nosat<br>                                                                                             |[0x80000838]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:fsd fa2, 656(a5)<br>   |
|  43|[0x800040b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x565b7f0cebd9f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x565b7f0cebd9f and rm_val == 0  #nosat<br>                                                                                             |[0x80000854]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000858]:csrrs a7, fflags, zero<br> [0x8000085c]:fsd fa2, 672(a5)<br>   |
|  44|[0x800040c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc978dd3af76c1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc978dd3af76c1 and rm_val == 0  #nosat<br>                                                                                             |[0x80000870]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000874]:csrrs a7, fflags, zero<br> [0x80000878]:fsd fa2, 688(a5)<br>   |
|  45|[0x800040d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x445637e5783c3 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x445637e5783c3 and rm_val == 0  #nosat<br>                                                                                             |[0x8000088c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000890]:csrrs a7, fflags, zero<br> [0x80000894]:fsd fa2, 704(a5)<br>   |
|  46|[0x800040e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3a25a98541333 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x3a25a98541333 and rm_val == 0  #nosat<br>                                                                                             |[0x800008a8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800008ac]:csrrs a7, fflags, zero<br> [0x800008b0]:fsd fa2, 720(a5)<br>   |
|  47|[0x800040f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe1a7f48e8e26b and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xe1a7f48e8e26b and rm_val == 0  #nosat<br>                                                                                             |[0x800008c4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800008c8]:csrrs a7, fflags, zero<br> [0x800008cc]:fsd fa2, 736(a5)<br>   |
|  48|[0x80004100]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4dd45324c2409 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x4dd45324c2409 and rm_val == 0  #nosat<br>                                                                                             |[0x800008e0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa2, 752(a5)<br>   |
|  49|[0x80004110]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf77d273035d94 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf77d273035d94 and rm_val == 0  #nosat<br>                                                                                             |[0x800008fc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000900]:csrrs a7, fflags, zero<br> [0x80000904]:fsd fa2, 768(a5)<br>   |
|  50|[0x80004120]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x4d4955a3d407f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x4d4955a3d407f and rm_val == 0  #nosat<br>                                                                                             |[0x80000918]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000091c]:csrrs a7, fflags, zero<br> [0x80000920]:fsd fa2, 784(a5)<br>   |
|  51|[0x80004130]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3ab263197fe7f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x3ab263197fe7f and rm_val == 0  #nosat<br>                                                                                             |[0x80000934]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000938]:csrrs a7, fflags, zero<br> [0x8000093c]:fsd fa2, 800(a5)<br>   |
|  52|[0x80004140]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x094dd69773d7b and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x094dd69773d7b and rm_val == 0  #nosat<br>                                                                                             |[0x80000950]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000954]:csrrs a7, fflags, zero<br> [0x80000958]:fsd fa2, 816(a5)<br>   |
|  53|[0x80004150]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x605a6a1e02c96 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x605a6a1e02c96 and rm_val == 0  #nosat<br>                                                                                             |[0x8000096c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000970]:csrrs a7, fflags, zero<br> [0x80000974]:fsd fa2, 832(a5)<br>   |
|  54|[0x80004160]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf5bc627909931 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf5bc627909931 and rm_val == 0  #nosat<br>                                                                                             |[0x80000988]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsd fa2, 848(a5)<br>   |
|  55|[0x80004170]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xb8b73fc8fea5b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xb8b73fc8fea5b and rm_val == 0  #nosat<br>                                                                                             |[0x800009a4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800009a8]:csrrs a7, fflags, zero<br> [0x800009ac]:fsd fa2, 864(a5)<br>   |
|  56|[0x80004180]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf0892add2cc6e and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf0892add2cc6e and rm_val == 0  #nosat<br>                                                                                             |[0x800009c0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa2, 880(a5)<br>   |
|  57|[0x80004190]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd3a81e544f745 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd3a81e544f745 and rm_val == 0  #nosat<br>                                                                                             |[0x800009dc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800009e0]:csrrs a7, fflags, zero<br> [0x800009e4]:fsd fa2, 896(a5)<br>   |
|  58|[0x800041a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x40ccb2b303daf and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x40ccb2b303daf and rm_val == 0  #nosat<br>                                                                                             |[0x800009f8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800009fc]:csrrs a7, fflags, zero<br> [0x80000a00]:fsd fa2, 912(a5)<br>   |
|  59|[0x800041b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3171b5147eff2 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x3171b5147eff2 and rm_val == 0  #nosat<br>                                                                                             |[0x80000a14]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000a18]:csrrs a7, fflags, zero<br> [0x80000a1c]:fsd fa2, 928(a5)<br>   |
|  60|[0x800041c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf715337b3d172 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf715337b3d172 and rm_val == 0  #nosat<br>                                                                                             |[0x80000a30]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000a34]:csrrs a7, fflags, zero<br> [0x80000a38]:fsd fa2, 944(a5)<br>   |
|  61|[0x800041d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x44919c1beab5f and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x44919c1beab5f and rm_val == 0  #nosat<br>                                                                                             |[0x80000a4c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000a50]:csrrs a7, fflags, zero<br> [0x80000a54]:fsd fa2, 960(a5)<br>   |
|  62|[0x800041e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x9a21046a4c767 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x9a21046a4c767 and rm_val == 0  #nosat<br>                                                                                             |[0x80000a68]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000a6c]:csrrs a7, fflags, zero<br> [0x80000a70]:fsd fa2, 976(a5)<br>   |
|  63|[0x800041f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x037df25b16113 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x037df25b16113 and rm_val == 0  #nosat<br>                                                                                             |[0x80000a84]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000a88]:csrrs a7, fflags, zero<br> [0x80000a8c]:fsd fa2, 992(a5)<br>   |
|  64|[0x80004200]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd185a4345fd91 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd185a4345fd91 and rm_val == 0  #nosat<br>                                                                                             |[0x80000aa0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa2, 1008(a5)<br>  |
|  65|[0x80004210]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x835b1de73afa3 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x835b1de73afa3 and rm_val == 0  #nosat<br>                                                                                             |[0x80000abc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000ac0]:csrrs a7, fflags, zero<br> [0x80000ac4]:fsd fa2, 1024(a5)<br>  |
|  66|[0x80004220]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xa5356adec5cbf and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xa5356adec5cbf and rm_val == 0  #nosat<br>                                                                                             |[0x80000ad8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000adc]:csrrs a7, fflags, zero<br> [0x80000ae0]:fsd fa2, 1040(a5)<br>  |
|  67|[0x80004230]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xee6dc228b09a7 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xee6dc228b09a7 and rm_val == 0  #nosat<br>                                                                                             |[0x80000af4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000af8]:csrrs a7, fflags, zero<br> [0x80000afc]:fsd fa2, 1056(a5)<br>  |
|  68|[0x80004240]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xd95388e6dd7e7 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xd95388e6dd7e7 and rm_val == 0  #nosat<br>                                                                                             |[0x80000b10]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000b14]:csrrs a7, fflags, zero<br> [0x80000b18]:fsd fa2, 1072(a5)<br>  |
|  69|[0x80004250]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf9efe9258e03a and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf9efe9258e03a and rm_val == 0  #nosat<br>                                                                                             |[0x80000b2c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000b30]:csrrs a7, fflags, zero<br> [0x80000b34]:fsd fa2, 1088(a5)<br>  |
|  70|[0x80004260]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x47df70c06ea5f and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x47df70c06ea5f and rm_val == 0  #nosat<br>                                                                                             |[0x80000b48]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000b4c]:csrrs a7, fflags, zero<br> [0x80000b50]:fsd fa2, 1104(a5)<br>  |
|  71|[0x80004270]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xd775b7a6f9327 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xd775b7a6f9327 and rm_val == 0  #nosat<br>                                                                                             |[0x80000b64]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000b68]:csrrs a7, fflags, zero<br> [0x80000b6c]:fsd fa2, 1120(a5)<br>  |
|  72|[0x80004280]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x574031c0ee5b5 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x574031c0ee5b5 and rm_val == 0  #nosat<br>                                                                                             |[0x80000b80]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa2, 1136(a5)<br>  |
|  73|[0x80004290]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa7d13a52ed5ec and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xa7d13a52ed5ec and rm_val == 0  #nosat<br>                                                                                             |[0x80000b9c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000ba0]:csrrs a7, fflags, zero<br> [0x80000ba4]:fsd fa2, 1152(a5)<br>  |
|  74|[0x800042a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1bd5cc8dca1e5 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x1bd5cc8dca1e5 and rm_val == 0  #nosat<br>                                                                                             |[0x80000bb8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000bbc]:csrrs a7, fflags, zero<br> [0x80000bc0]:fsd fa2, 1168(a5)<br>  |
|  75|[0x800042b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd9a2688750f46 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd9a2688750f46 and rm_val == 0  #nosat<br>                                                                                             |[0x80000bd4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000bd8]:csrrs a7, fflags, zero<br> [0x80000bdc]:fsd fa2, 1184(a5)<br>  |
|  76|[0x800042c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc812c292ea556 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc812c292ea556 and rm_val == 0  #nosat<br>                                                                                             |[0x80000bf0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000bf4]:csrrs a7, fflags, zero<br> [0x80000bf8]:fsd fa2, 1200(a5)<br>  |
|  77|[0x800042d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x4ed205e78cd0f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x4ed205e78cd0f and rm_val == 0  #nosat<br>                                                                                             |[0x80000c0c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c10]:csrrs a7, fflags, zero<br> [0x80000c14]:fsd fa2, 1216(a5)<br>  |
|  78|[0x800042e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x243d79e337b38 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x243d79e337b38 and rm_val == 0  #nosat<br>                                                                                             |[0x80000c28]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c2c]:csrrs a7, fflags, zero<br> [0x80000c30]:fsd fa2, 1232(a5)<br>  |
|  79|[0x800042f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9055ab3b464b5 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x9055ab3b464b5 and rm_val == 0  #nosat<br>                                                                                             |[0x80000c44]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c48]:csrrs a7, fflags, zero<br> [0x80000c4c]:fsd fa2, 1248(a5)<br>  |
|  80|[0x80004300]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5d14398eae23f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x5d14398eae23f and rm_val == 0  #nosat<br>                                                                                             |[0x80000c60]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa2, 1264(a5)<br>  |
|  81|[0x80004310]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9383ffc96dd3f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x9383ffc96dd3f and rm_val == 0  #nosat<br>                                                                                             |[0x80000c7c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c80]:csrrs a7, fflags, zero<br> [0x80000c84]:fsd fa2, 1280(a5)<br>  |
|  82|[0x80004320]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x2bccdcc2ad897 and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x2bccdcc2ad897 and rm_val == 0  #nosat<br>                                                                                             |[0x80000c98]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000c9c]:csrrs a7, fflags, zero<br> [0x80000ca0]:fsd fa2, 1296(a5)<br>  |
|  83|[0x80004330]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xab1c42a43630f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xab1c42a43630f and rm_val == 0  #nosat<br>                                                                                             |[0x80000cb4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000cb8]:csrrs a7, fflags, zero<br> [0x80000cbc]:fsd fa2, 1312(a5)<br>  |
|  84|[0x80004340]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x153045947810b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x153045947810b and rm_val == 0  #nosat<br>                                                                                             |[0x80000cd0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000cd4]:csrrs a7, fflags, zero<br> [0x80000cd8]:fsd fa2, 1328(a5)<br>  |
|  85|[0x80004350]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe89afcadc456f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xe89afcadc456f and rm_val == 0  #nosat<br>                                                                                             |[0x80000cec]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000cf0]:csrrs a7, fflags, zero<br> [0x80000cf4]:fsd fa2, 1344(a5)<br>  |
|  86|[0x80004360]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc1e737c6a698 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xbc1e737c6a698 and rm_val == 0  #nosat<br>                                                                                             |[0x80000d08]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d0c]:csrrs a7, fflags, zero<br> [0x80000d10]:fsd fa2, 1360(a5)<br>  |
|  87|[0x80004370]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5c73bb8e94b2b and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x5c73bb8e94b2b and rm_val == 0  #nosat<br>                                                                                             |[0x80000d24]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d28]:csrrs a7, fflags, zero<br> [0x80000d2c]:fsd fa2, 1376(a5)<br>  |
|  88|[0x80004380]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xaea8e11056b0f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xaea8e11056b0f and rm_val == 0  #nosat<br>                                                                                             |[0x80000d40]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa2, 1392(a5)<br>  |
|  89|[0x80004390]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x84aae05543502 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x84aae05543502 and rm_val == 0  #nosat<br>                                                                                             |[0x80000d5c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d60]:csrrs a7, fflags, zero<br> [0x80000d64]:fsd fa2, 1408(a5)<br>  |
|  90|[0x800043a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd26cfda272030 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xd26cfda272030 and rm_val == 0  #nosat<br>                                                                                             |[0x80000d78]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d7c]:csrrs a7, fflags, zero<br> [0x80000d80]:fsd fa2, 1424(a5)<br>  |
|  91|[0x800043b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x5ad9a8441acdf and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x5ad9a8441acdf and rm_val == 0  #nosat<br>                                                                                             |[0x80000d94]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000d98]:csrrs a7, fflags, zero<br> [0x80000d9c]:fsd fa2, 1440(a5)<br>  |
|  92|[0x800043c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe08b2a10b8fdf and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xe08b2a10b8fdf and rm_val == 0  #nosat<br>                                                                                             |[0x80000db0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000db4]:csrrs a7, fflags, zero<br> [0x80000db8]:fsd fa2, 1456(a5)<br>  |
|  93|[0x800043d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf0206ee24c395 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xf0206ee24c395 and rm_val == 0  #nosat<br>                                                                                             |[0x80000dcc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000dd0]:csrrs a7, fflags, zero<br> [0x80000dd4]:fsd fa2, 1472(a5)<br>  |
|  94|[0x800043e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc3c90ab59cc1f and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc3c90ab59cc1f and rm_val == 0  #nosat<br>                                                                                             |[0x80000de8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000dec]:csrrs a7, fflags, zero<br> [0x80000df0]:fsd fa2, 1488(a5)<br>  |
|  95|[0x800043f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdd47ad230c500 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xdd47ad230c500 and rm_val == 0  #nosat<br>                                                                                             |[0x80000e04]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e08]:csrrs a7, fflags, zero<br> [0x80000e0c]:fsd fa2, 1504(a5)<br>  |
|  96|[0x80004400]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x59522cc62b803 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x59522cc62b803 and rm_val == 0  #nosat<br>                                                                                             |[0x80000e20]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa2, 1520(a5)<br>  |
|  97|[0x80004410]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5b3be3b6f1597 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x5b3be3b6f1597 and rm_val == 0  #nosat<br>                                                                                             |[0x80000e3c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e40]:csrrs a7, fflags, zero<br> [0x80000e44]:fsd fa2, 1536(a5)<br>  |
|  98|[0x80004420]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf95e94a40dc56 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf95e94a40dc56 and rm_val == 0  #nosat<br>                                                                                             |[0x80000e58]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e5c]:csrrs a7, fflags, zero<br> [0x80000e60]:fsd fa2, 1552(a5)<br>  |
|  99|[0x80004430]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9b58d2db8786f and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x9b58d2db8786f and rm_val == 0  #nosat<br>                                                                                             |[0x80000e74]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e78]:csrrs a7, fflags, zero<br> [0x80000e7c]:fsd fa2, 1568(a5)<br>  |
| 100|[0x80004440]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcca2a15201aa9 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xcca2a15201aa9 and rm_val == 0  #nosat<br>                                                                                             |[0x80000e90]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000e94]:csrrs a7, fflags, zero<br> [0x80000e98]:fsd fa2, 1584(a5)<br>  |
| 101|[0x80004450]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4d27694e5a38b and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x4d27694e5a38b and rm_val == 0  #nosat<br>                                                                                             |[0x80000eac]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000eb0]:csrrs a7, fflags, zero<br> [0x80000eb4]:fsd fa2, 1600(a5)<br>  |
| 102|[0x80004460]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2f2dacc08696f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x2f2dacc08696f and rm_val == 0  #nosat<br>                                                                                             |[0x80000ec8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000ecc]:csrrs a7, fflags, zero<br> [0x80000ed0]:fsd fa2, 1616(a5)<br>  |
| 103|[0x80004470]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xabb8bbe03b7df and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xabb8bbe03b7df and rm_val == 0  #nosat<br>                                                                                             |[0x80000ee4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa2, 1632(a5)<br>  |
| 104|[0x80004480]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbb5746cbb34cd and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xbb5746cbb34cd and rm_val == 0  #nosat<br>                                                                                             |[0x80000f00]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f04]:csrrs a7, fflags, zero<br> [0x80000f08]:fsd fa2, 1648(a5)<br>  |
| 105|[0x80004490]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa5666b92c9353 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xa5666b92c9353 and rm_val == 0  #nosat<br>                                                                                             |[0x80000f1c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f20]:csrrs a7, fflags, zero<br> [0x80000f24]:fsd fa2, 1664(a5)<br>  |
| 106|[0x800044a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x830a4319a6f37 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x830a4319a6f37 and rm_val == 0  #nosat<br>                                                                                             |[0x80000f38]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f3c]:csrrs a7, fflags, zero<br> [0x80000f40]:fsd fa2, 1680(a5)<br>  |
| 107|[0x800044b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6875b8a7de9f5 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x6875b8a7de9f5 and rm_val == 0  #nosat<br>                                                                                             |[0x80000f54]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f58]:csrrs a7, fflags, zero<br> [0x80000f5c]:fsd fa2, 1696(a5)<br>  |
| 108|[0x800044c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbc4dccb7ac380 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xbc4dccb7ac380 and rm_val == 0  #nosat<br>                                                                                             |[0x80000f70]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f74]:csrrs a7, fflags, zero<br> [0x80000f78]:fsd fa2, 1712(a5)<br>  |
| 109|[0x800044d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x23fbd09d7e9b6 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x23fbd09d7e9b6 and rm_val == 0  #nosat<br>                                                                                             |[0x80000f8c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000f90]:csrrs a7, fflags, zero<br> [0x80000f94]:fsd fa2, 1728(a5)<br>  |
| 110|[0x800044e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa38a3f0decfff and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xa38a3f0decfff and rm_val == 0  #nosat<br>                                                                                             |[0x80000fa8]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000fac]:csrrs a7, fflags, zero<br> [0x80000fb0]:fsd fa2, 1744(a5)<br>  |
| 111|[0x800044f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1e74ff66f075 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc1e74ff66f075 and rm_val == 0  #nosat<br>                                                                                             |[0x80000fc4]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa2, 1760(a5)<br>  |
| 112|[0x80004500]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x026a2990b0a7f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x026a2990b0a7f and rm_val == 0  #nosat<br>                                                                                             |[0x80000fe0]:fsub.d fa2, fa0, fa1, dyn<br> [0x80000fe4]:csrrs a7, fflags, zero<br> [0x80000fe8]:fsd fa2, 1776(a5)<br>  |
| 113|[0x80004510]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7cd8dfca2011d and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x7cd8dfca2011d and rm_val == 0  #nosat<br>                                                                                             |[0x80000ffc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001000]:csrrs a7, fflags, zero<br> [0x80001004]:fsd fa2, 1792(a5)<br>  |
| 114|[0x80004520]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3dcff67566087 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x3dcff67566087 and rm_val == 0  #nosat<br>                                                                                             |[0x80001018]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000101c]:csrrs a7, fflags, zero<br> [0x80001020]:fsd fa2, 1808(a5)<br>  |
| 115|[0x80004530]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x39bd6a090d93f and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x39bd6a090d93f and rm_val == 0  #nosat<br>                                                                                             |[0x80001034]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001038]:csrrs a7, fflags, zero<br> [0x8000103c]:fsd fa2, 1824(a5)<br>  |
| 116|[0x80004540]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xef9105cd9390b and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xef9105cd9390b and rm_val == 0  #nosat<br>                                                                                             |[0x80001050]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001054]:csrrs a7, fflags, zero<br> [0x80001058]:fsd fa2, 1840(a5)<br>  |
| 117|[0x80004550]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0xe19152f3266af and fs2 == 0 and fe2 == 0x7fa and fm2 == 0xe19152f3266af and rm_val == 0  #nosat<br>                                                                                             |[0x8000106c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001070]:csrrs a7, fflags, zero<br> [0x80001074]:fsd fa2, 1856(a5)<br>  |
| 118|[0x80004560]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x48f4a954751bd and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x48f4a954751bd and rm_val == 0  #nosat<br>                                                                                             |[0x80001088]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000108c]:csrrs a7, fflags, zero<br> [0x80001090]:fsd fa2, 1872(a5)<br>  |
| 119|[0x80004570]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x946024d663351 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x946024d663351 and rm_val == 0  #nosat<br>                                                                                             |[0x800010a4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa2, 1888(a5)<br>  |
| 120|[0x80004580]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc91ade861e02b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xc91ade861e02b and rm_val == 0  #nosat<br>                                                                                             |[0x800010c0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800010c4]:csrrs a7, fflags, zero<br> [0x800010c8]:fsd fa2, 1904(a5)<br>  |
| 121|[0x80004590]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x987aaa2c7bb6a and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x987aaa2c7bb6a and rm_val == 0  #nosat<br>                                                                                             |[0x800010dc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800010e0]:csrrs a7, fflags, zero<br> [0x800010e4]:fsd fa2, 1920(a5)<br>  |
| 122|[0x800045a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc3c9ccfa1b1bb and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xc3c9ccfa1b1bb and rm_val == 0  #nosat<br>                                                                                             |[0x800010f8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800010fc]:csrrs a7, fflags, zero<br> [0x80001100]:fsd fa2, 1936(a5)<br>  |
| 123|[0x800045b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5b39db9b4e7ac and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x5b39db9b4e7ac and rm_val == 0  #nosat<br>                                                                                             |[0x80001114]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001118]:csrrs a7, fflags, zero<br> [0x8000111c]:fsd fa2, 1952(a5)<br>  |
| 124|[0x800045c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x482567721754b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x482567721754b and rm_val == 0  #nosat<br>                                                                                             |[0x80001130]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001134]:csrrs a7, fflags, zero<br> [0x80001138]:fsd fa2, 1968(a5)<br>  |
| 125|[0x800045d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2bf422090b207 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x2bf422090b207 and rm_val == 0  #nosat<br>                                                                                             |[0x8000114c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001150]:csrrs a7, fflags, zero<br> [0x80001154]:fsd fa2, 1984(a5)<br>  |
| 126|[0x800045e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x551579cd90e3f and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0x551579cd90e3f and rm_val == 0  #nosat<br>                                                                                             |[0x80001168]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000116c]:csrrs a7, fflags, zero<br> [0x80001170]:fsd fa2, 2000(a5)<br>  |
| 127|[0x800045f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3617941ba03e8 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x3617941ba03e8 and rm_val == 0  #nosat<br>                                                                                             |[0x80001184]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa2, 2016(a5)<br>  |
| 128|[0x80004600]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x052debfe82e13 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x052debfe82e13 and rm_val == 0  #nosat<br>                                                                                             |[0x800011ac]:fsub.d fa2, fa0, fa1, dyn<br> [0x800011b0]:csrrs a7, fflags, zero<br> [0x800011b4]:fsd fa2, 0(a5)<br>     |
| 129|[0x80004610]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbd7ce681c543f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xbd7ce681c543f and rm_val == 0  #nosat<br>                                                                                             |[0x800011c8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800011cc]:csrrs a7, fflags, zero<br> [0x800011d0]:fsd fa2, 16(a5)<br>    |
| 130|[0x80004620]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaf054e65e9fad and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xaf054e65e9fad and rm_val == 0  #nosat<br>                                                                                             |[0x800011e4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa2, 32(a5)<br>    |
| 131|[0x80004630]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x833a9a7efc6ff and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0x833a9a7efc6ff and rm_val == 0  #nosat<br>                                                                                             |[0x80001200]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001204]:csrrs a7, fflags, zero<br> [0x80001208]:fsd fa2, 48(a5)<br>    |
| 132|[0x80004640]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x49bad4bf8d1a9 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x49bad4bf8d1a9 and rm_val == 0  #nosat<br>                                                                                             |[0x8000121c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001220]:csrrs a7, fflags, zero<br> [0x80001224]:fsd fa2, 64(a5)<br>    |
| 133|[0x80004650]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6c5583d2d8f82 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x6c5583d2d8f82 and rm_val == 0  #nosat<br>                                                                                             |[0x80001238]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000123c]:csrrs a7, fflags, zero<br> [0x80001240]:fsd fa2, 80(a5)<br>    |
| 134|[0x80004660]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x585c60a81aa3f and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x585c60a81aa3f and rm_val == 0  #nosat<br>                                                                                             |[0x80001254]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001258]:csrrs a7, fflags, zero<br> [0x8000125c]:fsd fa2, 96(a5)<br>    |
| 135|[0x80004670]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x46e9bf4155d7b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x46e9bf4155d7b and rm_val == 0  #nosat<br>                                                                                             |[0x80001270]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001274]:csrrs a7, fflags, zero<br> [0x80001278]:fsd fa2, 112(a5)<br>   |
| 136|[0x80004680]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x60b0632528095 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x60b0632528095 and rm_val == 0  #nosat<br>                                                                                             |[0x8000128c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001290]:csrrs a7, fflags, zero<br> [0x80001294]:fsd fa2, 128(a5)<br>   |
| 137|[0x80004690]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xc07725983617f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xc07725983617f and rm_val == 0  #nosat<br>                                                                                             |[0x800012a8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800012ac]:csrrs a7, fflags, zero<br> [0x800012b0]:fsd fa2, 144(a5)<br>   |
| 138|[0x800046a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x82dc4511ff204 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x82dc4511ff204 and rm_val == 0  #nosat<br>                                                                                             |[0x800012c4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa2, 160(a5)<br>   |
| 139|[0x800046b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x1175939fbdd3f and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0x1175939fbdd3f and rm_val == 0  #nosat<br>                                                                                             |[0x800012e0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800012e4]:csrrs a7, fflags, zero<br> [0x800012e8]:fsd fa2, 176(a5)<br>   |
| 140|[0x800046c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x58a25604824f3 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x58a25604824f3 and rm_val == 0  #nosat<br>                                                                                             |[0x800012fc]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001300]:csrrs a7, fflags, zero<br> [0x80001304]:fsd fa2, 192(a5)<br>   |
| 141|[0x800046d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x056bcd04279ed and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x056bcd04279ed and rm_val == 0  #nosat<br>                                                                                             |[0x80001318]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000131c]:csrrs a7, fflags, zero<br> [0x80001320]:fsd fa2, 208(a5)<br>   |
| 142|[0x800046e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x981d2bf67b45e and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x981d2bf67b45e and rm_val == 0  #nosat<br>                                                                                             |[0x80001334]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001338]:csrrs a7, fflags, zero<br> [0x8000133c]:fsd fa2, 224(a5)<br>   |
| 143|[0x800046f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb8d62745dccc1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xb8d62745dccc1 and rm_val == 0  #nosat<br>                                                                                             |[0x80001350]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001354]:csrrs a7, fflags, zero<br> [0x80001358]:fsd fa2, 240(a5)<br>   |
| 144|[0x80004700]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x6aedbc8cfe5cb and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x6aedbc8cfe5cb and rm_val == 0  #nosat<br>                                                                                             |[0x8000136c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001370]:csrrs a7, fflags, zero<br> [0x80001374]:fsd fa2, 256(a5)<br>   |
| 145|[0x80004710]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xca57966fc21ff and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0xca57966fc21ff and rm_val == 0  #nosat<br>                                                                                             |[0x80001388]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000138c]:csrrs a7, fflags, zero<br> [0x80001390]:fsd fa2, 272(a5)<br>   |
| 146|[0x80004720]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39935e95315b1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x39935e95315b1 and rm_val == 0  #nosat<br>                                                                                             |[0x800013a4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800013a8]:csrrs a7, fflags, zero<br> [0x800013ac]:fsd fa2, 288(a5)<br>   |
| 147|[0x80004730]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x13b37e2291279 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x13b37e2291279 and rm_val == 0  #nosat<br>                                                                                             |[0x800013c0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800013c4]:csrrs a7, fflags, zero<br> [0x800013c8]:fsd fa2, 304(a5)<br>   |
| 148|[0x80004740]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6d5a59350bdcb and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x6d5a59350bdcb and rm_val == 0  #nosat<br>                                                                                             |[0x800013dc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800013e0]:csrrs a7, fflags, zero<br> [0x800013e4]:fsd fa2, 320(a5)<br>   |
| 149|[0x80004750]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x026ab89a75256 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x026ab89a75256 and rm_val == 0  #nosat<br>                                                                                             |[0x800013f8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800013fc]:csrrs a7, fflags, zero<br> [0x80001400]:fsd fa2, 336(a5)<br>   |
| 150|[0x80004760]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x23d6f3e37b4f1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x23d6f3e37b4f1 and rm_val == 0  #nosat<br>                                                                                             |[0x80001414]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001418]:csrrs a7, fflags, zero<br> [0x8000141c]:fsd fa2, 352(a5)<br>   |
| 151|[0x80004770]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0xcbc315eca5f3f and fs2 == 0 and fe2 == 0x7fa and fm2 == 0xcbc315eca5f3f and rm_val == 0  #nosat<br>                                                                                             |[0x80001430]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001434]:csrrs a7, fflags, zero<br> [0x80001438]:fsd fa2, 368(a5)<br>   |
| 152|[0x80004780]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1f6a4c4d26ab9 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x1f6a4c4d26ab9 and rm_val == 0  #nosat<br>                                                                                             |[0x8000144c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001450]:csrrs a7, fflags, zero<br> [0x80001454]:fsd fa2, 384(a5)<br>   |
| 153|[0x80004790]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9e4795c8459f5 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x9e4795c8459f5 and rm_val == 0  #nosat<br>                                                                                             |[0x80001468]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000146c]:csrrs a7, fflags, zero<br> [0x80001470]:fsd fa2, 400(a5)<br>   |
| 154|[0x800047a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc5b9547c0fb71 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc5b9547c0fb71 and rm_val == 0  #nosat<br>                                                                                             |[0x80001484]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001488]:csrrs a7, fflags, zero<br> [0x8000148c]:fsd fa2, 416(a5)<br>   |
| 155|[0x800047b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x913b4236d8411 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x913b4236d8411 and rm_val == 0  #nosat<br>                                                                                             |[0x800014a0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800014a4]:csrrs a7, fflags, zero<br> [0x800014a8]:fsd fa2, 432(a5)<br>   |
| 156|[0x800047c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xea0b252eae7e0 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xea0b252eae7e0 and rm_val == 0  #nosat<br>                                                                                             |[0x800014bc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800014c0]:csrrs a7, fflags, zero<br> [0x800014c4]:fsd fa2, 448(a5)<br>   |
| 157|[0x800047d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x13bdffd461269 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x13bdffd461269 and rm_val == 0  #nosat<br>                                                                                             |[0x800014d8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800014dc]:csrrs a7, fflags, zero<br> [0x800014e0]:fsd fa2, 464(a5)<br>   |
| 158|[0x800047e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x27d4b8969c0b2 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x27d4b8969c0b2 and rm_val == 0  #nosat<br>                                                                                             |[0x800014f4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800014f8]:csrrs a7, fflags, zero<br> [0x800014fc]:fsd fa2, 480(a5)<br>   |
| 159|[0x800047f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x070d1456013e3 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x070d1456013e3 and rm_val == 0  #nosat<br>                                                                                             |[0x80001510]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001514]:csrrs a7, fflags, zero<br> [0x80001518]:fsd fa2, 496(a5)<br>   |
| 160|[0x80004800]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb877e6e317fa2 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xb877e6e317fa2 and rm_val == 0  #nosat<br>                                                                                             |[0x8000152c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001530]:csrrs a7, fflags, zero<br> [0x80001534]:fsd fa2, 512(a5)<br>   |
| 161|[0x80004810]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8a82024cc4e03 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x8a82024cc4e03 and rm_val == 0  #nosat<br>                                                                                             |[0x80001548]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000154c]:csrrs a7, fflags, zero<br> [0x80001550]:fsd fa2, 528(a5)<br>   |
| 162|[0x80004820]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0125698e86242 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x0125698e86242 and rm_val == 0  #nosat<br>                                                                                             |[0x80001564]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001568]:csrrs a7, fflags, zero<br> [0x8000156c]:fsd fa2, 544(a5)<br>   |
| 163|[0x80004830]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x930bcbd2d6035 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x930bcbd2d6035 and rm_val == 0  #nosat<br>                                                                                             |[0x80001580]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001584]:csrrs a7, fflags, zero<br> [0x80001588]:fsd fa2, 560(a5)<br>   |
| 164|[0x80004840]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf7646167590ef and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xf7646167590ef and rm_val == 0  #nosat<br>                                                                                             |[0x8000159c]:fsub.d fa2, fa0, fa1, dyn<br> [0x800015a0]:csrrs a7, fflags, zero<br> [0x800015a4]:fsd fa2, 576(a5)<br>   |
| 165|[0x80004850]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x643f753bef22f and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x643f753bef22f and rm_val == 0  #nosat<br>                                                                                             |[0x800015b8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800015bc]:csrrs a7, fflags, zero<br> [0x800015c0]:fsd fa2, 592(a5)<br>   |
| 166|[0x80004860]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf57237ddcb451 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xf57237ddcb451 and rm_val == 0  #nosat<br>                                                                                             |[0x800015d4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800015d8]:csrrs a7, fflags, zero<br> [0x800015dc]:fsd fa2, 608(a5)<br>   |
| 167|[0x80004870]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0ab870b5c1c40 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x0ab870b5c1c40 and rm_val == 0  #nosat<br>                                                                                             |[0x800015f0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800015f4]:csrrs a7, fflags, zero<br> [0x800015f8]:fsd fa2, 624(a5)<br>   |
| 168|[0x80004880]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x04507a06e8587 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x04507a06e8587 and rm_val == 0  #nosat<br>                                                                                             |[0x8000160c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:fsd fa2, 640(a5)<br>   |
| 169|[0x80004890]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7fb2260b115e9 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x7fb2260b115e9 and rm_val == 0  #nosat<br>                                                                                             |[0x80001628]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000162c]:csrrs a7, fflags, zero<br> [0x80001630]:fsd fa2, 656(a5)<br>   |
| 170|[0x800048a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x67f4f571a752e and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x67f4f571a752e and rm_val == 0  #nosat<br>                                                                                             |[0x80001644]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001648]:csrrs a7, fflags, zero<br> [0x8000164c]:fsd fa2, 672(a5)<br>   |
| 171|[0x800048b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x6251b45dfbd3b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0x6251b45dfbd3b and rm_val == 0  #nosat<br>                                                                                             |[0x80001660]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001664]:csrrs a7, fflags, zero<br> [0x80001668]:fsd fa2, 688(a5)<br>   |
| 172|[0x800048c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x98455e99dfdb1 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x98455e99dfdb1 and rm_val == 0  #nosat<br>                                                                                             |[0x8000167c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001680]:csrrs a7, fflags, zero<br> [0x80001684]:fsd fa2, 704(a5)<br>   |
| 173|[0x800048d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x1ad5e9ebc09df and fs2 == 0 and fe2 == 0x7fa and fm2 == 0x1ad5e9ebc09df and rm_val == 0  #nosat<br>                                                                                             |[0x80001698]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000169c]:csrrs a7, fflags, zero<br> [0x800016a0]:fsd fa2, 720(a5)<br>   |
| 174|[0x800048e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x02b48f992cb49 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x02b48f992cb49 and rm_val == 0  #nosat<br>                                                                                             |[0x800016b4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800016b8]:csrrs a7, fflags, zero<br> [0x800016bc]:fsd fa2, 736(a5)<br>   |
| 175|[0x800048f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc3d4499ff58c3 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xc3d4499ff58c3 and rm_val == 0  #nosat<br>                                                                                             |[0x800016d0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800016d4]:csrrs a7, fflags, zero<br> [0x800016d8]:fsd fa2, 752(a5)<br>   |
| 176|[0x80004900]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x36a63c245f557 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x36a63c245f557 and rm_val == 0  #nosat<br>                                                                                             |[0x800016ec]:fsub.d fa2, fa0, fa1, dyn<br> [0x800016f0]:csrrs a7, fflags, zero<br> [0x800016f4]:fsd fa2, 768(a5)<br>   |
| 177|[0x80004910]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa8fa703a4078c and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xa8fa703a4078c and rm_val == 0  #nosat<br>                                                                                             |[0x80001708]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000170c]:csrrs a7, fflags, zero<br> [0x80001710]:fsd fa2, 784(a5)<br>   |
| 178|[0x80004920]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdf7523fde6c5d and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xdf7523fde6c5d and rm_val == 0  #nosat<br>                                                                                             |[0x80001724]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001728]:csrrs a7, fflags, zero<br> [0x8000172c]:fsd fa2, 800(a5)<br>   |
| 179|[0x80004930]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7166677e49c3c and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x7166677e49c3c and rm_val == 0  #nosat<br>                                                                                             |[0x80001740]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001744]:csrrs a7, fflags, zero<br> [0x80001748]:fsd fa2, 816(a5)<br>   |
| 180|[0x80004940]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xef2a4f7c7db7f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0xef2a4f7c7db7f and rm_val == 0  #nosat<br>                                                                                             |[0x8000175c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001760]:csrrs a7, fflags, zero<br> [0x80001764]:fsd fa2, 832(a5)<br>   |
| 181|[0x80004950]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfc2ea66e5019e and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xfc2ea66e5019e and rm_val == 0  #nosat<br>                                                                                             |[0x80001778]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000177c]:csrrs a7, fflags, zero<br> [0x80001780]:fsd fa2, 848(a5)<br>   |
| 182|[0x80004960]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x48dace8666677 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x48dace8666677 and rm_val == 0  #nosat<br>                                                                                             |[0x80001794]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001798]:csrrs a7, fflags, zero<br> [0x8000179c]:fsd fa2, 864(a5)<br>   |
| 183|[0x80004970]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xacd7053aa42a2 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xacd7053aa42a2 and rm_val == 0  #nosat<br>                                                                                             |[0x800017b0]:fsub.d fa2, fa0, fa1, dyn<br> [0x800017b4]:csrrs a7, fflags, zero<br> [0x800017b8]:fsd fa2, 880(a5)<br>   |
| 184|[0x80004980]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x28bc82f697c4d and fs2 == 0 and fe2 == 0x7fd and fm2 == 0x28bc82f697c4d and rm_val == 0  #nosat<br>                                                                                             |[0x800017cc]:fsub.d fa2, fa0, fa1, dyn<br> [0x800017d0]:csrrs a7, fflags, zero<br> [0x800017d4]:fsd fa2, 896(a5)<br>   |
| 185|[0x80004990]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc01045c2cd787 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xc01045c2cd787 and rm_val == 0  #nosat<br>                                                                                             |[0x800017e8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800017ec]:csrrs a7, fflags, zero<br> [0x800017f0]:fsd fa2, 912(a5)<br>   |
| 186|[0x800049a0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xdd5b61587fd27 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xdd5b61587fd27 and rm_val == 0  #nosat<br>                                                                                             |[0x80001804]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001808]:csrrs a7, fflags, zero<br> [0x8000180c]:fsd fa2, 928(a5)<br>   |
| 187|[0x800049b0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc0659af8369fd and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xc0659af8369fd and rm_val == 0  #nosat<br>                                                                                             |[0x80001820]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001824]:csrrs a7, fflags, zero<br> [0x80001828]:fsd fa2, 944(a5)<br>   |
| 188|[0x800049c0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xdbcde43895c3f and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0xdbcde43895c3f and rm_val == 0  #nosat<br>                                                                                             |[0x8000183c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001840]:csrrs a7, fflags, zero<br> [0x80001844]:fsd fa2, 960(a5)<br>   |
| 189|[0x800049d0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xbb9876f8130c3 and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xbb9876f8130c3 and rm_val == 0  #nosat<br>                                                                                             |[0x80001858]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000185c]:csrrs a7, fflags, zero<br> [0x80001860]:fsd fa2, 976(a5)<br>   |
| 190|[0x800049e0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe0d828b86622a and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xe0d828b86622a and rm_val == 0  #nosat<br>                                                                                             |[0x80001874]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001878]:csrrs a7, fflags, zero<br> [0x8000187c]:fsd fa2, 992(a5)<br>   |
| 191|[0x800049f0]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xa0e7ad32453df and fs2 == 0 and fe2 == 0x7f9 and fm2 == 0xa0e7ad32453df and rm_val == 0  #nosat<br>                                                                                             |[0x80001890]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001894]:csrrs a7, fflags, zero<br> [0x80001898]:fsd fa2, 1008(a5)<br>  |
| 192|[0x80004a00]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcd87e65450c45 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xcd87e65450c45 and rm_val == 0  #nosat<br>                                                                                             |[0x800018ac]:fsub.d fa2, fa0, fa1, dyn<br> [0x800018b0]:csrrs a7, fflags, zero<br> [0x800018b4]:fsd fa2, 1024(a5)<br>  |
| 193|[0x80004a10]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xd481499755d4b and fs2 == 0 and fe2 == 0x7fc and fm2 == 0xd481499755d4b and rm_val == 0  #nosat<br>                                                                                             |[0x800018c8]:fsub.d fa2, fa0, fa1, dyn<br> [0x800018cc]:csrrs a7, fflags, zero<br> [0x800018d0]:fsd fa2, 1040(a5)<br>  |
| 194|[0x80004a20]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc81394a2171e9 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xc81394a2171e9 and rm_val == 0  #nosat<br>                                                                                             |[0x800018e4]:fsub.d fa2, fa0, fa1, dyn<br> [0x800018e8]:csrrs a7, fflags, zero<br> [0x800018ec]:fsd fa2, 1056(a5)<br>  |
| 195|[0x80004a30]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x86499331191c4 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x86499331191c4 and rm_val == 0  #nosat<br>                                                                                             |[0x80001900]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001904]:csrrs a7, fflags, zero<br> [0x80001908]:fsd fa2, 1072(a5)<br>  |
| 196|[0x80004a40]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xabe96758f2a09 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0xabe96758f2a09 and rm_val == 0  #nosat<br>                                                                                             |[0x8000191c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001920]:csrrs a7, fflags, zero<br> [0x80001924]:fsd fa2, 1088(a5)<br>  |
| 197|[0x80004a50]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x8072e8f9c858f and fs2 == 0 and fe2 == 0x7fb and fm2 == 0x8072e8f9c858f and rm_val == 0  #nosat<br>                                                                                             |[0x80001938]:fsub.d fa2, fa0, fa1, dyn<br> [0x8000193c]:csrrs a7, fflags, zero<br> [0x80001940]:fsd fa2, 1104(a5)<br>  |
| 198|[0x80004a60]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4d9d98184b9d9 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x4d9d98184b9d9 and rm_val == 0  #nosat<br>                                                                                             |[0x80001954]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001958]:csrrs a7, fflags, zero<br> [0x8000195c]:fsd fa2, 1120(a5)<br>  |
| 199|[0x80004a70]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfb5355e167379 and fs2 == 0 and fe2 == 0x7fd and fm2 == 0xfb5355e167379 and rm_val == 0  #nosat<br>                                                                                             |[0x80001970]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:fsd fa2, 1136(a5)<br>  |
| 200|[0x80004a80]<br>0xD5BFDDB7D5BFDDB7|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x870d778409f12 and fs2 == 0 and fe2 == 0x7fe and fm2 == 0x870d778409f12 and rm_val == 0  #nosat<br>                                                                                             |[0x8000198c]:fsub.d fa2, fa0, fa1, dyn<br> [0x80001990]:csrrs a7, fflags, zero<br> [0x80001994]:fsd fa2, 1152(a5)<br>  |
