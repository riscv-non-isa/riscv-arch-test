
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000700')]      |
| SIG_REGION                | [('0x80002310', '0x80002510', '64 dwords')]      |
| COV_LABELS                | fmv.d.x_b25      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fmv.d.x_b25-01.S/ref.S    |
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
Last Coverpoint : ['opcode : fmv.d.x', 'rs1 : x13', 'rd : f4', 'rs1_val == 0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fmv.d.x ft4, a3
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:fsd ft4, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rs1 : x17', 'rd : f8', 'rs1_val == -5270258713649211392 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003dc]:fmv.d.x fs0, a7
	-[0x800003e0]:csrrs s5, fflags, zero
	-[0x800003e4]:fsd fs0, 0(s3)
Current Store : [0x800003e8] : sd s5, 8(s3) -- Store: [0x80002328]:0x0000000000000000




Last Coverpoint : ['rs1 : x9', 'rd : f10', 'rs1_val == 5270258713649211392 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fmv.d.x fa0, s1
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fa0, 0(a5)
Current Store : [0x8000040c] : sd a7, 8(a5) -- Store: [0x80002338]:0x0000000000000000




Last Coverpoint : ['rs1 : x18', 'rd : f2', 'rs1_val == -9223372036854775807 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fmv.d.x ft2, s2
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsd ft2, 16(a5)
Current Store : [0x80000424] : sd a7, 24(a5) -- Store: [0x80002348]:0x0000000000000000




Last Coverpoint : ['rs1 : x26', 'rd : f27', 'rs1_val == 9223372036854775807 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fmv.d.x fs11, s10
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:fsd fs11, 32(a5)
Current Store : [0x8000043c] : sd a7, 40(a5) -- Store: [0x80002358]:0x0000000000000000




Last Coverpoint : ['rs1 : x31', 'rd : f15', 'rs1_val == -1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fmv.d.x fa5, t6
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd fa5, 48(a5)
Current Store : [0x80000454] : sd a7, 56(a5) -- Store: [0x80002368]:0x0000000000000000




Last Coverpoint : ['rs1 : x30', 'rd : f20', 'rs1_val == 1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000460]:fmv.d.x fs4, t5
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd fs4, 64(a5)
Current Store : [0x8000046c] : sd a7, 72(a5) -- Store: [0x80002378]:0x0000000000000000




Last Coverpoint : ['rs1 : x0', 'rd : f18']
Last Code Sequence : 
	-[0x80000478]:fmv.d.x fs2, zero
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:fsd fs2, 80(a5)
Current Store : [0x80000484] : sd a7, 88(a5) -- Store: [0x80002388]:0x0000000000000000




Last Coverpoint : ['rs1 : x7', 'rd : f9']
Last Code Sequence : 
	-[0x80000490]:fmv.d.x fs1, t2
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:fsd fs1, 96(a5)
Current Store : [0x8000049c] : sd a7, 104(a5) -- Store: [0x80002398]:0x0000000000000000




Last Coverpoint : ['rs1 : x21', 'rd : f17']
Last Code Sequence : 
	-[0x800004a8]:fmv.d.x fa7, s5
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:fsd fa7, 112(a5)
Current Store : [0x800004b4] : sd a7, 120(a5) -- Store: [0x800023a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x22', 'rd : f14']
Last Code Sequence : 
	-[0x800004c0]:fmv.d.x fa4, s6
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd fa4, 128(a5)
Current Store : [0x800004cc] : sd a7, 136(a5) -- Store: [0x800023b8]:0x0000000000000000




Last Coverpoint : ['rs1 : x5', 'rd : f30']
Last Code Sequence : 
	-[0x800004d8]:fmv.d.x ft10, t0
	-[0x800004dc]:csrrs a7, fflags, zero
	-[0x800004e0]:fsd ft10, 144(a5)
Current Store : [0x800004e4] : sd a7, 152(a5) -- Store: [0x800023c8]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rd : f26']
Last Code Sequence : 
	-[0x800004f0]:fmv.d.x fs10, a4
	-[0x800004f4]:csrrs a7, fflags, zero
	-[0x800004f8]:fsd fs10, 160(a5)
Current Store : [0x800004fc] : sd a7, 168(a5) -- Store: [0x800023d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x1', 'rd : f5']
Last Code Sequence : 
	-[0x80000508]:fmv.d.x ft5, ra
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:fsd ft5, 176(a5)
Current Store : [0x80000514] : sd a7, 184(a5) -- Store: [0x800023e8]:0x0000000000000000




Last Coverpoint : ['rs1 : x3', 'rd : f28']
Last Code Sequence : 
	-[0x80000520]:fmv.d.x ft8, gp
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd ft8, 192(a5)
Current Store : [0x8000052c] : sd a7, 200(a5) -- Store: [0x800023f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x6', 'rd : f6']
Last Code Sequence : 
	-[0x80000538]:fmv.d.x ft6, t1
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:fsd ft6, 208(a5)
Current Store : [0x80000544] : sd a7, 216(a5) -- Store: [0x80002408]:0x0000000000000000




Last Coverpoint : ['rs1 : x25', 'rd : f11']
Last Code Sequence : 
	-[0x80000550]:fmv.d.x fa1, s9
	-[0x80000554]:csrrs a7, fflags, zero
	-[0x80000558]:fsd fa1, 224(a5)
Current Store : [0x8000055c] : sd a7, 232(a5) -- Store: [0x80002418]:0x0000000000000000




Last Coverpoint : ['rs1 : x24', 'rd : f1']
Last Code Sequence : 
	-[0x80000568]:fmv.d.x ft1, s8
	-[0x8000056c]:csrrs a7, fflags, zero
	-[0x80000570]:fsd ft1, 240(a5)
Current Store : [0x80000574] : sd a7, 248(a5) -- Store: [0x80002428]:0x0000000000000000




Last Coverpoint : ['rs1 : x19', 'rd : f3']
Last Code Sequence : 
	-[0x80000580]:fmv.d.x ft3, s3
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd ft3, 256(a5)
Current Store : [0x8000058c] : sd a7, 264(a5) -- Store: [0x80002438]:0x0000000000000000




Last Coverpoint : ['rs1 : x8', 'rd : f19']
Last Code Sequence : 
	-[0x80000598]:fmv.d.x fs3, fp
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd fs3, 272(a5)
Current Store : [0x800005a4] : sd a7, 280(a5) -- Store: [0x80002448]:0x0000000000000000




Last Coverpoint : ['rs1 : x16', 'rd : f16']
Last Code Sequence : 
	-[0x800005bc]:fmv.d.x fa6, a6
	-[0x800005c0]:csrrs s5, fflags, zero
	-[0x800005c4]:fsd fa6, 0(s3)
Current Store : [0x800005c8] : sd s5, 8(s3) -- Store: [0x80002458]:0x0000000000000000




Last Coverpoint : ['rs1 : x11', 'rd : f21']
Last Code Sequence : 
	-[0x800005e0]:fmv.d.x fs5, a1
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd fs5, 0(a5)
Current Store : [0x800005ec] : sd a7, 8(a5) -- Store: [0x80002468]:0x0000000000000000




Last Coverpoint : ['rs1 : x4', 'rd : f31']
Last Code Sequence : 
	-[0x800005f8]:fmv.d.x ft11, tp
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:fsd ft11, 16(a5)
Current Store : [0x80000604] : sd a7, 24(a5) -- Store: [0x80002478]:0x0000000000000000




Last Coverpoint : ['rs1 : x2', 'rd : f25']
Last Code Sequence : 
	-[0x80000610]:fmv.d.x fs9, sp
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsd fs9, 32(a5)
Current Store : [0x8000061c] : sd a7, 40(a5) -- Store: [0x80002488]:0x0000000000000000




Last Coverpoint : ['rs1 : x27', 'rd : f13']
Last Code Sequence : 
	-[0x80000628]:fmv.d.x fa3, s11
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:fsd fa3, 48(a5)
Current Store : [0x80000634] : sd a7, 56(a5) -- Store: [0x80002498]:0x0000000000000000




Last Coverpoint : ['rs1 : x29', 'rd : f7']
Last Code Sequence : 
	-[0x80000640]:fmv.d.x ft7, t4
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd ft7, 64(a5)
Current Store : [0x8000064c] : sd a7, 72(a5) -- Store: [0x800024a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x12', 'rd : f23']
Last Code Sequence : 
	-[0x80000658]:fmv.d.x fs7, a2
	-[0x8000065c]:csrrs a7, fflags, zero
	-[0x80000660]:fsd fs7, 80(a5)
Current Store : [0x80000664] : sd a7, 88(a5) -- Store: [0x800024b8]:0x0000000000000000




Last Coverpoint : ['rs1 : x10', 'rd : f29']
Last Code Sequence : 
	-[0x80000670]:fmv.d.x ft9, a0
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:fsd ft9, 96(a5)
Current Store : [0x8000067c] : sd a7, 104(a5) -- Store: [0x800024c8]:0x0000000000000000




Last Coverpoint : ['rs1 : x28', 'rd : f12']
Last Code Sequence : 
	-[0x80000688]:fmv.d.x fa2, t3
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:fsd fa2, 112(a5)
Current Store : [0x80000694] : sd a7, 120(a5) -- Store: [0x800024d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x15', 'rd : f0']
Last Code Sequence : 
	-[0x800006ac]:fmv.d.x ft0, a5
	-[0x800006b0]:csrrs s5, fflags, zero
	-[0x800006b4]:fsd ft0, 0(s3)
Current Store : [0x800006b8] : sd s5, 8(s3) -- Store: [0x800024e8]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rd : f24']
Last Code Sequence : 
	-[0x800006d0]:fmv.d.x fs8, s4
	-[0x800006d4]:csrrs a7, fflags, zero
	-[0x800006d8]:fsd fs8, 0(a5)
Current Store : [0x800006dc] : sd a7, 8(a5) -- Store: [0x800024f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rd : f22']
Last Code Sequence : 
	-[0x800006e8]:fmv.d.x fs6, s7
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd fs6, 16(a5)
Current Store : [0x800006f4] : sd a7, 24(a5) -- Store: [0x80002508]:0x0000000000000000





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

|s.no|            signature             |                                          coverpoints                                           |                                                    code                                                     |
|---:|----------------------------------|------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002310]<br>0xBFDDB7D5BFDDB7D5|- opcode : fmv.d.x<br> - rs1 : x13<br> - rd : f4<br> - rs1_val == 0 and rm_val == 0  #nosat<br> |[0x800003b8]:fmv.d.x ft4, a3<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:fsd ft4, 0(a5)<br>     |
|   2|[0x80002320]<br>0x5BFDDB7D5BFDDB7D|- rs1 : x17<br> - rd : f8<br> - rs1_val == -5270258713649211392 and rm_val == 0  #nosat<br>     |[0x800003dc]:fmv.d.x fs0, a7<br> [0x800003e0]:csrrs s5, fflags, zero<br> [0x800003e4]:fsd fs0, 0(s3)<br>     |
|   3|[0x80002330]<br>0x56FF76DF56FF76DF|- rs1 : x9<br> - rd : f10<br> - rs1_val == 5270258713649211392 and rm_val == 0  #nosat<br>      |[0x80000400]:fmv.d.x fa0, s1<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fa0, 0(a5)<br>     |
|   4|[0x80002340]<br>0x0000000A00006000|- rs1 : x18<br> - rd : f2<br> - rs1_val == -9223372036854775807 and rm_val == 0  #nosat<br>     |[0x80000418]:fmv.d.x ft2, s2<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsd ft2, 16(a5)<br>    |
|   5|[0x80002350]<br>0xBB6FAB7FBB6FAB7F|- rs1 : x26<br> - rd : f27<br> - rs1_val == 9223372036854775807 and rm_val == 0  #nosat<br>     |[0x80000430]:fmv.d.x fs11, s10<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:fsd fs11, 32(a5)<br> |
|   6|[0x80002360]<br>0x0000000080002330|- rs1 : x31<br> - rd : f15<br> - rs1_val == -1 and rm_val == 0  #nosat<br>                      |[0x80000448]:fmv.d.x fa5, t6<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd fa5, 48(a5)<br>    |
|   7|[0x80002370]<br>0x0000000080002010|- rs1 : x30<br> - rd : f20<br> - rs1_val == 1 and rm_val == 0  #nosat<br>                       |[0x80000460]:fmv.d.x fs4, t5<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd fs4, 64(a5)<br>    |
|   8|[0x80002380]<br>0x8000000000000001|- rs1 : x0<br> - rd : f18<br>                                                                   |[0x80000478]:fmv.d.x fs2, zero<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:fsd fs2, 80(a5)<br>  |
|   9|[0x80002390]<br>0x4923B8608577E800|- rs1 : x7<br> - rd : f9<br>                                                                    |[0x80000490]:fmv.d.x fs1, t2<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:fsd fs1, 96(a5)<br>    |
|  10|[0x800023a0]<br>0x0000000000000000|- rs1 : x21<br> - rd : f17<br>                                                                  |[0x800004a8]:fmv.d.x fa7, s5<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:fsd fa7, 112(a5)<br>   |
|  11|[0x800023b0]<br>0xF56FF76DF56FF76D|- rs1 : x22<br> - rd : f14<br>                                                                  |[0x800004c0]:fmv.d.x fa4, s6<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd fa4, 128(a5)<br>   |
|  12|[0x800023c0]<br>0x0000000000000001|- rs1 : x5<br> - rd : f30<br>                                                                   |[0x800004d8]:fmv.d.x ft10, t0<br> [0x800004dc]:csrrs a7, fflags, zero<br> [0x800004e0]:fsd ft10, 144(a5)<br> |
|  13|[0x800023d0]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x14<br> - rd : f26<br>                                                                  |[0x800004f0]:fmv.d.x fs10, a4<br> [0x800004f4]:csrrs a7, fflags, zero<br> [0x800004f8]:fsd fs10, 160(a5)<br> |
|  14|[0x800023e0]<br>0x0000000000000000|- rs1 : x1<br> - rd : f5<br>                                                                    |[0x80000508]:fmv.d.x ft5, ra<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:fsd ft5, 176(a5)<br>   |
|  15|[0x800023f0]<br>0xDDB7D5BFDDB7D5BF|- rs1 : x3<br> - rd : f28<br>                                                                   |[0x80000520]:fmv.d.x ft8, gp<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd ft8, 192(a5)<br>   |
|  16|[0x80002400]<br>0x0000000000000000|- rs1 : x6<br> - rd : f6<br>                                                                    |[0x80000538]:fmv.d.x ft6, t1<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:fsd ft6, 208(a5)<br>   |
|  17|[0x80002410]<br>0xAB7FBB6FAB7FBB6F|- rs1 : x25<br> - rd : f11<br>                                                                  |[0x80000550]:fmv.d.x fa1, s9<br> [0x80000554]:csrrs a7, fflags, zero<br> [0x80000558]:fsd fa1, 224(a5)<br>   |
|  18|[0x80002420]<br>0x0000000000000000|- rs1 : x24<br> - rd : f1<br>                                                                   |[0x80000568]:fmv.d.x ft1, s8<br> [0x8000056c]:csrrs a7, fflags, zero<br> [0x80000570]:fsd ft1, 240(a5)<br>   |
|  19|[0x80002430]<br>0x0000000000000000|- rs1 : x19<br> - rd : f3<br>                                                                   |[0x80000580]:fmv.d.x ft3, s3<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd ft3, 256(a5)<br>   |
|  20|[0x80002440]<br>0x0000000000000000|- rs1 : x8<br> - rd : f19<br>                                                                   |[0x80000598]:fmv.d.x fs3, fp<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd fs3, 272(a5)<br>   |
|  21|[0x80002450]<br>0x0000000000000000|- rs1 : x16<br> - rd : f16<br>                                                                  |[0x800005bc]:fmv.d.x fa6, a6<br> [0x800005c0]:csrrs s5, fflags, zero<br> [0x800005c4]:fsd fa6, 0(s3)<br>     |
|  22|[0x80002460]<br>0x0000000000000000|- rs1 : x11<br> - rd : f21<br>                                                                  |[0x800005e0]:fmv.d.x fs5, a1<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd fs5, 0(a5)<br>     |
|  23|[0x80002470]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x4<br> - rd : f31<br>                                                                   |[0x800005f8]:fmv.d.x ft11, tp<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:fsd ft11, 16(a5)<br>  |
|  24|[0x80002480]<br>0x0000000000000000|- rs1 : x2<br> - rd : f25<br>                                                                   |[0x80000610]:fmv.d.x fs9, sp<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsd fs9, 32(a5)<br>    |
|  25|[0x80002490]<br>0x0000000000000000|- rs1 : x27<br> - rd : f13<br>                                                                  |[0x80000628]:fmv.d.x fa3, s11<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:fsd fa3, 48(a5)<br>   |
|  26|[0x800024a0]<br>0x0000000000000000|- rs1 : x29<br> - rd : f7<br>                                                                   |[0x80000640]:fmv.d.x ft7, t4<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd ft7, 64(a5)<br>    |
|  27|[0x800024b0]<br>0xB6FAB7FBB6FAB7FB|- rs1 : x12<br> - rd : f23<br>                                                                  |[0x80000658]:fmv.d.x fs7, a2<br> [0x8000065c]:csrrs a7, fflags, zero<br> [0x80000660]:fsd fs7, 80(a5)<br>    |
|  28|[0x800024c0]<br>0x0000000000000000|- rs1 : x10<br> - rd : f29<br>                                                                  |[0x80000670]:fmv.d.x ft9, a0<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:fsd ft9, 96(a5)<br>    |
|  29|[0x800024d0]<br>0x0000000000000000|- rs1 : x28<br> - rd : f12<br>                                                                  |[0x80000688]:fmv.d.x fa2, t3<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsd fa2, 112(a5)<br>   |
|  30|[0x800024e0]<br>0x0000000000000000|- rs1 : x15<br> - rd : f0<br>                                                                   |[0x800006ac]:fmv.d.x ft0, a5<br> [0x800006b0]:csrrs s5, fflags, zero<br> [0x800006b4]:fsd ft0, 0(s3)<br>     |
|  31|[0x800024f0]<br>0x0000000000000000|- rs1 : x20<br> - rd : f24<br>                                                                  |[0x800006d0]:fmv.d.x fs8, s4<br> [0x800006d4]:csrrs a7, fflags, zero<br> [0x800006d8]:fsd fs8, 0(a5)<br>     |
|  32|[0x80002500]<br>0x0000000000000000|- rs1 : x23<br> - rd : f22<br>                                                                  |[0x800006e8]:fmv.d.x fs6, s7<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd fs6, 16(a5)<br>    |
