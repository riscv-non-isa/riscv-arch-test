
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x80000780')]      |
| SIG_REGION                | [('0x80002310', '0x80002650', '104 dwords')]      |
| COV_LABELS                | fadd_b12      |
| TEST_NAME                 | /home/riscv/riscof_work/fadd_b12-01.S/ref.S    |
| Total Number of coverpoints| 158     |
| Total Coverpoints Hit     | 152      |
| Total Signature Updates   | 53      |
| STAT1                     | 52      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```

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

|s.no|            signature             |                                                                                                     coverpoints                                                                                                      |                                                                          code                                                                          |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002314]<br>0x0000000000000000|- opcode : fadd.s<br> - rs1 : f30<br> - rs2 : f9<br> - rd : f9<br> - rs2 == rd != rs1<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x222105 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br> |[0x800001d4]:fadd.s fs1, ft10, fs1, dyn<br> [0x800001d8]:csrrs a7, fflags, zero<br> [0x800001dc]:fsw fs1, 0(a5)<br> [0x800001e0]:sw a7, 4(a5)<br>       |
|   2|[0x80002324]<br>0x0000000000000000|- rs1 : f25<br> - rs2 : f25<br> - rd : f3<br> - rs1 == rs2 != rd<br>                                                                                                                                                  |[0x800001f0]:fadd.s ft3, fs9, fs9, dyn<br> [0x800001f4]:csrrs a7, fflags, zero<br> [0x800001f8]:fsw ft3, 16(a5)<br> [0x800001fc]:sw a7, 20(a5)<br>      |
|   3|[0x80002334]<br>0x0000000000000000|- rs1 : f20<br> - rs2 : f29<br> - rd : f20<br> - rs1 == rd != rs2<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x185183 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x28224f and rm_val == 0  #nosat<br>                     |[0x8000020c]:fadd.s fs4, fs4, ft9, dyn<br> [0x80000210]:csrrs a7, fflags, zero<br> [0x80000214]:fsw fs4, 32(a5)<br> [0x80000218]:sw a7, 36(a5)<br>      |
|   4|[0x80002344]<br>0x0000000000000005|- rs1 : f15<br> - rs2 : f15<br> - rd : f15<br> - rs1 == rs2 == rd<br>                                                                                                                                                 |[0x80000228]:fadd.s fa5, fa5, fa5, dyn<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:fsw fa5, 48(a5)<br> [0x80000234]:sw a7, 52(a5)<br>      |
|   5|[0x80002354]<br>0x0000000000000005|- rs1 : f5<br> - rs2 : f3<br> - rd : f7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - fs1 == 1 and fe1 == 0xfd and fm1 == 0x2d0427 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x554674 and rm_val == 0  #nosat<br> |[0x80000244]:fadd.s ft7, ft5, ft3, dyn<br> [0x80000248]:csrrs a7, fflags, zero<br> [0x8000024c]:fsw ft7, 64(a5)<br> [0x80000250]:sw a7, 68(a5)<br>      |
|   6|[0x80002364]<br>0x0000000000000005|- rs1 : f12<br> - rs2 : f11<br> - rd : f17<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x365ad7 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                            |[0x80000260]:fadd.s fa7, fa2, fa1, dyn<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:fsw fa7, 80(a5)<br> [0x8000026c]:sw a7, 84(a5)<br>      |
|   7|[0x80002374]<br>0x0000000000000005|- rs1 : f8<br> - rs2 : f23<br> - rd : f28<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x2bd8f4 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                             |[0x8000027c]:fadd.s ft8, fs0, fs7, dyn<br> [0x80000280]:csrrs a7, fflags, zero<br> [0x80000284]:fsw ft8, 96(a5)<br> [0x80000288]:sw a7, 100(a5)<br>     |
|   8|[0x80002384]<br>0x0000000000000005|- rs1 : f27<br> - rs2 : f2<br> - rd : f29<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x1bd52c and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                             |[0x80000298]:fadd.s ft9, fs11, ft2, dyn<br> [0x8000029c]:csrrs a7, fflags, zero<br> [0x800002a0]:fsw ft9, 112(a5)<br> [0x800002a4]:sw a7, 116(a5)<br>   |
|   9|[0x80002394]<br>0x0000000000000005|- rs1 : f18<br> - rs2 : f22<br> - rd : f13<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x076a16 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x3c560e and rm_val == 0  #nosat<br>                                            |[0x800002b4]:fadd.s fa3, fs2, fs6, dyn<br> [0x800002b8]:csrrs a7, fflags, zero<br> [0x800002bc]:fsw fa3, 128(a5)<br> [0x800002c0]:sw a7, 132(a5)<br>    |
|  10|[0x800023a4]<br>0x0000000000000005|- rs1 : f2<br> - rs2 : f19<br> - rd : f30<br> - fs1 == 1 and fe1 == 0xfd and fm1 == 0x4f9722 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x32ec8c and rm_val == 0  #nosat<br>                                             |[0x800002d0]:fadd.s ft10, ft2, fs3, dyn<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:fsw ft10, 144(a5)<br> [0x800002dc]:sw a7, 148(a5)<br>  |
|  11|[0x800023b4]<br>0x0000000000000005|- rs1 : f1<br> - rs2 : f4<br> - rd : f10<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x2c7300 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                              |[0x800002ec]:fadd.s fa0, ft1, ft4, dyn<br> [0x800002f0]:csrrs a7, fflags, zero<br> [0x800002f4]:fsw fa0, 160(a5)<br> [0x800002f8]:sw a7, 164(a5)<br>    |
|  12|[0x800023c4]<br>0x0000000000000005|- rs1 : f24<br> - rs2 : f31<br> - rd : f12<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x314a05 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                            |[0x80000308]:fadd.s fa2, fs8, ft11, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:fsw fa2, 176(a5)<br> [0x80000314]:sw a7, 180(a5)<br>   |
|  13|[0x800023d4]<br>0x0000000000000005|- rs1 : f3<br> - rs2 : f13<br> - rd : f21<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x1175bf and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                             |[0x80000324]:fadd.s fs5, ft3, fa3, dyn<br> [0x80000328]:csrrs a7, fflags, zero<br> [0x8000032c]:fsw fs5, 192(a5)<br> [0x80000330]:sw a7, 196(a5)<br>    |
|  14|[0x800023e4]<br>0x0000000000000005|- rs1 : f17<br> - rs2 : f0<br> - rd : f5<br> - fs1 == 1 and fe1 == 0xfd and fm1 == 0x36fce6 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x597afe and rm_val == 0  #nosat<br>                                              |[0x80000340]:fadd.s ft5, fa7, ft0, dyn<br> [0x80000344]:csrrs a7, fflags, zero<br> [0x80000348]:fsw ft5, 208(a5)<br> [0x8000034c]:sw a7, 212(a5)<br>    |
|  15|[0x800023f4]<br>0x0000000000000005|- rs1 : f23<br> - rs2 : f6<br> - rd : f16<br> - fs1 == 1 and fe1 == 0xfd and fm1 == 0x6b4e0d and fs2 == 0 and fe2 == 0xfe and fm2 == 0x73bb25 and rm_val == 0  #nosat<br>                                             |[0x8000035c]:fadd.s fa6, fs7, ft6, dyn<br> [0x80000360]:csrrs a7, fflags, zero<br> [0x80000364]:fsw fa6, 224(a5)<br> [0x80000368]:sw a7, 228(a5)<br>    |
|  16|[0x80002404]<br>0x0000000000000005|- rs1 : f11<br> - rs2 : f7<br> - rd : f31<br> - fs1 == 1 and fe1 == 0xfc and fm1 == 0x1173d9 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x106e2e and rm_val == 0  #nosat<br>                                             |[0x80000378]:fadd.s ft11, fa1, ft7, dyn<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:fsw ft11, 240(a5)<br> [0x80000384]:sw a7, 244(a5)<br>  |
|  17|[0x80002414]<br>0x0000000000000005|- rs1 : f29<br> - rs2 : f30<br> - rd : f24<br> - fs1 == 1 and fe1 == 0xfd and fm1 == 0x5d0ccb and fs2 == 0 and fe2 == 0xfe and fm2 == 0x2644ac and rm_val == 0  #nosat<br>                                            |[0x80000394]:fadd.s fs8, ft9, ft10, dyn<br> [0x80000398]:csrrs a7, fflags, zero<br> [0x8000039c]:fsw fs8, 256(a5)<br> [0x800003a0]:sw a7, 260(a5)<br>   |
|  18|[0x80002424]<br>0x0000000000000005|- rs1 : f19<br> - rs2 : f28<br> - rd : f14<br> - fs1 == 1 and fe1 == 0xfd and fm1 == 0x64f961 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x3c6359 and rm_val == 0  #nosat<br>                                            |[0x800003b0]:fadd.s fa4, fs3, ft8, dyn<br> [0x800003b4]:csrrs a7, fflags, zero<br> [0x800003b8]:fsw fa4, 272(a5)<br> [0x800003bc]:sw a7, 276(a5)<br>    |
|  19|[0x80002434]<br>0x0000000000000005|- rs1 : f6<br> - rs2 : f8<br> - rd : f22<br> - fs1 == 1 and fe1 == 0xfd and fm1 == 0x61a51b and fs2 == 0 and fe2 == 0xfe and fm2 == 0x4642a7 and rm_val == 0  #nosat<br>                                              |[0x800003cc]:fadd.s fs6, ft6, fs0, dyn<br> [0x800003d0]:csrrs a7, fflags, zero<br> [0x800003d4]:fsw fs6, 288(a5)<br> [0x800003d8]:sw a7, 292(a5)<br>    |
|  20|[0x80002444]<br>0x0000000000000005|- rs1 : f10<br> - rs2 : f5<br> - rd : f27<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x390e97 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                             |[0x800003e8]:fadd.s fs11, fa0, ft5, dyn<br> [0x800003ec]:csrrs a7, fflags, zero<br> [0x800003f0]:fsw fs11, 304(a5)<br> [0x800003f4]:sw a7, 308(a5)<br>  |
|  21|[0x80002454]<br>0x0000000000000005|- rs1 : f26<br> - rs2 : f12<br> - rd : f6<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x1c60ac and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                             |[0x80000404]:fadd.s ft6, fs10, fa2, dyn<br> [0x80000408]:csrrs a7, fflags, zero<br> [0x8000040c]:fsw ft6, 320(a5)<br> [0x80000410]:sw a7, 324(a5)<br>   |
|  22|[0x80002464]<br>0x0000000000000005|- rs1 : f22<br> - rs2 : f24<br> - rd : f25<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x07a8e7 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x70c4b8 and rm_val == 0  #nosat<br>                                            |[0x80000420]:fadd.s fs9, fs6, fs8, dyn<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsw fs9, 336(a5)<br> [0x8000042c]:sw a7, 340(a5)<br>    |
|  23|[0x80002474]<br>0x0000000000000005|- rs1 : f7<br> - rs2 : f26<br> - rd : f2<br> - fs1 == 1 and fe1 == 0xfb and fm1 == 0x278349 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x7d9098 and rm_val == 0  #nosat<br>                                              |[0x8000043c]:fadd.s ft2, ft7, fs10, dyn<br> [0x80000440]:csrrs a7, fflags, zero<br> [0x80000444]:fsw ft2, 352(a5)<br> [0x80000448]:sw a7, 356(a5)<br>   |
|  24|[0x80002484]<br>0x0000000000000005|- rs1 : f14<br> - rs2 : f10<br> - rd : f1<br> - fs1 == 1 and fe1 == 0xfd and fm1 == 0x430c98 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                             |[0x80000458]:fadd.s ft1, fa4, fa0, dyn<br> [0x8000045c]:csrrs a7, fflags, zero<br> [0x80000460]:fsw ft1, 368(a5)<br> [0x80000464]:sw a7, 372(a5)<br>    |
|  25|[0x80002494]<br>0x0000000000000005|- rs1 : f9<br> - rs2 : f20<br> - rd : f18<br> - fs1 == 1 and fe1 == 0xfa and fm1 == 0x772129 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x19caca and rm_val == 0  #nosat<br>                                             |[0x80000474]:fadd.s fs2, fs1, fs4, dyn<br> [0x80000478]:csrrs a7, fflags, zero<br> [0x8000047c]:fsw fs2, 384(a5)<br> [0x80000480]:sw a7, 388(a5)<br>    |
|  26|[0x800024a4]<br>0x0000000000000005|- rs1 : f0<br> - rs2 : f21<br> - rd : f4<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x1a35e0 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x703879 and rm_val == 0  #nosat<br>                                              |[0x80000490]:fadd.s ft4, ft0, fs5, dyn<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:fsw ft4, 400(a5)<br> [0x8000049c]:sw a7, 404(a5)<br>    |
|  27|[0x800024b4]<br>0x0000000000000005|- rs1 : f4<br> - rs2 : f17<br> - rd : f8<br> - fs1 == 1 and fe1 == 0xfc and fm1 == 0x3741cc and fs2 == 0 and fe2 == 0xfe and fm2 == 0x6794fc and rm_val == 0  #nosat<br>                                              |[0x800004ac]:fadd.s fs0, ft4, fa7, dyn<br> [0x800004b0]:csrrs a7, fflags, zero<br> [0x800004b4]:fsw fs0, 416(a5)<br> [0x800004b8]:sw a7, 420(a5)<br>    |
|  28|[0x800024c4]<br>0x0000000000000005|- rs1 : f31<br> - rs2 : f1<br> - rd : f0<br> - fs1 == 1 and fe1 == 0xfc and fm1 == 0x12bd51 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x11a59d and rm_val == 0  #nosat<br>                                              |[0x800004c8]:fadd.s ft0, ft11, ft1, dyn<br> [0x800004cc]:csrrs a7, fflags, zero<br> [0x800004d0]:fsw ft0, 432(a5)<br> [0x800004d4]:sw a7, 436(a5)<br>   |
|  29|[0x800024d4]<br>0x0000000000000005|- rs1 : f28<br> - rs2 : f27<br> - rd : f11<br> - fs1 == 1 and fe1 == 0xfc and fm1 == 0x79c1c6 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x6591d8 and rm_val == 0  #nosat<br>                                            |[0x800004e4]:fadd.s fa1, ft8, fs11, dyn<br> [0x800004e8]:csrrs a7, fflags, zero<br> [0x800004ec]:fsw fa1, 448(a5)<br> [0x800004f0]:sw a7, 452(a5)<br>   |
|  30|[0x800024e4]<br>0x0000000000000005|- rs1 : f13<br> - rs2 : f14<br> - rd : f26<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x269468 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x55691d and rm_val == 0  #nosat<br>                                            |[0x80000500]:fadd.s fs10, fa3, fa4, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsw fs10, 464(a5)<br> [0x8000050c]:sw a7, 468(a5)<br>  |
|  31|[0x800024f4]<br>0x0000000000000005|- rs1 : f16<br> - rs2 : f18<br> - rd : f19<br> - fs1 == 1 and fe1 == 0xf4 and fm1 == 0x60affa and fs2 == 0 and fe2 == 0xfd and fm2 == 0x3df905 and rm_val == 0  #nosat<br>                                            |[0x8000051c]:fadd.s fs3, fa6, fs2, dyn<br> [0x80000520]:csrrs a7, fflags, zero<br> [0x80000524]:fsw fs3, 480(a5)<br> [0x80000528]:sw a7, 484(a5)<br>    |
|  32|[0x80002504]<br>0x0000000000000005|- rs1 : f21<br> - rs2 : f16<br> - rd : f23<br> - fs1 == 1 and fe1 == 0xfe and fm1 == 0x1e5ec7 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                            |[0x80000538]:fadd.s fs7, fs5, fa6, dyn<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:fsw fs7, 496(a5)<br> [0x80000544]:sw a7, 500(a5)<br>    |
|  33|[0x80002514]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x0a2eec and fs2 == 0 and fe2 == 0xfe and fm2 == 0x56c1e5 and rm_val == 0  #nosat<br>                                                                                           |[0x80000554]:fadd.s ft11, ft10, ft9, dyn<br> [0x80000558]:csrrs a7, fflags, zero<br> [0x8000055c]:fsw ft11, 512(a5)<br> [0x80000560]:sw a7, 516(a5)<br> |
|  34|[0x80002524]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfd and fm1 == 0x52b355 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x5817b0 and rm_val == 0  #nosat<br>                                                                                           |[0x80000570]:fadd.s ft11, ft10, ft9, dyn<br> [0x80000574]:csrrs a7, fflags, zero<br> [0x80000578]:fsw ft11, 528(a5)<br> [0x8000057c]:sw a7, 532(a5)<br> |
|  35|[0x80002534]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfc and fm1 == 0x480ede and fs2 == 0 and fe2 == 0xfe and fm2 == 0x4c9471 and rm_val == 0  #nosat<br>                                                                                           |[0x8000058c]:fadd.s ft11, ft10, ft9, dyn<br> [0x80000590]:csrrs a7, fflags, zero<br> [0x80000594]:fsw ft11, 544(a5)<br> [0x80000598]:sw a7, 548(a5)<br> |
|  36|[0x80002544]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfd and fm1 == 0x372bf7 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                           |[0x800005a8]:fadd.s ft11, ft10, ft9, dyn<br> [0x800005ac]:csrrs a7, fflags, zero<br> [0x800005b0]:fsw ft11, 560(a5)<br> [0x800005b4]:sw a7, 564(a5)<br> |
|  37|[0x80002554]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x2f4c51 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                           |[0x800005c4]:fadd.s ft11, ft10, ft9, dyn<br> [0x800005c8]:csrrs a7, fflags, zero<br> [0x800005cc]:fsw ft11, 576(a5)<br> [0x800005d0]:sw a7, 580(a5)<br> |
|  38|[0x80002564]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfd and fm1 == 0x26b8d3 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x48a6ba and rm_val == 0  #nosat<br>                                                                                           |[0x800005e0]:fadd.s ft11, ft10, ft9, dyn<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsw ft11, 592(a5)<br> [0x800005ec]:sw a7, 596(a5)<br> |
|  39|[0x80002574]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfd and fm1 == 0x354d84 and fs2 == 0 and fe2 == 0xfd and fm2 == 0x5bf8d8 and rm_val == 0  #nosat<br>                                                                                           |[0x800005fc]:fadd.s ft11, ft10, ft9, dyn<br> [0x80000600]:csrrs a7, fflags, zero<br> [0x80000604]:fsw ft11, 608(a5)<br> [0x80000608]:sw a7, 612(a5)<br> |
|  40|[0x80002584]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x2c93b2 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                           |[0x80000618]:fadd.s ft11, ft10, ft9, dyn<br> [0x8000061c]:csrrs a7, fflags, zero<br> [0x80000620]:fsw ft11, 624(a5)<br> [0x80000624]:sw a7, 628(a5)<br> |
|  41|[0x80002594]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfc and fm1 == 0x6e317d and fs2 == 0 and fe2 == 0xfe and fm2 == 0x47ad0f and rm_val == 0  #nosat<br>                                                                                           |[0x80000634]:fadd.s ft11, ft10, ft9, dyn<br> [0x80000638]:csrrs a7, fflags, zero<br> [0x8000063c]:fsw ft11, 640(a5)<br> [0x80000640]:sw a7, 644(a5)<br> |
|  42|[0x800025a4]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x1b8fcb and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                           |[0x80000650]:fadd.s ft11, ft10, ft9, dyn<br> [0x80000654]:csrrs a7, fflags, zero<br> [0x80000658]:fsw ft11, 656(a5)<br> [0x8000065c]:sw a7, 660(a5)<br> |
|  43|[0x800025b4]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x2eabd8 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                           |[0x8000066c]:fadd.s ft11, ft10, ft9, dyn<br> [0x80000670]:csrrs a7, fflags, zero<br> [0x80000674]:fsw ft11, 672(a5)<br> [0x80000678]:sw a7, 676(a5)<br> |
|  44|[0x800025c4]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfd and fm1 == 0x6d7424 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x26d2f5 and rm_val == 0  #nosat<br>                                                                                           |[0x80000688]:fadd.s ft11, ft10, ft9, dyn<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsw ft11, 688(a5)<br> [0x80000694]:sw a7, 692(a5)<br> |
|  45|[0x800025d4]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfc and fm1 == 0x587392 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x473a2e and rm_val == 0  #nosat<br>                                                                                           |[0x800006a4]:fadd.s ft11, ft10, ft9, dyn<br> [0x800006a8]:csrrs a7, fflags, zero<br> [0x800006ac]:fsw ft11, 704(a5)<br> [0x800006b0]:sw a7, 708(a5)<br> |
|  46|[0x800025e4]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x2e5b90 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                           |[0x800006c0]:fadd.s ft11, ft10, ft9, dyn<br> [0x800006c4]:csrrs a7, fflags, zero<br> [0x800006c8]:fsw ft11, 720(a5)<br> [0x800006cc]:sw a7, 724(a5)<br> |
|  47|[0x800025f4]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfd and fm1 == 0x370362 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x4b8415 and rm_val == 0  #nosat<br>                                                                                           |[0x800006dc]:fadd.s ft11, ft10, ft9, dyn<br> [0x800006e0]:csrrs a7, fflags, zero<br> [0x800006e4]:fsw ft11, 736(a5)<br> [0x800006e8]:sw a7, 740(a5)<br> |
|  48|[0x80002604]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x167d44 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x50b9b1 and rm_val == 0  #nosat<br>                                                                                           |[0x800006f8]:fadd.s ft11, ft10, ft9, dyn<br> [0x800006fc]:csrrs a7, fflags, zero<br> [0x80000700]:fsw ft11, 752(a5)<br> [0x80000704]:sw a7, 756(a5)<br> |
|  49|[0x80002614]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfd and fm1 == 0x445459 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x2fe97e and rm_val == 0  #nosat<br>                                                                                           |[0x80000714]:fadd.s ft11, ft10, ft9, dyn<br> [0x80000718]:csrrs a7, fflags, zero<br> [0x8000071c]:fsw ft11, 768(a5)<br> [0x80000720]:sw a7, 772(a5)<br> |
|  50|[0x80002624]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfd and fm1 == 0x217fdd and fs2 == 0 and fe2 == 0xfe and fm2 == 0x027635 and rm_val == 0  #nosat<br>                                                                                           |[0x80000730]:fadd.s ft11, ft10, ft9, dyn<br> [0x80000734]:csrrs a7, fflags, zero<br> [0x80000738]:fsw ft11, 784(a5)<br> [0x8000073c]:sw a7, 788(a5)<br> |
|  51|[0x80002634]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfd and fm1 == 0x6b4f07 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x530d37 and rm_val == 0  #nosat<br>                                                                                           |[0x8000074c]:fadd.s ft11, ft10, ft9, dyn<br> [0x80000750]:csrrs a7, fflags, zero<br> [0x80000754]:fsw ft11, 800(a5)<br> [0x80000758]:sw a7, 804(a5)<br> |
|  52|[0x80002644]<br>0x0000000000000005|- fs1 == 1 and fe1 == 0xfe and fm1 == 0x3f4810 and fs2 == 0 and fe2 == 0xfe and fm2 == 0x7fffff and rm_val == 0  #nosat<br>                                                                                           |[0x80000768]:fadd.s ft11, ft10, ft9, dyn<br> [0x8000076c]:csrrs a7, fflags, zero<br> [0x80000770]:fsw ft11, 816(a5)<br> [0x80000774]:sw a7, 820(a5)<br> |
