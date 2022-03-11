
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x800004e0')]      |
| SIG_REGION                | [('0x80002210', '0x80002420', '66 dwords')]      |
| COV_LABELS                | fsqrt_b2      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fsqrt/riscof_work/fsqrt_b2-01.S/ref.S    |
| Total Number of coverpoints| 97     |
| Total Coverpoints Hit     | 92      |
| Total Signature Updates   | 34      |
| STAT1                     | 33      |
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

|s.no|            signature             |                                                                   coverpoints                                                                   |                                                                        code                                                                        |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002214]<br>0x0000000000000001|- opcode : fsqrt.s<br> - rs1 : f11<br> - rd : f11<br> - rs1 == rd<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x0007f0 and rm_val == 0  #nosat<br> |[0x800001d0]:fsqrt.s fa1, fa1, dyn<br> [0x800001d4]:csrrs a7, fflags, zero<br> [0x800001d8]:fsw fa1, 0(a5)<br> [0x800001dc]:sw a7, 4(a5)<br>        |
|   2|[0x80002224]<br>0x0000000000000001|- rs1 : f3<br> - rd : f27<br> - rs1 != rd<br> - fs1 == 0 and fe1 == 0xff and fm1 == 0x000000 and rm_val == 0  #nosat<br>                         |[0x800001e8]:fsqrt.s fs11, ft3, dyn<br> [0x800001ec]:csrrs a7, fflags, zero<br> [0x800001f0]:fsw fs11, 16(a5)<br> [0x800001f4]:sw a7, 20(a5)<br>    |
|   3|[0x80002234]<br>0x0000000000000001|- rs1 : f17<br> - rd : f6<br> - fs1 == 0 and fe1 == 0x80 and fm1 == 0x100000 and rm_val == 0  #nosat<br>                                         |[0x80000200]:fsqrt.s ft6, fa7, dyn<br> [0x80000204]:csrrs a7, fflags, zero<br> [0x80000208]:fsw ft6, 32(a5)<br> [0x8000020c]:sw a7, 36(a5)<br>      |
|   4|[0x80002244]<br>0x0000000000000001|- rs1 : f27<br> - rd : f29<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x480000 and rm_val == 0  #nosat<br>                                        |[0x80000218]:fsqrt.s ft9, fs11, dyn<br> [0x8000021c]:csrrs a7, fflags, zero<br> [0x80000220]:fsw ft9, 48(a5)<br> [0x80000224]:sw a7, 52(a5)<br>     |
|   5|[0x80002254]<br>0x0000000000000001|- rs1 : f7<br> - rd : f0<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x220000 and rm_val == 0  #nosat<br>                                          |[0x80000230]:fsqrt.s ft0, ft7, dyn<br> [0x80000234]:csrrs a7, fflags, zero<br> [0x80000238]:fsw ft0, 64(a5)<br> [0x8000023c]:sw a7, 68(a5)<br>      |
|   6|[0x80002264]<br>0x0000000000000001|- rs1 : f10<br> - rd : f7<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x108000 and rm_val == 0  #nosat<br>                                         |[0x80000248]:fsqrt.s ft7, fa0, dyn<br> [0x8000024c]:csrrs a7, fflags, zero<br> [0x80000250]:fsw ft7, 80(a5)<br> [0x80000254]:sw a7, 84(a5)<br>      |
|   7|[0x80002274]<br>0x0000000000000001|- rs1 : f21<br> - rd : f9<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x082000 and rm_val == 0  #nosat<br>                                         |[0x80000260]:fsqrt.s fs1, fs5, dyn<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:fsw fs1, 96(a5)<br> [0x8000026c]:sw a7, 100(a5)<br>     |
|   8|[0x80002284]<br>0x0000000000000001|- rs1 : f14<br> - rd : f15<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x040800 and rm_val == 0  #nosat<br>                                        |[0x80000278]:fsqrt.s fa5, fa4, dyn<br> [0x8000027c]:csrrs a7, fflags, zero<br> [0x80000280]:fsw fa5, 112(a5)<br> [0x80000284]:sw a7, 116(a5)<br>    |
|   9|[0x80002294]<br>0x0000000000000001|- rs1 : f29<br> - rd : f16<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x020200 and rm_val == 0  #nosat<br>                                        |[0x80000290]:fsqrt.s fa6, ft9, dyn<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:fsw fa6, 128(a5)<br> [0x8000029c]:sw a7, 132(a5)<br>    |
|  10|[0x800022a4]<br>0x0000000000000001|- rs1 : f30<br> - rd : f25<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x010080 and rm_val == 0  #nosat<br>                                        |[0x800002a8]:fsqrt.s fs9, ft10, dyn<br> [0x800002ac]:csrrs a7, fflags, zero<br> [0x800002b0]:fsw fs9, 144(a5)<br> [0x800002b4]:sw a7, 148(a5)<br>   |
|  11|[0x800022b4]<br>0x0000000000000001|- rs1 : f6<br> - rd : f8<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x008020 and rm_val == 0  #nosat<br>                                          |[0x800002c0]:fsqrt.s fs0, ft6, dyn<br> [0x800002c4]:csrrs a7, fflags, zero<br> [0x800002c8]:fsw fs0, 160(a5)<br> [0x800002cc]:sw a7, 164(a5)<br>    |
|  12|[0x800022c4]<br>0x0000000000000001|- rs1 : f25<br> - rd : f17<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x004008 and rm_val == 0  #nosat<br>                                        |[0x800002d8]:fsqrt.s fa7, fs9, dyn<br> [0x800002dc]:csrrs a7, fflags, zero<br> [0x800002e0]:fsw fa7, 176(a5)<br> [0x800002e4]:sw a7, 180(a5)<br>    |
|  13|[0x800022d4]<br>0x0000000000000001|- rs1 : f19<br> - rd : f20<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x002002 and rm_val == 0  #nosat<br>                                        |[0x800002f0]:fsqrt.s fs4, fs3, dyn<br> [0x800002f4]:csrrs a7, fflags, zero<br> [0x800002f8]:fsw fs4, 192(a5)<br> [0x800002fc]:sw a7, 196(a5)<br>    |
|  14|[0x800022e4]<br>0x0000000000000001|- rs1 : f9<br> - rd : f19<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x001000 and rm_val == 0  #nosat<br>                                         |[0x80000308]:fsqrt.s fs3, fs1, dyn<br> [0x8000030c]:csrrs a7, fflags, zero<br> [0x80000310]:fsw fs3, 208(a5)<br> [0x80000314]:sw a7, 212(a5)<br>    |
|  15|[0x800022f4]<br>0x0000000000000001|- rs1 : f15<br> - rd : f2<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000800 and rm_val == 0  #nosat<br>                                         |[0x80000320]:fsqrt.s ft2, fa5, dyn<br> [0x80000324]:csrrs a7, fflags, zero<br> [0x80000328]:fsw ft2, 224(a5)<br> [0x8000032c]:sw a7, 228(a5)<br>    |
|  16|[0x80002304]<br>0x0000000000000001|- rs1 : f24<br> - rd : f26<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000400 and rm_val == 0  #nosat<br>                                        |[0x80000338]:fsqrt.s fs10, fs8, dyn<br> [0x8000033c]:csrrs a7, fflags, zero<br> [0x80000340]:fsw fs10, 240(a5)<br> [0x80000344]:sw a7, 244(a5)<br>  |
|  17|[0x80002314]<br>0x0000000000000001|- rs1 : f4<br> - rd : f24<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000200 and rm_val == 0  #nosat<br>                                         |[0x80000350]:fsqrt.s fs8, ft4, dyn<br> [0x80000354]:csrrs a7, fflags, zero<br> [0x80000358]:fsw fs8, 256(a5)<br> [0x8000035c]:sw a7, 260(a5)<br>    |
|  18|[0x80002324]<br>0x0000000000000001|- rs1 : f16<br> - rd : f28<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000100 and rm_val == 0  #nosat<br>                                        |[0x80000368]:fsqrt.s ft8, fa6, dyn<br> [0x8000036c]:csrrs a7, fflags, zero<br> [0x80000370]:fsw ft8, 272(a5)<br> [0x80000374]:sw a7, 276(a5)<br>    |
|  19|[0x80002334]<br>0x0000000000000001|- rs1 : f0<br> - rd : f13<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000080 and rm_val == 0  #nosat<br>                                         |[0x80000380]:fsqrt.s fa3, ft0, dyn<br> [0x80000384]:csrrs a7, fflags, zero<br> [0x80000388]:fsw fa3, 288(a5)<br> [0x8000038c]:sw a7, 292(a5)<br>    |
|  20|[0x80002344]<br>0x0000000000000001|- rs1 : f18<br> - rd : f5<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000040 and rm_val == 0  #nosat<br>                                         |[0x80000398]:fsqrt.s ft5, fs2, dyn<br> [0x8000039c]:csrrs a7, fflags, zero<br> [0x800003a0]:fsw ft5, 304(a5)<br> [0x800003a4]:sw a7, 308(a5)<br>    |
|  21|[0x80002354]<br>0x0000000000000001|- rs1 : f5<br> - rd : f22<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000020 and rm_val == 0  #nosat<br>                                         |[0x800003b0]:fsqrt.s fs6, ft5, dyn<br> [0x800003b4]:csrrs a7, fflags, zero<br> [0x800003b8]:fsw fs6, 320(a5)<br> [0x800003bc]:sw a7, 324(a5)<br>    |
|  22|[0x80002364]<br>0x0000000000000001|- rs1 : f20<br> - rd : f12<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000010 and rm_val == 0  #nosat<br>                                        |[0x800003c8]:fsqrt.s fa2, fs4, dyn<br> [0x800003cc]:csrrs a7, fflags, zero<br> [0x800003d0]:fsw fa2, 336(a5)<br> [0x800003d4]:sw a7, 340(a5)<br>    |
|  23|[0x80002374]<br>0x0000000000000001|- rs1 : f31<br> - rd : f30<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000008 and rm_val == 0  #nosat<br>                                        |[0x800003e0]:fsqrt.s ft10, ft11, dyn<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsw ft10, 352(a5)<br> [0x800003ec]:sw a7, 356(a5)<br> |
|  24|[0x80002384]<br>0x0000000000000001|- rs1 : f12<br> - rd : f4<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000004 and rm_val == 0  #nosat<br>                                         |[0x800003f8]:fsqrt.s ft4, fa2, dyn<br> [0x800003fc]:csrrs a7, fflags, zero<br> [0x80000400]:fsw ft4, 368(a5)<br> [0x80000404]:sw a7, 372(a5)<br>    |
|  25|[0x80002394]<br>0x0000000000000001|- rs1 : f2<br> - rd : f18<br> - fs1 == 0 and fe1 == 0x7f and fm1 == 0x000002 and rm_val == 0  #nosat<br>                                         |[0x80000410]:fsqrt.s fs2, ft2, dyn<br> [0x80000414]:csrrs a7, fflags, zero<br> [0x80000418]:fsw fs2, 384(a5)<br> [0x8000041c]:sw a7, 388(a5)<br>    |
|  26|[0x800023a4]<br>0x0000000000000001|- rs1 : f13<br> - rd : f21<br>                                                                                                                   |[0x80000428]:fsqrt.s fs5, fa3, dyn<br> [0x8000042c]:csrrs a7, fflags, zero<br> [0x80000430]:fsw fs5, 400(a5)<br> [0x80000434]:sw a7, 404(a5)<br>    |
|  27|[0x800023b4]<br>0x0000000000000001|- rs1 : f28<br> - rd : f23<br>                                                                                                                   |[0x80000440]:fsqrt.s fs7, ft8, dyn<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:fsw fs7, 416(a5)<br> [0x8000044c]:sw a7, 420(a5)<br>    |
|  28|[0x800023c4]<br>0x0000000000000001|- rs1 : f8<br> - rd : f10<br>                                                                                                                    |[0x80000458]:fsqrt.s fa0, fs0, dyn<br> [0x8000045c]:csrrs a7, fflags, zero<br> [0x80000460]:fsw fa0, 432(a5)<br> [0x80000464]:sw a7, 436(a5)<br>    |
|  29|[0x800023d4]<br>0x0000000000000001|- rs1 : f22<br> - rd : f31<br>                                                                                                                   |[0x80000470]:fsqrt.s ft11, fs6, dyn<br> [0x80000474]:csrrs a7, fflags, zero<br> [0x80000478]:fsw ft11, 448(a5)<br> [0x8000047c]:sw a7, 452(a5)<br>  |
|  30|[0x800023e4]<br>0x0000000000000001|- rs1 : f23<br> - rd : f3<br>                                                                                                                    |[0x80000488]:fsqrt.s ft3, fs7, dyn<br> [0x8000048c]:csrrs a7, fflags, zero<br> [0x80000490]:fsw ft3, 464(a5)<br> [0x80000494]:sw a7, 468(a5)<br>    |
|  31|[0x800023f4]<br>0x0000000000000001|- rs1 : f26<br> - rd : f14<br>                                                                                                                   |[0x800004a0]:fsqrt.s fa4, fs10, dyn<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:fsw fa4, 480(a5)<br> [0x800004ac]:sw a7, 484(a5)<br>   |
|  32|[0x80002404]<br>0x0000000000000001|- rs1 : f1<br>                                                                                                                                   |[0x800004b8]:fsqrt.s ft0, ft1, dyn<br> [0x800004bc]:csrrs a7, fflags, zero<br> [0x800004c0]:fsw ft0, 496(a5)<br> [0x800004c4]:sw a7, 500(a5)<br>    |
|  33|[0x80002414]<br>0x0000000000000001|- rd : f1<br>                                                                                                                                    |[0x800004d0]:fsqrt.s ft1, ft8, dyn<br> [0x800004d4]:csrrs a7, fflags, zero<br> [0x800004d8]:fsw ft1, 512(a5)<br> [0x800004dc]:sw a7, 516(a5)<br>    |
