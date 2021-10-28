
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001de0')]      |
| SIG_REGION                | [('0x80004510', '0x80005220', '418 dwords')]      |
| COV_LABELS                | fmadd_b16      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fmadd_b16-01.S/ref.S    |
| Total Number of coverpoints| 348     |
| Total Coverpoints Hit     | 341      |
| Total Signature Updates   | 418      |
| STAT1                     | 208      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 209     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001db0]:fmadd.d fa3, fa0, fa1, fa2, dyn
      [0x80001db4]:csrrs a7, fflags, zero
      [0x80001db8]:fsd fa3, 1280(a5)
 -- Signature Address: 0x80005200 Data: 0xEADFEEDBEADFEEDB
 -- Redundant Coverpoints hit by the op
      - opcode : fmadd.d
      - rs1 : f10
      - rs2 : f11
      - rs3 : f12
      - rd : f13
      - rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd
      - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x97605fecf75de and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc8df50f6d17e1 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xb51b0fc055d0b and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmadd.d', 'rs1 : f5', 'rs2 : f2', 'rs3 : f2', 'rd : f9', 'rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1']
Last Code Sequence : 
	-[0x800003c0]:fmadd.d fs1, ft5, ft2, ft2, dyn
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsd fs1, 0(a5)
Current Store : [0x800003cc] : sd a7, 8(a5) -- Store: [0x80004518]:0x0000000000000001




Last Coverpoint : ['rs1 : f21', 'rs2 : f21', 'rs3 : f21', 'rd : f21', 'rs1 == rs2 == rs3 == rd']
Last Code Sequence : 
	-[0x800003e0]:fmadd.d fs5, fs5, fs5, fs5, dyn
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsd fs5, 16(a5)
Current Store : [0x800003ec] : sd a7, 24(a5) -- Store: [0x80004528]:0x0000000000000001




Last Coverpoint : ['rs1 : f3', 'rs2 : f8', 'rs3 : f23', 'rd : f19', 'rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5b3a3e9fd9fb7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x852a7ebd7fae8 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x95322ae96bd46 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fmadd.d fs3, ft3, fs0, fs7, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fs3, 32(a5)
Current Store : [0x8000040c] : sd a7, 40(a5) -- Store: [0x80004538]:0x0000000000000001




Last Coverpoint : ['rs1 : f30', 'rs2 : f20', 'rs3 : f30', 'rd : f5', 'rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2']
Last Code Sequence : 
	-[0x80000420]:fmadd.d ft5, ft10, fs4, ft10, dyn
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsd ft5, 48(a5)
Current Store : [0x8000042c] : sd a7, 56(a5) -- Store: [0x80004548]:0x0000000000000001




Last Coverpoint : ['rs1 : f18', 'rs2 : f18', 'rs3 : f10', 'rd : f31', 'rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3']
Last Code Sequence : 
	-[0x80000440]:fmadd.d ft11, fs2, fs2, fa0, dyn
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:fsd ft11, 64(a5)
Current Store : [0x8000044c] : sd a7, 72(a5) -- Store: [0x80004558]:0x0000000000000001




Last Coverpoint : ['rs1 : f22', 'rs2 : f26', 'rs3 : f26', 'rd : f26', 'rd == rs2 == rs3 != rs1']
Last Code Sequence : 
	-[0x80000460]:fmadd.d fs10, fs6, fs10, fs10, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd fs10, 80(a5)
Current Store : [0x8000046c] : sd a7, 88(a5) -- Store: [0x80004568]:0x0000000000000001




Last Coverpoint : ['rs1 : f9', 'rs2 : f9', 'rs3 : f9', 'rd : f14', 'rs1 == rs2 == rs3 != rd']
Last Code Sequence : 
	-[0x80000480]:fmadd.d fa4, fs1, fs1, fs1, dyn
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsd fa4, 96(a5)
Current Store : [0x8000048c] : sd a7, 104(a5) -- Store: [0x80004578]:0x0000000000000001




Last Coverpoint : ['rs1 : f15', 'rs2 : f17', 'rs3 : f20', 'rd : f15', 'rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd988a750d58bd and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x464ca5c58934b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x37df22a77e501 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a0]:fmadd.d fa5, fa5, fa7, fs4, dyn
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:fsd fa5, 112(a5)
Current Store : [0x800004ac] : sd a7, 120(a5) -- Store: [0x80004588]:0x0000000000000001




Last Coverpoint : ['rs1 : f27', 'rs2 : f16', 'rs3 : f3', 'rd : f3', 'rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd0546b2b91d49 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdfcc2e217e8b4 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x75173fad371fe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fmadd.d ft3, fs11, fa6, ft3, dyn
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd ft3, 128(a5)
Current Store : [0x800004cc] : sd a7, 136(a5) -- Store: [0x80004598]:0x0000000000000001




Last Coverpoint : ['rs1 : f24', 'rs2 : f29', 'rs3 : f24', 'rd : f24', 'rs1 == rd == rs3 != rs2']
Last Code Sequence : 
	-[0x800004e0]:fmadd.d fs8, fs8, ft9, fs8, dyn
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:fsd fs8, 144(a5)
Current Store : [0x800004ec] : sd a7, 152(a5) -- Store: [0x800045a8]:0x0000000000000001




Last Coverpoint : ['rs1 : f20', 'rs2 : f0', 'rs3 : f14', 'rd : f0', 'rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x97605fecf75de and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc8df50f6d17e1 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xb51b0fc055d0b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000500]:fmadd.d ft0, fs4, ft0, fa4, dyn
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:fsd ft0, 160(a5)
Current Store : [0x8000050c] : sd a7, 168(a5) -- Store: [0x800045b8]:0x0000000000000001




Last Coverpoint : ['rs1 : f23', 'rs2 : f23', 'rs3 : f8', 'rd : f23', 'rs1 == rs2 == rd != rs3']
Last Code Sequence : 
	-[0x80000520]:fmadd.d fs7, fs7, fs7, fs0, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd fs7, 176(a5)
Current Store : [0x8000052c] : sd a7, 184(a5) -- Store: [0x800045c8]:0x0000000000000001




Last Coverpoint : ['rs1 : f11', 'rs2 : f12', 'rs3 : f25', 'rd : f27', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe230580ba7bd1 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe689920bde8c0 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x74f36484f1db8 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000540]:fmadd.d fs11, fa1, fa2, fs9, dyn
	-[0x80000544]:csrrs a7, fflags, zero
	-[0x80000548]:fsd fs11, 192(a5)
Current Store : [0x8000054c] : sd a7, 200(a5) -- Store: [0x800045d8]:0x0000000000000001




Last Coverpoint : ['rs1 : f16', 'rs2 : f30', 'rs3 : f29', 'rd : f6', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x485dfab87c6eb and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xa1c5a75f20f3f and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x7ab15a2ee7a62 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000560]:fmadd.d ft6, fa6, ft10, ft9, dyn
	-[0x80000564]:csrrs a7, fflags, zero
	-[0x80000568]:fsd ft6, 208(a5)
Current Store : [0x8000056c] : sd a7, 216(a5) -- Store: [0x800045e8]:0x0000000000000001




Last Coverpoint : ['rs1 : f25', 'rs2 : f7', 'rs3 : f19', 'rd : f10', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xa26ee9811427d and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xab3d27fb21645 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x7ba2dcfb1d2ee and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000580]:fmadd.d fa0, fs9, ft7, fs3, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd fa0, 224(a5)
Current Store : [0x8000058c] : sd a7, 232(a5) -- Store: [0x800045f8]:0x0000000000000001




Last Coverpoint : ['rs1 : f8', 'rs2 : f22', 'rs3 : f1', 'rd : f2', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x7a1e41518aac9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe5da67e1de883 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x520c7e0cfb5a9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005a0]:fmadd.d ft2, fs0, fs6, ft1, dyn
	-[0x800005a4]:csrrs a7, fflags, zero
	-[0x800005a8]:fsd ft2, 240(a5)
Current Store : [0x800005ac] : sd a7, 248(a5) -- Store: [0x80004608]:0x0000000000000001




Last Coverpoint : ['rs1 : f2', 'rs2 : f11', 'rs3 : f15', 'rd : f18', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x46206996b12da and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x5a57127f0185f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xe9e9f8eef4be9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c0]:fmadd.d fs2, ft2, fa1, fa5, dyn
	-[0x800005c4]:csrrs a7, fflags, zero
	-[0x800005c8]:fsd fs2, 256(a5)
Current Store : [0x800005cc] : sd a7, 264(a5) -- Store: [0x80004618]:0x0000000000000001




Last Coverpoint : ['rs1 : f14', 'rs2 : f24', 'rs3 : f22', 'rd : f20', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x7b5477fb4a141 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x2365849750ca3 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xf2f93eaa8f49c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fmadd.d fs4, fa4, fs8, fs6, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd fs4, 272(a5)
Current Store : [0x800005ec] : sd a7, 280(a5) -- Store: [0x80004628]:0x0000000000000001




Last Coverpoint : ['rs1 : f28', 'rs2 : f15', 'rs3 : f6', 'rd : f11', 'fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x2bdf74439828f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xae513826524d3 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xc4dfd98d8fab0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000600]:fmadd.d fa1, ft8, fa5, ft6, dyn
	-[0x80000604]:csrrs a7, fflags, zero
	-[0x80000608]:fsd fa1, 288(a5)
Current Store : [0x8000060c] : sd a7, 296(a5) -- Store: [0x80004638]:0x0000000000000001




Last Coverpoint : ['rs1 : f26', 'rs2 : f28', 'rs3 : f27', 'rd : f17', 'fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x0ed09999e8c7f and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x50af5b268139f and fs3 == 1 and fe3 == 0x7ee and fm3 == 0x486a7fbd1745d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000620]:fmadd.d fa7, fs10, ft8, fs11, dyn
	-[0x80000624]:csrrs a7, fflags, zero
	-[0x80000628]:fsd fa7, 304(a5)
Current Store : [0x8000062c] : sd a7, 312(a5) -- Store: [0x80004648]:0x0000000000000001




Last Coverpoint : ['rs1 : f29', 'rs2 : f27', 'rs3 : f31', 'rd : f1', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2a0b81afacd4f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xaddc37d4e3971 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xdd4f7fd3352c4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fmadd.d ft1, ft9, fs11, ft11, dyn
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd ft1, 320(a5)
Current Store : [0x8000064c] : sd a7, 328(a5) -- Store: [0x80004658]:0x0000000000000001




Last Coverpoint : ['rs1 : f6', 'rs2 : f10', 'rs3 : f11', 'rd : f12', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x43790a4111099 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xf155693c9590b and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x3419c5771d835 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000660]:fmadd.d fa2, ft6, fa0, fa1, dyn
	-[0x80000664]:csrrs a7, fflags, zero
	-[0x80000668]:fsd fa2, 336(a5)
Current Store : [0x8000066c] : sd a7, 344(a5) -- Store: [0x80004668]:0x0000000000000001




Last Coverpoint : ['rs1 : f1', 'rs2 : f3', 'rs3 : f28', 'rd : f16', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0xcb9c1949673fd and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe42ff54803ddc and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x5414e181d783d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000680]:fmadd.d fa6, ft1, ft3, ft8, dyn
	-[0x80000684]:csrrs a7, fflags, zero
	-[0x80000688]:fsd fa6, 352(a5)
Current Store : [0x8000068c] : sd a7, 360(a5) -- Store: [0x80004678]:0x0000000000000001




Last Coverpoint : ['rs1 : f31', 'rs2 : f4', 'rs3 : f5', 'rd : f8', 'fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xa42b6311033e7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x29651713b2616 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x9bc4b692a0898 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fmadd.d fs0, ft11, ft4, ft5, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd fs0, 368(a5)
Current Store : [0x800006ac] : sd a7, 376(a5) -- Store: [0x80004688]:0x0000000000000001




Last Coverpoint : ['rs1 : f17', 'rs2 : f31', 'rs3 : f7', 'rd : f30', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x4596be54ed4ed and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x78ecdf97d01e3 and fs3 == 1 and fe3 == 0x7ec and fm3 == 0xb07cd6bb5eba3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006c0]:fmadd.d ft10, fa7, ft11, ft7, dyn
	-[0x800006c4]:csrrs a7, fflags, zero
	-[0x800006c8]:fsd ft10, 384(a5)
Current Store : [0x800006cc] : sd a7, 392(a5) -- Store: [0x80004698]:0x0000000000000001




Last Coverpoint : ['rs1 : f12', 'rs2 : f13', 'rs3 : f4', 'rd : f25', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2ba7b825eeafb and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdfcf16f837dfc and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x781612265ff12 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e0]:fmadd.d fs9, fa2, fa3, ft4, dyn
	-[0x800006e4]:csrrs a7, fflags, zero
	-[0x800006e8]:fsd fs9, 400(a5)
Current Store : [0x800006ec] : sd a7, 408(a5) -- Store: [0x800046a8]:0x0000000000000001




Last Coverpoint : ['rs1 : f7', 'rs2 : f19', 'rs3 : f18', 'rd : f22', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0xeedb9ccd51d70 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x72ef022ae1b5f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x799bd2f7f7f7b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000700]:fmadd.d fs6, ft7, fs3, fs2, dyn
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:fsd fs6, 416(a5)
Current Store : [0x8000070c] : sd a7, 424(a5) -- Store: [0x800046b8]:0x0000000000000001




Last Coverpoint : ['rs1 : f0', 'rs2 : f6', 'rs3 : f13', 'rd : f7', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x60b765da8eb85 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xeb18879086a84 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x2647f9c91011d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000720]:fmadd.d ft7, ft0, ft6, fa3, dyn
	-[0x80000724]:csrrs a7, fflags, zero
	-[0x80000728]:fsd ft7, 432(a5)
Current Store : [0x8000072c] : sd a7, 440(a5) -- Store: [0x800046c8]:0x0000000000000001




Last Coverpoint : ['rs1 : f10', 'rs2 : f1', 'rs3 : f12', 'rd : f4', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb7e5dd8914aef and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x7ef581743c7e7 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x240c935666a90 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000740]:fmadd.d ft4, fa0, ft1, fa2, dyn
	-[0x80000744]:csrrs a7, fflags, zero
	-[0x80000748]:fsd ft4, 448(a5)
Current Store : [0x8000074c] : sd a7, 456(a5) -- Store: [0x800046d8]:0x0000000000000001




Last Coverpoint : ['rs1 : f4', 'rs2 : f25', 'rs3 : f17', 'rd : f13', 'fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x79fd40d8406ff and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x93dda7765991f and fs3 == 1 and fe3 == 0x7ee and fm3 == 0xd74553fb5476c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000760]:fmadd.d fa3, ft4, fs9, fa7, dyn
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsd fa3, 464(a5)
Current Store : [0x8000076c] : sd a7, 472(a5) -- Store: [0x800046e8]:0x0000000000000001




Last Coverpoint : ['rs1 : f13', 'rs2 : f14', 'rs3 : f0', 'rd : f28', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe063e979a868f and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xf8941b7ef6d0f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xd6069070d1d5c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000780]:fmadd.d ft8, fa3, fa4, ft0, dyn
	-[0x80000784]:csrrs a7, fflags, zero
	-[0x80000788]:fsd ft8, 480(a5)
Current Store : [0x8000078c] : sd a7, 488(a5) -- Store: [0x800046f8]:0x0000000000000001




Last Coverpoint : ['rs1 : f19', 'rs2 : f5', 'rs3 : f16', 'rd : f29', 'fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xa9f06400d3d17 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xa3695ba8b56f7 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xc751c75ad2875 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007a0]:fmadd.d ft9, fs3, ft5, fa6, dyn
	-[0x800007a4]:csrrs a7, fflags, zero
	-[0x800007a8]:fsd ft9, 496(a5)
Current Store : [0x800007ac] : sd a7, 504(a5) -- Store: [0x80004708]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa354d897694eb and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x20d71331741df and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x9358eb0bae12a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:fsd fa3, 512(a5)
Current Store : [0x800007cc] : sd a7, 520(a5) -- Store: [0x80004718]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x643a0f16c5ad9 and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x46821d48c93bf and fs3 == 1 and fe3 == 0x7e9 and fm3 == 0x754ea500ae50f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800007e4]:csrrs a7, fflags, zero
	-[0x800007e8]:fsd fa3, 528(a5)
Current Store : [0x800007ec] : sd a7, 536(a5) -- Store: [0x80004728]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x2011ca3e25417 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x6fe019d88c167 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x91cc6f7dc12ee and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000800]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000804]:csrrs a7, fflags, zero
	-[0x80000808]:fsd fa3, 544(a5)
Current Store : [0x8000080c] : sd a7, 552(a5) -- Store: [0x80004738]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xecab0c14c497e and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x71f120502a5e1 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x48042261bbfd9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000820]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000824]:csrrs a7, fflags, zero
	-[0x80000828]:fsd fa3, 560(a5)
Current Store : [0x8000082c] : sd a7, 568(a5) -- Store: [0x80004748]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5f72319ab0728 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0xedb823f91667f and fs3 == 1 and fe3 == 0x7ed and fm3 == 0xb5ae3c72d0fbd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000840]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000844]:csrrs a7, fflags, zero
	-[0x80000848]:fsd fa3, 576(a5)
Current Store : [0x8000084c] : sd a7, 584(a5) -- Store: [0x80004758]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x77f3763d1768f and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0xf700ae54ab8df and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x98b3ed8116b23 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000860]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000864]:csrrs a7, fflags, zero
	-[0x80000868]:fsd fa3, 592(a5)
Current Store : [0x8000086c] : sd a7, 600(a5) -- Store: [0x80004768]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xa99dd8880ddad and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x965e42d4900a7 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x319f49fd180c9 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000880]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000884]:csrrs a7, fflags, zero
	-[0x80000888]:fsd fa3, 608(a5)
Current Store : [0x8000088c] : sd a7, 616(a5) -- Store: [0x80004778]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x21cc73db02f94 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd883cdc560c7e and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x12eaef9d347ee and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008a0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008a4]:csrrs a7, fflags, zero
	-[0x800008a8]:fsd fa3, 624(a5)
Current Store : [0x800008ac] : sd a7, 632(a5) -- Store: [0x80004788]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x38a399f905ab9 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xd0ab984a97eef and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x45bfa5f58dd4f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008c4]:csrrs a7, fflags, zero
	-[0x800008c8]:fsd fa3, 640(a5)
Current Store : [0x800008cc] : sd a7, 648(a5) -- Store: [0x80004798]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x8f0cf46027883 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x65a21c61847d5 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x43461fe0716b7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa3, 656(a5)
Current Store : [0x800008ec] : sd a7, 664(a5) -- Store: [0x800047a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x7ee0eb8d7cc7f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xa387a3789eb22 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x1729b94c44f59 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000900]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000904]:csrrs a7, fflags, zero
	-[0x80000908]:fsd fa3, 672(a5)
Current Store : [0x8000090c] : sd a7, 680(a5) -- Store: [0x800047b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5540f3246eb3d and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x24c28db80e5f8 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x31f7ea360741c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000920]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000924]:csrrs a7, fflags, zero
	-[0x80000928]:fsd fa3, 688(a5)
Current Store : [0x8000092c] : sd a7, 696(a5) -- Store: [0x800047c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf1d543a0b07fb and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xcd593b01b4bb4 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x8c4f0f96cf778 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000940]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000944]:csrrs a7, fflags, zero
	-[0x80000948]:fsd fa3, 704(a5)
Current Store : [0x8000094c] : sd a7, 712(a5) -- Store: [0x800047d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x349747e9ba0b7 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x6db2c39b92e2f and fs3 == 1 and fe3 == 0x7ea and fm3 == 0xcf77f8f2dd2a4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000960]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000964]:csrrs a7, fflags, zero
	-[0x80000968]:fsd fa3, 720(a5)
Current Store : [0x8000096c] : sd a7, 728(a5) -- Store: [0x800047e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x8363338c30c8b and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xd266ca2da38e1 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x290c44846caf2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000980]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000984]:csrrs a7, fflags, zero
	-[0x80000988]:fsd fa3, 736(a5)
Current Store : [0x8000098c] : sd a7, 744(a5) -- Store: [0x800047f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x83554309c673f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x9071429916f5c and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x50844037d0cb0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009a0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009a4]:csrrs a7, fflags, zero
	-[0x800009a8]:fsd fa3, 752(a5)
Current Store : [0x800009ac] : sd a7, 760(a5) -- Store: [0x80004808]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9ed93307c783a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x09bb537711521 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x717d546119875 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009c0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009c4]:csrrs a7, fflags, zero
	-[0x800009c8]:fsd fa3, 768(a5)
Current Store : [0x800009cc] : sd a7, 776(a5) -- Store: [0x80004818]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd572442fbaed2 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xbebcdefd48729 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x055324a75b334 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009e0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800009e4]:csrrs a7, fflags, zero
	-[0x800009e8]:fsd fa3, 784(a5)
Current Store : [0x800009ec] : sd a7, 792(a5) -- Store: [0x80004828]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x0451c9f55e3a7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd2d54358cf2fc and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x7d04d555cf92f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsd fa3, 800(a5)
Current Store : [0x80000a0c] : sd a7, 808(a5) -- Store: [0x80004838]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5d7485adabe61 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x3e7bb112f7fe8 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x6fae77a8696d4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a24]:csrrs a7, fflags, zero
	-[0x80000a28]:fsd fa3, 816(a5)
Current Store : [0x80000a2c] : sd a7, 824(a5) -- Store: [0x80004848]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x43be7b7bc5458 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x59f961d342ac1 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x7f21ef4bb0ccd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a44]:csrrs a7, fflags, zero
	-[0x80000a48]:fsd fa3, 832(a5)
Current Store : [0x80000a4c] : sd a7, 840(a5) -- Store: [0x80004858]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc336b043d9acb and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x38619d6cda314 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x255c2ae58b297 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a64]:csrrs a7, fflags, zero
	-[0x80000a68]:fsd fa3, 848(a5)
Current Store : [0x80000a6c] : sd a7, 856(a5) -- Store: [0x80004868]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x889db2e44701b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x8d86e8b1c1eba and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x36bc974816679 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000a84]:csrrs a7, fflags, zero
	-[0x80000a88]:fsd fa3, 864(a5)
Current Store : [0x80000a8c] : sd a7, 872(a5) -- Store: [0x80004878]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xaf47876670d7f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x19295f298916c and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x357686d2489ca and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000aa0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000aa4]:csrrs a7, fflags, zero
	-[0x80000aa8]:fsd fa3, 880(a5)
Current Store : [0x80000aac] : sd a7, 888(a5) -- Store: [0x80004888]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x09f50264a8d1f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x3c1be8887e304 and fs3 == 1 and fe3 == 0x7ef and fm3 == 0xe6150c4fb0b24 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ac0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ac4]:csrrs a7, fflags, zero
	-[0x80000ac8]:fsd fa3, 896(a5)
Current Store : [0x80000acc] : sd a7, 904(a5) -- Store: [0x80004898]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x814b2c67ea80f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xe230c7e39a5d7 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x33ef8d4bcae83 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ae0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ae4]:csrrs a7, fflags, zero
	-[0x80000ae8]:fsd fa3, 912(a5)
Current Store : [0x80000aec] : sd a7, 920(a5) -- Store: [0x800048a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xa501ef8480c55 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x393a07ddd783a and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x3bee9a8deabe0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b04]:csrrs a7, fflags, zero
	-[0x80000b08]:fsd fa3, 928(a5)
Current Store : [0x80000b0c] : sd a7, 936(a5) -- Store: [0x800048b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x58dabbecb7711 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x360373cf6f10f and fs3 == 1 and fe3 == 0x7ed and fm3 == 0x6350da2026bcc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b24]:csrrs a7, fflags, zero
	-[0x80000b28]:fsd fa3, 944(a5)
Current Store : [0x80000b2c] : sd a7, 952(a5) -- Store: [0x800048c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf7a288f1ea41f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xba05c226869f4 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xebddb9e10bb5e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b44]:csrrs a7, fflags, zero
	-[0x80000b48]:fsd fa3, 960(a5)
Current Store : [0x80000b4c] : sd a7, 968(a5) -- Store: [0x800048d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0xc6e0a7c4777ef and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x265eb5ece1e0f and fs3 == 1 and fe3 == 0x7ed and fm3 == 0x307d11f19dfcf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b64]:csrrs a7, fflags, zero
	-[0x80000b68]:fsd fa3, 976(a5)
Current Store : [0x80000b6c] : sd a7, 984(a5) -- Store: [0x800048e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x04c0c63d2bf03 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x25fa7c5d5ea39 and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x97603980bff48 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000b80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000b84]:csrrs a7, fflags, zero
	-[0x80000b88]:fsd fa3, 992(a5)
Current Store : [0x80000b8c] : sd a7, 1000(a5) -- Store: [0x800048f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9ebd3d588e341 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0xfe0614a7b9fbf and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x28a55782e1fb6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ba0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ba4]:csrrs a7, fflags, zero
	-[0x80000ba8]:fsd fa3, 1008(a5)
Current Store : [0x80000bac] : sd a7, 1016(a5) -- Store: [0x80004908]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe2c9f3b4cd220 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x36127b62e0a11 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x5a23186c25911 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000bc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000bc4]:csrrs a7, fflags, zero
	-[0x80000bc8]:fsd fa3, 1024(a5)
Current Store : [0x80000bcc] : sd a7, 1032(a5) -- Store: [0x80004918]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x0491012a9572d and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x0cc870fcad57f and fs3 == 1 and fe3 == 0x7ee and fm3 == 0x32a96f016ff19 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000be0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000be4]:csrrs a7, fflags, zero
	-[0x80000be8]:fsd fa3, 1040(a5)
Current Store : [0x80000bec] : sd a7, 1048(a5) -- Store: [0x80004928]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5ee and fm1 == 0xf8c6f685f5fff and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x74ac1f4d6cd77 and fs3 == 1 and fe3 == 0x7e7 and fm3 == 0x6a6030b60fe4e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c04]:csrrs a7, fflags, zero
	-[0x80000c08]:fsd fa3, 1056(a5)
Current Store : [0x80000c0c] : sd a7, 1064(a5) -- Store: [0x80004938]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb3dfc53758807 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x989b40414f92c and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xdd46c48b6bcdb and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c24]:csrrs a7, fflags, zero
	-[0x80000c28]:fsd fa3, 1072(a5)
Current Store : [0x80000c2c] : sd a7, 1080(a5) -- Store: [0x80004948]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x950338fe39141 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x8de500cdc0435 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x045e7386317e1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c44]:csrrs a7, fflags, zero
	-[0x80000c48]:fsd fa3, 1088(a5)
Current Store : [0x80000c4c] : sd a7, 1096(a5) -- Store: [0x80004958]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x327d919abde6a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xa6c1b4fe3e3c0 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x06120e7e7d6d0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c64]:csrrs a7, fflags, zero
	-[0x80000c68]:fsd fa3, 1104(a5)
Current Store : [0x80000c6c] : sd a7, 1112(a5) -- Store: [0x80004968]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xcfc27db04baa5 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xa61a4a4a276db and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x6340398b7087f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000c80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000c84]:csrrs a7, fflags, zero
	-[0x80000c88]:fsd fa3, 1120(a5)
Current Store : [0x80000c8c] : sd a7, 1128(a5) -- Store: [0x80004978]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x840470e668bb1 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xfb271584e30d0 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x850257e209bf2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ca0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ca4]:csrrs a7, fflags, zero
	-[0x80000ca8]:fsd fa3, 1136(a5)
Current Store : [0x80000cac] : sd a7, 1144(a5) -- Store: [0x80004988]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x25d29d05cd288 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5b6db472d3462 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x36db5ad4ff389 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000cc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000cc4]:csrrs a7, fflags, zero
	-[0x80000cc8]:fsd fa3, 1152(a5)
Current Store : [0x80000ccc] : sd a7, 1160(a5) -- Store: [0x80004998]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x028f51d8767f7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xcd5bbb21e85e5 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xcfb553a1cd97f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ce0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ce4]:csrrs a7, fflags, zero
	-[0x80000ce8]:fsd fa3, 1168(a5)
Current Store : [0x80000cec] : sd a7, 1176(a5) -- Store: [0x800049a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x30c845de62d3f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4fea329d7caef and fs3 == 1 and fe3 == 0x7ee and fm3 == 0x91ddfdf13e6da and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d04]:csrrs a7, fflags, zero
	-[0x80000d08]:fsd fa3, 1184(a5)
Current Store : [0x80000d0c] : sd a7, 1192(a5) -- Store: [0x800049b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb01ad41cb5aef and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x5287546e52d99 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xdf9621122a87f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d24]:csrrs a7, fflags, zero
	-[0x80000d28]:fsd fa3, 1200(a5)
Current Store : [0x80000d2c] : sd a7, 1208(a5) -- Store: [0x800049c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xccfc542168107 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x4cdb8933a8b6f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x271c95f5daa85 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d44]:csrrs a7, fflags, zero
	-[0x80000d48]:fsd fa3, 1216(a5)
Current Store : [0x80000d4c] : sd a7, 1224(a5) -- Store: [0x800049d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x5ab2c30876547 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xbcdfd8ba97c91 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x215ee7393d726 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d60]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d64]:csrrs a7, fflags, zero
	-[0x80000d68]:fsd fa3, 1232(a5)
Current Store : [0x80000d6c] : sd a7, 1240(a5) -- Store: [0x800049e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6faef3ad3537e and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x9d365cde1b8c2 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x150ca5c3fdc01 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000d80]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000d84]:csrrs a7, fflags, zero
	-[0x80000d88]:fsd fa3, 1248(a5)
Current Store : [0x80000d8c] : sd a7, 1256(a5) -- Store: [0x800049f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x917e47c9fa5a6 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xaf465058419e9 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x1a16241529a49 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000da0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000da4]:csrrs a7, fflags, zero
	-[0x80000da8]:fsd fa3, 1264(a5)
Current Store : [0x80000dac] : sd a7, 1272(a5) -- Store: [0x80004a08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x228e5619b5bff and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x2fdaf9dfde227 and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x0047ab31226ad and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000dc0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000dc4]:csrrs a7, fflags, zero
	-[0x80000dc8]:fsd fa3, 1280(a5)
Current Store : [0x80000dcc] : sd a7, 1288(a5) -- Store: [0x80004a18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xecd582efcf7c1 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xcc4ac8145e5cc and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x4256d2f4b6d2a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000de0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000de4]:csrrs a7, fflags, zero
	-[0x80000de8]:fsd fa3, 1296(a5)
Current Store : [0x80000dec] : sd a7, 1304(a5) -- Store: [0x80004a28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x3833da7b9aa37 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xc00c1c027c00f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x6882fac4a9e9f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e00]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e04]:csrrs a7, fflags, zero
	-[0x80000e08]:fsd fa3, 1312(a5)
Current Store : [0x80000e0c] : sd a7, 1320(a5) -- Store: [0x80004a38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xfe9d365149cd7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x57132c37fb117 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x1109228ba4470 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e20]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e24]:csrrs a7, fflags, zero
	-[0x80000e28]:fsd fa3, 1328(a5)
Current Store : [0x80000e2c] : sd a7, 1336(a5) -- Store: [0x80004a48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd5872438d16b0 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x4a33096ab139b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x2fc0a075f656a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e40]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e44]:csrrs a7, fflags, zero
	-[0x80000e48]:fsd fa3, 1344(a5)
Current Store : [0x80000e4c] : sd a7, 1352(a5) -- Store: [0x80004a58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5c1fb79b16587 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc15c34215bcf5 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x34572be65abc1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e64]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e68]:csrrs a7, fflags, zero
	-[0x80000e6c]:fsd fa3, 1360(a5)
Current Store : [0x80000e70] : sd a7, 1368(a5) -- Store: [0x80004a68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xf74a5c9f39c6c and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x2fed65905c04f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x62fab3213dc60 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000e84]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000e88]:csrrs a7, fflags, zero
	-[0x80000e8c]:fsd fa3, 1376(a5)
Current Store : [0x80000e90] : sd a7, 1384(a5) -- Store: [0x80004a78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x17c09874ed591 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x35eecb1ad0a6b and fs3 == 1 and fe3 == 0x7ec and fm3 == 0xea517be6bff82 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ea4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ea8]:csrrs a7, fflags, zero
	-[0x80000eac]:fsd fa3, 1392(a5)
Current Store : [0x80000eb0] : sd a7, 1400(a5) -- Store: [0x80004a88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x2bbbe71ac902b and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x957151755a3ab and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x2740a1a06f199 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ec4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ec8]:csrrs a7, fflags, zero
	-[0x80000ecc]:fsd fa3, 1408(a5)
Current Store : [0x80000ed0] : sd a7, 1416(a5) -- Store: [0x80004a98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x58e517fcf82df and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe55b30b309254 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x005c6b2175896 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000ee4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000ee8]:csrrs a7, fflags, zero
	-[0x80000eec]:fsd fa3, 1424(a5)
Current Store : [0x80000ef0] : sd a7, 1432(a5) -- Store: [0x80004aa8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xe70e78fe823f7 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x97812620d4535 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x33516584e5be3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f04]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f08]:csrrs a7, fflags, zero
	-[0x80000f0c]:fsd fa3, 1440(a5)
Current Store : [0x80000f10] : sd a7, 1448(a5) -- Store: [0x80004ab8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xce576b61a6f6e and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xce7352604fe6b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x0dd58a5de5e5f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f24]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f28]:csrrs a7, fflags, zero
	-[0x80000f2c]:fsd fa3, 1456(a5)
Current Store : [0x80000f30] : sd a7, 1464(a5) -- Store: [0x80004ac8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x058fe9a4daa6f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xba2704f6953c8 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x0d3ea4c4b2fc7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f44]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f48]:csrrs a7, fflags, zero
	-[0x80000f4c]:fsd fa3, 1472(a5)
Current Store : [0x80000f50] : sd a7, 1480(a5) -- Store: [0x80004ad8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x8de0124aa943c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xb992011891a75 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xb83d80609d323 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f64]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f68]:csrrs a7, fflags, zero
	-[0x80000f6c]:fsd fa3, 1488(a5)
Current Store : [0x80000f70] : sd a7, 1496(a5) -- Store: [0x80004ae8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x792be19c2d7a1 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xfa174e3ff15ce and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x138b42bd39e2e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000f84]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000f88]:csrrs a7, fflags, zero
	-[0x80000f8c]:fsd fa3, 1504(a5)
Current Store : [0x80000f90] : sd a7, 1512(a5) -- Store: [0x80004af8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x2b76882db8d56 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5bcd8bcde77b5 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xd579e9510070f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fa4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fa8]:csrrs a7, fflags, zero
	-[0x80000fac]:fsd fa3, 1520(a5)
Current Store : [0x80000fb0] : sd a7, 1528(a5) -- Store: [0x80004b08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x09badb528c6c8 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xcb4f3175c7901 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xe79e6e9a4ceca and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fc4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fc8]:csrrs a7, fflags, zero
	-[0x80000fcc]:fsd fa3, 1536(a5)
Current Store : [0x80000fd0] : sd a7, 1544(a5) -- Store: [0x80004b18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0xf4fdc18a0c20f and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x01430191b8abf and fs3 == 1 and fe3 == 0x7eb and fm3 == 0x3131982a68eb4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000fe4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80000fe8]:csrrs a7, fflags, zero
	-[0x80000fec]:fsd fa3, 1552(a5)
Current Store : [0x80000ff0] : sd a7, 1560(a5) -- Store: [0x80004b28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x0da8a99d945d7 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x5ace7a656588f and fs3 == 1 and fe3 == 0x7ed and fm3 == 0x6d803e35df8f2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001004]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001008]:csrrs a7, fflags, zero
	-[0x8000100c]:fsd fa3, 1568(a5)
Current Store : [0x80001010] : sd a7, 1576(a5) -- Store: [0x80004b38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x8095c6672ee3f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xf2f998bf74bb4 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x0eb29b83e3912 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001024]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001028]:csrrs a7, fflags, zero
	-[0x8000102c]:fsd fa3, 1584(a5)
Current Store : [0x80001030] : sd a7, 1592(a5) -- Store: [0x80004b48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc9eec489f6667 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd6e174caa8db2 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x3a663b45ff674 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001044]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001048]:csrrs a7, fflags, zero
	-[0x8000104c]:fsd fa3, 1600(a5)
Current Store : [0x80001050] : sd a7, 1608(a5) -- Store: [0x80004b58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xb4c5ad04d76dd and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x3526172ae3f6b and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x17cfde3d71338 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001064]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001068]:csrrs a7, fflags, zero
	-[0x8000106c]:fsd fa3, 1616(a5)
Current Store : [0x80001070] : sd a7, 1624(a5) -- Store: [0x80004b68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x5fe6340fe9dff and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xea95a80ed95a1 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x95298a53abfd7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001084]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001088]:csrrs a7, fflags, zero
	-[0x8000108c]:fsd fa3, 1632(a5)
Current Store : [0x80001090] : sd a7, 1640(a5) -- Store: [0x80004b78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe56179ab25747 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xae83ac33105f8 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x3672c44440fe2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010a8]:csrrs a7, fflags, zero
	-[0x800010ac]:fsd fa3, 1648(a5)
Current Store : [0x800010b0] : sd a7, 1656(a5) -- Store: [0x80004b88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xa8acc80de84a1 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x9724cf1f251b7 and fs3 == 1 and fe3 == 0x7ee and fm3 == 0xed8b9dd834c90 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010c8]:csrrs a7, fflags, zero
	-[0x800010cc]:fsd fa3, 1664(a5)
Current Store : [0x800010d0] : sd a7, 1672(a5) -- Store: [0x80004b98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x22411e9af7a5f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x9cd85f6af39ef and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x3a4f72c176f8f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800010e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800010e8]:csrrs a7, fflags, zero
	-[0x800010ec]:fsd fa3, 1680(a5)
Current Store : [0x800010f0] : sd a7, 1688(a5) -- Store: [0x80004ba8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x8b50ed3b44d4f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x6fcb3adb66bfb and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x0ee2098e10b2b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001104]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001108]:csrrs a7, fflags, zero
	-[0x8000110c]:fsd fa3, 1696(a5)
Current Store : [0x80001110] : sd a7, 1704(a5) -- Store: [0x80004bb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2c72e28eb4ecd and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xe989c8dd81bc5 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xb4d0e883832a6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001124]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001128]:csrrs a7, fflags, zero
	-[0x8000112c]:fsd fa3, 1712(a5)
Current Store : [0x80001130] : sd a7, 1720(a5) -- Store: [0x80004bc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x287ac6ae322ff and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x9444597ea17b3 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xa6ca8e992a92b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001144]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001148]:csrrs a7, fflags, zero
	-[0x8000114c]:fsd fa3, 1728(a5)
Current Store : [0x80001150] : sd a7, 1736(a5) -- Store: [0x80004bd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x5188d91417d2f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x4f961e264020f and fs3 == 1 and fe3 == 0x7ea and fm3 == 0x0014259a9d1ca and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001164]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001168]:csrrs a7, fflags, zero
	-[0x8000116c]:fsd fa3, 1744(a5)
Current Store : [0x80001170] : sd a7, 1752(a5) -- Store: [0x80004be8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6fdf2805ff4db and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x5a5fc5e3c3eed and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x79bf018eb15f6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001184]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001188]:csrrs a7, fflags, zero
	-[0x8000118c]:fsd fa3, 1760(a5)
Current Store : [0x80001190] : sd a7, 1768(a5) -- Store: [0x80004bf8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x354ba34578ba7 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x5569022b338ff and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x5b1c55af8c1f7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011a8]:csrrs a7, fflags, zero
	-[0x800011ac]:fsd fa3, 1776(a5)
Current Store : [0x800011b0] : sd a7, 1784(a5) -- Store: [0x80004c08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xa9aa2b6025f07 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x2c9bb6d2a0534 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xef63e02c8b1d3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011c8]:csrrs a7, fflags, zero
	-[0x800011cc]:fsd fa3, 1792(a5)
Current Store : [0x800011d0] : sd a7, 1800(a5) -- Store: [0x80004c18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x47c0965bde424 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x7d6356ef8a62f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xc33e8cba5f275 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800011e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800011e8]:csrrs a7, fflags, zero
	-[0x800011ec]:fsd fa3, 1808(a5)
Current Store : [0x800011f0] : sd a7, 1816(a5) -- Store: [0x80004c28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x4f8b971fa5a72 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x6cba246939a56 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x741491d1c33c2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001204]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001208]:csrrs a7, fflags, zero
	-[0x8000120c]:fsd fa3, 1824(a5)
Current Store : [0x80001210] : sd a7, 1832(a5) -- Store: [0x80004c38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x5819e362ac2bf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7f8e997d84592 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x33f7bcfad4bfe and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001224]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001228]:csrrs a7, fflags, zero
	-[0x8000122c]:fsd fa3, 1840(a5)
Current Store : [0x80001230] : sd a7, 1848(a5) -- Store: [0x80004c48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe49bfb977b300 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe07b0ce451645 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x47faf4a1851af and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001244]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001248]:csrrs a7, fflags, zero
	-[0x8000124c]:fsd fa3, 1856(a5)
Current Store : [0x80001250] : sd a7, 1864(a5) -- Store: [0x80004c58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x4d1d10d2ac62f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5cab9bd09e6c4 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x90bf25aaee783 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001264]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001268]:csrrs a7, fflags, zero
	-[0x8000126c]:fsd fa3, 1872(a5)
Current Store : [0x80001270] : sd a7, 1880(a5) -- Store: [0x80004c68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xbe64efc9e258d and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x1d17766cf56c7 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xe7e37410f0d87 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001284]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001288]:csrrs a7, fflags, zero
	-[0x8000128c]:fsd fa3, 1888(a5)
Current Store : [0x80001290] : sd a7, 1896(a5) -- Store: [0x80004c78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0aaee2f44e344 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4d3375e946b52 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xc5488f2fa902b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012a4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012a8]:csrrs a7, fflags, zero
	-[0x800012ac]:fsd fa3, 1904(a5)
Current Store : [0x800012b0] : sd a7, 1912(a5) -- Store: [0x80004c88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x95adca0768ede and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb9042a506a4fd and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x2ed049ef3364c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012c4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012c8]:csrrs a7, fflags, zero
	-[0x800012cc]:fsd fa3, 1920(a5)
Current Store : [0x800012d0] : sd a7, 1928(a5) -- Store: [0x80004c98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x4d30da0b2f54f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x194e95f4fa0e5 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x908f82a17459c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800012e4]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800012e8]:csrrs a7, fflags, zero
	-[0x800012ec]:fsd fa3, 1936(a5)
Current Store : [0x800012f0] : sd a7, 1944(a5) -- Store: [0x80004ca8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x9a5710f3828f7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb537603b0ea8b and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xa6cd29764cb43 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001304]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001308]:csrrs a7, fflags, zero
	-[0x8000130c]:fsd fa3, 1952(a5)
Current Store : [0x80001310] : sd a7, 1960(a5) -- Store: [0x80004cb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xbf4f8dd35ac8c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x1eb3cbd822141 and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x586a42c0c50e6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001324]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001328]:csrrs a7, fflags, zero
	-[0x8000132c]:fsd fa3, 1968(a5)
Current Store : [0x80001330] : sd a7, 1976(a5) -- Store: [0x80004cc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x9086506183f67 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xe707c5377ae9f and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x0b40f9d038d42 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001344]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001348]:csrrs a7, fflags, zero
	-[0x8000134c]:fsd fa3, 1984(a5)
Current Store : [0x80001350] : sd a7, 1992(a5) -- Store: [0x80004cd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f2 and fm1 == 0x3502bebc53fff and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xa53d0d2b3faec and fs3 == 1 and fe3 == 0x7ec and fm3 == 0xdfa3c64a1220c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001364]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001368]:csrrs a7, fflags, zero
	-[0x8000136c]:fsd fa3, 2000(a5)
Current Store : [0x80001370] : sd a7, 2008(a5) -- Store: [0x80004ce8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x43c3f0806f2cd and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xb54c6b03a8983 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x38abb1e2c0a2a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001384]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001388]:csrrs a7, fflags, zero
	-[0x8000138c]:fsd fa3, 2016(a5)
Current Store : [0x80001390] : sd a7, 2024(a5) -- Store: [0x80004cf8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xf940aa40f1530 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x9b75de798ac5f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x0511fb3f32564 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013b0]:csrrs a7, fflags, zero
	-[0x800013b4]:fsd fa3, 0(a5)
Current Store : [0x800013b8] : sd a7, 8(a5) -- Store: [0x80004d08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x442435bea0eb5 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x55e18bacc608f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xdb35dd749b764 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013d0]:csrrs a7, fflags, zero
	-[0x800013d4]:fsd fa3, 16(a5)
Current Store : [0x800013d8] : sd a7, 24(a5) -- Store: [0x80004d18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9ff4d99a919c7 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x8106d28c6e8ff and fs3 == 1 and fe3 == 0x7e9 and fm3 == 0x7353e6e0e83d4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800013ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800013f0]:csrrs a7, fflags, zero
	-[0x800013f4]:fsd fa3, 32(a5)
Current Store : [0x800013f8] : sd a7, 40(a5) -- Store: [0x80004d28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xde18ff8661b6b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x9e3b4234a7716 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x82c09c5b7a66b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000140c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001410]:csrrs a7, fflags, zero
	-[0x80001414]:fsd fa3, 48(a5)
Current Store : [0x80001418] : sd a7, 56(a5) -- Store: [0x80004d38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc48b48c27d811 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xfa73e129b8879 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x33f36cc052485 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000142c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001430]:csrrs a7, fflags, zero
	-[0x80001434]:fsd fa3, 64(a5)
Current Store : [0x80001438] : sd a7, 72(a5) -- Store: [0x80004d48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf2f5c0f43aa65 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x1f707766a790b and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x11f91999d48e3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000144c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001450]:csrrs a7, fflags, zero
	-[0x80001454]:fsd fa3, 80(a5)
Current Store : [0x80001458] : sd a7, 88(a5) -- Store: [0x80004d58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x0972c859cb481 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x42f12d7244f4f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x3c65121fba9a0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000146c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001470]:csrrs a7, fflags, zero
	-[0x80001474]:fsd fa3, 96(a5)
Current Store : [0x80001478] : sd a7, 104(a5) -- Store: [0x80004d68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x530b56ed605ac and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x7f381ca9a6b2f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x19806f82c8793 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000148c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001490]:csrrs a7, fflags, zero
	-[0x80001494]:fsd fa3, 112(a5)
Current Store : [0x80001498] : sd a7, 120(a5) -- Store: [0x80004d78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x9bebe66f937a7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x6756366451777 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x506140d0f719e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014b0]:csrrs a7, fflags, zero
	-[0x800014b4]:fsd fa3, 128(a5)
Current Store : [0x800014b8] : sd a7, 136(a5) -- Store: [0x80004d88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc0377eab1f21f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x22e4be37f86cb and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x2a3fa94059d34 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014d0]:csrrs a7, fflags, zero
	-[0x800014d4]:fsd fa3, 144(a5)
Current Store : [0x800014d8] : sd a7, 152(a5) -- Store: [0x80004d98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xea52ea391cf03 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x465936dcae3fb and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x8462898630b28 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800014ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800014f0]:csrrs a7, fflags, zero
	-[0x800014f4]:fsd fa3, 160(a5)
Current Store : [0x800014f8] : sd a7, 168(a5) -- Store: [0x80004da8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f1 and fm1 == 0x8f90cc1b18bff and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x89d995b2d6507 and fs3 == 1 and fe3 == 0x7ea and fm3 == 0x9928782bffd00 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000150c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001510]:csrrs a7, fflags, zero
	-[0x80001514]:fsd fa3, 176(a5)
Current Store : [0x80001518] : sd a7, 184(a5) -- Store: [0x80004db8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x8d5463dfce629 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xa85d306a197c5 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xcbf3d2b9a76d1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000152c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001530]:csrrs a7, fflags, zero
	-[0x80001534]:fsd fa3, 192(a5)
Current Store : [0x80001538] : sd a7, 200(a5) -- Store: [0x80004dc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x447a9936a43d3 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x3dfdc8c878541 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xca7b44794a627 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000154c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001550]:csrrs a7, fflags, zero
	-[0x80001554]:fsd fa3, 208(a5)
Current Store : [0x80001558] : sd a7, 216(a5) -- Store: [0x80004dd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x26c977d632159 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x6fd2704b8e37f and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x67cf4741a885b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000156c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001570]:csrrs a7, fflags, zero
	-[0x80001574]:fsd fa3, 224(a5)
Current Store : [0x80001578] : sd a7, 232(a5) -- Store: [0x80004de8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xebc97dc31d5a7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe800919ed6413 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x2fa2b9b8bdd04 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000158c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001590]:csrrs a7, fflags, zero
	-[0x80001594]:fsd fa3, 240(a5)
Current Store : [0x80001598] : sd a7, 248(a5) -- Store: [0x80004df8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x57fa825e98147 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x76587e2d6216f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x69b66f0339a99 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015b0]:csrrs a7, fflags, zero
	-[0x800015b4]:fsd fa3, 256(a5)
Current Store : [0x800015b8] : sd a7, 264(a5) -- Store: [0x80004e08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x1f06fdec36709 and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x97836753c7c7f and fs3 == 1 and fe3 == 0x7ed and fm3 == 0xd84d8a3ea830a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015d0]:csrrs a7, fflags, zero
	-[0x800015d4]:fsd fa3, 272(a5)
Current Store : [0x800015d8] : sd a7, 280(a5) -- Store: [0x80004e18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x6db92bb1bf075 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xace1ecea16623 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xcaf4f7088a4d0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800015ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800015f0]:csrrs a7, fflags, zero
	-[0x800015f4]:fsd fa3, 288(a5)
Current Store : [0x800015f8] : sd a7, 296(a5) -- Store: [0x80004e28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x2362beb7fcccc and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x04673c7ab8808 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x982beac0e148e and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000160c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001610]:csrrs a7, fflags, zero
	-[0x80001614]:fsd fa3, 304(a5)
Current Store : [0x80001618] : sd a7, 312(a5) -- Store: [0x80004e38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x6607c20361523 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xe2f1c5d734347 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x8e9083a002a40 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000162c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001630]:csrrs a7, fflags, zero
	-[0x80001634]:fsd fa3, 320(a5)
Current Store : [0x80001638] : sd a7, 328(a5) -- Store: [0x80004e48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x00b42e8f00d47 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x318ea43af884c and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x55bf36838d301 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000164c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001650]:csrrs a7, fflags, zero
	-[0x80001654]:fsd fa3, 336(a5)
Current Store : [0x80001658] : sd a7, 344(a5) -- Store: [0x80004e58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5a371eca20170 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb0db7e0a5d748 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x810243adf986b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000166c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001670]:csrrs a7, fflags, zero
	-[0x80001674]:fsd fa3, 352(a5)
Current Store : [0x80001678] : sd a7, 360(a5) -- Store: [0x80004e68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5864580d04bef and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xeedf7f711c3c2 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x398c547e1be75 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000168c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001690]:csrrs a7, fflags, zero
	-[0x80001694]:fsd fa3, 368(a5)
Current Store : [0x80001698] : sd a7, 376(a5) -- Store: [0x80004e78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xad3923b9bf5a2 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd64347e477166 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x4770df035aba6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016b0]:csrrs a7, fflags, zero
	-[0x800016b4]:fsd fa3, 384(a5)
Current Store : [0x800016b8] : sd a7, 392(a5) -- Store: [0x80004e88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x9847d9429817b and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x6f291ef3c3557 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x3a5549c3c4c4f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016d0]:csrrs a7, fflags, zero
	-[0x800016d4]:fsd fa3, 400(a5)
Current Store : [0x800016d8] : sd a7, 408(a5) -- Store: [0x80004e98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x42972262ccf0f and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x9d5f97660dadf and fs3 == 1 and fe3 == 0x7e8 and fm3 == 0x88362814c9759 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800016ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800016f0]:csrrs a7, fflags, zero
	-[0x800016f4]:fsd fa3, 416(a5)
Current Store : [0x800016f8] : sd a7, 424(a5) -- Store: [0x80004ea8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x66b37637d118d and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x714a830fa079f and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x00d6d4b541e40 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000170c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001710]:csrrs a7, fflags, zero
	-[0x80001714]:fsd fa3, 432(a5)
Current Store : [0x80001718] : sd a7, 440(a5) -- Store: [0x80004eb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x0a287088f5e69 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xc44223126cbc7 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x4c08a113d9779 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000172c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001730]:csrrs a7, fflags, zero
	-[0x80001734]:fsd fa3, 448(a5)
Current Store : [0x80001738] : sd a7, 456(a5) -- Store: [0x80004ec8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f5 and fm1 == 0x75450c5a9817f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xb3d56c4f6fd1d and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x1d7d8d5cb4608 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000174c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001750]:csrrs a7, fflags, zero
	-[0x80001754]:fsd fa3, 464(a5)
Current Store : [0x80001758] : sd a7, 472(a5) -- Store: [0x80004ed8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xaf42bcba26d83 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x99fb7503e8d08 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x5c437a02c58bf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000176c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001770]:csrrs a7, fflags, zero
	-[0x80001774]:fsd fa3, 480(a5)
Current Store : [0x80001778] : sd a7, 488(a5) -- Store: [0x80004ee8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xec0c4abe1fd0e and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x7ad291b7d6463 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x3ef47a9052ba0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000178c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001790]:csrrs a7, fflags, zero
	-[0x80001794]:fsd fa3, 496(a5)
Current Store : [0x80001798] : sd a7, 504(a5) -- Store: [0x80004ef8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xf60647476d4cb and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x2a1fa26c0948f and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x1dfd8df43126c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017b0]:csrrs a7, fflags, zero
	-[0x800017b4]:fsd fa3, 512(a5)
Current Store : [0x800017b8] : sd a7, 520(a5) -- Store: [0x80004f08]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x26e34e07a9172 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x9099330bb750b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x22a666111a3d5 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017d0]:csrrs a7, fflags, zero
	-[0x800017d4]:fsd fa3, 528(a5)
Current Store : [0x800017d8] : sd a7, 536(a5) -- Store: [0x80004f18]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f5 and fm1 == 0xb56678fedc57f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x451eb54c10b8b and fs3 == 1 and fe3 == 0x7ef and fm3 == 0xb55b4e640661d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800017ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800017f0]:csrrs a7, fflags, zero
	-[0x800017f4]:fsd fa3, 544(a5)
Current Store : [0x800017f8] : sd a7, 552(a5) -- Store: [0x80004f28]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd1ed9e7beff05 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x1182656689f60 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x3e00b5c26cb6a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000180c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001810]:csrrs a7, fflags, zero
	-[0x80001814]:fsd fa3, 560(a5)
Current Store : [0x80001818] : sd a7, 568(a5) -- Store: [0x80004f38]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6535160e0062c and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x728eb744bb2ef and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xb8ab2e12d6c5a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000182c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001830]:csrrs a7, fflags, zero
	-[0x80001834]:fsd fa3, 576(a5)
Current Store : [0x80001838] : sd a7, 584(a5) -- Store: [0x80004f48]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa1bf5c83faf60 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x9c16a190f4e87 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x1f04b97b73a10 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000184c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001850]:csrrs a7, fflags, zero
	-[0x80001854]:fsd fa3, 592(a5)
Current Store : [0x80001858] : sd a7, 600(a5) -- Store: [0x80004f58]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xc380d05f3f55f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x96d3944ae92c5 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xdeea1013d23c6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000186c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001870]:csrrs a7, fflags, zero
	-[0x80001874]:fsd fa3, 608(a5)
Current Store : [0x80001878] : sd a7, 616(a5) -- Store: [0x80004f68]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xf1bca90426463 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7685c15158af8 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x41711f482709c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000188c]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001890]:csrrs a7, fflags, zero
	-[0x80001894]:fsd fa3, 624(a5)
Current Store : [0x80001898] : sd a7, 632(a5) -- Store: [0x80004f78]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf21e6dcb25437 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x42a2ac1575123 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x8506d3564ee4c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018ac]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018b0]:csrrs a7, fflags, zero
	-[0x800018b4]:fsd fa3, 640(a5)
Current Store : [0x800018b8] : sd a7, 648(a5) -- Store: [0x80004f88]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x962eb496df1c1 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x516656a60de77 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x9e94f197bc8d7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018cc]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018d0]:csrrs a7, fflags, zero
	-[0x800018d4]:fsd fa3, 656(a5)
Current Store : [0x800018d8] : sd a7, 664(a5) -- Store: [0x80004f98]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x520baea9095e5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xfe1581ecd07ea and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xbf8fb7ed9fca6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800018ec]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800018f0]:csrrs a7, fflags, zero
	-[0x800018f4]:fsd fa3, 672(a5)
Current Store : [0x800018f8] : sd a7, 680(a5) -- Store: [0x80004fa8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe64794dad7d48 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x28cdc8d19d0dc and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x35c40a3528469 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001910]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001914]:csrrs a7, fflags, zero
	-[0x80001918]:fsd fa3, 688(a5)
Current Store : [0x8000191c] : sd a7, 696(a5) -- Store: [0x80004fb8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb2efd30dc5db9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xca428c2b7c81f and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x3f5e6adff9125 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001930]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001934]:csrrs a7, fflags, zero
	-[0x80001938]:fsd fa3, 704(a5)
Current Store : [0x8000193c] : sd a7, 712(a5) -- Store: [0x80004fc8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x691ae7e1929e8 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x1a3fd4c2ca047 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x2bfc78a5e7a04 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001950]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001954]:csrrs a7, fflags, zero
	-[0x80001958]:fsd fa3, 720(a5)
Current Store : [0x8000195c] : sd a7, 728(a5) -- Store: [0x80004fd8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd89e42f5143f8 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x14c9836bbe6ff and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x370b654f6106d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001970]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001974]:csrrs a7, fflags, zero
	-[0x80001978]:fsd fa3, 736(a5)
Current Store : [0x8000197c] : sd a7, 744(a5) -- Store: [0x80004fe8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd8c56582791a6 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xaf56f24522c9c and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x44742568fb496 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001990]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001994]:csrrs a7, fflags, zero
	-[0x80001998]:fsd fa3, 752(a5)
Current Store : [0x8000199c] : sd a7, 760(a5) -- Store: [0x80004ff8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x6febab5b81b47 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x83e4a9485598d and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x12ca525764001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019b0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019b4]:csrrs a7, fflags, zero
	-[0x800019b8]:fsd fa3, 768(a5)
Current Store : [0x800019bc] : sd a7, 776(a5) -- Store: [0x80005008]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x39bd67fecd9d5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5035a8d0a4c2b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xaf617d8aca2ad and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019d0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019d4]:csrrs a7, fflags, zero
	-[0x800019d8]:fsd fa3, 784(a5)
Current Store : [0x800019dc] : sd a7, 792(a5) -- Store: [0x80005018]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x294c231789029 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x83df99d24bacb and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x6e5548a50ddaf and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800019f0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x800019f4]:csrrs a7, fflags, zero
	-[0x800019f8]:fsd fa3, 800(a5)
Current Store : [0x800019fc] : sd a7, 808(a5) -- Store: [0x80005028]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x314c82f3115df and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x8a2386a894fd9 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x8eebee8141aa4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a14]:csrrs a7, fflags, zero
	-[0x80001a18]:fsd fa3, 816(a5)
Current Store : [0x80001a1c] : sd a7, 824(a5) -- Store: [0x80005038]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x34d4bf2305d15 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x2cdc24d268f9f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x92e19085786e1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a34]:csrrs a7, fflags, zero
	-[0x80001a38]:fsd fa3, 832(a5)
Current Store : [0x80001a3c] : sd a7, 840(a5) -- Store: [0x80005048]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa101ccfb0623a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x14a00d8d01424 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x04b64625ef1e1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a54]:csrrs a7, fflags, zero
	-[0x80001a58]:fsd fa3, 848(a5)
Current Store : [0x80001a5c] : sd a7, 856(a5) -- Store: [0x80005058]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x1a3fb352a13ab and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x69c26ac7fce60 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x690228a82d72c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a74]:csrrs a7, fflags, zero
	-[0x80001a78]:fsd fa3, 864(a5)
Current Store : [0x80001a7c] : sd a7, 872(a5) -- Store: [0x80005068]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0410cbbfdec45 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdd9c651f50797 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xb0481487bcfe7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001a90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001a94]:csrrs a7, fflags, zero
	-[0x80001a98]:fsd fa3, 880(a5)
Current Store : [0x80001a9c] : sd a7, 888(a5) -- Store: [0x80005078]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xcab8890bacf6d and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x49818dfc8788f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x9176a1e425429 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ab0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ab4]:csrrs a7, fflags, zero
	-[0x80001ab8]:fsd fa3, 896(a5)
Current Store : [0x80001abc] : sd a7, 904(a5) -- Store: [0x80005088]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xe8af77cda8053 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xef616f891ea0b and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x743eb507a1a8d and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001ad0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001ad4]:csrrs a7, fflags, zero
	-[0x80001ad8]:fsd fa3, 912(a5)
Current Store : [0x80001adc] : sd a7, 920(a5) -- Store: [0x80005098]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xbdae67c407ef2 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x874e2eeac1c13 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x26a10a82e03b3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001af0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001af4]:csrrs a7, fflags, zero
	-[0x80001af8]:fsd fa3, 928(a5)
Current Store : [0x80001afc] : sd a7, 936(a5) -- Store: [0x800050a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xbc366e555215f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xf3878bbaf3893 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x2473aa0ab03c1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b14]:csrrs a7, fflags, zero
	-[0x80001b18]:fsd fa3, 944(a5)
Current Store : [0x80001b1c] : sd a7, 952(a5) -- Store: [0x800050b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x56182d28045ae and fs2 == 0 and fe2 == 0x5f1 and fm2 == 0x2b954e52a4bff and fs3 == 1 and fe3 == 0x7eb and fm3 == 0x957a1c34f3e3a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b34]:csrrs a7, fflags, zero
	-[0x80001b38]:fsd fa3, 960(a5)
Current Store : [0x80001b3c] : sd a7, 968(a5) -- Store: [0x800050c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x707d21f5c40de and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x986532dae9957 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x9bdbaf3c907a4 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b54]:csrrs a7, fflags, zero
	-[0x80001b58]:fsd fa3, 976(a5)
Current Store : [0x80001b5c] : sd a7, 984(a5) -- Store: [0x800050d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9c2c9b7ac820e and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x18ef1d7a9fa74 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xbdf7d6230bec0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b74]:csrrs a7, fflags, zero
	-[0x80001b78]:fsd fa3, 992(a5)
Current Store : [0x80001b7c] : sd a7, 1000(a5) -- Store: [0x800050e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe8754038aa2cf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xbb09e7215ddb9 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x3890dfd65f9b0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001b90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001b94]:csrrs a7, fflags, zero
	-[0x80001b98]:fsd fa3, 1008(a5)
Current Store : [0x80001b9c] : sd a7, 1016(a5) -- Store: [0x800050f8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x38c62d68fcb25 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd3762f4d1629c and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x3127ae7889f1b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bb0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bb4]:csrrs a7, fflags, zero
	-[0x80001bb8]:fsd fa3, 1024(a5)
Current Store : [0x80001bbc] : sd a7, 1032(a5) -- Store: [0x80005108]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe3796147a7f97 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x9c78deb52422f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xb8c53c7075937 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bd4]:csrrs a7, fflags, zero
	-[0x80001bd8]:fsd fa3, 1040(a5)
Current Store : [0x80001bdc] : sd a7, 1048(a5) -- Store: [0x80005118]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x75ac81c4b8321 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xcc3488366e29b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xa890736371391 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001bf0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001bf4]:csrrs a7, fflags, zero
	-[0x80001bf8]:fsd fa3, 1056(a5)
Current Store : [0x80001bfc] : sd a7, 1064(a5) -- Store: [0x80005128]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9ed4cb2685903 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xcde8b20967d0b and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x022cc846c30a3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c14]:csrrs a7, fflags, zero
	-[0x80001c18]:fsd fa3, 1072(a5)
Current Store : [0x80001c1c] : sd a7, 1080(a5) -- Store: [0x80005138]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x0084bbfe5e825 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd1ca42e21585b and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x011b663a50b74 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c34]:csrrs a7, fflags, zero
	-[0x80001c38]:fsd fa3, 1088(a5)
Current Store : [0x80001c3c] : sd a7, 1096(a5) -- Store: [0x80005148]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x209a1991e3307 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x82f8c4c611b4f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x4cf9b6d0099f2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c54]:csrrs a7, fflags, zero
	-[0x80001c58]:fsd fa3, 1104(a5)
Current Store : [0x80001c5c] : sd a7, 1112(a5) -- Store: [0x80005158]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x2ab10cf910f7c and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd0f42c0dfaf72 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x0cb3ff617ed40 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c74]:csrrs a7, fflags, zero
	-[0x80001c78]:fsd fa3, 1120(a5)
Current Store : [0x80001c7c] : sd a7, 1128(a5) -- Store: [0x80005168]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x914e0c751c4f4 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x36979c7be0deb and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xfdac30cd1ac8c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001c90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001c94]:csrrs a7, fflags, zero
	-[0x80001c98]:fsd fa3, 1136(a5)
Current Store : [0x80001c9c] : sd a7, 1144(a5) -- Store: [0x80005178]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x092178fb945a5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x05c5ccdf19706 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x42a7e15c7b5b6 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cb0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cb4]:csrrs a7, fflags, zero
	-[0x80001cb8]:fsd fa3, 1152(a5)
Current Store : [0x80001cbc] : sd a7, 1160(a5) -- Store: [0x80005188]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb0580f98a7dbd and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x84129978f9c19 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x7bc1026d3b4dc and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cd4]:csrrs a7, fflags, zero
	-[0x80001cd8]:fsd fa3, 1168(a5)
Current Store : [0x80001cdc] : sd a7, 1176(a5) -- Store: [0x80005198]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x862435d9f084c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x1ecf7d50e7867 and fs3 == 1 and fe3 == 0x7ee and fm3 == 0xbf29c86e35d1a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001cf0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001cf4]:csrrs a7, fflags, zero
	-[0x80001cf8]:fsd fa3, 1184(a5)
Current Store : [0x80001cfc] : sd a7, 1192(a5) -- Store: [0x800051a8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x3ff0da6c98f6f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x699f5f701628b and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xddc3a78722ea3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d10]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d14]:csrrs a7, fflags, zero
	-[0x80001d18]:fsd fa3, 1200(a5)
Current Store : [0x80001d1c] : sd a7, 1208(a5) -- Store: [0x800051b8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x898a6dfea4b33 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4201da1346303 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xc24127000516f and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d30]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d34]:csrrs a7, fflags, zero
	-[0x80001d38]:fsd fa3, 1216(a5)
Current Store : [0x80001d3c] : sd a7, 1224(a5) -- Store: [0x800051c8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x3ccae6dd9195e and fs2 == 0 and fe2 == 0x5f3 and fm2 == 0xfda686ffdecff and fs3 == 1 and fe3 == 0x7ee and fm3 == 0xba61ec2c341df and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d50]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d54]:csrrs a7, fflags, zero
	-[0x80001d58]:fsd fa3, 1232(a5)
Current Store : [0x80001d5c] : sd a7, 1240(a5) -- Store: [0x800051d8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xa10df54b7350b and fs2 == 0 and fe2 == 0x5f1 and fm2 == 0xe32c6a43223ff and fs3 == 1 and fe3 == 0x7e9 and fm3 == 0xd9e02cde9603c and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d70]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d74]:csrrs a7, fflags, zero
	-[0x80001d78]:fsd fa3, 1248(a5)
Current Store : [0x80001d7c] : sd a7, 1256(a5) -- Store: [0x800051e8]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5fa and fm1 == 0x8908351afd340 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xba13e3965dc9d and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xfe6be2c9ed025 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001d90]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001d94]:csrrs a7, fflags, zero
	-[0x80001d98]:fsd fa3, 1264(a5)
Current Store : [0x80001d9c] : sd a7, 1272(a5) -- Store: [0x800051f8]:0x0000000000000001




Last Coverpoint : ['opcode : fmadd.d', 'rs1 : f10', 'rs2 : f11', 'rs3 : f12', 'rd : f13', 'rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd', 'fs1 == 0 and fe1 == 0x5fa and fm1 == 0x97605fecf75de and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc8df50f6d17e1 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xb51b0fc055d0b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001db0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001db4]:csrrs a7, fflags, zero
	-[0x80001db8]:fsd fa3, 1280(a5)
Current Store : [0x80001dbc] : sd a7, 1288(a5) -- Store: [0x80005208]:0x0000000000000001




Last Coverpoint : ['fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x1b9e168e5b379 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x1dc9fa26c1435 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x8ae366f745bf3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80001dd0]:fmadd.d fa3, fa0, fa1, fa2, dyn
	-[0x80001dd4]:csrrs a7, fflags, zero
	-[0x80001dd8]:fsd fa3, 1296(a5)
Current Store : [0x80001ddc] : sd a7, 1304(a5) -- Store: [0x80005218]:0x0000000000000001





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

|s.no|            signature             |                                                                                                                                                                        coverpoints                                                                                                                                                                        |                                                             code                                                             |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004510]<br>0xADFEEDBEADFEEDBE|- opcode : fmadd.d<br> - rs1 : f5<br> - rs2 : f2<br> - rs3 : f2<br> - rd : f9<br> - rs2 == rs3 != rs1 and rs2 == rs3 != rd and rd != rs1<br>                                                                                                                                                                                                               |[0x800003c0]:fmadd.d fs1, ft5, ft2, ft2, dyn<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsd fs1, 0(a5)<br>      |
|   2|[0x80004520]<br>0xDBEADFEEDBEADFEE|- rs1 : f21<br> - rs2 : f21<br> - rs3 : f21<br> - rd : f21<br> - rs1 == rs2 == rs3 == rd<br>                                                                                                                                                                                                                                                               |[0x800003e0]:fmadd.d fs5, fs5, fs5, fs5, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsd fs5, 16(a5)<br>     |
|   3|[0x80004530]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f3<br> - rs2 : f8<br> - rs3 : f23<br> - rd : f19<br> - rs1 != rs2 and rs1 != rd and rs1 != rs3 and rs2 != rs3 and rs2 != rd and rs3 != rd<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5b3a3e9fd9fb7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x852a7ebd7fae8 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x95322ae96bd46 and rm_val == 0  #nosat<br> |[0x80000400]:fmadd.d fs3, ft3, fs0, fs7, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fs3, 32(a5)<br>     |
|   4|[0x80004540]<br>0x0000000080000390|- rs1 : f30<br> - rs2 : f20<br> - rs3 : f30<br> - rd : f5<br> - rs1 == rs3 != rs2 and rs1 == rs3 != rd and rd != rs2<br>                                                                                                                                                                                                                                   |[0x80000420]:fmadd.d ft5, ft10, fs4, ft10, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsd ft5, 48(a5)<br>   |
|   5|[0x80004550]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f18<br> - rs2 : f18<br> - rs3 : f10<br> - rd : f31<br> - rs1 == rs2 != rs3 and rs1 == rs2 != rd and rd != rs3<br>                                                                                                                                                                                                                                  |[0x80000440]:fmadd.d ft11, fs2, fs2, fa0, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:fsd ft11, 64(a5)<br>   |
|   6|[0x80004560]<br>0x76DF56FF76DF56FF|- rs1 : f22<br> - rs2 : f26<br> - rs3 : f26<br> - rd : f26<br> - rd == rs2 == rs3 != rs1<br>                                                                                                                                                                                                                                                               |[0x80000460]:fmadd.d fs10, fs6, fs10, fs10, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd fs10, 80(a5)<br> |
|   7|[0x80004570]<br>0xF56FF76DF56FF76D|- rs1 : f9<br> - rs2 : f9<br> - rs3 : f9<br> - rd : f14<br> - rs1 == rs2 == rs3 != rd<br>                                                                                                                                                                                                                                                                  |[0x80000480]:fmadd.d fa4, fs1, fs1, fs1, dyn<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsd fa4, 96(a5)<br>     |
|   8|[0x80004580]<br>0x0000000080004510|- rs1 : f15<br> - rs2 : f17<br> - rs3 : f20<br> - rd : f15<br> - rs1 == rd != rs2 and rs1 == rd != rs3 and rs3 != rs2<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd988a750d58bd and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x464ca5c58934b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x37df22a77e501 and rm_val == 0  #nosat<br>                             |[0x800004a0]:fmadd.d fa5, fa5, fa7, fs4, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:fsd fa5, 112(a5)<br>    |
|   9|[0x80004590]<br>0x0000000A00000000|- rs1 : f27<br> - rs2 : f16<br> - rs3 : f3<br> - rd : f3<br> - rs3 == rd != rs1 and rs3 == rd != rs2 and rs2 != rs1<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xd0546b2b91d49 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdfcc2e217e8b4 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x75173fad371fe and rm_val == 0  #nosat<br>                               |[0x800004c0]:fmadd.d ft3, fs11, fa6, ft3, dyn<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd ft3, 128(a5)<br>   |
|  10|[0x800045a0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f24<br> - rs2 : f29<br> - rs3 : f24<br> - rd : f24<br> - rs1 == rd == rs3 != rs2<br>                                                                                                                                                                                                                                                               |[0x800004e0]:fmadd.d fs8, fs8, ft9, fs8, dyn<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:fsd fs8, 144(a5)<br>    |
|  11|[0x800045b0]<br>0x0000000000000000|- rs1 : f20<br> - rs2 : f0<br> - rs3 : f14<br> - rd : f0<br> - rs2 == rd != rs1 and rs2 == rd != rs3 and rs3 != rs1<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x97605fecf75de and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xc8df50f6d17e1 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xb51b0fc055d0b and rm_val == 0  #nosat<br>                               |[0x80000500]:fmadd.d ft0, fs4, ft0, fa4, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsd ft0, 160(a5)<br>    |
|  12|[0x800045c0]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f23<br> - rs2 : f23<br> - rs3 : f8<br> - rd : f23<br> - rs1 == rs2 == rd != rs3<br>                                                                                                                                                                                                                                                                |[0x80000520]:fmadd.d fs7, fs7, fs7, fs0, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd fs7, 176(a5)<br>    |
|  13|[0x800045d0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f11<br> - rs2 : f12<br> - rs3 : f25<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe230580ba7bd1 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe689920bde8c0 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x74f36484f1db8 and rm_val == 0  #nosat<br>                                                                                        |[0x80000540]:fmadd.d fs11, fa1, fa2, fs9, dyn<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:fsd fs11, 192(a5)<br>  |
|  14|[0x800045e0]<br>0x0000000080003000|- rs1 : f16<br> - rs2 : f30<br> - rs3 : f29<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x485dfab87c6eb and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xa1c5a75f20f3f and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x7ab15a2ee7a62 and rm_val == 0  #nosat<br>                                                                                         |[0x80000560]:fmadd.d ft6, fa6, ft10, ft9, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsd ft6, 208(a5)<br>   |
|  15|[0x800045f0]<br>0x56FF76DF56FF76DF|- rs1 : f25<br> - rs2 : f7<br> - rs3 : f19<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xa26ee9811427d and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xab3d27fb21645 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x7ba2dcfb1d2ee and rm_val == 0  #nosat<br>                                                                                         |[0x80000580]:fmadd.d fa0, fs9, ft7, fs3, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd fa0, 224(a5)<br>    |
|  16|[0x80004600]<br>0x0000000A00006000|- rs1 : f8<br> - rs2 : f22<br> - rs3 : f1<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x7a1e41518aac9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe5da67e1de883 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x520c7e0cfb5a9 and rm_val == 0  #nosat<br>                                                                                           |[0x800005a0]:fmadd.d ft2, fs0, fs6, ft1, dyn<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsd ft2, 240(a5)<br>    |
|  17|[0x80004610]<br>0xDF56FF76DF56FF76|- rs1 : f2<br> - rs2 : f11<br> - rs3 : f15<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x46206996b12da and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x5a57127f0185f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xe9e9f8eef4be9 and rm_val == 0  #nosat<br>                                                                                         |[0x800005c0]:fmadd.d fs2, ft2, fa1, fa5, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:fsd fs2, 256(a5)<br>    |
|  18|[0x80004620]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f14<br> - rs2 : f24<br> - rs3 : f22<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x7b5477fb4a141 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x2365849750ca3 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xf2f93eaa8f49c and rm_val == 0  #nosat<br>                                                                                        |[0x800005e0]:fmadd.d fs4, fa4, fs8, fs6, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd fs4, 272(a5)<br>    |
|  19|[0x80004630]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f28<br> - rs2 : f15<br> - rs3 : f6<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x2bdf74439828f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xae513826524d3 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xc4dfd98d8fab0 and rm_val == 0  #nosat<br>                                                                                         |[0x80000600]:fmadd.d fa1, ft8, fa5, ft6, dyn<br> [0x80000604]:csrrs a7, fflags, zero<br> [0x80000608]:fsd fa1, 288(a5)<br>    |
|  20|[0x80004640]<br>0x0000000000000001|- rs1 : f26<br> - rs2 : f28<br> - rs3 : f27<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x0ed09999e8c7f and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x50af5b268139f and fs3 == 1 and fe3 == 0x7ee and fm3 == 0x486a7fbd1745d and rm_val == 0  #nosat<br>                                                                                        |[0x80000620]:fmadd.d fa7, fs10, ft8, fs11, dyn<br> [0x80000624]:csrrs a7, fflags, zero<br> [0x80000628]:fsd fa7, 304(a5)<br>  |
|  21|[0x80004650]<br>0xFEEDBEADFEEDBEAD|- rs1 : f29<br> - rs2 : f27<br> - rs3 : f31<br> - rd : f1<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2a0b81afacd4f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xaddc37d4e3971 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xdd4f7fd3352c4 and rm_val == 0  #nosat<br>                                                                                         |[0x80000640]:fmadd.d ft1, ft9, fs11, ft11, dyn<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd ft1, 320(a5)<br>  |
|  22|[0x80004660]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f6<br> - rs2 : f10<br> - rs3 : f11<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x43790a4111099 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xf155693c9590b and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x3419c5771d835 and rm_val == 0  #nosat<br>                                                                                         |[0x80000660]:fmadd.d fa2, ft6, fa0, fa1, dyn<br> [0x80000664]:csrrs a7, fflags, zero<br> [0x80000668]:fsd fa2, 336(a5)<br>    |
|  23|[0x80004670]<br>0x0000000080003010|- rs1 : f1<br> - rs2 : f3<br> - rs3 : f28<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0xcb9c1949673fd and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe42ff54803ddc and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x5414e181d783d and rm_val == 0  #nosat<br>                                                                                          |[0x80000680]:fmadd.d fa6, ft1, ft3, ft8, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsd fa6, 352(a5)<br>    |
|  24|[0x80004680]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f31<br> - rs2 : f4<br> - rs3 : f5<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xa42b6311033e7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x29651713b2616 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x9bc4b692a0898 and rm_val == 0  #nosat<br>                                                                                           |[0x800006a0]:fmadd.d fs0, ft11, ft4, ft5, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd fs0, 368(a5)<br>   |
|  25|[0x80004690]<br>0xF76DF56FF76DF56F|- rs1 : f17<br> - rs2 : f31<br> - rs3 : f7<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0x4596be54ed4ed and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x78ecdf97d01e3 and fs3 == 1 and fe3 == 0x7ec and fm3 == 0xb07cd6bb5eba3 and rm_val == 0  #nosat<br>                                                                                         |[0x800006c0]:fmadd.d ft10, fa7, ft11, ft7, dyn<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:fsd ft10, 384(a5)<br> |
|  26|[0x800046a0]<br>0xEDBEADFEEDBEADFE|- rs1 : f12<br> - rs2 : f13<br> - rs3 : f4<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2ba7b825eeafb and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdfcf16f837dfc and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x781612265ff12 and rm_val == 0  #nosat<br>                                                                                         |[0x800006e0]:fmadd.d fs9, fa2, fa3, ft4, dyn<br> [0x800006e4]:csrrs a7, fflags, zero<br> [0x800006e8]:fsd fs9, 400(a5)<br>    |
|  27|[0x800046b0]<br>0x6DF56FF76DF56FF7|- rs1 : f7<br> - rs2 : f19<br> - rs3 : f18<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0xeedb9ccd51d70 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x72ef022ae1b5f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x799bd2f7f7f7b and rm_val == 0  #nosat<br>                                                                                         |[0x80000700]:fmadd.d fs6, ft7, fs3, fs2, dyn<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:fsd fs6, 416(a5)<br>    |
|  28|[0x800046c0]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f0<br> - rs2 : f6<br> - rs3 : f13<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x60b765da8eb85 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xeb18879086a84 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x2647f9c91011d and rm_val == 0  #nosat<br>                                                                                           |[0x80000720]:fmadd.d ft7, ft0, ft6, fa3, dyn<br> [0x80000724]:csrrs a7, fflags, zero<br> [0x80000728]:fsd ft7, 432(a5)<br>    |
|  29|[0x800046d0]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f10<br> - rs2 : f1<br> - rs3 : f12<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb7e5dd8914aef and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x7ef581743c7e7 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x240c935666a90 and rm_val == 0  #nosat<br>                                                                                          |[0x80000740]:fmadd.d ft4, fa0, ft1, fa2, dyn<br> [0x80000744]:csrrs a7, fflags, zero<br> [0x80000748]:fsd ft4, 448(a5)<br>    |
|  30|[0x800046e0]<br>0xEADFEEDBEADFEEDB|- rs1 : f4<br> - rs2 : f25<br> - rs3 : f17<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x79fd40d8406ff and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0x93dda7765991f and fs3 == 1 and fe3 == 0x7ee and fm3 == 0xd74553fb5476c and rm_val == 0  #nosat<br>                                                                                         |[0x80000760]:fmadd.d fa3, ft4, fs9, fa7, dyn<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsd fa3, 464(a5)<br>    |
|  31|[0x800046f0]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f13<br> - rs2 : f14<br> - rs3 : f0<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe063e979a868f and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xf8941b7ef6d0f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xd6069070d1d5c and rm_val == 0  #nosat<br>                                                                                         |[0x80000780]:fmadd.d ft8, fa3, fa4, ft0, dyn<br> [0x80000784]:csrrs a7, fflags, zero<br> [0x80000788]:fsd ft8, 480(a5)<br>    |
|  32|[0x80004700]<br>0xEEDBEADFEEDBEADF|- rs1 : f19<br> - rs2 : f5<br> - rs3 : f16<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xa9f06400d3d17 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xa3695ba8b56f7 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xc751c75ad2875 and rm_val == 0  #nosat<br>                                                                                         |[0x800007a0]:fmadd.d ft9, fs3, ft5, fa6, dyn<br> [0x800007a4]:csrrs a7, fflags, zero<br> [0x800007a8]:fsd ft9, 496(a5)<br>    |
|  33|[0x80004710]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa354d897694eb and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x20d71331741df and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x9358eb0bae12a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800007c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:fsd fa3, 512(a5)<br>    |
|  34|[0x80004720]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x643a0f16c5ad9 and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x46821d48c93bf and fs3 == 1 and fe3 == 0x7e9 and fm3 == 0x754ea500ae50f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800007e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800007e4]:csrrs a7, fflags, zero<br> [0x800007e8]:fsd fa3, 528(a5)<br>    |
|  35|[0x80004730]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x2011ca3e25417 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x6fe019d88c167 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x91cc6f7dc12ee and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000800]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000804]:csrrs a7, fflags, zero<br> [0x80000808]:fsd fa3, 544(a5)<br>    |
|  36|[0x80004740]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xecab0c14c497e and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x71f120502a5e1 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x48042261bbfd9 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000820]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000824]:csrrs a7, fflags, zero<br> [0x80000828]:fsd fa3, 560(a5)<br>    |
|  37|[0x80004750]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5f72319ab0728 and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0xedb823f91667f and fs3 == 1 and fe3 == 0x7ed and fm3 == 0xb5ae3c72d0fbd and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000840]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000844]:csrrs a7, fflags, zero<br> [0x80000848]:fsd fa3, 576(a5)<br>    |
|  38|[0x80004760]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x77f3763d1768f and fs2 == 0 and fe2 == 0x5f5 and fm2 == 0xf700ae54ab8df and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x98b3ed8116b23 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000860]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000864]:csrrs a7, fflags, zero<br> [0x80000868]:fsd fa3, 592(a5)<br>    |
|  39|[0x80004770]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xa99dd8880ddad and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x965e42d4900a7 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x319f49fd180c9 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000880]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000884]:csrrs a7, fflags, zero<br> [0x80000888]:fsd fa3, 608(a5)<br>    |
|  40|[0x80004780]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x21cc73db02f94 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd883cdc560c7e and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x12eaef9d347ee and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800008a0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008a4]:csrrs a7, fflags, zero<br> [0x800008a8]:fsd fa3, 624(a5)<br>    |
|  41|[0x80004790]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x38a399f905ab9 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xd0ab984a97eef and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x45bfa5f58dd4f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800008c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008c4]:csrrs a7, fflags, zero<br> [0x800008c8]:fsd fa3, 640(a5)<br>    |
|  42|[0x800047a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x8f0cf46027883 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x65a21c61847d5 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x43461fe0716b7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800008e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa3, 656(a5)<br>    |
|  43|[0x800047b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x7ee0eb8d7cc7f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xa387a3789eb22 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x1729b94c44f59 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000900]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000904]:csrrs a7, fflags, zero<br> [0x80000908]:fsd fa3, 672(a5)<br>    |
|  44|[0x800047c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5540f3246eb3d and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x24c28db80e5f8 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x31f7ea360741c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000920]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000924]:csrrs a7, fflags, zero<br> [0x80000928]:fsd fa3, 688(a5)<br>    |
|  45|[0x800047d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf1d543a0b07fb and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xcd593b01b4bb4 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x8c4f0f96cf778 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000940]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000944]:csrrs a7, fflags, zero<br> [0x80000948]:fsd fa3, 704(a5)<br>    |
|  46|[0x800047e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x349747e9ba0b7 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x6db2c39b92e2f and fs3 == 1 and fe3 == 0x7ea and fm3 == 0xcf77f8f2dd2a4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000960]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000964]:csrrs a7, fflags, zero<br> [0x80000968]:fsd fa3, 720(a5)<br>    |
|  47|[0x800047f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x8363338c30c8b and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xd266ca2da38e1 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x290c44846caf2 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000980]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000984]:csrrs a7, fflags, zero<br> [0x80000988]:fsd fa3, 736(a5)<br>    |
|  48|[0x80004800]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x83554309c673f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x9071429916f5c and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x50844037d0cb0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800009a0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009a4]:csrrs a7, fflags, zero<br> [0x800009a8]:fsd fa3, 752(a5)<br>    |
|  49|[0x80004810]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9ed93307c783a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x09bb537711521 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x717d546119875 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800009c0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009c4]:csrrs a7, fflags, zero<br> [0x800009c8]:fsd fa3, 768(a5)<br>    |
|  50|[0x80004820]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd572442fbaed2 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xbebcdefd48729 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x055324a75b334 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800009e0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800009e4]:csrrs a7, fflags, zero<br> [0x800009e8]:fsd fa3, 784(a5)<br>    |
|  51|[0x80004830]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x0451c9f55e3a7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd2d54358cf2fc and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x7d04d555cf92f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000a00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsd fa3, 800(a5)<br>    |
|  52|[0x80004840]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5d7485adabe61 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x3e7bb112f7fe8 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x6fae77a8696d4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000a20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a24]:csrrs a7, fflags, zero<br> [0x80000a28]:fsd fa3, 816(a5)<br>    |
|  53|[0x80004850]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x43be7b7bc5458 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x59f961d342ac1 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x7f21ef4bb0ccd and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000a40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a44]:csrrs a7, fflags, zero<br> [0x80000a48]:fsd fa3, 832(a5)<br>    |
|  54|[0x80004860]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc336b043d9acb and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x38619d6cda314 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x255c2ae58b297 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000a60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a64]:csrrs a7, fflags, zero<br> [0x80000a68]:fsd fa3, 848(a5)<br>    |
|  55|[0x80004870]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x889db2e44701b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x8d86e8b1c1eba and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x36bc974816679 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000a80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000a84]:csrrs a7, fflags, zero<br> [0x80000a88]:fsd fa3, 864(a5)<br>    |
|  56|[0x80004880]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xaf47876670d7f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x19295f298916c and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x357686d2489ca and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000aa0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000aa4]:csrrs a7, fflags, zero<br> [0x80000aa8]:fsd fa3, 880(a5)<br>    |
|  57|[0x80004890]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x09f50264a8d1f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x3c1be8887e304 and fs3 == 1 and fe3 == 0x7ef and fm3 == 0xe6150c4fb0b24 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ac0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ac4]:csrrs a7, fflags, zero<br> [0x80000ac8]:fsd fa3, 896(a5)<br>    |
|  58|[0x800048a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x814b2c67ea80f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xe230c7e39a5d7 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x33ef8d4bcae83 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ae0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ae4]:csrrs a7, fflags, zero<br> [0x80000ae8]:fsd fa3, 912(a5)<br>    |
|  59|[0x800048b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xa501ef8480c55 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x393a07ddd783a and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x3bee9a8deabe0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000b00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b04]:csrrs a7, fflags, zero<br> [0x80000b08]:fsd fa3, 928(a5)<br>    |
|  60|[0x800048c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x58dabbecb7711 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x360373cf6f10f and fs3 == 1 and fe3 == 0x7ed and fm3 == 0x6350da2026bcc and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000b20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b24]:csrrs a7, fflags, zero<br> [0x80000b28]:fsd fa3, 944(a5)<br>    |
|  61|[0x800048d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf7a288f1ea41f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xba05c226869f4 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xebddb9e10bb5e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000b40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b44]:csrrs a7, fflags, zero<br> [0x80000b48]:fsd fa3, 960(a5)<br>    |
|  62|[0x800048e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0xc6e0a7c4777ef and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x265eb5ece1e0f and fs3 == 1 and fe3 == 0x7ed and fm3 == 0x307d11f19dfcf and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000b60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b64]:csrrs a7, fflags, zero<br> [0x80000b68]:fsd fa3, 976(a5)<br>    |
|  63|[0x800048f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x04c0c63d2bf03 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x25fa7c5d5ea39 and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x97603980bff48 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000b80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000b84]:csrrs a7, fflags, zero<br> [0x80000b88]:fsd fa3, 992(a5)<br>    |
|  64|[0x80004900]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9ebd3d588e341 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0xfe0614a7b9fbf and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x28a55782e1fb6 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ba0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ba4]:csrrs a7, fflags, zero<br> [0x80000ba8]:fsd fa3, 1008(a5)<br>   |
|  65|[0x80004910]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe2c9f3b4cd220 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x36127b62e0a11 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x5a23186c25911 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000bc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000bc4]:csrrs a7, fflags, zero<br> [0x80000bc8]:fsd fa3, 1024(a5)<br>   |
|  66|[0x80004920]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x0491012a9572d and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x0cc870fcad57f and fs3 == 1 and fe3 == 0x7ee and fm3 == 0x32a96f016ff19 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000be0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000be4]:csrrs a7, fflags, zero<br> [0x80000be8]:fsd fa3, 1040(a5)<br>   |
|  67|[0x80004930]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5ee and fm1 == 0xf8c6f685f5fff and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x74ac1f4d6cd77 and fs3 == 1 and fe3 == 0x7e7 and fm3 == 0x6a6030b60fe4e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000c00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c04]:csrrs a7, fflags, zero<br> [0x80000c08]:fsd fa3, 1056(a5)<br>   |
|  68|[0x80004940]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb3dfc53758807 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x989b40414f92c and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xdd46c48b6bcdb and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000c20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c24]:csrrs a7, fflags, zero<br> [0x80000c28]:fsd fa3, 1072(a5)<br>   |
|  69|[0x80004950]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x950338fe39141 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x8de500cdc0435 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x045e7386317e1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000c40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c44]:csrrs a7, fflags, zero<br> [0x80000c48]:fsd fa3, 1088(a5)<br>   |
|  70|[0x80004960]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x327d919abde6a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xa6c1b4fe3e3c0 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x06120e7e7d6d0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000c60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c64]:csrrs a7, fflags, zero<br> [0x80000c68]:fsd fa3, 1104(a5)<br>   |
|  71|[0x80004970]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xcfc27db04baa5 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xa61a4a4a276db and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x6340398b7087f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000c80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000c84]:csrrs a7, fflags, zero<br> [0x80000c88]:fsd fa3, 1120(a5)<br>   |
|  72|[0x80004980]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x840470e668bb1 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xfb271584e30d0 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x850257e209bf2 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ca0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ca4]:csrrs a7, fflags, zero<br> [0x80000ca8]:fsd fa3, 1136(a5)<br>   |
|  73|[0x80004990]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x25d29d05cd288 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5b6db472d3462 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x36db5ad4ff389 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000cc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000cc4]:csrrs a7, fflags, zero<br> [0x80000cc8]:fsd fa3, 1152(a5)<br>   |
|  74|[0x800049a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x028f51d8767f7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xcd5bbb21e85e5 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xcfb553a1cd97f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ce0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ce4]:csrrs a7, fflags, zero<br> [0x80000ce8]:fsd fa3, 1168(a5)<br>   |
|  75|[0x800049b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x30c845de62d3f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4fea329d7caef and fs3 == 1 and fe3 == 0x7ee and fm3 == 0x91ddfdf13e6da and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000d00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d04]:csrrs a7, fflags, zero<br> [0x80000d08]:fsd fa3, 1184(a5)<br>   |
|  76|[0x800049c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb01ad41cb5aef and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x5287546e52d99 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xdf9621122a87f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000d20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d24]:csrrs a7, fflags, zero<br> [0x80000d28]:fsd fa3, 1200(a5)<br>   |
|  77|[0x800049d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xccfc542168107 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x4cdb8933a8b6f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x271c95f5daa85 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000d40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d44]:csrrs a7, fflags, zero<br> [0x80000d48]:fsd fa3, 1216(a5)<br>   |
|  78|[0x800049e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x5ab2c30876547 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xbcdfd8ba97c91 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x215ee7393d726 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000d60]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d64]:csrrs a7, fflags, zero<br> [0x80000d68]:fsd fa3, 1232(a5)<br>   |
|  79|[0x800049f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6faef3ad3537e and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x9d365cde1b8c2 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x150ca5c3fdc01 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000d80]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000d84]:csrrs a7, fflags, zero<br> [0x80000d88]:fsd fa3, 1248(a5)<br>   |
|  80|[0x80004a00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x917e47c9fa5a6 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xaf465058419e9 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x1a16241529a49 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000da0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000da4]:csrrs a7, fflags, zero<br> [0x80000da8]:fsd fa3, 1264(a5)<br>   |
|  81|[0x80004a10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x228e5619b5bff and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x2fdaf9dfde227 and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x0047ab31226ad and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000dc0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000dc4]:csrrs a7, fflags, zero<br> [0x80000dc8]:fsd fa3, 1280(a5)<br>   |
|  82|[0x80004a20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xecd582efcf7c1 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xcc4ac8145e5cc and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x4256d2f4b6d2a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000de0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000de4]:csrrs a7, fflags, zero<br> [0x80000de8]:fsd fa3, 1296(a5)<br>   |
|  83|[0x80004a30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x3833da7b9aa37 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xc00c1c027c00f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x6882fac4a9e9f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000e00]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e04]:csrrs a7, fflags, zero<br> [0x80000e08]:fsd fa3, 1312(a5)<br>   |
|  84|[0x80004a40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xfe9d365149cd7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x57132c37fb117 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x1109228ba4470 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000e20]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e24]:csrrs a7, fflags, zero<br> [0x80000e28]:fsd fa3, 1328(a5)<br>   |
|  85|[0x80004a50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd5872438d16b0 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x4a33096ab139b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x2fc0a075f656a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000e40]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e44]:csrrs a7, fflags, zero<br> [0x80000e48]:fsd fa3, 1344(a5)<br>   |
|  86|[0x80004a60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5c1fb79b16587 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xc15c34215bcf5 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x34572be65abc1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000e64]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e68]:csrrs a7, fflags, zero<br> [0x80000e6c]:fsd fa3, 1360(a5)<br>   |
|  87|[0x80004a70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xf74a5c9f39c6c and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x2fed65905c04f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x62fab3213dc60 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000e84]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000e88]:csrrs a7, fflags, zero<br> [0x80000e8c]:fsd fa3, 1376(a5)<br>   |
|  88|[0x80004a80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x17c09874ed591 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x35eecb1ad0a6b and fs3 == 1 and fe3 == 0x7ec and fm3 == 0xea517be6bff82 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ea4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ea8]:csrrs a7, fflags, zero<br> [0x80000eac]:fsd fa3, 1392(a5)<br>   |
|  89|[0x80004a90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x2bbbe71ac902b and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x957151755a3ab and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x2740a1a06f199 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ec4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ec8]:csrrs a7, fflags, zero<br> [0x80000ecc]:fsd fa3, 1408(a5)<br>   |
|  90|[0x80004aa0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x58e517fcf82df and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe55b30b309254 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x005c6b2175896 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000ee4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000ee8]:csrrs a7, fflags, zero<br> [0x80000eec]:fsd fa3, 1424(a5)<br>   |
|  91|[0x80004ab0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0xe70e78fe823f7 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x97812620d4535 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x33516584e5be3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000f04]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f08]:csrrs a7, fflags, zero<br> [0x80000f0c]:fsd fa3, 1440(a5)<br>   |
|  92|[0x80004ac0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xce576b61a6f6e and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xce7352604fe6b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x0dd58a5de5e5f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000f24]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f28]:csrrs a7, fflags, zero<br> [0x80000f2c]:fsd fa3, 1456(a5)<br>   |
|  93|[0x80004ad0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x058fe9a4daa6f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xba2704f6953c8 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x0d3ea4c4b2fc7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000f44]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f48]:csrrs a7, fflags, zero<br> [0x80000f4c]:fsd fa3, 1472(a5)<br>   |
|  94|[0x80004ae0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x8de0124aa943c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xb992011891a75 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xb83d80609d323 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000f64]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f68]:csrrs a7, fflags, zero<br> [0x80000f6c]:fsd fa3, 1488(a5)<br>   |
|  95|[0x80004af0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x792be19c2d7a1 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xfa174e3ff15ce and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x138b42bd39e2e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000f84]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000f88]:csrrs a7, fflags, zero<br> [0x80000f8c]:fsd fa3, 1504(a5)<br>   |
|  96|[0x80004b00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x2b76882db8d56 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5bcd8bcde77b5 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xd579e9510070f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000fa4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fa8]:csrrs a7, fflags, zero<br> [0x80000fac]:fsd fa3, 1520(a5)<br>   |
|  97|[0x80004b10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x09badb528c6c8 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xcb4f3175c7901 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xe79e6e9a4ceca and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000fc4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fc8]:csrrs a7, fflags, zero<br> [0x80000fcc]:fsd fa3, 1536(a5)<br>   |
|  98|[0x80004b20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0xf4fdc18a0c20f and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x01430191b8abf and fs3 == 1 and fe3 == 0x7eb and fm3 == 0x3131982a68eb4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80000fe4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80000fe8]:csrrs a7, fflags, zero<br> [0x80000fec]:fsd fa3, 1552(a5)<br>   |
|  99|[0x80004b30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x0da8a99d945d7 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x5ace7a656588f and fs3 == 1 and fe3 == 0x7ed and fm3 == 0x6d803e35df8f2 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001004]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001008]:csrrs a7, fflags, zero<br> [0x8000100c]:fsd fa3, 1568(a5)<br>   |
| 100|[0x80004b40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x8095c6672ee3f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xf2f998bf74bb4 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x0eb29b83e3912 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001024]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001028]:csrrs a7, fflags, zero<br> [0x8000102c]:fsd fa3, 1584(a5)<br>   |
| 101|[0x80004b50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc9eec489f6667 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd6e174caa8db2 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x3a663b45ff674 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001044]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001048]:csrrs a7, fflags, zero<br> [0x8000104c]:fsd fa3, 1600(a5)<br>   |
| 102|[0x80004b60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xb4c5ad04d76dd and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x3526172ae3f6b and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x17cfde3d71338 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001064]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001068]:csrrs a7, fflags, zero<br> [0x8000106c]:fsd fa3, 1616(a5)<br>   |
| 103|[0x80004b70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x5fe6340fe9dff and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xea95a80ed95a1 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x95298a53abfd7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001084]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001088]:csrrs a7, fflags, zero<br> [0x8000108c]:fsd fa3, 1632(a5)<br>   |
| 104|[0x80004b80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe56179ab25747 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xae83ac33105f8 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x3672c44440fe2 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800010a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010a8]:csrrs a7, fflags, zero<br> [0x800010ac]:fsd fa3, 1648(a5)<br>   |
| 105|[0x80004b90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xa8acc80de84a1 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x9724cf1f251b7 and fs3 == 1 and fe3 == 0x7ee and fm3 == 0xed8b9dd834c90 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800010c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010c8]:csrrs a7, fflags, zero<br> [0x800010cc]:fsd fa3, 1664(a5)<br>   |
| 106|[0x80004ba0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x22411e9af7a5f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x9cd85f6af39ef and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x3a4f72c176f8f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800010e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800010e8]:csrrs a7, fflags, zero<br> [0x800010ec]:fsd fa3, 1680(a5)<br>   |
| 107|[0x80004bb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x8b50ed3b44d4f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x6fcb3adb66bfb and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x0ee2098e10b2b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001104]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001108]:csrrs a7, fflags, zero<br> [0x8000110c]:fsd fa3, 1696(a5)<br>   |
| 108|[0x80004bc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x2c72e28eb4ecd and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xe989c8dd81bc5 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xb4d0e883832a6 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001124]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001128]:csrrs a7, fflags, zero<br> [0x8000112c]:fsd fa3, 1712(a5)<br>   |
| 109|[0x80004bd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x287ac6ae322ff and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x9444597ea17b3 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xa6ca8e992a92b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001144]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001148]:csrrs a7, fflags, zero<br> [0x8000114c]:fsd fa3, 1728(a5)<br>   |
| 110|[0x80004be0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x5188d91417d2f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x4f961e264020f and fs3 == 1 and fe3 == 0x7ea and fm3 == 0x0014259a9d1ca and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001164]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001168]:csrrs a7, fflags, zero<br> [0x8000116c]:fsd fa3, 1744(a5)<br>   |
| 111|[0x80004bf0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6fdf2805ff4db and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x5a5fc5e3c3eed and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x79bf018eb15f6 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001184]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001188]:csrrs a7, fflags, zero<br> [0x8000118c]:fsd fa3, 1760(a5)<br>   |
| 112|[0x80004c00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x354ba34578ba7 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x5569022b338ff and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x5b1c55af8c1f7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800011a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011a8]:csrrs a7, fflags, zero<br> [0x800011ac]:fsd fa3, 1776(a5)<br>   |
| 113|[0x80004c10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xa9aa2b6025f07 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x2c9bb6d2a0534 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xef63e02c8b1d3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800011c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011c8]:csrrs a7, fflags, zero<br> [0x800011cc]:fsd fa3, 1792(a5)<br>   |
| 114|[0x80004c20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x47c0965bde424 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x7d6356ef8a62f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xc33e8cba5f275 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800011e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800011e8]:csrrs a7, fflags, zero<br> [0x800011ec]:fsd fa3, 1808(a5)<br>   |
| 115|[0x80004c30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x4f8b971fa5a72 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x6cba246939a56 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x741491d1c33c2 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001204]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001208]:csrrs a7, fflags, zero<br> [0x8000120c]:fsd fa3, 1824(a5)<br>   |
| 116|[0x80004c40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x5819e362ac2bf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7f8e997d84592 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x33f7bcfad4bfe and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001224]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001228]:csrrs a7, fflags, zero<br> [0x8000122c]:fsd fa3, 1840(a5)<br>   |
| 117|[0x80004c50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe49bfb977b300 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe07b0ce451645 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x47faf4a1851af and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001244]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001248]:csrrs a7, fflags, zero<br> [0x8000124c]:fsd fa3, 1856(a5)<br>   |
| 118|[0x80004c60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x4d1d10d2ac62f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5cab9bd09e6c4 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x90bf25aaee783 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001264]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001268]:csrrs a7, fflags, zero<br> [0x8000126c]:fsd fa3, 1872(a5)<br>   |
| 119|[0x80004c70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xbe64efc9e258d and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x1d17766cf56c7 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xe7e37410f0d87 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001284]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001288]:csrrs a7, fflags, zero<br> [0x8000128c]:fsd fa3, 1888(a5)<br>   |
| 120|[0x80004c80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0aaee2f44e344 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4d3375e946b52 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xc5488f2fa902b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800012a4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012a8]:csrrs a7, fflags, zero<br> [0x800012ac]:fsd fa3, 1904(a5)<br>   |
| 121|[0x80004c90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x95adca0768ede and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb9042a506a4fd and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x2ed049ef3364c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800012c4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012c8]:csrrs a7, fflags, zero<br> [0x800012cc]:fsd fa3, 1920(a5)<br>   |
| 122|[0x80004ca0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x4d30da0b2f54f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x194e95f4fa0e5 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x908f82a17459c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800012e4]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800012e8]:csrrs a7, fflags, zero<br> [0x800012ec]:fsd fa3, 1936(a5)<br>   |
| 123|[0x80004cb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x9a5710f3828f7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb537603b0ea8b and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xa6cd29764cb43 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001304]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001308]:csrrs a7, fflags, zero<br> [0x8000130c]:fsd fa3, 1952(a5)<br>   |
| 124|[0x80004cc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xbf4f8dd35ac8c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x1eb3cbd822141 and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x586a42c0c50e6 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001324]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001328]:csrrs a7, fflags, zero<br> [0x8000132c]:fsd fa3, 1968(a5)<br>   |
| 125|[0x80004cd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x9086506183f67 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0xe707c5377ae9f and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x0b40f9d038d42 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001344]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001348]:csrrs a7, fflags, zero<br> [0x8000134c]:fsd fa3, 1984(a5)<br>   |
| 126|[0x80004ce0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f2 and fm1 == 0x3502bebc53fff and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xa53d0d2b3faec and fs3 == 1 and fe3 == 0x7ec and fm3 == 0xdfa3c64a1220c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001364]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001368]:csrrs a7, fflags, zero<br> [0x8000136c]:fsd fa3, 2000(a5)<br>   |
| 127|[0x80004cf0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x43c3f0806f2cd and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xb54c6b03a8983 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x38abb1e2c0a2a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001384]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001388]:csrrs a7, fflags, zero<br> [0x8000138c]:fsd fa3, 2016(a5)<br>   |
| 128|[0x80004d00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xf940aa40f1530 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x9b75de798ac5f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x0511fb3f32564 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800013ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013b0]:csrrs a7, fflags, zero<br> [0x800013b4]:fsd fa3, 0(a5)<br>      |
| 129|[0x80004d10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x442435bea0eb5 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x55e18bacc608f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xdb35dd749b764 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800013cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013d0]:csrrs a7, fflags, zero<br> [0x800013d4]:fsd fa3, 16(a5)<br>     |
| 130|[0x80004d20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9ff4d99a919c7 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x8106d28c6e8ff and fs3 == 1 and fe3 == 0x7e9 and fm3 == 0x7353e6e0e83d4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800013ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800013f0]:csrrs a7, fflags, zero<br> [0x800013f4]:fsd fa3, 32(a5)<br>     |
| 131|[0x80004d30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xde18ff8661b6b and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x9e3b4234a7716 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x82c09c5b7a66b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000140c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001410]:csrrs a7, fflags, zero<br> [0x80001414]:fsd fa3, 48(a5)<br>     |
| 132|[0x80004d40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc48b48c27d811 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xfa73e129b8879 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x33f36cc052485 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000142c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001430]:csrrs a7, fflags, zero<br> [0x80001434]:fsd fa3, 64(a5)<br>     |
| 133|[0x80004d50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf2f5c0f43aa65 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x1f707766a790b and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x11f91999d48e3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000144c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001450]:csrrs a7, fflags, zero<br> [0x80001454]:fsd fa3, 80(a5)<br>     |
| 134|[0x80004d60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x0972c859cb481 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x42f12d7244f4f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x3c65121fba9a0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000146c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001470]:csrrs a7, fflags, zero<br> [0x80001474]:fsd fa3, 96(a5)<br>     |
| 135|[0x80004d70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x530b56ed605ac and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x7f381ca9a6b2f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x19806f82c8793 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000148c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001490]:csrrs a7, fflags, zero<br> [0x80001494]:fsd fa3, 112(a5)<br>    |
| 136|[0x80004d80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x9bebe66f937a7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x6756366451777 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x506140d0f719e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800014ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014b0]:csrrs a7, fflags, zero<br> [0x800014b4]:fsd fa3, 128(a5)<br>    |
| 137|[0x80004d90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xc0377eab1f21f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x22e4be37f86cb and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x2a3fa94059d34 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800014cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014d0]:csrrs a7, fflags, zero<br> [0x800014d4]:fsd fa3, 144(a5)<br>    |
| 138|[0x80004da0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xea52ea391cf03 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x465936dcae3fb and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x8462898630b28 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800014ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800014f0]:csrrs a7, fflags, zero<br> [0x800014f4]:fsd fa3, 160(a5)<br>    |
| 139|[0x80004db0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f1 and fm1 == 0x8f90cc1b18bff and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x89d995b2d6507 and fs3 == 1 and fe3 == 0x7ea and fm3 == 0x9928782bffd00 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000150c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001510]:csrrs a7, fflags, zero<br> [0x80001514]:fsd fa3, 176(a5)<br>    |
| 140|[0x80004dc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x8d5463dfce629 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xa85d306a197c5 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xcbf3d2b9a76d1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000152c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001530]:csrrs a7, fflags, zero<br> [0x80001534]:fsd fa3, 192(a5)<br>    |
| 141|[0x80004dd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x447a9936a43d3 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x3dfdc8c878541 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xca7b44794a627 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000154c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001550]:csrrs a7, fflags, zero<br> [0x80001554]:fsd fa3, 208(a5)<br>    |
| 142|[0x80004de0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x26c977d632159 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x6fd2704b8e37f and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x67cf4741a885b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000156c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001570]:csrrs a7, fflags, zero<br> [0x80001574]:fsd fa3, 224(a5)<br>    |
| 143|[0x80004df0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xebc97dc31d5a7 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xe800919ed6413 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x2fa2b9b8bdd04 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000158c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001590]:csrrs a7, fflags, zero<br> [0x80001594]:fsd fa3, 240(a5)<br>    |
| 144|[0x80004e00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x57fa825e98147 and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x76587e2d6216f and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x69b66f0339a99 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800015ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015b0]:csrrs a7, fflags, zero<br> [0x800015b4]:fsd fa3, 256(a5)<br>    |
| 145|[0x80004e10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x1f06fdec36709 and fs2 == 0 and fe2 == 0x5f4 and fm2 == 0x97836753c7c7f and fs3 == 1 and fe3 == 0x7ed and fm3 == 0xd84d8a3ea830a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800015cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015d0]:csrrs a7, fflags, zero<br> [0x800015d4]:fsd fa3, 272(a5)<br>    |
| 146|[0x80004e20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x6db92bb1bf075 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xace1ecea16623 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xcaf4f7088a4d0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800015ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800015f0]:csrrs a7, fflags, zero<br> [0x800015f4]:fsd fa3, 288(a5)<br>    |
| 147|[0x80004e30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x2362beb7fcccc and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x04673c7ab8808 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x982beac0e148e and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000160c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001610]:csrrs a7, fflags, zero<br> [0x80001614]:fsd fa3, 304(a5)<br>    |
| 148|[0x80004e40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x6607c20361523 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xe2f1c5d734347 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x8e9083a002a40 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000162c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001630]:csrrs a7, fflags, zero<br> [0x80001634]:fsd fa3, 320(a5)<br>    |
| 149|[0x80004e50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x00b42e8f00d47 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x318ea43af884c and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x55bf36838d301 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000164c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001650]:csrrs a7, fflags, zero<br> [0x80001654]:fsd fa3, 336(a5)<br>    |
| 150|[0x80004e60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5a371eca20170 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xb0db7e0a5d748 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x810243adf986b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000166c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001670]:csrrs a7, fflags, zero<br> [0x80001674]:fsd fa3, 352(a5)<br>    |
| 151|[0x80004e70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x5864580d04bef and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xeedf7f711c3c2 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x398c547e1be75 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000168c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001690]:csrrs a7, fflags, zero<br> [0x80001694]:fsd fa3, 368(a5)<br>    |
| 152|[0x80004e80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xad3923b9bf5a2 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd64347e477166 and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x4770df035aba6 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800016ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016b0]:csrrs a7, fflags, zero<br> [0x800016b4]:fsd fa3, 384(a5)<br>    |
| 153|[0x80004e90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x9847d9429817b and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x6f291ef3c3557 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x3a5549c3c4c4f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800016cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016d0]:csrrs a7, fflags, zero<br> [0x800016d4]:fsd fa3, 400(a5)<br>    |
| 154|[0x80004ea0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f6 and fm1 == 0x42972262ccf0f and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x9d5f97660dadf and fs3 == 1 and fe3 == 0x7e8 and fm3 == 0x88362814c9759 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800016ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800016f0]:csrrs a7, fflags, zero<br> [0x800016f4]:fsd fa3, 416(a5)<br>    |
| 155|[0x80004eb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x66b37637d118d and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x714a830fa079f and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x00d6d4b541e40 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000170c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001710]:csrrs a7, fflags, zero<br> [0x80001714]:fsd fa3, 432(a5)<br>    |
| 156|[0x80004ec0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x0a287088f5e69 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xc44223126cbc7 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x4c08a113d9779 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000172c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001730]:csrrs a7, fflags, zero<br> [0x80001734]:fsd fa3, 448(a5)<br>    |
| 157|[0x80004ed0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f5 and fm1 == 0x75450c5a9817f and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xb3d56c4f6fd1d and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x1d7d8d5cb4608 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000174c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001750]:csrrs a7, fflags, zero<br> [0x80001754]:fsd fa3, 464(a5)<br>    |
| 158|[0x80004ee0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xaf42bcba26d83 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x99fb7503e8d08 and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x5c437a02c58bf and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000176c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001770]:csrrs a7, fflags, zero<br> [0x80001774]:fsd fa3, 480(a5)<br>    |
| 159|[0x80004ef0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xec0c4abe1fd0e and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x7ad291b7d6463 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x3ef47a9052ba0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000178c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001790]:csrrs a7, fflags, zero<br> [0x80001794]:fsd fa3, 496(a5)<br>    |
| 160|[0x80004f00]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xf60647476d4cb and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x2a1fa26c0948f and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x1dfd8df43126c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800017ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017b0]:csrrs a7, fflags, zero<br> [0x800017b4]:fsd fa3, 512(a5)<br>    |
| 161|[0x80004f10]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x26e34e07a9172 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x9099330bb750b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x22a666111a3d5 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800017cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017d0]:csrrs a7, fflags, zero<br> [0x800017d4]:fsd fa3, 528(a5)<br>    |
| 162|[0x80004f20]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f5 and fm1 == 0xb56678fedc57f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x451eb54c10b8b and fs3 == 1 and fe3 == 0x7ef and fm3 == 0xb55b4e640661d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800017ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800017f0]:csrrs a7, fflags, zero<br> [0x800017f4]:fsd fa3, 544(a5)<br>    |
| 163|[0x80004f30]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd1ed9e7beff05 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x1182656689f60 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x3e00b5c26cb6a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000180c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001810]:csrrs a7, fflags, zero<br> [0x80001814]:fsd fa3, 560(a5)<br>    |
| 164|[0x80004f40]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x6535160e0062c and fs2 == 0 and fe2 == 0x5f6 and fm2 == 0x728eb744bb2ef and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0xb8ab2e12d6c5a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000182c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001830]:csrrs a7, fflags, zero<br> [0x80001834]:fsd fa3, 576(a5)<br>    |
| 165|[0x80004f50]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa1bf5c83faf60 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x9c16a190f4e87 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x1f04b97b73a10 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000184c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001850]:csrrs a7, fflags, zero<br> [0x80001854]:fsd fa3, 592(a5)<br>    |
| 166|[0x80004f60]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xc380d05f3f55f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x96d3944ae92c5 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xdeea1013d23c6 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000186c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001870]:csrrs a7, fflags, zero<br> [0x80001874]:fsd fa3, 608(a5)<br>    |
| 167|[0x80004f70]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xf1bca90426463 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x7685c15158af8 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x41711f482709c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x8000188c]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001890]:csrrs a7, fflags, zero<br> [0x80001894]:fsd fa3, 624(a5)<br>    |
| 168|[0x80004f80]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xf21e6dcb25437 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x42a2ac1575123 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x8506d3564ee4c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800018ac]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018b0]:csrrs a7, fflags, zero<br> [0x800018b4]:fsd fa3, 640(a5)<br>    |
| 169|[0x80004f90]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x962eb496df1c1 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x516656a60de77 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x9e94f197bc8d7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800018cc]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018d0]:csrrs a7, fflags, zero<br> [0x800018d4]:fsd fa3, 656(a5)<br>    |
| 170|[0x80004fa0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x520baea9095e5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xfe1581ecd07ea and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xbf8fb7ed9fca6 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800018ec]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800018f0]:csrrs a7, fflags, zero<br> [0x800018f4]:fsd fa3, 672(a5)<br>    |
| 171|[0x80004fb0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xe64794dad7d48 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x28cdc8d19d0dc and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x35c40a3528469 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001910]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001914]:csrrs a7, fflags, zero<br> [0x80001918]:fsd fa3, 688(a5)<br>    |
| 172|[0x80004fc0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb2efd30dc5db9 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xca428c2b7c81f and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x3f5e6adff9125 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001930]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001934]:csrrs a7, fflags, zero<br> [0x80001938]:fsd fa3, 704(a5)<br>    |
| 173|[0x80004fd0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x691ae7e1929e8 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x1a3fd4c2ca047 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x2bfc78a5e7a04 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001950]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001954]:csrrs a7, fflags, zero<br> [0x80001958]:fsd fa3, 720(a5)<br>    |
| 174|[0x80004fe0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd89e42f5143f8 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x14c9836bbe6ff and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x370b654f6106d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001970]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001974]:csrrs a7, fflags, zero<br> [0x80001978]:fsd fa3, 736(a5)<br>    |
| 175|[0x80004ff0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xd8c56582791a6 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xaf56f24522c9c and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x44742568fb496 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001990]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001994]:csrrs a7, fflags, zero<br> [0x80001998]:fsd fa3, 752(a5)<br>    |
| 176|[0x80005000]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f7 and fm1 == 0x6febab5b81b47 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x83e4a9485598d and fs3 == 1 and fe3 == 0x7f0 and fm3 == 0x12ca525764001 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800019b0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019b4]:csrrs a7, fflags, zero<br> [0x800019b8]:fsd fa3, 768(a5)<br>    |
| 177|[0x80005010]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x39bd67fecd9d5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x5035a8d0a4c2b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xaf617d8aca2ad and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800019d0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019d4]:csrrs a7, fflags, zero<br> [0x800019d8]:fsd fa3, 784(a5)<br>    |
| 178|[0x80005020]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x294c231789029 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x83df99d24bacb and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x6e5548a50ddaf and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x800019f0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x800019f4]:csrrs a7, fflags, zero<br> [0x800019f8]:fsd fa3, 800(a5)<br>    |
| 179|[0x80005030]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x314c82f3115df and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x8a2386a894fd9 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x8eebee8141aa4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001a10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a14]:csrrs a7, fflags, zero<br> [0x80001a18]:fsd fa3, 816(a5)<br>    |
| 180|[0x80005040]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x34d4bf2305d15 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x2cdc24d268f9f and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x92e19085786e1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001a30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a34]:csrrs a7, fflags, zero<br> [0x80001a38]:fsd fa3, 832(a5)<br>    |
| 181|[0x80005050]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xa101ccfb0623a and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x14a00d8d01424 and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x04b64625ef1e1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001a50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a54]:csrrs a7, fflags, zero<br> [0x80001a58]:fsd fa3, 848(a5)<br>    |
| 182|[0x80005060]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x1a3fb352a13ab and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x69c26ac7fce60 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x690228a82d72c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001a70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a74]:csrrs a7, fflags, zero<br> [0x80001a78]:fsd fa3, 864(a5)<br>    |
| 183|[0x80005070]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x0410cbbfdec45 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xdd9c651f50797 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xb0481487bcfe7 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001a90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001a94]:csrrs a7, fflags, zero<br> [0x80001a98]:fsd fa3, 880(a5)<br>    |
| 184|[0x80005080]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xcab8890bacf6d and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x49818dfc8788f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x9176a1e425429 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001ab0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ab4]:csrrs a7, fflags, zero<br> [0x80001ab8]:fsd fa3, 896(a5)<br>    |
| 185|[0x80005090]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xe8af77cda8053 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xef616f891ea0b and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x743eb507a1a8d and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001ad0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001ad4]:csrrs a7, fflags, zero<br> [0x80001ad8]:fsd fa3, 912(a5)<br>    |
| 186|[0x800050a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xbdae67c407ef2 and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0x874e2eeac1c13 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x26a10a82e03b3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001af0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001af4]:csrrs a7, fflags, zero<br> [0x80001af8]:fsd fa3, 928(a5)<br>    |
| 187|[0x800050b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xbc366e555215f and fs2 == 0 and fe2 == 0x5f8 and fm2 == 0xf3878bbaf3893 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0x2473aa0ab03c1 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001b10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b14]:csrrs a7, fflags, zero<br> [0x80001b18]:fsd fa3, 944(a5)<br>    |
| 188|[0x800050c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x56182d28045ae and fs2 == 0 and fe2 == 0x5f1 and fm2 == 0x2b954e52a4bff and fs3 == 1 and fe3 == 0x7eb and fm3 == 0x957a1c34f3e3a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001b30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b34]:csrrs a7, fflags, zero<br> [0x80001b38]:fsd fa3, 960(a5)<br>    |
| 189|[0x800050d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x707d21f5c40de and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x986532dae9957 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x9bdbaf3c907a4 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001b50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b54]:csrrs a7, fflags, zero<br> [0x80001b58]:fsd fa3, 976(a5)<br>    |
| 190|[0x800050e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9c2c9b7ac820e and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x18ef1d7a9fa74 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0xbdf7d6230bec0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001b70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b74]:csrrs a7, fflags, zero<br> [0x80001b78]:fsd fa3, 992(a5)<br>    |
| 191|[0x800050f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe8754038aa2cf and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xbb09e7215ddb9 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x3890dfd65f9b0 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001b90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001b94]:csrrs a7, fflags, zero<br> [0x80001b98]:fsd fa3, 1008(a5)<br>   |
| 192|[0x80005100]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x38c62d68fcb25 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd3762f4d1629c and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0x3127ae7889f1b and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001bb0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bb4]:csrrs a7, fflags, zero<br> [0x80001bb8]:fsd fa3, 1024(a5)<br>   |
| 193|[0x80005110]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0xe3796147a7f97 and fs2 == 0 and fe2 == 0x5f7 and fm2 == 0x9c78deb52422f and fs3 == 1 and fe3 == 0x7f1 and fm3 == 0xb8c53c7075937 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001bd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bd4]:csrrs a7, fflags, zero<br> [0x80001bd8]:fsd fa3, 1040(a5)<br>   |
| 194|[0x80005120]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x75ac81c4b8321 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xcc3488366e29b and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xa890736371391 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001bf0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001bf4]:csrrs a7, fflags, zero<br> [0x80001bf8]:fsd fa3, 1056(a5)<br>   |
| 195|[0x80005130]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x9ed4cb2685903 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xcde8b20967d0b and fs3 == 1 and fe3 == 0x7f6 and fm3 == 0x022cc846c30a3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001c10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c14]:csrrs a7, fflags, zero<br> [0x80001c18]:fsd fa3, 1072(a5)<br>   |
| 196|[0x80005140]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x0084bbfe5e825 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd1ca42e21585b and fs3 == 1 and fe3 == 0x7ef and fm3 == 0x011b663a50b74 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001c30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c34]:csrrs a7, fflags, zero<br> [0x80001c38]:fsd fa3, 1088(a5)<br>   |
| 197|[0x80005150]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x209a1991e3307 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x82f8c4c611b4f and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x4cf9b6d0099f2 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001c50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c54]:csrrs a7, fflags, zero<br> [0x80001c58]:fsd fa3, 1104(a5)<br>   |
| 198|[0x80005160]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x2ab10cf910f7c and fs2 == 0 and fe2 == 0x5fa and fm2 == 0xd0f42c0dfaf72 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x0cb3ff617ed40 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001c70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c74]:csrrs a7, fflags, zero<br> [0x80001c78]:fsd fa3, 1120(a5)<br>   |
| 199|[0x80005170]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x914e0c751c4f4 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x36979c7be0deb and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0xfdac30cd1ac8c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001c90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001c94]:csrrs a7, fflags, zero<br> [0x80001c98]:fsd fa3, 1136(a5)<br>   |
| 200|[0x80005180]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x092178fb945a5 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x05c5ccdf19706 and fs3 == 1 and fe3 == 0x7f3 and fm3 == 0x42a7e15c7b5b6 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001cb0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cb4]:csrrs a7, fflags, zero<br> [0x80001cb8]:fsd fa3, 1152(a5)<br>   |
| 201|[0x80005190]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0xb0580f98a7dbd and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x84129978f9c19 and fs3 == 1 and fe3 == 0x7f5 and fm3 == 0x7bc1026d3b4dc and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001cd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cd4]:csrrs a7, fflags, zero<br> [0x80001cd8]:fsd fa3, 1168(a5)<br>   |
| 202|[0x800051a0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x862435d9f084c and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0x1ecf7d50e7867 and fs3 == 1 and fe3 == 0x7ee and fm3 == 0xbf29c86e35d1a and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001cf0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001cf4]:csrrs a7, fflags, zero<br> [0x80001cf8]:fsd fa3, 1184(a5)<br>   |
| 203|[0x800051b0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0x3ff0da6c98f6f and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x699f5f701628b and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0xddc3a78722ea3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001d10]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d14]:csrrs a7, fflags, zero<br> [0x80001d18]:fsd fa3, 1200(a5)<br>   |
| 204|[0x800051c0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x898a6dfea4b33 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x4201da1346303 and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xc24127000516f and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001d30]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d34]:csrrs a7, fflags, zero<br> [0x80001d38]:fsd fa3, 1216(a5)<br>   |
| 205|[0x800051d0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x3ccae6dd9195e and fs2 == 0 and fe2 == 0x5f3 and fm2 == 0xfda686ffdecff and fs3 == 1 and fe3 == 0x7ee and fm3 == 0xba61ec2c341df and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001d50]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d54]:csrrs a7, fflags, zero<br> [0x80001d58]:fsd fa3, 1232(a5)<br>   |
| 206|[0x800051e0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f8 and fm1 == 0xa10df54b7350b and fs2 == 0 and fe2 == 0x5f1 and fm2 == 0xe32c6a43223ff and fs3 == 1 and fe3 == 0x7e9 and fm3 == 0xd9e02cde9603c and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001d70]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d74]:csrrs a7, fflags, zero<br> [0x80001d78]:fsd fa3, 1248(a5)<br>   |
| 207|[0x800051f0]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5fa and fm1 == 0x8908351afd340 and fs2 == 0 and fe2 == 0x5f9 and fm2 == 0xba13e3965dc9d and fs3 == 1 and fe3 == 0x7f4 and fm3 == 0xfe6be2c9ed025 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001d90]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001d94]:csrrs a7, fflags, zero<br> [0x80001d98]:fsd fa3, 1264(a5)<br>   |
| 208|[0x80005210]<br>0xEADFEEDBEADFEEDB|- fs1 == 0 and fe1 == 0x5f9 and fm1 == 0x1b9e168e5b379 and fs2 == 0 and fe2 == 0x5fa and fm2 == 0x1dc9fa26c1435 and fs3 == 1 and fe3 == 0x7f2 and fm3 == 0x8ae366f745bf3 and rm_val == 0  #nosat<br>                                                                                                                                                       |[0x80001dd0]:fmadd.d fa3, fa0, fa1, fa2, dyn<br> [0x80001dd4]:csrrs a7, fflags, zero<br> [0x80001dd8]:fsd fa3, 1296(a5)<br>   |
