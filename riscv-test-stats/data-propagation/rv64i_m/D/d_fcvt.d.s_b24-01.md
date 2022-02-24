
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800006b0')]      |
| SIG_REGION                | [('0x80002310', '0x80002510', '64 dwords')]      |
| COV_LABELS                | fcvt.d.s_b24      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fcvt.d.s_b24-01.S/ref.S    |
| Total Number of coverpoints| 93     |
| Total Coverpoints Hit     | 88      |
| Total Signature Updates   | 64      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 32     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.d.s', 'rs1 : f10', 'rd : f29', 'rs1 != rd', 'fs1 == 0 and fe1 == 0x3fe and fm1 == 0xc7ae147ae147b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fcvt.d.s ft9, fa0, rne
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:fsd ft9, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rs1 : f20', 'rd : f20', 'rs1 == rd', 'fs1 == 0 and fe1 == 0x3fe and fm1 == 0xccccccccccccd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d0]:fcvt.d.s fs4, fs4, rne
	-[0x800003d4]:csrrs a7, fflags, zero
	-[0x800003d8]:fsd fs4, 16(a5)
Current Store : [0x800003dc] : sd a7, 24(a5) -- Store: [0x80002328]:0x0000000000000000




Last Coverpoint : ['rs1 : f6', 'rd : f15', 'fs1 == 1 and fe1 == 0x3fb and fm1 == 0x999999999999a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fcvt.d.s fa5, ft6, rne
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:fsd fa5, 32(a5)
Current Store : [0x800003f4] : sd a7, 40(a5) -- Store: [0x80002338]:0x0000000000000000




Last Coverpoint : ['rs1 : f29', 'rd : f4', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fcvt.d.s ft4, ft9, rne
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd ft4, 48(a5)
Current Store : [0x8000040c] : sd a7, 56(a5) -- Store: [0x80002348]:0x0000000000000000




Last Coverpoint : ['rs1 : f4', 'rd : f30', 'fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fcvt.d.s ft10, ft4, rne
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsd ft10, 64(a5)
Current Store : [0x80000424] : sd a7, 72(a5) -- Store: [0x80002358]:0x0000000000000000




Last Coverpoint : ['rs1 : f11', 'rd : f26', 'fs1 == 1 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fcvt.d.s fs10, fa1, rne
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:fsd fs10, 80(a5)
Current Store : [0x8000043c] : sd a7, 88(a5) -- Store: [0x80002368]:0x0000000000000000




Last Coverpoint : ['rs1 : f24', 'rd : f18', 'fs1 == 1 and fe1 == 0x3fe and fm1 == 0xfae147ae147ae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fcvt.d.s fs2, fs8, rne
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd fs2, 96(a5)
Current Store : [0x80000454] : sd a7, 104(a5) -- Store: [0x80002378]:0x0000000000000000




Last Coverpoint : ['rs1 : f31', 'rd : f23', 'fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x47ae147ae147b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000460]:fcvt.d.s fs7, ft11, rne
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd fs7, 112(a5)
Current Store : [0x8000046c] : sd a7, 120(a5) -- Store: [0x80002388]:0x0000000000000000




Last Coverpoint : ['rs1 : f18', 'rd : f8', 'fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x47ae147ae147b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000478]:fcvt.d.s fs0, fs2, rne
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:fsd fs0, 128(a5)
Current Store : [0x80000484] : sd a7, 136(a5) -- Store: [0x80002398]:0x0000000000000000




Last Coverpoint : ['rs1 : f3', 'rd : f9', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x199999999999a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000490]:fcvt.d.s fs1, ft3, rne
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:fsd fs1, 144(a5)
Current Store : [0x8000049c] : sd a7, 152(a5) -- Store: [0x800023a8]:0x0000000000000000




Last Coverpoint : ['rs1 : f23', 'rd : f31', 'fs1 == 0 and fe1 == 0x3fb and fm1 == 0xc28f5c28f5c29 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fcvt.d.s ft11, fs7, rne
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:fsd ft11, 160(a5)
Current Store : [0x800004b4] : sd a7, 168(a5) -- Store: [0x800023b8]:0x0000000000000000




Last Coverpoint : ['rs1 : f0', 'rd : f27', 'fs1 == 0 and fe1 == 0x3fb and fm1 == 0x999999999999a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fcvt.d.s fs11, ft0, rne
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd fs11, 176(a5)
Current Store : [0x800004cc] : sd a7, 184(a5) -- Store: [0x800023c8]:0x0000000000000000




Last Coverpoint : ['rs1 : f15', 'rd : f5', 'fs1 == 1 and fe1 == 0x3fb and fm1 == 0xc28f5c28f5c29 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004d8]:fcvt.d.s ft5, fa5, rne
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:fsd ft5, 192(a5)
Current Store : [0x800004e4] : sd a7, 200(a5) -- Store: [0x800023d8]:0x0000000000000000




Last Coverpoint : ['rs1 : f26', 'rd : f7', 'fs1 == 0 and fe1 == 0x3fe and fm1 == 0xfae147ae147ae and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004f0]:fcvt.d.s ft7, fs10, rne
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd ft7, 208(a5)
Current Store : [0x800004fc] : sd a7, 216(a5) -- Store: [0x800023e8]:0x0000000000000000




Last Coverpoint : ['rs1 : f22', 'rd : f3', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x1c28f5c28f5c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000508]:fcvt.d.s ft3, fs6, rne
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:fsd ft3, 224(a5)
Current Store : [0x80000514] : sd a7, 232(a5) -- Store: [0x800023f8]:0x0000000000000000




Last Coverpoint : ['rs1 : f19', 'rd : f2', 'fs1 == 1 and fe1 == 0x3fe and fm1 == 0xc7ae147ae147b and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000520]:fcvt.d.s ft2, fs3, rne
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd ft2, 240(a5)
Current Store : [0x8000052c] : sd a7, 248(a5) -- Store: [0x80002408]:0x0000000000000000




Last Coverpoint : ['rs1 : f30', 'rd : f28', 'fs1 == 1 and fe1 == 0x3fe and fm1 == 0xccccccccccccd and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000538]:fcvt.d.s ft8, ft10, rne
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:fsd ft8, 256(a5)
Current Store : [0x80000544] : sd a7, 264(a5) -- Store: [0x80002418]:0x0000000000000000




Last Coverpoint : ['rs1 : f9', 'rd : f21', 'fs1 == 1 and fe1 == 0x3ff and fm1 == 0x028f5c28f5c29 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000550]:fcvt.d.s fs5, fs1, rne
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:fsd fs5, 272(a5)
Current Store : [0x8000055c] : sd a7, 280(a5) -- Store: [0x80002428]:0x0000000000000000




Last Coverpoint : ['rs1 : f2', 'rd : f10', 'fs1 == 0 and fe1 == 0x3ff and fm1 == 0x028f5c28f5c29 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000568]:fcvt.d.s fa0, ft2, rne
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsd fa0, 288(a5)
Current Store : [0x80000574] : sd a7, 296(a5) -- Store: [0x80002438]:0x0000000000000000




Last Coverpoint : ['rs1 : f17', 'rd : f11', 'fs1 == 1 and fe1 == 0x3ff and fm1 == 0x1c28f5c28f5c3 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000580]:fcvt.d.s fa1, fa7, rne
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd fa1, 304(a5)
Current Store : [0x8000058c] : sd a7, 312(a5) -- Store: [0x80002448]:0x0000000000000000




Last Coverpoint : ['rs1 : f25', 'rd : f0', 'fs1 == 1 and fe1 == 0x3ff and fm1 == 0x199999999999a and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fcvt.d.s ft0, fs9, rne
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd ft0, 320(a5)
Current Store : [0x800005a4] : sd a7, 328(a5) -- Store: [0x80002458]:0x0000000000000000




Last Coverpoint : ['rs1 : f13', 'rd : f12']
Last Code Sequence : 
	-[0x800005b0]:fcvt.d.s fa2, fa3, rne
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:fsd fa2, 336(a5)
Current Store : [0x800005bc] : sd a7, 344(a5) -- Store: [0x80002468]:0x0000000000000000




Last Coverpoint : ['rs1 : f1', 'rd : f14']
Last Code Sequence : 
	-[0x800005c8]:fcvt.d.s fa4, ft1, rne
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:fsd fa4, 352(a5)
Current Store : [0x800005d4] : sd a7, 360(a5) -- Store: [0x80002478]:0x0000000000000000




Last Coverpoint : ['rs1 : f12', 'rd : f22']
Last Code Sequence : 
	-[0x800005e0]:fcvt.d.s fs6, fa2, rne
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd fs6, 368(a5)
Current Store : [0x800005ec] : sd a7, 376(a5) -- Store: [0x80002488]:0x0000000000000000




Last Coverpoint : ['rs1 : f28', 'rd : f19']
Last Code Sequence : 
	-[0x800005f8]:fcvt.d.s fs3, ft8, rne
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:fsd fs3, 384(a5)
Current Store : [0x80000604] : sd a7, 392(a5) -- Store: [0x80002498]:0x0000000000000000




Last Coverpoint : ['rs1 : f8', 'rd : f17']
Last Code Sequence : 
	-[0x80000610]:fcvt.d.s fa7, fs0, rne
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsd fa7, 400(a5)
Current Store : [0x8000061c] : sd a7, 408(a5) -- Store: [0x800024a8]:0x0000000000000000




Last Coverpoint : ['rs1 : f16', 'rd : f25']
Last Code Sequence : 
	-[0x80000628]:fcvt.d.s fs9, fa6, rne
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:fsd fs9, 416(a5)
Current Store : [0x80000634] : sd a7, 424(a5) -- Store: [0x800024b8]:0x0000000000000000




Last Coverpoint : ['rs1 : f27', 'rd : f1']
Last Code Sequence : 
	-[0x80000640]:fcvt.d.s ft1, fs11, rne
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd ft1, 432(a5)
Current Store : [0x8000064c] : sd a7, 440(a5) -- Store: [0x800024c8]:0x0000000000000000




Last Coverpoint : ['rs1 : f21', 'rd : f16']
Last Code Sequence : 
	-[0x80000658]:fcvt.d.s fa6, fs5, rne
	-[0x8000065c]:csrrs a7, fflags, zero
	-[0x80000660]:fsd fa6, 448(a5)
Current Store : [0x80000664] : sd a7, 456(a5) -- Store: [0x800024d8]:0x0000000000000000




Last Coverpoint : ['rs1 : f14', 'rd : f6']
Last Code Sequence : 
	-[0x80000670]:fcvt.d.s ft6, fa4, rne
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:fsd ft6, 464(a5)
Current Store : [0x8000067c] : sd a7, 472(a5) -- Store: [0x800024e8]:0x0000000000000000




Last Coverpoint : ['rs1 : f5', 'rd : f24']
Last Code Sequence : 
	-[0x80000688]:fcvt.d.s fs8, ft5, rne
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:fsd fs8, 480(a5)
Current Store : [0x80000694] : sd a7, 488(a5) -- Store: [0x800024f8]:0x0000000000000000




Last Coverpoint : ['rs1 : f7', 'rd : f13']
Last Code Sequence : 
	-[0x800006a0]:fcvt.d.s fa3, ft7, rne
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd fa3, 496(a5)
Current Store : [0x800006ac] : sd a7, 504(a5) -- Store: [0x80002508]:0x0000000000000000





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
|   1|[0x80002310]<br>0xEEDBEADFEEDBEADF|- opcode : fcvt.d.s<br> - rs1 : f10<br> - rd : f29<br> - rs1 != rd<br> - fs1 == 0 and fe1 == 0x3fe and fm1 == 0xc7ae147ae147b and rm_val == 0  #nosat<br> |[0x800003b8]:fcvt.d.s ft9, fa0, rne<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:fsd ft9, 0(a5)<br>     |
|   2|[0x80002320]<br>0xB7D5BFDDB7D5BFDD|- rs1 : f20<br> - rd : f20<br> - rs1 == rd<br> - fs1 == 0 and fe1 == 0x3fe and fm1 == 0xccccccccccccd and rm_val == 0  #nosat<br>                         |[0x800003d0]:fcvt.d.s fs4, fs4, rne<br> [0x800003d4]:csrrs a7, fflags, zero<br> [0x800003d8]:fsd fs4, 16(a5)<br>    |
|   3|[0x80002330]<br>0x0000000080002310|- rs1 : f6<br> - rd : f15<br> - fs1 == 1 and fe1 == 0x3fb and fm1 == 0x999999999999a and rm_val == 0  #nosat<br>                                          |[0x800003e8]:fcvt.d.s fa5, ft6, rne<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:fsd fa5, 32(a5)<br>    |
|   4|[0x80002340]<br>0xBFDDB7D5BFDDB7D5|- rs1 : f29<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                                          |[0x80000400]:fcvt.d.s ft4, ft9, rne<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd ft4, 48(a5)<br>    |
|   5|[0x80002350]<br>0xF76DF56FF76DF56F|- rs1 : f4<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x000 and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                                          |[0x80000418]:fcvt.d.s ft10, ft4, rne<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsd ft10, 64(a5)<br>  |
|   6|[0x80002360]<br>0x76DF56FF76DF56FF|- rs1 : f11<br> - rd : f26<br> - fs1 == 1 and fe1 == 0x3ff and fm1 == 0x0000000000000 and rm_val == 0  #nosat<br>                                         |[0x80000430]:fcvt.d.s fs10, fa1, rne<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:fsd fs10, 80(a5)<br>  |
|   7|[0x80002370]<br>0xDF56FF76DF56FF76|- rs1 : f24<br> - rd : f18<br> - fs1 == 1 and fe1 == 0x3fe and fm1 == 0xfae147ae147ae and rm_val == 0  #nosat<br>                                         |[0x80000448]:fcvt.d.s fs2, fs8, rne<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd fs2, 96(a5)<br>    |
|   8|[0x80002380]<br>0xB6FAB7FBB6FAB7FB|- rs1 : f31<br> - rd : f23<br> - fs1 == 1 and fe1 == 0x3f8 and fm1 == 0x47ae147ae147b and rm_val == 0  #nosat<br>                                         |[0x80000460]:fcvt.d.s fs7, ft11, rne<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd fs7, 112(a5)<br>  |
|   9|[0x80002390]<br>0x5BFDDB7D5BFDDB7D|- rs1 : f18<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x3f8 and fm1 == 0x47ae147ae147b and rm_val == 0  #nosat<br>                                          |[0x80000478]:fcvt.d.s fs0, fs2, rne<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:fsd fs0, 128(a5)<br>   |
|  10|[0x800023a0]<br>0xADFEEDBEADFEEDBE|- rs1 : f3<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x199999999999a and rm_val == 0  #nosat<br>                                           |[0x80000490]:fcvt.d.s fs1, ft3, rne<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:fsd fs1, 144(a5)<br>   |
|  11|[0x800023b0]<br>0xFBB6FAB7FBB6FAB7|- rs1 : f23<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x3fb and fm1 == 0xc28f5c28f5c29 and rm_val == 0  #nosat<br>                                         |[0x800004a8]:fcvt.d.s ft11, fs7, rne<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:fsd ft11, 160(a5)<br> |
|  12|[0x800023c0]<br>0xBB6FAB7FBB6FAB7F|- rs1 : f0<br> - rd : f27<br> - fs1 == 0 and fe1 == 0x3fb and fm1 == 0x999999999999a and rm_val == 0  #nosat<br>                                          |[0x800004c0]:fcvt.d.s fs11, ft0, rne<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd fs11, 176(a5)<br> |
|  13|[0x800023d0]<br>0x0000000080000390|- rs1 : f15<br> - rd : f5<br> - fs1 == 1 and fe1 == 0x3fb and fm1 == 0xc28f5c28f5c29 and rm_val == 0  #nosat<br>                                          |[0x800004d8]:fcvt.d.s ft5, fa5, rne<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:fsd ft5, 192(a5)<br>   |
|  14|[0x800023e0]<br>0xB7FBB6FAB7FBB6FA|- rs1 : f26<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x3fe and fm1 == 0xfae147ae147ae and rm_val == 0  #nosat<br>                                          |[0x800004f0]:fcvt.d.s ft7, fs10, rne<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd ft7, 208(a5)<br>  |
|  15|[0x800023f0]<br>0x0000000A00000000|- rs1 : f22<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x1c28f5c28f5c3 and rm_val == 0  #nosat<br>                                          |[0x80000508]:fcvt.d.s ft3, fs6, rne<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:fsd ft3, 224(a5)<br>   |
|  16|[0x80002400]<br>0x0000000A00006000|- rs1 : f19<br> - rd : f2<br> - fs1 == 1 and fe1 == 0x3fe and fm1 == 0xc7ae147ae147b and rm_val == 0  #nosat<br>                                          |[0x80000520]:fcvt.d.s ft2, fs3, rne<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd ft2, 240(a5)<br>   |
|  17|[0x80002410]<br>0xDDB7D5BFDDB7D5BF|- rs1 : f30<br> - rd : f28<br> - fs1 == 1 and fe1 == 0x3fe and fm1 == 0xccccccccccccd and rm_val == 0  #nosat<br>                                         |[0x80000538]:fcvt.d.s ft8, ft10, rne<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:fsd ft8, 256(a5)<br>  |
|  18|[0x80002420]<br>0xDBEADFEEDBEADFEE|- rs1 : f9<br> - rd : f21<br> - fs1 == 1 and fe1 == 0x3ff and fm1 == 0x028f5c28f5c29 and rm_val == 0  #nosat<br>                                          |[0x80000550]:fcvt.d.s fs5, fs1, rne<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:fsd fs5, 272(a5)<br>   |
|  19|[0x80002430]<br>0x56FF76DF56FF76DF|- rs1 : f2<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x3ff and fm1 == 0x028f5c28f5c29 and rm_val == 0  #nosat<br>                                          |[0x80000568]:fcvt.d.s fa0, ft2, rne<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsd fa0, 288(a5)<br>   |
|  20|[0x80002440]<br>0xAB7FBB6FAB7FBB6F|- rs1 : f17<br> - rd : f11<br> - fs1 == 1 and fe1 == 0x3ff and fm1 == 0x1c28f5c28f5c3 and rm_val == 0  #nosat<br>                                         |[0x80000580]:fcvt.d.s fa1, fa7, rne<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd fa1, 304(a5)<br>   |
|  21|[0x80002450]<br>0x0000000000000000|- rs1 : f25<br> - rd : f0<br> - fs1 == 1 and fe1 == 0x3ff and fm1 == 0x199999999999a and rm_val == 0  #nosat<br>                                          |[0x80000598]:fcvt.d.s ft0, fs9, rne<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd ft0, 320(a5)<br>   |
|  22|[0x80002460]<br>0xD5BFDDB7D5BFDDB7|- rs1 : f13<br> - rd : f12<br>                                                                                                                            |[0x800005b0]:fcvt.d.s fa2, fa3, rne<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:fsd fa2, 336(a5)<br>   |
|  23|[0x80002470]<br>0xF56FF76DF56FF76D|- rs1 : f1<br> - rd : f14<br>                                                                                                                             |[0x800005c8]:fcvt.d.s fa4, ft1, rne<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:fsd fa4, 352(a5)<br>   |
|  24|[0x80002480]<br>0x6DF56FF76DF56FF7|- rs1 : f12<br> - rd : f22<br>                                                                                                                            |[0x800005e0]:fcvt.d.s fs6, fa2, rne<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd fs6, 368(a5)<br>   |
|  25|[0x80002490]<br>0x6FAB7FBB6FAB7FBB|- rs1 : f28<br> - rd : f19<br>                                                                                                                            |[0x800005f8]:fcvt.d.s fs3, ft8, rne<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:fsd fs3, 384(a5)<br>   |
|  26|[0x800024a0]<br>0x0000000000000000|- rs1 : f8<br> - rd : f17<br>                                                                                                                             |[0x80000610]:fcvt.d.s fa7, fs0, rne<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsd fa7, 400(a5)<br>   |
|  27|[0x800024b0]<br>0xEDBEADFEEDBEADFE|- rs1 : f16<br> - rd : f25<br>                                                                                                                            |[0x80000628]:fcvt.d.s fs9, fa6, rne<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:fsd fs9, 416(a5)<br>   |
|  28|[0x800024c0]<br>0xFEEDBEADFEEDBEAD|- rs1 : f27<br> - rd : f1<br>                                                                                                                             |[0x80000640]:fcvt.d.s ft1, fs11, rne<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd ft1, 432(a5)<br>  |
|  29|[0x800024d0]<br>0x0000000080002010|- rs1 : f21<br> - rd : f16<br>                                                                                                                            |[0x80000658]:fcvt.d.s fa6, fs5, rne<br> [0x8000065c]:csrrs a7, fflags, zero<br> [0x80000660]:fsd fa6, 448(a5)<br>   |
|  30|[0x800024e0]<br>0x0000000080002000|- rs1 : f14<br> - rd : f6<br>                                                                                                                             |[0x80000670]:fcvt.d.s ft6, fa4, rne<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:fsd ft6, 464(a5)<br>   |
|  31|[0x800024f0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : f5<br> - rd : f24<br>                                                                                                                             |[0x80000688]:fcvt.d.s fs8, ft5, rne<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsd fs8, 480(a5)<br>   |
|  32|[0x80002500]<br>0xEADFEEDBEADFEEDB|- rs1 : f7<br> - rd : f13<br>                                                                                                                             |[0x800006a0]:fcvt.d.s fa3, ft7, rne<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd fa3, 496(a5)<br>   |
