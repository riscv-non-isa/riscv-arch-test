
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000830')]      |
| SIG_REGION                | [('0x80002010', '0x80002110', '32 dwords')]      |
| COV_LABELS                | cjr      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cjr-01.S/cjr-01.S    |
| Total Number of coverpoints| 32     |
| Total Coverpoints Hit     | 32      |
| Total Signature Updates   | 31      |
| STAT1                     | 31      |
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

|s.no|            signature             |            coverpoints             |                                                                                                             code                                                                                                             |
|---:|----------------------------------|------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000000000000013|- opcode : c.jr<br> - rs1 : x17<br> |[0x800003a0]:c.jr a7<br> [0x800003a8]:xori a7, a7, 3<br> [0x800003ac]:auipc a4, 0<br> [0x800003b0]:addi a4, a4, 4076<br> [0x800003b4]:c.andi a4, 60<br> [0x800003b6]:sub a7, a7, a4<br> [0x800003ba]:sd a7, 0(fp)<br>         |
|   2|[0x80002018]<br>0x0000000000000011|- rs1 : x27<br>                     |[0x800003c6]:c.jr s11<br> [0x800003ce]:xori s11, s11, 3<br> [0x800003d2]:auipc a4, 0<br> [0x800003d6]:addi a4, a4, 4076<br> [0x800003da]:c.andi a4, 60<br> [0x800003dc]:sub s11, s11, a4<br> [0x800003e0]:sd s11, 8(fp)<br>   |
|   3|[0x80002020]<br>0x0000000000000013|- rs1 : x3<br>                      |[0x800003ec]:c.jr gp<br> [0x800003f4]:xori gp, gp, 3<br> [0x800003f8]:auipc a4, 0<br> [0x800003fc]:addi a4, a4, 4076<br> [0x80000400]:c.andi a4, 60<br> [0x80000402]:sub gp, gp, a4<br> [0x80000406]:sd gp, 16(fp)<br>        |
|   4|[0x80002028]<br>0x0000000000000011|- rs1 : x13<br>                     |[0x80000412]:c.jr a3<br> [0x8000041a]:xori a3, a3, 3<br> [0x8000041e]:auipc a4, 0<br> [0x80000422]:addi a4, a4, 4076<br> [0x80000426]:c.andi a4, 60<br> [0x80000428]:c.sub a3, a4<br> [0x8000042a]:c.sd s0, a3, 24<br>        |
|   5|[0x80002030]<br>0x0000000000000013|- rs1 : x31<br>                     |[0x80000434]:c.jr t6<br> [0x8000043c]:xori t6, t6, 3<br> [0x80000440]:auipc a4, 0<br> [0x80000444]:addi a4, a4, 4076<br> [0x80000448]:c.andi a4, 60<br> [0x8000044a]:sub t6, t6, a4<br> [0x8000044e]:sd t6, 32(fp)<br>        |
|   6|[0x80002038]<br>0x0000000000000011|- rs1 : x11<br>                     |[0x8000045a]:c.jr a1<br> [0x80000462]:xori a1, a1, 3<br> [0x80000466]:auipc a4, 0<br> [0x8000046a]:addi a4, a4, 4076<br> [0x8000046e]:c.andi a4, 60<br> [0x80000470]:c.sub a1, a4<br> [0x80000472]:c.sd s0, a1, 40<br>        |
|   7|[0x80002040]<br>0x0000000000000013|- rs1 : x1<br>                      |[0x8000047c]:c.jr ra<br> [0x80000484]:xori ra, ra, 3<br> [0x80000488]:auipc a4, 0<br> [0x8000048c]:addi a4, a4, 4076<br> [0x80000490]:c.andi a4, 60<br> [0x80000492]:sub ra, ra, a4<br> [0x80000496]:sd ra, 48(fp)<br>        |
|   8|[0x80002048]<br>0x0000000000000011|- rs1 : x22<br>                     |[0x800004a2]:c.jr s6<br> [0x800004aa]:xori s6, s6, 3<br> [0x800004ae]:auipc a4, 0<br> [0x800004b2]:addi a4, a4, 4076<br> [0x800004b6]:c.andi a4, 60<br> [0x800004b8]:sub s6, s6, a4<br> [0x800004bc]:sd s6, 56(fp)<br>        |
|   9|[0x80002050]<br>0x0000000000000013|- rs1 : x9<br>                      |[0x800004c8]:c.jr s1<br> [0x800004d0]:xori s1, s1, 3<br> [0x800004d4]:auipc a4, 0<br> [0x800004d8]:addi a4, a4, 4076<br> [0x800004dc]:c.andi a4, 60<br> [0x800004de]:c.sub s1, a4<br> [0x800004e0]:c.sd s0, s1, 64<br>        |
|  10|[0x80002058]<br>0x0000000000000011|- rs1 : x29<br>                     |[0x800004ea]:c.jr t4<br> [0x800004f2]:xori t4, t4, 3<br> [0x800004f6]:auipc a4, 0<br> [0x800004fa]:addi a4, a4, 4076<br> [0x800004fe]:c.andi a4, 60<br> [0x80000500]:sub t4, t4, a4<br> [0x80000504]:sd t4, 72(fp)<br>        |
|  11|[0x80002060]<br>0x0000000000000013|- rs1 : x25<br>                     |[0x80000510]:c.jr s9<br> [0x80000518]:xori s9, s9, 3<br> [0x8000051c]:auipc a4, 0<br> [0x80000520]:addi a4, a4, 4076<br> [0x80000524]:c.andi a4, 60<br> [0x80000526]:sub s9, s9, a4<br> [0x8000052a]:sd s9, 80(fp)<br>        |
|  12|[0x80002068]<br>0x0000000000000011|- rs1 : x6<br>                      |[0x80000536]:c.jr t1<br> [0x8000053e]:xori t1, t1, 3<br> [0x80000542]:auipc a4, 0<br> [0x80000546]:addi a4, a4, 4076<br> [0x8000054a]:c.andi a4, 60<br> [0x8000054c]:sub t1, t1, a4<br> [0x80000550]:sd t1, 88(fp)<br>        |
|  13|[0x80002070]<br>0x0000000000000013|- rs1 : x30<br>                     |[0x8000055c]:c.jr t5<br> [0x80000564]:xori t5, t5, 3<br> [0x80000568]:auipc a4, 0<br> [0x8000056c]:addi a4, a4, 4076<br> [0x80000570]:c.andi a4, 60<br> [0x80000572]:sub t5, t5, a4<br> [0x80000576]:sd t5, 96(fp)<br>        |
|  14|[0x80002078]<br>0x0000000000000011|- rs1 : x28<br>                     |[0x80000582]:c.jr t3<br> [0x8000058a]:xori t3, t3, 3<br> [0x8000058e]:auipc a4, 0<br> [0x80000592]:addi a4, a4, 4076<br> [0x80000596]:c.andi a4, 60<br> [0x80000598]:sub t3, t3, a4<br> [0x8000059c]:sd t3, 104(fp)<br>       |
|  15|[0x80002080]<br>0x0000000000000013|- rs1 : x12<br>                     |[0x800005a8]:c.jr a2<br> [0x800005b0]:xori a2, a2, 3<br> [0x800005b4]:auipc a4, 0<br> [0x800005b8]:addi a4, a4, 4076<br> [0x800005bc]:c.andi a4, 60<br> [0x800005be]:c.sub a2, a4<br> [0x800005c0]:c.sd s0, a2, 112<br>       |
|  16|[0x80002088]<br>0x0000000000000011|- rs1 : x19<br>                     |[0x800005ca]:c.jr s3<br> [0x800005d2]:xori s3, s3, 3<br> [0x800005d6]:auipc a4, 0<br> [0x800005da]:addi a4, a4, 4076<br> [0x800005de]:c.andi a4, 60<br> [0x800005e0]:sub s3, s3, a4<br> [0x800005e4]:sd s3, 120(fp)<br>       |
|  17|[0x80002090]<br>0x0000000000000013|- rs1 : x2<br>                      |[0x800005f0]:c.jr sp<br> [0x800005f8]:xori sp, sp, 3<br> [0x800005fc]:auipc a4, 0<br> [0x80000600]:addi a4, a4, 4076<br> [0x80000604]:c.andi a4, 60<br> [0x80000606]:sub sp, sp, a4<br> [0x8000060a]:sd sp, 128(fp)<br>       |
|  18|[0x80002098]<br>0x0000000000000011|- rs1 : x23<br>                     |[0x80000616]:c.jr s7<br> [0x8000061e]:xori s7, s7, 3<br> [0x80000622]:auipc a4, 0<br> [0x80000626]:addi a4, a4, 4076<br> [0x8000062a]:c.andi a4, 60<br> [0x8000062c]:sub s7, s7, a4<br> [0x80000630]:sd s7, 136(fp)<br>       |
|  19|[0x800020a0]<br>0x0000000000000013|- rs1 : x16<br>                     |[0x8000063c]:c.jr a6<br> [0x80000644]:xori a6, a6, 3<br> [0x80000648]:auipc a4, 0<br> [0x8000064c]:addi a4, a4, 4076<br> [0x80000650]:c.andi a4, 60<br> [0x80000652]:sub a6, a6, a4<br> [0x80000656]:sd a6, 144(fp)<br>       |
|  20|[0x800020a8]<br>0x0000000000000011|- rs1 : x18<br>                     |[0x80000662]:c.jr s2<br> [0x8000066a]:xori s2, s2, 3<br> [0x8000066e]:auipc a4, 0<br> [0x80000672]:addi a4, a4, 4076<br> [0x80000676]:c.andi a4, 60<br> [0x80000678]:sub s2, s2, a4<br> [0x8000067c]:sd s2, 152(fp)<br>       |
|  21|[0x800020b0]<br>0x0000000000000013|- rs1 : x7<br>                      |[0x80000688]:c.jr t2<br> [0x80000690]:xori t2, t2, 3<br> [0x80000694]:auipc a4, 0<br> [0x80000698]:addi a4, a4, 4076<br> [0x8000069c]:c.andi a4, 60<br> [0x8000069e]:sub t2, t2, a4<br> [0x800006a2]:sd t2, 160(fp)<br>       |
|  22|[0x800020b8]<br>0x0000000000000011|- rs1 : x20<br>                     |[0x800006ae]:c.jr s4<br> [0x800006b6]:xori s4, s4, 3<br> [0x800006ba]:auipc a4, 0<br> [0x800006be]:addi a4, a4, 4076<br> [0x800006c2]:c.andi a4, 60<br> [0x800006c4]:sub s4, s4, a4<br> [0x800006c8]:sd s4, 168(fp)<br>       |
|  23|[0x800020c0]<br>0x0000000000000013|- rs1 : x4<br>                      |[0x800006d4]:c.jr tp<br> [0x800006dc]:xori tp, tp, 3<br> [0x800006e0]:auipc a4, 0<br> [0x800006e4]:addi a4, a4, 4076<br> [0x800006e8]:c.andi a4, 60<br> [0x800006ea]:sub tp, tp, a4<br> [0x800006ee]:sd tp, 176(fp)<br>       |
|  24|[0x800020c8]<br>0x0000000000000011|- rs1 : x15<br>                     |[0x800006fa]:c.jr a5<br> [0x80000702]:xori a5, a5, 3<br> [0x80000706]:auipc a4, 0<br> [0x8000070a]:addi a4, a4, 4076<br> [0x8000070e]:c.andi a4, 60<br> [0x80000710]:c.sub a5, a4<br> [0x80000712]:c.sd s0, a5, 184<br>       |
|  25|[0x800020d0]<br>0x0000000000000013|- rs1 : x26<br>                     |[0x8000071c]:c.jr s10<br> [0x80000724]:xori s10, s10, 3<br> [0x80000728]:auipc a4, 0<br> [0x8000072c]:addi a4, a4, 4076<br> [0x80000730]:c.andi a4, 60<br> [0x80000732]:sub s10, s10, a4<br> [0x80000736]:sd s10, 192(fp)<br> |
|  26|[0x800020d8]<br>0x0000000000000011|- rs1 : x5<br>                      |[0x80000742]:c.jr t0<br> [0x8000074a]:xori t0, t0, 3<br> [0x8000074e]:auipc a4, 0<br> [0x80000752]:addi a4, a4, 4076<br> [0x80000756]:c.andi a4, 60<br> [0x80000758]:sub t0, t0, a4<br> [0x8000075c]:sd t0, 200(fp)<br>       |
|  27|[0x800020e0]<br>0x0000000000000013|- rs1 : x14<br>                     |[0x80000768]:c.jr a4<br> [0x80000770]:xori a4, a4, 3<br> [0x80000774]:auipc sp, 0<br> [0x80000778]:addi sp, sp, 4076<br> [0x8000077c]:andi sp, sp, 4092<br> [0x80000780]:sub a4, a4, sp<br> [0x80000784]:c.sd s0, a4, 208<br> |
|  28|[0x800020e8]<br>0x0000000000000011|- rs1 : x24<br>                     |[0x80000796]:c.jr s8<br> [0x8000079e]:xori s8, s8, 3<br> [0x800007a2]:auipc sp, 0<br> [0x800007a6]:addi sp, sp, 4076<br> [0x800007aa]:andi sp, sp, 4092<br> [0x800007ae]:sub s8, s8, sp<br> [0x800007b2]:sd s8, 0(ra)<br>     |
|  29|[0x800020f0]<br>0x0000000000000011|- rs1 : x21<br>                     |[0x800007be]:c.jr s5<br> [0x800007c6]:xori s5, s5, 3<br> [0x800007ca]:auipc sp, 0<br> [0x800007ce]:addi sp, sp, 4076<br> [0x800007d2]:andi sp, sp, 4092<br> [0x800007d6]:sub s5, s5, sp<br> [0x800007da]:sd s5, 8(ra)<br>     |
|  30|[0x800020f8]<br>0x0000000000000011|- rs1 : x8<br>                      |[0x800007e6]:c.jr fp<br> [0x800007ee]:xori fp, fp, 3<br> [0x800007f2]:auipc sp, 0<br> [0x800007f6]:addi sp, sp, 4076<br> [0x800007fa]:andi sp, sp, 4092<br> [0x800007fe]:sub fp, fp, sp<br> [0x80000802]:sd fp, 16(ra)<br>    |
|  31|[0x80002100]<br>0x0000000000000011|- rs1 : x10<br>                     |[0x8000080e]:c.jr a0<br> [0x80000816]:xori a0, a0, 3<br> [0x8000081a]:auipc sp, 0<br> [0x8000081e]:addi sp, sp, 4076<br> [0x80000822]:andi sp, sp, 4092<br> [0x80000826]:sub a0, a0, sp<br> [0x8000082a]:sd a0, 24(ra)<br>    |
