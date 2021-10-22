
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000710')]      |
| SIG_REGION                | [('0x80002310', '0x80002520', '66 dwords')]      |
| COV_LABELS                | fmv.x.d_b27      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fmv.x.d_b27-01.S/ref.S    |
| Total Number of coverpoints| 77     |
| Total Coverpoints Hit     | 73      |
| Total Signature Updates   | 66      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 33     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006f4]:fmv.x.d a1, fa0
      [0x800006f8]:csrrs a7, fflags, zero
      [0x800006fc]:sd a1, 48(a5)
 -- Signature Address: 0x80002510 Data: 0xFFF0000000000001
 -- Redundant Coverpoints hit by the op
      - opcode : fmv.x.d
      - rd : x11
      - rs1 : f10
      - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fmv.x.d', 'rd : x15', 'rs1 : f27', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fmv.x.d a5, fs11
	-[0x800003bc]:csrrs s5, fflags, zero
	-[0x800003c0]:sd a5, 0(s3)
Current Store : [0x800003c4] : sd s5, 8(s3) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rd : x27', 'rs1 : f25', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0xc000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003dc]:fmv.x.d s11, fs9
	-[0x800003e0]:csrrs a7, fflags, zero
	-[0x800003e4]:sd s11, 0(a5)
Current Store : [0x800003e8] : sd a7, 8(a5) -- Store: [0x80002328]:0x0000000000000000




Last Coverpoint : ['rd : x13', 'rs1 : f16', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0xc000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003f4]:fmv.x.d a3, fa6
	-[0x800003f8]:csrrs a7, fflags, zero
	-[0x800003fc]:sd a3, 16(a5)
Current Store : [0x80000400] : sd a7, 24(a5) -- Store: [0x80002338]:0x0000000000000000




Last Coverpoint : ['rd : x6', 'rs1 : f20', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000040c]:fmv.x.d t1, fs4
	-[0x80000410]:csrrs a7, fflags, zero
	-[0x80000414]:sd t1, 32(a5)
Current Store : [0x80000418] : sd a7, 40(a5) -- Store: [0x80002348]:0x0000000000000000




Last Coverpoint : ['rd : x9', 'rs1 : f18', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000424]:fmv.x.d s1, fs2
	-[0x80000428]:csrrs a7, fflags, zero
	-[0x8000042c]:sd s1, 48(a5)
Current Store : [0x80000430] : sd a7, 56(a5) -- Store: [0x80002358]:0x0000000000000000




Last Coverpoint : ['rd : x17', 'rs1 : f2', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x4aaaaaaaaaaaa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fmv.x.d a7, ft2
	-[0x8000044c]:csrrs s5, fflags, zero
	-[0x80000450]:sd a7, 0(s3)
Current Store : [0x80000454] : sd s5, 8(s3) -- Store: [0x80002368]:0x0000000000000000




Last Coverpoint : ['rd : x3', 'rs1 : f23', 'fs1 == 0 and fe1 == 0x7ff and fm1 == 0x4aaaaaaaaaaaa and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000046c]:fmv.x.d gp, fs7
	-[0x80000470]:csrrs a7, fflags, zero
	-[0x80000474]:sd gp, 0(a5)
Current Store : [0x80000478] : sd a7, 8(a5) -- Store: [0x80002378]:0x0000000000000000




Last Coverpoint : ['rd : x0', 'rs1 : f4', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000484]:fmv.x.d zero, ft4
	-[0x80000488]:csrrs a7, fflags, zero
	-[0x8000048c]:sd zero, 16(a5)
Current Store : [0x80000490] : sd a7, 24(a5) -- Store: [0x80002388]:0x0000000000000000




Last Coverpoint : ['rd : x19', 'rs1 : f28']
Last Code Sequence : 
	-[0x8000049c]:fmv.x.d s3, ft8
	-[0x800004a0]:csrrs a7, fflags, zero
	-[0x800004a4]:sd s3, 32(a5)
Current Store : [0x800004a8] : sd a7, 40(a5) -- Store: [0x80002398]:0x0000000000000000




Last Coverpoint : ['rd : x7', 'rs1 : f15']
Last Code Sequence : 
	-[0x800004b4]:fmv.x.d t2, fa5
	-[0x800004b8]:csrrs a7, fflags, zero
	-[0x800004bc]:sd t2, 48(a5)
Current Store : [0x800004c0] : sd a7, 56(a5) -- Store: [0x800023a8]:0x0000000000000000




Last Coverpoint : ['rd : x12', 'rs1 : f17']
Last Code Sequence : 
	-[0x800004cc]:fmv.x.d a2, fa7
	-[0x800004d0]:csrrs a7, fflags, zero
	-[0x800004d4]:sd a2, 64(a5)
Current Store : [0x800004d8] : sd a7, 72(a5) -- Store: [0x800023b8]:0x0000000000000000




Last Coverpoint : ['rd : x21', 'rs1 : f6']
Last Code Sequence : 
	-[0x800004e4]:fmv.x.d s5, ft6
	-[0x800004e8]:csrrs a7, fflags, zero
	-[0x800004ec]:sd s5, 80(a5)
Current Store : [0x800004f0] : sd a7, 88(a5) -- Store: [0x800023c8]:0x0000000000000000




Last Coverpoint : ['rd : x8', 'rs1 : f8']
Last Code Sequence : 
	-[0x800004fc]:fmv.x.d fp, fs0
	-[0x80000500]:csrrs a7, fflags, zero
	-[0x80000504]:sd fp, 96(a5)
Current Store : [0x80000508] : sd a7, 104(a5) -- Store: [0x800023d8]:0x0000000000000000




Last Coverpoint : ['rd : x1', 'rs1 : f9']
Last Code Sequence : 
	-[0x80000514]:fmv.x.d ra, fs1
	-[0x80000518]:csrrs a7, fflags, zero
	-[0x8000051c]:sd ra, 112(a5)
Current Store : [0x80000520] : sd a7, 120(a5) -- Store: [0x800023e8]:0x0000000000000000




Last Coverpoint : ['rd : x23', 'rs1 : f11']
Last Code Sequence : 
	-[0x8000052c]:fmv.x.d s7, fa1
	-[0x80000530]:csrrs a7, fflags, zero
	-[0x80000534]:sd s7, 128(a5)
Current Store : [0x80000538] : sd a7, 136(a5) -- Store: [0x800023f8]:0x0000000000000000




Last Coverpoint : ['rd : x5', 'rs1 : f31']
Last Code Sequence : 
	-[0x80000544]:fmv.x.d t0, ft11
	-[0x80000548]:csrrs a7, fflags, zero
	-[0x8000054c]:sd t0, 144(a5)
Current Store : [0x80000550] : sd a7, 152(a5) -- Store: [0x80002408]:0x0000000000000000




Last Coverpoint : ['rd : x4', 'rs1 : f24']
Last Code Sequence : 
	-[0x8000055c]:fmv.x.d tp, fs8
	-[0x80000560]:csrrs a7, fflags, zero
	-[0x80000564]:sd tp, 160(a5)
Current Store : [0x80000568] : sd a7, 168(a5) -- Store: [0x80002418]:0x0000000000000000




Last Coverpoint : ['rd : x30', 'rs1 : f30']
Last Code Sequence : 
	-[0x80000574]:fmv.x.d t5, ft10
	-[0x80000578]:csrrs a7, fflags, zero
	-[0x8000057c]:sd t5, 176(a5)
Current Store : [0x80000580] : sd a7, 184(a5) -- Store: [0x80002428]:0x0000000000000000




Last Coverpoint : ['rd : x31', 'rs1 : f21']
Last Code Sequence : 
	-[0x8000058c]:fmv.x.d t6, fs5
	-[0x80000590]:csrrs a7, fflags, zero
	-[0x80000594]:sd t6, 192(a5)
Current Store : [0x80000598] : sd a7, 200(a5) -- Store: [0x80002438]:0x0000000000000000




Last Coverpoint : ['rd : x10', 'rs1 : f10']
Last Code Sequence : 
	-[0x800005a4]:fmv.x.d a0, fa0
	-[0x800005a8]:csrrs a7, fflags, zero
	-[0x800005ac]:sd a0, 208(a5)
Current Store : [0x800005b0] : sd a7, 216(a5) -- Store: [0x80002448]:0x0000000000000000




Last Coverpoint : ['rd : x26', 'rs1 : f29']
Last Code Sequence : 
	-[0x800005bc]:fmv.x.d s10, ft9
	-[0x800005c0]:csrrs a7, fflags, zero
	-[0x800005c4]:sd s10, 224(a5)
Current Store : [0x800005c8] : sd a7, 232(a5) -- Store: [0x80002458]:0x0000000000000000




Last Coverpoint : ['rd : x29', 'rs1 : f14']
Last Code Sequence : 
	-[0x800005d4]:fmv.x.d t4, fa4
	-[0x800005d8]:csrrs a7, fflags, zero
	-[0x800005dc]:sd t4, 240(a5)
Current Store : [0x800005e0] : sd a7, 248(a5) -- Store: [0x80002468]:0x0000000000000000




Last Coverpoint : ['rd : x25', 'rs1 : f13']
Last Code Sequence : 
	-[0x800005ec]:fmv.x.d s9, fa3
	-[0x800005f0]:csrrs a7, fflags, zero
	-[0x800005f4]:sd s9, 256(a5)
Current Store : [0x800005f8] : sd a7, 264(a5) -- Store: [0x80002478]:0x0000000000000000




Last Coverpoint : ['rd : x11', 'rs1 : f1']
Last Code Sequence : 
	-[0x80000604]:fmv.x.d a1, ft1
	-[0x80000608]:csrrs a7, fflags, zero
	-[0x8000060c]:sd a1, 272(a5)
Current Store : [0x80000610] : sd a7, 280(a5) -- Store: [0x80002488]:0x0000000000000000




Last Coverpoint : ['rd : x24', 'rs1 : f5']
Last Code Sequence : 
	-[0x8000061c]:fmv.x.d s8, ft5
	-[0x80000620]:csrrs a7, fflags, zero
	-[0x80000624]:sd s8, 288(a5)
Current Store : [0x80000628] : sd a7, 296(a5) -- Store: [0x80002498]:0x0000000000000000




Last Coverpoint : ['rd : x28', 'rs1 : f12']
Last Code Sequence : 
	-[0x80000634]:fmv.x.d t3, fa2
	-[0x80000638]:csrrs a7, fflags, zero
	-[0x8000063c]:sd t3, 304(a5)
Current Store : [0x80000640] : sd a7, 312(a5) -- Store: [0x800024a8]:0x0000000000000000




Last Coverpoint : ['rd : x20', 'rs1 : f3']
Last Code Sequence : 
	-[0x8000064c]:fmv.x.d s4, ft3
	-[0x80000650]:csrrs a7, fflags, zero
	-[0x80000654]:sd s4, 320(a5)
Current Store : [0x80000658] : sd a7, 328(a5) -- Store: [0x800024b8]:0x0000000000000000




Last Coverpoint : ['rd : x18', 'rs1 : f0']
Last Code Sequence : 
	-[0x80000664]:fmv.x.d s2, ft0
	-[0x80000668]:csrrs a7, fflags, zero
	-[0x8000066c]:sd s2, 336(a5)
Current Store : [0x80000670] : sd a7, 344(a5) -- Store: [0x800024c8]:0x0000000000000000




Last Coverpoint : ['rd : x16', 'rs1 : f7']
Last Code Sequence : 
	-[0x80000688]:fmv.x.d a6, ft7
	-[0x8000068c]:csrrs s5, fflags, zero
	-[0x80000690]:sd a6, 0(s3)
Current Store : [0x80000694] : sd s5, 8(s3) -- Store: [0x800024d8]:0x0000000000000000




Last Coverpoint : ['rd : x14', 'rs1 : f22']
Last Code Sequence : 
	-[0x800006ac]:fmv.x.d a4, fs6
	-[0x800006b0]:csrrs a7, fflags, zero
	-[0x800006b4]:sd a4, 0(a5)
Current Store : [0x800006b8] : sd a7, 8(a5) -- Store: [0x800024e8]:0x0000000000000000




Last Coverpoint : ['rd : x22', 'rs1 : f19']
Last Code Sequence : 
	-[0x800006c4]:fmv.x.d s6, fs3
	-[0x800006c8]:csrrs a7, fflags, zero
	-[0x800006cc]:sd s6, 16(a5)
Current Store : [0x800006d0] : sd a7, 24(a5) -- Store: [0x800024f8]:0x0000000000000000




Last Coverpoint : ['rd : x2', 'rs1 : f26']
Last Code Sequence : 
	-[0x800006dc]:fmv.x.d sp, fs10
	-[0x800006e0]:csrrs a7, fflags, zero
	-[0x800006e4]:sd sp, 32(a5)
Current Store : [0x800006e8] : sd a7, 40(a5) -- Store: [0x80002508]:0x0000000000000000




Last Coverpoint : ['opcode : fmv.x.d', 'rd : x11', 'rs1 : f10', 'fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006f4]:fmv.x.d a1, fa0
	-[0x800006f8]:csrrs a7, fflags, zero
	-[0x800006fc]:sd a1, 48(a5)
Current Store : [0x80000700] : sd a7, 56(a5) -- Store: [0x80002518]:0x0000000000000000





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

|s.no|            signature             |                                                               coverpoints                                                               |                                                    code                                                    |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002310]<br>0x7FF0000000000001|- opcode : fmv.x.d<br> - rd : x15<br> - rs1 : f27<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br> |[0x800003b8]:fmv.x.d a5, fs11<br> [0x800003bc]:csrrs s5, fflags, zero<br> [0x800003c0]:sd a5, 0(s3)<br>     |
|   2|[0x80002320]<br>0xFFFC000000000001|- rd : x27<br> - rs1 : f25<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0xc000000000001 and rm_val == 0  #nosat<br>                        |[0x800003dc]:fmv.x.d s11, fs9<br> [0x800003e0]:csrrs a7, fflags, zero<br> [0x800003e4]:sd s11, 0(a5)<br>    |
|   3|[0x80002330]<br>0x7FFC000000000001|- rd : x13<br> - rs1 : f16<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0xc000000000001 and rm_val == 0  #nosat<br>                        |[0x800003f4]:fmv.x.d a3, fa6<br> [0x800003f8]:csrrs a7, fflags, zero<br> [0x800003fc]:sd a3, 16(a5)<br>     |
|   4|[0x80002340]<br>0xFFF8000000000001|- rd : x6<br> - rs1 : f20<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat<br>                         |[0x8000040c]:fmv.x.d t1, fs4<br> [0x80000410]:csrrs a7, fflags, zero<br> [0x80000414]:sd t1, 32(a5)<br>     |
|   5|[0x80002350]<br>0x7FF8000000000001|- rd : x9<br> - rs1 : f18<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x8000000000001 and rm_val == 0  #nosat<br>                         |[0x80000424]:fmv.x.d s1, fs2<br> [0x80000428]:csrrs a7, fflags, zero<br> [0x8000042c]:sd s1, 48(a5)<br>     |
|   6|[0x80002360]<br>0xFFF4AAAAAAAAAAAA|- rd : x17<br> - rs1 : f2<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x4aaaaaaaaaaaa and rm_val == 0  #nosat<br>                         |[0x80000448]:fmv.x.d a7, ft2<br> [0x8000044c]:csrrs s5, fflags, zero<br> [0x80000450]:sd a7, 0(s3)<br>      |
|   7|[0x80002370]<br>0x7FF4AAAAAAAAAAAA|- rd : x3<br> - rs1 : f23<br> - fs1 == 0 and fe1 == 0x7ff and fm1 == 0x4aaaaaaaaaaaa and rm_val == 0  #nosat<br>                         |[0x8000046c]:fmv.x.d gp, fs7<br> [0x80000470]:csrrs a7, fflags, zero<br> [0x80000474]:sd gp, 0(a5)<br>      |
|   8|[0x80002380]<br>0x0000000000000000|- rd : x0<br> - rs1 : f4<br> - fs1 == 1 and fe1 == 0x7ff and fm1 == 0x0000000000001 and rm_val == 0  #nosat<br>                          |[0x80000484]:fmv.x.d zero, ft4<br> [0x80000488]:csrrs a7, fflags, zero<br> [0x8000048c]:sd zero, 16(a5)<br> |
|   9|[0x80002390]<br>0x0000000000000000|- rd : x19<br> - rs1 : f28<br>                                                                                                           |[0x8000049c]:fmv.x.d s3, ft8<br> [0x800004a0]:csrrs a7, fflags, zero<br> [0x800004a4]:sd s3, 32(a5)<br>     |
|  10|[0x800023a0]<br>0x0000000000000000|- rd : x7<br> - rs1 : f15<br>                                                                                                            |[0x800004b4]:fmv.x.d t2, fa5<br> [0x800004b8]:csrrs a7, fflags, zero<br> [0x800004bc]:sd t2, 48(a5)<br>     |
|  11|[0x800023b0]<br>0x0000000000000000|- rd : x12<br> - rs1 : f17<br>                                                                                                           |[0x800004cc]:fmv.x.d a2, fa7<br> [0x800004d0]:csrrs a7, fflags, zero<br> [0x800004d4]:sd a2, 64(a5)<br>     |
|  12|[0x800023c0]<br>0x0000000000000000|- rd : x21<br> - rs1 : f6<br>                                                                                                            |[0x800004e4]:fmv.x.d s5, ft6<br> [0x800004e8]:csrrs a7, fflags, zero<br> [0x800004ec]:sd s5, 80(a5)<br>     |
|  13|[0x800023d0]<br>0x0000000000000000|- rd : x8<br> - rs1 : f8<br>                                                                                                             |[0x800004fc]:fmv.x.d fp, fs0<br> [0x80000500]:csrrs a7, fflags, zero<br> [0x80000504]:sd fp, 96(a5)<br>     |
|  14|[0x800023e0]<br>0x0000000000000000|- rd : x1<br> - rs1 : f9<br>                                                                                                             |[0x80000514]:fmv.x.d ra, fs1<br> [0x80000518]:csrrs a7, fflags, zero<br> [0x8000051c]:sd ra, 112(a5)<br>    |
|  15|[0x800023f0]<br>0x0000000000000000|- rd : x23<br> - rs1 : f11<br>                                                                                                           |[0x8000052c]:fmv.x.d s7, fa1<br> [0x80000530]:csrrs a7, fflags, zero<br> [0x80000534]:sd s7, 128(a5)<br>    |
|  16|[0x80002400]<br>0x0000000000000000|- rd : x5<br> - rs1 : f31<br>                                                                                                            |[0x80000544]:fmv.x.d t0, ft11<br> [0x80000548]:csrrs a7, fflags, zero<br> [0x8000054c]:sd t0, 144(a5)<br>   |
|  17|[0x80002410]<br>0x0000000000000000|- rd : x4<br> - rs1 : f24<br>                                                                                                            |[0x8000055c]:fmv.x.d tp, fs8<br> [0x80000560]:csrrs a7, fflags, zero<br> [0x80000564]:sd tp, 160(a5)<br>    |
|  18|[0x80002420]<br>0x0000000000000000|- rd : x30<br> - rs1 : f30<br>                                                                                                           |[0x80000574]:fmv.x.d t5, ft10<br> [0x80000578]:csrrs a7, fflags, zero<br> [0x8000057c]:sd t5, 176(a5)<br>   |
|  19|[0x80002430]<br>0x0000000000000000|- rd : x31<br> - rs1 : f21<br>                                                                                                           |[0x8000058c]:fmv.x.d t6, fs5<br> [0x80000590]:csrrs a7, fflags, zero<br> [0x80000594]:sd t6, 192(a5)<br>    |
|  20|[0x80002440]<br>0x0000000000000000|- rd : x10<br> - rs1 : f10<br>                                                                                                           |[0x800005a4]:fmv.x.d a0, fa0<br> [0x800005a8]:csrrs a7, fflags, zero<br> [0x800005ac]:sd a0, 208(a5)<br>    |
|  21|[0x80002450]<br>0x0000000000000000|- rd : x26<br> - rs1 : f29<br>                                                                                                           |[0x800005bc]:fmv.x.d s10, ft9<br> [0x800005c0]:csrrs a7, fflags, zero<br> [0x800005c4]:sd s10, 224(a5)<br>  |
|  22|[0x80002460]<br>0x0000000000000000|- rd : x29<br> - rs1 : f14<br>                                                                                                           |[0x800005d4]:fmv.x.d t4, fa4<br> [0x800005d8]:csrrs a7, fflags, zero<br> [0x800005dc]:sd t4, 240(a5)<br>    |
|  23|[0x80002470]<br>0x0000000000000000|- rd : x25<br> - rs1 : f13<br>                                                                                                           |[0x800005ec]:fmv.x.d s9, fa3<br> [0x800005f0]:csrrs a7, fflags, zero<br> [0x800005f4]:sd s9, 256(a5)<br>    |
|  24|[0x80002480]<br>0x0000000000000000|- rd : x11<br> - rs1 : f1<br>                                                                                                            |[0x80000604]:fmv.x.d a1, ft1<br> [0x80000608]:csrrs a7, fflags, zero<br> [0x8000060c]:sd a1, 272(a5)<br>    |
|  25|[0x80002490]<br>0x0000000000000000|- rd : x24<br> - rs1 : f5<br>                                                                                                            |[0x8000061c]:fmv.x.d s8, ft5<br> [0x80000620]:csrrs a7, fflags, zero<br> [0x80000624]:sd s8, 288(a5)<br>    |
|  26|[0x800024a0]<br>0x0000000000000000|- rd : x28<br> - rs1 : f12<br>                                                                                                           |[0x80000634]:fmv.x.d t3, fa2<br> [0x80000638]:csrrs a7, fflags, zero<br> [0x8000063c]:sd t3, 304(a5)<br>    |
|  27|[0x800024b0]<br>0x0000000000000000|- rd : x20<br> - rs1 : f3<br>                                                                                                            |[0x8000064c]:fmv.x.d s4, ft3<br> [0x80000650]:csrrs a7, fflags, zero<br> [0x80000654]:sd s4, 320(a5)<br>    |
|  28|[0x800024c0]<br>0x0000000000000000|- rd : x18<br> - rs1 : f0<br>                                                                                                            |[0x80000664]:fmv.x.d s2, ft0<br> [0x80000668]:csrrs a7, fflags, zero<br> [0x8000066c]:sd s2, 336(a5)<br>    |
|  29|[0x800024d0]<br>0x0000000000000000|- rd : x16<br> - rs1 : f7<br>                                                                                                            |[0x80000688]:fmv.x.d a6, ft7<br> [0x8000068c]:csrrs s5, fflags, zero<br> [0x80000690]:sd a6, 0(s3)<br>      |
|  30|[0x800024e0]<br>0x0000000000000000|- rd : x14<br> - rs1 : f22<br>                                                                                                           |[0x800006ac]:fmv.x.d a4, fs6<br> [0x800006b0]:csrrs a7, fflags, zero<br> [0x800006b4]:sd a4, 0(a5)<br>      |
|  31|[0x800024f0]<br>0x0000000000000000|- rd : x22<br> - rs1 : f19<br>                                                                                                           |[0x800006c4]:fmv.x.d s6, fs3<br> [0x800006c8]:csrrs a7, fflags, zero<br> [0x800006cc]:sd s6, 16(a5)<br>     |
|  32|[0x80002500]<br>0x0000000000000000|- rd : x2<br> - rs1 : f26<br>                                                                                                            |[0x800006dc]:fmv.x.d sp, fs10<br> [0x800006e0]:csrrs a7, fflags, zero<br> [0x800006e4]:sd sp, 32(a5)<br>    |
