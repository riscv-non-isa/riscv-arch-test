
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000600')]      |
| SIG_REGION                | [('0x80002010', '0x80002110', '64 words')]      |
| COV_LABELS                | auipc      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/auipc-01.S/auipc-01.S    |
| Total Number of coverpoints| 103     |
| Total Coverpoints Hit     | 103      |
| Total Signature Updates   | 63      |
| STAT1                     | 62      |
| STAT2                     | 1      |
| STAT3                     | 65     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e8]:auipc a0, 209714
      [0x800005ec]:sub a0, a0, sp
      [0x800005f0]:sw a0, 132(ra)
 -- Signature Address: 0x80002108 Data: 0x33332000
 -- Redundant Coverpoints hit by the op
      - opcode : auipc
      - rd : x10
      - imm_val > 0
      - imm_val==209714






```

## Details of STAT3

```
[0x800000f8]:auipc s5, 2
[0x800000fc]:addi s5, s5, 3864

[0x80000100]:auipc a3, 0
[0x80000104]:addi a3, a3, 8

[0x80000114]:auipc a3, 0
[0x80000118]:addi a3, a3, 8

[0x80000128]:auipc a3, 0
[0x8000012c]:addi a3, a3, 8

[0x8000013c]:auipc a3, 0
[0x80000140]:addi a3, a3, 8

[0x80000150]:auipc a3, 0
[0x80000154]:addi a3, a3, 8

[0x80000164]:auipc a3, 0
[0x80000168]:addi a3, a3, 8

[0x80000178]:auipc a3, 0
[0x8000017c]:addi a3, a3, 8

[0x8000018c]:auipc a3, 0
[0x80000190]:addi a3, a3, 8

[0x800001a0]:auipc a3, 0
[0x800001a4]:addi a3, a3, 8

[0x800001b4]:auipc a3, 0
[0x800001b8]:addi a3, a3, 8

[0x800001c8]:auipc a3, 0
[0x800001cc]:addi a3, a3, 8

[0x800001dc]:auipc a3, 0
[0x800001e0]:addi a3, a3, 8

[0x800001f0]:auipc a3, 0
[0x800001f4]:addi a3, a3, 8

[0x80000204]:auipc a3, 0
[0x80000208]:addi a3, a3, 8

[0x80000218]:auipc a3, 0
[0x8000021c]:addi a3, a3, 8

[0x8000022c]:auipc a3, 0
[0x80000230]:addi a3, a3, 8

[0x80000240]:auipc a3, 0
[0x80000244]:addi a3, a3, 8

[0x80000254]:auipc a3, 0
[0x80000258]:addi a3, a3, 8

[0x80000268]:auipc a3, 0
[0x8000026c]:addi a3, a3, 8

[0x8000027c]:auipc a3, 0
[0x80000280]:addi a3, a3, 8

[0x80000290]:auipc a3, 0
[0x80000294]:addi a3, a3, 8

[0x800002a4]:auipc a3, 0
[0x800002a8]:addi a3, a3, 8

[0x800002b8]:auipc a3, 0
[0x800002bc]:addi a3, a3, 8

[0x800002cc]:auipc a3, 0
[0x800002d0]:addi a3, a3, 8

[0x800002e0]:auipc a3, 0
[0x800002e4]:addi a3, a3, 8

[0x800002f4]:auipc a3, 0
[0x800002f8]:addi a3, a3, 8

[0x80000308]:auipc a3, 0
[0x8000030c]:addi a3, a3, 8

[0x8000031c]:auipc a3, 0
[0x80000320]:addi a3, a3, 8

[0x80000330]:auipc sp, 0
[0x80000334]:addi sp, sp, 8

[0x80000344]:auipc ra, 2
[0x80000348]:addi ra, ra, 3392

[0x8000034c]:auipc sp, 0
[0x80000350]:addi sp, sp, 8

[0x80000360]:auipc sp, 0
[0x80000364]:addi sp, sp, 8

[0x80000374]:auipc sp, 0
[0x80000378]:addi sp, sp, 8

[0x80000388]:auipc sp, 0
[0x8000038c]:addi sp, sp, 8

[0x8000039c]:auipc sp, 0
[0x800003a0]:addi sp, sp, 8

[0x800003b0]:auipc sp, 0
[0x800003b4]:addi sp, sp, 8

[0x800003c4]:auipc sp, 0
[0x800003c8]:addi sp, sp, 8

[0x800003d8]:auipc sp, 0
[0x800003dc]:addi sp, sp, 8

[0x800003ec]:auipc sp, 0
[0x800003f0]:addi sp, sp, 8

[0x80000400]:auipc sp, 0
[0x80000404]:addi sp, sp, 8

[0x80000414]:auipc sp, 0
[0x80000418]:addi sp, sp, 8

[0x80000428]:auipc sp, 0
[0x8000042c]:addi sp, sp, 8

[0x8000043c]:auipc sp, 0
[0x80000440]:addi sp, sp, 8

[0x80000450]:auipc sp, 0
[0x80000454]:addi sp, sp, 8

[0x80000464]:auipc sp, 0
[0x80000468]:addi sp, sp, 8

[0x80000478]:auipc sp, 0
[0x8000047c]:addi sp, sp, 8

[0x8000048c]:auipc sp, 0
[0x80000490]:addi sp, sp, 8

[0x800004a0]:auipc sp, 0
[0x800004a4]:addi sp, sp, 8

[0x800004b4]:auipc sp, 0
[0x800004b8]:addi sp, sp, 8

[0x800004c8]:auipc sp, 0
[0x800004cc]:addi sp, sp, 8

[0x800004dc]:auipc sp, 0
[0x800004e0]:addi sp, sp, 8

[0x800004f0]:auipc sp, 0
[0x800004f4]:addi sp, sp, 8

[0x80000504]:auipc sp, 0
[0x80000508]:addi sp, sp, 8

[0x80000518]:auipc sp, 0
[0x8000051c]:addi sp, sp, 8

[0x8000052c]:auipc sp, 0
[0x80000530]:addi sp, sp, 8

[0x80000540]:auipc sp, 0
[0x80000544]:addi sp, sp, 8

[0x80000554]:auipc sp, 0
[0x80000558]:addi sp, sp, 8

[0x80000568]:auipc sp, 0
[0x8000056c]:addi sp, sp, 8

[0x8000057c]:auipc sp, 0
[0x80000580]:addi sp, sp, 8

[0x80000590]:auipc sp, 0
[0x80000594]:addi sp, sp, 8

[0x800005a4]:auipc sp, 0
[0x800005a8]:addi sp, sp, 8

[0x800005b8]:auipc sp, 0
[0x800005bc]:addi sp, sp, 8

[0x800005cc]:auipc sp, 0
[0x800005d0]:addi sp, sp, 8

[0x800005e0]:auipc sp, 0
[0x800005e4]:addi sp, sp, 8



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

|s.no|        signature         |                         coverpoints                         |                                                  code                                                   |
|---:|--------------------------|-------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00000000|- rd : x28<br>                                               |[0x80000108]:auipc t3, 0<br> [0x8000010c]:sub t3, t3, a3<br> [0x80000110]:sw t3, 0(s5)<br>               |
|   2|[0x80002014]<br>0xFFDFF000|- rd : x1<br> - imm_val == 1048063<br>                       |[0x8000011c]:auipc ra, 1048063<br> [0x80000120]:sub ra, ra, a3<br> [0x80000124]:sw ra, 4(s5)<br>         |
|   3|[0x80002018]<br>0xFFFFF000|- rd : x18<br> - imm_val == ((2**20)-1)<br>                  |[0x80000130]:auipc s2, 1048575<br> [0x80000134]:sub s2, s2, a3<br> [0x80000138]:sw s2, 8(s5)<br>         |
|   4|[0x8000201c]<br>0x00003000|- rd : x14<br> - imm_val==3<br>                              |[0x80000144]:auipc a4, 3<br> [0x80000148]:sub a4, a4, a3<br> [0x8000014c]:sw a4, 12(s5)<br>              |
|   5|[0x80002020]<br>0x55555000|- rd : x20<br> - imm_val==349525<br> - imm_val == 349525<br> |[0x80000158]:auipc s4, 349525<br> [0x8000015c]:sub s4, s4, a3<br> [0x80000160]:sw s4, 16(s5)<br>         |
|   6|[0x80002024]<br>0xAAAAA000|- rd : x8<br> - imm_val==699050<br> - imm_val == 699050<br>  |[0x8000016c]:auipc fp, 699050<br> [0x80000170]:sub fp, fp, a3<br> [0x80000174]:sw fp, 20(s5)<br>         |
|   7|[0x80002028]<br>0x00005000|- rd : x2<br> - imm_val==5<br>                               |[0x80000180]:auipc sp, 5<br> [0x80000184]:sub sp, sp, a3<br> [0x80000188]:sw sp, 24(s5)<br>              |
|   8|[0x8000202c]<br>0x33333000|- rd : x15<br> - imm_val==209715<br>                         |[0x80000194]:auipc a5, 209715<br> [0x80000198]:sub a5, a5, a3<br> [0x8000019c]:sw a5, 28(s5)<br>         |
|   9|[0x80002030]<br>0x66666000|- rd : x30<br> - imm_val==419430<br>                         |[0x800001a8]:auipc t5, 419430<br> [0x800001ac]:sub t5, t5, a3<br> [0x800001b0]:sw t5, 32(s5)<br>         |
|  10|[0x80002034]<br>0x002D4000|- rd : x26<br> - imm_val==724<br>                            |[0x800001bc]:auipc s10, 724<br> [0x800001c0]:sub s10, s10, a3<br> [0x800001c4]:sw s10, 36(s5)<br>        |
|  11|[0x80002038]<br>0x003FF000|- rd : x9<br> - imm_val==1023<br>                            |[0x800001d0]:auipc s1, 1023<br> [0x800001d4]:sub s1, s1, a3<br> [0x800001d8]:sw s1, 40(s5)<br>           |
|  12|[0x8000203c]<br>0x00002000|- rd : x31<br>                                               |[0x800001e4]:auipc t6, 2<br> [0x800001e8]:sub t6, t6, a3<br> [0x800001ec]:sw t6, 44(s5)<br>              |
|  13|[0x80002040]<br>0x55554000|- rd : x23<br> - imm_val==349524<br>                         |[0x800001f8]:auipc s7, 349524<br> [0x800001fc]:sub s7, s7, a3<br> [0x80000200]:sw s7, 48(s5)<br>         |
|  14|[0x80002044]<br>0xAAAA9000|- rd : x29<br> - imm_val==699049<br>                         |[0x8000020c]:auipc t4, 699049<br> [0x80000210]:sub t4, t4, a3<br> [0x80000214]:sw t4, 52(s5)<br>         |
|  15|[0x80002048]<br>0x00004000|- rd : x19<br> - imm_val==4<br> - imm_val == 4<br>           |[0x80000220]:auipc s3, 4<br> [0x80000224]:sub s3, s3, a3<br> [0x80000228]:sw s3, 56(s5)<br>              |
|  16|[0x8000204c]<br>0x00000000|- rd : x0<br> - imm_val==209714<br>                          |[0x80000234]:auipc zero, 209714<br> [0x80000238]:sub zero, zero, a3<br> [0x8000023c]:sw zero, 60(s5)<br> |
|  17|[0x80002050]<br>0x66665000|- rd : x17<br> - imm_val==419429<br>                         |[0x80000248]:auipc a7, 419429<br> [0x8000024c]:sub a7, a7, a3<br> [0x80000250]:sw a7, 64(s5)<br>         |
|  18|[0x80002054]<br>0x002D3000|- rd : x22<br> - imm_val==723<br>                            |[0x8000025c]:auipc s6, 723<br> [0x80000260]:sub s6, s6, a3<br> [0x80000264]:sw s6, 68(s5)<br>            |
|  19|[0x80002058]<br>0x003FE000|- rd : x6<br> - imm_val==1022<br>                            |[0x80000270]:auipc t1, 1022<br> [0x80000274]:sub t1, t1, a3<br> [0x80000278]:sw t1, 72(s5)<br>           |
|  20|[0x8000205c]<br>0x55556000|- rd : x16<br> - imm_val==349526<br>                         |[0x80000284]:auipc a6, 349526<br> [0x80000288]:sub a6, a6, a3<br> [0x8000028c]:sw a6, 76(s5)<br>         |
|  21|[0x80002060]<br>0xAAAAB000|- rd : x11<br> - imm_val==699051<br>                         |[0x80000298]:auipc a1, 699051<br> [0x8000029c]:sub a1, a1, a3<br> [0x800002a0]:sw a1, 80(s5)<br>         |
|  22|[0x80002064]<br>0x00006000|- rd : x10<br> - imm_val==6<br>                              |[0x800002ac]:auipc a0, 6<br> [0x800002b0]:sub a0, a0, a3<br> [0x800002b4]:sw a0, 84(s5)<br>              |
|  23|[0x80002068]<br>0x33334000|- rd : x12<br> - imm_val==209716<br>                         |[0x800002c0]:auipc a2, 209716<br> [0x800002c4]:sub a2, a2, a3<br> [0x800002c8]:sw a2, 88(s5)<br>         |
|  24|[0x8000206c]<br>0x66667000|- rd : x4<br> - imm_val==419431<br>                          |[0x800002d4]:auipc tp, 419431<br> [0x800002d8]:sub tp, tp, a3<br> [0x800002dc]:sw tp, 92(s5)<br>         |
|  25|[0x80002070]<br>0x002D5000|- rd : x7<br> - imm_val==725<br>                             |[0x800002e8]:auipc t2, 725<br> [0x800002ec]:sub t2, t2, a3<br> [0x800002f0]:sw t2, 96(s5)<br>            |
|  26|[0x80002074]<br>0x00001000|- rd : x5<br> - imm_val==1<br> - imm_val == 1<br>            |[0x800002fc]:auipc t0, 1<br> [0x80000300]:sub t0, t0, a3<br> [0x80000304]:sw t0, 100(s5)<br>             |
|  27|[0x80002078]<br>0x00400000|- rd : x24<br> - imm_val==1024<br> - imm_val == 1024<br>     |[0x80000310]:auipc s8, 1024<br> [0x80000314]:sub s8, s8, a3<br> [0x80000318]:sw s8, 104(s5)<br>          |
|  28|[0x8000207c]<br>0x00008000|- rd : x3<br> - imm_val == 8<br>                             |[0x80000324]:auipc gp, 8<br> [0x80000328]:sub gp, gp, a3<br> [0x8000032c]:sw gp, 108(s5)<br>             |
|  29|[0x80002080]<br>0x00010000|- imm_val == 16<br>                                          |[0x80000338]:auipc a3, 16<br> [0x8000033c]:sub a3, a3, sp<br> [0x80000340]:sw a3, 112(s5)<br>            |
|  30|[0x80002084]<br>0x00020000|- rd : x25<br> - imm_val == 32<br>                           |[0x80000354]:auipc s9, 32<br> [0x80000358]:sub s9, s9, sp<br> [0x8000035c]:sw s9, 0(ra)<br>              |
|  31|[0x80002088]<br>0x00040000|- rd : x27<br> - imm_val == 64<br>                           |[0x80000368]:auipc s11, 64<br> [0x8000036c]:sub s11, s11, sp<br> [0x80000370]:sw s11, 4(ra)<br>          |
|  32|[0x8000208c]<br>0xEFFFF000|- imm_val == 983039<br>                                      |[0x8000037c]:auipc s5, 983039<br> [0x80000380]:sub s5, s5, sp<br> [0x80000384]:sw s5, 8(ra)<br>          |
|  33|[0x80002090]<br>0xDFFFF000|- imm_val == 917503<br>                                      |[0x80000390]:auipc a0, 917503<br> [0x80000394]:sub a0, a0, sp<br> [0x80000398]:sw a0, 12(ra)<br>         |
|  34|[0x80002094]<br>0xBFFFF000|- imm_val == 786431<br>                                      |[0x800003a4]:auipc a0, 786431<br> [0x800003a8]:sub a0, a0, sp<br> [0x800003ac]:sw a0, 16(ra)<br>         |
|  35|[0x80002098]<br>0x7FFFF000|- imm_val == 524287<br>                                      |[0x800003b8]:auipc a0, 524287<br> [0x800003bc]:sub a0, a0, sp<br> [0x800003c0]:sw a0, 20(ra)<br>         |
|  36|[0x8000209c]<br>0x00080000|- imm_val == 128<br>                                         |[0x800003cc]:auipc a0, 128<br> [0x800003d0]:sub a0, a0, sp<br> [0x800003d4]:sw a0, 24(ra)<br>            |
|  37|[0x800020a0]<br>0x00100000|- imm_val == 256<br>                                         |[0x800003e0]:auipc a0, 256<br> [0x800003e4]:sub a0, a0, sp<br> [0x800003e8]:sw a0, 28(ra)<br>            |
|  38|[0x800020a4]<br>0x00200000|- imm_val == 512<br>                                         |[0x800003f4]:auipc a0, 512<br> [0x800003f8]:sub a0, a0, sp<br> [0x800003fc]:sw a0, 32(ra)<br>            |
|  39|[0x800020a8]<br>0x00800000|- imm_val == 2048<br>                                        |[0x80000408]:auipc a0, 2048<br> [0x8000040c]:sub a0, a0, sp<br> [0x80000410]:sw a0, 36(ra)<br>           |
|  40|[0x800020ac]<br>0x01000000|- imm_val == 4096<br>                                        |[0x8000041c]:auipc a0, 4096<br> [0x80000420]:sub a0, a0, sp<br> [0x80000424]:sw a0, 40(ra)<br>           |
|  41|[0x800020b0]<br>0x02000000|- imm_val == 8192<br>                                        |[0x80000430]:auipc a0, 8192<br> [0x80000434]:sub a0, a0, sp<br> [0x80000438]:sw a0, 44(ra)<br>           |
|  42|[0x800020b4]<br>0x04000000|- imm_val == 16384<br>                                       |[0x80000444]:auipc a0, 16384<br> [0x80000448]:sub a0, a0, sp<br> [0x8000044c]:sw a0, 48(ra)<br>          |
|  43|[0x800020b8]<br>0x08000000|- imm_val == 32768<br>                                       |[0x80000458]:auipc a0, 32768<br> [0x8000045c]:sub a0, a0, sp<br> [0x80000460]:sw a0, 52(ra)<br>          |
|  44|[0x800020bc]<br>0x10000000|- imm_val == 65536<br>                                       |[0x8000046c]:auipc a0, 65536<br> [0x80000470]:sub a0, a0, sp<br> [0x80000474]:sw a0, 56(ra)<br>          |
|  45|[0x800020c0]<br>0x20000000|- imm_val == 131072<br>                                      |[0x80000480]:auipc a0, 131072<br> [0x80000484]:sub a0, a0, sp<br> [0x80000488]:sw a0, 60(ra)<br>         |
|  46|[0x800020c4]<br>0x40000000|- imm_val == 262144<br>                                      |[0x80000494]:auipc a0, 262144<br> [0x80000498]:sub a0, a0, sp<br> [0x8000049c]:sw a0, 64(ra)<br>         |
|  47|[0x800020c8]<br>0x80000000|- imm_val == 524288<br>                                      |[0x800004a8]:auipc a0, 524288<br> [0x800004ac]:sub a0, a0, sp<br> [0x800004b0]:sw a0, 68(ra)<br>         |
|  48|[0x800020cc]<br>0xFFFFE000|- imm_val == 1048574<br>                                     |[0x800004bc]:auipc a0, 1048574<br> [0x800004c0]:sub a0, a0, sp<br> [0x800004c4]:sw a0, 72(ra)<br>        |
|  49|[0x800020d0]<br>0xFFFFD000|- imm_val == 1048573<br>                                     |[0x800004d0]:auipc a0, 1048573<br> [0x800004d4]:sub a0, a0, sp<br> [0x800004d8]:sw a0, 76(ra)<br>        |
|  50|[0x800020d4]<br>0xFFFFB000|- imm_val == 1048571<br>                                     |[0x800004e4]:auipc a0, 1048571<br> [0x800004e8]:sub a0, a0, sp<br> [0x800004ec]:sw a0, 80(ra)<br>        |
|  51|[0x800020d8]<br>0xFFFF7000|- imm_val == 1048567<br>                                     |[0x800004f8]:auipc a0, 1048567<br> [0x800004fc]:sub a0, a0, sp<br> [0x80000500]:sw a0, 84(ra)<br>        |
|  52|[0x800020dc]<br>0xFFFEF000|- imm_val == 1048559<br>                                     |[0x8000050c]:auipc a0, 1048559<br> [0x80000510]:sub a0, a0, sp<br> [0x80000514]:sw a0, 88(ra)<br>        |
|  53|[0x800020e0]<br>0xFFFDF000|- imm_val == 1048543<br>                                     |[0x80000520]:auipc a0, 1048543<br> [0x80000524]:sub a0, a0, sp<br> [0x80000528]:sw a0, 92(ra)<br>        |
|  54|[0x800020e4]<br>0xFFFBF000|- imm_val == 1048511<br>                                     |[0x80000534]:auipc a0, 1048511<br> [0x80000538]:sub a0, a0, sp<br> [0x8000053c]:sw a0, 96(ra)<br>        |
|  55|[0x800020e8]<br>0xFFF7F000|- imm_val == 1048447<br>                                     |[0x80000548]:auipc a0, 1048447<br> [0x8000054c]:sub a0, a0, sp<br> [0x80000550]:sw a0, 100(ra)<br>       |
|  56|[0x800020ec]<br>0xFFEFF000|- imm_val == 1048319<br>                                     |[0x8000055c]:auipc a0, 1048319<br> [0x80000560]:sub a0, a0, sp<br> [0x80000564]:sw a0, 104(ra)<br>       |
|  57|[0x800020f0]<br>0xFFBFF000|- imm_val == 1047551<br>                                     |[0x80000570]:auipc a0, 1047551<br> [0x80000574]:sub a0, a0, sp<br> [0x80000578]:sw a0, 108(ra)<br>       |
|  58|[0x800020f4]<br>0xFF7FF000|- imm_val == 1046527<br>                                     |[0x80000584]:auipc a0, 1046527<br> [0x80000588]:sub a0, a0, sp<br> [0x8000058c]:sw a0, 112(ra)<br>       |
|  59|[0x800020f8]<br>0xFEFFF000|- imm_val == 1044479<br>                                     |[0x80000598]:auipc a0, 1044479<br> [0x8000059c]:sub a0, a0, sp<br> [0x800005a0]:sw a0, 116(ra)<br>       |
|  60|[0x800020fc]<br>0xFDFFF000|- imm_val == 1040383<br>                                     |[0x800005ac]:auipc a0, 1040383<br> [0x800005b0]:sub a0, a0, sp<br> [0x800005b4]:sw a0, 120(ra)<br>       |
|  61|[0x80002100]<br>0xFBFFF000|- imm_val == 1032191<br>                                     |[0x800005c0]:auipc a0, 1032191<br> [0x800005c4]:sub a0, a0, sp<br> [0x800005c8]:sw a0, 124(ra)<br>       |
|  62|[0x80002104]<br>0xF7FFF000|- imm_val == 1015807<br>                                     |[0x800005d4]:auipc a0, 1015807<br> [0x800005d8]:sub a0, a0, sp<br> [0x800005dc]:sw a0, 128(ra)<br>       |
