
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002ed0')]      |
| SIG_REGION                | [('0x80006210', '0x80007790', '688 dwords')]      |
| COV_LABELS                | fmadd_b7      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fmadd_b7-01.S/ref.S    |
| Total Number of coverpoints| 484     |
| Total Coverpoints Hit     | 477      |
| Total Signature Updates   | 688      |
| STAT1                     | 344      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 344     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmadd.d', 'rs1 : f6', 'rs2 : f31', 'rs3 : f31', 'rd : f3', 'rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1']
Last Code Sequence : 
	-[0x800003c0]:fmadd.d ft3, ft6, ft11, ft11, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsd ft3, 0(a5)
Current Store : [0x800003cc] : sd a7, 8(a5) -- Store: [0x80006218]:0x0000000000000001




Last Coverpoint : ['rs1 : f28', 'rs2 : f28', 'rs3 : f28', 'rd : f28', 'rs1 == rs2 == rs3 == rd']
Last Code Sequence : 
	-[0x800003e0]:fmadd.d ft8, ft8, ft8, ft8, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsd ft8, 16(a5)
Current Store : [0x800003ec] : sd a7, 24(a5) -- Store: [0x80006228]:0x0000000000000005




Last Coverpoint : ['rs1 : f20', 'rs2 : f1', 'rs3 : f27', 'rd : f24', 'rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x44dbafd6c6641 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x5d3d1dcd09f6f and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0xbb2d0ce1c61ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000400]:fmadd.d fs8, fs4, ft1, fs11, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fs8, 32(a5)
Current Store : [0x8000040c] : sd a7, 40(a5) -- Store: [0x80006238]:0x0000000000000005




Last Coverpoint : ['rs1 : f16', 'rs2 : f9', 'rs3 : f16', 'rd : f17', 'rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2']
Last Code Sequence : 
	-[0x80000420]:fmadd.d fa7, fa6, fs1, fa6, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsd fa7, 48(a5)
Current Store : [0x8000042c] : sd a7, 56(a5) -- Store: [0x80006248]:0x0000000000000005




Last Coverpoint : ['rs1 : f2', 'rs2 : f2', 'rs3 : f20', 'rd : f14', 'rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3']
Last Code Sequence : 
	-[0x80000440]:fmadd.d fa4, ft2, ft2, fs4, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:fsd fa4, 64(a5)
Current Store : [0x8000044c] : sd a7, 72(a5) -- Store: [0x80006258]:0x0000000000000005




Last Coverpoint : ['rs1 : f14', 'rs2 : f0', 'rs3 : f0', 'rd : f0', 'rd == rs2 == rs3 != rs1']
Last Code Sequence : 
	-[0x80000460]:fmadd.d ft0, fa4, ft0, ft0, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd ft0, 80(a5)
Current Store : [0x8000046c] : sd a7, 88(a5) -- Store: [0x80006268]:0x0000000000000005




Last Coverpoint : ['rs1 : f12', 'rs2 : f12', 'rs3 : f12', 'rd : f21', 'rs1 == rs2 == rs3 != rd']
Last Code Sequence : 
	-[0x80000480]:fmadd.d fs5, fa2, fa2, fa2, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd fs5, 96(a5)
Current Store : [0x8000048c] : sd a7, 104(a5) -- Store: [0x80006278]:0x0000000000000005




Last Coverpoint : ['rs1 : f26', 'rs2 : f22', 'rs3 : f3', 'rd : f26', 'rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5da5889e16df9 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x438eb818d96a9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb9eac8a229361 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004a0]:fmadd.d fs10, fs10, fs6, ft3, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:fsd fs10, 112(a5)
Current Store : [0x800004ac] : sd a7, 120(a5) -- Store: [0x80006288]:0x0000000000000005




Last Coverpoint : ['rs1 : f19', 'rs2 : f15', 'rs3 : f23', 'rd : f23', 'rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x981534f052c36 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xa056ecb4da0d0 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x4bd6833d13437 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fmadd.d fs7, fs3, fa5, fs7, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd fs7, 128(a5)
Current Store : [0x800004cc] : sd a7, 136(a5) -- Store: [0x80006298]:0x0000000000000005




Last Coverpoint : ['rs1 : f29', 'rs2 : f8', 'rs3 : f29', 'rd : f29', 'rs1 == rd == rs3 != rs2']
Last Code Sequence : 
	-[0x800004e0]:fmadd.d ft9, ft9, fs0, ft9, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:fsd ft9, 144(a5)
Current Store : [0x800004ec] : sd a7, 152(a5) -- Store: [0x800062a8]:0x0000000000000005




Last Coverpoint : ['rs1 : f13', 'rs2 : f10', 'rs3 : f19', 'rd : f10', 'rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1', 'fs1 == 0 and fe1 == 0x7fb and fm1 == 0x945b7f81d8fdf and fs2 == 1 and fe2 == 0x401 and fm2 == 0xd147284d8fa36 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x6f754bd2033da and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000500]:fmadd.d fa0, fa3, fa0, fs3, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:fsd fa0, 160(a5)
Current Store : [0x8000050c] : sd a7, 168(a5) -- Store: [0x800062b8]:0x0000000000000005




Last Coverpoint : ['rs1 : f7', 'rs2 : f7', 'rs3 : f24', 'rd : f7', 'rs1 == rs2 == rd != rs3']
Last Code Sequence : 
	-[0x80000520]:fmadd.d ft7, ft7, ft7, fs8, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd ft7, 176(a5)
Current Store : [0x8000052c] : sd a7, 184(a5) -- Store: [0x800062c8]:0x0000000000000005




Last Coverpoint : ['rs1 : f10', 'rs2 : f24', 'rs3 : f25', 'rd : f5', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9d1d4cf40c46 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x2db97307e1853 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf5e02f30d7619 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000540]:fmadd.d ft5, fa0, fs8, fs9, dyn
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:fsd ft5, 192(a5)
Current Store : [0x8000054c] : sd a7, 200(a5) -- Store: [0x800062d8]:0x0000000000000005




Last Coverpoint : ['rs1 : f31', 'rs2 : f21', 'rs3 : f6', 'rd : f11', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9a7a5b2cb1b77 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x6d6f724756323 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x24f9932490413 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000560]:fmadd.d fa1, ft11, fs5, ft6, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd fa1, 208(a5)
Current Store : [0x8000056c] : sd a7, 216(a5) -- Store: [0x800062e8]:0x0000000000000005




Last Coverpoint : ['rs1 : f24', 'rs2 : f20', 'rs3 : f11', 'rd : f12', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb31d7703f8e22 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x746b6e9a3545d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x3c7eb51fa3dd5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000580]:fmadd.d fa2, fs8, fs4, fa1, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd fa2, 224(a5)
Current Store : [0x8000058c] : sd a7, 232(a5) -- Store: [0x800062f8]:0x0000000000000005




Last Coverpoint : ['rs1 : f27', 'rs2 : f5', 'rs3 : f14', 'rd : f15', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffd4ea70da7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xb5e29f1f284e6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xae2ffe7a23837 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fmadd.d fa5, fs11, ft5, fa4, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsd fa5, 240(a5)
Current Store : [0x800005ac] : sd a7, 248(a5) -- Store: [0x80006308]:0x0000000000000005




Last Coverpoint : ['rs1 : f23', 'rs2 : f30', 'rs3 : f15', 'rd : f2', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6836a0e788195 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x694f7603a23ec and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xfc64d7d071783 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fmadd.d ft2, fs7, ft10, fa5, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:fsd ft2, 256(a5)
Current Store : [0x800005cc] : sd a7, 264(a5) -- Store: [0x80006318]:0x0000000000000005




Last Coverpoint : ['rs1 : f8', 'rs2 : f23', 'rs3 : f9', 'rd : f6', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x808d937241712 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x49554bcd6e9c4 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xeeb6135ddcc33 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fmadd.d ft6, fs0, fs7, fs1, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd ft6, 272(a5)
Current Store : [0x800005ec] : sd a7, 280(a5) -- Store: [0x80006328]:0x0000000000000005




Last Coverpoint : ['rs1 : f0', 'rs2 : f26', 'rs3 : f4', 'rd : f27', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1ff728210343b and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x44fa8038499fc and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x6d8e9661dd515 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000600]:fmadd.d fs11, ft0, fs10, ft4, dyn
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:fsd fs11, 288(a5)
Current Store : [0x8000060c] : sd a7, 296(a5) -- Store: [0x80006338]:0x0000000000000005




Last Coverpoint : ['rs1 : f17', 'rs2 : f18', 'rs3 : f2', 'rd : f4', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1bb19ce92db19 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x73c0a7916b8dc and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x9bf7e54da040f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000620]:fmadd.d ft4, fa7, fs2, ft2, dyn
	-[0x80000624]:csrrs a7, fflags, zero
	-[0x80000628]:fsd ft4, 304(a5)
Current Store : [0x8000062c] : sd a7, 312(a5) -- Store: [0x80006348]:0x0000000000000005




Last Coverpoint : ['rs1 : f25', 'rs2 : f6', 'rs3 : f10', 'rd : f18', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9224a0bb6a93d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x191c6e9e31a75 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb996de338a277 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000640]:fmadd.d fs2, fs9, ft6, fa0, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd fs2, 320(a5)
Current Store : [0x8000064c] : sd a7, 328(a5) -- Store: [0x80006358]:0x0000000000000005




Last Coverpoint : ['rs1 : f15', 'rs2 : f4', 'rs3 : f22', 'rd : f1', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xed8fe95a3f4cd and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xd4577ac1b72f3 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc379df96aca26 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000660]:fmadd.d ft1, fa5, ft4, fs6, dyn
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:fsd ft1, 336(a5)
Current Store : [0x8000066c] : sd a7, 344(a5) -- Store: [0x80006368]:0x0000000000000005




Last Coverpoint : ['rs1 : f18', 'rs2 : f16', 'rs3 : f1', 'rd : f9', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0x0d46afa2c97af and fs2 == 1 and fe2 == 0x403 and fm2 == 0x18daad470718d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x276b548f17c0d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000680]:fmadd.d fs1, fs2, fa6, ft1, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsd fs1, 352(a5)
Current Store : [0x8000068c] : sd a7, 360(a5) -- Store: [0x80006378]:0x0000000000000005




Last Coverpoint : ['rs1 : f1', 'rs2 : f14', 'rs3 : f13', 'rd : f31', 'fs1 == 0 and fe1 == 0x7fa and fm1 == 0xac88b8d489e5f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2b22ab6de4ad0 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf4bdb90011c1e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fmadd.d ft11, ft1, fa4, fa3, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd ft11, 368(a5)
Current Store : [0x800006ac] : sd a7, 376(a5) -- Store: [0x80006388]:0x0000000000000005




Last Coverpoint : ['rs1 : f11', 'rs2 : f29', 'rs3 : f17', 'rd : f30', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa0e689b66eb78 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x07c06cf88eb57 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xad8635d7be675 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006c0]:fmadd.d ft10, fa1, ft9, fa7, dyn
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:fsd ft10, 384(a5)
Current Store : [0x800006cc] : sd a7, 392(a5) -- Store: [0x80006398]:0x0000000000000005




Last Coverpoint : ['rs1 : f5', 'rs2 : f3', 'rs3 : f7', 'rd : f19', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3128f1c01a74f and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x63dbc01935a32 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0xa831ba40f6467 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800006e0]:fmadd.d fs3, ft5, ft3, ft7, dyn
	-[0x800006e4]:csrrs a7, fflags, zero
	-[0x800006e8]:fsd fs3, 400(a5)
Current Store : [0x800006ec] : sd a7, 408(a5) -- Store: [0x800063a8]:0x0000000000000005




Last Coverpoint : ['rs1 : f9', 'rs2 : f11', 'rs3 : f30', 'rd : f13', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x10b1191e4ab27 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xd21443a71a52d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf077f59f737b3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000700]:fmadd.d fa3, fs1, fa1, ft10, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:fsd fa3, 416(a5)
Current Store : [0x8000070c] : sd a7, 424(a5) -- Store: [0x800063b8]:0x0000000000000005




Last Coverpoint : ['rs1 : f22', 'rs2 : f27', 'rs3 : f18', 'rd : f25', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0x88f5e22ac0386 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x384d3be5a0d02 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdf62398a470ce and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000720]:fmadd.d fs9, fs6, fs11, fs2, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd fs9, 432(a5)
Current Store : [0x8000072c] : sd a7, 440(a5) -- Store: [0x800063c8]:0x0000000000000005




Last Coverpoint : ['rs1 : f4', 'rs2 : f25', 'rs3 : f26', 'rd : f20', 'fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc92ff15f4967 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x04497175a0ef8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc404d60632ee9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000740]:fmadd.d fs4, ft4, fs9, fs10, dyn
	-[0x80000744]:csrrs a7, fflags, zero
	-[0x80000748]:fsd fs4, 448(a5)
Current Store : [0x8000074c] : sd a7, 456(a5) -- Store: [0x800063d8]:0x0000000000000005




Last Coverpoint : ['rs1 : f30', 'rs2 : f13', 'rs3 : f8', 'rd : f16', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd479c68e9c578 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x01f5907e92813 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xd80fa14c51295 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000760]:fmadd.d fa6, ft10, fa3, fs0, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsd fa6, 464(a5)
Current Store : [0x8000076c] : sd a7, 472(a5) -- Store: [0x800063e8]:0x0000000000000005




Last Coverpoint : ['rs1 : f3', 'rs2 : f19', 'rs3 : f21', 'rd : f22', 'fs1 == 0 and fe1 == 0x7fb and fm1 == 0xe428a0aabe83f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x575affdc2d4cd and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x44af44b910f53 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000780]:fmadd.d fs6, ft3, fs3, fs5, dyn
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:fsd fs6, 480(a5)
Current Store : [0x8000078c] : sd a7, 488(a5) -- Store: [0x800063f8]:0x0000000000000005




Last Coverpoint : ['rs1 : f21', 'rs2 : f17', 'rs3 : f5', 'rd : f8', 'fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe087ff1bcfd1f and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xb192da82db601 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x96ecd71b7c3a4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007a0]:fmadd.d fs0, fs5, fa7, ft5, dyn
	-[0x800007a4]:csrrs a7, fflags, zero
	-[0x800007a8]:fsd fs0, 496(a5)
Current Store : [0x800007ac] : sd a7, 504(a5) -- Store: [0x80006408]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6b3afa0937d64 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x4208c88a6ac66 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc8eca4e1e1271 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:fsd fa3, 512(a5)
Current Store : [0x800007cc] : sd a7, 520(a5) -- Store: [0x80006418]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0f8517a6c774d and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x4a9154a0a1947 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x5e9bb4a16ce53 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800007e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007e4]:csrrs a7, fflags, zero
	-[0x800007e8]:fsd fa3, 528(a5)
Current Store : [0x800007ec] : sd a7, 536(a5) -- Store: [0x80006428]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x742379bee86f1 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x0c84cacab5e7e and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x86562c894c40f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000800]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa3, 544(a5)
Current Store : [0x8000080c] : sd a7, 552(a5) -- Store: [0x80006438]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b3906a7a121d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x6a3a05503c535 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa762748a714a7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000820]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000824]:csrrs a7, fflags, zero
	-[0x80000828]:fsd fa3, 560(a5)
Current Store : [0x8000082c] : sd a7, 568(a5) -- Store: [0x80006448]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x524d0caddaebb and fs2 == 1 and fe2 == 0x3fa and fm2 == 0x349cc81502e36 and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x97d3e29cdb5ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000840]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsd fa3, 576(a5)
Current Store : [0x8000084c] : sd a7, 584(a5) -- Store: [0x80006458]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb73268900a96f and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xb0a02d068a60f and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x731bee99c06e5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000860]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000864]:csrrs a7, fflags, zero
	-[0x80000868]:fsd fa3, 592(a5)
Current Store : [0x8000086c] : sd a7, 600(a5) -- Store: [0x80006468]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39584a81105c4 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x82abd70b0818c and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xd94975870627b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000880]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000884]:csrrs a7, fflags, zero
	-[0x80000888]:fsd fa3, 608(a5)
Current Store : [0x8000088c] : sd a7, 616(a5) -- Store: [0x80006478]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb837769085d32 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x1a9ff101a6b89 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe600217ce4b48 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008a0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008a4]:csrrs a7, fflags, zero
	-[0x800008a8]:fsd fa3, 624(a5)
Current Store : [0x800008ac] : sd a7, 632(a5) -- Store: [0x80006488]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x0a7b69d393cb3 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x5f5596f62e009 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x6db84e37cd601 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008c4]:csrrs a7, fflags, zero
	-[0x800008c8]:fsd fa3, 640(a5)
Current Store : [0x800008cc] : sd a7, 648(a5) -- Store: [0x80006498]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xc21b18f92a0df and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xd7ccd567ee936 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x9ec3ffe0cd89f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa3, 656(a5)
Current Store : [0x800008ec] : sd a7, 664(a5) -- Store: [0x800064a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x870f302f4b1d3 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x758834daa227a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1d4c9901c8ff2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000900]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000904]:csrrs a7, fflags, zero
	-[0x80000908]:fsd fa3, 672(a5)
Current Store : [0x8000090c] : sd a7, 680(a5) -- Store: [0x800064b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x245fab045b485 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xc7a4e0163cb53 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x04312b15b41cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000920]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:fsd fa3, 688(a5)
Current Store : [0x8000092c] : sd a7, 696(a5) -- Store: [0x800064c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0ce4ebbfb540b and fs2 == 1 and fe2 == 0x400 and fm2 == 0x4976ed9eb8676 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5a0f1e14af88c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000940]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000944]:csrrs a7, fflags, zero
	-[0x80000948]:fsd fa3, 704(a5)
Current Store : [0x8000094c] : sd a7, 712(a5) -- Store: [0x800064d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x0e0b709ce64ff and fs2 == 1 and fe2 == 0x400 and fm2 == 0x48d0c005bc79b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x5adadc2328113 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000960]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000964]:csrrs a7, fflags, zero
	-[0x80000968]:fsd fa3, 720(a5)
Current Store : [0x8000096c] : sd a7, 728(a5) -- Store: [0x800064e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x879541c7ed593 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x5cc462aeb1f6c and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x0abda5523f47f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000980]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000984]:csrrs a7, fflags, zero
	-[0x80000988]:fsd fa3, 736(a5)
Current Store : [0x8000098c] : sd a7, 744(a5) -- Store: [0x800064f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x121e9a0da302b and fs2 == 1 and fe2 == 0x400 and fm2 == 0x844c9f59c5dc0 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9fc86d33894ba and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009a0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009a4]:csrrs a7, fflags, zero
	-[0x800009a8]:fsd fa3, 752(a5)
Current Store : [0x800009ac] : sd a7, 760(a5) -- Store: [0x80006508]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x74bf0fc305469 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xed1f21ce781d1 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x6700a2db5db8a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa3, 768(a5)
Current Store : [0x800009cc] : sd a7, 776(a5) -- Store: [0x80006518]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4f9843f2017a8 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x74e619b913599 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe8d6e741329cd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800009e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009e4]:csrrs a7, fflags, zero
	-[0x800009e8]:fsd fa3, 784(a5)
Current Store : [0x800009ec] : sd a7, 792(a5) -- Store: [0x80006528]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc4cb84125d463 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xd8e23eda62f1d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa233b32c013e2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsd fa3, 800(a5)
Current Store : [0x80000a0c] : sd a7, 808(a5) -- Store: [0x80006538]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x84f9d9c86b344 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x835443fd3ffa5 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2642dec1cffa5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a24]:csrrs a7, fflags, zero
	-[0x80000a28]:fsd fa3, 816(a5)
Current Store : [0x80000a2c] : sd a7, 824(a5) -- Store: [0x80006548]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcacc4e524c550 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x75bb9a10ed3a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4ee5f2bc2e2fb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a44]:csrrs a7, fflags, zero
	-[0x80000a48]:fsd fa3, 832(a5)
Current Store : [0x80000a4c] : sd a7, 840(a5) -- Store: [0x80006558]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x812fb8713b96a and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7a736b7ba0914 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1cb71040013bc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a64]:csrrs a7, fflags, zero
	-[0x80000a68]:fsd fa3, 848(a5)
Current Store : [0x80000a6c] : sd a7, 856(a5) -- Store: [0x80006568]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeabfe627d909 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7e2b47dda1000 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x4176bab09f657 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000a80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a84]:csrrs a7, fflags, zero
	-[0x80000a88]:fsd fa3, 864(a5)
Current Store : [0x80000a8c] : sd a7, 872(a5) -- Store: [0x80006578]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7ebba471590af and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x0df228c7f1d67 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x93953624ccd47 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa3, 880(a5)
Current Store : [0x80000aac] : sd a7, 888(a5) -- Store: [0x80006588]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x994d05cbd286b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x6e5ef9c0f6465 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x24e1fbf0fafdf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ac0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ac4]:csrrs a7, fflags, zero
	-[0x80000ac8]:fsd fa3, 896(a5)
Current Store : [0x80000acc] : sd a7, 904(a5) -- Store: [0x80006598]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x66b55b4febf46 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x18cf187a351e3 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x89788ad07d1df and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:fsd fa3, 912(a5)
Current Store : [0x80000aec] : sd a7, 920(a5) -- Store: [0x800065a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf68d2a469cf6f and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x006642f5da72f and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xf755e9f87beef and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b04]:csrrs a7, fflags, zero
	-[0x80000b08]:fsd fa3, 928(a5)
Current Store : [0x80000b0c] : sd a7, 936(a5) -- Store: [0x800065b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb6f00dfbdfe01 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x589679d3cfdc3 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x276a4a2aa4a3c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b24]:csrrs a7, fflags, zero
	-[0x80000b28]:fsd fa3, 944(a5)
Current Store : [0x80000b2c] : sd a7, 952(a5) -- Store: [0x800065c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf573aeb279fe3 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x60a8d1dbc558e and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x5964df98fd81f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b44]:csrrs a7, fflags, zero
	-[0x80000b48]:fsd fa3, 960(a5)
Current Store : [0x80000b4c] : sd a7, 968(a5) -- Store: [0x800065d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x09dbac8969113 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x435bc3a138aa2 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x4fcf76f176d5f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b64]:csrrs a7, fflags, zero
	-[0x80000b68]:fsd fa3, 976(a5)
Current Store : [0x80000b6c] : sd a7, 984(a5) -- Store: [0x800065e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa38d55d9c4288 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x86fb473ff8168 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x40629090fb433 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa3, 992(a5)
Current Store : [0x80000b8c] : sd a7, 1000(a5) -- Store: [0x800065f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x66f39d8f4fc87 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x1a0ba107246d0 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8b78a9d0dcdec and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ba0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ba4]:csrrs a7, fflags, zero
	-[0x80000ba8]:fsd fa3, 1008(a5)
Current Store : [0x80000bac] : sd a7, 1016(a5) -- Store: [0x80006608]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xd9da6c4705d9f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x58e53544b6f73 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3f32e23dda3fb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000bc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000bc4]:csrrs a7, fflags, zero
	-[0x80000bc8]:fsd fa3, 1024(a5)
Current Store : [0x80000bcc] : sd a7, 1032(a5) -- Store: [0x80006618]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa71ff63ffacb1 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x1585be476d9f0 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xcab2a38df16b3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000be0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000be4]:csrrs a7, fflags, zero
	-[0x80000be8]:fsd fa3, 1040(a5)
Current Store : [0x80000bec] : sd a7, 1048(a5) -- Store: [0x80006628]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3afe5ed82437b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x75b3a20cec993 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xcbd1a7721cf6b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c04]:csrrs a7, fflags, zero
	-[0x80000c08]:fsd fa3, 1056(a5)
Current Store : [0x80000c0c] : sd a7, 1064(a5) -- Store: [0x80006638]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7386e800ca64f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x421968df359dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd3749030653b2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c24]:csrrs a7, fflags, zero
	-[0x80000c28]:fsd fa3, 1072(a5)
Current Store : [0x80000c2c] : sd a7, 1080(a5) -- Store: [0x80006648]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x81aaf142db421 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xa8e39c961f225 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x400d03087ec1b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c44]:csrrs a7, fflags, zero
	-[0x80000c48]:fsd fa3, 1088(a5)
Current Store : [0x80000c4c] : sd a7, 1096(a5) -- Store: [0x80006658]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf2378cb62ac85 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x2ca97134a1d6c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x24916df128e07 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa3, 1104(a5)
Current Store : [0x80000c6c] : sd a7, 1112(a5) -- Store: [0x80006668]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x1d37938799ebf and fs2 == 1 and fe2 == 0x403 and fm2 == 0xeffa856a7a98c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x144ac996e3256 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000c80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c84]:csrrs a7, fflags, zero
	-[0x80000c88]:fsd fa3, 1120(a5)
Current Store : [0x80000c8c] : sd a7, 1128(a5) -- Store: [0x80006678]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb6aa24aebaa4b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x0042b74acd23d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb71c769ffc9bf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsd fa3, 1136(a5)
Current Store : [0x80000cac] : sd a7, 1144(a5) -- Store: [0x80006688]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd7b4f6ca5d29c and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x4c7d1c8eaf2a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x32529c04d2e18 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000cc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000cc4]:csrrs a7, fflags, zero
	-[0x80000cc8]:fsd fa3, 1152(a5)
Current Store : [0x80000ccc] : sd a7, 1160(a5) -- Store: [0x80006698]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xba49ac2c738ff and fs2 == 1 and fe2 == 0x401 and fm2 == 0x4134c608571c2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1578c6ff0cf33 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ce0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ce4]:csrrs a7, fflags, zero
	-[0x80000ce8]:fsd fa3, 1168(a5)
Current Store : [0x80000cec] : sd a7, 1176(a5) -- Store: [0x800066a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x59899bda971ff and fs2 == 1 and fe2 == 0x400 and fm2 == 0xdc4404c6e419d and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x416bd66538e77 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d04]:csrrs a7, fflags, zero
	-[0x80000d08]:fsd fa3, 1184(a5)
Current Store : [0x80000d0c] : sd a7, 1192(a5) -- Store: [0x800066b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9c039c18124ff and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x520ba21675061 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1007be8ef5523 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d24]:csrrs a7, fflags, zero
	-[0x80000d28]:fsd fa3, 1200(a5)
Current Store : [0x80000d2c] : sd a7, 1208(a5) -- Store: [0x800066c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x6f6228b21b5af and fs2 == 1 and fe2 == 0x400 and fm2 == 0x6aedd04791803 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x046b0b28fed54 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa3, 1216(a5)
Current Store : [0x80000d4c] : sd a7, 1224(a5) -- Store: [0x800066d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x340e77ccf05ef and fs2 == 1 and fe2 == 0x403 and fm2 == 0x9d684051e2ed5 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf178ca8c72a45 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d64]:csrrs a7, fflags, zero
	-[0x80000d68]:fsd fa3, 1232(a5)
Current Store : [0x80000d6c] : sd a7, 1240(a5) -- Store: [0x800066e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x394aaa51fbb13 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x57aca2b77e5e0 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xa4964f80161cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000d80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:fsd fa3, 1248(a5)
Current Store : [0x80000d8c] : sd a7, 1256(a5) -- Store: [0x800066f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x058f746aadc13 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x9861941c63fc9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa1405439127eb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000da0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000da4]:csrrs a7, fflags, zero
	-[0x80000da8]:fsd fa3, 1264(a5)
Current Store : [0x80000dac] : sd a7, 1272(a5) -- Store: [0x80006708]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x96dac4e409c6f and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x35fcf76681586 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xeca818310cf9f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000dc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000dc4]:csrrs a7, fflags, zero
	-[0x80000dc8]:fsd fa3, 1280(a5)
Current Store : [0x80000dcc] : sd a7, 1288(a5) -- Store: [0x80006718]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf29d0da4ed493 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xa8727cfd53312 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x9d598dfd5b26f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000de0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000de4]:csrrs a7, fflags, zero
	-[0x80000de8]:fsd fa3, 1296(a5)
Current Store : [0x80000dec] : sd a7, 1304(a5) -- Store: [0x80006728]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdf18d15e2934a and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xd6a9186a4d1ce and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xb86a02bb2d83f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e04]:csrrs a7, fflags, zero
	-[0x80000e08]:fsd fa3, 1312(a5)
Current Store : [0x80000e0c] : sd a7, 1320(a5) -- Store: [0x80006738]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc2e75b367862 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x17ca8813daee0 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf6f2b38bc4e85 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa3, 1328(a5)
Current Store : [0x80000e2c] : sd a7, 1336(a5) -- Store: [0x80006748]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x8043cd6eddcef and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x84addd06db0f3 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x23b5de79576cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e44]:csrrs a7, fflags, zero
	-[0x80000e48]:fsd fa3, 1344(a5)
Current Store : [0x80000e4c] : sd a7, 1352(a5) -- Store: [0x80006758]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x09b27fa42c3f4 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x59551ba39a93d and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x6669e2f841b05 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e64]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e68]:csrrs a7, fflags, zero
	-[0x80000e6c]:fsd fa3, 1360(a5)
Current Store : [0x80000e70] : sd a7, 1368(a5) -- Store: [0x80006768]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ca04b57975a and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xcdf25333d25e7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfaad94b595c8b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000e84]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e88]:csrrs a7, fflags, zero
	-[0x80000e8c]:fsd fa3, 1376(a5)
Current Store : [0x80000e90] : sd a7, 1384(a5) -- Store: [0x80006778]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa4034a95ba9c7 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0xc0dc23e890ba6 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x70377822116ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ea4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ea8]:csrrs a7, fflags, zero
	-[0x80000eac]:fsd fa3, 1392(a5)
Current Store : [0x80000eb0] : sd a7, 1400(a5) -- Store: [0x80006788]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0xf29f0dcfe81df and fs2 == 1 and fe2 == 0x402 and fm2 == 0x99b025b271a6c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8efb99eb9add8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ec4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ec8]:csrrs a7, fflags, zero
	-[0x80000ecc]:fsd fa3, 1408(a5)
Current Store : [0x80000ed0] : sd a7, 1416(a5) -- Store: [0x80006798]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf36bc79153554 and fs2 == 1 and fe2 == 0x3f7 and fm2 == 0xa570d4d5fae15 and fs3 == 0 and fe3 == 0x7f7 and fm3 == 0x9b162ec8007ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa3, 1424(a5)
Current Store : [0x80000ef0] : sd a7, 1432(a5) -- Store: [0x800067a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4aaff2a6f4a04 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x5562a26803919 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb8fbc75cfb677 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f04]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f08]:csrrs a7, fflags, zero
	-[0x80000f0c]:fsd fa3, 1440(a5)
Current Store : [0x80000f10] : sd a7, 1448(a5) -- Store: [0x800067b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5828d04d5c783 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x662def5c2acfb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe186d442cf9a5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f24]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f28]:csrrs a7, fflags, zero
	-[0x80000f2c]:fsd fa3, 1456(a5)
Current Store : [0x80000f30] : sd a7, 1464(a5) -- Store: [0x800067c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x4e8c20c69d943 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x78f3fa3e34f09 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xec9ca62cf719f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f44]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f48]:csrrs a7, fflags, zero
	-[0x80000f4c]:fsd fa3, 1472(a5)
Current Store : [0x80000f50] : sd a7, 1480(a5) -- Store: [0x800067d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x76f6473f97787 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xf5eb4da486441 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x6f944f9df4559 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f64]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f68]:csrrs a7, fflags, zero
	-[0x80000f6c]:fsd fa3, 1488(a5)
Current Store : [0x80000f70] : sd a7, 1496(a5) -- Store: [0x800067e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xdf45142e44527 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35bd3296913e5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x21f04b088f7ad and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000f84]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f88]:csrrs a7, fflags, zero
	-[0x80000f8c]:fsd fa3, 1504(a5)
Current Store : [0x80000f90] : sd a7, 1512(a5) -- Store: [0x800067f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x74fec4571b70d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xb6538a67c5de8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3f52ce179cea9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fa4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fa8]:csrrs a7, fflags, zero
	-[0x80000fac]:fsd fa3, 1520(a5)
Current Store : [0x80000fb0] : sd a7, 1528(a5) -- Store: [0x80006808]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9ab24b74b1b39 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x36b7e6625bb57 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf27aee6d3ac6a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa3, 1536(a5)
Current Store : [0x80000fd0] : sd a7, 1544(a5) -- Store: [0x80006818]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xd801f3a80e5e3 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x5b7606ac10fca and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x4052213c33a3f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80000fe4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fe8]:csrrs a7, fflags, zero
	-[0x80000fec]:fsd fa3, 1552(a5)
Current Store : [0x80000ff0] : sd a7, 1560(a5) -- Store: [0x80006828]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9bb1a6b6fd96b and fs2 == 1 and fe2 == 0x3fb and fm2 == 0xfbf9e775a40eb and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x98755c9906d5f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001004]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001008]:csrrs a7, fflags, zero
	-[0x8000100c]:fsd fa3, 1568(a5)
Current Store : [0x80001010] : sd a7, 1576(a5) -- Store: [0x80006838]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75668c3f971ca and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xca6013ace7780 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x4e4acd08958fb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001024]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001028]:csrrs a7, fflags, zero
	-[0x8000102c]:fsd fa3, 1584(a5)
Current Store : [0x80001030] : sd a7, 1592(a5) -- Store: [0x80006848]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2a164b3a18af5 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x2891c92269814 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x595387cf5b52f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001044]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001048]:csrrs a7, fflags, zero
	-[0x8000104c]:fsd fa3, 1600(a5)
Current Store : [0x80001050] : sd a7, 1608(a5) -- Store: [0x80006858]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xe2f90b921966f and fs2 == 1 and fe2 == 0x401 and fm2 == 0x6ae0e13603a5b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x564e3694c12b9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001064]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001068]:csrrs a7, fflags, zero
	-[0x8000106c]:fsd fa3, 1616(a5)
Current Store : [0x80001070] : sd a7, 1624(a5) -- Store: [0x80006868]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe30da56ca568f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x0086d1fb85ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe40c0ac9fb671 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001084]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001088]:csrrs a7, fflags, zero
	-[0x8000108c]:fsd fa3, 1632(a5)
Current Store : [0x80001090] : sd a7, 1640(a5) -- Store: [0x80006878]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x601c1501643a8 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xf5a6b0f88178d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x58fe1d5d39e39 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa3, 1648(a5)
Current Store : [0x800010b0] : sd a7, 1656(a5) -- Store: [0x80006888]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x79d2c12874d05 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x45628152d7a90 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe039f0c3c4e9d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010c8]:csrrs a7, fflags, zero
	-[0x800010cc]:fsd fa3, 1664(a5)
Current Store : [0x800010d0] : sd a7, 1672(a5) -- Store: [0x80006898]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x06ed29608fc5f and fs2 == 1 and fe2 == 0x403 and fm2 == 0xcce26386baf3c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd95aa9f020bd4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800010e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010e8]:csrrs a7, fflags, zero
	-[0x800010ec]:fsd fa3, 1680(a5)
Current Store : [0x800010f0] : sd a7, 1688(a5) -- Store: [0x800068a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe19fa7087cb7f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x065e4faa54458 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xed9ad372bbddb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001104]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001108]:csrrs a7, fflags, zero
	-[0x8000110c]:fsd fa3, 1696(a5)
Current Store : [0x80001110] : sd a7, 1704(a5) -- Store: [0x800068b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x4ad428c0181bb and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xc6e9d37ce614a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x25f1365603a33 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001124]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001128]:csrrs a7, fflags, zero
	-[0x8000112c]:fsd fa3, 1712(a5)
Current Store : [0x80001130] : sd a7, 1720(a5) -- Store: [0x800068c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x042a2a8e1c3d7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x178ad4d68817b and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x1c170b68c22df and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001144]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001148]:csrrs a7, fflags, zero
	-[0x8000114c]:fsd fa3, 1728(a5)
Current Store : [0x80001150] : sd a7, 1736(a5) -- Store: [0x800068d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc2bc4b9e0ee91 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x61df6a1a0dd1c and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x3787808d54013 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001164]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001168]:csrrs a7, fflags, zero
	-[0x8000116c]:fsd fa3, 1744(a5)
Current Store : [0x80001170] : sd a7, 1752(a5) -- Store: [0x800068e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7fa0146f3d97f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x07885bb04ab6c and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8ae9cb6f38a79 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001184]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa3, 1760(a5)
Current Store : [0x80001190] : sd a7, 1768(a5) -- Store: [0x800068f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x3cc555a742b73 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x073aa5f7f06cd and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x45b74d1239897 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011a8]:csrrs a7, fflags, zero
	-[0x800011ac]:fsd fa3, 1776(a5)
Current Store : [0x800011b0] : sd a7, 1784(a5) -- Store: [0x80006908]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xdcbf4c3b1f78f and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xb6c7f284119af and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x9891d46219a57 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011c8]:csrrs a7, fflags, zero
	-[0x800011cc]:fsd fa3, 1792(a5)
Current Store : [0x800011d0] : sd a7, 1800(a5) -- Store: [0x80006918]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d2a90fafd5bc and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x62487dae23696 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb6eeac2960889 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa3, 1808(a5)
Current Store : [0x800011f0] : sd a7, 1816(a5) -- Store: [0x80006928]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe1789626784f5 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xe473bed6c803f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc790d5fbd094d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001204]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001208]:csrrs a7, fflags, zero
	-[0x8000120c]:fsd fa3, 1824(a5)
Current Store : [0x80001210] : sd a7, 1832(a5) -- Store: [0x80006938]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x854c40164e1cb and fs2 == 1 and fe2 == 0x3f4 and fm2 == 0x2f2490b2c03e4 and fs3 == 0 and fe3 == 0x7f3 and fm3 == 0xccfcda9e20fff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001224]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001228]:csrrs a7, fflags, zero
	-[0x8000122c]:fsd fa3, 1840(a5)
Current Store : [0x80001230] : sd a7, 1848(a5) -- Store: [0x80006948]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc74cc0bbf9bc9 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x14efc54a35241 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec892f54a3c0d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001244]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001248]:csrrs a7, fflags, zero
	-[0x8000124c]:fsd fa3, 1856(a5)
Current Store : [0x80001250] : sd a7, 1864(a5) -- Store: [0x80006958]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9e87d53212bbf and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x8f31cea8dbcda and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x43332df5ca32f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001264]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001268]:csrrs a7, fflags, zero
	-[0x8000126c]:fsd fa3, 1872(a5)
Current Store : [0x80001270] : sd a7, 1880(a5) -- Store: [0x80006968]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x8d4e9012ff0f7 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x5e1facaee3c96 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x0fb148bed05df and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001284]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001288]:csrrs a7, fflags, zero
	-[0x8000128c]:fsd fa3, 1888(a5)
Current Store : [0x80001290] : sd a7, 1896(a5) -- Store: [0x80006978]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7af6414b8de5c and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x11974707ea538 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x95008c08199b3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012a8]:csrrs a7, fflags, zero
	-[0x800012ac]:fsd fa3, 1904(a5)
Current Store : [0x800012b0] : sd a7, 1912(a5) -- Store: [0x80006988]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2f6cc7ff8e7a5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xef4446de4f279 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x258221cdc09b9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa3, 1920(a5)
Current Store : [0x800012d0] : sd a7, 1928(a5) -- Store: [0x80006998]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb401c9972e963 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x3722ab15268d0 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x08f49bc253915 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800012e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012e8]:csrrs a7, fflags, zero
	-[0x800012ec]:fsd fa3, 1936(a5)
Current Store : [0x800012f0] : sd a7, 1944(a5) -- Store: [0x800069a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9be7d76867e32 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x13d1e497fb88a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xbbcbc47b0a26f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001304]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001308]:csrrs a7, fflags, zero
	-[0x8000130c]:fsd fa3, 1952(a5)
Current Store : [0x80001310] : sd a7, 1960(a5) -- Store: [0x800069b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa98601d6ee96c and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x8f2202ff70d62 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4bb832d2f03b6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001324]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001328]:csrrs a7, fflags, zero
	-[0x8000132c]:fsd fa3, 1968(a5)
Current Store : [0x80001330] : sd a7, 1976(a5) -- Store: [0x800069c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8b0182b066dad and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x6a270f2c744d0 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x176633b90457b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001344]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001348]:csrrs a7, fflags, zero
	-[0x8000134c]:fsd fa3, 1984(a5)
Current Store : [0x80001350] : sd a7, 1992(a5) -- Store: [0x800069d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3a3e67ed240bf and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x22dd2fe5ccaa5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x650a3465e4aff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001364]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001368]:csrrs a7, fflags, zero
	-[0x8000136c]:fsd fa3, 2000(a5)
Current Store : [0x80001370] : sd a7, 2008(a5) -- Store: [0x800069e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe1518f4a30787 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x6b04610dc37ca and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x554370f71bef3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001384]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001388]:csrrs a7, fflags, zero
	-[0x8000138c]:fsd fa3, 2016(a5)
Current Store : [0x80001390] : sd a7, 2024(a5) -- Store: [0x800069f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3fe574580e3e3 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x2255d0d101768 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x6acd29eafc0eb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013b0]:csrrs a7, fflags, zero
	-[0x800013b4]:fsd fa3, 0(a5)
Current Store : [0x800013b8] : sd a7, 8(a5) -- Store: [0x80006a08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa4252ecd893af and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x5cd18d027b375 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1e3d3ab394d1b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013d0]:csrrs a7, fflags, zero
	-[0x800013d4]:fsd fa3, 16(a5)
Current Store : [0x800013d8] : sd a7, 24(a5) -- Store: [0x80006a18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf20566fa54831 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x5e11e69822d9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x54831adf73d8a and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800013ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013f0]:csrrs a7, fflags, zero
	-[0x800013f4]:fsd fa3, 32(a5)
Current Store : [0x800013f8] : sd a7, 40(a5) -- Store: [0x80006a28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc8e25fbfe6477 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x0a67be484276b and fs3 == 0 and fe3 == 0x7fb and fm3 == 0xdb745e2ae4d57 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000140c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001410]:csrrs a7, fflags, zero
	-[0x80001414]:fsd fa3, 48(a5)
Current Store : [0x80001418] : sd a7, 56(a5) -- Store: [0x80006a38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe771fa9b7a387 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6e4bf34643a40 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5cbac8f2d7906 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000142c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001430]:csrrs a7, fflags, zero
	-[0x80001434]:fsd fa3, 64(a5)
Current Store : [0x80001438] : sd a7, 72(a5) -- Store: [0x80006a48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb7937b6499ddf and fs2 == 1 and fe2 == 0x400 and fm2 == 0x67b984f0ba3f1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x34d72ff1d2953 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000144c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001450]:csrrs a7, fflags, zero
	-[0x80001454]:fsd fa3, 80(a5)
Current Store : [0x80001458] : sd a7, 88(a5) -- Store: [0x80006a58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xe2b04c5638f5f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x89beaa54667bb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x733412989d9ad and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000146c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001470]:csrrs a7, fflags, zero
	-[0x80001474]:fsd fa3, 96(a5)
Current Store : [0x80001478] : sd a7, 104(a5) -- Store: [0x80006a68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4b0b8c0dc4fab and fs2 == 1 and fe2 == 0x400 and fm2 == 0x3b58d3c19b43c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x97ca1321f707c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000148c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001490]:csrrs a7, fflags, zero
	-[0x80001494]:fsd fa3, 112(a5)
Current Store : [0x80001498] : sd a7, 120(a5) -- Store: [0x80006a78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc0fc879d9bd20 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x1886525f3e59b and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xebffc8fb4d6e9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014b0]:csrrs a7, fflags, zero
	-[0x800014b4]:fsd fa3, 128(a5)
Current Store : [0x800014b8] : sd a7, 136(a5) -- Store: [0x80006a88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x301d64dd062a4 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x9b50e7b846e96 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xe89f4d63cd58f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014d0]:csrrs a7, fflags, zero
	-[0x800014d4]:fsd fa3, 144(a5)
Current Store : [0x800014d8] : sd a7, 152(a5) -- Store: [0x80006a98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x757759ba0d957 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x5e60311171edb and fs3 == 0 and fe3 == 0x7fb and fm3 == 0xff2581034fa57 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800014ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014f0]:csrrs a7, fflags, zero
	-[0x800014f4]:fsd fa3, 160(a5)
Current Store : [0x800014f8] : sd a7, 168(a5) -- Store: [0x80006aa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x5d2823257dd0f and fs2 == 1 and fe2 == 0x401 and fm2 == 0xf57e62f78053d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x55fdf6c24cf14 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000150c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001510]:csrrs a7, fflags, zero
	-[0x80001514]:fsd fa3, 176(a5)
Current Store : [0x80001518] : sd a7, 184(a5) -- Store: [0x80006ab8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d352c81323cd and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xd62a44832769d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f5df615dcd80 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000152c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001530]:csrrs a7, fflags, zero
	-[0x80001534]:fsd fa3, 192(a5)
Current Store : [0x80001538] : sd a7, 200(a5) -- Store: [0x80006ac8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7937acd8e3cbf and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xf277f3bb58051 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x6f3f872195323 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000154c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001550]:csrrs a7, fflags, zero
	-[0x80001554]:fsd fa3, 208(a5)
Current Store : [0x80001558] : sd a7, 216(a5) -- Store: [0x80006ad8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe017c1dd0e81f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x9562eda3c52fd and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x7c1f8e3a06fc9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000156c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001570]:csrrs a7, fflags, zero
	-[0x80001574]:fsd fa3, 224(a5)
Current Store : [0x80001578] : sd a7, 232(a5) -- Store: [0x80006ae8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x08b3a93e68164 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x08f9ec7d021e2 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x11fbb1cedaf9f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000158c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001590]:csrrs a7, fflags, zero
	-[0x80001594]:fsd fa3, 240(a5)
Current Store : [0x80001598] : sd a7, 248(a5) -- Store: [0x80006af8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x044a736a92e57 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x79f6133cbdfa9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x804bd71223eac and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800015ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015b0]:csrrs a7, fflags, zero
	-[0x800015b4]:fsd fa3, 256(a5)
Current Store : [0x800015b8] : sd a7, 264(a5) -- Store: [0x80006b08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0d908c88167b9 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x0c3e8bc692402 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1a752f4f14996 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800015cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015d0]:csrrs a7, fflags, zero
	-[0x800015d4]:fsd fa3, 272(a5)
Current Store : [0x800015d8] : sd a7, 280(a5) -- Store: [0x80006b18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1c1aa7e3314b1 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x1e717678a9551 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x3de3b2ce1e281 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800015ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015f0]:csrrs a7, fflags, zero
	-[0x800015f4]:fsd fa3, 288(a5)
Current Store : [0x800015f8] : sd a7, 296(a5) -- Store: [0x80006b28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x02fdff92933c4 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xccc040bf7de2b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd222e73c49406 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000160c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:fsd fa3, 304(a5)
Current Store : [0x80001618] : sd a7, 312(a5) -- Store: [0x80006b38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x3578be9192ed7 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x0b659dcfe6383 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x433fc62b637c6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000162c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001630]:csrrs a7, fflags, zero
	-[0x80001634]:fsd fa3, 320(a5)
Current Store : [0x80001638] : sd a7, 328(a5) -- Store: [0x80006b48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0xc8b6c88d8cc8f and fs2 == 1 and fe2 == 0x402 and fm2 == 0x903ba9163be01 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x65040492dcc30 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000164c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001650]:csrrs a7, fflags, zero
	-[0x80001654]:fsd fa3, 336(a5)
Current Store : [0x80001658] : sd a7, 344(a5) -- Store: [0x80006b58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe0880de9fe705 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x9845adb5f7a0a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x7f2dd07517ff3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000166c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001670]:csrrs a7, fflags, zero
	-[0x80001674]:fsd fa3, 352(a5)
Current Store : [0x80001678] : sd a7, 360(a5) -- Store: [0x80006b68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x334fb99f530be and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xa19f8d728d0fc and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf55465ad3c4e3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000168c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001690]:csrrs a7, fflags, zero
	-[0x80001694]:fsd fa3, 368(a5)
Current Store : [0x80001698] : sd a7, 376(a5) -- Store: [0x80006b78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xba07d50bb43b9 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x751b9ae3bf5f5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x421e89d7bdb11 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800016ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016b0]:csrrs a7, fflags, zero
	-[0x800016b4]:fsd fa3, 384(a5)
Current Store : [0x800016b8] : sd a7, 392(a5) -- Store: [0x80006b88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1c521a7eb065 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x392da6532199c and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x131d1d028d523 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800016cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016d0]:csrrs a7, fflags, zero
	-[0x800016d4]:fsd fa3, 400(a5)
Current Store : [0x800016d8] : sd a7, 408(a5) -- Store: [0x80006b98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2687ea87931ce and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x4a5ace34f346b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x7c13ad5981860 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800016ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016f0]:csrrs a7, fflags, zero
	-[0x800016f4]:fsd fa3, 416(a5)
Current Store : [0x800016f8] : sd a7, 424(a5) -- Store: [0x80006ba8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x26ed9a8f4b2cf and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x994d509fd4dc7 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd78aae48cf4ef and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000170c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001710]:csrrs a7, fflags, zero
	-[0x80001714]:fsd fa3, 432(a5)
Current Store : [0x80001718] : sd a7, 440(a5) -- Store: [0x80006bb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbb3f5b5207447 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xc087849016946 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x844cc1df6d65d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000172c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001730]:csrrs a7, fflags, zero
	-[0x80001734]:fsd fa3, 448(a5)
Current Store : [0x80001738] : sd a7, 456(a5) -- Store: [0x80006bc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3eabdfcda410e and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x1eaf1be01e8cd and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x64ddfe38d7e3f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000174c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001750]:csrrs a7, fflags, zero
	-[0x80001754]:fsd fa3, 464(a5)
Current Store : [0x80001758] : sd a7, 472(a5) -- Store: [0x80006bd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa7dee766a9c05 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x8eba83eb506d5 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x4a18af1135d97 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000176c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001770]:csrrs a7, fflags, zero
	-[0x80001774]:fsd fa3, 480(a5)
Current Store : [0x80001778] : sd a7, 488(a5) -- Store: [0x80006be8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x32a5a52edeb6b and fs2 == 1 and fe2 == 0x401 and fm2 == 0x04ff5f3321d9e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x38a220cbdbba0 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000178c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001790]:csrrs a7, fflags, zero
	-[0x80001794]:fsd fa3, 496(a5)
Current Store : [0x80001798] : sd a7, 504(a5) -- Store: [0x80006bf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2b8342da56cc9 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x91bb5b7667690 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd603cf9c07b4f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800017ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017b0]:csrrs a7, fflags, zero
	-[0x800017b4]:fsd fa3, 512(a5)
Current Store : [0x800017b8] : sd a7, 520(a5) -- Store: [0x80006c08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6cc56079452a4 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x82ff5dfc297a3 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x13b6bcfe7a433 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800017cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017d0]:csrrs a7, fflags, zero
	-[0x800017d4]:fsd fa3, 528(a5)
Current Store : [0x800017d8] : sd a7, 536(a5) -- Store: [0x80006c18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a9e1874c223f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x798381c88996d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe78ca8871d2d9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800017ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017f0]:csrrs a7, fflags, zero
	-[0x800017f4]:fsd fa3, 544(a5)
Current Store : [0x800017f8] : sd a7, 552(a5) -- Store: [0x80006c28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xaf22d587d4b04 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x0a9988863bc52 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xc0fcc39d53823 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000180c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001810]:csrrs a7, fflags, zero
	-[0x80001814]:fsd fa3, 560(a5)
Current Store : [0x80001818] : sd a7, 568(a5) -- Store: [0x80006c38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6709ff5f25f26 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x1d95904baffc5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x9087e47e5604f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000182c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001830]:csrrs a7, fflags, zero
	-[0x80001834]:fsd fa3, 576(a5)
Current Store : [0x80001838] : sd a7, 584(a5) -- Store: [0x80006c48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf516548465a7f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x0523ba07c099e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xff25b259efc09 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000184c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001850]:csrrs a7, fflags, zero
	-[0x80001854]:fsd fa3, 592(a5)
Current Store : [0x80001858] : sd a7, 600(a5) -- Store: [0x80006c58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xa2aa7aaa16f3f and fs2 == 1 and fe2 == 0x403 and fm2 == 0xc472e2120c319 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x71f8711b7a3e6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000186c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001870]:csrrs a7, fflags, zero
	-[0x80001874]:fsd fa3, 608(a5)
Current Store : [0x80001878] : sd a7, 616(a5) -- Store: [0x80006c68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9560528406d76 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xad2149bedf2cb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x53c3903c4c733 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000188c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001890]:csrrs a7, fflags, zero
	-[0x80001894]:fsd fa3, 624(a5)
Current Store : [0x80001898] : sd a7, 632(a5) -- Store: [0x80006c78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xd71456446788f and fs2 == 1 and fe2 == 0x400 and fm2 == 0xc8156304f48af and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa3a1ca4573daa and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800018ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018b0]:csrrs a7, fflags, zero
	-[0x800018b4]:fsd fa3, 640(a5)
Current Store : [0x800018b8] : sd a7, 648(a5) -- Store: [0x80006c88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9fa745031b828 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x5934859e5a768 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x183ed9771bd67 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800018cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018d0]:csrrs a7, fflags, zero
	-[0x800018d4]:fsd fa3, 656(a5)
Current Store : [0x800018d8] : sd a7, 664(a5) -- Store: [0x80006c98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x3a6cc16cf18c7 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xe870a12fb73fb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2bf4d322a6663 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800018ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018f0]:csrrs a7, fflags, zero
	-[0x800018f4]:fsd fa3, 672(a5)
Current Store : [0x800018f8] : sd a7, 680(a5) -- Store: [0x80006ca8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfda0547c88b3d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x54408d47465ab and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x52acb8c4db5fb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001910]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001914]:csrrs a7, fflags, zero
	-[0x80001918]:fsd fa3, 688(a5)
Current Store : [0x8000191c] : sd a7, 696(a5) -- Store: [0x80006cb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe9e4fed8fd631 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x25d291c01d853 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x19230638e04c1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001930]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001934]:csrrs a7, fflags, zero
	-[0x80001938]:fsd fa3, 704(a5)
Current Store : [0x8000193c] : sd a7, 712(a5) -- Store: [0x80006cc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd2441313e69d8 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x40e12b2f0404e and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x24379a2a5ae43 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001950]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001954]:csrrs a7, fflags, zero
	-[0x80001958]:fsd fa3, 720(a5)
Current Store : [0x8000195c] : sd a7, 728(a5) -- Store: [0x80006cd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x253bd6d2fe97d and fs2 == 1 and fe2 == 0x400 and fm2 == 0x5cfa06072e1a1 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8fbbbb5e3c9d7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001970]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:fsd fa3, 736(a5)
Current Store : [0x8000197c] : sd a7, 744(a5) -- Store: [0x80006ce8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x63a56d71db193 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x3f073cbea8835 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xbb35314a82aa5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001990]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001994]:csrrs a7, fflags, zero
	-[0x80001998]:fsd fa3, 752(a5)
Current Store : [0x8000199c] : sd a7, 760(a5) -- Store: [0x80006cf8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x0e8eee9b78077 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x95229efde7a10 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xac2cb68034dca and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800019b0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019b4]:csrrs a7, fflags, zero
	-[0x800019b8]:fsd fa3, 768(a5)
Current Store : [0x800019bc] : sd a7, 776(a5) -- Store: [0x80006d08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2f9038bb87e4d and fs2 == 1 and fe2 == 0x400 and fm2 == 0x6662cdadc781c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa8f8d870864b8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800019d0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019d4]:csrrs a7, fflags, zero
	-[0x800019d8]:fsd fa3, 784(a5)
Current Store : [0x800019dc] : sd a7, 792(a5) -- Store: [0x80006d18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb42c6b2e0e14b and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xd850efa48c7f0 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x925de5e61e1ff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800019f0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019f4]:csrrs a7, fflags, zero
	-[0x800019f8]:fsd fa3, 800(a5)
Current Store : [0x800019fc] : sd a7, 808(a5) -- Store: [0x80006d28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8ab9793ce4623 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x043ed2f7bd013 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x91453d575687b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a14]:csrrs a7, fflags, zero
	-[0x80001a18]:fsd fa3, 816(a5)
Current Store : [0x80001a1c] : sd a7, 824(a5) -- Store: [0x80006d38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xed71b46de9a5d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xe45a211c6b969 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd2cc5975d63a2 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a34]:csrrs a7, fflags, zero
	-[0x80001a38]:fsd fa3, 832(a5)
Current Store : [0x80001a3c] : sd a7, 840(a5) -- Store: [0x80006d48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6a96ba7d02570 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xc917be2f7ebb8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x43b459e986fea and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a54]:csrrs a7, fflags, zero
	-[0x80001a58]:fsd fa3, 848(a5)
Current Store : [0x80001a5c] : sd a7, 856(a5) -- Store: [0x80006d58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb5ff414c256c5 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x5886744e56a0a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x26ba852c18dc1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a74]:csrrs a7, fflags, zero
	-[0x80001a78]:fsd fa3, 864(a5)
Current Store : [0x80001a7c] : sd a7, 872(a5) -- Store: [0x80006d68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xdd1e76dfee33f and fs2 == 1 and fe2 == 0x404 and fm2 == 0xabaae8cebcd22 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8e882c33ae96b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001a90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a94]:csrrs a7, fflags, zero
	-[0x80001a98]:fsd fa3, 880(a5)
Current Store : [0x80001a9c] : sd a7, 888(a5) -- Store: [0x80006d78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc6a025abfeb31 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x3a98c6f1b9e65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1757df4c3c481 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001ab0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ab4]:csrrs a7, fflags, zero
	-[0x80001ab8]:fsd fa3, 896(a5)
Current Store : [0x80001abc] : sd a7, 904(a5) -- Store: [0x80006d88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xd28c6757c6183 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x0180789f482ba and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd54915c6e2edb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001ad0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ad4]:csrrs a7, fflags, zero
	-[0x80001ad8]:fsd fa3, 912(a5)
Current Store : [0x80001adc] : sd a7, 920(a5) -- Store: [0x80006d98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x2a6cf802e779f and fs2 == 1 and fe2 == 0x401 and fm2 == 0xbb77e316e5303 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x027b2946d02e9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001af0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001af4]:csrrs a7, fflags, zero
	-[0x80001af8]:fsd fa3, 928(a5)
Current Store : [0x80001afc] : sd a7, 936(a5) -- Store: [0x80006da8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7d72e47402429 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x960529f3b1939 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2e7df4087a8bb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b14]:csrrs a7, fflags, zero
	-[0x80001b18]:fsd fa3, 944(a5)
Current Store : [0x80001b1c] : sd a7, 952(a5) -- Store: [0x80006db8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xdb7b172cc5173 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x8e197053e3ca3 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x71b44ed743f59 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b34]:csrrs a7, fflags, zero
	-[0x80001b38]:fsd fa3, 960(a5)
Current Store : [0x80001b3c] : sd a7, 968(a5) -- Store: [0x80006dc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2ff2265d9a737 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xc8fe942aa1ecc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0f4acb41b412d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b54]:csrrs a7, fflags, zero
	-[0x80001b58]:fsd fa3, 976(a5)
Current Store : [0x80001b5c] : sd a7, 984(a5) -- Store: [0x80006dd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1126a3ad5051a and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x4293c5830a884 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x583045ce8982d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b74]:csrrs a7, fflags, zero
	-[0x80001b78]:fsd fa3, 992(a5)
Current Store : [0x80001b7c] : sd a7, 1000(a5) -- Store: [0x80006de8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8552f9c810e9e and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x94ed6ea6ca724 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x33e8042423f5f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001b90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b94]:csrrs a7, fflags, zero
	-[0x80001b98]:fsd fa3, 1008(a5)
Current Store : [0x80001b9c] : sd a7, 1016(a5) -- Store: [0x80006df8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7ca8863947b9a and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x458a57f4c0c1e and fs3 == 0 and fe3 == 0x7fb and fm3 == 0xe40fa80847cb7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001bb0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bb4]:csrrs a7, fflags, zero
	-[0x80001bb8]:fsd fa3, 1024(a5)
Current Store : [0x80001bbc] : sd a7, 1032(a5) -- Store: [0x80006e08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a2d44f743484 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdf6e0ad04fbde and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x352c50b85cbad and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001bd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bd4]:csrrs a7, fflags, zero
	-[0x80001bd8]:fsd fa3, 1040(a5)
Current Store : [0x80001bdc] : sd a7, 1048(a5) -- Store: [0x80006e18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3750b3ff84d89 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x8faa379b97e8e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xe605c7c255007 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001bf0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bf4]:csrrs a7, fflags, zero
	-[0x80001bf8]:fsd fa3, 1056(a5)
Current Store : [0x80001bfc] : sd a7, 1064(a5) -- Store: [0x80006e28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfa474c124960a and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x2f9e1d8e439c4 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2c398abf02815 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c14]:csrrs a7, fflags, zero
	-[0x80001c18]:fsd fa3, 1072(a5)
Current Store : [0x80001c1c] : sd a7, 1080(a5) -- Store: [0x80006e38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x121cefec055f7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x280408462cdf8 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x3cf5c6b8b15bb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c34]:csrrs a7, fflags, zero
	-[0x80001c38]:fsd fa3, 1088(a5)
Current Store : [0x80001c3c] : sd a7, 1096(a5) -- Store: [0x80006e48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x905625425a52e and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x41b897757476e and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf71caf7d786cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c54]:csrrs a7, fflags, zero
	-[0x80001c58]:fsd fa3, 1104(a5)
Current Store : [0x80001c5c] : sd a7, 1112(a5) -- Store: [0x80006e58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x185bc81f2a14d and fs2 == 1 and fe2 == 0x400 and fm2 == 0xb53ed83446079 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xded97f9e5a921 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c74]:csrrs a7, fflags, zero
	-[0x80001c78]:fsd fa3, 1120(a5)
Current Store : [0x80001c7c] : sd a7, 1128(a5) -- Store: [0x80006e68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xb0a547af4b77f and fs2 == 1 and fe2 == 0x404 and fm2 == 0x42af94e43542f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x10ac5063dc350 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001c90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c94]:csrrs a7, fflags, zero
	-[0x80001c98]:fsd fa3, 1136(a5)
Current Store : [0x80001c9c] : sd a7, 1144(a5) -- Store: [0x80006e78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x903bcec8bb6fb and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x0ec4f878fb7b4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa75306591ce61 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001cb0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cb4]:csrrs a7, fflags, zero
	-[0x80001cb8]:fsd fa3, 1152(a5)
Current Store : [0x80001cbc] : sd a7, 1160(a5) -- Store: [0x80006e88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc61c611f6c8db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x526604cab8fcb and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2c2338051df31 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001cd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cd4]:csrrs a7, fflags, zero
	-[0x80001cd8]:fsd fa3, 1168(a5)
Current Store : [0x80001cdc] : sd a7, 1176(a5) -- Store: [0x80006e98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xf33ebf51f33b7 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x466f88fb6ecbe and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x3e4db57d7e40f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001cf0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cf4]:csrrs a7, fflags, zero
	-[0x80001cf8]:fsd fa3, 1184(a5)
Current Store : [0x80001cfc] : sd a7, 1192(a5) -- Store: [0x80006ea8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x25459c12575f7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xaa504e2a5f1c3 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xe861d5030b0e7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d14]:csrrs a7, fflags, zero
	-[0x80001d18]:fsd fa3, 1200(a5)
Current Store : [0x80001d1c] : sd a7, 1208(a5) -- Store: [0x80006eb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf7f31753ade3e and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xff99d9f7dd137 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf78e8c76fb50b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d34]:csrrs a7, fflags, zero
	-[0x80001d38]:fsd fa3, 1216(a5)
Current Store : [0x80001d3c] : sd a7, 1224(a5) -- Store: [0x80006ec8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa976a9028496d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x89489e50d3718 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x46cfecf8fb875 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d54]:csrrs a7, fflags, zero
	-[0x80001d58]:fsd fa3, 1232(a5)
Current Store : [0x80001d5c] : sd a7, 1240(a5) -- Store: [0x80006ed8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf64315934059e and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x0308fdace1bed and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xfc3782a023015 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d74]:csrrs a7, fflags, zero
	-[0x80001d78]:fsd fa3, 1248(a5)
Current Store : [0x80001d7c] : sd a7, 1256(a5) -- Store: [0x80006ee8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x310e01660348e and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xbe8d71c96d67e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0a0f795ed9f25 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001d90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d94]:csrrs a7, fflags, zero
	-[0x80001d98]:fsd fa3, 1264(a5)
Current Store : [0x80001d9c] : sd a7, 1272(a5) -- Store: [0x80006ef8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xec1a6c76b7bd2 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe6c11aa8d2573 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd3d6ae8a2d811 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001db0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001db4]:csrrs a7, fflags, zero
	-[0x80001db8]:fsd fa3, 1280(a5)
Current Store : [0x80001dbc] : sd a7, 1288(a5) -- Store: [0x80006f08]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf1e592ad54c35 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x8fe934dea0ead and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x84e53031235b9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001dd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001dd4]:csrrs a7, fflags, zero
	-[0x80001dd8]:fsd fa3, 1296(a5)
Current Store : [0x80001ddc] : sd a7, 1304(a5) -- Store: [0x80006f18]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xcf892d7e50217 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x49b2d61482423 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a7d8e3d62b4b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001df0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001df4]:csrrs a7, fflags, zero
	-[0x80001df8]:fsd fa3, 1312(a5)
Current Store : [0x80001dfc] : sd a7, 1320(a5) -- Store: [0x80006f28]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x80de60b6f00df and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x2607ef5993617 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xba0b50fd03dd3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e14]:csrrs a7, fflags, zero
	-[0x80001e18]:fsd fa3, 1328(a5)
Current Store : [0x80001e1c] : sd a7, 1336(a5) -- Store: [0x80006f38]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4248187818921 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x6a7c06a5d1432 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc85615e41d666 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e34]:csrrs a7, fflags, zero
	-[0x80001e38]:fsd fa3, 1344(a5)
Current Store : [0x80001e3c] : sd a7, 1352(a5) -- Store: [0x80006f48]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3af74e2285ea8 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xd46a833143262 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x202793535005b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e54]:csrrs a7, fflags, zero
	-[0x80001e58]:fsd fa3, 1360(a5)
Current Store : [0x80001e5c] : sd a7, 1368(a5) -- Store: [0x80006f58]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xba0894a6eeff7 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x4f8cba9f74d1d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x21b21cbaa78b6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e74]:csrrs a7, fflags, zero
	-[0x80001e78]:fsd fa3, 1376(a5)
Current Store : [0x80001e7c] : sd a7, 1384(a5) -- Store: [0x80006f68]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc97481aa589cf and fs2 == 1 and fe2 == 0x3f5 and fm2 == 0x15fdaf55a8228 and fs3 == 0 and fe3 == 0x7f4 and fm3 == 0xf0c061c12bfff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001e90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001e94]:csrrs a7, fflags, zero
	-[0x80001e98]:fsd fa3, 1392(a5)
Current Store : [0x80001e9c] : sd a7, 1400(a5) -- Store: [0x80006f78]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x379bb745d02d9 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x276161f0e5912 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x678af9691e349 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001eb0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001eb4]:csrrs a7, fflags, zero
	-[0x80001eb8]:fsd fa3, 1408(a5)
Current Store : [0x80001ebc] : sd a7, 1416(a5) -- Store: [0x80006f88]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xea17c4ccbefe8 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x02e25a9bb2a1a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xef9d4ac882cb3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001ed0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ed4]:csrrs a7, fflags, zero
	-[0x80001ed8]:fsd fa3, 1424(a5)
Current Store : [0x80001edc] : sd a7, 1432(a5) -- Store: [0x80006f98]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x311ebd187eea8 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe47093103feca and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x20b2251e87ae3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001ef0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ef4]:csrrs a7, fflags, zero
	-[0x80001ef8]:fsd fa3, 1440(a5)
Current Store : [0x80001efc] : sd a7, 1448(a5) -- Store: [0x80006fa8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7a4f313bd6219 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x89e6311dc9a65 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x230bdf28226f7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001f14]:csrrs a7, fflags, zero
	-[0x80001f18]:fsd fa3, 1456(a5)
Current Store : [0x80001f1c] : sd a7, 1464(a5) -- Store: [0x80006fb8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa04034a417446 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x948073adec2d9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x48db17a274e91 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001f34]:csrrs a7, fflags, zero
	-[0x80001f38]:fsd fa3, 1472(a5)
Current Store : [0x80001f3c] : sd a7, 1480(a5) -- Store: [0x80006fc8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa31550c844273 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x0627da3f81f8f and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xad290e3462113 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001f54]:csrrs a7, fflags, zero
	-[0x80001f58]:fsd fa3, 1488(a5)
Current Store : [0x80001f5c] : sd a7, 1496(a5) -- Store: [0x80006fd8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x296b3b52c3a78 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xa652491e8ca3f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeaa65d1680e97 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001f74]:csrrs a7, fflags, zero
	-[0x80001f78]:fsd fa3, 1504(a5)
Current Store : [0x80001f7c] : sd a7, 1512(a5) -- Store: [0x80006fe8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x17273060cf383 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x3eb1e847178eb and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x5b84ad79bdbd5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001f90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001f94]:csrrs a7, fflags, zero
	-[0x80001f98]:fsd fa3, 1520(a5)
Current Store : [0x80001f9c] : sd a7, 1528(a5) -- Store: [0x80006ff8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3a25129349d98 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x3c80b9163e813 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x8463b8972f1cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001fb0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001fb4]:csrrs a7, fflags, zero
	-[0x80001fb8]:fsd fa3, 1536(a5)
Current Store : [0x80001fbc] : sd a7, 1544(a5) -- Store: [0x80007008]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7eda4efb707f7 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x8b1321a75d35f and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x276bba33219df and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001fd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001fd4]:csrrs a7, fflags, zero
	-[0x80001fd8]:fsd fa3, 1552(a5)
Current Store : [0x80001fdc] : sd a7, 1560(a5) -- Store: [0x80007018]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xd7584b60b1a57 and fs2 == 1 and fe2 == 0x401 and fm2 == 0xce604fe904a90 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa9a9562306079 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80001ff0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ff4]:csrrs a7, fflags, zero
	-[0x80001ff8]:fsd fa3, 1568(a5)
Current Store : [0x80001ffc] : sd a7, 1576(a5) -- Store: [0x80007028]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1d36766d8ca5b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x78e08524df276 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa3e221eee63c5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002010]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002014]:csrrs a7, fflags, zero
	-[0x80002018]:fsd fa3, 1584(a5)
Current Store : [0x8000201c] : sd a7, 1592(a5) -- Store: [0x80007038]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f4 and fm1 == 0x5a5a59bbb3fff and fs2 == 1 and fe2 == 0x408 and fm2 == 0x32d10b0d92edf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x9f1ad1f9dea0f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002030]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002034]:csrrs a7, fflags, zero
	-[0x80002038]:fsd fa3, 1600(a5)
Current Store : [0x8000203c] : sd a7, 1608(a5) -- Store: [0x80007048]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe71c04b7cfd87 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xe60f0ca8dfb07 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xce6de9d7efcb7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002050]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002054]:csrrs a7, fflags, zero
	-[0x80002058]:fsd fa3, 1616(a5)
Current Store : [0x8000205c] : sd a7, 1624(a5) -- Store: [0x80007058]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x393d0e849b454 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xede60a738746b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2e2a074d14562 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002070]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002074]:csrrs a7, fflags, zero
	-[0x80002078]:fsd fa3, 1632(a5)
Current Store : [0x8000207c] : sd a7, 1640(a5) -- Store: [0x80007068]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xdc7f82acf0d6d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xa270c8218b8b7 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x856d0fd4cd95f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002090]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002094]:csrrs a7, fflags, zero
	-[0x80002098]:fsd fa3, 1648(a5)
Current Store : [0x8000209c] : sd a7, 1656(a5) -- Store: [0x80007078]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8c00618c5ebf7 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x79abfd08d65b8 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x241b4da97625f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800020b0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800020b4]:csrrs a7, fflags, zero
	-[0x800020b8]:fsd fa3, 1664(a5)
Current Store : [0x800020bc] : sd a7, 1672(a5) -- Store: [0x80007088]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x44f79e7be6c8f and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x24e67d722e194 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x73cf067b8fba3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800020d0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800020d4]:csrrs a7, fflags, zero
	-[0x800020d8]:fsd fa3, 1680(a5)
Current Store : [0x800020dc] : sd a7, 1688(a5) -- Store: [0x80007098]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0xbb8a1f913699f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x3bac12cd8e8cf and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x11768b1c5f473 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800020f0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800020f4]:csrrs a7, fflags, zero
	-[0x800020f8]:fsd fa3, 1696(a5)
Current Store : [0x800020fc] : sd a7, 1704(a5) -- Store: [0x800070a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe2e74f7d68c61 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xeb434736cd25d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xcf58472a6e4bb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002110]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002114]:csrrs a7, fflags, zero
	-[0x80002118]:fsd fa3, 1712(a5)
Current Store : [0x8000211c] : sd a7, 1720(a5) -- Store: [0x800070b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4300c22dfb496 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x0fcb563875381 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x56ee5bf224c4f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002130]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002134]:csrrs a7, fflags, zero
	-[0x80002138]:fsd fa3, 1728(a5)
Current Store : [0x8000213c] : sd a7, 1736(a5) -- Store: [0x800070c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc09714c24da2f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x90dadbfedb4cf and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f35c94b8ddad and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002150]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002154]:csrrs a7, fflags, zero
	-[0x80002158]:fsd fa3, 1744(a5)
Current Store : [0x8000215c] : sd a7, 1752(a5) -- Store: [0x800070d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc3a7704fe195b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x79556c0841e18 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4cdc24cb9149f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002170]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002174]:csrrs a7, fflags, zero
	-[0x80002178]:fsd fa3, 1760(a5)
Current Store : [0x8000217c] : sd a7, 1768(a5) -- Store: [0x800070e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xc48f21909621f and fs2 == 1 and fe2 == 0x401 and fm2 == 0x72c5b0c847b8b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x47ba2c9621783 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002190]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002194]:csrrs a7, fflags, zero
	-[0x80002198]:fsd fa3, 1776(a5)
Current Store : [0x8000219c] : sd a7, 1784(a5) -- Store: [0x800070f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x46136351533f7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x219562feed3b5 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x70da2a7fbebd4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800021b0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800021b4]:csrrs a7, fflags, zero
	-[0x800021b8]:fsd fa3, 1792(a5)
Current Store : [0x800021bc] : sd a7, 1800(a5) -- Store: [0x80007108]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3f5a77e367c1b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x3df62857d4110 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8ca619b77f06f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800021d0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800021d4]:csrrs a7, fflags, zero
	-[0x800021d8]:fsd fa3, 1808(a5)
Current Store : [0x800021dc] : sd a7, 1816(a5) -- Store: [0x80007118]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x54c3c93bee7ca and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x43b51c6a4029a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xaee41b26bdc31 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800021f0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800021f4]:csrrs a7, fflags, zero
	-[0x800021f8]:fsd fa3, 1824(a5)
Current Store : [0x800021fc] : sd a7, 1832(a5) -- Store: [0x80007128]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8f8cdebbeb1b6 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7d175bb1b34cb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x29648e210d99f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002210]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002214]:csrrs a7, fflags, zero
	-[0x80002218]:fsd fa3, 1840(a5)
Current Store : [0x8000221c] : sd a7, 1848(a5) -- Store: [0x80007138]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75f0e25aaa1ef and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xe1d2ba70c870b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x5fe6b49de552b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002230]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002234]:csrrs a7, fflags, zero
	-[0x80002238]:fsd fa3, 1856(a5)
Current Store : [0x8000223c] : sd a7, 1864(a5) -- Store: [0x80007148]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x620288c50ba92 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x0a76ad4accd30 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x707abeeaef579 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002250]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002254]:csrrs a7, fflags, zero
	-[0x80002258]:fsd fa3, 1872(a5)
Current Store : [0x8000225c] : sd a7, 1880(a5) -- Store: [0x80007158]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdff07e36a58e8 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x04ab42936e1a4 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xe8b152a434b27 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002270]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002274]:csrrs a7, fflags, zero
	-[0x80002278]:fsd fa3, 1888(a5)
Current Store : [0x8000227c] : sd a7, 1896(a5) -- Store: [0x80007168]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x54524f32daef7 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x4237a343890fb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xac597e572b7b4 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002290]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002294]:csrrs a7, fflags, zero
	-[0x80002298]:fsd fa3, 1904(a5)
Current Store : [0x8000229c] : sd a7, 1912(a5) -- Store: [0x80007178]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0949924914346 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x0588b20ed1e69 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0f05a9bebbacf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800022b0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800022b4]:csrrs a7, fflags, zero
	-[0x800022b8]:fsd fa3, 1920(a5)
Current Store : [0x800022bc] : sd a7, 1928(a5) -- Store: [0x80007188]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3c649975046b and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xf5b7610493341 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe9bc871565d06 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800022d0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800022d4]:csrrs a7, fflags, zero
	-[0x800022d8]:fsd fa3, 1936(a5)
Current Store : [0x800022dc] : sd a7, 1944(a5) -- Store: [0x80007198]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbd6501f77c75d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x9521af5bd0569 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x606db39cc9430 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800022f0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800022f4]:csrrs a7, fflags, zero
	-[0x800022f8]:fsd fa3, 1952(a5)
Current Store : [0x800022fc] : sd a7, 1960(a5) -- Store: [0x800071a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x66723c760f03d and fs2 == 1 and fe2 == 0x400 and fm2 == 0x34369dcdd22ad and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xaf8de9cb09cc3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002310]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002314]:csrrs a7, fflags, zero
	-[0x80002318]:fsd fa3, 1968(a5)
Current Store : [0x8000231c] : sd a7, 1976(a5) -- Store: [0x800071b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x79c481bc003f9 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x1f5a288a490a8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa808585a245b3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002330]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002334]:csrrs a7, fflags, zero
	-[0x80002338]:fsd fa3, 1984(a5)
Current Store : [0x8000233c] : sd a7, 1992(a5) -- Store: [0x800071c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x643bd6230e5b5 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xd9f368b89c1a3 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x49c2a2961e033 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002350]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002354]:csrrs a7, fflags, zero
	-[0x80002358]:fsd fa3, 2000(a5)
Current Store : [0x8000235c] : sd a7, 2008(a5) -- Store: [0x800071d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4b7cdaeb1ce31 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x3b62b1f2cbf86 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x98626d96d20d9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002370]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002374]:csrrs a7, fflags, zero
	-[0x80002378]:fsd fa3, 2016(a5)
Current Store : [0x8000237c] : sd a7, 2024(a5) -- Store: [0x800071e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xda0cada4f8445 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xc39d54d166e8c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa223d66005b84 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002398]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x8000239c]:csrrs a7, fflags, zero
	-[0x800023a0]:fsd fa3, 0(a5)
Current Store : [0x800023a4] : sd a7, 8(a5) -- Store: [0x800071f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x00b57aa9b7409 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x56ee79e4569cf and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x57e194d1840e7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800023bc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800023c0]:csrrs a7, fflags, zero
	-[0x800023c4]:fsd fa3, 16(a5)
Current Store : [0x800023c8] : sd a7, 24(a5) -- Store: [0x80007208]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x7b799796bf9ff and fs2 == 1 and fe2 == 0x404 and fm2 == 0x79dd7cecf9d03 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x180f30b184945 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800023dc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800023e0]:csrrs a7, fflags, zero
	-[0x800023e4]:fsd fa3, 32(a5)
Current Store : [0x800023e8] : sd a7, 40(a5) -- Store: [0x80007218]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4ca4730b6efdc and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xc9994a79146ea and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x294c603684405 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800023fc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002400]:csrrs a7, fflags, zero
	-[0x80002404]:fsd fa3, 48(a5)
Current Store : [0x80002408] : sd a7, 56(a5) -- Store: [0x80007228]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2ce78cfa7b389 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x9bdfcdecda208 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe41ecf15c3c31 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000241c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002420]:csrrs a7, fflags, zero
	-[0x80002424]:fsd fa3, 64(a5)
Current Store : [0x80002428] : sd a7, 72(a5) -- Store: [0x80007238]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8a1c573ec7fe3 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xcb8b02f3410e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x61bb692dd2b3e and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000243c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002440]:csrrs a7, fflags, zero
	-[0x80002444]:fsd fa3, 80(a5)
Current Store : [0x80002448] : sd a7, 88(a5) -- Store: [0x80007248]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1f97ae6ae8e5d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbab5376882ede and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf15777a1e6e19 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000245c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002460]:csrrs a7, fflags, zero
	-[0x80002464]:fsd fa3, 96(a5)
Current Store : [0x80002468] : sd a7, 104(a5) -- Store: [0x80007258]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x742774c7979c9 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xf039ccd843cce and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x68b03c6ac58cf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000247c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002480]:csrrs a7, fflags, zero
	-[0x80002484]:fsd fa3, 112(a5)
Current Store : [0x80002488] : sd a7, 120(a5) -- Store: [0x80007268]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x53fa39c232464 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x24dd586c91739 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84ef5e539092d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000249c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800024a0]:csrrs a7, fflags, zero
	-[0x800024a4]:fsd fa3, 128(a5)
Current Store : [0x800024a8] : sd a7, 136(a5) -- Store: [0x80007278]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8cbf7156c3c4d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xcaf13c85d378a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x63a22f659957b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800024bc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800024c0]:csrrs a7, fflags, zero
	-[0x800024c4]:fsd fa3, 144(a5)
Current Store : [0x800024c8] : sd a7, 152(a5) -- Store: [0x80007288]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71ff810813f2d and fs2 == 1 and fe2 == 0x400 and fm2 == 0x1672eac27ff57 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x92718d32e3c43 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800024dc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800024e0]:csrrs a7, fflags, zero
	-[0x800024e4]:fsd fa3, 160(a5)
Current Store : [0x800024e8] : sd a7, 168(a5) -- Store: [0x80007298]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9064ca6314142 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x1bf221a3e5a23 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbc1a1fa02e46b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800024fc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002500]:csrrs a7, fflags, zero
	-[0x80002504]:fsd fa3, 176(a5)
Current Store : [0x80002508] : sd a7, 184(a5) -- Store: [0x800072a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6d1b5afbd5567 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x870885b5bcec4 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x16d877c1f1617 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000251c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002520]:csrrs a7, fflags, zero
	-[0x80002524]:fsd fa3, 192(a5)
Current Store : [0x80002528] : sd a7, 200(a5) -- Store: [0x800072b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xff4e626f1408f and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x5b1293d297fe2 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x5a9a2d170e2e7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000253c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002540]:csrrs a7, fflags, zero
	-[0x80002544]:fsd fa3, 208(a5)
Current Store : [0x80002548] : sd a7, 216(a5) -- Store: [0x800072c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xeb6cfccb7b3a4 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x4e7209b2b785d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x41018d7bfa2cd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000255c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002560]:csrrs a7, fflags, zero
	-[0x80002564]:fsd fa3, 224(a5)
Current Store : [0x80002568] : sd a7, 232(a5) -- Store: [0x800072d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x820c7be939191 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x4f9449495eae2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfa0df3e20838d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000257c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002580]:csrrs a7, fflags, zero
	-[0x80002584]:fsd fa3, 240(a5)
Current Store : [0x80002588] : sd a7, 248(a5) -- Store: [0x800072e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9d7af8f37029d and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x7389598bd5d38 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x2c0b871cd0c13 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000259c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800025a0]:csrrs a7, fflags, zero
	-[0x800025a4]:fsd fa3, 256(a5)
Current Store : [0x800025a8] : sd a7, 264(a5) -- Store: [0x800072f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xea8a1aa313989 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x370b6ca44c088 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a01d53c2b9bb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800025bc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800025c0]:csrrs a7, fflags, zero
	-[0x800025c4]:fsd fa3, 272(a5)
Current Store : [0x800025c8] : sd a7, 280(a5) -- Store: [0x80007308]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf3dff3d82be09 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x7e9106e33fa27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x7581ae94553bc and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800025dc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800025e0]:csrrs a7, fflags, zero
	-[0x800025e4]:fsd fa3, 288(a5)
Current Store : [0x800025e8] : sd a7, 296(a5) -- Store: [0x80007318]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3b743a16ba1c and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xdbd76f744d1ce and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xd06cc97ae5955 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800025fc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002600]:csrrs a7, fflags, zero
	-[0x80002604]:fsd fa3, 304(a5)
Current Store : [0x80002608] : sd a7, 312(a5) -- Store: [0x80007328]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xffa43e27b4aa7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xb4a8b79988117 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb45a764ad5a54 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000261c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002620]:csrrs a7, fflags, zero
	-[0x80002624]:fsd fa3, 320(a5)
Current Store : [0x80002628] : sd a7, 328(a5) -- Store: [0x80007338]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2de3709212eb9 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x897eeee2580a5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xd007d77604347 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000263c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002640]:csrrs a7, fflags, zero
	-[0x80002644]:fsd fa3, 336(a5)
Current Store : [0x80002648] : sd a7, 344(a5) -- Store: [0x80007348]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x31a78b0f0b973 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x6a3e0418950a1 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb080f61aebdc6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000265c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002660]:csrrs a7, fflags, zero
	-[0x80002664]:fsd fa3, 352(a5)
Current Store : [0x80002668] : sd a7, 360(a5) -- Store: [0x80007358]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xb4c24c566faff and fs2 == 1 and fe2 == 0x401 and fm2 == 0x04d23f761e4e2 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xbcfc092fbe62d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000267c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002680]:csrrs a7, fflags, zero
	-[0x80002684]:fsd fa3, 368(a5)
Current Store : [0x80002688] : sd a7, 376(a5) -- Store: [0x80007368]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x42c3b2396030c and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x400115a8f3f08 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9375fcda7c10f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000269c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800026a0]:csrrs a7, fflags, zero
	-[0x800026a4]:fsd fa3, 384(a5)
Current Store : [0x800026a8] : sd a7, 392(a5) -- Store: [0x80007378]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x769cb824195b1 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x4c5284c35ebf9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe64bff487f6af and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800026bc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800026c0]:csrrs a7, fflags, zero
	-[0x800026c4]:fsd fa3, 400(a5)
Current Store : [0x800026c8] : sd a7, 408(a5) -- Store: [0x80007388]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xad469a4d40781 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x3ef164ade94e5 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x0b693dfb3681f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800026dc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800026e0]:csrrs a7, fflags, zero
	-[0x800026e4]:fsd fa3, 416(a5)
Current Store : [0x800026e8] : sd a7, 424(a5) -- Store: [0x80007398]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x0c0d5f34e784f and fs2 == 1 and fe2 == 0x402 and fm2 == 0xe2af74c5b771a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf968e4aac6955 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800026fc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002700]:csrrs a7, fflags, zero
	-[0x80002704]:fsd fa3, 432(a5)
Current Store : [0x80002708] : sd a7, 440(a5) -- Store: [0x800073a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0xc85a87ea8c3df and fs2 == 1 and fe2 == 0x403 and fm2 == 0x071c1175cfa80 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd5070aa8da4e6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000271c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002720]:csrrs a7, fflags, zero
	-[0x80002724]:fsd fa3, 448(a5)
Current Store : [0x80002728] : sd a7, 456(a5) -- Store: [0x800073b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xd299df5352de3 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xd9e66baf38c0b and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xafe12412a3f8b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000273c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002740]:csrrs a7, fflags, zero
	-[0x80002744]:fsd fa3, 464(a5)
Current Store : [0x80002748] : sd a7, 472(a5) -- Store: [0x800073c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x301b8dd6015ba and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x642342f8435b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa7103490036bf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000275c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002760]:csrrs a7, fflags, zero
	-[0x80002764]:fsd fa3, 480(a5)
Current Store : [0x80002768] : sd a7, 488(a5) -- Store: [0x800073d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9fa11c0412e3d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x2b6247a905d89 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xe610bbbd953db and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000277c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002780]:csrrs a7, fflags, zero
	-[0x80002784]:fsd fa3, 496(a5)
Current Store : [0x80002788] : sd a7, 504(a5) -- Store: [0x800073e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf930a02671095 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x14d99faa2cdd7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x112af0fb1c5fb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000279c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800027a0]:csrrs a7, fflags, zero
	-[0x800027a4]:fsd fa3, 512(a5)
Current Store : [0x800027a8] : sd a7, 520(a5) -- Store: [0x800073f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x4acff5b85a5cb and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x33caa795905c4 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x8dbd4452e6b5f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800027bc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800027c0]:csrrs a7, fflags, zero
	-[0x800027c4]:fsd fa3, 528(a5)
Current Store : [0x800027c8] : sd a7, 536(a5) -- Store: [0x80007408]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x60db7dd3cba12 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x723e350962bf4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfe52fa1ef67a1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800027dc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800027e0]:csrrs a7, fflags, zero
	-[0x800027e4]:fsd fa3, 544(a5)
Current Store : [0x800027e8] : sd a7, 552(a5) -- Store: [0x80007418]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x404ab140ecaf7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xe75dcf1983ff7 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x30e1bab89c4e3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800027fc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002800]:csrrs a7, fflags, zero
	-[0x80002804]:fsd fa3, 560(a5)
Current Store : [0x80002808] : sd a7, 568(a5) -- Store: [0x80007428]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x44673727309cf and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x1ed5312aa8e46 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x6b7977cc7c6d7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000281c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002820]:csrrs a7, fflags, zero
	-[0x80002824]:fsd fa3, 576(a5)
Current Store : [0x80002828] : sd a7, 584(a5) -- Store: [0x80007438]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x171d1e85e4878 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x25742c389cbb5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3ff2fd57cdba5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000283c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002840]:csrrs a7, fflags, zero
	-[0x80002844]:fsd fa3, 592(a5)
Current Store : [0x80002848] : sd a7, 600(a5) -- Store: [0x80007448]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5c1e59a3495cf and fs2 == 1 and fe2 == 0x400 and fm2 == 0x5bf982469fe46 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd9306e2cf7822 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000285c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002860]:csrrs a7, fflags, zero
	-[0x80002864]:fsd fa3, 608(a5)
Current Store : [0x80002868] : sd a7, 616(a5) -- Store: [0x80007458]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x38be631735417 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x80c60b94db466 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd60f86097c097 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000287c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002880]:csrrs a7, fflags, zero
	-[0x80002884]:fsd fa3, 624(a5)
Current Store : [0x80002888] : sd a7, 632(a5) -- Store: [0x80007468]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7579046abe557 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xde56835772cb5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x5ceb1641a60d9 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000289c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800028a0]:csrrs a7, fflags, zero
	-[0x800028a4]:fsd fa3, 640(a5)
Current Store : [0x800028a8] : sd a7, 648(a5) -- Store: [0x80007478]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x2c15fdbb5e3cf and fs2 == 1 and fe2 == 0x403 and fm2 == 0x9d1bad7655f2a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe43febfe9d259 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800028bc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800028c0]:csrrs a7, fflags, zero
	-[0x800028c4]:fsd fa3, 656(a5)
Current Store : [0x800028c8] : sd a7, 664(a5) -- Store: [0x80007488]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x982e185781cc1 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x140f26a707f49 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb829da92ef6eb and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800028dc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800028e0]:csrrs a7, fflags, zero
	-[0x800028e4]:fsd fa3, 672(a5)
Current Store : [0x800028e8] : sd a7, 680(a5) -- Store: [0x80007498]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fb and fm1 == 0xba95a52df5767 and fs2 == 1 and fe2 == 0x401 and fm2 == 0xbb4734aa2ffab and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x7f2e07b1fbb17 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800028fc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002900]:csrrs a7, fflags, zero
	-[0x80002904]:fsd fa3, 688(a5)
Current Store : [0x80002908] : sd a7, 696(a5) -- Store: [0x800074a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0ca5b7900ea57 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x7a69ea0a9f7a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8d1bd69d9f548 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000291c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002920]:csrrs a7, fflags, zero
	-[0x80002924]:fsd fa3, 704(a5)
Current Store : [0x80002928] : sd a7, 712(a5) -- Store: [0x800074b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x60a5a04199781 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x07bd4acb086bc and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x6b4ee8f2445b5 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000293c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002940]:csrrs a7, fflags, zero
	-[0x80002944]:fsd fa3, 720(a5)
Current Store : [0x80002948] : sd a7, 728(a5) -- Store: [0x800074c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdbfbc83472936 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x036953caa3e91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe253919d94c5b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000295c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002960]:csrrs a7, fflags, zero
	-[0x80002964]:fsd fa3, 736(a5)
Current Store : [0x80002968] : sd a7, 744(a5) -- Store: [0x800074d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9279f41e78217 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xec3b664f905e6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x82efe20fbfe2b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000297c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002980]:csrrs a7, fflags, zero
	-[0x80002984]:fsd fa3, 752(a5)
Current Store : [0x80002988] : sd a7, 760(a5) -- Store: [0x800074e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x401 and fm2 == 0x51e4ba7320788 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x8000299c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800029a0]:csrrs a7, fflags, zero
	-[0x800029a4]:fsd fa3, 768(a5)
Current Store : [0x800029a8] : sd a7, 776(a5) -- Store: [0x800074f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 1 and fe2 == 0x401 and fm2 == 0x4969a46af80a4 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800029bc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800029c0]:csrrs a7, fflags, zero
	-[0x800029c4]:fsd fa3, 784(a5)
Current Store : [0x800029c8] : sd a7, 792(a5) -- Store: [0x80007508]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x94717562172c6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800029dc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800029e0]:csrrs a7, fflags, zero
	-[0x800029e4]:fsd fa3, 800(a5)
Current Store : [0x800029e8] : sd a7, 808(a5) -- Store: [0x80007518]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 1 and fe2 == 0x404 and fm2 == 0x5ccc17c4e0cf2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x800029fc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002a00]:csrrs a7, fflags, zero
	-[0x80002a04]:fsd fa3, 816(a5)
Current Store : [0x80002a08] : sd a7, 824(a5) -- Store: [0x80007528]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x207700538aa86 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002a1c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002a20]:csrrs a7, fflags, zero
	-[0x80002a24]:fsd fa3, 832(a5)
Current Store : [0x80002a28] : sd a7, 840(a5) -- Store: [0x80007538]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x80322f838f766 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002a3c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002a40]:csrrs a7, fflags, zero
	-[0x80002a44]:fsd fa3, 848(a5)
Current Store : [0x80002a48] : sd a7, 856(a5) -- Store: [0x80007548]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x4b53acb56a497 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002a5c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002a60]:csrrs a7, fflags, zero
	-[0x80002a64]:fsd fa3, 864(a5)
Current Store : [0x80002a68] : sd a7, 872(a5) -- Store: [0x80007558]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x861a6c82110d2 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002a7c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002a80]:csrrs a7, fflags, zero
	-[0x80002a84]:fsd fa3, 880(a5)
Current Store : [0x80002a88] : sd a7, 888(a5) -- Store: [0x80007568]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x2cb7501dfc887 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002a9c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002aa0]:csrrs a7, fflags, zero
	-[0x80002aa4]:fsd fa3, 896(a5)
Current Store : [0x80002aa8] : sd a7, 904(a5) -- Store: [0x80007578]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xd5aa56f017c02 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002abc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002ac0]:csrrs a7, fflags, zero
	-[0x80002ac4]:fsd fa3, 912(a5)
Current Store : [0x80002ac8] : sd a7, 920(a5) -- Store: [0x80007588]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0x90c64fc55e97f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002adc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002ae0]:csrrs a7, fflags, zero
	-[0x80002ae4]:fsd fa3, 928(a5)
Current Store : [0x80002ae8] : sd a7, 936(a5) -- Store: [0x80007598]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x400 and fm2 == 0x002a99ffaa461 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002afc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002b00]:csrrs a7, fflags, zero
	-[0x80002b04]:fsd fa3, 944(a5)
Current Store : [0x80002b08] : sd a7, 952(a5) -- Store: [0x800075a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xc9ce16305fb76 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002b1c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002b20]:csrrs a7, fflags, zero
	-[0x80002b24]:fsd fa3, 960(a5)
Current Store : [0x80002b28] : sd a7, 968(a5) -- Store: [0x800075b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xd67f63a22c8b1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002b3c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002b40]:csrrs a7, fflags, zero
	-[0x80002b44]:fsd fa3, 976(a5)
Current Store : [0x80002b48] : sd a7, 984(a5) -- Store: [0x800075c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x5655fb54b9f4c and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002b5c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002b60]:csrrs a7, fflags, zero
	-[0x80002b64]:fsd fa3, 992(a5)
Current Store : [0x80002b68] : sd a7, 1000(a5) -- Store: [0x800075d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x6646aaf5982ba and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002b7c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002b80]:csrrs a7, fflags, zero
	-[0x80002b84]:fsd fa3, 1008(a5)
Current Store : [0x80002b88] : sd a7, 1016(a5) -- Store: [0x800075e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x26159c540d020 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002b9c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002ba0]:csrrs a7, fflags, zero
	-[0x80002ba4]:fsd fa3, 1024(a5)
Current Store : [0x80002ba8] : sd a7, 1032(a5) -- Store: [0x800075f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x41cdfb6a8087a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002bbc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002bc0]:csrrs a7, fflags, zero
	-[0x80002bc4]:fsd fa3, 1040(a5)
Current Store : [0x80002bc8] : sd a7, 1048(a5) -- Store: [0x80007608]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xa9654e761f0b1 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002bdc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002be0]:csrrs a7, fflags, zero
	-[0x80002be4]:fsd fa3, 1056(a5)
Current Store : [0x80002be8] : sd a7, 1064(a5) -- Store: [0x80007618]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xc6aa504850cbd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002bfc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002c00]:csrrs a7, fflags, zero
	-[0x80002c04]:fsd fa3, 1072(a5)
Current Store : [0x80002c08] : sd a7, 1080(a5) -- Store: [0x80007628]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x075d1281c18a5 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002c1c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002c20]:csrrs a7, fflags, zero
	-[0x80002c24]:fsd fa3, 1088(a5)
Current Store : [0x80002c28] : sd a7, 1096(a5) -- Store: [0x80007638]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 1 and fe2 == 0x407 and fm2 == 0xeaf869e3b1341 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002c3c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002c40]:csrrs a7, fflags, zero
	-[0x80002c44]:fsd fa3, 1104(a5)
Current Store : [0x80002c48] : sd a7, 1112(a5) -- Store: [0x80007648]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xa43e2dae46a30 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002c5c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002c60]:csrrs a7, fflags, zero
	-[0x80002c64]:fsd fa3, 1120(a5)
Current Store : [0x80002c68] : sd a7, 1128(a5) -- Store: [0x80007658]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x648419e5f7622 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002c7c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002c80]:csrrs a7, fflags, zero
	-[0x80002c84]:fsd fa3, 1136(a5)
Current Store : [0x80002c88] : sd a7, 1144(a5) -- Store: [0x80007668]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xaae02012bf970 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002c9c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002ca0]:csrrs a7, fflags, zero
	-[0x80002ca4]:fsd fa3, 1152(a5)
Current Store : [0x80002ca8] : sd a7, 1160(a5) -- Store: [0x80007678]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xa3ad354c23d0e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002cbc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002cc0]:csrrs a7, fflags, zero
	-[0x80002cc4]:fsd fa3, 1168(a5)
Current Store : [0x80002cc8] : sd a7, 1176(a5) -- Store: [0x80007688]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 1 and fe2 == 0x403 and fm2 == 0x086bf70a767c0 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002cdc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002ce0]:csrrs a7, fflags, zero
	-[0x80002ce4]:fsd fa3, 1184(a5)
Current Store : [0x80002ce8] : sd a7, 1192(a5) -- Store: [0x80007698]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x0e3570e2acd1c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002cfc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002d00]:csrrs a7, fflags, zero
	-[0x80002d04]:fsd fa3, 1200(a5)
Current Store : [0x80002d08] : sd a7, 1208(a5) -- Store: [0x800076a8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe053a2ef29387 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x0d23dd9377bc1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf8fb2d617959b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002d1c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002d20]:csrrs a7, fflags, zero
	-[0x80002d24]:fsd fa3, 1216(a5)
Current Store : [0x80002d28] : sd a7, 1224(a5) -- Store: [0x800076b8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcd42d44a09da1 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x0159563e0931a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0xcfb10ebe5bb27 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002d3c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002d40]:csrrs a7, fflags, zero
	-[0x80002d44]:fsd fa3, 1232(a5)
Current Store : [0x80002d48] : sd a7, 1240(a5) -- Store: [0x800076c8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe2ffa6cff07a7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6039e999a6b85 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4c46648351903 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002d5c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002d60]:csrrs a7, fflags, zero
	-[0x80002d64]:fsd fa3, 1248(a5)
Current Store : [0x80002d68] : sd a7, 1256(a5) -- Store: [0x800076d8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xdb38beb9086df and fs2 == 1 and fe2 == 0x403 and fm2 == 0x00d954e12d2fc and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xdccc2f63529c1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002d7c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002d80]:csrrs a7, fflags, zero
	-[0x80002d84]:fsd fa3, 1264(a5)
Current Store : [0x80002d88] : sd a7, 1272(a5) -- Store: [0x800076e8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7ad3fc69bae31 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x3f1e4b04626ba and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd83afb61ec2c3 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002d9c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002da0]:csrrs a7, fflags, zero
	-[0x80002da4]:fsd fa3, 1280(a5)
Current Store : [0x80002da8] : sd a7, 1288(a5) -- Store: [0x800076f8]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x97239c6c3047e and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x2f682f6148f16 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe288d7f5db50b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002dbc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002dc0]:csrrs a7, fflags, zero
	-[0x80002dc4]:fsd fa3, 1296(a5)
Current Store : [0x80002dc8] : sd a7, 1304(a5) -- Store: [0x80007708]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3eecf8905935f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x30dc050910ea3 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x7bcb8116f23ed and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002ddc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002de0]:csrrs a7, fflags, zero
	-[0x80002de4]:fsd fa3, 1312(a5)
Current Store : [0x80002de8] : sd a7, 1320(a5) -- Store: [0x80007718]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3f9134c1bd5d1 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x3a0b6bfcca191 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x88065cc026dc1 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002dfc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002e00]:csrrs a7, fflags, zero
	-[0x80002e04]:fsd fa3, 1328(a5)
Current Store : [0x80002e08] : sd a7, 1336(a5) -- Store: [0x80007728]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7a58bcd031f73 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x0d9735f939ba2 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e6eb882d805d and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002e1c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002e20]:csrrs a7, fflags, zero
	-[0x80002e24]:fsd fa3, 1344(a5)
Current Store : [0x80002e28] : sd a7, 1352(a5) -- Store: [0x80007738]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x060346a6bdc2c and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x257c3a9472f95 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2c60e567bd871 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002e3c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002e40]:csrrs a7, fflags, zero
	-[0x80002e44]:fsd fa3, 1360(a5)
Current Store : [0x80002e48] : sd a7, 1368(a5) -- Store: [0x80007748]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8178445826527 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0xb6d0b26d0f0f7 and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x4a5f01a817cbf and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002e60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002e64]:csrrs a7, fflags, zero
	-[0x80002e68]:fsd fa3, 1376(a5)
Current Store : [0x80002e6c] : sd a7, 1384(a5) -- Store: [0x80007758]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3f076805d4aca and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x48d466384e6cf and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99ca2eccbc1e6 and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002e80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002e84]:csrrs a7, fflags, zero
	-[0x80002e88]:fsd fa3, 1392(a5)
Current Store : [0x80002e8c] : sd a7, 1400(a5) -- Store: [0x80007768]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcce49d3aef9a2 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xc5772428b24af and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x983384cbe599f and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002ea0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002ea4]:csrrs a7, fflags, zero
	-[0x80002ea8]:fsd fa3, 1408(a5)
Current Store : [0x80002eac] : sd a7, 1416(a5) -- Store: [0x80007778]:0x0000000000000005




Last Coverpoint : ['fs1 == 0 and fe1 == 0x7fa and fm1 == 0x3532ec60050af and fs2 == 1 and fe2 == 0x401 and fm2 == 0x1f814130cd020 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x5b403465a136b and rm_val == 3  #nosat']
Last Code Sequence : 
	-[0x80002ec0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80002ec4]:csrrs a7, fflags, zero
	-[0x80002ec8]:fsd fa3, 1424(a5)
Current Store : [0x80002ecc] : sd a7, 1432(a5) -- Store: [0x80007788]:0x0000000000000005





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

|s.no|            signature             |                                                                                                                                                                        coverpoints                                                                                                                                                                         |                                                             code                                                             |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80006210]<br>0x0000000A00000000|- opcode : fmadd.d<br> - rs1 : f6<br> - rs2 : f31<br> - rs3 : f31<br> - rd : f3<br> - rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1<br>                                                                                                                                                                                                              |[0x800003c0]:fmadd.d ft3, ft6, ft11, ft11, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsd ft3, 0(a5)<br>    |
|   2|[0x80006220]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f28<br> - rs2 : f28<br> - rs3 : f28<br> - rd : f28<br> - rs1 == rs2 == rs3 == rd<br>                                                                                                                                                                                                                                                                |[0x800003e0]:fmadd.d ft8, ft8, ft8, ft8, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsd ft8, 16(a5)<br>     |
|   3|[0x80006230]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f20<br> - rs2 : f1<br> - rs3 : f27<br> - rd : f24<br> - rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x44dbafd6c6641 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x5d3d1dcd09f6f and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0xbb2d0ce1c61ff and rm_val == 3  #nosat<br> |[0x80000400]:fmadd.d fs8, fs4, ft1, fs11, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fs8, 32(a5)<br>    |
|   4|[0x80006240]<br>0x0000000000000005|- rs1 : f16<br> - rs2 : f9<br> - rs3 : f16<br> - rd : f17<br> - rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2<br>                                                                                                                                                                                                                                    |[0x80000420]:fmadd.d fa7, fa6, fs1, fa6, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsd fa7, 48(a5)<br>     |
|   5|[0x80006250]<br>0xF56FF76DF56FF76D|- rs1 : f2<br> - rs2 : f2<br> - rs3 : f20<br> - rd : f14<br> - rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3<br>                                                                                                                                                                                                                                     |[0x80000440]:fmadd.d fa4, ft2, ft2, fs4, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:fsd fa4, 64(a5)<br>     |
|   6|[0x80006260]<br>0x0000000000000000|- rs1 : f14<br> - rs2 : f0<br> - rs3 : f0<br> - rd : f0<br> - rd == rs2 == rs3 != rs1<br>                                                                                                                                                                                                                                                                   |[0x80000460]:fmadd.d ft0, fa4, ft0, ft0, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd ft0, 80(a5)<br>     |
|   7|[0x80006270]<br>0xDBEADFEEDBEADFEE|- rs1 : f12<br> - rs2 : f12<br> - rs3 : f12<br> - rd : f21<br> - rs1 == rs2 == rs3 != rd<br>                                                                                                                                                                                                                                                                |[0x80000480]:fmadd.d fs5, fa2, fa2, fa2, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd fs5, 96(a5)<br>     |
|   8|[0x80006280]<br>0x76DF56FF76DF56FF|- rs1 : f26<br> - rs2 : f22<br> - rs3 : f3<br> - rd : f26<br> - rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5da5889e16df9 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x438eb818d96a9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb9eac8a229361 and rm_val == 3  #nosat<br>                               |[0x800004a0]:fmadd.d fs10, fs10, fs6, ft3, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:fsd fs10, 112(a5)<br> |
|   9|[0x80006290]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f19<br> - rs2 : f15<br> - rs3 : f23<br> - rd : f23<br> - rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x981534f052c36 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xa056ecb4da0d0 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x4bd6833d13437 and rm_val == 3  #nosat<br>                              |[0x800004c0]:fmadd.d fs7, fs3, fa5, fs7, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd fs7, 128(a5)<br>    |
|  10|[0x800062a0]<br>0xEEDBEADFEEDBEADF|- rs1 : f29<br> - rs2 : f8<br> - rs3 : f29<br> - rd : f29<br> - rs1 == rd == rs3 != rs2<br>                                                                                                                                                                                                                                                                 |[0x800004e0]:fmadd.d ft9, ft9, fs0, ft9, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:fsd ft9, 144(a5)<br>    |
|  11|[0x800062b0]<br>0x56FF76DF56FF76DF|- rs1 : f13<br> - rs2 : f10<br> - rs3 : f19<br> - rd : f10<br> - rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1<br> - fs1 == 0 and fe1 == 0x7fb and fm1 == 0x945b7f81d8fdf and fs2 == 1 and fe2 == 0x401 and fm2 == 0xd147284d8fa36 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x6f754bd2033da and rm_val == 3  #nosat<br>                              |[0x80000500]:fmadd.d fa0, fa3, fa0, fs3, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsd fa0, 160(a5)<br>    |
|  12|[0x800062c0]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f7<br> - rs2 : f7<br> - rs3 : f24<br> - rd : f7<br> - rs1 == rs2 == rd != rs3<br>                                                                                                                                                                                                                                                                   |[0x80000520]:fmadd.d ft7, ft7, ft7, fs8, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd ft7, 176(a5)<br>    |
|  13|[0x800062d0]<br>0x0000000080000390|- rs1 : f10<br> - rs2 : f24<br> - rs3 : f25<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa9d1d4cf40c46 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x2db97307e1853 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf5e02f30d7619 and rm_val == 3  #nosat<br>                                                                                          |[0x80000540]:fmadd.d ft5, fa0, fs8, fs9, dyn<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:fsd ft5, 192(a5)<br>    |
|  14|[0x800062e0]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f31<br> - rs2 : f21<br> - rs3 : f6<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9a7a5b2cb1b77 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x6d6f724756323 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x24f9932490413 and rm_val == 3  #nosat<br>                                                                                          |[0x80000560]:fmadd.d fa1, ft11, fs5, ft6, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd fa1, 208(a5)<br>   |
|  15|[0x800062f0]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f24<br> - rs2 : f20<br> - rs3 : f11<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb31d7703f8e22 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x746b6e9a3545d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x3c7eb51fa3dd5 and rm_val == 3  #nosat<br>                                                                                         |[0x80000580]:fmadd.d fa2, fs8, fs4, fa1, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd fa2, 224(a5)<br>    |
|  16|[0x80006300]<br>0x0000000080006210|- rs1 : f27<br> - rs2 : f5<br> - rs3 : f14<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffd4ea70da7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xb5e29f1f284e6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xae2ffe7a23837 and rm_val == 3  #nosat<br>                                                                                          |[0x800005a0]:fmadd.d fa5, fs11, ft5, fa4, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsd fa5, 240(a5)<br>   |
|  17|[0x80006310]<br>0x0000000A00006000|- rs1 : f23<br> - rs2 : f30<br> - rs3 : f15<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x6836a0e788195 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x694f7603a23ec and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xfc64d7d071783 and rm_val == 3  #nosat<br>                                                                                          |[0x800005c0]:fmadd.d ft2, fs7, ft10, fa5, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:fsd ft2, 256(a5)<br>   |
|  18|[0x80006320]<br>0x0000000080004000|- rs1 : f8<br> - rs2 : f23<br> - rs3 : f9<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x808d937241712 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x49554bcd6e9c4 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xeeb6135ddcc33 and rm_val == 3  #nosat<br>                                                                                            |[0x800005e0]:fmadd.d ft6, fs0, fs7, fs1, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd ft6, 272(a5)<br>    |
|  19|[0x80006330]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f0<br> - rs2 : f26<br> - rs3 : f4<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1ff728210343b and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x44fa8038499fc and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x6d8e9661dd515 and rm_val == 3  #nosat<br>                                                                                           |[0x80000600]:fmadd.d fs11, ft0, fs10, ft4, dyn<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:fsd fs11, 288(a5)<br> |
|  20|[0x80006340]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f17<br> - rs2 : f18<br> - rs3 : f2<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1bb19ce92db19 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x73c0a7916b8dc and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x9bf7e54da040f and rm_val == 3  #nosat<br>                                                                                           |[0x80000620]:fmadd.d ft4, fa7, fs2, ft2, dyn<br> [0x80000624]:csrrs a7, fflags, zero<br> [0x80000628]:fsd ft4, 304(a5)<br>    |
|  21|[0x80006350]<br>0xDF56FF76DF56FF76|- rs1 : f25<br> - rs2 : f6<br> - rs3 : f10<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9224a0bb6a93d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x191c6e9e31a75 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb996de338a277 and rm_val == 3  #nosat<br>                                                                                          |[0x80000640]:fmadd.d fs2, fs9, ft6, fa0, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd fs2, 320(a5)<br>    |
|  22|[0x80006360]<br>0xFEEDBEADFEEDBEAD|- rs1 : f15<br> - rs2 : f4<br> - rs3 : f22<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xed8fe95a3f4cd and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xd4577ac1b72f3 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc379df96aca26 and rm_val == 3  #nosat<br>                                                                                           |[0x80000660]:fmadd.d ft1, fa5, ft4, fs6, dyn<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:fsd ft1, 336(a5)<br>    |
|  23|[0x80006370]<br>0xADFEEDBEADFEEDBE|- rs1 : f18<br> - rs2 : f16<br> - rs3 : f1<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0x0d46afa2c97af and fs2 == 1 and fe2 == 0x403 and fm2 == 0x18daad470718d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x276b548f17c0d and rm_val == 3  #nosat<br>                                                                                           |[0x80000680]:fmadd.d fs1, fs2, fa6, ft1, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsd fs1, 352(a5)<br>    |
|  24|[0x80006380]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f1<br> - rs2 : f14<br> - rs3 : f13<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x7fa and fm1 == 0xac88b8d489e5f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x2b22ab6de4ad0 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf4bdb90011c1e and rm_val == 3  #nosat<br>                                                                                          |[0x800006a0]:fmadd.d ft11, ft1, fa4, fa3, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd ft11, 368(a5)<br>  |
|  25|[0x80006390]<br>0xF76DF56FF76DF56F|- rs1 : f11<br> - rs2 : f29<br> - rs3 : f17<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa0e689b66eb78 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x07c06cf88eb57 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xad8635d7be675 and rm_val == 3  #nosat<br>                                                                                         |[0x800006c0]:fmadd.d ft10, fa1, ft9, fa7, dyn<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:fsd ft10, 384(a5)<br>  |
|  26|[0x800063a0]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f5<br> - rs2 : f3<br> - rs3 : f7<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3128f1c01a74f and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x63dbc01935a32 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0xa831ba40f6467 and rm_val == 3  #nosat<br>                                                                                            |[0x800006e0]:fmadd.d fs3, ft5, ft3, ft7, dyn<br> [0x800006e4]:csrrs a7, fflags, zero<br> [0x800006e8]:fsd fs3, 400(a5)<br>    |
|  27|[0x800063b0]<br>0xEADFEEDBEADFEEDB|- rs1 : f9<br> - rs2 : f11<br> - rs3 : f30<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x10b1191e4ab27 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xd21443a71a52d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf077f59f737b3 and rm_val == 3  #nosat<br>                                                                                          |[0x80000700]:fmadd.d fa3, fs1, fa1, ft10, dyn<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:fsd fa3, 416(a5)<br>   |
|  28|[0x800063c0]<br>0xEDBEADFEEDBEADFE|- rs1 : f22<br> - rs2 : f27<br> - rs3 : f18<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0x88f5e22ac0386 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x384d3be5a0d02 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xdf62398a470ce and rm_val == 3  #nosat<br>                                                                                         |[0x80000720]:fmadd.d fs9, fs6, fs11, fs2, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd fs9, 432(a5)<br>   |
|  29|[0x800063d0]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f4<br> - rs2 : f25<br> - rs3 : f26<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x7fd and fm1 == 0xbc92ff15f4967 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x04497175a0ef8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc404d60632ee9 and rm_val == 3  #nosat<br>                                                                                          |[0x80000740]:fmadd.d fs4, ft4, fs9, fs10, dyn<br> [0x80000744]:csrrs a7, fflags, zero<br> [0x80000748]:fsd fs4, 448(a5)<br>   |
|  30|[0x800063e0]<br>0x0000000080004010|- rs1 : f30<br> - rs2 : f13<br> - rs3 : f8<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd479c68e9c578 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x01f5907e92813 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xd80fa14c51295 and rm_val == 3  #nosat<br>                                                                                          |[0x80000760]:fmadd.d fa6, ft10, fa3, fs0, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsd fa6, 464(a5)<br>   |
|  31|[0x800063f0]<br>0x6DF56FF76DF56FF7|- rs1 : f3<br> - rs2 : f19<br> - rs3 : f21<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x7fb and fm1 == 0xe428a0aabe83f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x575affdc2d4cd and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x44af44b910f53 and rm_val == 3  #nosat<br>                                                                                          |[0x80000780]:fmadd.d fs6, ft3, fs3, fs5, dyn<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:fsd fs6, 480(a5)<br>    |
|  32|[0x80006400]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f21<br> - rs2 : f17<br> - rs3 : f5<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe087ff1bcfd1f and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xb192da82db601 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x96ecd71b7c3a4 and rm_val == 3  #nosat<br>                                                                                           |[0x800007a0]:fmadd.d fs0, fs5, fa7, ft5, dyn<br> [0x800007a4]:csrrs a7, fflags, zero<br> [0x800007a8]:fsd fs0, 496(a5)<br>    |
|  33|[0x80006410]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6b3afa0937d64 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x4208c88a6ac66 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xc8eca4e1e1271 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800007c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:fsd fa3, 512(a5)<br>    |
|  34|[0x80006420]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0f8517a6c774d and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x4a9154a0a1947 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x5e9bb4a16ce53 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800007e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007e4]:csrrs a7, fflags, zero<br> [0x800007e8]:fsd fa3, 528(a5)<br>    |
|  35|[0x80006430]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x742379bee86f1 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x0c84cacab5e7e and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x86562c894c40f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000800]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa3, 544(a5)<br>    |
|  36|[0x80006440]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2b3906a7a121d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x6a3a05503c535 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa762748a714a7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000820]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000824]:csrrs a7, fflags, zero<br> [0x80000828]:fsd fa3, 560(a5)<br>    |
|  37|[0x80006450]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x524d0caddaebb and fs2 == 1 and fe2 == 0x3fa and fm2 == 0x349cc81502e36 and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x97d3e29cdb5ff and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000840]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsd fa3, 576(a5)<br>    |
|  38|[0x80006460]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb73268900a96f and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xb0a02d068a60f and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x731bee99c06e5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000860]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000864]:csrrs a7, fflags, zero<br> [0x80000868]:fsd fa3, 592(a5)<br>    |
|  39|[0x80006470]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x39584a81105c4 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x82abd70b0818c and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xd94975870627b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000880]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000884]:csrrs a7, fflags, zero<br> [0x80000888]:fsd fa3, 608(a5)<br>    |
|  40|[0x80006480]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb837769085d32 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x1a9ff101a6b89 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe600217ce4b48 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800008a0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008a4]:csrrs a7, fflags, zero<br> [0x800008a8]:fsd fa3, 624(a5)<br>    |
|  41|[0x80006490]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x0a7b69d393cb3 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x5f5596f62e009 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x6db84e37cd601 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800008c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008c4]:csrrs a7, fflags, zero<br> [0x800008c8]:fsd fa3, 640(a5)<br>    |
|  42|[0x800064a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xc21b18f92a0df and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xd7ccd567ee936 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x9ec3ffe0cd89f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800008e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa3, 656(a5)<br>    |
|  43|[0x800064b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x870f302f4b1d3 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x758834daa227a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1d4c9901c8ff2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000900]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000904]:csrrs a7, fflags, zero<br> [0x80000908]:fsd fa3, 672(a5)<br>    |
|  44|[0x800064c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x245fab045b485 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xc7a4e0163cb53 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x04312b15b41cf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000920]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:fsd fa3, 688(a5)<br>    |
|  45|[0x800064d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0ce4ebbfb540b and fs2 == 1 and fe2 == 0x400 and fm2 == 0x4976ed9eb8676 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5a0f1e14af88c and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000940]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000944]:csrrs a7, fflags, zero<br> [0x80000948]:fsd fa3, 704(a5)<br>    |
|  46|[0x800064e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x0e0b709ce64ff and fs2 == 1 and fe2 == 0x400 and fm2 == 0x48d0c005bc79b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x5adadc2328113 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000960]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000964]:csrrs a7, fflags, zero<br> [0x80000968]:fsd fa3, 720(a5)<br>    |
|  47|[0x800064f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x879541c7ed593 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x5cc462aeb1f6c and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x0abda5523f47f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000980]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000984]:csrrs a7, fflags, zero<br> [0x80000988]:fsd fa3, 736(a5)<br>    |
|  48|[0x80006500]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x121e9a0da302b and fs2 == 1 and fe2 == 0x400 and fm2 == 0x844c9f59c5dc0 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9fc86d33894ba and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800009a0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009a4]:csrrs a7, fflags, zero<br> [0x800009a8]:fsd fa3, 752(a5)<br>    |
|  49|[0x80006510]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x74bf0fc305469 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xed1f21ce781d1 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x6700a2db5db8a and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800009c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa3, 768(a5)<br>    |
|  50|[0x80006520]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4f9843f2017a8 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x74e619b913599 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe8d6e741329cd and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800009e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009e4]:csrrs a7, fflags, zero<br> [0x800009e8]:fsd fa3, 784(a5)<br>    |
|  51|[0x80006530]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc4cb84125d463 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xd8e23eda62f1d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa233b32c013e2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsd fa3, 800(a5)<br>    |
|  52|[0x80006540]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x84f9d9c86b344 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x835443fd3ffa5 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2642dec1cffa5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a24]:csrrs a7, fflags, zero<br> [0x80000a28]:fsd fa3, 816(a5)<br>    |
|  53|[0x80006550]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcacc4e524c550 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x75bb9a10ed3a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4ee5f2bc2e2fb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a44]:csrrs a7, fflags, zero<br> [0x80000a48]:fsd fa3, 832(a5)<br>    |
|  54|[0x80006560]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x812fb8713b96a and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7a736b7ba0914 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1cb71040013bc and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a64]:csrrs a7, fflags, zero<br> [0x80000a68]:fsd fa3, 848(a5)<br>    |
|  55|[0x80006570]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xaeabfe627d909 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7e2b47dda1000 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x4176bab09f657 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000a80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a84]:csrrs a7, fflags, zero<br> [0x80000a88]:fsd fa3, 864(a5)<br>    |
|  56|[0x80006580]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7ebba471590af and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x0df228c7f1d67 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x93953624ccd47 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000aa0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa3, 880(a5)<br>    |
|  57|[0x80006590]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x994d05cbd286b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x6e5ef9c0f6465 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x24e1fbf0fafdf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ac0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ac4]:csrrs a7, fflags, zero<br> [0x80000ac8]:fsd fa3, 896(a5)<br>    |
|  58|[0x800065a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x66b55b4febf46 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x18cf187a351e3 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x89788ad07d1df and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ae0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:fsd fa3, 912(a5)<br>    |
|  59|[0x800065b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf68d2a469cf6f and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x006642f5da72f and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xf755e9f87beef and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b04]:csrrs a7, fflags, zero<br> [0x80000b08]:fsd fa3, 928(a5)<br>    |
|  60|[0x800065c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb6f00dfbdfe01 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x589679d3cfdc3 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x276a4a2aa4a3c and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b24]:csrrs a7, fflags, zero<br> [0x80000b28]:fsd fa3, 944(a5)<br>    |
|  61|[0x800065d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf573aeb279fe3 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x60a8d1dbc558e and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x5964df98fd81f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b44]:csrrs a7, fflags, zero<br> [0x80000b48]:fsd fa3, 960(a5)<br>    |
|  62|[0x800065e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x09dbac8969113 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x435bc3a138aa2 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x4fcf76f176d5f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b64]:csrrs a7, fflags, zero<br> [0x80000b68]:fsd fa3, 976(a5)<br>    |
|  63|[0x800065f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa38d55d9c4288 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x86fb473ff8168 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x40629090fb433 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000b80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa3, 992(a5)<br>    |
|  64|[0x80006600]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x66f39d8f4fc87 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x1a0ba107246d0 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8b78a9d0dcdec and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ba0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ba4]:csrrs a7, fflags, zero<br> [0x80000ba8]:fsd fa3, 1008(a5)<br>   |
|  65|[0x80006610]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xd9da6c4705d9f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x58e53544b6f73 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3f32e23dda3fb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000bc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000bc4]:csrrs a7, fflags, zero<br> [0x80000bc8]:fsd fa3, 1024(a5)<br>   |
|  66|[0x80006620]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa71ff63ffacb1 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x1585be476d9f0 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xcab2a38df16b3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000be0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000be4]:csrrs a7, fflags, zero<br> [0x80000be8]:fsd fa3, 1040(a5)<br>   |
|  67|[0x80006630]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3afe5ed82437b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x75b3a20cec993 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xcbd1a7721cf6b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c04]:csrrs a7, fflags, zero<br> [0x80000c08]:fsd fa3, 1056(a5)<br>   |
|  68|[0x80006640]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7386e800ca64f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x421968df359dd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd3749030653b2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c24]:csrrs a7, fflags, zero<br> [0x80000c28]:fsd fa3, 1072(a5)<br>   |
|  69|[0x80006650]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x81aaf142db421 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xa8e39c961f225 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x400d03087ec1b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c44]:csrrs a7, fflags, zero<br> [0x80000c48]:fsd fa3, 1088(a5)<br>   |
|  70|[0x80006660]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf2378cb62ac85 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x2ca97134a1d6c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x24916df128e07 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa3, 1104(a5)<br>   |
|  71|[0x80006670]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x1d37938799ebf and fs2 == 1 and fe2 == 0x403 and fm2 == 0xeffa856a7a98c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x144ac996e3256 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000c80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c84]:csrrs a7, fflags, zero<br> [0x80000c88]:fsd fa3, 1120(a5)<br>   |
|  72|[0x80006680]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb6aa24aebaa4b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x0042b74acd23d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb71c769ffc9bf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ca0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsd fa3, 1136(a5)<br>   |
|  73|[0x80006690]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd7b4f6ca5d29c and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x4c7d1c8eaf2a2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x32529c04d2e18 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000cc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000cc4]:csrrs a7, fflags, zero<br> [0x80000cc8]:fsd fa3, 1152(a5)<br>   |
|  74|[0x800066a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xba49ac2c738ff and fs2 == 1 and fe2 == 0x401 and fm2 == 0x4134c608571c2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1578c6ff0cf33 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ce0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ce4]:csrrs a7, fflags, zero<br> [0x80000ce8]:fsd fa3, 1168(a5)<br>   |
|  75|[0x800066b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x59899bda971ff and fs2 == 1 and fe2 == 0x400 and fm2 == 0xdc4404c6e419d and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x416bd66538e77 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d04]:csrrs a7, fflags, zero<br> [0x80000d08]:fsd fa3, 1184(a5)<br>   |
|  76|[0x800066c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9c039c18124ff and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x520ba21675061 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1007be8ef5523 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d24]:csrrs a7, fflags, zero<br> [0x80000d28]:fsd fa3, 1200(a5)<br>   |
|  77|[0x800066d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x6f6228b21b5af and fs2 == 1 and fe2 == 0x400 and fm2 == 0x6aedd04791803 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x046b0b28fed54 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa3, 1216(a5)<br>   |
|  78|[0x800066e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x340e77ccf05ef and fs2 == 1 and fe2 == 0x403 and fm2 == 0x9d684051e2ed5 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf178ca8c72a45 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d64]:csrrs a7, fflags, zero<br> [0x80000d68]:fsd fa3, 1232(a5)<br>   |
|  79|[0x800066f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x394aaa51fbb13 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x57aca2b77e5e0 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xa4964f80161cf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000d80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:fsd fa3, 1248(a5)<br>   |
|  80|[0x80006700]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x058f746aadc13 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x9861941c63fc9 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa1405439127eb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000da0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000da4]:csrrs a7, fflags, zero<br> [0x80000da8]:fsd fa3, 1264(a5)<br>   |
|  81|[0x80006710]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x96dac4e409c6f and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x35fcf76681586 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xeca818310cf9f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000dc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000dc4]:csrrs a7, fflags, zero<br> [0x80000dc8]:fsd fa3, 1280(a5)<br>   |
|  82|[0x80006720]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xf29d0da4ed493 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xa8727cfd53312 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x9d598dfd5b26f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000de0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000de4]:csrrs a7, fflags, zero<br> [0x80000de8]:fsd fa3, 1296(a5)<br>   |
|  83|[0x80006730]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdf18d15e2934a and fs2 == 1 and fe2 == 0x3fa and fm2 == 0xd6a9186a4d1ce and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xb86a02bb2d83f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e04]:csrrs a7, fflags, zero<br> [0x80000e08]:fsd fa3, 1312(a5)<br>   |
|  84|[0x80006740]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcc2e75b367862 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x17ca8813daee0 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf6f2b38bc4e85 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa3, 1328(a5)<br>   |
|  85|[0x80006750]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x8043cd6eddcef and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x84addd06db0f3 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x23b5de79576cf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e44]:csrrs a7, fflags, zero<br> [0x80000e48]:fsd fa3, 1344(a5)<br>   |
|  86|[0x80006760]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x09b27fa42c3f4 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x59551ba39a93d and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x6669e2f841b05 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e64]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e68]:csrrs a7, fflags, zero<br> [0x80000e6c]:fsd fa3, 1360(a5)<br>   |
|  87|[0x80006770]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x18ca04b57975a and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xcdf25333d25e7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfaad94b595c8b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000e84]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e88]:csrrs a7, fflags, zero<br> [0x80000e8c]:fsd fa3, 1376(a5)<br>   |
|  88|[0x80006780]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa4034a95ba9c7 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0xc0dc23e890ba6 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x70377822116ff and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ea4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ea8]:csrrs a7, fflags, zero<br> [0x80000eac]:fsd fa3, 1392(a5)<br>   |
|  89|[0x80006790]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0xf29f0dcfe81df and fs2 == 1 and fe2 == 0x402 and fm2 == 0x99b025b271a6c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8efb99eb9add8 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ec4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ec8]:csrrs a7, fflags, zero<br> [0x80000ecc]:fsd fa3, 1408(a5)<br>   |
|  90|[0x800067a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf36bc79153554 and fs2 == 1 and fe2 == 0x3f7 and fm2 == 0xa570d4d5fae15 and fs3 == 0 and fe3 == 0x7f7 and fm3 == 0x9b162ec8007ff and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000ee4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa3, 1424(a5)<br>   |
|  91|[0x800067b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4aaff2a6f4a04 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x5562a26803919 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb8fbc75cfb677 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f04]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f08]:csrrs a7, fflags, zero<br> [0x80000f0c]:fsd fa3, 1440(a5)<br>   |
|  92|[0x800067c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x5828d04d5c783 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x662def5c2acfb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe186d442cf9a5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f24]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f28]:csrrs a7, fflags, zero<br> [0x80000f2c]:fsd fa3, 1456(a5)<br>   |
|  93|[0x800067d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x4e8c20c69d943 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x78f3fa3e34f09 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xec9ca62cf719f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f44]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f48]:csrrs a7, fflags, zero<br> [0x80000f4c]:fsd fa3, 1472(a5)<br>   |
|  94|[0x800067e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x76f6473f97787 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xf5eb4da486441 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x6f944f9df4559 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f64]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f68]:csrrs a7, fflags, zero<br> [0x80000f6c]:fsd fa3, 1488(a5)<br>   |
|  95|[0x800067f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xdf45142e44527 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x35bd3296913e5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x21f04b088f7ad and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000f84]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f88]:csrrs a7, fflags, zero<br> [0x80000f8c]:fsd fa3, 1504(a5)<br>   |
|  96|[0x80006800]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x74fec4571b70d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xb6538a67c5de8 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3f52ce179cea9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000fa4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fa8]:csrrs a7, fflags, zero<br> [0x80000fac]:fsd fa3, 1520(a5)<br>   |
|  97|[0x80006810]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9ab24b74b1b39 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x36b7e6625bb57 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xf27aee6d3ac6a and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000fc4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa3, 1536(a5)<br>   |
|  98|[0x80006820]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xd801f3a80e5e3 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x5b7606ac10fca and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x4052213c33a3f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80000fe4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fe8]:csrrs a7, fflags, zero<br> [0x80000fec]:fsd fa3, 1552(a5)<br>   |
|  99|[0x80006830]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9bb1a6b6fd96b and fs2 == 1 and fe2 == 0x3fb and fm2 == 0xfbf9e775a40eb and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x98755c9906d5f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001004]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001008]:csrrs a7, fflags, zero<br> [0x8000100c]:fsd fa3, 1568(a5)<br>   |
| 100|[0x80006840]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75668c3f971ca and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xca6013ace7780 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x4e4acd08958fb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001024]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001028]:csrrs a7, fflags, zero<br> [0x8000102c]:fsd fa3, 1584(a5)<br>   |
| 101|[0x80006850]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2a164b3a18af5 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x2891c92269814 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x595387cf5b52f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001044]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001048]:csrrs a7, fflags, zero<br> [0x8000104c]:fsd fa3, 1600(a5)<br>   |
| 102|[0x80006860]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xe2f90b921966f and fs2 == 1 and fe2 == 0x401 and fm2 == 0x6ae0e13603a5b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x564e3694c12b9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001064]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001068]:csrrs a7, fflags, zero<br> [0x8000106c]:fsd fa3, 1616(a5)<br>   |
| 103|[0x80006870]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe30da56ca568f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x0086d1fb85ea9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe40c0ac9fb671 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001084]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001088]:csrrs a7, fflags, zero<br> [0x8000108c]:fsd fa3, 1632(a5)<br>   |
| 104|[0x80006880]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x601c1501643a8 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xf5a6b0f88178d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x58fe1d5d39e39 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800010a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa3, 1648(a5)<br>   |
| 105|[0x80006890]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x79d2c12874d05 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x45628152d7a90 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe039f0c3c4e9d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800010c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010c8]:csrrs a7, fflags, zero<br> [0x800010cc]:fsd fa3, 1664(a5)<br>   |
| 106|[0x800068a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x06ed29608fc5f and fs2 == 1 and fe2 == 0x403 and fm2 == 0xcce26386baf3c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd95aa9f020bd4 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800010e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010e8]:csrrs a7, fflags, zero<br> [0x800010ec]:fsd fa3, 1680(a5)<br>   |
| 107|[0x800068b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe19fa7087cb7f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x065e4faa54458 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xed9ad372bbddb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001104]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001108]:csrrs a7, fflags, zero<br> [0x8000110c]:fsd fa3, 1696(a5)<br>   |
| 108|[0x800068c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x4ad428c0181bb and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xc6e9d37ce614a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x25f1365603a33 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001124]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001128]:csrrs a7, fflags, zero<br> [0x8000112c]:fsd fa3, 1712(a5)<br>   |
| 109|[0x800068d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x042a2a8e1c3d7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x178ad4d68817b and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x1c170b68c22df and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001144]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001148]:csrrs a7, fflags, zero<br> [0x8000114c]:fsd fa3, 1728(a5)<br>   |
| 110|[0x800068e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc2bc4b9e0ee91 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x61df6a1a0dd1c and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x3787808d54013 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001164]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001168]:csrrs a7, fflags, zero<br> [0x8000116c]:fsd fa3, 1744(a5)<br>   |
| 111|[0x800068f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7fa0146f3d97f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x07885bb04ab6c and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8ae9cb6f38a79 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001184]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa3, 1760(a5)<br>   |
| 112|[0x80006900]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x3cc555a742b73 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x073aa5f7f06cd and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x45b74d1239897 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800011a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011a8]:csrrs a7, fflags, zero<br> [0x800011ac]:fsd fa3, 1776(a5)<br>   |
| 113|[0x80006910]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xdcbf4c3b1f78f and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xb6c7f284119af and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x9891d46219a57 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800011c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011c8]:csrrs a7, fflags, zero<br> [0x800011cc]:fsd fa3, 1792(a5)<br>   |
| 114|[0x80006920]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3d2a90fafd5bc and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x62487dae23696 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xb6eeac2960889 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800011e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa3, 1808(a5)<br>   |
| 115|[0x80006930]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe1789626784f5 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xe473bed6c803f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc790d5fbd094d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001204]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001208]:csrrs a7, fflags, zero<br> [0x8000120c]:fsd fa3, 1824(a5)<br>   |
| 116|[0x80006940]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x854c40164e1cb and fs2 == 1 and fe2 == 0x3f4 and fm2 == 0x2f2490b2c03e4 and fs3 == 0 and fe3 == 0x7f3 and fm3 == 0xccfcda9e20fff and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001224]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001228]:csrrs a7, fflags, zero<br> [0x8000122c]:fsd fa3, 1840(a5)<br>   |
| 117|[0x80006950]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc74cc0bbf9bc9 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x14efc54a35241 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec892f54a3c0d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001244]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001248]:csrrs a7, fflags, zero<br> [0x8000124c]:fsd fa3, 1856(a5)<br>   |
| 118|[0x80006960]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9e87d53212bbf and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x8f31cea8dbcda and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x43332df5ca32f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001264]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001268]:csrrs a7, fflags, zero<br> [0x8000126c]:fsd fa3, 1872(a5)<br>   |
| 119|[0x80006970]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x8d4e9012ff0f7 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x5e1facaee3c96 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x0fb148bed05df and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001284]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001288]:csrrs a7, fflags, zero<br> [0x8000128c]:fsd fa3, 1888(a5)<br>   |
| 120|[0x80006980]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7af6414b8de5c and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x11974707ea538 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x95008c08199b3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800012a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012a8]:csrrs a7, fflags, zero<br> [0x800012ac]:fsd fa3, 1904(a5)<br>   |
| 121|[0x80006990]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2f6cc7ff8e7a5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xef4446de4f279 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x258221cdc09b9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800012c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa3, 1920(a5)<br>   |
| 122|[0x800069a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb401c9972e963 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x3722ab15268d0 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x08f49bc253915 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800012e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012e8]:csrrs a7, fflags, zero<br> [0x800012ec]:fsd fa3, 1936(a5)<br>   |
| 123|[0x800069b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9be7d76867e32 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x13d1e497fb88a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xbbcbc47b0a26f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001304]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001308]:csrrs a7, fflags, zero<br> [0x8000130c]:fsd fa3, 1952(a5)<br>   |
| 124|[0x800069c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa98601d6ee96c and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x8f2202ff70d62 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4bb832d2f03b6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001324]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001328]:csrrs a7, fflags, zero<br> [0x8000132c]:fsd fa3, 1968(a5)<br>   |
| 125|[0x800069d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8b0182b066dad and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x6a270f2c744d0 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x176633b90457b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001344]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001348]:csrrs a7, fflags, zero<br> [0x8000134c]:fsd fa3, 1984(a5)<br>   |
| 126|[0x800069e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3a3e67ed240bf and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x22dd2fe5ccaa5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x650a3465e4aff and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001364]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001368]:csrrs a7, fflags, zero<br> [0x8000136c]:fsd fa3, 2000(a5)<br>   |
| 127|[0x800069f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe1518f4a30787 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x6b04610dc37ca and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x554370f71bef3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001384]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001388]:csrrs a7, fflags, zero<br> [0x8000138c]:fsd fa3, 2016(a5)<br>   |
| 128|[0x80006a00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3fe574580e3e3 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x2255d0d101768 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x6acd29eafc0eb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800013ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013b0]:csrrs a7, fflags, zero<br> [0x800013b4]:fsd fa3, 0(a5)<br>      |
| 129|[0x80006a10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa4252ecd893af and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x5cd18d027b375 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1e3d3ab394d1b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800013cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013d0]:csrrs a7, fflags, zero<br> [0x800013d4]:fsd fa3, 16(a5)<br>     |
| 130|[0x80006a20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf20566fa54831 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x5e11e69822d9d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x54831adf73d8a and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800013ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013f0]:csrrs a7, fflags, zero<br> [0x800013f4]:fsd fa3, 32(a5)<br>     |
| 131|[0x80006a30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc8e25fbfe6477 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x0a67be484276b and fs3 == 0 and fe3 == 0x7fb and fm3 == 0xdb745e2ae4d57 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000140c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001410]:csrrs a7, fflags, zero<br> [0x80001414]:fsd fa3, 48(a5)<br>     |
| 132|[0x80006a40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe771fa9b7a387 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6e4bf34643a40 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5cbac8f2d7906 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000142c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001430]:csrrs a7, fflags, zero<br> [0x80001434]:fsd fa3, 64(a5)<br>     |
| 133|[0x80006a50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0xb7937b6499ddf and fs2 == 1 and fe2 == 0x400 and fm2 == 0x67b984f0ba3f1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x34d72ff1d2953 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000144c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001450]:csrrs a7, fflags, zero<br> [0x80001454]:fsd fa3, 80(a5)<br>     |
| 134|[0x80006a60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xe2b04c5638f5f and fs2 == 1 and fe2 == 0x403 and fm2 == 0x89beaa54667bb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x733412989d9ad and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000146c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001470]:csrrs a7, fflags, zero<br> [0x80001474]:fsd fa3, 96(a5)<br>     |
| 135|[0x80006a70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x4b0b8c0dc4fab and fs2 == 1 and fe2 == 0x400 and fm2 == 0x3b58d3c19b43c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x97ca1321f707c and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000148c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001490]:csrrs a7, fflags, zero<br> [0x80001494]:fsd fa3, 112(a5)<br>    |
| 136|[0x80006a80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc0fc879d9bd20 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x1886525f3e59b and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xebffc8fb4d6e9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800014ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014b0]:csrrs a7, fflags, zero<br> [0x800014b4]:fsd fa3, 128(a5)<br>    |
| 137|[0x80006a90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x301d64dd062a4 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x9b50e7b846e96 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xe89f4d63cd58f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800014cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014d0]:csrrs a7, fflags, zero<br> [0x800014d4]:fsd fa3, 144(a5)<br>    |
| 138|[0x80006aa0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x757759ba0d957 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x5e60311171edb and fs3 == 0 and fe3 == 0x7fb and fm3 == 0xff2581034fa57 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800014ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014f0]:csrrs a7, fflags, zero<br> [0x800014f4]:fsd fa3, 160(a5)<br>    |
| 139|[0x80006ab0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x5d2823257dd0f and fs2 == 1 and fe2 == 0x401 and fm2 == 0xf57e62f78053d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x55fdf6c24cf14 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000150c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001510]:csrrs a7, fflags, zero<br> [0x80001514]:fsd fa3, 176(a5)<br>    |
| 140|[0x80006ac0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6d352c81323cd and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xd62a44832769d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4f5df615dcd80 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000152c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001530]:csrrs a7, fflags, zero<br> [0x80001534]:fsd fa3, 192(a5)<br>    |
| 141|[0x80006ad0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7937acd8e3cbf and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xf277f3bb58051 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x6f3f872195323 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000154c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001550]:csrrs a7, fflags, zero<br> [0x80001554]:fsd fa3, 208(a5)<br>    |
| 142|[0x80006ae0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe017c1dd0e81f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x9562eda3c52fd and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x7c1f8e3a06fc9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000156c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001570]:csrrs a7, fflags, zero<br> [0x80001574]:fsd fa3, 224(a5)<br>    |
| 143|[0x80006af0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x08b3a93e68164 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x08f9ec7d021e2 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x11fbb1cedaf9f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000158c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001590]:csrrs a7, fflags, zero<br> [0x80001594]:fsd fa3, 240(a5)<br>    |
| 144|[0x80006b00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x044a736a92e57 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x79f6133cbdfa9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x804bd71223eac and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800015ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015b0]:csrrs a7, fflags, zero<br> [0x800015b4]:fsd fa3, 256(a5)<br>    |
| 145|[0x80006b10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x0d908c88167b9 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x0c3e8bc692402 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1a752f4f14996 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800015cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015d0]:csrrs a7, fflags, zero<br> [0x800015d4]:fsd fa3, 272(a5)<br>    |
| 146|[0x80006b20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1c1aa7e3314b1 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x1e717678a9551 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x3de3b2ce1e281 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800015ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015f0]:csrrs a7, fflags, zero<br> [0x800015f4]:fsd fa3, 288(a5)<br>    |
| 147|[0x80006b30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x02fdff92933c4 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xccc040bf7de2b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd222e73c49406 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000160c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:fsd fa3, 304(a5)<br>    |
| 148|[0x80006b40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x3578be9192ed7 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x0b659dcfe6383 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x433fc62b637c6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000162c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001630]:csrrs a7, fflags, zero<br> [0x80001634]:fsd fa3, 320(a5)<br>    |
| 149|[0x80006b50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0xc8b6c88d8cc8f and fs2 == 1 and fe2 == 0x402 and fm2 == 0x903ba9163be01 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x65040492dcc30 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000164c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001650]:csrrs a7, fflags, zero<br> [0x80001654]:fsd fa3, 336(a5)<br>    |
| 150|[0x80006b60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe0880de9fe705 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x9845adb5f7a0a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x7f2dd07517ff3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000166c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001670]:csrrs a7, fflags, zero<br> [0x80001674]:fsd fa3, 352(a5)<br>    |
| 151|[0x80006b70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x334fb99f530be and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xa19f8d728d0fc and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf55465ad3c4e3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000168c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001690]:csrrs a7, fflags, zero<br> [0x80001694]:fsd fa3, 368(a5)<br>    |
| 152|[0x80006b80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xba07d50bb43b9 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x751b9ae3bf5f5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x421e89d7bdb11 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800016ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016b0]:csrrs a7, fflags, zero<br> [0x800016b4]:fsd fa3, 384(a5)<br>    |
| 153|[0x80006b90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc1c521a7eb065 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x392da6532199c and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x131d1d028d523 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800016cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016d0]:csrrs a7, fflags, zero<br> [0x800016d4]:fsd fa3, 400(a5)<br>    |
| 154|[0x80006ba0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x2687ea87931ce and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x4a5ace34f346b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x7c13ad5981860 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800016ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016f0]:csrrs a7, fflags, zero<br> [0x800016f4]:fsd fa3, 416(a5)<br>    |
| 155|[0x80006bb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x26ed9a8f4b2cf and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x994d509fd4dc7 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd78aae48cf4ef and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000170c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001710]:csrrs a7, fflags, zero<br> [0x80001714]:fsd fa3, 432(a5)<br>    |
| 156|[0x80006bc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xbb3f5b5207447 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xc087849016946 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x844cc1df6d65d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000172c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001730]:csrrs a7, fflags, zero<br> [0x80001734]:fsd fa3, 448(a5)<br>    |
| 157|[0x80006bd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3eabdfcda410e and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x1eaf1be01e8cd and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x64ddfe38d7e3f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000174c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001750]:csrrs a7, fflags, zero<br> [0x80001754]:fsd fa3, 464(a5)<br>    |
| 158|[0x80006be0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa7dee766a9c05 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x8eba83eb506d5 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x4a18af1135d97 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000176c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001770]:csrrs a7, fflags, zero<br> [0x80001774]:fsd fa3, 480(a5)<br>    |
| 159|[0x80006bf0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x32a5a52edeb6b and fs2 == 1 and fe2 == 0x401 and fm2 == 0x04ff5f3321d9e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x38a220cbdbba0 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000178c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001790]:csrrs a7, fflags, zero<br> [0x80001794]:fsd fa3, 496(a5)<br>    |
| 160|[0x80006c00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2b8342da56cc9 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x91bb5b7667690 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd603cf9c07b4f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800017ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017b0]:csrrs a7, fflags, zero<br> [0x800017b4]:fsd fa3, 512(a5)<br>    |
| 161|[0x80006c10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6cc56079452a4 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x82ff5dfc297a3 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x13b6bcfe7a433 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800017cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017d0]:csrrs a7, fflags, zero<br> [0x800017d4]:fsd fa3, 528(a5)<br>    |
| 162|[0x80006c20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a9e1874c223f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x798381c88996d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe78ca8871d2d9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800017ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017f0]:csrrs a7, fflags, zero<br> [0x800017f4]:fsd fa3, 544(a5)<br>    |
| 163|[0x80006c30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xaf22d587d4b04 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x0a9988863bc52 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xc0fcc39d53823 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000180c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001810]:csrrs a7, fflags, zero<br> [0x80001814]:fsd fa3, 560(a5)<br>    |
| 164|[0x80006c40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6709ff5f25f26 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x1d95904baffc5 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x9087e47e5604f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000182c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001830]:csrrs a7, fflags, zero<br> [0x80001834]:fsd fa3, 576(a5)<br>    |
| 165|[0x80006c50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf516548465a7f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x0523ba07c099e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xff25b259efc09 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000184c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001850]:csrrs a7, fflags, zero<br> [0x80001854]:fsd fa3, 592(a5)<br>    |
| 166|[0x80006c60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xa2aa7aaa16f3f and fs2 == 1 and fe2 == 0x403 and fm2 == 0xc472e2120c319 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x71f8711b7a3e6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000186c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001870]:csrrs a7, fflags, zero<br> [0x80001874]:fsd fa3, 608(a5)<br>    |
| 167|[0x80006c70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9560528406d76 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xad2149bedf2cb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x53c3903c4c733 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000188c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001890]:csrrs a7, fflags, zero<br> [0x80001894]:fsd fa3, 624(a5)<br>    |
| 168|[0x80006c80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xd71456446788f and fs2 == 1 and fe2 == 0x400 and fm2 == 0xc8156304f48af and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa3a1ca4573daa and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800018ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018b0]:csrrs a7, fflags, zero<br> [0x800018b4]:fsd fa3, 640(a5)<br>    |
| 169|[0x80006c90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9fa745031b828 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x5934859e5a768 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x183ed9771bd67 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800018cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018d0]:csrrs a7, fflags, zero<br> [0x800018d4]:fsd fa3, 656(a5)<br>    |
| 170|[0x80006ca0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x3a6cc16cf18c7 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xe870a12fb73fb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2bf4d322a6663 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800018ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018f0]:csrrs a7, fflags, zero<br> [0x800018f4]:fsd fa3, 672(a5)<br>    |
| 171|[0x80006cb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xfda0547c88b3d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x54408d47465ab and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x52acb8c4db5fb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001910]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001914]:csrrs a7, fflags, zero<br> [0x80001918]:fsd fa3, 688(a5)<br>    |
| 172|[0x80006cc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe9e4fed8fd631 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x25d291c01d853 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x19230638e04c1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001930]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001934]:csrrs a7, fflags, zero<br> [0x80001938]:fsd fa3, 704(a5)<br>    |
| 173|[0x80006cd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xd2441313e69d8 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x40e12b2f0404e and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x24379a2a5ae43 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001950]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001954]:csrrs a7, fflags, zero<br> [0x80001958]:fsd fa3, 720(a5)<br>    |
| 174|[0x80006ce0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x253bd6d2fe97d and fs2 == 1 and fe2 == 0x400 and fm2 == 0x5cfa06072e1a1 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8fbbbb5e3c9d7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001970]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:fsd fa3, 736(a5)<br>    |
| 175|[0x80006cf0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x63a56d71db193 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x3f073cbea8835 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xbb35314a82aa5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001990]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001994]:csrrs a7, fflags, zero<br> [0x80001998]:fsd fa3, 752(a5)<br>    |
| 176|[0x80006d00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x0e8eee9b78077 and fs2 == 1 and fe2 == 0x402 and fm2 == 0x95229efde7a10 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xac2cb68034dca and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800019b0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019b4]:csrrs a7, fflags, zero<br> [0x800019b8]:fsd fa3, 768(a5)<br>    |
| 177|[0x80006d10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2f9038bb87e4d and fs2 == 1 and fe2 == 0x400 and fm2 == 0x6662cdadc781c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa8f8d870864b8 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800019d0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019d4]:csrrs a7, fflags, zero<br> [0x800019d8]:fsd fa3, 784(a5)<br>    |
| 178|[0x80006d20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xb42c6b2e0e14b and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xd850efa48c7f0 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x925de5e61e1ff and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800019f0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019f4]:csrrs a7, fflags, zero<br> [0x800019f8]:fsd fa3, 800(a5)<br>    |
| 179|[0x80006d30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8ab9793ce4623 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x043ed2f7bd013 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x91453d575687b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001a10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a14]:csrrs a7, fflags, zero<br> [0x80001a18]:fsd fa3, 816(a5)<br>    |
| 180|[0x80006d40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xed71b46de9a5d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xe45a211c6b969 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd2cc5975d63a2 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001a30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a34]:csrrs a7, fflags, zero<br> [0x80001a38]:fsd fa3, 832(a5)<br>    |
| 181|[0x80006d50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x6a96ba7d02570 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xc917be2f7ebb8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x43b459e986fea and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001a50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a54]:csrrs a7, fflags, zero<br> [0x80001a58]:fsd fa3, 848(a5)<br>    |
| 182|[0x80006d60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xb5ff414c256c5 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x5886744e56a0a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x26ba852c18dc1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001a70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a74]:csrrs a7, fflags, zero<br> [0x80001a78]:fsd fa3, 864(a5)<br>    |
| 183|[0x80006d70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xdd1e76dfee33f and fs2 == 1 and fe2 == 0x404 and fm2 == 0xabaae8cebcd22 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8e882c33ae96b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001a90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a94]:csrrs a7, fflags, zero<br> [0x80001a98]:fsd fa3, 880(a5)<br>    |
| 184|[0x80006d80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc6a025abfeb31 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x3a98c6f1b9e65 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x1757df4c3c481 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001ab0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ab4]:csrrs a7, fflags, zero<br> [0x80001ab8]:fsd fa3, 896(a5)<br>    |
| 185|[0x80006d90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xd28c6757c6183 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x0180789f482ba and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd54915c6e2edb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001ad0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ad4]:csrrs a7, fflags, zero<br> [0x80001ad8]:fsd fa3, 912(a5)<br>    |
| 186|[0x80006da0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x2a6cf802e779f and fs2 == 1 and fe2 == 0x401 and fm2 == 0xbb77e316e5303 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x027b2946d02e9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001af0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001af4]:csrrs a7, fflags, zero<br> [0x80001af8]:fsd fa3, 928(a5)<br>    |
| 187|[0x80006db0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7d72e47402429 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x960529f3b1939 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2e7df4087a8bb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001b10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b14]:csrrs a7, fflags, zero<br> [0x80001b18]:fsd fa3, 944(a5)<br>    |
| 188|[0x80006dc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xdb7b172cc5173 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x8e197053e3ca3 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x71b44ed743f59 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001b30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b34]:csrrs a7, fflags, zero<br> [0x80001b38]:fsd fa3, 960(a5)<br>    |
| 189|[0x80006dd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2ff2265d9a737 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xc8fe942aa1ecc and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0f4acb41b412d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001b50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b54]:csrrs a7, fflags, zero<br> [0x80001b58]:fsd fa3, 976(a5)<br>    |
| 190|[0x80006de0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1126a3ad5051a and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x4293c5830a884 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x583045ce8982d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001b70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b74]:csrrs a7, fflags, zero<br> [0x80001b78]:fsd fa3, 992(a5)<br>    |
| 191|[0x80006df0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8552f9c810e9e and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x94ed6ea6ca724 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x33e8042423f5f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001b90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b94]:csrrs a7, fflags, zero<br> [0x80001b98]:fsd fa3, 1008(a5)<br>   |
| 192|[0x80006e00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7ca8863947b9a and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x458a57f4c0c1e and fs3 == 0 and fe3 == 0x7fb and fm3 == 0xe40fa80847cb7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001bb0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bb4]:csrrs a7, fflags, zero<br> [0x80001bb8]:fsd fa3, 1024(a5)<br>   |
| 193|[0x80006e10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4a2d44f743484 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xdf6e0ad04fbde and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x352c50b85cbad and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001bd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bd4]:csrrs a7, fflags, zero<br> [0x80001bd8]:fsd fa3, 1040(a5)<br>   |
| 194|[0x80006e20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3750b3ff84d89 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x8faa379b97e8e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xe605c7c255007 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001bf0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bf4]:csrrs a7, fflags, zero<br> [0x80001bf8]:fsd fa3, 1056(a5)<br>   |
| 195|[0x80006e30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xfa474c124960a and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x2f9e1d8e439c4 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2c398abf02815 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001c10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c14]:csrrs a7, fflags, zero<br> [0x80001c18]:fsd fa3, 1072(a5)<br>   |
| 196|[0x80006e40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x121cefec055f7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x280408462cdf8 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x3cf5c6b8b15bb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001c30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c34]:csrrs a7, fflags, zero<br> [0x80001c38]:fsd fa3, 1088(a5)<br>   |
| 197|[0x80006e50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x905625425a52e and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x41b897757476e and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf71caf7d786cf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001c50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c54]:csrrs a7, fflags, zero<br> [0x80001c58]:fsd fa3, 1104(a5)<br>   |
| 198|[0x80006e60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x185bc81f2a14d and fs2 == 1 and fe2 == 0x400 and fm2 == 0xb53ed83446079 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xded97f9e5a921 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001c70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c74]:csrrs a7, fflags, zero<br> [0x80001c78]:fsd fa3, 1120(a5)<br>   |
| 199|[0x80006e70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xb0a547af4b77f and fs2 == 1 and fe2 == 0x404 and fm2 == 0x42af94e43542f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x10ac5063dc350 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001c90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c94]:csrrs a7, fflags, zero<br> [0x80001c98]:fsd fa3, 1136(a5)<br>   |
| 200|[0x80006e80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x903bcec8bb6fb and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x0ec4f878fb7b4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa75306591ce61 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001cb0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cb4]:csrrs a7, fflags, zero<br> [0x80001cb8]:fsd fa3, 1152(a5)<br>   |
| 201|[0x80006e90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc61c611f6c8db and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x526604cab8fcb and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2c2338051df31 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001cd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cd4]:csrrs a7, fflags, zero<br> [0x80001cd8]:fsd fa3, 1168(a5)<br>   |
| 202|[0x80006ea0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xf33ebf51f33b7 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x466f88fb6ecbe and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x3e4db57d7e40f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001cf0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cf4]:csrrs a7, fflags, zero<br> [0x80001cf8]:fsd fa3, 1184(a5)<br>   |
| 203|[0x80006eb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x25459c12575f7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xaa504e2a5f1c3 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xe861d5030b0e7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001d10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d14]:csrrs a7, fflags, zero<br> [0x80001d18]:fsd fa3, 1200(a5)<br>   |
| 204|[0x80006ec0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf7f31753ade3e and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xff99d9f7dd137 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf78e8c76fb50b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001d30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d34]:csrrs a7, fflags, zero<br> [0x80001d38]:fsd fa3, 1216(a5)<br>   |
| 205|[0x80006ed0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xa976a9028496d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x89489e50d3718 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x46cfecf8fb875 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001d50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d54]:csrrs a7, fflags, zero<br> [0x80001d58]:fsd fa3, 1232(a5)<br>   |
| 206|[0x80006ee0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf64315934059e and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x0308fdace1bed and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xfc3782a023015 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001d70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d74]:csrrs a7, fflags, zero<br> [0x80001d78]:fsd fa3, 1248(a5)<br>   |
| 207|[0x80006ef0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x310e01660348e and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xbe8d71c96d67e and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x0a0f795ed9f25 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001d90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d94]:csrrs a7, fflags, zero<br> [0x80001d98]:fsd fa3, 1264(a5)<br>   |
| 208|[0x80006f00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xec1a6c76b7bd2 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe6c11aa8d2573 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd3d6ae8a2d811 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001db0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001db4]:csrrs a7, fflags, zero<br> [0x80001db8]:fsd fa3, 1280(a5)<br>   |
| 209|[0x80006f10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf1e592ad54c35 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x8fe934dea0ead and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x84e53031235b9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001dd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001dd4]:csrrs a7, fflags, zero<br> [0x80001dd8]:fsd fa3, 1296(a5)<br>   |
| 210|[0x80006f20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xcf892d7e50217 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x49b2d61482423 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a7d8e3d62b4b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001df0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001df4]:csrrs a7, fflags, zero<br> [0x80001df8]:fsd fa3, 1312(a5)<br>   |
| 211|[0x80006f30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x80de60b6f00df and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x2607ef5993617 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xba0b50fd03dd3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001e10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e14]:csrrs a7, fflags, zero<br> [0x80001e18]:fsd fa3, 1328(a5)<br>   |
| 212|[0x80006f40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4248187818921 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x6a7c06a5d1432 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xc85615e41d666 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001e30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e34]:csrrs a7, fflags, zero<br> [0x80001e38]:fsd fa3, 1344(a5)<br>   |
| 213|[0x80006f50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3af74e2285ea8 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xd46a833143262 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x202793535005b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001e50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e54]:csrrs a7, fflags, zero<br> [0x80001e58]:fsd fa3, 1360(a5)<br>   |
| 214|[0x80006f60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xba0894a6eeff7 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x4f8cba9f74d1d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x21b21cbaa78b6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001e70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e74]:csrrs a7, fflags, zero<br> [0x80001e78]:fsd fa3, 1376(a5)<br>   |
| 215|[0x80006f70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc97481aa589cf and fs2 == 1 and fe2 == 0x3f5 and fm2 == 0x15fdaf55a8228 and fs3 == 0 and fe3 == 0x7f4 and fm3 == 0xf0c061c12bfff and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001e90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001e94]:csrrs a7, fflags, zero<br> [0x80001e98]:fsd fa3, 1392(a5)<br>   |
| 216|[0x80006f80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x379bb745d02d9 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x276161f0e5912 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x678af9691e349 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001eb0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001eb4]:csrrs a7, fflags, zero<br> [0x80001eb8]:fsd fa3, 1408(a5)<br>   |
| 217|[0x80006f90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xea17c4ccbefe8 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x02e25a9bb2a1a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xef9d4ac882cb3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001ed0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ed4]:csrrs a7, fflags, zero<br> [0x80001ed8]:fsd fa3, 1424(a5)<br>   |
| 218|[0x80006fa0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x311ebd187eea8 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xe47093103feca and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x20b2251e87ae3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001ef0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ef4]:csrrs a7, fflags, zero<br> [0x80001ef8]:fsd fa3, 1440(a5)<br>   |
| 219|[0x80006fb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7a4f313bd6219 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x89e6311dc9a65 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x230bdf28226f7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001f10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001f14]:csrrs a7, fflags, zero<br> [0x80001f18]:fsd fa3, 1456(a5)<br>   |
| 220|[0x80006fc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa04034a417446 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x948073adec2d9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x48db17a274e91 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001f30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001f34]:csrrs a7, fflags, zero<br> [0x80001f38]:fsd fa3, 1472(a5)<br>   |
| 221|[0x80006fd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa31550c844273 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x0627da3f81f8f and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xad290e3462113 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001f50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001f54]:csrrs a7, fflags, zero<br> [0x80001f58]:fsd fa3, 1488(a5)<br>   |
| 222|[0x80006fe0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x296b3b52c3a78 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xa652491e8ca3f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeaa65d1680e97 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001f70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001f74]:csrrs a7, fflags, zero<br> [0x80001f78]:fsd fa3, 1504(a5)<br>   |
| 223|[0x80006ff0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x17273060cf383 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x3eb1e847178eb and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x5b84ad79bdbd5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001f90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001f94]:csrrs a7, fflags, zero<br> [0x80001f98]:fsd fa3, 1520(a5)<br>   |
| 224|[0x80007000]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3a25129349d98 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x3c80b9163e813 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x8463b8972f1cf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001fb0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001fb4]:csrrs a7, fflags, zero<br> [0x80001fb8]:fsd fa3, 1536(a5)<br>   |
| 225|[0x80007010]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x7eda4efb707f7 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x8b1321a75d35f and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x276bba33219df and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001fd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001fd4]:csrrs a7, fflags, zero<br> [0x80001fd8]:fsd fa3, 1552(a5)<br>   |
| 226|[0x80007020]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xd7584b60b1a57 and fs2 == 1 and fe2 == 0x401 and fm2 == 0xce604fe904a90 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa9a9562306079 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80001ff0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ff4]:csrrs a7, fflags, zero<br> [0x80001ff8]:fsd fa3, 1568(a5)<br>   |
| 227|[0x80007030]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1d36766d8ca5b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x78e08524df276 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xa3e221eee63c5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002010]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002014]:csrrs a7, fflags, zero<br> [0x80002018]:fsd fa3, 1584(a5)<br>   |
| 228|[0x80007040]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f4 and fm1 == 0x5a5a59bbb3fff and fs2 == 1 and fe2 == 0x408 and fm2 == 0x32d10b0d92edf and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x9f1ad1f9dea0f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002030]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002034]:csrrs a7, fflags, zero<br> [0x80002038]:fsd fa3, 1600(a5)<br>   |
| 229|[0x80007050]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xe71c04b7cfd87 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xe60f0ca8dfb07 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xce6de9d7efcb7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002050]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002054]:csrrs a7, fflags, zero<br> [0x80002058]:fsd fa3, 1616(a5)<br>   |
| 230|[0x80007060]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x393d0e849b454 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xede60a738746b and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2e2a074d14562 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002070]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002074]:csrrs a7, fflags, zero<br> [0x80002078]:fsd fa3, 1632(a5)<br>   |
| 231|[0x80007070]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xdc7f82acf0d6d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xa270c8218b8b7 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x856d0fd4cd95f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002090]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002094]:csrrs a7, fflags, zero<br> [0x80002098]:fsd fa3, 1648(a5)<br>   |
| 232|[0x80007080]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x8c00618c5ebf7 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x79abfd08d65b8 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x241b4da97625f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800020b0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800020b4]:csrrs a7, fflags, zero<br> [0x800020b8]:fsd fa3, 1664(a5)<br>   |
| 233|[0x80007090]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x44f79e7be6c8f and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x24e67d722e194 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x73cf067b8fba3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800020d0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800020d4]:csrrs a7, fflags, zero<br> [0x800020d8]:fsd fa3, 1680(a5)<br>   |
| 234|[0x800070a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0xbb8a1f913699f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x3bac12cd8e8cf and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x11768b1c5f473 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800020f0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800020f4]:csrrs a7, fflags, zero<br> [0x800020f8]:fsd fa3, 1696(a5)<br>   |
| 235|[0x800070b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe2e74f7d68c61 and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xeb434736cd25d and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xcf58472a6e4bb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002110]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002114]:csrrs a7, fflags, zero<br> [0x80002118]:fsd fa3, 1712(a5)<br>   |
| 236|[0x800070c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4300c22dfb496 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x0fcb563875381 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x56ee5bf224c4f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002130]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002134]:csrrs a7, fflags, zero<br> [0x80002138]:fsd fa3, 1728(a5)<br>   |
| 237|[0x800070d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xc09714c24da2f and fs2 == 1 and fe2 == 0x400 and fm2 == 0x90dadbfedb4cf and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5f35c94b8ddad and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002150]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002154]:csrrs a7, fflags, zero<br> [0x80002158]:fsd fa3, 1744(a5)<br>   |
| 238|[0x800070e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xc3a7704fe195b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x79556c0841e18 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4cdc24cb9149f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002170]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002174]:csrrs a7, fflags, zero<br> [0x80002178]:fsd fa3, 1760(a5)<br>   |
| 239|[0x800070f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xc48f21909621f and fs2 == 1 and fe2 == 0x401 and fm2 == 0x72c5b0c847b8b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x47ba2c9621783 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002190]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002194]:csrrs a7, fflags, zero<br> [0x80002198]:fsd fa3, 1776(a5)<br>   |
| 240|[0x80007100]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x46136351533f7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x219562feed3b5 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x70da2a7fbebd4 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800021b0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800021b4]:csrrs a7, fflags, zero<br> [0x800021b8]:fsd fa3, 1792(a5)<br>   |
| 241|[0x80007110]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3f5a77e367c1b and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x3df62857d4110 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8ca619b77f06f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800021d0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800021d4]:csrrs a7, fflags, zero<br> [0x800021d8]:fsd fa3, 1808(a5)<br>   |
| 242|[0x80007120]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x54c3c93bee7ca and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x43b51c6a4029a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xaee41b26bdc31 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800021f0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800021f4]:csrrs a7, fflags, zero<br> [0x800021f8]:fsd fa3, 1824(a5)<br>   |
| 243|[0x80007130]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8f8cdebbeb1b6 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x7d175bb1b34cb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x29648e210d99f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002210]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002214]:csrrs a7, fflags, zero<br> [0x80002218]:fsd fa3, 1840(a5)<br>   |
| 244|[0x80007140]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x75f0e25aaa1ef and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xe1d2ba70c870b and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x5fe6b49de552b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002230]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002234]:csrrs a7, fflags, zero<br> [0x80002238]:fsd fa3, 1856(a5)<br>   |
| 245|[0x80007150]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x620288c50ba92 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x0a76ad4accd30 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x707abeeaef579 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002250]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002254]:csrrs a7, fflags, zero<br> [0x80002258]:fsd fa3, 1872(a5)<br>   |
| 246|[0x80007160]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdff07e36a58e8 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x04ab42936e1a4 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xe8b152a434b27 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002270]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002274]:csrrs a7, fflags, zero<br> [0x80002278]:fsd fa3, 1888(a5)<br>   |
| 247|[0x80007170]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x54524f32daef7 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x4237a343890fb and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xac597e572b7b4 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002290]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002294]:csrrs a7, fflags, zero<br> [0x80002298]:fsd fa3, 1904(a5)<br>   |
| 248|[0x80007180]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0949924914346 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x0588b20ed1e69 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x0f05a9bebbacf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800022b0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800022b4]:csrrs a7, fflags, zero<br> [0x800022b8]:fsd fa3, 1920(a5)<br>   |
| 249|[0x80007190]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3c649975046b and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xf5b7610493341 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe9bc871565d06 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800022d0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800022d4]:csrrs a7, fflags, zero<br> [0x800022d8]:fsd fa3, 1936(a5)<br>   |
| 250|[0x800071a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xbd6501f77c75d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x9521af5bd0569 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x606db39cc9430 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800022f0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800022f4]:csrrs a7, fflags, zero<br> [0x800022f8]:fsd fa3, 1952(a5)<br>   |
| 251|[0x800071b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x66723c760f03d and fs2 == 1 and fe2 == 0x400 and fm2 == 0x34369dcdd22ad and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xaf8de9cb09cc3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002310]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002314]:csrrs a7, fflags, zero<br> [0x80002318]:fsd fa3, 1968(a5)<br>   |
| 252|[0x800071c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x79c481bc003f9 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x1f5a288a490a8 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa808585a245b3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002330]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002334]:csrrs a7, fflags, zero<br> [0x80002338]:fsd fa3, 1984(a5)<br>   |
| 253|[0x800071d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x643bd6230e5b5 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xd9f368b89c1a3 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x49c2a2961e033 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002350]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002354]:csrrs a7, fflags, zero<br> [0x80002358]:fsd fa3, 2000(a5)<br>   |
| 254|[0x800071e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4b7cdaeb1ce31 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x3b62b1f2cbf86 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x98626d96d20d9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002370]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002374]:csrrs a7, fflags, zero<br> [0x80002378]:fsd fa3, 2016(a5)<br>   |
| 255|[0x800071f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xda0cada4f8445 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xc39d54d166e8c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa223d66005b84 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002398]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x8000239c]:csrrs a7, fflags, zero<br> [0x800023a0]:fsd fa3, 0(a5)<br>      |
| 256|[0x80007200]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x00b57aa9b7409 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x56ee79e4569cf and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x57e194d1840e7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800023bc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800023c0]:csrrs a7, fflags, zero<br> [0x800023c4]:fsd fa3, 16(a5)<br>     |
| 257|[0x80007210]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x7b799796bf9ff and fs2 == 1 and fe2 == 0x404 and fm2 == 0x79dd7cecf9d03 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x180f30b184945 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800023dc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800023e0]:csrrs a7, fflags, zero<br> [0x800023e4]:fsd fa3, 32(a5)<br>     |
| 258|[0x80007220]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x4ca4730b6efdc and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xc9994a79146ea and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x294c603684405 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800023fc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002400]:csrrs a7, fflags, zero<br> [0x80002404]:fsd fa3, 48(a5)<br>     |
| 259|[0x80007230]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2ce78cfa7b389 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x9bdfcdecda208 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe41ecf15c3c31 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000241c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002420]:csrrs a7, fflags, zero<br> [0x80002424]:fsd fa3, 64(a5)<br>     |
| 260|[0x80007240]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8a1c573ec7fe3 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xcb8b02f3410e4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x61bb692dd2b3e and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000243c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002440]:csrrs a7, fflags, zero<br> [0x80002444]:fsd fa3, 80(a5)<br>     |
| 261|[0x80007250]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1f97ae6ae8e5d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xbab5376882ede and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf15777a1e6e19 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000245c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002460]:csrrs a7, fflags, zero<br> [0x80002464]:fsd fa3, 96(a5)<br>     |
| 262|[0x80007260]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x742774c7979c9 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xf039ccd843cce and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x68b03c6ac58cf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000247c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002480]:csrrs a7, fflags, zero<br> [0x80002484]:fsd fa3, 112(a5)<br>    |
| 263|[0x80007270]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x53fa39c232464 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x24dd586c91739 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x84ef5e539092d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000249c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800024a0]:csrrs a7, fflags, zero<br> [0x800024a4]:fsd fa3, 128(a5)<br>    |
| 264|[0x80007280]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x8cbf7156c3c4d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xcaf13c85d378a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x63a22f659957b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800024bc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800024c0]:csrrs a7, fflags, zero<br> [0x800024c4]:fsd fa3, 144(a5)<br>    |
| 265|[0x80007290]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71ff810813f2d and fs2 == 1 and fe2 == 0x400 and fm2 == 0x1672eac27ff57 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x92718d32e3c43 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800024dc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800024e0]:csrrs a7, fflags, zero<br> [0x800024e4]:fsd fa3, 160(a5)<br>    |
| 266|[0x800072a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9064ca6314142 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x1bf221a3e5a23 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbc1a1fa02e46b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800024fc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002500]:csrrs a7, fflags, zero<br> [0x80002504]:fsd fa3, 176(a5)<br>    |
| 267|[0x800072b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x6d1b5afbd5567 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x870885b5bcec4 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x16d877c1f1617 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000251c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002520]:csrrs a7, fflags, zero<br> [0x80002524]:fsd fa3, 192(a5)<br>    |
| 268|[0x800072c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xff4e626f1408f and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x5b1293d297fe2 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x5a9a2d170e2e7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000253c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002540]:csrrs a7, fflags, zero<br> [0x80002544]:fsd fa3, 208(a5)<br>    |
| 269|[0x800072d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xeb6cfccb7b3a4 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x4e7209b2b785d and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x41018d7bfa2cd and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000255c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002560]:csrrs a7, fflags, zero<br> [0x80002564]:fsd fa3, 224(a5)<br>    |
| 270|[0x800072e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x820c7be939191 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x4f9449495eae2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfa0df3e20838d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000257c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002580]:csrrs a7, fflags, zero<br> [0x80002584]:fsd fa3, 240(a5)<br>    |
| 271|[0x800072f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9d7af8f37029d and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x7389598bd5d38 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x2c0b871cd0c13 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000259c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800025a0]:csrrs a7, fflags, zero<br> [0x800025a4]:fsd fa3, 256(a5)<br>    |
| 272|[0x80007300]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xea8a1aa313989 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x370b6ca44c088 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x2a01d53c2b9bb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800025bc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800025c0]:csrrs a7, fflags, zero<br> [0x800025c4]:fsd fa3, 272(a5)<br>    |
| 273|[0x80007310]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xf3dff3d82be09 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x7e9106e33fa27 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x7581ae94553bc and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800025dc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800025e0]:csrrs a7, fflags, zero<br> [0x800025e4]:fsd fa3, 288(a5)<br>    |
| 274|[0x80007320]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3b743a16ba1c and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xdbd76f744d1ce and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xd06cc97ae5955 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800025fc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002600]:csrrs a7, fflags, zero<br> [0x80002604]:fsd fa3, 304(a5)<br>    |
| 275|[0x80007330]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xffa43e27b4aa7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xb4a8b79988117 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb45a764ad5a54 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000261c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002620]:csrrs a7, fflags, zero<br> [0x80002624]:fsd fa3, 320(a5)<br>    |
| 276|[0x80007340]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x2de3709212eb9 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x897eeee2580a5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xd007d77604347 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000263c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002640]:csrrs a7, fflags, zero<br> [0x80002644]:fsd fa3, 336(a5)<br>    |
| 277|[0x80007350]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x31a78b0f0b973 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x6a3e0418950a1 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb080f61aebdc6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000265c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002660]:csrrs a7, fflags, zero<br> [0x80002664]:fsd fa3, 352(a5)<br>    |
| 278|[0x80007360]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xb4c24c566faff and fs2 == 1 and fe2 == 0x401 and fm2 == 0x04d23f761e4e2 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xbcfc092fbe62d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000267c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002680]:csrrs a7, fflags, zero<br> [0x80002684]:fsd fa3, 368(a5)<br>    |
| 279|[0x80007370]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x42c3b2396030c and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x400115a8f3f08 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x9375fcda7c10f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000269c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800026a0]:csrrs a7, fflags, zero<br> [0x800026a4]:fsd fa3, 384(a5)<br>    |
| 280|[0x80007380]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x769cb824195b1 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x4c5284c35ebf9 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe64bff487f6af and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800026bc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800026c0]:csrrs a7, fflags, zero<br> [0x800026c4]:fsd fa3, 400(a5)<br>    |
| 281|[0x80007390]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xad469a4d40781 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x3ef164ade94e5 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x0b693dfb3681f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800026dc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800026e0]:csrrs a7, fflags, zero<br> [0x800026e4]:fsd fa3, 416(a5)<br>    |
| 282|[0x800073a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x0c0d5f34e784f and fs2 == 1 and fe2 == 0x402 and fm2 == 0xe2af74c5b771a and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xf968e4aac6955 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800026fc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002700]:csrrs a7, fflags, zero<br> [0x80002704]:fsd fa3, 432(a5)<br>    |
| 283|[0x800073b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0xc85a87ea8c3df and fs2 == 1 and fe2 == 0x403 and fm2 == 0x071c1175cfa80 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd5070aa8da4e6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000271c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002720]:csrrs a7, fflags, zero<br> [0x80002724]:fsd fa3, 448(a5)<br>    |
| 284|[0x800073c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xd299df5352de3 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xd9e66baf38c0b and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xafe12412a3f8b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000273c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002740]:csrrs a7, fflags, zero<br> [0x80002744]:fsd fa3, 464(a5)<br>    |
| 285|[0x800073d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x301b8dd6015ba and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x642342f8435b6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xa7103490036bf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000275c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002760]:csrrs a7, fflags, zero<br> [0x80002764]:fsd fa3, 480(a5)<br>    |
| 286|[0x800073e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x9fa11c0412e3d and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x2b6247a905d89 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xe610bbbd953db and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000277c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002780]:csrrs a7, fflags, zero<br> [0x80002784]:fsd fa3, 496(a5)<br>    |
| 287|[0x800073f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf930a02671095 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x14d99faa2cdd7 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x112af0fb1c5fb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000279c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800027a0]:csrrs a7, fflags, zero<br> [0x800027a4]:fsd fa3, 512(a5)<br>    |
| 288|[0x80007400]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x4acff5b85a5cb and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x33caa795905c4 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x8dbd4452e6b5f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800027bc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800027c0]:csrrs a7, fflags, zero<br> [0x800027c4]:fsd fa3, 528(a5)<br>    |
| 289|[0x80007410]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x60db7dd3cba12 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x723e350962bf4 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xfe52fa1ef67a1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800027dc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800027e0]:csrrs a7, fflags, zero<br> [0x800027e4]:fsd fa3, 544(a5)<br>    |
| 290|[0x80007420]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x404ab140ecaf7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0xe75dcf1983ff7 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x30e1bab89c4e3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800027fc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002800]:csrrs a7, fflags, zero<br> [0x80002804]:fsd fa3, 560(a5)<br>    |
| 291|[0x80007430]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x44673727309cf and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x1ed5312aa8e46 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x6b7977cc7c6d7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000281c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002820]:csrrs a7, fflags, zero<br> [0x80002824]:fsd fa3, 576(a5)<br>    |
| 292|[0x80007440]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x171d1e85e4878 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x25742c389cbb5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3ff2fd57cdba5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000283c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002840]:csrrs a7, fflags, zero<br> [0x80002844]:fsd fa3, 592(a5)<br>    |
| 293|[0x80007450]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5c1e59a3495cf and fs2 == 1 and fe2 == 0x400 and fm2 == 0x5bf982469fe46 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd9306e2cf7822 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000285c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002860]:csrrs a7, fflags, zero<br> [0x80002864]:fsd fa3, 608(a5)<br>    |
| 294|[0x80007460]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x38be631735417 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x80c60b94db466 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd60f86097c097 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000287c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002880]:csrrs a7, fflags, zero<br> [0x80002884]:fsd fa3, 624(a5)<br>    |
| 295|[0x80007470]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0x7579046abe557 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xde56835772cb5 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x5ceb1641a60d9 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000289c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800028a0]:csrrs a7, fflags, zero<br> [0x800028a4]:fsd fa3, 640(a5)<br>    |
| 296|[0x80007480]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x2c15fdbb5e3cf and fs2 == 1 and fe2 == 0x403 and fm2 == 0x9d1bad7655f2a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe43febfe9d259 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800028bc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800028c0]:csrrs a7, fflags, zero<br> [0x800028c4]:fsd fa3, 656(a5)<br>    |
| 297|[0x80007490]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x982e185781cc1 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x140f26a707f49 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb829da92ef6eb and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800028dc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800028e0]:csrrs a7, fflags, zero<br> [0x800028e4]:fsd fa3, 672(a5)<br>    |
| 298|[0x800074a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fb and fm1 == 0xba95a52df5767 and fs2 == 1 and fe2 == 0x401 and fm2 == 0xbb4734aa2ffab and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x7f2e07b1fbb17 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800028fc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002900]:csrrs a7, fflags, zero<br> [0x80002904]:fsd fa3, 688(a5)<br>    |
| 299|[0x800074b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x0ca5b7900ea57 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x7a69ea0a9f7a6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x8d1bd69d9f548 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000291c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002920]:csrrs a7, fflags, zero<br> [0x80002924]:fsd fa3, 704(a5)<br>    |
| 300|[0x800074c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x60a5a04199781 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x07bd4acb086bc and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x6b4ee8f2445b5 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000293c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002940]:csrrs a7, fflags, zero<br> [0x80002944]:fsd fa3, 720(a5)<br>    |
| 301|[0x800074d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xdbfbc83472936 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x036953caa3e91 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe253919d94c5b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000295c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002960]:csrrs a7, fflags, zero<br> [0x80002964]:fsd fa3, 736(a5)<br>    |
| 302|[0x800074e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x9279f41e78217 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xec3b664f905e6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x82efe20fbfe2b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000297c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002980]:csrrs a7, fflags, zero<br> [0x80002984]:fsd fa3, 752(a5)<br>    |
| 303|[0x800074f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7285ea9faba7f and fs2 == 1 and fe2 == 0x401 and fm2 == 0x51e4ba7320788 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe90d56fd14cc8 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x8000299c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800029a0]:csrrs a7, fflags, zero<br> [0x800029a4]:fsd fa3, 768(a5)<br>    |
| 304|[0x80007500]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0x297b073ec28bf and fs2 == 1 and fe2 == 0x401 and fm2 == 0x4969a46af80a4 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0x7ec9ded4be93f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800029bc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800029c0]:csrrs a7, fflags, zero<br> [0x800029c4]:fsd fa3, 784(a5)<br>    |
| 305|[0x80007510]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x76f910302cbdd and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x94717562172c6 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x28339eb5d6c77 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800029dc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800029e0]:csrrs a7, fflags, zero<br> [0x800029e4]:fsd fa3, 800(a5)<br>    |
| 306|[0x80007520]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0x2804bc647cadf and fs2 == 1 and fe2 == 0x404 and fm2 == 0x5ccc17c4e0cf2 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x93526f5ace10b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x800029fc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002a00]:csrrs a7, fflags, zero<br> [0x80002a04]:fsd fa3, 816(a5)<br>    |
| 307|[0x80007530]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7fe52216e3a3d and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x207700538aa86 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xb0943a59dff43 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002a1c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002a20]:csrrs a7, fflags, zero<br> [0x80002a24]:fsd fa3, 832(a5)<br>    |
| 308|[0x80007540]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf3403ffc18c4e and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0x80322f838f766 and fs3 == 0 and fe3 == 0x7f9 and fm3 == 0x76a11f9800e5f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002a3c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002a40]:csrrs a7, fflags, zero<br> [0x80002a44]:fsd fa3, 848(a5)<br>    |
| 309|[0x80007550]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x68ca648b458d1 and fs2 == 1 and fe2 == 0x3fb and fm2 == 0x4b53acb56a497 and fs3 == 0 and fe3 == 0x7fa and fm3 == 0xd2f39d065486f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002a5c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002a60]:csrrs a7, fflags, zero<br> [0x80002a64]:fsd fa3, 864(a5)<br>    |
| 310|[0x80007560]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x435f4497a6a63 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x861a6c82110d2 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xecc4833c7c22d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002a7c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002a80]:csrrs a7, fflags, zero<br> [0x80002a84]:fsd fa3, 880(a5)<br>    |
| 311|[0x80007570]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xa314cd13968e7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x2cb7501dfc887 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xec4877592448b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002a9c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002aa0]:csrrs a7, fflags, zero<br> [0x80002aa4]:fsd fa3, 896(a5)<br>    |
| 312|[0x80007580]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x5a01a288736c5 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xd5aa56f017c02 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x3d659cad7c271 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002abc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002ac0]:csrrs a7, fflags, zero<br> [0x80002ac4]:fsd fa3, 912(a5)<br>    |
| 313|[0x80007590]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f6 and fm1 == 0xbb6ea62484dff and fs2 == 1 and fe2 == 0x406 and fm2 == 0x90c64fc55e97f and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b1a32ad4a90d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002adc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002ae0]:csrrs a7, fflags, zero<br> [0x80002ae4]:fsd fa3, 928(a5)<br>    |
| 314|[0x800075a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x34977ae8a092b and fs2 == 1 and fe2 == 0x400 and fm2 == 0x002a99ffaa461 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x34cad56583569 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002afc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002b00]:csrrs a7, fflags, zero<br> [0x80002b04]:fsd fa3, 944(a5)<br>    |
| 315|[0x800075b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x2a65c343892db and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xc9ce16305fb76 and fs3 == 0 and fe3 == 0x7fb and fm3 == 0x0acff0a9e8d47 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002b1c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002b20]:csrrs a7, fflags, zero<br> [0x80002b24]:fsd fa3, 960(a5)<br>    |
| 316|[0x800075c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x71dbc6351ba9b and fs2 == 1 and fe2 == 0x3fd and fm2 == 0xd67f63a22c8b1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x53e0c4ef901b7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002b3c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002b40]:csrrs a7, fflags, zero<br> [0x80002b44]:fsd fa3, 976(a5)<br>    |
| 317|[0x800075d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xc998825886bbc and fs2 == 1 and fe2 == 0x3fd and fm2 == 0x5655fb54b9f4c and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x31f5b782c2cff and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002b5c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002b60]:csrrs a7, fflags, zero<br> [0x80002b64]:fsd fa3, 992(a5)<br>    |
| 318|[0x800075e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x619bd20c99aa7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x6646aaf5982ba and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xeee1847dc4239 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002b7c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002b80]:csrrs a7, fflags, zero<br> [0x80002b84]:fsd fa3, 1008(a5)<br>   |
| 319|[0x800075f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xa363712e81d63 and fs2 == 1 and fe2 == 0x401 and fm2 == 0x26159c540d020 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe1c79b3dfcd57 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002b9c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002ba0]:csrrs a7, fflags, zero<br> [0x80002ba4]:fsd fa3, 1024(a5)<br>   |
| 320|[0x80007600]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1415193812551 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x41cdfb6a8087a and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x5b0c98a80bf69 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002bbc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002bc0]:csrrs a7, fflags, zero<br> [0x80002bc4]:fsd fa3, 1040(a5)<br>   |
| 321|[0x80007610]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x283f9d2825ba3 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xa9654e761f0b1 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xec46d7ccba9a3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002bdc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002be0]:csrrs a7, fflags, zero<br> [0x80002be4]:fsd fa3, 1056(a5)<br>   |
| 322|[0x80007620]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xf6ffe64a9d644 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0xc6aa504850cbd and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbeac3b0aa7ae7 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002bfc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002c00]:csrrs a7, fflags, zero<br> [0x80002c04]:fsd fa3, 1072(a5)<br>   |
| 323|[0x80007630]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0xacf777c60a3c7 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x075d1281c18a5 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xb94e30f5cae37 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002c1c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002c20]:csrrs a7, fflags, zero<br> [0x80002c24]:fsd fa3, 1088(a5)<br>   |
| 324|[0x80007640]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f5 and fm1 == 0xd144fc758c3ff and fs2 == 1 and fe2 == 0x407 and fm2 == 0xeaf869e3b1341 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xbe28c340570cd and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002c3c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002c40]:csrrs a7, fflags, zero<br> [0x80002c44]:fsd fa3, 1104(a5)<br>   |
| 325|[0x80007650]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3c22bc9c78300 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xa43e2dae46a30 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x037ae321da893 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002c5c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002c60]:csrrs a7, fflags, zero<br> [0x80002c64]:fsd fa3, 1120(a5)<br>   |
| 326|[0x80007660]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x9823a6849a878 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x648419e5f7622 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x1c32179e3068f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002c7c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002c80]:csrrs a7, fflags, zero<br> [0x80002c84]:fsd fa3, 1136(a5)<br>   |
| 327|[0x80007670]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x880d2a98ec8a6 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xaae02012bf970 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x46de92c30d8b3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002c9c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002ca0]:csrrs a7, fflags, zero<br> [0x80002ca4]:fsd fa3, 1152(a5)<br>   |
| 328|[0x80007680]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x1e30a0174e413 and fs2 == 1 and fe2 == 0x400 and fm2 == 0xa3ad354c23d0e and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd52b387784731 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002cbc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002cc0]:csrrs a7, fflags, zero<br> [0x80002cc4]:fsd fa3, 1168(a5)<br>   |
| 329|[0x80007690]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f8 and fm1 == 0xadb9cbb2edaff and fs2 == 1 and fe2 == 0x403 and fm2 == 0x086bf70a767c0 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xbbdcd5687c963 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002cdc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002ce0]:csrrs a7, fflags, zero<br> [0x80002ce4]:fsd fa3, 1184(a5)<br>   |
| 330|[0x800076a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x1667d2c686bf9 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x0e3570e2acd1c and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x25db9e8ff508c and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002cfc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002d00]:csrrs a7, fflags, zero<br> [0x80002d04]:fsd fa3, 1200(a5)<br>   |
| 331|[0x800076b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0xe053a2ef29387 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x0d23dd9377bc1 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0xf8fb2d617959b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002d1c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002d20]:csrrs a7, fflags, zero<br> [0x80002d24]:fsd fa3, 1216(a5)<br>   |
| 332|[0x800076c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcd42d44a09da1 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0x0159563e0931a and fs3 == 0 and fe3 == 0x7fb and fm3 == 0xcfb10ebe5bb27 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002d3c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002d40]:csrrs a7, fflags, zero<br> [0x80002d44]:fsd fa3, 1232(a5)<br>   |
| 333|[0x800076d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xe2ffa6cff07a7 and fs2 == 1 and fe2 == 0x3fe and fm2 == 0x6039e999a6b85 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x4c46648351903 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002d5c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002d60]:csrrs a7, fflags, zero<br> [0x80002d64]:fsd fa3, 1248(a5)<br>   |
| 334|[0x800076e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7f9 and fm1 == 0xdb38beb9086df and fs2 == 1 and fe2 == 0x403 and fm2 == 0x00d954e12d2fc and fs3 == 0 and fe3 == 0x7fd and fm3 == 0xdccc2f63529c1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002d7c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002d80]:csrrs a7, fflags, zero<br> [0x80002d84]:fsd fa3, 1264(a5)<br>   |
| 335|[0x800076f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x7ad3fc69bae31 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x3f1e4b04626ba and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xd83afb61ec2c3 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002d9c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002da0]:csrrs a7, fflags, zero<br> [0x80002da4]:fsd fa3, 1280(a5)<br>   |
| 336|[0x80007700]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x97239c6c3047e and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x2f682f6148f16 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0xe288d7f5db50b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002dbc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002dc0]:csrrs a7, fflags, zero<br> [0x80002dc4]:fsd fa3, 1296(a5)<br>   |
| 337|[0x80007710]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3eecf8905935f and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x30dc050910ea3 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x7bcb8116f23ed and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002ddc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002de0]:csrrs a7, fflags, zero<br> [0x80002de4]:fsd fa3, 1312(a5)<br>   |
| 338|[0x80007720]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x3f9134c1bd5d1 and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x3a0b6bfcca191 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x88065cc026dc1 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002dfc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002e00]:csrrs a7, fflags, zero<br> [0x80002e04]:fsd fa3, 1328(a5)<br>   |
| 339|[0x80007730]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fc and fm1 == 0x7a58bcd031f73 and fs2 == 1 and fe2 == 0x400 and fm2 == 0x0d9735f939ba2 and fs3 == 0 and fe3 == 0x7fd and fm3 == 0x8e6eb882d805d and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002e1c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002e20]:csrrs a7, fflags, zero<br> [0x80002e24]:fsd fa3, 1344(a5)<br>   |
| 340|[0x80007740]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x060346a6bdc2c and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x257c3a9472f95 and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x2c60e567bd871 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002e3c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002e40]:csrrs a7, fflags, zero<br> [0x80002e44]:fsd fa3, 1360(a5)<br>   |
| 341|[0x80007750]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fd and fm1 == 0x8178445826527 and fs2 == 1 and fe2 == 0x3f9 and fm2 == 0xb6d0b26d0f0f7 and fs3 == 0 and fe3 == 0x7f8 and fm3 == 0x4a5f01a817cbf and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002e60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002e64]:csrrs a7, fflags, zero<br> [0x80002e68]:fsd fa3, 1376(a5)<br>   |
| 342|[0x80007760]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0x3f076805d4aca and fs2 == 1 and fe2 == 0x3ff and fm2 == 0x48d466384e6cf and fs3 == 0 and fe3 == 0x7fe and fm3 == 0x99ca2eccbc1e6 and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002e80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002e84]:csrrs a7, fflags, zero<br> [0x80002e88]:fsd fa3, 1392(a5)<br>   |
| 343|[0x80007770]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fe and fm1 == 0xcce49d3aef9a2 and fs2 == 1 and fe2 == 0x3fc and fm2 == 0xc5772428b24af and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x983384cbe599f and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002ea0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002ea4]:csrrs a7, fflags, zero<br> [0x80002ea8]:fsd fa3, 1408(a5)<br>   |
| 344|[0x80007780]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x7fa and fm1 == 0x3532ec60050af and fs2 == 1 and fe2 == 0x401 and fm2 == 0x1f814130cd020 and fs3 == 0 and fe3 == 0x7fc and fm3 == 0x5b403465a136b and rm_val == 3  #nosat<br>                                                                                                                                                        |[0x80002ec0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80002ec4]:csrrs a7, fflags, zero<br> [0x80002ec8]:fsd fa3, 1424(a5)<br>   |
