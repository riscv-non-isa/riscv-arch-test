
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
| COV_LABELS                | fcvt.d.lu_b25      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fcvt.d.lu_b25-01.S/ref.S    |
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
Last Coverpoint : ['opcode : fcvt.d.lu', 'rs1 : x14', 'rd : f3', 'rs1_val == 0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fcvt.d.lu ft3, a4, dyn
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:fsd ft3, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rs1 : x21', 'rd : f23', 'rs1_val == -5270258713649211392 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003d0]:fcvt.d.lu fs7, s5, dyn
	-[0x800003d4]:csrrs a7, fflags, zero
	-[0x800003d8]:fsd fs7, 16(a5)
Current Store : [0x800003dc] : sd a7, 24(a5) -- Store: [0x80002328]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rd : f0', 'rs1_val == 5270258713649211392 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003e8]:fcvt.d.lu ft0, s7, dyn
	-[0x800003ec]:csrrs a7, fflags, zero
	-[0x800003f0]:fsd ft0, 32(a5)
Current Store : [0x800003f4] : sd a7, 40(a5) -- Store: [0x80002338]:0x0000000000000000




Last Coverpoint : ['rs1 : x1', 'rd : f24', 'rs1_val == -9223372036854775807 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fcvt.d.lu fs8, ra, dyn
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fs8, 48(a5)
Current Store : [0x8000040c] : sd a7, 56(a5) -- Store: [0x80002348]:0x0000000000000001




Last Coverpoint : ['rs1 : x3', 'rd : f13', 'rs1_val == 9223372036854775807 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fcvt.d.lu fa3, gp, dyn
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsd fa3, 64(a5)
Current Store : [0x80000424] : sd a7, 72(a5) -- Store: [0x80002358]:0x0000000000000001




Last Coverpoint : ['rs1 : x19', 'rd : f20', 'rs1_val == -1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fcvt.d.lu fs4, s3, dyn
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:fsd fs4, 80(a5)
Current Store : [0x8000043c] : sd a7, 88(a5) -- Store: [0x80002368]:0x0000000000000001




Last Coverpoint : ['rs1 : x28', 'rd : f21', 'rs1_val == 1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fcvt.d.lu fs5, t3, dyn
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd fs5, 96(a5)
Current Store : [0x80000454] : sd a7, 104(a5) -- Store: [0x80002378]:0x0000000000000001




Last Coverpoint : ['rs1 : x30', 'rd : f12']
Last Code Sequence : 
	-[0x80000460]:fcvt.d.lu fa2, t5, dyn
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd fa2, 112(a5)
Current Store : [0x8000046c] : sd a7, 120(a5) -- Store: [0x80002388]:0x0000000000000001




Last Coverpoint : ['rs1 : x20', 'rd : f30']
Last Code Sequence : 
	-[0x80000478]:fcvt.d.lu ft10, s4, dyn
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:fsd ft10, 128(a5)
Current Store : [0x80000484] : sd a7, 136(a5) -- Store: [0x80002398]:0x0000000000000001




Last Coverpoint : ['rs1 : x31', 'rd : f15']
Last Code Sequence : 
	-[0x80000490]:fcvt.d.lu fa5, t6, dyn
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:fsd fa5, 144(a5)
Current Store : [0x8000049c] : sd a7, 152(a5) -- Store: [0x800023a8]:0x0000000000000001




Last Coverpoint : ['rs1 : x22', 'rd : f2']
Last Code Sequence : 
	-[0x800004a8]:fcvt.d.lu ft2, s6, dyn
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:fsd ft2, 160(a5)
Current Store : [0x800004b4] : sd a7, 168(a5) -- Store: [0x800023b8]:0x0000000000000001




Last Coverpoint : ['rs1 : x15', 'rd : f31']
Last Code Sequence : 
	-[0x800004cc]:fcvt.d.lu ft11, a5, dyn
	-[0x800004d0]:csrrs s5, fflags, zero
	-[0x800004d4]:fsd ft11, 0(s3)
Current Store : [0x800004d8] : sd s5, 8(s3) -- Store: [0x800023c8]:0x0000000000000001




Last Coverpoint : ['rs1 : x8', 'rd : f16']
Last Code Sequence : 
	-[0x800004f0]:fcvt.d.lu fa6, fp, dyn
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd fa6, 0(a5)
Current Store : [0x800004fc] : sd a7, 8(a5) -- Store: [0x800023d8]:0x0000000000000001




Last Coverpoint : ['rs1 : x4', 'rd : f1']
Last Code Sequence : 
	-[0x80000508]:fcvt.d.lu ft1, tp, dyn
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:fsd ft1, 16(a5)
Current Store : [0x80000514] : sd a7, 24(a5) -- Store: [0x800023e8]:0x0000000000000001




Last Coverpoint : ['rs1 : x9', 'rd : f26']
Last Code Sequence : 
	-[0x80000520]:fcvt.d.lu fs10, s1, dyn
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd fs10, 32(a5)
Current Store : [0x8000052c] : sd a7, 40(a5) -- Store: [0x800023f8]:0x0000000000000001




Last Coverpoint : ['rs1 : x11', 'rd : f4']
Last Code Sequence : 
	-[0x80000538]:fcvt.d.lu ft4, a1, dyn
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:fsd ft4, 48(a5)
Current Store : [0x80000544] : sd a7, 56(a5) -- Store: [0x80002408]:0x0000000000000001




Last Coverpoint : ['rs1 : x13', 'rd : f6']
Last Code Sequence : 
	-[0x80000550]:fcvt.d.lu ft6, a3, dyn
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:fsd ft6, 64(a5)
Current Store : [0x8000055c] : sd a7, 72(a5) -- Store: [0x80002418]:0x0000000000000001




Last Coverpoint : ['rs1 : x25', 'rd : f7']
Last Code Sequence : 
	-[0x80000568]:fcvt.d.lu ft7, s9, dyn
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsd ft7, 80(a5)
Current Store : [0x80000574] : sd a7, 88(a5) -- Store: [0x80002428]:0x0000000000000001




Last Coverpoint : ['rs1 : x12', 'rd : f5']
Last Code Sequence : 
	-[0x80000580]:fcvt.d.lu ft5, a2, dyn
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd ft5, 96(a5)
Current Store : [0x8000058c] : sd a7, 104(a5) -- Store: [0x80002438]:0x0000000000000001




Last Coverpoint : ['rs1 : x18', 'rd : f27']
Last Code Sequence : 
	-[0x80000598]:fcvt.d.lu fs11, s2, dyn
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd fs11, 112(a5)
Current Store : [0x800005a4] : sd a7, 120(a5) -- Store: [0x80002448]:0x0000000000000001




Last Coverpoint : ['rs1 : x5', 'rd : f19']
Last Code Sequence : 
	-[0x800005b0]:fcvt.d.lu fs3, t0, dyn
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:fsd fs3, 128(a5)
Current Store : [0x800005bc] : sd a7, 136(a5) -- Store: [0x80002458]:0x0000000000000001




Last Coverpoint : ['rs1 : x0', 'rd : f10']
Last Code Sequence : 
	-[0x800005c8]:fcvt.d.lu fa0, zero, dyn
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:fsd fa0, 144(a5)
Current Store : [0x800005d4] : sd a7, 152(a5) -- Store: [0x80002468]:0x0000000000000001




Last Coverpoint : ['rs1 : x29', 'rd : f22']
Last Code Sequence : 
	-[0x800005e0]:fcvt.d.lu fs6, t4, dyn
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd fs6, 160(a5)
Current Store : [0x800005ec] : sd a7, 168(a5) -- Store: [0x80002478]:0x0000000000000001




Last Coverpoint : ['rs1 : x26', 'rd : f18']
Last Code Sequence : 
	-[0x800005f8]:fcvt.d.lu fs2, s10, dyn
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:fsd fs2, 176(a5)
Current Store : [0x80000604] : sd a7, 184(a5) -- Store: [0x80002488]:0x0000000000000001




Last Coverpoint : ['rs1 : x2', 'rd : f11']
Last Code Sequence : 
	-[0x80000610]:fcvt.d.lu fa1, sp, dyn
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsd fa1, 192(a5)
Current Store : [0x8000061c] : sd a7, 200(a5) -- Store: [0x80002498]:0x0000000000000001




Last Coverpoint : ['rs1 : x16', 'rd : f14']
Last Code Sequence : 
	-[0x80000634]:fcvt.d.lu fa4, a6, dyn
	-[0x80000638]:csrrs s5, fflags, zero
	-[0x8000063c]:fsd fa4, 0(s3)
Current Store : [0x80000640] : sd s5, 8(s3) -- Store: [0x800024a8]:0x0000000000000001




Last Coverpoint : ['rs1 : x27', 'rd : f8']
Last Code Sequence : 
	-[0x80000658]:fcvt.d.lu fs0, s11, dyn
	-[0x8000065c]:csrrs a7, fflags, zero
	-[0x80000660]:fsd fs0, 0(a5)
Current Store : [0x80000664] : sd a7, 8(a5) -- Store: [0x800024b8]:0x0000000000000001




Last Coverpoint : ['rs1 : x10', 'rd : f28']
Last Code Sequence : 
	-[0x80000670]:fcvt.d.lu ft8, a0, dyn
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:fsd ft8, 16(a5)
Current Store : [0x8000067c] : sd a7, 24(a5) -- Store: [0x800024c8]:0x0000000000000001




Last Coverpoint : ['rs1 : x24', 'rd : f25']
Last Code Sequence : 
	-[0x80000688]:fcvt.d.lu fs9, s8, dyn
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:fsd fs9, 32(a5)
Current Store : [0x80000694] : sd a7, 40(a5) -- Store: [0x800024d8]:0x0000000000000001




Last Coverpoint : ['rs1 : x6', 'rd : f17']
Last Code Sequence : 
	-[0x800006a0]:fcvt.d.lu fa7, t1, dyn
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd fa7, 48(a5)
Current Store : [0x800006ac] : sd a7, 56(a5) -- Store: [0x800024e8]:0x0000000000000001




Last Coverpoint : ['rs1 : x7', 'rd : f9']
Last Code Sequence : 
	-[0x800006b8]:fcvt.d.lu fs1, t2, dyn
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsd fs1, 64(a5)
Current Store : [0x800006c4] : sd a7, 72(a5) -- Store: [0x800024f8]:0x0000000000000001




Last Coverpoint : ['rs1 : x17', 'rd : f29']
Last Code Sequence : 
	-[0x800006dc]:fcvt.d.lu ft9, a7, dyn
	-[0x800006e0]:csrrs s5, fflags, zero
	-[0x800006e4]:fsd ft9, 0(s3)
Current Store : [0x800006e8] : sd s5, 8(s3) -- Store: [0x80002508]:0x0000000000000001





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
|   1|[0x80002310]<br>0x0000000A00000000|- opcode : fcvt.d.lu<br> - rs1 : x14<br> - rd : f3<br> - rs1_val == 0 and rm_val == 0  #nosat<br> |[0x800003b8]:fcvt.d.lu ft3, a4, dyn<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:fsd ft3, 0(a5)<br>     |
|   2|[0x80002320]<br>0xB6FAB7FBB6FAB7FB|- rs1 : x21<br> - rd : f23<br> - rs1_val == -5270258713649211392 and rm_val == 0  #nosat<br>      |[0x800003d0]:fcvt.d.lu fs7, s5, dyn<br> [0x800003d4]:csrrs a7, fflags, zero<br> [0x800003d8]:fsd fs7, 16(a5)<br>    |
|   3|[0x80002330]<br>0x0000000000000000|- rs1 : x23<br> - rd : f0<br> - rs1_val == 5270258713649211392 and rm_val == 0  #nosat<br>        |[0x800003e8]:fcvt.d.lu ft0, s7, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:fsd ft0, 32(a5)<br>    |
|   4|[0x80002340]<br>0xDB7D5BFDDB7D5BFD|- rs1 : x1<br> - rd : f24<br> - rs1_val == -9223372036854775807 and rm_val == 0  #nosat<br>       |[0x80000400]:fcvt.d.lu fs8, ra, dyn<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fs8, 48(a5)<br>    |
|   5|[0x80002350]<br>0xEADFEEDBEADFEEDB|- rs1 : x3<br> - rd : f13<br> - rs1_val == 9223372036854775807 and rm_val == 0  #nosat<br>        |[0x80000418]:fcvt.d.lu fa3, gp, dyn<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsd fa3, 64(a5)<br>    |
|   6|[0x80002360]<br>0xB7D5BFDDB7D5BFDD|- rs1 : x19<br> - rd : f20<br> - rs1_val == -1 and rm_val == 0  #nosat<br>                        |[0x80000430]:fcvt.d.lu fs4, s3, dyn<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:fsd fs4, 80(a5)<br>    |
|   7|[0x80002370]<br>0xB6DC479F7A881800|- rs1 : x28<br> - rd : f21<br> - rs1_val == 1 and rm_val == 0  #nosat<br>                         |[0x80000448]:fcvt.d.lu fs5, t3, dyn<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd fs5, 96(a5)<br>    |
|   8|[0x80002380]<br>0xD5BFDDB7D5BFDDB7|- rs1 : x30<br> - rd : f12<br>                                                                    |[0x80000460]:fcvt.d.lu fa2, t5, dyn<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd fa2, 112(a5)<br>   |
|   9|[0x80002390]<br>0x0000000000000000|- rs1 : x20<br> - rd : f30<br>                                                                    |[0x80000478]:fcvt.d.lu ft10, s4, dyn<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:fsd ft10, 128(a5)<br> |
|  10|[0x800023a0]<br>0x0000000080002310|- rs1 : x31<br> - rd : f15<br>                                                                    |[0x80000490]:fcvt.d.lu fa5, t6, dyn<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:fsd fa5, 144(a5)<br>   |
|  11|[0x800023b0]<br>0x0000000A00006000|- rs1 : x22<br> - rd : f2<br>                                                                     |[0x800004a8]:fcvt.d.lu ft2, s6, dyn<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:fsd ft2, 160(a5)<br>   |
|  12|[0x800023c0]<br>0x0000000000000000|- rs1 : x15<br> - rd : f31<br>                                                                    |[0x800004cc]:fcvt.d.lu ft11, a5, dyn<br> [0x800004d0]:csrrs s5, fflags, zero<br> [0x800004d4]:fsd ft11, 0(s3)<br>   |
|  13|[0x800023d0]<br>0x0000000080002010|- rs1 : x8<br> - rd : f16<br>                                                                     |[0x800004f0]:fcvt.d.lu fa6, fp, dyn<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd fa6, 0(a5)<br>     |
|  14|[0x800023e0]<br>0x8000000000000001|- rs1 : x4<br> - rd : f1<br>                                                                      |[0x80000508]:fcvt.d.lu ft1, tp, dyn<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:fsd ft1, 16(a5)<br>    |
|  15|[0x800023f0]<br>0x76DF56FF76DF56FF|- rs1 : x9<br> - rd : f26<br>                                                                     |[0x80000520]:fcvt.d.lu fs10, s1, dyn<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd fs10, 32(a5)<br>  |
|  16|[0x80002400]<br>0x0000000000000000|- rs1 : x11<br> - rd : f4<br>                                                                     |[0x80000538]:fcvt.d.lu ft4, a1, dyn<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:fsd ft4, 48(a5)<br>    |
|  17|[0x80002410]<br>0x0000000080002000|- rs1 : x13<br> - rd : f6<br>                                                                     |[0x80000550]:fcvt.d.lu ft6, a3, dyn<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:fsd ft6, 64(a5)<br>    |
|  18|[0x80002420]<br>0xB7FBB6FAB7FBB6FA|- rs1 : x25<br> - rd : f7<br>                                                                     |[0x80000568]:fcvt.d.lu ft7, s9, dyn<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsd ft7, 80(a5)<br>    |
|  19|[0x80002430]<br>0x0000000080000390|- rs1 : x12<br> - rd : f5<br>                                                                     |[0x80000580]:fcvt.d.lu ft5, a2, dyn<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd ft5, 96(a5)<br>    |
|  20|[0x80002440]<br>0xBB6FAB7FBB6FAB7F|- rs1 : x18<br> - rd : f27<br>                                                                    |[0x80000598]:fcvt.d.lu fs11, s2, dyn<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd fs11, 112(a5)<br> |
|  21|[0x80002450]<br>0x00000000800023C0|- rs1 : x5<br> - rd : f19<br>                                                                     |[0x800005b0]:fcvt.d.lu fs3, t0, dyn<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:fsd fs3, 128(a5)<br>   |
|  22|[0x80002460]<br>0x56FF76DF56FF76DF|- rs1 : x0<br> - rd : f10<br>                                                                     |[0x800005c8]:fcvt.d.lu fa0, zero, dyn<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:fsd fa0, 144(a5)<br> |
|  23|[0x80002470]<br>0x0000000000000000|- rs1 : x29<br> - rd : f22<br>                                                                    |[0x800005e0]:fcvt.d.lu fs6, t4, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd fs6, 160(a5)<br>   |
|  24|[0x80002480]<br>0x0000000000000000|- rs1 : x26<br> - rd : f18<br>                                                                    |[0x800005f8]:fcvt.d.lu fs2, s10, dyn<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:fsd fs2, 176(a5)<br>  |
|  25|[0x80002490]<br>0x0000000000000000|- rs1 : x2<br> - rd : f11<br>                                                                     |[0x80000610]:fcvt.d.lu fa1, sp, dyn<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsd fa1, 192(a5)<br>   |
|  26|[0x800024a0]<br>0x0000000000000000|- rs1 : x16<br> - rd : f14<br>                                                                    |[0x80000634]:fcvt.d.lu fa4, a6, dyn<br> [0x80000638]:csrrs s5, fflags, zero<br> [0x8000063c]:fsd fa4, 0(s3)<br>     |
|  27|[0x800024b0]<br>0x0000000000000000|- rs1 : x27<br> - rd : f8<br>                                                                     |[0x80000658]:fcvt.d.lu fs0, s11, dyn<br> [0x8000065c]:csrrs a7, fflags, zero<br> [0x80000660]:fsd fs0, 0(a5)<br>    |
|  28|[0x800024c0]<br>0x0000000000000001|- rs1 : x10<br> - rd : f28<br>                                                                    |[0x80000670]:fcvt.d.lu ft8, a0, dyn<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:fsd ft8, 16(a5)<br>    |
|  29|[0x800024d0]<br>0x0000000000000000|- rs1 : x24<br> - rd : f25<br>                                                                    |[0x80000688]:fcvt.d.lu fs9, s8, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsd fs9, 32(a5)<br>    |
|  30|[0x800024e0]<br>0x0000000000000001|- rs1 : x6<br> - rd : f17<br>                                                                     |[0x800006a0]:fcvt.d.lu fa7, t1, dyn<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd fa7, 48(a5)<br>    |
|  31|[0x800024f0]<br>0x0000000000000000|- rs1 : x7<br> - rd : f9<br>                                                                      |[0x800006b8]:fcvt.d.lu fs1, t2, dyn<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsd fs1, 64(a5)<br>    |
|  32|[0x80002500]<br>0x0000000000000000|- rs1 : x17<br> - rd : f29<br>                                                                    |[0x800006dc]:fcvt.d.lu ft9, a7, dyn<br> [0x800006e0]:csrrs s5, fflags, zero<br> [0x800006e4]:fsd ft9, 0(s3)<br>     |
