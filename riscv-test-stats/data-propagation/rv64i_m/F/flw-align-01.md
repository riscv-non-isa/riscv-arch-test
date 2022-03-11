
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x80000600')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | flw-align      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/flw/riscof_work/flw-align-01.S/ref.S    |
| Total Number of coverpoints| 75     |
| Total Coverpoints Hit     | 71      |
| Total Signature Updates   | 41      |
| STAT1                     | 32      |
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

|s.no|            signature             |                                                  coverpoints                                                  |                                                                                                         code                                                                                                          |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002214]<br>0x0000000000000000|- opcode : flw<br> - rs1 : x26<br> - rd : f25<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val < 0<br> |[0x800001c8]:flw fs9, 3072(s10)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br> [0x800001d4]:csrrs a7, fflags, zero<br> [0x800001d8]:fsw fs9, 0(a5)<br> [0x800001dc]:sw a7, 4(a5)<br>      |
|   2|[0x80002224]<br>0x0000000000000000|- rs1 : x15<br> - rd : f15<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val > 0<br>                    |[0x800001f0]:flw fa5, 1(a5)<br> [0x800001f4]:addi zero, zero, 0<br> [0x800001f8]:addi zero, zero, 0<br> [0x800001fc]:csrrs s5, fflags, zero<br> [0x80000200]:fsw fa5, 0(s3)<br> [0x80000204]:sw s5, 4(s3)<br>          |
|   3|[0x80002234]<br>0x0000000000000000|- rs1 : x21<br> - rd : f9<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                       |[0x80000218]:flw fs1, 2(s5)<br> [0x8000021c]:addi zero, zero, 0<br> [0x80000220]:addi zero, zero, 0<br> [0x80000224]:csrrs a7, fflags, zero<br> [0x80000228]:fsw fs1, 0(a5)<br> [0x8000022c]:sw a7, 4(a5)<br>          |
|   4|[0x80002244]<br>0x0000000000000000|- rs1 : x13<br> - rd : f28<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                      |[0x80000238]:flw ft8, 4031(a3)<br> [0x8000023c]:addi zero, zero, 0<br> [0x80000240]:addi zero, zero, 0<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:fsw ft8, 16(a5)<br> [0x8000024c]:sw a7, 20(a5)<br>     |
|   5|[0x80002254]<br>0x0000000000000000|- rs1 : x28<br> - rd : f19<br> - imm_val == 0<br>                                                              |[0x80000258]:flw fs3, 0(t3)<br> [0x8000025c]:addi zero, zero, 0<br> [0x80000260]:addi zero, zero, 0<br> [0x80000264]:csrrs a7, fflags, zero<br> [0x80000268]:fsw fs3, 32(a5)<br> [0x8000026c]:sw a7, 36(a5)<br>        |
|   6|[0x80002264]<br>0x0000000000000000|- rs1 : x4<br> - rd : f1<br>                                                                                   |[0x80000278]:flw ft1, 2048(tp)<br> [0x8000027c]:addi zero, zero, 0<br> [0x80000280]:addi zero, zero, 0<br> [0x80000284]:csrrs a7, fflags, zero<br> [0x80000288]:fsw ft1, 48(a5)<br> [0x8000028c]:sw a7, 52(a5)<br>     |
|   7|[0x80002274]<br>0x0000000000000000|- rs1 : x22<br> - rd : f8<br>                                                                                  |[0x80000298]:flw fs0, 2048(s6)<br> [0x8000029c]:addi zero, zero, 0<br> [0x800002a0]:addi zero, zero, 0<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:fsw fs0, 64(a5)<br> [0x800002ac]:sw a7, 68(a5)<br>     |
|   8|[0x80002284]<br>0x0000000000000000|- rs1 : x11<br> - rd : f21<br>                                                                                 |[0x800002b8]:flw fs5, 2048(a1)<br> [0x800002bc]:addi zero, zero, 0<br> [0x800002c0]:addi zero, zero, 0<br> [0x800002c4]:csrrs a7, fflags, zero<br> [0x800002c8]:fsw fs5, 80(a5)<br> [0x800002cc]:sw a7, 84(a5)<br>     |
|   9|[0x80002294]<br>0x0000000000000000|- rs1 : x25<br> - rd : f2<br>                                                                                  |[0x800002d8]:flw ft2, 2048(s9)<br> [0x800002dc]:addi zero, zero, 0<br> [0x800002e0]:addi zero, zero, 0<br> [0x800002e4]:csrrs a7, fflags, zero<br> [0x800002e8]:fsw ft2, 96(a5)<br> [0x800002ec]:sw a7, 100(a5)<br>    |
|  10|[0x800022a4]<br>0x0000000000000000|- rs1 : x3<br> - rd : f4<br>                                                                                   |[0x800002f8]:flw ft4, 2048(gp)<br> [0x800002fc]:addi zero, zero, 0<br> [0x80000300]:addi zero, zero, 0<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw ft4, 112(a5)<br> [0x8000030c]:sw a7, 116(a5)<br>   |
|  11|[0x800022b4]<br>0x0000000000000000|- rs1 : x29<br> - rd : f24<br>                                                                                 |[0x80000318]:flw fs8, 2048(t4)<br> [0x8000031c]:addi zero, zero, 0<br> [0x80000320]:addi zero, zero, 0<br> [0x80000324]:csrrs a7, fflags, zero<br> [0x80000328]:fsw fs8, 128(a5)<br> [0x8000032c]:sw a7, 132(a5)<br>   |
|  12|[0x800022c4]<br>0x0000000000000000|- rs1 : x30<br> - rd : f30<br>                                                                                 |[0x80000338]:flw ft10, 2048(t5)<br> [0x8000033c]:addi zero, zero, 0<br> [0x80000340]:addi zero, zero, 0<br> [0x80000344]:csrrs a7, fflags, zero<br> [0x80000348]:fsw ft10, 144(a5)<br> [0x8000034c]:sw a7, 148(a5)<br> |
|  13|[0x800022d4]<br>0x0000000000000000|- rs1 : x27<br> - rd : f12<br>                                                                                 |[0x80000358]:flw fa2, 2048(s11)<br> [0x8000035c]:addi zero, zero, 0<br> [0x80000360]:addi zero, zero, 0<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:fsw fa2, 160(a5)<br> [0x8000036c]:sw a7, 164(a5)<br>  |
|  14|[0x800022e4]<br>0x0000000000000000|- rs1 : x2<br> - rd : f17<br>                                                                                  |[0x80000378]:flw fa7, 2048(sp)<br> [0x8000037c]:addi zero, zero, 0<br> [0x80000380]:addi zero, zero, 0<br> [0x80000384]:csrrs a7, fflags, zero<br> [0x80000388]:fsw fa7, 176(a5)<br> [0x8000038c]:sw a7, 180(a5)<br>   |
|  15|[0x800022f4]<br>0x0000000000000000|- rs1 : x8<br> - rd : f0<br>                                                                                   |[0x80000398]:flw ft0, 2048(fp)<br> [0x8000039c]:addi zero, zero, 0<br> [0x800003a0]:addi zero, zero, 0<br> [0x800003a4]:csrrs a7, fflags, zero<br> [0x800003a8]:fsw ft0, 192(a5)<br> [0x800003ac]:sw a7, 196(a5)<br>   |
|  16|[0x80002304]<br>0x0000000000000000|- rs1 : x31<br> - rd : f29<br>                                                                                 |[0x800003b8]:flw ft9, 2048(t6)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addi zero, zero, 0<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsw ft9, 208(a5)<br> [0x800003cc]:sw a7, 212(a5)<br>   |
|  17|[0x80002314]<br>0x0000000000000000|- rs1 : x14<br> - rd : f22<br>                                                                                 |[0x800003d8]:flw fs6, 2048(a4)<br> [0x800003dc]:addi zero, zero, 0<br> [0x800003e0]:addi zero, zero, 0<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsw fs6, 224(a5)<br> [0x800003ec]:sw a7, 228(a5)<br>   |
|  18|[0x80002324]<br>0x0000000000000000|- rs1 : x12<br> - rd : f26<br>                                                                                 |[0x800003f8]:flw fs10, 2048(a2)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi zero, zero, 0<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsw fs10, 240(a5)<br> [0x8000040c]:sw a7, 244(a5)<br> |
|  19|[0x80002334]<br>0x0000000000000000|- rs1 : x7<br> - rd : f23<br>                                                                                  |[0x80000418]:flw fs7, 2048(t2)<br> [0x8000041c]:addi zero, zero, 0<br> [0x80000420]:addi zero, zero, 0<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsw fs7, 256(a5)<br> [0x8000042c]:sw a7, 260(a5)<br>   |
|  20|[0x80002344]<br>0x0000000000000000|- rs1 : x16<br> - rd : f3<br>                                                                                  |[0x80000440]:flw ft3, 2048(a6)<br> [0x80000444]:addi zero, zero, 0<br> [0x80000448]:addi zero, zero, 0<br> [0x8000044c]:csrrs s5, fflags, zero<br> [0x80000450]:fsw ft3, 0(s3)<br> [0x80000454]:sw s5, 4(s3)<br>       |
|  21|[0x80002354]<br>0x0000000000000000|- rs1 : x24<br> - rd : f27<br>                                                                                 |[0x80000468]:flw fs11, 2048(s8)<br> [0x8000046c]:addi zero, zero, 0<br> [0x80000470]:addi zero, zero, 0<br> [0x80000474]:csrrs a7, fflags, zero<br> [0x80000478]:fsw fs11, 0(a5)<br> [0x8000047c]:sw a7, 4(a5)<br>     |
|  22|[0x80002364]<br>0x0000000000000000|- rs1 : x6<br> - rd : f5<br>                                                                                   |[0x80000488]:flw ft5, 2048(t1)<br> [0x8000048c]:addi zero, zero, 0<br> [0x80000490]:addi zero, zero, 0<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:fsw ft5, 16(a5)<br> [0x8000049c]:sw a7, 20(a5)<br>     |
|  23|[0x80002374]<br>0x0000000000000000|- rs1 : x19<br> - rd : f20<br>                                                                                 |[0x800004a8]:flw fs4, 2048(s3)<br> [0x800004ac]:addi zero, zero, 0<br> [0x800004b0]:addi zero, zero, 0<br> [0x800004b4]:csrrs a7, fflags, zero<br> [0x800004b8]:fsw fs4, 32(a5)<br> [0x800004bc]:sw a7, 36(a5)<br>     |
|  24|[0x80002384]<br>0x0000000000000000|- rs1 : x17<br> - rd : f18<br>                                                                                 |[0x800004d0]:flw fs2, 2048(a7)<br> [0x800004d4]:addi zero, zero, 0<br> [0x800004d8]:addi zero, zero, 0<br> [0x800004dc]:csrrs s5, fflags, zero<br> [0x800004e0]:fsw fs2, 0(s3)<br> [0x800004e4]:sw s5, 4(s3)<br>       |
|  25|[0x80002394]<br>0x0000000000000000|- rs1 : x5<br> - rd : f7<br>                                                                                   |[0x800004f8]:flw ft7, 2048(t0)<br> [0x800004fc]:addi zero, zero, 0<br> [0x80000500]:addi zero, zero, 0<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsw ft7, 0(a5)<br> [0x8000050c]:sw a7, 4(a5)<br>       |
|  26|[0x800023a4]<br>0x0000000000000000|- rs1 : x9<br> - rd : f16<br>                                                                                  |[0x80000518]:flw fa6, 2048(s1)<br> [0x8000051c]:addi zero, zero, 0<br> [0x80000520]:addi zero, zero, 0<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsw fa6, 16(a5)<br> [0x8000052c]:sw a7, 20(a5)<br>     |
|  27|[0x800023b4]<br>0x0000000000000000|- rs1 : x10<br> - rd : f31<br>                                                                                 |[0x80000538]:flw ft11, 2048(a0)<br> [0x8000053c]:addi zero, zero, 0<br> [0x80000540]:addi zero, zero, 0<br> [0x80000544]:csrrs a7, fflags, zero<br> [0x80000548]:fsw ft11, 32(a5)<br> [0x8000054c]:sw a7, 36(a5)<br>   |
|  28|[0x800023c4]<br>0x0000000000000000|- rs1 : x18<br> - rd : f10<br>                                                                                 |[0x80000558]:flw fa0, 2048(s2)<br> [0x8000055c]:addi zero, zero, 0<br> [0x80000560]:addi zero, zero, 0<br> [0x80000564]:csrrs a7, fflags, zero<br> [0x80000568]:fsw fa0, 48(a5)<br> [0x8000056c]:sw a7, 52(a5)<br>     |
|  29|[0x800023d4]<br>0x0000000000000000|- rs1 : x20<br> - rd : f6<br>                                                                                  |[0x80000578]:flw ft6, 2048(s4)<br> [0x8000057c]:addi zero, zero, 0<br> [0x80000580]:addi zero, zero, 0<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsw ft6, 64(a5)<br> [0x8000058c]:sw a7, 68(a5)<br>     |
|  30|[0x800023e4]<br>0x0000000000000000|- rs1 : x1<br> - rd : f11<br>                                                                                  |[0x80000598]:flw fa1, 2048(ra)<br> [0x8000059c]:addi zero, zero, 0<br> [0x800005a0]:addi zero, zero, 0<br> [0x800005a4]:csrrs a7, fflags, zero<br> [0x800005a8]:fsw fa1, 80(a5)<br> [0x800005ac]:sw a7, 84(a5)<br>     |
|  31|[0x800023f4]<br>0x0000000000000000|- rs1 : x23<br> - rd : f14<br>                                                                                 |[0x800005b8]:flw fa4, 2048(s7)<br> [0x800005bc]:addi zero, zero, 0<br> [0x800005c0]:addi zero, zero, 0<br> [0x800005c4]:csrrs a7, fflags, zero<br> [0x800005c8]:fsw fa4, 96(a5)<br> [0x800005cc]:sw a7, 100(a5)<br>    |
|  32|[0x80002404]<br>0x0000000000000000|- rd : f13<br>                                                                                                 |[0x800005e0]:flw fa3, 2048(a6)<br> [0x800005e4]:addi zero, zero, 0<br> [0x800005e8]:addi zero, zero, 0<br> [0x800005ec]:csrrs s5, fflags, zero<br> [0x800005f0]:fsw fa3, 0(s3)<br> [0x800005f4]:sw s5, 4(s3)<br>       |
