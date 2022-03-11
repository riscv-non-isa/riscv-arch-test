
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800001a8', '0x80000700')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | fsw-align      |
| TEST_NAME                 | /home/riscv/Documents/FloatingResults/ArchTests/fsw/riscof_work/fsw-align-01.S/ref.S    |
| Total Number of coverpoints| 75     |
| Total Coverpoints Hit     | 71      |
| Total Signature Updates   | 71      |
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

|s.no|            signature             |                                                  coverpoints                                                   |                                                                                        code                                                                                        |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : fsw<br> - rs1 : x21<br> - rs2 : f30<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x800001d4]:fsw ft10, 1024(s5)<br> [0x800001d8]:addi zero, zero, 0<br> [0x800001dc]:addi zero, zero, 0<br> [0x800001e0]:csrrs a7, fflags, zero<br> [0x800001e4]:sw a7, 0(a5)<br>   |
|   2|[0x80002220]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : f26<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                      |[0x80000200]:fsw fs10, 1365(s11)<br> [0x80000204]:addi zero, zero, 0<br> [0x80000208]:addi zero, zero, 0<br> [0x8000020c]:csrrs a7, fflags, zero<br> [0x80000210]:sw a7, 16(a5)<br> |
|   3|[0x80002230]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : f6<br> - ea_align == 0 and (imm_val % 4) == 2<br> - imm_val < 0<br>                      |[0x80000228]:fsw ft6, 4090(fp)<br> [0x8000022c]:addi zero, zero, 0<br> [0x80000230]:addi zero, zero, 0<br> [0x80000234]:csrrs a7, fflags, zero<br> [0x80000238]:sw a7, 32(a5)<br>   |
|   4|[0x80002240]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : f12<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                      |[0x80000250]:fsw fa2, 3839(t4)<br> [0x80000254]:addi zero, zero, 0<br> [0x80000258]:addi zero, zero, 0<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sw a7, 48(a5)<br>   |
|   5|[0x80002250]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : f2<br> - imm_val == 0<br>                                                               |[0x8000027c]:fsw ft2, 0(s4)<br> [0x80000280]:addi zero, zero, 0<br> [0x80000284]:addi zero, zero, 0<br> [0x80000288]:csrrs a7, fflags, zero<br> [0x8000028c]:sw a7, 64(a5)<br>      |
|   6|[0x80002260]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : f31<br>                                                                                 |[0x800002a4]:fsw ft11, 2048(a3)<br> [0x800002a8]:addi zero, zero, 0<br> [0x800002ac]:addi zero, zero, 0<br> [0x800002b0]:csrrs a7, fflags, zero<br> [0x800002b4]:sw a7, 80(a5)<br>  |
|   7|[0x80002270]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : f17<br>                                                                                 |[0x800002d4]:fsw fa7, 2048(a6)<br> [0x800002d8]:addi zero, zero, 0<br> [0x800002dc]:addi zero, zero, 0<br> [0x800002e0]:csrrs s5, fflags, zero<br> [0x800002e4]:sw s5, 0(s3)<br>    |
|   8|[0x80002280]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : f7<br>                                                                                   |[0x80000304]:fsw ft7, 2048(ra)<br> [0x80000308]:addi zero, zero, 0<br> [0x8000030c]:addi zero, zero, 0<br> [0x80000310]:csrrs a7, fflags, zero<br> [0x80000314]:sw a7, 0(a5)<br>    |
|   9|[0x80002290]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : f19<br>                                                                                  |[0x8000032c]:fsw fs3, 2048(s1)<br> [0x80000330]:addi zero, zero, 0<br> [0x80000334]:addi zero, zero, 0<br> [0x80000338]:csrrs a7, fflags, zero<br> [0x8000033c]:sw a7, 16(a5)<br>   |
|  10|[0x800022a0]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : f11<br>                                                                                 |[0x80000354]:fsw fa1, 2048(t5)<br> [0x80000358]:addi zero, zero, 0<br> [0x8000035c]:addi zero, zero, 0<br> [0x80000360]:csrrs a7, fflags, zero<br> [0x80000364]:sw a7, 32(a5)<br>   |
|  11|[0x800022b0]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : f16<br>                                                                                 |[0x8000037c]:fsw fa6, 2048(s8)<br> [0x80000380]:addi zero, zero, 0<br> [0x80000384]:addi zero, zero, 0<br> [0x80000388]:csrrs a7, fflags, zero<br> [0x8000038c]:sw a7, 48(a5)<br>   |
|  12|[0x800022c0]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : f21<br>                                                                                  |[0x800003a4]:fsw fs5, 2048(tp)<br> [0x800003a8]:addi zero, zero, 0<br> [0x800003ac]:addi zero, zero, 0<br> [0x800003b0]:csrrs a7, fflags, zero<br> [0x800003b4]:sw a7, 64(a5)<br>   |
|  13|[0x800022d0]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : f18<br>                                                                                  |[0x800003cc]:fsw fs2, 2048(t0)<br> [0x800003d0]:addi zero, zero, 0<br> [0x800003d4]:addi zero, zero, 0<br> [0x800003d8]:csrrs a7, fflags, zero<br> [0x800003dc]:sw a7, 80(a5)<br>   |
|  14|[0x800022e0]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : f25<br>                                                                                 |[0x800003f4]:fsw fs9, 2048(s3)<br> [0x800003f8]:addi zero, zero, 0<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:csrrs a7, fflags, zero<br> [0x80000404]:sw a7, 96(a5)<br>   |
|  15|[0x800022f0]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : f3<br>                                                                                  |[0x8000041c]:fsw ft3, 2048(s7)<br> [0x80000420]:addi zero, zero, 0<br> [0x80000424]:addi zero, zero, 0<br> [0x80000428]:csrrs a7, fflags, zero<br> [0x8000042c]:sw a7, 112(a5)<br>  |
|  16|[0x80002300]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : f10<br>                                                                                 |[0x80000444]:fsw fa0, 2048(t6)<br> [0x80000448]:addi zero, zero, 0<br> [0x8000044c]:addi zero, zero, 0<br> [0x80000450]:csrrs a7, fflags, zero<br> [0x80000454]:sw a7, 128(a5)<br>  |
|  17|[0x80002310]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : f22<br>                                                                                 |[0x8000046c]:fsw fs6, 2048(s9)<br> [0x80000470]:addi zero, zero, 0<br> [0x80000474]:addi zero, zero, 0<br> [0x80000478]:csrrs a7, fflags, zero<br> [0x8000047c]:sw a7, 144(a5)<br>  |
|  18|[0x80002320]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : f9<br>                                                                                   |[0x80000494]:fsw fs1, 2048(sp)<br> [0x80000498]:addi zero, zero, 0<br> [0x8000049c]:addi zero, zero, 0<br> [0x800004a0]:csrrs a7, fflags, zero<br> [0x800004a4]:sw a7, 160(a5)<br>  |
|  19|[0x80002330]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : f5<br>                                                                                  |[0x800004bc]:fsw ft5, 2048(s2)<br> [0x800004c0]:addi zero, zero, 0<br> [0x800004c4]:addi zero, zero, 0<br> [0x800004c8]:csrrs a7, fflags, zero<br> [0x800004cc]:sw a7, 176(a5)<br>  |
|  20|[0x80002340]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : f29<br>                                                                                 |[0x800004e4]:fsw ft9, 2048(a2)<br> [0x800004e8]:addi zero, zero, 0<br> [0x800004ec]:addi zero, zero, 0<br> [0x800004f0]:csrrs a7, fflags, zero<br> [0x800004f4]:sw a7, 192(a5)<br>  |
|  21|[0x80002350]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : f15<br>                                                                                 |[0x8000050c]:fsw fa5, 2048(a1)<br> [0x80000510]:addi zero, zero, 0<br> [0x80000514]:addi zero, zero, 0<br> [0x80000518]:csrrs a7, fflags, zero<br> [0x8000051c]:sw a7, 208(a5)<br>  |
|  22|[0x80002360]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : f23<br>                                                                                 |[0x80000534]:fsw fs7, 2048(s6)<br> [0x80000538]:addi zero, zero, 0<br> [0x8000053c]:addi zero, zero, 0<br> [0x80000540]:csrrs a7, fflags, zero<br> [0x80000544]:sw a7, 224(a5)<br>  |
|  23|[0x80002370]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : f8<br>                                                                                   |[0x8000055c]:fsw fs0, 2048(t2)<br> [0x80000560]:addi zero, zero, 0<br> [0x80000564]:addi zero, zero, 0<br> [0x80000568]:csrrs a7, fflags, zero<br> [0x8000056c]:sw a7, 240(a5)<br>  |
|  24|[0x80002380]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : f27<br>                                                                                 |[0x8000058c]:fsw fs11, 2048(a7)<br> [0x80000590]:addi zero, zero, 0<br> [0x80000594]:addi zero, zero, 0<br> [0x80000598]:csrrs s5, fflags, zero<br> [0x8000059c]:sw s5, 0(s3)<br>   |
|  25|[0x80002390]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : f28<br>                                                                                 |[0x800005bc]:fsw ft8, 2048(a0)<br> [0x800005c0]:addi zero, zero, 0<br> [0x800005c4]:addi zero, zero, 0<br> [0x800005c8]:csrrs a7, fflags, zero<br> [0x800005cc]:sw a7, 0(a5)<br>    |
|  26|[0x800023a0]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : f0<br>                                                                                  |[0x800005e4]:fsw ft0, 2048(s10)<br> [0x800005e8]:addi zero, zero, 0<br> [0x800005ec]:addi zero, zero, 0<br> [0x800005f0]:csrrs a7, fflags, zero<br> [0x800005f4]:sw a7, 16(a5)<br>  |
|  27|[0x800023b0]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : f14<br>                                                                                 |[0x8000060c]:fsw fa4, 2048(t3)<br> [0x80000610]:addi zero, zero, 0<br> [0x80000614]:addi zero, zero, 0<br> [0x80000618]:csrrs a7, fflags, zero<br> [0x8000061c]:sw a7, 32(a5)<br>   |
|  28|[0x800023c0]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : f20<br>                                                                                 |[0x8000063c]:fsw fs4, 2048(a5)<br> [0x80000640]:addi zero, zero, 0<br> [0x80000644]:addi zero, zero, 0<br> [0x80000648]:csrrs s5, fflags, zero<br> [0x8000064c]:sw s5, 0(s3)<br>    |
|  29|[0x800023d0]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : f24<br>                                                                                  |[0x8000066c]:fsw fs8, 2048(gp)<br> [0x80000670]:addi zero, zero, 0<br> [0x80000674]:addi zero, zero, 0<br> [0x80000678]:csrrs a7, fflags, zero<br> [0x8000067c]:sw a7, 0(a5)<br>    |
|  30|[0x800023e0]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : f13<br>                                                                                  |[0x80000694]:fsw fa3, 2048(t1)<br> [0x80000698]:addi zero, zero, 0<br> [0x8000069c]:addi zero, zero, 0<br> [0x800006a0]:csrrs a7, fflags, zero<br> [0x800006a4]:sw a7, 16(a5)<br>   |
|  31|[0x800023f0]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : f1<br>                                                                                  |[0x800006bc]:fsw ft1, 2048(a4)<br> [0x800006c0]:addi zero, zero, 0<br> [0x800006c4]:addi zero, zero, 0<br> [0x800006c8]:csrrs a7, fflags, zero<br> [0x800006cc]:sw a7, 32(a5)<br>   |
|  32|[0x80002400]<br>0x0000000000000000|- rs2 : f4<br>                                                                                                  |[0x800006e4]:fsw ft4, 2048(s1)<br> [0x800006e8]:addi zero, zero, 0<br> [0x800006ec]:addi zero, zero, 0<br> [0x800006f0]:csrrs a7, fflags, zero<br> [0x800006f4]:sw a7, 48(a5)<br>   |
