
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000890')]      |
| SIG_REGION                | [('0x80002010', '0x80002210', '64 dwords')]      |
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
      [0x80000880]:auipc a0, 4
      [0x80000884]:sub a0, a0, gp
      [0x80000888]:sd a0, 264(ra)
 -- Signature Address: 0x80002200 Data: 0x0000000000004000
 -- Redundant Coverpoints hit by the op
      - opcode : auipc
      - rd : x10
      - imm_val > 0
      - imm_val==4
      - imm_val == 4






```

## Details of STAT3

```
[0x80000390]:auipc sp, 2
[0x80000394]:addi sp, sp, 3200

[0x80000398]:auipc t1, 0
[0x8000039c]:addi t1, t1, 8

[0x800003ac]:auipc t1, 0
[0x800003b0]:addi t1, t1, 8

[0x800003c0]:auipc t1, 0
[0x800003c4]:addi t1, t1, 8

[0x800003d4]:auipc t1, 0
[0x800003d8]:addi t1, t1, 8

[0x800003e8]:auipc t1, 0
[0x800003ec]:addi t1, t1, 8

[0x800003fc]:auipc t1, 0
[0x80000400]:addi t1, t1, 8

[0x80000410]:auipc t1, 0
[0x80000414]:addi t1, t1, 8

[0x80000424]:auipc t1, 0
[0x80000428]:addi t1, t1, 8

[0x80000438]:auipc t1, 0
[0x8000043c]:addi t1, t1, 8

[0x8000044c]:auipc t1, 0
[0x80000450]:addi t1, t1, 8

[0x80000460]:auipc t1, 0
[0x80000464]:addi t1, t1, 8

[0x80000474]:auipc t1, 0
[0x80000478]:addi t1, t1, 8

[0x80000488]:auipc t1, 0
[0x8000048c]:addi t1, t1, 8

[0x8000049c]:auipc t1, 0
[0x800004a0]:addi t1, t1, 8

[0x800004b0]:auipc t1, 0
[0x800004b4]:addi t1, t1, 8

[0x800004c4]:auipc t1, 0
[0x800004c8]:addi t1, t1, 8

[0x800004d8]:auipc t1, 0
[0x800004dc]:addi t1, t1, 8

[0x800004ec]:auipc t1, 0
[0x800004f0]:addi t1, t1, 8

[0x80000500]:auipc t1, 0
[0x80000504]:addi t1, t1, 8

[0x80000514]:auipc t1, 0
[0x80000518]:addi t1, t1, 8

[0x80000528]:auipc t1, 0
[0x8000052c]:addi t1, t1, 8

[0x8000053c]:auipc t1, 0
[0x80000540]:addi t1, t1, 8

[0x80000550]:auipc t1, 0
[0x80000554]:addi t1, t1, 8

[0x80000564]:auipc t1, 0
[0x80000568]:addi t1, t1, 8

[0x80000578]:auipc t1, 0
[0x8000057c]:addi t1, t1, 8

[0x8000058c]:auipc t1, 0
[0x80000590]:addi t1, t1, 8

[0x800005a0]:auipc t1, 0
[0x800005a4]:addi t1, t1, 8

[0x800005b4]:auipc t1, 0
[0x800005b8]:addi t1, t1, 8

[0x800005c8]:auipc gp, 0
[0x800005cc]:addi gp, gp, 8

[0x800005dc]:auipc ra, 2
[0x800005e0]:addi ra, ra, 2844

[0x800005e4]:auipc gp, 0
[0x800005e8]:addi gp, gp, 8

[0x800005f8]:auipc gp, 0
[0x800005fc]:addi gp, gp, 8

[0x8000060c]:auipc gp, 0
[0x80000610]:addi gp, gp, 8

[0x80000620]:auipc gp, 0
[0x80000624]:addi gp, gp, 8

[0x80000634]:auipc gp, 0
[0x80000638]:addi gp, gp, 8

[0x80000648]:auipc gp, 0
[0x8000064c]:addi gp, gp, 8

[0x8000065c]:auipc gp, 0
[0x80000660]:addi gp, gp, 8

[0x80000670]:auipc gp, 0
[0x80000674]:addi gp, gp, 8

[0x80000684]:auipc gp, 0
[0x80000688]:addi gp, gp, 8

[0x80000698]:auipc gp, 0
[0x8000069c]:addi gp, gp, 8

[0x800006ac]:auipc gp, 0
[0x800006b0]:addi gp, gp, 8

[0x800006c0]:auipc gp, 0
[0x800006c4]:addi gp, gp, 8

[0x800006d4]:auipc gp, 0
[0x800006d8]:addi gp, gp, 8

[0x800006e8]:auipc gp, 0
[0x800006ec]:addi gp, gp, 8

[0x800006fc]:auipc gp, 0
[0x80000700]:addi gp, gp, 8

[0x80000710]:auipc gp, 0
[0x80000714]:addi gp, gp, 8

[0x80000724]:auipc gp, 0
[0x80000728]:addi gp, gp, 8

[0x80000738]:auipc gp, 0
[0x8000073c]:addi gp, gp, 8

[0x8000074c]:auipc gp, 0
[0x80000750]:addi gp, gp, 8

[0x80000760]:auipc gp, 0
[0x80000764]:addi gp, gp, 8

[0x80000774]:auipc gp, 0
[0x80000778]:addi gp, gp, 8

[0x80000788]:auipc gp, 0
[0x8000078c]:addi gp, gp, 8

[0x8000079c]:auipc gp, 0
[0x800007a0]:addi gp, gp, 8

[0x800007b0]:auipc gp, 0
[0x800007b4]:addi gp, gp, 8

[0x800007c4]:auipc gp, 0
[0x800007c8]:addi gp, gp, 8

[0x800007d8]:auipc gp, 0
[0x800007dc]:addi gp, gp, 8

[0x800007ec]:auipc gp, 0
[0x800007f0]:addi gp, gp, 8

[0x80000800]:auipc gp, 0
[0x80000804]:addi gp, gp, 8

[0x80000814]:auipc gp, 0
[0x80000818]:addi gp, gp, 8

[0x80000828]:auipc gp, 0
[0x8000082c]:addi gp, gp, 8

[0x8000083c]:auipc gp, 0
[0x80000840]:addi gp, gp, 8

[0x80000850]:auipc gp, 0
[0x80000854]:addi gp, gp, 8

[0x80000864]:auipc gp, 0
[0x80000868]:addi gp, gp, 8

[0x80000878]:auipc gp, 0
[0x8000087c]:addi gp, gp, 8



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

|s.no|            signature             |                         coverpoints                         |                                                code                                                 |
|---:|----------------------------------|-------------------------------------------------------------|-----------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000000000000000|- rd : x20<br>                                               |[0x800003a0]:auipc s4, 0<br> [0x800003a4]:sub s4, s4, t1<br> [0x800003a8]:sd s4, 0(sp)<br>           |
|   2|[0x80002018]<br>0xFFFFFFFFFFDFF000|- rd : x18<br> - imm_val == 1048063<br>                      |[0x800003b4]:auipc s2, 1048063<br> [0x800003b8]:sub s2, s2, t1<br> [0x800003bc]:sd s2, 8(sp)<br>     |
|   3|[0x80002020]<br>0xFFFFFFFFFFFFF000|- rd : x7<br> - imm_val == ((2**20)-1)<br>                   |[0x800003c8]:auipc t2, 1048575<br> [0x800003cc]:sub t2, t2, t1<br> [0x800003d0]:sd t2, 16(sp)<br>    |
|   4|[0x80002028]<br>0x0000000000003000|- rd : x23<br> - imm_val==3<br>                              |[0x800003dc]:auipc s7, 3<br> [0x800003e0]:sub s7, s7, t1<br> [0x800003e4]:sd s7, 24(sp)<br>          |
|   5|[0x80002030]<br>0x0000000055555000|- rd : x8<br> - imm_val==349525<br> - imm_val == 349525<br>  |[0x800003f0]:auipc fp, 349525<br> [0x800003f4]:sub fp, fp, t1<br> [0x800003f8]:sd fp, 32(sp)<br>     |
|   6|[0x80002038]<br>0xFFFFFFFFAAAAA000|- rd : x15<br> - imm_val==699050<br> - imm_val == 699050<br> |[0x80000404]:auipc a5, 699050<br> [0x80000408]:sub a5, a5, t1<br> [0x8000040c]:sd a5, 40(sp)<br>     |
|   7|[0x80002040]<br>0x0000000000005000|- rd : x1<br> - imm_val==5<br>                               |[0x80000418]:auipc ra, 5<br> [0x8000041c]:sub ra, ra, t1<br> [0x80000420]:sd ra, 48(sp)<br>          |
|   8|[0x80002048]<br>0x0000000033333000|- rd : x11<br> - imm_val==209715<br>                         |[0x8000042c]:auipc a1, 209715<br> [0x80000430]:sub a1, a1, t1<br> [0x80000434]:sd a1, 56(sp)<br>     |
|   9|[0x80002050]<br>0x0000000066666000|- rd : x10<br> - imm_val==419430<br>                         |[0x80000440]:auipc a0, 419430<br> [0x80000444]:sub a0, a0, t1<br> [0x80000448]:sd a0, 64(sp)<br>     |
|  10|[0x80002058]<br>0x00000000002D4000|- rd : x19<br> - imm_val==724<br>                            |[0x80000454]:auipc s3, 724<br> [0x80000458]:sub s3, s3, t1<br> [0x8000045c]:sd s3, 72(sp)<br>        |
|  11|[0x80002060]<br>0x00000000003FF000|- rd : x27<br> - imm_val==1023<br>                           |[0x80000468]:auipc s11, 1023<br> [0x8000046c]:sub s11, s11, t1<br> [0x80000470]:sd s11, 80(sp)<br>   |
|  12|[0x80002068]<br>0x0000000000002000|- rd : x26<br>                                               |[0x8000047c]:auipc s10, 2<br> [0x80000480]:sub s10, s10, t1<br> [0x80000484]:sd s10, 88(sp)<br>      |
|  13|[0x80002070]<br>0x0000000055554000|- rd : x30<br> - imm_val==349524<br>                         |[0x80000490]:auipc t5, 349524<br> [0x80000494]:sub t5, t5, t1<br> [0x80000498]:sd t5, 96(sp)<br>     |
|  14|[0x80002078]<br>0xFFFFFFFFAAAA9000|- rd : x3<br> - imm_val==699049<br>                          |[0x800004a4]:auipc gp, 699049<br> [0x800004a8]:sub gp, gp, t1<br> [0x800004ac]:sd gp, 104(sp)<br>    |
|  15|[0x80002080]<br>0x0000000000000000|- rd : x0<br> - imm_val==4<br> - imm_val == 4<br>            |[0x800004b8]:auipc zero, 4<br> [0x800004bc]:sub zero, zero, t1<br> [0x800004c0]:sd zero, 112(sp)<br> |
|  16|[0x80002088]<br>0x0000000033332000|- rd : x21<br> - imm_val==209714<br>                         |[0x800004cc]:auipc s5, 209714<br> [0x800004d0]:sub s5, s5, t1<br> [0x800004d4]:sd s5, 120(sp)<br>    |
|  17|[0x80002090]<br>0x0000000066665000|- rd : x12<br> - imm_val==419429<br>                         |[0x800004e0]:auipc a2, 419429<br> [0x800004e4]:sub a2, a2, t1<br> [0x800004e8]:sd a2, 128(sp)<br>    |
|  18|[0x80002098]<br>0x00000000002D3000|- rd : x16<br> - imm_val==723<br>                            |[0x800004f4]:auipc a6, 723<br> [0x800004f8]:sub a6, a6, t1<br> [0x800004fc]:sd a6, 136(sp)<br>       |
|  19|[0x800020a0]<br>0x00000000003FE000|- rd : x9<br> - imm_val==1022<br>                            |[0x80000508]:auipc s1, 1022<br> [0x8000050c]:sub s1, s1, t1<br> [0x80000510]:sd s1, 144(sp)<br>      |
|  20|[0x800020a8]<br>0x0000000055556000|- rd : x4<br> - imm_val==349526<br>                          |[0x8000051c]:auipc tp, 349526<br> [0x80000520]:sub tp, tp, t1<br> [0x80000524]:sd tp, 152(sp)<br>    |
|  21|[0x800020b0]<br>0xFFFFFFFFAAAAB000|- rd : x13<br> - imm_val==699051<br>                         |[0x80000530]:auipc a3, 699051<br> [0x80000534]:sub a3, a3, t1<br> [0x80000538]:sd a3, 160(sp)<br>    |
|  22|[0x800020b8]<br>0x0000000000006000|- rd : x31<br> - imm_val==6<br>                              |[0x80000544]:auipc t6, 6<br> [0x80000548]:sub t6, t6, t1<br> [0x8000054c]:sd t6, 168(sp)<br>         |
|  23|[0x800020c0]<br>0x0000000033334000|- rd : x24<br> - imm_val==209716<br>                         |[0x80000558]:auipc s8, 209716<br> [0x8000055c]:sub s8, s8, t1<br> [0x80000560]:sd s8, 176(sp)<br>    |
|  24|[0x800020c8]<br>0x0000000066667000|- rd : x17<br> - imm_val==419431<br>                         |[0x8000056c]:auipc a7, 419431<br> [0x80000570]:sub a7, a7, t1<br> [0x80000574]:sd a7, 184(sp)<br>    |
|  25|[0x800020d0]<br>0x00000000002D5000|- rd : x14<br> - imm_val==725<br>                            |[0x80000580]:auipc a4, 725<br> [0x80000584]:sub a4, a4, t1<br> [0x80000588]:sd a4, 192(sp)<br>       |
|  26|[0x800020d8]<br>0x0000000000001000|- rd : x22<br> - imm_val==1<br> - imm_val == 1<br>           |[0x80000594]:auipc s6, 1<br> [0x80000598]:sub s6, s6, t1<br> [0x8000059c]:sd s6, 200(sp)<br>         |
|  27|[0x800020e0]<br>0x0000000000400000|- rd : x5<br> - imm_val==1024<br> - imm_val == 1024<br>      |[0x800005a8]:auipc t0, 1024<br> [0x800005ac]:sub t0, t0, t1<br> [0x800005b0]:sd t0, 208(sp)<br>      |
|  28|[0x800020e8]<br>0x0000000000008000|- rd : x29<br> - imm_val == 8<br>                            |[0x800005bc]:auipc t4, 8<br> [0x800005c0]:sub t4, t4, t1<br> [0x800005c4]:sd t4, 216(sp)<br>         |
|  29|[0x800020f0]<br>0x0000000000010000|- rd : x28<br> - imm_val == 16<br>                           |[0x800005d0]:auipc t3, 16<br> [0x800005d4]:sub t3, t3, gp<br> [0x800005d8]:sd t3, 224(sp)<br>        |
|  30|[0x800020f8]<br>0x0000000000020000|- imm_val == 32<br>                                          |[0x800005ec]:auipc t1, 32<br> [0x800005f0]:sub t1, t1, gp<br> [0x800005f4]:sd t1, 0(ra)<br>          |
|  31|[0x80002100]<br>0x0000000000040000|- imm_val == 64<br>                                          |[0x80000600]:auipc sp, 64<br> [0x80000604]:sub sp, sp, gp<br> [0x80000608]:sd sp, 8(ra)<br>          |
|  32|[0x80002108]<br>0xFFFFFFFFEFFFF000|- rd : x25<br> - imm_val == 983039<br>                       |[0x80000614]:auipc s9, 983039<br> [0x80000618]:sub s9, s9, gp<br> [0x8000061c]:sd s9, 16(ra)<br>     |
|  33|[0x80002110]<br>0xFFFFFFFFDFFFF000|- imm_val == 917503<br>                                      |[0x80000628]:auipc a0, 917503<br> [0x8000062c]:sub a0, a0, gp<br> [0x80000630]:sd a0, 24(ra)<br>     |
|  34|[0x80002118]<br>0xFFFFFFFFBFFFF000|- imm_val == 786431<br>                                      |[0x8000063c]:auipc a0, 786431<br> [0x80000640]:sub a0, a0, gp<br> [0x80000644]:sd a0, 32(ra)<br>     |
|  35|[0x80002120]<br>0x000000007FFFF000|- imm_val == 524287<br>                                      |[0x80000650]:auipc a0, 524287<br> [0x80000654]:sub a0, a0, gp<br> [0x80000658]:sd a0, 40(ra)<br>     |
|  36|[0x80002128]<br>0x0000000000080000|- imm_val == 128<br>                                         |[0x80000664]:auipc a0, 128<br> [0x80000668]:sub a0, a0, gp<br> [0x8000066c]:sd a0, 48(ra)<br>        |
|  37|[0x80002130]<br>0x0000000000100000|- imm_val == 256<br>                                         |[0x80000678]:auipc a0, 256<br> [0x8000067c]:sub a0, a0, gp<br> [0x80000680]:sd a0, 56(ra)<br>        |
|  38|[0x80002138]<br>0x0000000000200000|- imm_val == 512<br>                                         |[0x8000068c]:auipc a0, 512<br> [0x80000690]:sub a0, a0, gp<br> [0x80000694]:sd a0, 64(ra)<br>        |
|  39|[0x80002140]<br>0x0000000000800000|- imm_val == 2048<br>                                        |[0x800006a0]:auipc a0, 2048<br> [0x800006a4]:sub a0, a0, gp<br> [0x800006a8]:sd a0, 72(ra)<br>       |
|  40|[0x80002148]<br>0x0000000001000000|- imm_val == 4096<br>                                        |[0x800006b4]:auipc a0, 4096<br> [0x800006b8]:sub a0, a0, gp<br> [0x800006bc]:sd a0, 80(ra)<br>       |
|  41|[0x80002150]<br>0x0000000002000000|- imm_val == 8192<br>                                        |[0x800006c8]:auipc a0, 8192<br> [0x800006cc]:sub a0, a0, gp<br> [0x800006d0]:sd a0, 88(ra)<br>       |
|  42|[0x80002158]<br>0x0000000004000000|- imm_val == 16384<br>                                       |[0x800006dc]:auipc a0, 16384<br> [0x800006e0]:sub a0, a0, gp<br> [0x800006e4]:sd a0, 96(ra)<br>      |
|  43|[0x80002160]<br>0x0000000008000000|- imm_val == 32768<br>                                       |[0x800006f0]:auipc a0, 32768<br> [0x800006f4]:sub a0, a0, gp<br> [0x800006f8]:sd a0, 104(ra)<br>     |
|  44|[0x80002168]<br>0x0000000010000000|- imm_val == 65536<br>                                       |[0x80000704]:auipc a0, 65536<br> [0x80000708]:sub a0, a0, gp<br> [0x8000070c]:sd a0, 112(ra)<br>     |
|  45|[0x80002170]<br>0x0000000020000000|- imm_val == 131072<br>                                      |[0x80000718]:auipc a0, 131072<br> [0x8000071c]:sub a0, a0, gp<br> [0x80000720]:sd a0, 120(ra)<br>    |
|  46|[0x80002178]<br>0x0000000040000000|- imm_val == 262144<br>                                      |[0x8000072c]:auipc a0, 262144<br> [0x80000730]:sub a0, a0, gp<br> [0x80000734]:sd a0, 128(ra)<br>    |
|  47|[0x80002180]<br>0xFFFFFFFF80000000|- imm_val == 524288<br>                                      |[0x80000740]:auipc a0, 524288<br> [0x80000744]:sub a0, a0, gp<br> [0x80000748]:sd a0, 136(ra)<br>    |
|  48|[0x80002188]<br>0xFFFFFFFFFFFFE000|- imm_val == 1048574<br>                                     |[0x80000754]:auipc a0, 1048574<br> [0x80000758]:sub a0, a0, gp<br> [0x8000075c]:sd a0, 144(ra)<br>   |
|  49|[0x80002190]<br>0xFFFFFFFFFFFFD000|- imm_val == 1048573<br>                                     |[0x80000768]:auipc a0, 1048573<br> [0x8000076c]:sub a0, a0, gp<br> [0x80000770]:sd a0, 152(ra)<br>   |
|  50|[0x80002198]<br>0xFFFFFFFFFFFFB000|- imm_val == 1048571<br>                                     |[0x8000077c]:auipc a0, 1048571<br> [0x80000780]:sub a0, a0, gp<br> [0x80000784]:sd a0, 160(ra)<br>   |
|  51|[0x800021a0]<br>0xFFFFFFFFFFFF7000|- imm_val == 1048567<br>                                     |[0x80000790]:auipc a0, 1048567<br> [0x80000794]:sub a0, a0, gp<br> [0x80000798]:sd a0, 168(ra)<br>   |
|  52|[0x800021a8]<br>0xFFFFFFFFFFFEF000|- imm_val == 1048559<br>                                     |[0x800007a4]:auipc a0, 1048559<br> [0x800007a8]:sub a0, a0, gp<br> [0x800007ac]:sd a0, 176(ra)<br>   |
|  53|[0x800021b0]<br>0xFFFFFFFFFFFDF000|- imm_val == 1048543<br>                                     |[0x800007b8]:auipc a0, 1048543<br> [0x800007bc]:sub a0, a0, gp<br> [0x800007c0]:sd a0, 184(ra)<br>   |
|  54|[0x800021b8]<br>0xFFFFFFFFFFFBF000|- imm_val == 1048511<br>                                     |[0x800007cc]:auipc a0, 1048511<br> [0x800007d0]:sub a0, a0, gp<br> [0x800007d4]:sd a0, 192(ra)<br>   |
|  55|[0x800021c0]<br>0xFFFFFFFFFFF7F000|- imm_val == 1048447<br>                                     |[0x800007e0]:auipc a0, 1048447<br> [0x800007e4]:sub a0, a0, gp<br> [0x800007e8]:sd a0, 200(ra)<br>   |
|  56|[0x800021c8]<br>0xFFFFFFFFFFEFF000|- imm_val == 1048319<br>                                     |[0x800007f4]:auipc a0, 1048319<br> [0x800007f8]:sub a0, a0, gp<br> [0x800007fc]:sd a0, 208(ra)<br>   |
|  57|[0x800021d0]<br>0xFFFFFFFFFFBFF000|- imm_val == 1047551<br>                                     |[0x80000808]:auipc a0, 1047551<br> [0x8000080c]:sub a0, a0, gp<br> [0x80000810]:sd a0, 216(ra)<br>   |
|  58|[0x800021d8]<br>0xFFFFFFFFFF7FF000|- imm_val == 1046527<br>                                     |[0x8000081c]:auipc a0, 1046527<br> [0x80000820]:sub a0, a0, gp<br> [0x80000824]:sd a0, 224(ra)<br>   |
|  59|[0x800021e0]<br>0xFFFFFFFFFEFFF000|- imm_val == 1044479<br>                                     |[0x80000830]:auipc a0, 1044479<br> [0x80000834]:sub a0, a0, gp<br> [0x80000838]:sd a0, 232(ra)<br>   |
|  60|[0x800021e8]<br>0xFFFFFFFFFDFFF000|- imm_val == 1040383<br>                                     |[0x80000844]:auipc a0, 1040383<br> [0x80000848]:sub a0, a0, gp<br> [0x8000084c]:sd a0, 240(ra)<br>   |
|  61|[0x800021f0]<br>0xFFFFFFFFFBFFF000|- imm_val == 1032191<br>                                     |[0x80000858]:auipc a0, 1032191<br> [0x8000085c]:sub a0, a0, gp<br> [0x80000860]:sd a0, 248(ra)<br>   |
|  62|[0x800021f8]<br>0xFFFFFFFFF7FFF000|- imm_val == 1015807<br>                                     |[0x8000086c]:auipc a0, 1015807<br> [0x80000870]:sub a0, a0, gp<br> [0x80000874]:sd a0, 256(ra)<br>   |
