
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x800007e0')]      |
| SIG_REGION                | [('0x80002310', '0x80002720', '130 dwords')]      |
| COV_LABELS                | fsqrt_b20      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fsqrt/riscof_work/fsqrt_b20-01.S/ref.S    |
| Total Number of coverpoints| 137     |
| Total Coverpoints Hit     | 132      |
| Total Signature Updates   | 66      |
| STAT1                     | 65      |
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

|s.no|            signature             |                                                                   coverpoints                                                                   |                                                                         code                                                                         |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002314]<br>0x0000000000000001|- opcode : fsqrt.s<br> - rs1 : f22<br> - rd : f22<br> - rs1 == rd<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7fffff and rm_val == 0  #nosat<br> |[0x800001d0]:fsqrt.s fs6, fs6, dyn<br> [0x800001d4]:csrrs a7, fflags, zero<br> [0x800001d8]:fsw fs6, 0(a5)<br> [0x800001dc]:sw a7, 4(a5)<br>          |
|   2|[0x80002324]<br>0x0000000000000001|- rs1 : f13<br> - rd : f0<br> - rs1 != rd<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000000 and rm_val == 0  #nosat<br>                         |[0x800001e8]:fsqrt.s ft0, fa3, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw ft0, 16(a5)<br> [0x800001f4]:sw a7, 20(a5)<br>        |
|   3|[0x80002334]<br>0x0000000000000001|- rs1 : f12<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x9e and fm1 == 0x38d874 and rm_val == 0  #nosat<br>                                         |[0x80000200]:fsqrt.s fs0, fa2, dyn<br> [0x80000204]:csrrs a7, fflags, zero<br> [0x80000208]:fsw fs0, 32(a5)<br> [0x8000020c]:sw a7, 36(a5)<br>        |
|   4|[0x80002344]<br>0x0000000000000001|- rs1 : f4<br> - rd : f26<br> - fs1 == 0 and fe1 == 0xd0 and fm1 == 0x010151 and rm_val == 0  #nosat<br>                                         |[0x80000218]:fsqrt.s fs10, ft4, dyn<br> [0x8000021c]:csrrs a7, fflags, zero<br> [0x80000220]:fsw fs10, 48(a5)<br> [0x80000224]:sw a7, 52(a5)<br>      |
|   5|[0x80002354]<br>0x0000000000000001|- rs1 : f27<br> - rd : f23<br> - fs1 == 0 and fe1 == 0xb7 and fm1 == 0x4bce51 and rm_val == 0  #nosat<br>                                        |[0x80000230]:fsqrt.s fs7, fs11, dyn<br> [0x80000234]:csrrs a7, fflags, zero<br> [0x80000238]:fsw fs7, 64(a5)<br> [0x8000023c]:sw a7, 68(a5)<br>       |
|   6|[0x80002364]<br>0x0000000000000001|- rs1 : f7<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x30 and fm1 == 0x75cb89 and rm_val == 0  #nosat<br>                                         |[0x80000248]:fsqrt.s ft9, ft7, dyn<br> [0x8000024c]:csrrs a7, fflags, zero<br> [0x80000250]:fsw ft9, 80(a5)<br> [0x80000254]:sw a7, 84(a5)<br>        |
|   7|[0x80002374]<br>0x0000000000000001|- rs1 : f11<br> - rd : f31<br> - fs1 == 0 and fe1 == 0x79 and fm1 == 0x785c55 and rm_val == 0  #nosat<br>                                        |[0x80000260]:fsqrt.s ft11, fa1, dyn<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:fsw ft11, 96(a5)<br> [0x8000026c]:sw a7, 100(a5)<br>     |
|   8|[0x80002384]<br>0x0000000000000001|- rs1 : f8<br> - rd : f1<br> - fs1 == 0 and fe1 == 0xac and fm1 == 0x13884e and rm_val == 0  #nosat<br>                                          |[0x80000278]:fsqrt.s ft1, fs0, dyn<br> [0x8000027c]:csrrs a7, fflags, zero<br> [0x80000280]:fsw ft1, 112(a5)<br> [0x80000284]:sw a7, 116(a5)<br>      |
|   9|[0x80002394]<br>0x0000000000000001|- rs1 : f31<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x65 and fm1 == 0x064562 and rm_val == 0  #nosat<br>                                        |[0x80000290]:fsqrt.s fa5, ft11, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:fsw fa5, 128(a5)<br> [0x8000029c]:sw a7, 132(a5)<br>     |
|  10|[0x800023a4]<br>0x0000000000000001|- rs1 : f15<br> - rd : f4<br> - fs1 == 0 and fe1 == 0xd3 and fm1 == 0x190acf and rm_val == 0  #nosat<br>                                         |[0x800002a8]:fsqrt.s ft4, fa5, dyn<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:fsw ft4, 144(a5)<br> [0x800002b4]:sw a7, 148(a5)<br>      |
|  11|[0x800023b4]<br>0x0000000000000001|- rs1 : f21<br> - rd : f30<br> - fs1 == 0 and fe1 == 0xea and fm1 == 0x284ae6 and rm_val == 0  #nosat<br>                                        |[0x800002c0]:fsqrt.s ft10, fs5, dyn<br> [0x800002c4]:csrrs a7, fflags, zero<br> [0x800002c8]:fsw ft10, 160(a5)<br> [0x800002cc]:sw a7, 164(a5)<br>    |
|  12|[0x800023c4]<br>0x0000000000000001|- rs1 : f3<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x4e and fm1 == 0x454542 and rm_val == 0  #nosat<br>                                         |[0x800002d8]:fsqrt.s fa3, ft3, dyn<br> [0x800002dc]:csrrs a7, fflags, zero<br> [0x800002e0]:fsw fa3, 176(a5)<br> [0x800002e4]:sw a7, 180(a5)<br>      |
|  13|[0x800023d4]<br>0x0000000000000001|- rs1 : f9<br> - rd : f12<br> - fs1 == 0 and fe1 == 0xb6 and fm1 == 0x479816 and rm_val == 0  #nosat<br>                                         |[0x800002f0]:fsqrt.s fa2, fs1, dyn<br> [0x800002f4]:csrrs a7, fflags, zero<br> [0x800002f8]:fsw fa2, 192(a5)<br> [0x800002fc]:sw a7, 196(a5)<br>      |
|  14|[0x800023e4]<br>0x0000000000000001|- rs1 : f23<br> - rd : f11<br> - fs1 == 0 and fe1 == 0x65 and fm1 == 0x5b1e82 and rm_val == 0  #nosat<br>                                        |[0x80000308]:fsqrt.s fa1, fs7, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:fsw fa1, 208(a5)<br> [0x80000314]:sw a7, 212(a5)<br>      |
|  15|[0x800023f4]<br>0x0000000000000001|- rs1 : f2<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x7b and fm1 == 0x64e1f0 and rm_val == 0  #nosat<br>                                         |[0x80000320]:fsqrt.s fs4, ft2, dyn<br> [0x80000324]:csrrs a7, fflags, zero<br> [0x80000328]:fsw fs4, 224(a5)<br> [0x8000032c]:sw a7, 228(a5)<br>      |
|  16|[0x80002404]<br>0x0000000000000001|- rs1 : f10<br> - rd : f28<br> - fs1 == 0 and fe1 == 0xc2 and fm1 == 0x26f9c3 and rm_val == 0  #nosat<br>                                        |[0x80000338]:fsqrt.s ft8, fa0, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:fsw ft8, 240(a5)<br> [0x80000344]:sw a7, 244(a5)<br>      |
|  17|[0x80002414]<br>0x0000000000000001|- rs1 : f18<br> - rd : f10<br> - fs1 == 0 and fe1 == 0x31 and fm1 == 0x011313 and rm_val == 0  #nosat<br>                                        |[0x80000350]:fsqrt.s fa0, fs2, dyn<br> [0x80000354]:csrrs a7, fflags, zero<br> [0x80000358]:fsw fa0, 256(a5)<br> [0x8000035c]:sw a7, 260(a5)<br>      |
|  18|[0x80002424]<br>0x0000000000000001|- rs1 : f16<br> - rd : f24<br> - fs1 == 0 and fe1 == 0xad and fm1 == 0x75bbd8 and rm_val == 0  #nosat<br>                                        |[0x80000368]:fsqrt.s fs8, fa6, dyn<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:fsw fs8, 272(a5)<br> [0x80000374]:sw a7, 276(a5)<br>      |
|  19|[0x80002434]<br>0x0000000000000001|- rs1 : f0<br> - rd : f6<br> - fs1 == 0 and fe1 == 0xe4 and fm1 == 0x1477dc and rm_val == 0  #nosat<br>                                          |[0x80000380]:fsqrt.s ft6, ft0, dyn<br> [0x80000384]:csrrs a7, fflags, zero<br> [0x80000388]:fsw ft6, 288(a5)<br> [0x8000038c]:sw a7, 292(a5)<br>      |
|  20|[0x80002444]<br>0x0000000000000001|- rs1 : f24<br> - rd : f14<br> - fs1 == 0 and fe1 == 0xf9 and fm1 == 0x2b61ee and rm_val == 0  #nosat<br>                                        |[0x80000398]:fsqrt.s fa4, fs8, dyn<br> [0x8000039c]:csrrs a7, fflags, zero<br> [0x800003a0]:fsw fa4, 304(a5)<br> [0x800003a4]:sw a7, 308(a5)<br>      |
|  21|[0x80002454]<br>0x0000000000000001|- rs1 : f29<br> - rd : f3<br> - fs1 == 0 and fe1 == 0x3f and fm1 == 0x0577a2 and rm_val == 0  #nosat<br>                                         |[0x800003b0]:fsqrt.s ft3, ft9, dyn<br> [0x800003b4]:csrrs a7, fflags, zero<br> [0x800003b8]:fsw ft3, 320(a5)<br> [0x800003bc]:sw a7, 324(a5)<br>      |
|  22|[0x80002464]<br>0x0000000000000001|- rs1 : f5<br> - rd : f9<br> - fs1 == 0 and fe1 == 0xf5 and fm1 == 0x0aadc1 and rm_val == 0  #nosat<br>                                          |[0x800003c8]:fsqrt.s fs1, ft5, dyn<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:fsw fs1, 336(a5)<br> [0x800003d4]:sw a7, 340(a5)<br>      |
|  23|[0x80002474]<br>0x0000000000000001|- rs1 : f30<br> - rd : f21<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x2bf296 and rm_val == 0  #nosat<br>                                        |[0x800003e0]:fsqrt.s fs5, ft10, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsw fs5, 352(a5)<br> [0x800003ec]:sw a7, 356(a5)<br>     |
|  24|[0x80002484]<br>0x0000000000000001|- rs1 : f25<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x39 and fm1 == 0x0ef3b1 and rm_val == 0  #nosat<br>                                        |[0x800003f8]:fsqrt.s fs2, fs9, dyn<br> [0x800003fc]:csrrs a7, fflags, zero<br> [0x80000400]:fsw fs2, 368(a5)<br> [0x80000404]:sw a7, 372(a5)<br>      |
|  25|[0x80002494]<br>0x0000000000000001|- rs1 : f19<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x59 and fm1 == 0x0fed85 and rm_val == 0  #nosat<br>                                         |[0x80000410]:fsqrt.s ft2, fs3, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:fsw ft2, 384(a5)<br> [0x8000041c]:sw a7, 388(a5)<br>      |
|  26|[0x800024a4]<br>0x0000000000000001|- rs1 : f17<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x0cd173 and rm_val == 0  #nosat<br>                                         |[0x80000428]:fsqrt.s ft7, fa7, dyn<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:fsw ft7, 400(a5)<br> [0x80000434]:sw a7, 404(a5)<br>      |
|  27|[0x800024b4]<br>0x0000000000000001|- rs1 : f1<br> - rd : f5<br> - fs1 == 0 and fe1 == 0xdd and fm1 == 0x4096e8 and rm_val == 0  #nosat<br>                                          |[0x80000440]:fsqrt.s ft5, ft1, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:fsw ft5, 416(a5)<br> [0x8000044c]:sw a7, 420(a5)<br>      |
|  28|[0x800024c4]<br>0x0000000000000001|- rs1 : f6<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x0b and fm1 == 0x0cd684 and rm_val == 0  #nosat<br>                                         |[0x80000458]:fsqrt.s fs3, ft6, dyn<br> [0x8000045c]:csrrs a7, fflags, zero<br> [0x80000460]:fsw fs3, 432(a5)<br> [0x80000464]:sw a7, 436(a5)<br>      |
|  29|[0x800024d4]<br>0x0000000000000001|- rs1 : f14<br> - rd : f17<br> - fs1 == 0 and fe1 == 0xa7 and fm1 == 0x0f78f8 and rm_val == 0  #nosat<br>                                        |[0x80000470]:fsqrt.s fa7, fa4, dyn<br> [0x80000474]:csrrs a7, fflags, zero<br> [0x80000478]:fsw fa7, 448(a5)<br> [0x8000047c]:sw a7, 452(a5)<br>      |
|  30|[0x800024e4]<br>0x0000000000000001|- rs1 : f26<br> - rd : f16<br> - fs1 == 0 and fe1 == 0xfe and fm1 == 0x7f3827 and rm_val == 0  #nosat<br>                                        |[0x80000488]:fsqrt.s fa6, fs10, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw fa6, 464(a5)<br> [0x80000494]:sw a7, 468(a5)<br>     |
|  31|[0x800024f4]<br>0x0000000000000001|- rs1 : f28<br> - rd : f27<br> - fs1 == 0 and fe1 == 0xf3 and fm1 == 0x6653ed and rm_val == 0  #nosat<br>                                        |[0x800004a0]:fsqrt.s fs11, ft8, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:fsw fs11, 480(a5)<br> [0x800004ac]:sw a7, 484(a5)<br>    |
|  32|[0x80002504]<br>0x0000000000000001|- rs1 : f20<br> - rd : f25<br> - fs1 == 0 and fe1 == 0xc0 and fm1 == 0x3590aa and rm_val == 0  #nosat<br>                                        |[0x800004b8]:fsqrt.s fs9, fs4, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:fsw fs9, 496(a5)<br> [0x800004c4]:sw a7, 500(a5)<br>      |
|  33|[0x80002514]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x3c and fm1 == 0x124e58 and rm_val == 0  #nosat<br>                                                                       |[0x800004d0]:fsqrt.s ft11, ft10, dyn<br> [0x800004d4]:csrrs a7, fflags, zero<br> [0x800004d8]:fsw ft11, 512(a5)<br> [0x800004dc]:sw a7, 516(a5)<br>   |
|  34|[0x80002524]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000005 and rm_val == 0  #nosat<br>                                                                       |[0x800004e8]:fsqrt.s ft11, ft10, dyn<br> [0x800004ec]:csrrs a7, fflags, zero<br> [0x800004f0]:fsw ft11, 528(a5)<br> [0x800004f4]:sw a7, 532(a5)<br>   |
|  35|[0x80002534]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x52 and fm1 == 0x216b44 and rm_val == 0  #nosat<br>                                                                       |[0x80000500]:fsqrt.s ft11, ft10, dyn<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsw ft11, 544(a5)<br> [0x8000050c]:sw a7, 548(a5)<br>   |
|  36|[0x80002544]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xce and fm1 == 0x1168e1 and rm_val == 0  #nosat<br>                                                                       |[0x80000518]:fsqrt.s ft11, ft10, dyn<br> [0x8000051c]:csrrs a7, fflags, zero<br> [0x80000520]:fsw ft11, 560(a5)<br> [0x80000524]:sw a7, 564(a5)<br>   |
|  37|[0x80002554]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xa0 and fm1 == 0x10d851 and rm_val == 0  #nosat<br>                                                                       |[0x80000530]:fsqrt.s ft11, ft10, dyn<br> [0x80000534]:csrrs a7, fflags, zero<br> [0x80000538]:fsw ft11, 576(a5)<br> [0x8000053c]:sw a7, 580(a5)<br>   |
|  38|[0x80002564]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xea and fm1 == 0x4f33d9 and rm_val == 0  #nosat<br>                                                                       |[0x80000548]:fsqrt.s ft11, ft10, dyn<br> [0x8000054c]:csrrs a7, fflags, zero<br> [0x80000550]:fsw ft11, 592(a5)<br> [0x80000554]:sw a7, 596(a5)<br>   |
|  39|[0x80002574]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x1b and fm1 == 0x5b5a62 and rm_val == 0  #nosat<br>                                                                       |[0x80000560]:fsqrt.s ft11, ft10, dyn<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsw ft11, 608(a5)<br> [0x8000056c]:sw a7, 612(a5)<br>   |
|  40|[0x80002584]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xbc and fm1 == 0x68cd04 and rm_val == 0  #nosat<br>                                                                       |[0x80000578]:fsqrt.s ft11, ft10, dyn<br> [0x8000057c]:csrrs a7, fflags, zero<br> [0x80000580]:fsw ft11, 624(a5)<br> [0x80000584]:sw a7, 628(a5)<br>   |
|  41|[0x80002594]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x00 and fm1 == 0x000160 and rm_val == 0  #nosat<br>                                                                       |[0x80000590]:fsqrt.s ft11, ft10, dyn<br> [0x80000594]:csrrs a7, fflags, zero<br> [0x80000598]:fsw ft11, 640(a5)<br> [0x8000059c]:sw a7, 644(a5)<br>   |
|  42|[0x800025a4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x6a and fm1 == 0x3e2364 and rm_val == 0  #nosat<br>                                                                       |[0x800005a8]:fsqrt.s ft11, ft10, dyn<br> [0x800005ac]:csrrs a7, fflags, zero<br> [0x800005b0]:fsw ft11, 656(a5)<br> [0x800005b4]:sw a7, 660(a5)<br>   |
|  43|[0x800025b4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x34 and fm1 == 0x08f690 and rm_val == 0  #nosat<br>                                                                       |[0x800005c0]:fsqrt.s ft11, ft10, dyn<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:fsw ft11, 672(a5)<br> [0x800005cc]:sw a7, 676(a5)<br>   |
|  44|[0x800025c4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xd3 and fm1 == 0x6a7f20 and rm_val == 0  #nosat<br>                                                                       |[0x800005d8]:fsqrt.s ft11, ft10, dyn<br> [0x800005dc]:csrrs a7, fflags, zero<br> [0x800005e0]:fsw ft11, 688(a5)<br> [0x800005e4]:sw a7, 692(a5)<br>   |
|  45|[0x800025d4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x80 and fm1 == 0x6d5a40 and rm_val == 0  #nosat<br>                                                                       |[0x800005f0]:fsqrt.s ft11, ft10, dyn<br> [0x800005f4]:csrrs a7, fflags, zero<br> [0x800005f8]:fsw ft11, 704(a5)<br> [0x800005fc]:sw a7, 708(a5)<br>   |
|  46|[0x800025e4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x7b and fm1 == 0x46c080 and rm_val == 0  #nosat<br>                                                                       |[0x80000608]:fsqrt.s ft11, ft10, dyn<br> [0x8000060c]:csrrs a7, fflags, zero<br> [0x80000610]:fsw ft11, 720(a5)<br> [0x80000614]:sw a7, 724(a5)<br>   |
|  47|[0x800025f4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xd0 and fm1 == 0x095440 and rm_val == 0  #nosat<br>                                                                       |[0x80000620]:fsqrt.s ft11, ft10, dyn<br> [0x80000624]:csrrs a7, fflags, zero<br> [0x80000628]:fsw ft11, 736(a5)<br> [0x8000062c]:sw a7, 740(a5)<br>   |
|  48|[0x80002604]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xef and fm1 == 0x7bb880 and rm_val == 0  #nosat<br>                                                                       |[0x80000638]:fsqrt.s ft11, ft10, dyn<br> [0x8000063c]:csrrs a7, fflags, zero<br> [0x80000640]:fsw ft11, 752(a5)<br> [0x80000644]:sw a7, 756(a5)<br>   |
|  49|[0x80002614]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x39 and fm1 == 0x69d200 and rm_val == 0  #nosat<br>                                                                       |[0x80000650]:fsqrt.s ft11, ft10, dyn<br> [0x80000654]:csrrs a7, fflags, zero<br> [0x80000658]:fsw ft11, 768(a5)<br> [0x8000065c]:sw a7, 772(a5)<br>   |
|  50|[0x80002624]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x7ff200 and rm_val == 0  #nosat<br>                                                                       |[0x80000668]:fsqrt.s ft11, ft10, dyn<br> [0x8000066c]:csrrs a7, fflags, zero<br> [0x80000670]:fsw ft11, 784(a5)<br> [0x80000674]:sw a7, 788(a5)<br>   |
|  51|[0x80002634]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x66 and fm1 == 0x64c400 and rm_val == 0  #nosat<br>                                                                       |[0x80000680]:fsqrt.s ft11, ft10, dyn<br> [0x80000684]:csrrs a7, fflags, zero<br> [0x80000688]:fsw ft11, 800(a5)<br> [0x8000068c]:sw a7, 804(a5)<br>   |
|  52|[0x80002644]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x88 and fm1 == 0x7c0400 and rm_val == 0  #nosat<br>                                                                       |[0x80000698]:fsqrt.s ft11, ft10, dyn<br> [0x8000069c]:csrrs a7, fflags, zero<br> [0x800006a0]:fsw ft11, 816(a5)<br> [0x800006a4]:sw a7, 820(a5)<br>   |
|  53|[0x80002654]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x86 and fm1 == 0x130400 and rm_val == 0  #nosat<br>                                                                       |[0x800006b0]:fsqrt.s ft11, ft10, dyn<br> [0x800006b4]:csrrs a7, fflags, zero<br> [0x800006b8]:fsw ft11, 832(a5)<br> [0x800006bc]:sw a7, 836(a5)<br>   |
|  54|[0x80002664]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x8e and fm1 == 0x689000 and rm_val == 0  #nosat<br>                                                                       |[0x800006c8]:fsqrt.s ft11, ft10, dyn<br> [0x800006cc]:csrrs a7, fflags, zero<br> [0x800006d0]:fsw ft11, 848(a5)<br> [0x800006d4]:sw a7, 852(a5)<br>   |
|  55|[0x80002674]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x59 and fm1 == 0x7d2000 and rm_val == 0  #nosat<br>                                                                       |[0x800006e0]:fsqrt.s ft11, ft10, dyn<br> [0x800006e4]:csrrs a7, fflags, zero<br> [0x800006e8]:fsw ft11, 864(a5)<br> [0x800006ec]:sw a7, 868(a5)<br>   |
|  56|[0x80002684]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x24 and fm1 == 0x689000 and rm_val == 0  #nosat<br>                                                                       |[0x800006f8]:fsqrt.s ft11, ft10, dyn<br> [0x800006fc]:csrrs a7, fflags, zero<br> [0x80000700]:fsw ft11, 880(a5)<br> [0x80000704]:sw a7, 884(a5)<br>   |
|  57|[0x80002694]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x3b and fm1 == 0x108000 and rm_val == 0  #nosat<br>                                                                       |[0x80000710]:fsqrt.s ft11, ft10, dyn<br> [0x80000714]:csrrs a7, fflags, zero<br> [0x80000718]:fsw ft11, 896(a5)<br> [0x8000071c]:sw a7, 900(a5)<br>   |
|  58|[0x800026a4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x82 and fm1 == 0x044000 and rm_val == 0  #nosat<br>                                                                       |[0x80000728]:fsqrt.s ft11, ft10, dyn<br> [0x8000072c]:csrrs a7, fflags, zero<br> [0x80000730]:fsw ft11, 912(a5)<br> [0x80000734]:sw a7, 916(a5)<br>   |
|  59|[0x800026b4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x97 and fm1 == 0x5c8000 and rm_val == 0  #nosat<br>                                                                       |[0x80000740]:fsqrt.s ft11, ft10, dyn<br> [0x80000744]:csrrs a7, fflags, zero<br> [0x80000748]:fsw ft11, 928(a5)<br> [0x8000074c]:sw a7, 932(a5)<br>   |
|  60|[0x800026c4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x86 and fm1 == 0x704000 and rm_val == 0  #nosat<br>                                                                       |[0x80000758]:fsqrt.s ft11, ft10, dyn<br> [0x8000075c]:csrrs a7, fflags, zero<br> [0x80000760]:fsw ft11, 944(a5)<br> [0x80000764]:sw a7, 948(a5)<br>   |
|  61|[0x800026d4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xf4 and fm1 == 0x610000 and rm_val == 0  #nosat<br>                                                                       |[0x80000770]:fsqrt.s ft11, ft10, dyn<br> [0x80000774]:csrrs a7, fflags, zero<br> [0x80000778]:fsw ft11, 960(a5)<br> [0x8000077c]:sw a7, 964(a5)<br>   |
|  62|[0x800026e4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xc7 and fm1 == 0x720000 and rm_val == 0  #nosat<br>                                                                       |[0x80000788]:fsqrt.s ft11, ft10, dyn<br> [0x8000078c]:csrrs a7, fflags, zero<br> [0x80000790]:fsw ft11, 976(a5)<br> [0x80000794]:sw a7, 980(a5)<br>   |
|  63|[0x800026f4]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xb7 and fm1 == 0x720000 and rm_val == 0  #nosat<br>                                                                       |[0x800007a0]:fsqrt.s ft11, ft10, dyn<br> [0x800007a4]:csrrs a7, fflags, zero<br> [0x800007a8]:fsw ft11, 992(a5)<br> [0x800007ac]:sw a7, 996(a5)<br>   |
|  64|[0x80002704]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0xf9 and fm1 == 0x480000 and rm_val == 0  #nosat<br>                                                                       |[0x800007b8]:fsqrt.s ft11, ft10, dyn<br> [0x800007bc]:csrrs a7, fflags, zero<br> [0x800007c0]:fsw ft11, 1008(a5)<br> [0x800007c4]:sw a7, 1012(a5)<br> |
|  65|[0x80002714]<br>0x0000000000000001|- fs1 == 0 and fe1 == 0x39 and fm1 == 0x480000 and rm_val == 0  #nosat<br>                                                                       |[0x800007d0]:fsqrt.s ft11, ft10, dyn<br> [0x800007d4]:csrrs a7, fflags, zero<br> [0x800007d8]:fsw ft11, 1024(a5)<br> [0x800007dc]:sw a7, 1028(a5)<br> |
