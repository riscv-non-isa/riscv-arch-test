
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800006f0')]      |
| SIG_REGION                | [('0x80002310', '0x80002510', '64 dwords')]      |
| COV_LABELS                | fcvt.d.l_b25      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fcvt.d.l_b25-01.S/ref.S    |
| Total Number of coverpoints| 76     |
| Total Coverpoints Hit     | 72      |
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
Last Coverpoint : ['opcode : fcvt.d.l', 'rs1 : x15', 'rd : f19', 'rs1_val == 0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fcvt.d.l fs3, a5, dyn
	-[0x800003bc]:csrrs s5, fflags, zero
	-[0x800003c0]:fsd fs3, 0(s3)
Current Store : [0x800003c4] : sd s5, 8(s3) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rs1 : x12', 'rd : f16', 'rs1_val == -5270258713649211392 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003dc]:fcvt.d.l fa6, a2, dyn
	-[0x800003e0]:csrrs a7, fflags, zero
	-[0x800003e4]:fsd fa6, 0(a5)
Current Store : [0x800003e8] : sd a7, 8(a5) -- Store: [0x80002328]:0x0000000000000000




Last Coverpoint : ['rs1 : x22', 'rd : f4', 'rs1_val == 5270258713649211392 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003f4]:fcvt.d.l ft4, s6, dyn
	-[0x800003f8]:csrrs a7, fflags, zero
	-[0x800003fc]:fsd ft4, 16(a5)
Current Store : [0x80000400] : sd a7, 24(a5) -- Store: [0x80002338]:0x0000000000000000




Last Coverpoint : ['rs1 : x9', 'rd : f2', 'rs1_val == -9223372036854775807 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000040c]:fcvt.d.l ft2, s1, dyn
	-[0x80000410]:csrrs a7, fflags, zero
	-[0x80000414]:fsd ft2, 32(a5)
Current Store : [0x80000418] : sd a7, 40(a5) -- Store: [0x80002348]:0x0000000000000001




Last Coverpoint : ['rs1 : x6', 'rd : f17', 'rs1_val == 9223372036854775807 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000424]:fcvt.d.l fa7, t1, dyn
	-[0x80000428]:csrrs a7, fflags, zero
	-[0x8000042c]:fsd fa7, 48(a5)
Current Store : [0x80000430] : sd a7, 56(a5) -- Store: [0x80002358]:0x0000000000000001




Last Coverpoint : ['rs1 : x28', 'rd : f7', 'rs1_val == -1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000043c]:fcvt.d.l ft7, t3, dyn
	-[0x80000440]:csrrs a7, fflags, zero
	-[0x80000444]:fsd ft7, 64(a5)
Current Store : [0x80000448] : sd a7, 72(a5) -- Store: [0x80002368]:0x0000000000000001




Last Coverpoint : ['rs1 : x23', 'rd : f26', 'rs1_val == 1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000454]:fcvt.d.l fs10, s7, dyn
	-[0x80000458]:csrrs a7, fflags, zero
	-[0x8000045c]:fsd fs10, 80(a5)
Current Store : [0x80000460] : sd a7, 88(a5) -- Store: [0x80002378]:0x0000000000000001




Last Coverpoint : ['rs1 : x8', 'rd : f12']
Last Code Sequence : 
	-[0x8000046c]:fcvt.d.l fa2, fp, dyn
	-[0x80000470]:csrrs a7, fflags, zero
	-[0x80000474]:fsd fa2, 96(a5)
Current Store : [0x80000478] : sd a7, 104(a5) -- Store: [0x80002388]:0x0000000000000001




Last Coverpoint : ['rs1 : x7', 'rd : f9']
Last Code Sequence : 
	-[0x80000484]:fcvt.d.l fs1, t2, dyn
	-[0x80000488]:csrrs a7, fflags, zero
	-[0x8000048c]:fsd fs1, 112(a5)
Current Store : [0x80000490] : sd a7, 120(a5) -- Store: [0x80002398]:0x0000000000000001




Last Coverpoint : ['rs1 : x4', 'rd : f24']
Last Code Sequence : 
	-[0x8000049c]:fcvt.d.l fs8, tp, dyn
	-[0x800004a0]:csrrs a7, fflags, zero
	-[0x800004a4]:fsd fs8, 128(a5)
Current Store : [0x800004a8] : sd a7, 136(a5) -- Store: [0x800023a8]:0x0000000000000001




Last Coverpoint : ['rs1 : x10', 'rd : f8']
Last Code Sequence : 
	-[0x800004b4]:fcvt.d.l fs0, a0, dyn
	-[0x800004b8]:csrrs a7, fflags, zero
	-[0x800004bc]:fsd fs0, 144(a5)
Current Store : [0x800004c0] : sd a7, 152(a5) -- Store: [0x800023b8]:0x0000000000000001




Last Coverpoint : ['rs1 : x27', 'rd : f28']
Last Code Sequence : 
	-[0x800004cc]:fcvt.d.l ft8, s11, dyn
	-[0x800004d0]:csrrs a7, fflags, zero
	-[0x800004d4]:fsd ft8, 160(a5)
Current Store : [0x800004d8] : sd a7, 168(a5) -- Store: [0x800023c8]:0x0000000000000001




Last Coverpoint : ['rs1 : x16', 'rd : f14']
Last Code Sequence : 
	-[0x800004f0]:fcvt.d.l fa4, a6, dyn
	-[0x800004f4]:csrrs s5, fflags, zero
	-[0x800004f8]:fsd fa4, 0(s3)
Current Store : [0x800004fc] : sd s5, 8(s3) -- Store: [0x800023d8]:0x0000000000000001




Last Coverpoint : ['rs1 : x13', 'rd : f18']
Last Code Sequence : 
	-[0x80000514]:fcvt.d.l fs2, a3, dyn
	-[0x80000518]:csrrs a7, fflags, zero
	-[0x8000051c]:fsd fs2, 0(a5)
Current Store : [0x80000520] : sd a7, 8(a5) -- Store: [0x800023e8]:0x0000000000000001




Last Coverpoint : ['rs1 : x24', 'rd : f25']
Last Code Sequence : 
	-[0x8000052c]:fcvt.d.l fs9, s8, dyn
	-[0x80000530]:csrrs a7, fflags, zero
	-[0x80000534]:fsd fs9, 16(a5)
Current Store : [0x80000538] : sd a7, 24(a5) -- Store: [0x800023f8]:0x0000000000000001




Last Coverpoint : ['rs1 : x5', 'rd : f5']
Last Code Sequence : 
	-[0x80000544]:fcvt.d.l ft5, t0, dyn
	-[0x80000548]:csrrs a7, fflags, zero
	-[0x8000054c]:fsd ft5, 32(a5)
Current Store : [0x80000550] : sd a7, 40(a5) -- Store: [0x80002408]:0x0000000000000001




Last Coverpoint : ['rs1 : x26', 'rd : f31']
Last Code Sequence : 
	-[0x8000055c]:fcvt.d.l ft11, s10, dyn
	-[0x80000560]:csrrs a7, fflags, zero
	-[0x80000564]:fsd ft11, 48(a5)
Current Store : [0x80000568] : sd a7, 56(a5) -- Store: [0x80002418]:0x0000000000000001




Last Coverpoint : ['rs1 : x29', 'rd : f30']
Last Code Sequence : 
	-[0x80000574]:fcvt.d.l ft10, t4, dyn
	-[0x80000578]:csrrs a7, fflags, zero
	-[0x8000057c]:fsd ft10, 64(a5)
Current Store : [0x80000580] : sd a7, 72(a5) -- Store: [0x80002428]:0x0000000000000001




Last Coverpoint : ['rs1 : x17', 'rd : f3']
Last Code Sequence : 
	-[0x80000598]:fcvt.d.l ft3, a7, dyn
	-[0x8000059c]:csrrs s5, fflags, zero
	-[0x800005a0]:fsd ft3, 0(s3)
Current Store : [0x800005a4] : sd s5, 8(s3) -- Store: [0x80002438]:0x0000000000000001




Last Coverpoint : ['rs1 : x1', 'rd : f1']
Last Code Sequence : 
	-[0x800005bc]:fcvt.d.l ft1, ra, dyn
	-[0x800005c0]:csrrs a7, fflags, zero
	-[0x800005c4]:fsd ft1, 0(a5)
Current Store : [0x800005c8] : sd a7, 8(a5) -- Store: [0x80002448]:0x0000000000000001




Last Coverpoint : ['rs1 : x31', 'rd : f23']
Last Code Sequence : 
	-[0x800005d4]:fcvt.d.l fs7, t6, dyn
	-[0x800005d8]:csrrs a7, fflags, zero
	-[0x800005dc]:fsd fs7, 16(a5)
Current Store : [0x800005e0] : sd a7, 24(a5) -- Store: [0x80002458]:0x0000000000000001




Last Coverpoint : ['rs1 : x14', 'rd : f15']
Last Code Sequence : 
	-[0x800005ec]:fcvt.d.l fa5, a4, dyn
	-[0x800005f0]:csrrs a7, fflags, zero
	-[0x800005f4]:fsd fa5, 32(a5)
Current Store : [0x800005f8] : sd a7, 40(a5) -- Store: [0x80002468]:0x0000000000000001




Last Coverpoint : ['rs1 : x3', 'rd : f22']
Last Code Sequence : 
	-[0x80000604]:fcvt.d.l fs6, gp, dyn
	-[0x80000608]:csrrs a7, fflags, zero
	-[0x8000060c]:fsd fs6, 48(a5)
Current Store : [0x80000610] : sd a7, 56(a5) -- Store: [0x80002478]:0x0000000000000001




Last Coverpoint : ['rs1 : x19', 'rd : f20']
Last Code Sequence : 
	-[0x8000061c]:fcvt.d.l fs4, s3, dyn
	-[0x80000620]:csrrs a7, fflags, zero
	-[0x80000624]:fsd fs4, 64(a5)
Current Store : [0x80000628] : sd a7, 72(a5) -- Store: [0x80002488]:0x0000000000000001




Last Coverpoint : ['rs1 : x18', 'rd : f10']
Last Code Sequence : 
	-[0x80000634]:fcvt.d.l fa0, s2, dyn
	-[0x80000638]:csrrs a7, fflags, zero
	-[0x8000063c]:fsd fa0, 80(a5)
Current Store : [0x80000640] : sd a7, 88(a5) -- Store: [0x80002498]:0x0000000000000001




Last Coverpoint : ['rs1 : x0', 'rd : f27']
Last Code Sequence : 
	-[0x8000064c]:fcvt.d.l fs11, zero, dyn
	-[0x80000650]:csrrs a7, fflags, zero
	-[0x80000654]:fsd fs11, 96(a5)
Current Store : [0x80000658] : sd a7, 104(a5) -- Store: [0x800024a8]:0x0000000000000001




Last Coverpoint : ['rs1 : x11', 'rd : f11']
Last Code Sequence : 
	-[0x80000664]:fcvt.d.l fa1, a1, dyn
	-[0x80000668]:csrrs a7, fflags, zero
	-[0x8000066c]:fsd fa1, 112(a5)
Current Store : [0x80000670] : sd a7, 120(a5) -- Store: [0x800024b8]:0x0000000000000001




Last Coverpoint : ['rs1 : x21', 'rd : f6']
Last Code Sequence : 
	-[0x8000067c]:fcvt.d.l ft6, s5, dyn
	-[0x80000680]:csrrs a7, fflags, zero
	-[0x80000684]:fsd ft6, 128(a5)
Current Store : [0x80000688] : sd a7, 136(a5) -- Store: [0x800024c8]:0x0000000000000001




Last Coverpoint : ['rs1 : x20', 'rd : f0']
Last Code Sequence : 
	-[0x80000694]:fcvt.d.l ft0, s4, dyn
	-[0x80000698]:csrrs a7, fflags, zero
	-[0x8000069c]:fsd ft0, 144(a5)
Current Store : [0x800006a0] : sd a7, 152(a5) -- Store: [0x800024d8]:0x0000000000000001




Last Coverpoint : ['rs1 : x30', 'rd : f29']
Last Code Sequence : 
	-[0x800006ac]:fcvt.d.l ft9, t5, dyn
	-[0x800006b0]:csrrs a7, fflags, zero
	-[0x800006b4]:fsd ft9, 160(a5)
Current Store : [0x800006b8] : sd a7, 168(a5) -- Store: [0x800024e8]:0x0000000000000001




Last Coverpoint : ['rs1 : x2', 'rd : f21']
Last Code Sequence : 
	-[0x800006c4]:fcvt.d.l fs5, sp, dyn
	-[0x800006c8]:csrrs a7, fflags, zero
	-[0x800006cc]:fsd fs5, 176(a5)
Current Store : [0x800006d0] : sd a7, 184(a5) -- Store: [0x800024f8]:0x0000000000000001




Last Coverpoint : ['rs1 : x25', 'rd : f13']
Last Code Sequence : 
	-[0x800006dc]:fcvt.d.l fa3, s9, dyn
	-[0x800006e0]:csrrs a7, fflags, zero
	-[0x800006e4]:fsd fa3, 192(a5)
Current Store : [0x800006e8] : sd a7, 200(a5) -- Store: [0x80002508]:0x0000000000000001





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

|s.no|            signature             |                                           coverpoints                                            |                                                        code                                                        |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002310]<br>0x0000000080002310|- opcode : fcvt.d.l<br> - rs1 : x15<br> - rd : f19<br> - rs1_val == 0 and rm_val == 0  #nosat<br> |[0x800003b8]:fcvt.d.l fs3, a5, dyn<br> [0x800003bc]:csrrs s5, fflags, zero<br> [0x800003c0]:fsd fs3, 0(s3)<br>      |
|   2|[0x80002320]<br>0x0000000080002010|- rs1 : x12<br> - rd : f16<br> - rs1_val == -5270258713649211392 and rm_val == 0  #nosat<br>      |[0x800003dc]:fcvt.d.l fa6, a2, dyn<br> [0x800003e0]:csrrs a7, fflags, zero<br> [0x800003e4]:fsd fa6, 0(a5)<br>      |
|   3|[0x80002330]<br>0xBFDDB7D5BFDDB7D5|- rs1 : x22<br> - rd : f4<br> - rs1_val == 5270258713649211392 and rm_val == 0  #nosat<br>        |[0x800003f4]:fcvt.d.l ft4, s6, dyn<br> [0x800003f8]:csrrs a7, fflags, zero<br> [0x800003fc]:fsd ft4, 16(a5)<br>     |
|   4|[0x80002340]<br>0x0000000A00006000|- rs1 : x9<br> - rd : f2<br> - rs1_val == -9223372036854775807 and rm_val == 0  #nosat<br>        |[0x8000040c]:fcvt.d.l ft2, s1, dyn<br> [0x80000410]:csrrs a7, fflags, zero<br> [0x80000414]:fsd ft2, 32(a5)<br>     |
|   5|[0x80002350]<br>0x0000000000000001|- rs1 : x6<br> - rd : f17<br> - rs1_val == 9223372036854775807 and rm_val == 0  #nosat<br>        |[0x80000424]:fcvt.d.l fa7, t1, dyn<br> [0x80000428]:csrrs a7, fflags, zero<br> [0x8000042c]:fsd fa7, 48(a5)<br>     |
|   6|[0x80002360]<br>0xB7FBB6FAB7FBB6FA|- rs1 : x28<br> - rd : f7<br> - rs1_val == -1 and rm_val == 0  #nosat<br>                         |[0x8000043c]:fcvt.d.l ft7, t3, dyn<br> [0x80000440]:csrrs a7, fflags, zero<br> [0x80000444]:fsd ft7, 64(a5)<br>     |
|   7|[0x80002370]<br>0x76DF56FF76DF56FF|- rs1 : x23<br> - rd : f26<br> - rs1_val == 1 and rm_val == 0  #nosat<br>                         |[0x80000454]:fcvt.d.l fs10, s7, dyn<br> [0x80000458]:csrrs a7, fflags, zero<br> [0x8000045c]:fsd fs10, 80(a5)<br>   |
|   8|[0x80002380]<br>0xB6DC479F7A881800|- rs1 : x8<br> - rd : f12<br>                                                                     |[0x8000046c]:fcvt.d.l fa2, fp, dyn<br> [0x80000470]:csrrs a7, fflags, zero<br> [0x80000474]:fsd fa2, 96(a5)<br>     |
|   9|[0x80002390]<br>0x8000000000000001|- rs1 : x7<br> - rd : f9<br>                                                                      |[0x80000484]:fcvt.d.l fs1, t2, dyn<br> [0x80000488]:csrrs a7, fflags, zero<br> [0x8000048c]:fsd fs1, 112(a5)<br>    |
|  10|[0x800023a0]<br>0xDB7D5BFDDB7D5BFD|- rs1 : x4<br> - rd : f24<br>                                                                     |[0x8000049c]:fcvt.d.l fs8, tp, dyn<br> [0x800004a0]:csrrs a7, fflags, zero<br> [0x800004a4]:fsd fs8, 128(a5)<br>    |
|  11|[0x800023b0]<br>0x0000000000000000|- rs1 : x10<br> - rd : f8<br>                                                                     |[0x800004b4]:fcvt.d.l fs0, a0, dyn<br> [0x800004b8]:csrrs a7, fflags, zero<br> [0x800004bc]:fsd fs0, 144(a5)<br>    |
|  12|[0x800023c0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x27<br> - rd : f28<br>                                                                    |[0x800004cc]:fcvt.d.l ft8, s11, dyn<br> [0x800004d0]:csrrs a7, fflags, zero<br> [0x800004d4]:fsd ft8, 160(a5)<br>   |
|  13|[0x800023d0]<br>0xF56FF76DF56FF76D|- rs1 : x16<br> - rd : f14<br>                                                                    |[0x800004f0]:fcvt.d.l fa4, a6, dyn<br> [0x800004f4]:csrrs s5, fflags, zero<br> [0x800004f8]:fsd fa4, 0(s3)<br>      |
|  14|[0x800023e0]<br>0xDF56FF76DF56FF76|- rs1 : x13<br> - rd : f18<br>                                                                    |[0x80000514]:fcvt.d.l fs2, a3, dyn<br> [0x80000518]:csrrs a7, fflags, zero<br> [0x8000051c]:fsd fs2, 0(a5)<br>      |
|  15|[0x800023f0]<br>0xEDBEADFEEDBEADFE|- rs1 : x24<br> - rd : f25<br>                                                                    |[0x8000052c]:fcvt.d.l fs9, s8, dyn<br> [0x80000530]:csrrs a7, fflags, zero<br> [0x80000534]:fsd fs9, 16(a5)<br>     |
|  16|[0x80002400]<br>0x0000000000000000|- rs1 : x5<br> - rd : f5<br>                                                                      |[0x80000544]:fcvt.d.l ft5, t0, dyn<br> [0x80000548]:csrrs a7, fflags, zero<br> [0x8000054c]:fsd ft5, 32(a5)<br>     |
|  17|[0x80002410]<br>0xFBB6FAB7FBB6FAB7|- rs1 : x26<br> - rd : f31<br>                                                                    |[0x8000055c]:fcvt.d.l ft11, s10, dyn<br> [0x80000560]:csrrs a7, fflags, zero<br> [0x80000564]:fsd ft11, 48(a5)<br>  |
|  18|[0x80002420]<br>0xF76DF56FF76DF56F|- rs1 : x29<br> - rd : f30<br>                                                                    |[0x80000574]:fcvt.d.l ft10, t4, dyn<br> [0x80000578]:csrrs a7, fflags, zero<br> [0x8000057c]:fsd ft10, 64(a5)<br>   |
|  19|[0x80002430]<br>0x0000000A00000000|- rs1 : x17<br> - rd : f3<br>                                                                     |[0x80000598]:fcvt.d.l ft3, a7, dyn<br> [0x8000059c]:csrrs s5, fflags, zero<br> [0x800005a0]:fsd ft3, 0(s3)<br>      |
|  20|[0x80002440]<br>0x0000000000000000|- rs1 : x1<br> - rd : f1<br>                                                                      |[0x800005bc]:fcvt.d.l ft1, ra, dyn<br> [0x800005c0]:csrrs a7, fflags, zero<br> [0x800005c4]:fsd ft1, 0(a5)<br>      |
|  21|[0x80002450]<br>0x0000000000000001|- rs1 : x31<br> - rd : f23<br>                                                                    |[0x800005d4]:fcvt.d.l fs7, t6, dyn<br> [0x800005d8]:csrrs a7, fflags, zero<br> [0x800005dc]:fsd fs7, 16(a5)<br>     |
|  22|[0x80002460]<br>0x0000000080002440|- rs1 : x14<br> - rd : f15<br>                                                                    |[0x800005ec]:fcvt.d.l fa5, a4, dyn<br> [0x800005f0]:csrrs a7, fflags, zero<br> [0x800005f4]:fsd fa5, 32(a5)<br>     |
|  23|[0x80002470]<br>0x4923B8608577E800|- rs1 : x3<br> - rd : f22<br>                                                                     |[0x80000604]:fcvt.d.l fs6, gp, dyn<br> [0x80000608]:csrrs a7, fflags, zero<br> [0x8000060c]:fsd fs6, 48(a5)<br>     |
|  24|[0x80002480]<br>0x0000000080002010|- rs1 : x19<br> - rd : f20<br>                                                                    |[0x8000061c]:fcvt.d.l fs4, s3, dyn<br> [0x80000620]:csrrs a7, fflags, zero<br> [0x80000624]:fsd fs4, 64(a5)<br>     |
|  25|[0x80002490]<br>0x0000000000000000|- rs1 : x18<br> - rd : f10<br>                                                                    |[0x80000634]:fcvt.d.l fa0, s2, dyn<br> [0x80000638]:csrrs a7, fflags, zero<br> [0x8000063c]:fsd fa0, 80(a5)<br>     |
|  26|[0x800024a0]<br>0x0000000000000000|- rs1 : x0<br> - rd : f27<br>                                                                     |[0x8000064c]:fcvt.d.l fs11, zero, dyn<br> [0x80000650]:csrrs a7, fflags, zero<br> [0x80000654]:fsd fs11, 96(a5)<br> |
|  27|[0x800024b0]<br>0x0000000000000000|- rs1 : x11<br> - rd : f11<br>                                                                    |[0x80000664]:fcvt.d.l fa1, a1, dyn<br> [0x80000668]:csrrs a7, fflags, zero<br> [0x8000066c]:fsd fa1, 112(a5)<br>    |
|  28|[0x800024c0]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x21<br> - rd : f6<br>                                                                     |[0x8000067c]:fcvt.d.l ft6, s5, dyn<br> [0x80000680]:csrrs a7, fflags, zero<br> [0x80000684]:fsd ft6, 128(a5)<br>    |
|  29|[0x800024d0]<br>0x0000000000000000|- rs1 : x20<br> - rd : f0<br>                                                                     |[0x80000694]:fcvt.d.l ft0, s4, dyn<br> [0x80000698]:csrrs a7, fflags, zero<br> [0x8000069c]:fsd ft0, 144(a5)<br>    |
|  30|[0x800024e0]<br>0x0000000000000000|- rs1 : x30<br> - rd : f29<br>                                                                    |[0x800006ac]:fcvt.d.l ft9, t5, dyn<br> [0x800006b0]:csrrs a7, fflags, zero<br> [0x800006b4]:fsd ft9, 160(a5)<br>    |
|  31|[0x800024f0]<br>0x0000000000000000|- rs1 : x2<br> - rd : f21<br>                                                                     |[0x800006c4]:fcvt.d.l fs5, sp, dyn<br> [0x800006c8]:csrrs a7, fflags, zero<br> [0x800006cc]:fsd fs5, 176(a5)<br>    |
|  32|[0x80002500]<br>0x0000000000000000|- rs1 : x25<br> - rd : f13<br>                                                                    |[0x800006dc]:fcvt.d.l fa3, s9, dyn<br> [0x800006e0]:csrrs a7, fflags, zero<br> [0x800006e4]:fsd fa3, 192(a5)<br>    |
