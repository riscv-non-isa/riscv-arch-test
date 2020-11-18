
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002ab0')]      |
| SIG_REGION                | [('0x80004208', '0x80004fa8', '436 dwords')]      |
| COV_LABELS                | caddiw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddiw-01.S/caddiw-01.S    |
| Total Number of coverpoints| 496     |
| Total Coverpoints Hit     | 496      |
| Total Signature Updates   | 436      |
| STAT1                     | 436      |
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

|s.no|            signature             |                                               coverpoints                                               |                               code                               |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80004208]<br>0x000000000000000E|- opcode : c.addiw<br> - rd : x23<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br>         |[0x8000039c]:c.addiw s7, 7<br> [0x8000039e]:sd s7, 0(tp)<br>      |
|   2|[0x80004210]<br>0xFFFFFFFFFFFBFFF5|- rd : x16<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -262145<br>       |[0x800003aa]:c.addiw a6, 54<br> [0x800003ac]:sd a6, 8(tp)<br>     |
|   3|[0x80004218]<br>0x0000000007FFFFF9|- rd : x17<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 134217728<br>                              |[0x800003b4]:c.addiw a7, 57<br> [0x800003b6]:sd a7, 16(tp)<br>    |
|   4|[0x80004220]<br>0xFFFFFFFFFFF80004|- rd : x12<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -524289<br>                                |[0x800003c2]:c.addiw a2, 5<br> [0x800003c4]:sd a2, 24(tp)<br>     |
|   5|[0x80004228]<br>0xFFFFFFFFFFFFFFE0|- rd : x3<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == 2251799813685248<br>        |[0x800003d0]:c.addiw gp, 32<br> [0x800003d2]:sd gp, 32(tp)<br>    |
|   6|[0x80004230]<br>0xFFFFFFFFFFFFFFFD|- rd : x25<br> - imm_val == 0<br> - rs1_val == -3<br>                                                    |[0x800003da]:c.addiw s9, 0<br> [0x800003dc]:sd s9, 40(tp)<br>     |
|   7|[0x80004238]<br>0x000000000000001E|- rd : x29<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == -4503599627370497<br>      |[0x800003ec]:c.addiw t4, 31<br> [0x800003ee]:sd t4, 48(tp)<br>    |
|   8|[0x80004240]<br>0xFFFFFFFFFFFFFFF8|- rd : x10<br> - imm_val == 1<br> - rs1_val == -9<br>                                                    |[0x800003f6]:c.addiw a0, 1<br> [0x800003f8]:sd a0, 56(tp)<br>     |
|   9|[0x80004248]<br>0xFFFFFFFFFFFFFFFB|- rd : x30<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == -5<br> - rs1_val == -9223372036854775808<br> |[0x80000404]:c.addiw t5, 59<br> [0x80000406]:sd t5, 64(tp)<br>    |
|  10|[0x80004250]<br>0x0000000000000002|- rd : x22<br> - rs1_val == 0<br> - imm_val == 2<br> - rs1_val==0 and imm_val==2<br>                     |[0x8000040e]:c.addiw s6, 2<br> [0x80000410]:sd s6, 72(tp)<br>     |
|  11|[0x80004258]<br>0x000000000000001E|- rd : x28<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                     |[0x80000420]:c.addiw t3, 31<br> [0x80000422]:sd t3, 80(tp)<br>    |
|  12|[0x80004260]<br>0xFFFFFFFFFFFFFFF9|- rd : x27<br> - rs1_val == 1<br>                                                                        |[0x8000042a]:c.addiw s11, 56<br> [0x8000042c]:sd s11, 88(tp)<br>  |
|  13|[0x80004268]<br>0x0000000000000003|- rd : x2<br> - imm_val == 4<br> - rs1_val == -2251799813685249<br>                                      |[0x8000043c]:c.addiw sp, 4<br> [0x8000043e]:sd sp, 96(tp)<br>     |
|  14|[0x80004270]<br>0x0000000000000007|- rd : x9<br> - imm_val == 8<br> - rs1_val == -274877906945<br>                                          |[0x8000044e]:c.addiw s1, 8<br> [0x80000450]:sd s1, 104(tp)<br>    |
|  15|[0x80004278]<br>0x0000000000000010|- rd : x20<br> - imm_val == 16<br> - rs1_val == 140737488355328<br>                                      |[0x8000045c]:c.addiw s4, 16<br> [0x8000045e]:sd s4, 112(tp)<br>   |
|  16|[0x80004280]<br>0xFFFFFFFFFFFFFFFD|- rd : x1<br> - imm_val == -2<br> - rs1_val == -281474976710657<br>                                      |[0x8000046e]:c.addiw ra, 62<br> [0x80000470]:sd ra, 120(tp)<br>   |
|  17|[0x80004288]<br>0x000000000003FFFD|- rd : x5<br> - imm_val == -3<br> - rs1_val == 262144<br>                                                |[0x80000478]:c.addiw t0, 61<br> [0x8000047a]:sd t0, 128(tp)<br>   |
|  18|[0x80004290]<br>0xFFFFFFFFFFFFFFF7|- rd : x15<br> - imm_val == -9<br>                                                                       |[0x80000482]:c.addiw a5, 55<br> [0x80000484]:sd a5, 136(tp)<br>   |
|  19|[0x80004298]<br>0xFFFFFFFFFFFFFFEF|- rd : x31<br> - imm_val == -17<br> - rs1_val == 17592186044416<br>                                      |[0x80000490]:c.addiw t6, 47<br> [0x80000492]:sd t6, 144(tp)<br>   |
|  20|[0x800042a0]<br>0x0000000000000055|- rd : x26<br> - imm_val == 21<br> - rs1_val == 64<br>                                                   |[0x8000049a]:c.addiw s10, 21<br> [0x8000049c]:sd s10, 152(tp)<br> |
|  21|[0x800042a8]<br>0xFFFFFFFFFFFFFFEA|- rd : x18<br> - imm_val == -22<br> - rs1_val == 4398046511104<br>                                       |[0x800004a8]:c.addiw s2, 42<br> [0x800004aa]:sd s2, 160(tp)<br>   |
|  22|[0x800042b0]<br>0x0000000000000006|- rd : x13<br> - rs1_val==3 and imm_val==3<br>                                                           |[0x800004b2]:c.addiw a3, 3<br> [0x800004b4]:sd a3, 168(tp)<br>    |
|  23|[0x800042b8]<br>0x0000000000000008|- rd : x21<br> - rs1_val==3 and imm_val==5<br>                                                           |[0x800004bc]:c.addiw s5, 5<br> [0x800004be]:sd s5, 176(tp)<br>    |
|  24|[0x800042c0]<br>0x000000000000000D|- rd : x19<br> - rs1_val==3 and imm_val==10<br>                                                          |[0x800004c6]:c.addiw s3, 10<br> [0x800004c8]:sd s3, 184(tp)<br>   |
|  25|[0x800042c8]<br>0x0000000000000009|- rd : x8<br> - rs1_val==3 and imm_val==6<br>                                                            |[0x800004d0]:c.addiw fp, 6<br> [0x800004d2]:sd fp, 192(tp)<br>    |
|  26|[0x800042d0]<br>0x0000000000000001|- rd : x6<br> - rs1_val==3 and imm_val==-2<br>                                                           |[0x800004da]:c.addiw t1, 62<br> [0x800004dc]:sd t1, 200(tp)<br>   |
|  27|[0x800042d8]<br>0xFFFFFFFFFFFFFFFE|- rd : x11<br> - rs1_val==3 and imm_val==-5<br>                                                          |[0x800004e4]:c.addiw a1, 59<br> [0x800004e6]:sd a1, 208(tp)<br>   |
|  28|[0x800042e0]<br>0x0000000000000005|- rd : x14<br> - rs1_val==3 and imm_val==2<br>                                                           |[0x800004ee]:c.addiw a4, 2<br> [0x800004f0]:sd a4, 216(tp)<br>    |
|  29|[0x800042e8]<br>0x0000000000000007|- rd : x4<br> - rs1_val==3 and imm_val==4<br>                                                            |[0x80000500]:c.addiw tp, 4<br> [0x80000502]:sd tp, 0(ra)<br>      |
|  30|[0x800042f0]<br>0x000000000000000C|- rd : x24<br> - rs1_val==3 and imm_val==9<br>                                                           |[0x8000050a]:c.addiw s8, 9<br> [0x8000050c]:sd s8, 8(ra)<br>      |
|  31|[0x800042f8]<br>0x0000000000000003|- rd : x7<br> - rs1_val==3 and imm_val==0<br>                                                            |[0x80000514]:c.addiw t2, 0<br> [0x80000516]:sd t2, 16(ra)<br>     |
|  32|[0x80004300]<br>0x000000000000000E|- rs1_val==3 and imm_val==11<br>                                                                         |[0x8000051e]:c.addiw a0, 11<br> [0x80000520]:sd a0, 24(ra)<br>    |
|  33|[0x80004308]<br>0x000000000000000A|- rs1_val==3 and imm_val==7<br>                                                                          |[0x80000528]:c.addiw a0, 7<br> [0x8000052a]:sd a0, 32(ra)<br>     |
|  34|[0x80004310]<br>0x0000000000000002|- rs1_val==3 and imm_val==-1<br>                                                                         |[0x80000532]:c.addiw a0, 63<br> [0x80000534]:sd a0, 40(ra)<br>    |
|  35|[0x80004318]<br>0xFFFFFFFFFFFFFFFF|- rs1_val==3 and imm_val==-4<br>                                                                         |[0x8000053c]:c.addiw a0, 60<br> [0x8000053e]:sd a0, 48(ra)<br>    |
|  36|[0x80004320]<br>0x0000000055555558|- rs1_val==6148914691236517205 and imm_val==3<br> - rs1_val == 6148914691236517205<br>                   |[0x80000562]:c.addiw a0, 3<br> [0x80000564]:sd a0, 56(ra)<br>     |
|  37|[0x80004328]<br>0x000000005555555A|- rs1_val==6148914691236517205 and imm_val==5<br>                                                        |[0x80000588]:c.addiw a0, 5<br> [0x8000058a]:sd a0, 64(ra)<br>     |
|  38|[0x80004330]<br>0x000000005555555F|- rs1_val==6148914691236517205 and imm_val==10<br>                                                       |[0x800005ae]:c.addiw a0, 10<br> [0x800005b0]:sd a0, 72(ra)<br>    |
|  39|[0x80004338]<br>0x000000005555555B|- rs1_val==6148914691236517205 and imm_val==6<br>                                                        |[0x800005d4]:c.addiw a0, 6<br> [0x800005d6]:sd a0, 80(ra)<br>     |
|  40|[0x80004340]<br>0x0000000055555553|- rs1_val==6148914691236517205 and imm_val==-2<br>                                                       |[0x800005fa]:c.addiw a0, 62<br> [0x800005fc]:sd a0, 88(ra)<br>    |
|  41|[0x80004348]<br>0x0000000055555550|- rs1_val==6148914691236517205 and imm_val==-5<br>                                                       |[0x80000620]:c.addiw a0, 59<br> [0x80000622]:sd a0, 96(ra)<br>    |
|  42|[0x80004350]<br>0x0000000055555557|- rs1_val==6148914691236517205 and imm_val==2<br>                                                        |[0x80000646]:c.addiw a0, 2<br> [0x80000648]:sd a0, 104(ra)<br>    |
|  43|[0x80004358]<br>0x0000000055555559|- rs1_val==6148914691236517205 and imm_val==4<br>                                                        |[0x8000066c]:c.addiw a0, 4<br> [0x8000066e]:sd a0, 112(ra)<br>    |
|  44|[0x80004360]<br>0x000000005555555E|- rs1_val==6148914691236517205 and imm_val==9<br>                                                        |[0x80000692]:c.addiw a0, 9<br> [0x80000694]:sd a0, 120(ra)<br>    |
|  45|[0x80004368]<br>0x0000000055555555|- rs1_val==6148914691236517205 and imm_val==0<br>                                                        |[0x800006b8]:c.addiw a0, 0<br> [0x800006ba]:sd a0, 128(ra)<br>    |
|  46|[0x80004370]<br>0x0000000055555560|- rs1_val==6148914691236517205 and imm_val==11<br>                                                       |[0x800006de]:c.addiw a0, 11<br> [0x800006e0]:sd a0, 136(ra)<br>   |
|  47|[0x80004378]<br>0x000000005555555C|- rs1_val==6148914691236517205 and imm_val==7<br>                                                        |[0x80000704]:c.addiw a0, 7<br> [0x80000706]:sd a0, 144(ra)<br>    |
|  48|[0x80004380]<br>0x0000000055555554|- rs1_val==6148914691236517205 and imm_val==-1<br>                                                       |[0x8000072a]:c.addiw a0, 63<br> [0x8000072c]:sd a0, 152(ra)<br>   |
|  49|[0x80004388]<br>0x0000000055555551|- rs1_val==6148914691236517205 and imm_val==-4<br>                                                       |[0x80000750]:c.addiw a0, 60<br> [0x80000752]:sd a0, 160(ra)<br>   |
|  50|[0x80004390]<br>0xFFFFFFFFAAAAAAAD|- rs1_val==-6148914691236517206 and imm_val==3<br> - rs1_val == -6148914691236517206<br>                 |[0x80000776]:c.addiw a0, 3<br> [0x80000778]:sd a0, 168(ra)<br>    |
|  51|[0x80004398]<br>0xFFFFFFFFAAAAAAAF|- rs1_val==-6148914691236517206 and imm_val==5<br>                                                       |[0x8000079c]:c.addiw a0, 5<br> [0x8000079e]:sd a0, 176(ra)<br>    |
|  52|[0x800043a0]<br>0xFFFFFFFFAAAAAAB4|- rs1_val==-6148914691236517206 and imm_val==10<br>                                                      |[0x800007c2]:c.addiw a0, 10<br> [0x800007c4]:sd a0, 184(ra)<br>   |
|  53|[0x800043a8]<br>0xFFFFFFFFAAAAAAB0|- rs1_val==-6148914691236517206 and imm_val==6<br>                                                       |[0x800007e8]:c.addiw a0, 6<br> [0x800007ea]:sd a0, 192(ra)<br>    |
|  54|[0x800043b0]<br>0xFFFFFFFFAAAAAAA8|- rs1_val==-6148914691236517206 and imm_val==-2<br>                                                      |[0x8000080e]:c.addiw a0, 62<br> [0x80000810]:sd a0, 200(ra)<br>   |
|  55|[0x800043b8]<br>0xFFFFFFFFAAAAAAA5|- rs1_val==-6148914691236517206 and imm_val==-5<br>                                                      |[0x80000834]:c.addiw a0, 59<br> [0x80000836]:sd a0, 208(ra)<br>   |
|  56|[0x800043c0]<br>0xFFFFFFFFAAAAAAAC|- rs1_val==-6148914691236517206 and imm_val==2<br>                                                       |[0x8000085a]:c.addiw a0, 2<br> [0x8000085c]:sd a0, 216(ra)<br>    |
|  57|[0x800043c8]<br>0xFFFFFFFFAAAAAAAE|- rs1_val==-6148914691236517206 and imm_val==4<br>                                                       |[0x80000880]:c.addiw a0, 4<br> [0x80000882]:sd a0, 224(ra)<br>    |
|  58|[0x800043d0]<br>0xFFFFFFFFAAAAAAB3|- rs1_val==-6148914691236517206 and imm_val==9<br>                                                       |[0x800008a6]:c.addiw a0, 9<br> [0x800008a8]:sd a0, 232(ra)<br>    |
|  59|[0x800043d8]<br>0xFFFFFFFFAAAAAAAA|- rs1_val==-6148914691236517206 and imm_val==0<br>                                                       |[0x800008cc]:c.addiw a0, 0<br> [0x800008ce]:sd a0, 240(ra)<br>    |
|  60|[0x800043e0]<br>0xFFFFFFFFAAAAAAB5|- rs1_val==-6148914691236517206 and imm_val==11<br>                                                      |[0x800008f2]:c.addiw a0, 11<br> [0x800008f4]:sd a0, 248(ra)<br>   |
|  61|[0x800043e8]<br>0xFFFFFFFFAAAAAAB1|- rs1_val==-6148914691236517206 and imm_val==7<br>                                                       |[0x80000918]:c.addiw a0, 7<br> [0x8000091a]:sd a0, 256(ra)<br>    |
|  62|[0x800043f0]<br>0xFFFFFFFFAAAAAAA9|- rs1_val==-6148914691236517206 and imm_val==-1<br>                                                      |[0x8000093e]:c.addiw a0, 63<br> [0x80000940]:sd a0, 264(ra)<br>   |
|  63|[0x800043f8]<br>0xFFFFFFFFAAAAAAA6|- rs1_val==-6148914691236517206 and imm_val==-4<br>                                                      |[0x80000964]:c.addiw a0, 60<br> [0x80000966]:sd a0, 272(ra)<br>   |
|  64|[0x80004400]<br>0x0000000000000008|- rs1_val==5 and imm_val==3<br>                                                                          |[0x8000096e]:c.addiw a0, 3<br> [0x80000970]:sd a0, 280(ra)<br>    |
|  65|[0x80004408]<br>0x000000000000000A|- rs1_val==5 and imm_val==5<br>                                                                          |[0x80000978]:c.addiw a0, 5<br> [0x8000097a]:sd a0, 288(ra)<br>    |
|  66|[0x80004410]<br>0x000000000000000F|- rs1_val==5 and imm_val==10<br>                                                                         |[0x80000982]:c.addiw a0, 10<br> [0x80000984]:sd a0, 296(ra)<br>   |
|  67|[0x80004418]<br>0x000000000000000B|- rs1_val==5 and imm_val==6<br>                                                                          |[0x8000098c]:c.addiw a0, 6<br> [0x8000098e]:sd a0, 304(ra)<br>    |
|  68|[0x80004420]<br>0x0000000000000003|- rs1_val==5 and imm_val==-2<br>                                                                         |[0x80000996]:c.addiw a0, 62<br> [0x80000998]:sd a0, 312(ra)<br>   |
|  69|[0x80004428]<br>0x0000000000000000|- rs1_val==5 and imm_val==-5<br>                                                                         |[0x800009a0]:c.addiw a0, 59<br> [0x800009a2]:sd a0, 320(ra)<br>   |
|  70|[0x80004430]<br>0x0000000000000007|- rs1_val==5 and imm_val==2<br>                                                                          |[0x800009aa]:c.addiw a0, 2<br> [0x800009ac]:sd a0, 328(ra)<br>    |
|  71|[0x80004438]<br>0x0000000000000009|- rs1_val==5 and imm_val==4<br>                                                                          |[0x800009b4]:c.addiw a0, 4<br> [0x800009b6]:sd a0, 336(ra)<br>    |
|  72|[0x80004440]<br>0x000000000000000E|- rs1_val==5 and imm_val==9<br>                                                                          |[0x800009be]:c.addiw a0, 9<br> [0x800009c0]:sd a0, 344(ra)<br>    |
|  73|[0x80004448]<br>0x0000000000000005|- rs1_val==5 and imm_val==0<br>                                                                          |[0x800009c8]:c.addiw a0, 0<br> [0x800009ca]:sd a0, 352(ra)<br>    |
|  74|[0x80004450]<br>0x0000000000000010|- rs1_val==5 and imm_val==11<br>                                                                         |[0x800009d2]:c.addiw a0, 11<br> [0x800009d4]:sd a0, 360(ra)<br>   |
|  75|[0x80004458]<br>0x000000000000000C|- rs1_val==5 and imm_val==7<br>                                                                          |[0x800009dc]:c.addiw a0, 7<br> [0x800009de]:sd a0, 368(ra)<br>    |
|  76|[0x80004460]<br>0x0000000000000004|- rs1_val==5 and imm_val==-1<br>                                                                         |[0x800009e6]:c.addiw a0, 63<br> [0x800009e8]:sd a0, 376(ra)<br>   |
|  77|[0x80004468]<br>0x0000000000000001|- rs1_val==5 and imm_val==-4<br>                                                                         |[0x800009f0]:c.addiw a0, 60<br> [0x800009f2]:sd a0, 384(ra)<br>   |
|  78|[0x80004470]<br>0x0000000033333336|- rs1_val==3689348814741910323 and imm_val==3<br>                                                        |[0x80000a16]:c.addiw a0, 3<br> [0x80000a18]:sd a0, 392(ra)<br>    |
|  79|[0x80004478]<br>0x0000000033333338|- rs1_val==3689348814741910323 and imm_val==5<br>                                                        |[0x80000a3c]:c.addiw a0, 5<br> [0x80000a3e]:sd a0, 400(ra)<br>    |
|  80|[0x80004480]<br>0x000000003333333D|- rs1_val==3689348814741910323 and imm_val==10<br>                                                       |[0x80000a62]:c.addiw a0, 10<br> [0x80000a64]:sd a0, 408(ra)<br>   |
|  81|[0x80004488]<br>0x0000000033333339|- rs1_val==3689348814741910323 and imm_val==6<br>                                                        |[0x80000a88]:c.addiw a0, 6<br> [0x80000a8a]:sd a0, 416(ra)<br>    |
|  82|[0x80004490]<br>0x0000000033333331|- rs1_val==3689348814741910323 and imm_val==-2<br>                                                       |[0x80000aae]:c.addiw a0, 62<br> [0x80000ab0]:sd a0, 424(ra)<br>   |
|  83|[0x80004498]<br>0x000000003333332E|- rs1_val==3689348814741910323 and imm_val==-5<br>                                                       |[0x80000ad4]:c.addiw a0, 59<br> [0x80000ad6]:sd a0, 432(ra)<br>   |
|  84|[0x800044a0]<br>0x0000000033333335|- rs1_val==3689348814741910323 and imm_val==2<br>                                                        |[0x80000afa]:c.addiw a0, 2<br> [0x80000afc]:sd a0, 440(ra)<br>    |
|  85|[0x800044a8]<br>0x0000000033333337|- rs1_val==3689348814741910323 and imm_val==4<br>                                                        |[0x80000b20]:c.addiw a0, 4<br> [0x80000b22]:sd a0, 448(ra)<br>    |
|  86|[0x800044b0]<br>0x000000003333333C|- rs1_val==3689348814741910323 and imm_val==9<br>                                                        |[0x80000b46]:c.addiw a0, 9<br> [0x80000b48]:sd a0, 456(ra)<br>    |
|  87|[0x800044b8]<br>0x0000000033333333|- rs1_val==3689348814741910323 and imm_val==0<br>                                                        |[0x80000b6c]:c.addiw a0, 0<br> [0x80000b6e]:sd a0, 464(ra)<br>    |
|  88|[0x800044c0]<br>0x000000003333333E|- rs1_val==3689348814741910323 and imm_val==11<br>                                                       |[0x80000b92]:c.addiw a0, 11<br> [0x80000b94]:sd a0, 472(ra)<br>   |
|  89|[0x800044c8]<br>0x000000003333333A|- rs1_val==3689348814741910323 and imm_val==7<br>                                                        |[0x80000bb8]:c.addiw a0, 7<br> [0x80000bba]:sd a0, 480(ra)<br>    |
|  90|[0x800044d0]<br>0x0000000033333332|- rs1_val==3689348814741910323 and imm_val==-1<br>                                                       |[0x80000bde]:c.addiw a0, 63<br> [0x80000be0]:sd a0, 488(ra)<br>   |
|  91|[0x800044d8]<br>0x000000003333332F|- rs1_val==3689348814741910323 and imm_val==-4<br>                                                       |[0x80000c04]:c.addiw a0, 60<br> [0x80000c06]:sd a0, 496(ra)<br>   |
|  92|[0x800044e0]<br>0x0000000066666669|- rs1_val==7378697629483820646 and imm_val==3<br>                                                        |[0x80000c2a]:c.addiw a0, 3<br> [0x80000c2c]:sd a0, 504(ra)<br>    |
|  93|[0x800044e8]<br>0x000000006666666B|- rs1_val==7378697629483820646 and imm_val==5<br>                                                        |[0x80000c50]:c.addiw a0, 5<br> [0x80000c52]:sd a0, 512(ra)<br>    |
|  94|[0x800044f0]<br>0x0000000066666670|- rs1_val==7378697629483820646 and imm_val==10<br>                                                       |[0x80000c76]:c.addiw a0, 10<br> [0x80000c78]:sd a0, 520(ra)<br>   |
|  95|[0x800044f8]<br>0x000000006666666C|- rs1_val==7378697629483820646 and imm_val==6<br>                                                        |[0x80000c9c]:c.addiw a0, 6<br> [0x80000c9e]:sd a0, 528(ra)<br>    |
|  96|[0x80004500]<br>0x0000000066666664|- rs1_val==7378697629483820646 and imm_val==-2<br>                                                       |[0x80000cc2]:c.addiw a0, 62<br> [0x80000cc4]:sd a0, 536(ra)<br>   |
|  97|[0x80004508]<br>0x0000000066666661|- rs1_val==7378697629483820646 and imm_val==-5<br>                                                       |[0x80000ce8]:c.addiw a0, 59<br> [0x80000cea]:sd a0, 544(ra)<br>   |
|  98|[0x80004510]<br>0x0000000066666668|- rs1_val==7378697629483820646 and imm_val==2<br>                                                        |[0x80000d0e]:c.addiw a0, 2<br> [0x80000d10]:sd a0, 552(ra)<br>    |
|  99|[0x80004518]<br>0x000000006666666A|- rs1_val==7378697629483820646 and imm_val==4<br>                                                        |[0x80000d34]:c.addiw a0, 4<br> [0x80000d36]:sd a0, 560(ra)<br>    |
| 100|[0x80004520]<br>0x000000006666666F|- rs1_val==7378697629483820646 and imm_val==9<br>                                                        |[0x80000d5a]:c.addiw a0, 9<br> [0x80000d5c]:sd a0, 568(ra)<br>    |
| 101|[0x80004528]<br>0x0000000066666666|- rs1_val==7378697629483820646 and imm_val==0<br>                                                        |[0x80000d80]:c.addiw a0, 0<br> [0x80000d82]:sd a0, 576(ra)<br>    |
| 102|[0x80004530]<br>0x0000000066666671|- rs1_val==7378697629483820646 and imm_val==11<br>                                                       |[0x80000da6]:c.addiw a0, 11<br> [0x80000da8]:sd a0, 584(ra)<br>   |
| 103|[0x80004538]<br>0x000000006666666D|- rs1_val==7378697629483820646 and imm_val==7<br>                                                        |[0x80000dcc]:c.addiw a0, 7<br> [0x80000dce]:sd a0, 592(ra)<br>    |
| 104|[0x80004540]<br>0x0000000066666665|- rs1_val==7378697629483820646 and imm_val==-1<br>                                                       |[0x80000df2]:c.addiw a0, 63<br> [0x80000df4]:sd a0, 600(ra)<br>   |
| 105|[0x80004548]<br>0x0000000066666662|- rs1_val==7378697629483820646 and imm_val==-4<br>                                                       |[0x80000e18]:c.addiw a0, 60<br> [0x80000e1a]:sd a0, 608(ra)<br>   |
| 106|[0x80004550]<br>0x000000004AFB0CD0|- rs1_val==-3037000499 and imm_val==3<br>                                                                |[0x80000e2e]:c.addiw a0, 3<br> [0x80000e30]:sd a0, 616(ra)<br>    |
| 107|[0x80004558]<br>0x000000004AFB0CD2|- rs1_val==-3037000499 and imm_val==5<br>                                                                |[0x80000e44]:c.addiw a0, 5<br> [0x80000e46]:sd a0, 624(ra)<br>    |
| 108|[0x80004560]<br>0x000000004AFB0CD7|- rs1_val==-3037000499 and imm_val==10<br>                                                               |[0x80000e5a]:c.addiw a0, 10<br> [0x80000e5c]:sd a0, 632(ra)<br>   |
| 109|[0x80004568]<br>0x000000004AFB0CD3|- rs1_val==-3037000499 and imm_val==6<br>                                                                |[0x80000e70]:c.addiw a0, 6<br> [0x80000e72]:sd a0, 640(ra)<br>    |
| 110|[0x80004570]<br>0x000000004AFB0CCB|- rs1_val==-3037000499 and imm_val==-2<br>                                                               |[0x80000e86]:c.addiw a0, 62<br> [0x80000e88]:sd a0, 648(ra)<br>   |
| 111|[0x80004578]<br>0x000000004AFB0CC8|- rs1_val==-3037000499 and imm_val==-5<br>                                                               |[0x80000e9c]:c.addiw a0, 59<br> [0x80000e9e]:sd a0, 656(ra)<br>   |
| 112|[0x80004580]<br>0x000000004AFB0CCF|- rs1_val==-3037000499 and imm_val==2<br>                                                                |[0x80000eb2]:c.addiw a0, 2<br> [0x80000eb4]:sd a0, 664(ra)<br>    |
| 113|[0x80004588]<br>0x000000004AFB0CD1|- rs1_val==-3037000499 and imm_val==4<br>                                                                |[0x80000ec8]:c.addiw a0, 4<br> [0x80000eca]:sd a0, 672(ra)<br>    |
| 114|[0x80004590]<br>0x000000004AFB0CD6|- rs1_val==-3037000499 and imm_val==9<br>                                                                |[0x80000ede]:c.addiw a0, 9<br> [0x80000ee0]:sd a0, 680(ra)<br>    |
| 115|[0x80004598]<br>0x000000004AFB0CCD|- rs1_val==-3037000499 and imm_val==0<br>                                                                |[0x80000ef4]:c.addiw a0, 0<br> [0x80000ef6]:sd a0, 688(ra)<br>    |
| 116|[0x800045a0]<br>0x000000004AFB0CD8|- rs1_val==-3037000499 and imm_val==11<br>                                                               |[0x80000f0a]:c.addiw a0, 11<br> [0x80000f0c]:sd a0, 696(ra)<br>   |
| 117|[0x800045a8]<br>0x000000004AFB0CD4|- rs1_val==-3037000499 and imm_val==7<br>                                                                |[0x80000f20]:c.addiw a0, 7<br> [0x80000f22]:sd a0, 704(ra)<br>    |
| 118|[0x800045b0]<br>0x000000004AFB0CCC|- rs1_val==-3037000499 and imm_val==-1<br>                                                               |[0x80000f36]:c.addiw a0, 63<br> [0x80000f38]:sd a0, 712(ra)<br>   |
| 119|[0x800045b8]<br>0x000000004AFB0CC9|- rs1_val==-3037000499 and imm_val==-4<br>                                                               |[0x80000f4c]:c.addiw a0, 60<br> [0x80000f4e]:sd a0, 720(ra)<br>   |
| 120|[0x800045c0]<br>0xFFFFFFFFB504F336|- rs1_val==3037000499 and imm_val==3<br>                                                                 |[0x80000f62]:c.addiw a0, 3<br> [0x80000f64]:sd a0, 728(ra)<br>    |
| 121|[0x800045c8]<br>0xFFFFFFFFB504F338|- rs1_val==3037000499 and imm_val==5<br>                                                                 |[0x80000f78]:c.addiw a0, 5<br> [0x80000f7a]:sd a0, 736(ra)<br>    |
| 122|[0x800045d0]<br>0xFFFFFFFFB504F33D|- rs1_val==3037000499 and imm_val==10<br>                                                                |[0x80000f8e]:c.addiw a0, 10<br> [0x80000f90]:sd a0, 744(ra)<br>   |
| 123|[0x800045d8]<br>0xFFFFFFFFB504F339|- rs1_val==3037000499 and imm_val==6<br>                                                                 |[0x80000fa4]:c.addiw a0, 6<br> [0x80000fa6]:sd a0, 752(ra)<br>    |
| 124|[0x800045e0]<br>0xFFFFFFFFB504F331|- rs1_val==3037000499 and imm_val==-2<br>                                                                |[0x80000fba]:c.addiw a0, 62<br> [0x80000fbc]:sd a0, 760(ra)<br>   |
| 125|[0x800045e8]<br>0xFFFFFFFFB504F32E|- rs1_val==3037000499 and imm_val==-5<br>                                                                |[0x80000fd0]:c.addiw a0, 59<br> [0x80000fd2]:sd a0, 768(ra)<br>   |
| 126|[0x800045f0]<br>0xFFFFFFFFB504F335|- rs1_val==3037000499 and imm_val==2<br>                                                                 |[0x80000fe6]:c.addiw a0, 2<br> [0x80000fe8]:sd a0, 776(ra)<br>    |
| 127|[0x800045f8]<br>0xFFFFFFFFB504F337|- rs1_val==3037000499 and imm_val==4<br>                                                                 |[0x80000ffc]:c.addiw a0, 4<br> [0x80000ffe]:sd a0, 784(ra)<br>    |
| 128|[0x80004600]<br>0xFFFFFFFFB504F33C|- rs1_val==3037000499 and imm_val==9<br>                                                                 |[0x80001012]:c.addiw a0, 9<br> [0x80001014]:sd a0, 792(ra)<br>    |
| 129|[0x80004608]<br>0xFFFFFFFFB504F333|- rs1_val==3037000499 and imm_val==0<br>                                                                 |[0x80001028]:c.addiw a0, 0<br> [0x8000102a]:sd a0, 800(ra)<br>    |
| 130|[0x80004610]<br>0xFFFFFFFFB504F33E|- rs1_val==3037000499 and imm_val==11<br>                                                                |[0x8000103e]:c.addiw a0, 11<br> [0x80001040]:sd a0, 808(ra)<br>   |
| 131|[0x80004618]<br>0xFFFFFFFFB504F33A|- rs1_val==3037000499 and imm_val==7<br>                                                                 |[0x80001054]:c.addiw a0, 7<br> [0x80001056]:sd a0, 816(ra)<br>    |
| 132|[0x80004620]<br>0xFFFFFFFFB504F332|- rs1_val==3037000499 and imm_val==-1<br>                                                                |[0x8000106a]:c.addiw a0, 63<br> [0x8000106c]:sd a0, 824(ra)<br>   |
| 133|[0x80004628]<br>0xFFFFFFFFB504F32F|- rs1_val==3037000499 and imm_val==-4<br>                                                                |[0x80001080]:c.addiw a0, 60<br> [0x80001082]:sd a0, 832(ra)<br>   |
| 134|[0x80004630]<br>0x0000000000000005|- rs1_val==2 and imm_val==3<br> - rs1_val == 2<br>                                                       |[0x8000108a]:c.addiw a0, 3<br> [0x8000108c]:sd a0, 840(ra)<br>    |
| 135|[0x80004638]<br>0x0000000000000007|- rs1_val==2 and imm_val==5<br>                                                                          |[0x80001094]:c.addiw a0, 5<br> [0x80001096]:sd a0, 848(ra)<br>    |
| 136|[0x80004640]<br>0x000000000000000C|- rs1_val==2 and imm_val==10<br>                                                                         |[0x8000109e]:c.addiw a0, 10<br> [0x800010a0]:sd a0, 856(ra)<br>   |
| 137|[0x80004648]<br>0x0000000000000008|- rs1_val==2 and imm_val==6<br>                                                                          |[0x800010a8]:c.addiw a0, 6<br> [0x800010aa]:sd a0, 864(ra)<br>    |
| 138|[0x80004650]<br>0x0000000000000000|- rs1_val==2 and imm_val==-2<br>                                                                         |[0x800010b2]:c.addiw a0, 62<br> [0x800010b4]:sd a0, 872(ra)<br>   |
| 139|[0x80004658]<br>0xFFFFFFFFFFFFFFFD|- rs1_val==2 and imm_val==-5<br>                                                                         |[0x800010bc]:c.addiw a0, 59<br> [0x800010be]:sd a0, 880(ra)<br>   |
| 140|[0x80004660]<br>0x0000000000000004|- rs1_val==2 and imm_val==2<br>                                                                          |[0x800010c6]:c.addiw a0, 2<br> [0x800010c8]:sd a0, 888(ra)<br>    |
| 141|[0x80004668]<br>0x0000000000000006|- rs1_val==2 and imm_val==4<br>                                                                          |[0x800010d0]:c.addiw a0, 4<br> [0x800010d2]:sd a0, 896(ra)<br>    |
| 142|[0x80004670]<br>0x000000000000000B|- rs1_val==2 and imm_val==9<br>                                                                          |[0x800010da]:c.addiw a0, 9<br> [0x800010dc]:sd a0, 904(ra)<br>    |
| 143|[0x80004678]<br>0x0000000000000002|- rs1_val==2 and imm_val==0<br>                                                                          |[0x800010e4]:c.addiw a0, 0<br> [0x800010e6]:sd a0, 912(ra)<br>    |
| 144|[0x80004680]<br>0x000000000000000D|- rs1_val==2 and imm_val==11<br>                                                                         |[0x800010ee]:c.addiw a0, 11<br> [0x800010f0]:sd a0, 920(ra)<br>   |
| 145|[0x80004688]<br>0x0000000000000009|- rs1_val==2 and imm_val==7<br>                                                                          |[0x800010f8]:c.addiw a0, 7<br> [0x800010fa]:sd a0, 928(ra)<br>    |
| 146|[0x80004690]<br>0x0000000000000001|- rs1_val==2 and imm_val==-1<br>                                                                         |[0x80001102]:c.addiw a0, 63<br> [0x80001104]:sd a0, 936(ra)<br>   |
| 147|[0x80004698]<br>0xFFFFFFFFFFFFFFFE|- rs1_val==2 and imm_val==-4<br>                                                                         |[0x8000110c]:c.addiw a0, 60<br> [0x8000110e]:sd a0, 944(ra)<br>   |
| 148|[0x800046a0]<br>0x0000000055555557|- rs1_val==6148914691236517204 and imm_val==3<br>                                                        |[0x80001132]:c.addiw a0, 3<br> [0x80001134]:sd a0, 952(ra)<br>    |
| 149|[0x800046a8]<br>0x0000000055555559|- rs1_val==6148914691236517204 and imm_val==5<br>                                                        |[0x80001158]:c.addiw a0, 5<br> [0x8000115a]:sd a0, 960(ra)<br>    |
| 150|[0x800046b0]<br>0x000000005555555E|- rs1_val==6148914691236517204 and imm_val==10<br>                                                       |[0x8000117e]:c.addiw a0, 10<br> [0x80001180]:sd a0, 968(ra)<br>   |
| 151|[0x800046b8]<br>0x000000005555555A|- rs1_val==6148914691236517204 and imm_val==6<br>                                                        |[0x800011a4]:c.addiw a0, 6<br> [0x800011a6]:sd a0, 976(ra)<br>    |
| 152|[0x800046c0]<br>0x0000000055555552|- rs1_val==6148914691236517204 and imm_val==-2<br>                                                       |[0x800011ca]:c.addiw a0, 62<br> [0x800011cc]:sd a0, 984(ra)<br>   |
| 153|[0x800046c8]<br>0x000000005555554F|- rs1_val==6148914691236517204 and imm_val==-5<br>                                                       |[0x800011f0]:c.addiw a0, 59<br> [0x800011f2]:sd a0, 992(ra)<br>   |
| 154|[0x800046d0]<br>0x0000000055555556|- rs1_val==6148914691236517204 and imm_val==2<br>                                                        |[0x80001216]:c.addiw a0, 2<br> [0x80001218]:sd a0, 1000(ra)<br>   |
| 155|[0x800046d8]<br>0x0000000055555558|- rs1_val==6148914691236517204 and imm_val==4<br>                                                        |[0x8000123c]:c.addiw a0, 4<br> [0x8000123e]:sd a0, 1008(ra)<br>   |
| 156|[0x800046e0]<br>0x000000005555555D|- rs1_val==6148914691236517204 and imm_val==9<br>                                                        |[0x80001262]:c.addiw a0, 9<br> [0x80001264]:sd a0, 1016(ra)<br>   |
| 157|[0x800046e8]<br>0x0000000055555554|- rs1_val==6148914691236517204 and imm_val==0<br>                                                        |[0x80001288]:c.addiw a0, 0<br> [0x8000128a]:sd a0, 1024(ra)<br>   |
| 158|[0x800046f0]<br>0x000000005555555F|- rs1_val==6148914691236517204 and imm_val==11<br>                                                       |[0x800012ae]:c.addiw a0, 11<br> [0x800012b0]:sd a0, 1032(ra)<br>  |
| 159|[0x800046f8]<br>0x000000005555555B|- rs1_val==6148914691236517204 and imm_val==7<br>                                                        |[0x800012d4]:c.addiw a0, 7<br> [0x800012d6]:sd a0, 1040(ra)<br>   |
| 160|[0x80004700]<br>0x0000000055555553|- rs1_val==6148914691236517204 and imm_val==-1<br>                                                       |[0x800012fa]:c.addiw a0, 63<br> [0x800012fc]:sd a0, 1048(ra)<br>  |
| 161|[0x80004708]<br>0x0000000055555550|- rs1_val==6148914691236517204 and imm_val==-4<br>                                                       |[0x80001320]:c.addiw a0, 60<br> [0x80001322]:sd a0, 1056(ra)<br>  |
| 162|[0x80004710]<br>0x0000000000000003|- rs1_val==0 and imm_val==3<br>                                                                          |[0x8000132a]:c.addiw a0, 3<br> [0x8000132c]:sd a0, 1064(ra)<br>   |
| 163|[0x80004718]<br>0x0000000000000005|- rs1_val==0 and imm_val==5<br>                                                                          |[0x80001334]:c.addiw a0, 5<br> [0x80001336]:sd a0, 1072(ra)<br>   |
| 164|[0x80004720]<br>0x000000000000000A|- rs1_val==0 and imm_val==10<br>                                                                         |[0x8000133e]:c.addiw a0, 10<br> [0x80001340]:sd a0, 1080(ra)<br>  |
| 165|[0x80004728]<br>0x0000000000000006|- rs1_val==0 and imm_val==6<br>                                                                          |[0x80001348]:c.addiw a0, 6<br> [0x8000134a]:sd a0, 1088(ra)<br>   |
| 166|[0x80004730]<br>0xFFFFFFFFFFFFFFFE|- rs1_val==0 and imm_val==-2<br>                                                                         |[0x80001352]:c.addiw a0, 62<br> [0x80001354]:sd a0, 1096(ra)<br>  |
| 167|[0x80004738]<br>0xFFFFFFFFFFFFFFFB|- rs1_val==0 and imm_val==-5<br>                                                                         |[0x8000135c]:c.addiw a0, 59<br> [0x8000135e]:sd a0, 1104(ra)<br>  |
| 168|[0x80004740]<br>0x0000000000000004|- rs1_val==0 and imm_val==4<br>                                                                          |[0x80001366]:c.addiw a0, 4<br> [0x80001368]:sd a0, 1112(ra)<br>   |
| 169|[0x80004748]<br>0x0000000000000009|- rs1_val==0 and imm_val==9<br>                                                                          |[0x80001370]:c.addiw a0, 9<br> [0x80001372]:sd a0, 1120(ra)<br>   |
| 170|[0x80004750]<br>0x0000000000000000|- rs1_val==0 and imm_val==0<br>                                                                          |[0x8000137a]:c.addiw a0, 0<br> [0x8000137c]:sd a0, 1128(ra)<br>   |
| 171|[0x80004758]<br>0x000000000000000B|- rs1_val==0 and imm_val==11<br>                                                                         |[0x80001384]:c.addiw a0, 11<br> [0x80001386]:sd a0, 1136(ra)<br>  |
| 172|[0x80004760]<br>0x0000000000000007|- rs1_val==0 and imm_val==7<br>                                                                          |[0x8000138e]:c.addiw a0, 7<br> [0x80001390]:sd a0, 1144(ra)<br>   |
| 173|[0x80004768]<br>0xFFFFFFFFFFFFFFFF|- rs1_val==0 and imm_val==-1<br>                                                                         |[0x80001398]:c.addiw a0, 63<br> [0x8000139a]:sd a0, 1152(ra)<br>  |
| 174|[0x80004770]<br>0xFFFFFFFFFFFFFFFC|- rs1_val==0 and imm_val==-4<br>                                                                         |[0x800013a2]:c.addiw a0, 60<br> [0x800013a4]:sd a0, 1160(ra)<br>  |
| 175|[0x80004778]<br>0x0000000000000007|- rs1_val==4 and imm_val==3<br> - rs1_val == 4<br>                                                       |[0x800013ac]:c.addiw a0, 3<br> [0x800013ae]:sd a0, 1168(ra)<br>   |
| 176|[0x80004780]<br>0x0000000000000009|- rs1_val==4 and imm_val==5<br>                                                                          |[0x800013b6]:c.addiw a0, 5<br> [0x800013b8]:sd a0, 1176(ra)<br>   |
| 177|[0x80004788]<br>0x000000000000000E|- rs1_val==4 and imm_val==10<br>                                                                         |[0x800013c0]:c.addiw a0, 10<br> [0x800013c2]:sd a0, 1184(ra)<br>  |
| 178|[0x80004790]<br>0x000000000000000A|- rs1_val==4 and imm_val==6<br>                                                                          |[0x800013ca]:c.addiw a0, 6<br> [0x800013cc]:sd a0, 1192(ra)<br>   |
| 179|[0x80004798]<br>0x0000000000000002|- rs1_val==4 and imm_val==-2<br>                                                                         |[0x800013d4]:c.addiw a0, 62<br> [0x800013d6]:sd a0, 1200(ra)<br>  |
| 180|[0x800047a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val==4 and imm_val==-5<br>                                                                         |[0x800013de]:c.addiw a0, 59<br> [0x800013e0]:sd a0, 1208(ra)<br>  |
| 181|[0x800047a8]<br>0x0000000000000006|- rs1_val==4 and imm_val==2<br>                                                                          |[0x800013e8]:c.addiw a0, 2<br> [0x800013ea]:sd a0, 1216(ra)<br>   |
| 182|[0x800047b0]<br>0x0000000000000008|- rs1_val==4 and imm_val==4<br>                                                                          |[0x800013f2]:c.addiw a0, 4<br> [0x800013f4]:sd a0, 1224(ra)<br>   |
| 183|[0x800047b8]<br>0x000000000000000D|- rs1_val==4 and imm_val==9<br>                                                                          |[0x800013fc]:c.addiw a0, 9<br> [0x800013fe]:sd a0, 1232(ra)<br>   |
| 184|[0x800047c0]<br>0x0000000000000004|- rs1_val==4 and imm_val==0<br>                                                                          |[0x80001406]:c.addiw a0, 0<br> [0x80001408]:sd a0, 1240(ra)<br>   |
| 185|[0x800047c8]<br>0x000000000000000F|- rs1_val==4 and imm_val==11<br>                                                                         |[0x80001410]:c.addiw a0, 11<br> [0x80001412]:sd a0, 1248(ra)<br>  |
| 186|[0x800047d0]<br>0x000000000000000B|- rs1_val==4 and imm_val==7<br>                                                                          |[0x8000141a]:c.addiw a0, 7<br> [0x8000141c]:sd a0, 1256(ra)<br>   |
| 187|[0x800047d8]<br>0x0000000000000003|- rs1_val==4 and imm_val==-1<br>                                                                         |[0x80001424]:c.addiw a0, 63<br> [0x80001426]:sd a0, 1264(ra)<br>  |
| 188|[0x800047e0]<br>0x0000000000000000|- rs1_val==4 and imm_val==-4<br>                                                                         |[0x8000142e]:c.addiw a0, 60<br> [0x80001430]:sd a0, 1272(ra)<br>  |
| 189|[0x800047e8]<br>0x0000000033333335|- rs1_val==3689348814741910322 and imm_val==3<br>                                                        |[0x80001454]:c.addiw a0, 3<br> [0x80001456]:sd a0, 1280(ra)<br>   |
| 190|[0x800047f0]<br>0x0000000033333337|- rs1_val==3689348814741910322 and imm_val==5<br>                                                        |[0x8000147a]:c.addiw a0, 5<br> [0x8000147c]:sd a0, 1288(ra)<br>   |
| 191|[0x800047f8]<br>0x000000003333333C|- rs1_val==3689348814741910322 and imm_val==10<br>                                                       |[0x800014a0]:c.addiw a0, 10<br> [0x800014a2]:sd a0, 1296(ra)<br>  |
| 192|[0x80004800]<br>0x0000000033333338|- rs1_val==3689348814741910322 and imm_val==6<br>                                                        |[0x800014c6]:c.addiw a0, 6<br> [0x800014c8]:sd a0, 1304(ra)<br>   |
| 193|[0x80004808]<br>0x0000000033333330|- rs1_val==3689348814741910322 and imm_val==-2<br>                                                       |[0x800014ec]:c.addiw a0, 62<br> [0x800014ee]:sd a0, 1312(ra)<br>  |
| 194|[0x80004810]<br>0x000000003333332D|- rs1_val==3689348814741910322 and imm_val==-5<br>                                                       |[0x80001512]:c.addiw a0, 59<br> [0x80001514]:sd a0, 1320(ra)<br>  |
| 195|[0x80004818]<br>0x0000000033333334|- rs1_val==3689348814741910322 and imm_val==2<br>                                                        |[0x80001538]:c.addiw a0, 2<br> [0x8000153a]:sd a0, 1328(ra)<br>   |
| 196|[0x80004820]<br>0x0000000033333336|- rs1_val==3689348814741910322 and imm_val==4<br>                                                        |[0x8000155e]:c.addiw a0, 4<br> [0x80001560]:sd a0, 1336(ra)<br>   |
| 197|[0x80004828]<br>0x000000003333333B|- rs1_val==3689348814741910322 and imm_val==9<br>                                                        |[0x80001584]:c.addiw a0, 9<br> [0x80001586]:sd a0, 1344(ra)<br>   |
| 198|[0x80004830]<br>0x0000000033333332|- rs1_val==3689348814741910322 and imm_val==0<br>                                                        |[0x800015aa]:c.addiw a0, 0<br> [0x800015ac]:sd a0, 1352(ra)<br>   |
| 199|[0x80004838]<br>0x000000003333333D|- rs1_val==3689348814741910322 and imm_val==11<br>                                                       |[0x800015d0]:c.addiw a0, 11<br> [0x800015d2]:sd a0, 1360(ra)<br>  |
| 200|[0x80004840]<br>0x0000000033333339|- rs1_val==3689348814741910322 and imm_val==7<br>                                                        |[0x800015f6]:c.addiw a0, 7<br> [0x800015f8]:sd a0, 1368(ra)<br>   |
| 201|[0x80004848]<br>0x0000000033333331|- rs1_val==3689348814741910322 and imm_val==-1<br>                                                       |[0x8000161c]:c.addiw a0, 63<br> [0x8000161e]:sd a0, 1376(ra)<br>  |
| 202|[0x80004850]<br>0x000000003333332E|- rs1_val==3689348814741910322 and imm_val==-4<br>                                                       |[0x80001642]:c.addiw a0, 60<br> [0x80001644]:sd a0, 1384(ra)<br>  |
| 203|[0x80004858]<br>0x0000000066666668|- rs1_val==7378697629483820645 and imm_val==3<br>                                                        |[0x80001668]:c.addiw a0, 3<br> [0x8000166a]:sd a0, 1392(ra)<br>   |
| 204|[0x80004860]<br>0x000000006666666A|- rs1_val==7378697629483820645 and imm_val==5<br>                                                        |[0x8000168e]:c.addiw a0, 5<br> [0x80001690]:sd a0, 1400(ra)<br>   |
| 205|[0x80004868]<br>0x000000006666666F|- rs1_val==7378697629483820645 and imm_val==10<br>                                                       |[0x800016b4]:c.addiw a0, 10<br> [0x800016b6]:sd a0, 1408(ra)<br>  |
| 206|[0x80004870]<br>0x000000006666666B|- rs1_val==7378697629483820645 and imm_val==6<br>                                                        |[0x800016da]:c.addiw a0, 6<br> [0x800016dc]:sd a0, 1416(ra)<br>   |
| 207|[0x80004878]<br>0x0000000066666663|- rs1_val==7378697629483820645 and imm_val==-2<br>                                                       |[0x80001700]:c.addiw a0, 62<br> [0x80001702]:sd a0, 1424(ra)<br>  |
| 208|[0x80004880]<br>0x0000000066666660|- rs1_val==7378697629483820645 and imm_val==-5<br>                                                       |[0x80001726]:c.addiw a0, 59<br> [0x80001728]:sd a0, 1432(ra)<br>  |
| 209|[0x80004888]<br>0x0000000066666667|- rs1_val==7378697629483820645 and imm_val==2<br>                                                        |[0x8000174c]:c.addiw a0, 2<br> [0x8000174e]:sd a0, 1440(ra)<br>   |
| 210|[0x80004890]<br>0x0000000066666669|- rs1_val==7378697629483820645 and imm_val==4<br>                                                        |[0x80001772]:c.addiw a0, 4<br> [0x80001774]:sd a0, 1448(ra)<br>   |
| 211|[0x80004898]<br>0x000000006666666E|- rs1_val==7378697629483820645 and imm_val==9<br>                                                        |[0x80001798]:c.addiw a0, 9<br> [0x8000179a]:sd a0, 1456(ra)<br>   |
| 212|[0x800048a0]<br>0x0000000066666665|- rs1_val==7378697629483820645 and imm_val==0<br>                                                        |[0x800017be]:c.addiw a0, 0<br> [0x800017c0]:sd a0, 1464(ra)<br>   |
| 213|[0x800048a8]<br>0x0000000066666670|- rs1_val==7378697629483820645 and imm_val==11<br>                                                       |[0x800017e4]:c.addiw a0, 11<br> [0x800017e6]:sd a0, 1472(ra)<br>  |
| 214|[0x800048b0]<br>0x000000006666666C|- rs1_val==7378697629483820645 and imm_val==7<br>                                                        |[0x8000180a]:c.addiw a0, 7<br> [0x8000180c]:sd a0, 1480(ra)<br>   |
| 215|[0x800048b8]<br>0x0000000066666664|- rs1_val==7378697629483820645 and imm_val==-1<br>                                                       |[0x80001830]:c.addiw a0, 63<br> [0x80001832]:sd a0, 1488(ra)<br>  |
| 216|[0x800048c0]<br>0x0000000066666661|- rs1_val==7378697629483820645 and imm_val==-4<br>                                                       |[0x80001856]:c.addiw a0, 60<br> [0x80001858]:sd a0, 1496(ra)<br>  |
| 217|[0x800048c8]<br>0xFFFFFFFFB504F335|- rs1_val==3037000498 and imm_val==3<br>                                                                 |[0x8000186c]:c.addiw a0, 3<br> [0x8000186e]:sd a0, 1504(ra)<br>   |
| 218|[0x800048d0]<br>0xFFFFFFFFB504F337|- rs1_val==3037000498 and imm_val==5<br>                                                                 |[0x80001882]:c.addiw a0, 5<br> [0x80001884]:sd a0, 1512(ra)<br>   |
| 219|[0x800048d8]<br>0xFFFFFFFFB504F33C|- rs1_val==3037000498 and imm_val==10<br>                                                                |[0x80001898]:c.addiw a0, 10<br> [0x8000189a]:sd a0, 1520(ra)<br>  |
| 220|[0x800048e0]<br>0xFFFFFFFFB504F338|- rs1_val==3037000498 and imm_val==6<br>                                                                 |[0x800018ae]:c.addiw a0, 6<br> [0x800018b0]:sd a0, 1528(ra)<br>   |
| 221|[0x800048e8]<br>0xFFFFFFFFB504F330|- rs1_val==3037000498 and imm_val==-2<br>                                                                |[0x800018c4]:c.addiw a0, 62<br> [0x800018c6]:sd a0, 1536(ra)<br>  |
| 222|[0x800048f0]<br>0xFFFFFFFFB504F32D|- rs1_val==3037000498 and imm_val==-5<br>                                                                |[0x800018da]:c.addiw a0, 59<br> [0x800018dc]:sd a0, 1544(ra)<br>  |
| 223|[0x800048f8]<br>0xFFFFFFFFB504F334|- rs1_val==3037000498 and imm_val==2<br>                                                                 |[0x800018f0]:c.addiw a0, 2<br> [0x800018f2]:sd a0, 1552(ra)<br>   |
| 224|[0x80004900]<br>0xFFFFFFFFB504F336|- rs1_val==3037000498 and imm_val==4<br>                                                                 |[0x80001906]:c.addiw a0, 4<br> [0x80001908]:sd a0, 1560(ra)<br>   |
| 225|[0x80004908]<br>0xFFFFFFFFB504F33B|- rs1_val==3037000498 and imm_val==9<br>                                                                 |[0x8000191c]:c.addiw a0, 9<br> [0x8000191e]:sd a0, 1568(ra)<br>   |
| 226|[0x80004910]<br>0xFFFFFFFFB504F332|- rs1_val==3037000498 and imm_val==0<br>                                                                 |[0x80001932]:c.addiw a0, 0<br> [0x80001934]:sd a0, 1576(ra)<br>   |
| 227|[0x80004918]<br>0xFFFFFFFFB504F33D|- rs1_val==3037000498 and imm_val==11<br>                                                                |[0x80001948]:c.addiw a0, 11<br> [0x8000194a]:sd a0, 1584(ra)<br>  |
| 228|[0x80004920]<br>0xFFFFFFFFB504F339|- rs1_val==3037000498 and imm_val==7<br>                                                                 |[0x8000195e]:c.addiw a0, 7<br> [0x80001960]:sd a0, 1592(ra)<br>   |
| 229|[0x80004928]<br>0xFFFFFFFFB504F331|- rs1_val==3037000498 and imm_val==-1<br>                                                                |[0x80001974]:c.addiw a0, 63<br> [0x80001976]:sd a0, 1600(ra)<br>  |
| 230|[0x80004930]<br>0xFFFFFFFFB504F32E|- rs1_val==3037000498 and imm_val==-4<br>                                                                |[0x8000198a]:c.addiw a0, 60<br> [0x8000198c]:sd a0, 1608(ra)<br>  |
| 231|[0x80004938]<br>0x0000000055555559|- rs1_val==6148914691236517206 and imm_val==3<br>                                                        |[0x800019b0]:c.addiw a0, 3<br> [0x800019b2]:sd a0, 1616(ra)<br>   |
| 232|[0x80004940]<br>0x000000005555555B|- rs1_val==6148914691236517206 and imm_val==5<br>                                                        |[0x800019d6]:c.addiw a0, 5<br> [0x800019d8]:sd a0, 1624(ra)<br>   |
| 233|[0x80004948]<br>0x0000000055555560|- rs1_val==6148914691236517206 and imm_val==10<br>                                                       |[0x800019fc]:c.addiw a0, 10<br> [0x800019fe]:sd a0, 1632(ra)<br>  |
| 234|[0x80004950]<br>0x000000005555555C|- rs1_val==6148914691236517206 and imm_val==6<br>                                                        |[0x80001a22]:c.addiw a0, 6<br> [0x80001a24]:sd a0, 1640(ra)<br>   |
| 235|[0x80004958]<br>0x0000000055555554|- rs1_val==6148914691236517206 and imm_val==-2<br>                                                       |[0x80001a48]:c.addiw a0, 62<br> [0x80001a4a]:sd a0, 1648(ra)<br>  |
| 236|[0x80004960]<br>0x0000000055555551|- rs1_val==6148914691236517206 and imm_val==-5<br>                                                       |[0x80001a6e]:c.addiw a0, 59<br> [0x80001a70]:sd a0, 1656(ra)<br>  |
| 237|[0x80004968]<br>0x0000000055555558|- rs1_val==6148914691236517206 and imm_val==2<br>                                                        |[0x80001a94]:c.addiw a0, 2<br> [0x80001a96]:sd a0, 1664(ra)<br>   |
| 238|[0x80004970]<br>0x000000005555555A|- rs1_val==6148914691236517206 and imm_val==4<br>                                                        |[0x80001aba]:c.addiw a0, 4<br> [0x80001abc]:sd a0, 1672(ra)<br>   |
| 239|[0x80004978]<br>0x000000005555555F|- rs1_val==6148914691236517206 and imm_val==9<br>                                                        |[0x80001ae0]:c.addiw a0, 9<br> [0x80001ae2]:sd a0, 1680(ra)<br>   |
| 240|[0x80004980]<br>0x0000000055555556|- rs1_val==6148914691236517206 and imm_val==0<br>                                                        |[0x80001b06]:c.addiw a0, 0<br> [0x80001b08]:sd a0, 1688(ra)<br>   |
| 241|[0x80004988]<br>0x0000000055555561|- rs1_val==6148914691236517206 and imm_val==11<br>                                                       |[0x80001b2c]:c.addiw a0, 11<br> [0x80001b2e]:sd a0, 1696(ra)<br>  |
| 242|[0x80004990]<br>0x000000005555555D|- rs1_val==6148914691236517206 and imm_val==7<br>                                                        |[0x80001b52]:c.addiw a0, 7<br> [0x80001b54]:sd a0, 1704(ra)<br>   |
| 243|[0x80004998]<br>0x0000000055555555|- rs1_val==6148914691236517206 and imm_val==-1<br>                                                       |[0x80001b78]:c.addiw a0, 63<br> [0x80001b7a]:sd a0, 1712(ra)<br>  |
| 244|[0x800049a0]<br>0x0000000055555552|- rs1_val==6148914691236517206 and imm_val==-4<br>                                                       |[0x80001b9e]:c.addiw a0, 60<br> [0x80001ba0]:sd a0, 1720(ra)<br>  |
| 245|[0x800049a8]<br>0xFFFFFFFFAAAAAAAE|- rs1_val==-6148914691236517205 and imm_val==3<br>                                                       |[0x80001bc4]:c.addiw a0, 3<br> [0x80001bc6]:sd a0, 1728(ra)<br>   |
| 246|[0x800049b0]<br>0xFFFFFFFFAAAAAAB0|- rs1_val==-6148914691236517205 and imm_val==5<br>                                                       |[0x80001bea]:c.addiw a0, 5<br> [0x80001bec]:sd a0, 1736(ra)<br>   |
| 247|[0x800049b8]<br>0xFFFFFFFFAAAAAAB5|- rs1_val==-6148914691236517205 and imm_val==10<br>                                                      |[0x80001c10]:c.addiw a0, 10<br> [0x80001c12]:sd a0, 1744(ra)<br>  |
| 248|[0x800049c0]<br>0xFFFFFFFFAAAAAAB1|- rs1_val==-6148914691236517205 and imm_val==6<br>                                                       |[0x80001c36]:c.addiw a0, 6<br> [0x80001c38]:sd a0, 1752(ra)<br>   |
| 249|[0x800049c8]<br>0xFFFFFFFFAAAAAAA9|- rs1_val==-6148914691236517205 and imm_val==-2<br>                                                      |[0x80001c5c]:c.addiw a0, 62<br> [0x80001c5e]:sd a0, 1760(ra)<br>  |
| 250|[0x800049d0]<br>0xFFFFFFFFAAAAAAA6|- rs1_val==-6148914691236517205 and imm_val==-5<br>                                                      |[0x80001c82]:c.addiw a0, 59<br> [0x80001c84]:sd a0, 1768(ra)<br>  |
| 251|[0x800049d8]<br>0xFFFFFFFFAAAAAAAD|- rs1_val==-6148914691236517205 and imm_val==2<br>                                                       |[0x80001ca8]:c.addiw a0, 2<br> [0x80001caa]:sd a0, 1776(ra)<br>   |
| 252|[0x800049e0]<br>0xFFFFFFFFAAAAAAAF|- rs1_val==-6148914691236517205 and imm_val==4<br>                                                       |[0x80001cce]:c.addiw a0, 4<br> [0x80001cd0]:sd a0, 1784(ra)<br>   |
| 253|[0x800049e8]<br>0xFFFFFFFFAAAAAAB4|- rs1_val==-6148914691236517205 and imm_val==9<br>                                                       |[0x80001cf4]:c.addiw a0, 9<br> [0x80001cf6]:sd a0, 1792(ra)<br>   |
| 254|[0x800049f0]<br>0xFFFFFFFFAAAAAAAB|- rs1_val==-6148914691236517205 and imm_val==0<br>                                                       |[0x80001d1a]:c.addiw a0, 0<br> [0x80001d1c]:sd a0, 1800(ra)<br>   |
| 255|[0x800049f8]<br>0xFFFFFFFFAAAAAAB6|- rs1_val==-6148914691236517205 and imm_val==11<br>                                                      |[0x80001d40]:c.addiw a0, 11<br> [0x80001d42]:sd a0, 1808(ra)<br>  |
| 256|[0x80004a00]<br>0xFFFFFFFFAAAAAAB2|- rs1_val==-6148914691236517205 and imm_val==7<br>                                                       |[0x80001d66]:c.addiw a0, 7<br> [0x80001d68]:sd a0, 1816(ra)<br>   |
| 257|[0x80004a08]<br>0xFFFFFFFFAAAAAAAA|- rs1_val==-6148914691236517205 and imm_val==-1<br>                                                      |[0x80001d8c]:c.addiw a0, 63<br> [0x80001d8e]:sd a0, 1824(ra)<br>  |
| 258|[0x80004a10]<br>0xFFFFFFFFAAAAAAA7|- rs1_val==-6148914691236517205 and imm_val==-4<br>                                                      |[0x80001db2]:c.addiw a0, 60<br> [0x80001db4]:sd a0, 1832(ra)<br>  |
| 259|[0x80004a18]<br>0x0000000000000009|- rs1_val==6 and imm_val==3<br>                                                                          |[0x80001dbc]:c.addiw a0, 3<br> [0x80001dbe]:sd a0, 1840(ra)<br>   |
| 260|[0x80004a20]<br>0x000000000000000B|- rs1_val==6 and imm_val==5<br>                                                                          |[0x80001dc6]:c.addiw a0, 5<br> [0x80001dc8]:sd a0, 1848(ra)<br>   |
| 261|[0x80004a28]<br>0x0000000000000010|- rs1_val==6 and imm_val==10<br>                                                                         |[0x80001dd0]:c.addiw a0, 10<br> [0x80001dd2]:sd a0, 1856(ra)<br>  |
| 262|[0x80004a30]<br>0x000000000000000C|- rs1_val==6 and imm_val==6<br>                                                                          |[0x80001dda]:c.addiw a0, 6<br> [0x80001ddc]:sd a0, 1864(ra)<br>   |
| 263|[0x80004a38]<br>0x0000000000000004|- rs1_val==6 and imm_val==-2<br>                                                                         |[0x80001de4]:c.addiw a0, 62<br> [0x80001de6]:sd a0, 1872(ra)<br>  |
| 264|[0x80004a40]<br>0x0000000000000001|- rs1_val==6 and imm_val==-5<br>                                                                         |[0x80001dee]:c.addiw a0, 59<br> [0x80001df0]:sd a0, 1880(ra)<br>  |
| 265|[0x80004a48]<br>0x0000000000000008|- rs1_val==6 and imm_val==2<br>                                                                          |[0x80001df8]:c.addiw a0, 2<br> [0x80001dfa]:sd a0, 1888(ra)<br>   |
| 266|[0x80004a50]<br>0x000000000000000A|- rs1_val==6 and imm_val==4<br>                                                                          |[0x80001e02]:c.addiw a0, 4<br> [0x80001e04]:sd a0, 1896(ra)<br>   |
| 267|[0x80004a58]<br>0x000000000000000F|- rs1_val==6 and imm_val==9<br>                                                                          |[0x80001e0c]:c.addiw a0, 9<br> [0x80001e0e]:sd a0, 1904(ra)<br>   |
| 268|[0x80004a60]<br>0x0000000000000006|- rs1_val==6 and imm_val==0<br>                                                                          |[0x80001e16]:c.addiw a0, 0<br> [0x80001e18]:sd a0, 1912(ra)<br>   |
| 269|[0x80004a68]<br>0x0000000000000011|- rs1_val==6 and imm_val==11<br>                                                                         |[0x80001e20]:c.addiw a0, 11<br> [0x80001e22]:sd a0, 1920(ra)<br>  |
| 270|[0x80004a70]<br>0x000000000000000D|- rs1_val==6 and imm_val==7<br>                                                                          |[0x80001e2a]:c.addiw a0, 7<br> [0x80001e2c]:sd a0, 1928(ra)<br>   |
| 271|[0x80004a78]<br>0x0000000000000005|- rs1_val==6 and imm_val==-1<br>                                                                         |[0x80001e34]:c.addiw a0, 63<br> [0x80001e36]:sd a0, 1936(ra)<br>  |
| 272|[0x80004a80]<br>0x0000000000000002|- rs1_val==6 and imm_val==-4<br>                                                                         |[0x80001e3e]:c.addiw a0, 60<br> [0x80001e40]:sd a0, 1944(ra)<br>  |
| 273|[0x80004a88]<br>0x0000000033333337|- rs1_val==3689348814741910324 and imm_val==3<br>                                                        |[0x80001e64]:c.addiw a0, 3<br> [0x80001e66]:sd a0, 1952(ra)<br>   |
| 274|[0x80004a90]<br>0x0000000033333339|- rs1_val==3689348814741910324 and imm_val==5<br>                                                        |[0x80001e8a]:c.addiw a0, 5<br> [0x80001e8c]:sd a0, 1960(ra)<br>   |
| 275|[0x80004a98]<br>0x000000003333333E|- rs1_val==3689348814741910324 and imm_val==10<br>                                                       |[0x80001eb0]:c.addiw a0, 10<br> [0x80001eb2]:sd a0, 1968(ra)<br>  |
| 276|[0x80004aa0]<br>0x000000003333333A|- rs1_val==3689348814741910324 and imm_val==6<br>                                                        |[0x80001ed6]:c.addiw a0, 6<br> [0x80001ed8]:sd a0, 1976(ra)<br>   |
| 277|[0x80004aa8]<br>0x0000000033333332|- rs1_val==3689348814741910324 and imm_val==-2<br>                                                       |[0x80001efc]:c.addiw a0, 62<br> [0x80001efe]:sd a0, 1984(ra)<br>  |
| 278|[0x80004ab0]<br>0x000000003333332F|- rs1_val==3689348814741910324 and imm_val==-5<br>                                                       |[0x80001f22]:c.addiw a0, 59<br> [0x80001f24]:sd a0, 1992(ra)<br>  |
| 279|[0x80004ab8]<br>0x0000000033333336|- rs1_val==3689348814741910324 and imm_val==2<br>                                                        |[0x80001f48]:c.addiw a0, 2<br> [0x80001f4a]:sd a0, 2000(ra)<br>   |
| 280|[0x80004ac0]<br>0x0000000033333338|- rs1_val==3689348814741910324 and imm_val==4<br>                                                        |[0x80001f6e]:c.addiw a0, 4<br> [0x80001f70]:sd a0, 2008(ra)<br>   |
| 281|[0x80004ac8]<br>0x000000003333333D|- rs1_val==3689348814741910324 and imm_val==9<br>                                                        |[0x80001f94]:c.addiw a0, 9<br> [0x80001f96]:sd a0, 2016(ra)<br>   |
| 282|[0x80004ad0]<br>0x0000000033333334|- rs1_val==3689348814741910324 and imm_val==0<br>                                                        |[0x80001fba]:c.addiw a0, 0<br> [0x80001fbc]:sd a0, 2024(ra)<br>   |
| 283|[0x80004ad8]<br>0x000000003333333F|- rs1_val==3689348814741910324 and imm_val==11<br>                                                       |[0x80001fe0]:c.addiw a0, 11<br> [0x80001fe2]:sd a0, 2032(ra)<br>  |
| 284|[0x80004ae0]<br>0x000000003333333B|- rs1_val==3689348814741910324 and imm_val==7<br>                                                        |[0x80002006]:c.addiw a0, 7<br> [0x80002008]:sd a0, 2040(ra)<br>   |
| 285|[0x80004ae8]<br>0x0000000033333333|- rs1_val==3689348814741910324 and imm_val==-1<br>                                                       |[0x80002034]:c.addiw a0, 63<br> [0x80002036]:sd a0, 0(ra)<br>     |
| 286|[0x80004af0]<br>0x0000000033333330|- rs1_val==3689348814741910324 and imm_val==-4<br>                                                       |[0x8000205a]:c.addiw a0, 60<br> [0x8000205c]:sd a0, 8(ra)<br>     |
| 287|[0x80004af8]<br>0x000000006666666A|- rs1_val==7378697629483820647 and imm_val==3<br>                                                        |[0x80002080]:c.addiw a0, 3<br> [0x80002082]:sd a0, 16(ra)<br>     |
| 288|[0x80004b00]<br>0x000000006666666C|- rs1_val==7378697629483820647 and imm_val==5<br>                                                        |[0x800020a6]:c.addiw a0, 5<br> [0x800020a8]:sd a0, 24(ra)<br>     |
| 289|[0x80004b08]<br>0x0000000066666671|- rs1_val==7378697629483820647 and imm_val==10<br>                                                       |[0x800020cc]:c.addiw a0, 10<br> [0x800020ce]:sd a0, 32(ra)<br>    |
| 290|[0x80004b10]<br>0x000000006666666D|- rs1_val==7378697629483820647 and imm_val==6<br>                                                        |[0x800020f2]:c.addiw a0, 6<br> [0x800020f4]:sd a0, 40(ra)<br>     |
| 291|[0x80004b18]<br>0x0000000066666665|- rs1_val==7378697629483820647 and imm_val==-2<br>                                                       |[0x80002118]:c.addiw a0, 62<br> [0x8000211a]:sd a0, 48(ra)<br>    |
| 292|[0x80004b20]<br>0x0000000066666662|- rs1_val==7378697629483820647 and imm_val==-5<br>                                                       |[0x8000213e]:c.addiw a0, 59<br> [0x80002140]:sd a0, 56(ra)<br>    |
| 293|[0x80004b28]<br>0x0000000066666669|- rs1_val==7378697629483820647 and imm_val==2<br>                                                        |[0x80002164]:c.addiw a0, 2<br> [0x80002166]:sd a0, 64(ra)<br>     |
| 294|[0x80004b30]<br>0x000000006666666B|- rs1_val==7378697629483820647 and imm_val==4<br>                                                        |[0x8000218a]:c.addiw a0, 4<br> [0x8000218c]:sd a0, 72(ra)<br>     |
| 295|[0x80004b38]<br>0x0000000066666670|- rs1_val==7378697629483820647 and imm_val==9<br>                                                        |[0x800021b0]:c.addiw a0, 9<br> [0x800021b2]:sd a0, 80(ra)<br>     |
| 296|[0x80004b40]<br>0x0000000066666667|- rs1_val==7378697629483820647 and imm_val==0<br>                                                        |[0x800021d6]:c.addiw a0, 0<br> [0x800021d8]:sd a0, 88(ra)<br>     |
| 297|[0x80004b48]<br>0x0000000066666672|- rs1_val==7378697629483820647 and imm_val==11<br>                                                       |[0x800021fc]:c.addiw a0, 11<br> [0x800021fe]:sd a0, 96(ra)<br>    |
| 298|[0x80004b50]<br>0x000000006666666E|- rs1_val==7378697629483820647 and imm_val==7<br>                                                        |[0x80002222]:c.addiw a0, 7<br> [0x80002224]:sd a0, 104(ra)<br>    |
| 299|[0x80004b58]<br>0x0000000066666666|- rs1_val==7378697629483820647 and imm_val==-1<br>                                                       |[0x80002248]:c.addiw a0, 63<br> [0x8000224a]:sd a0, 112(ra)<br>   |
| 300|[0x80004b60]<br>0x0000000066666663|- rs1_val==7378697629483820647 and imm_val==-4<br>                                                       |[0x8000226e]:c.addiw a0, 60<br> [0x80002270]:sd a0, 120(ra)<br>   |
| 301|[0x80004b68]<br>0x000000004AFB0CD1|- rs1_val==-3037000498 and imm_val==3<br>                                                                |[0x80002284]:c.addiw a0, 3<br> [0x80002286]:sd a0, 128(ra)<br>    |
| 302|[0x80004b70]<br>0x000000004AFB0CD3|- rs1_val==-3037000498 and imm_val==5<br>                                                                |[0x8000229a]:c.addiw a0, 5<br> [0x8000229c]:sd a0, 136(ra)<br>    |
| 303|[0x80004b78]<br>0x000000004AFB0CD8|- rs1_val==-3037000498 and imm_val==10<br>                                                               |[0x800022b0]:c.addiw a0, 10<br> [0x800022b2]:sd a0, 144(ra)<br>   |
| 304|[0x80004b80]<br>0x000000004AFB0CD4|- rs1_val==-3037000498 and imm_val==6<br>                                                                |[0x800022c6]:c.addiw a0, 6<br> [0x800022c8]:sd a0, 152(ra)<br>    |
| 305|[0x80004b88]<br>0x000000004AFB0CCC|- rs1_val==-3037000498 and imm_val==-2<br>                                                               |[0x800022dc]:c.addiw a0, 62<br> [0x800022de]:sd a0, 160(ra)<br>   |
| 306|[0x80004b90]<br>0x000000004AFB0CC9|- rs1_val==-3037000498 and imm_val==-5<br>                                                               |[0x800022f2]:c.addiw a0, 59<br> [0x800022f4]:sd a0, 168(ra)<br>   |
| 307|[0x80004b98]<br>0x000000004AFB0CD0|- rs1_val==-3037000498 and imm_val==2<br>                                                                |[0x80002308]:c.addiw a0, 2<br> [0x8000230a]:sd a0, 176(ra)<br>    |
| 308|[0x80004ba0]<br>0x000000004AFB0CD2|- rs1_val==-3037000498 and imm_val==4<br>                                                                |[0x8000231e]:c.addiw a0, 4<br> [0x80002320]:sd a0, 184(ra)<br>    |
| 309|[0x80004ba8]<br>0x000000004AFB0CD7|- rs1_val==-3037000498 and imm_val==9<br>                                                                |[0x80002334]:c.addiw a0, 9<br> [0x80002336]:sd a0, 192(ra)<br>    |
| 310|[0x80004bb0]<br>0x000000004AFB0CCE|- rs1_val==-3037000498 and imm_val==0<br>                                                                |[0x8000234a]:c.addiw a0, 0<br> [0x8000234c]:sd a0, 200(ra)<br>    |
| 311|[0x80004bb8]<br>0x000000004AFB0CD9|- rs1_val==-3037000498 and imm_val==11<br>                                                               |[0x80002360]:c.addiw a0, 11<br> [0x80002362]:sd a0, 208(ra)<br>   |
| 312|[0x80004bc0]<br>0x000000004AFB0CD5|- rs1_val==-3037000498 and imm_val==7<br>                                                                |[0x80002376]:c.addiw a0, 7<br> [0x80002378]:sd a0, 216(ra)<br>    |
| 313|[0x80004bc8]<br>0x000000004AFB0CCD|- rs1_val==-3037000498 and imm_val==-1<br>                                                               |[0x8000238c]:c.addiw a0, 63<br> [0x8000238e]:sd a0, 224(ra)<br>   |
| 314|[0x80004bd0]<br>0x000000004AFB0CCA|- rs1_val==-3037000498 and imm_val==-4<br>                                                               |[0x800023a2]:c.addiw a0, 60<br> [0x800023a4]:sd a0, 232(ra)<br>   |
| 315|[0x80004bd8]<br>0xFFFFFFFFB504F337|- rs1_val==3037000500 and imm_val==3<br>                                                                 |[0x800023b8]:c.addiw a0, 3<br> [0x800023ba]:sd a0, 240(ra)<br>    |
| 316|[0x80004be0]<br>0xFFFFFFFFB504F339|- rs1_val==3037000500 and imm_val==5<br>                                                                 |[0x800023ce]:c.addiw a0, 5<br> [0x800023d0]:sd a0, 248(ra)<br>    |
| 317|[0x80004be8]<br>0xFFFFFFFFB504F33E|- rs1_val==3037000500 and imm_val==10<br>                                                                |[0x800023e4]:c.addiw a0, 10<br> [0x800023e6]:sd a0, 256(ra)<br>   |
| 318|[0x80004bf0]<br>0xFFFFFFFFB504F33A|- rs1_val==3037000500 and imm_val==6<br>                                                                 |[0x800023fa]:c.addiw a0, 6<br> [0x800023fc]:sd a0, 264(ra)<br>    |
| 319|[0x80004bf8]<br>0xFFFFFFFFB504F332|- rs1_val==3037000500 and imm_val==-2<br>                                                                |[0x80002410]:c.addiw a0, 62<br> [0x80002412]:sd a0, 272(ra)<br>   |
| 320|[0x80004c00]<br>0xFFFFFFFFB504F32F|- rs1_val==3037000500 and imm_val==-5<br>                                                                |[0x80002426]:c.addiw a0, 59<br> [0x80002428]:sd a0, 280(ra)<br>   |
| 321|[0x80004c08]<br>0xFFFFFFFFB504F336|- rs1_val==3037000500 and imm_val==2<br>                                                                 |[0x8000243c]:c.addiw a0, 2<br> [0x8000243e]:sd a0, 288(ra)<br>    |
| 322|[0x80004c10]<br>0xFFFFFFFFB504F338|- rs1_val==3037000500 and imm_val==4<br>                                                                 |[0x80002452]:c.addiw a0, 4<br> [0x80002454]:sd a0, 296(ra)<br>    |
| 323|[0x80004c18]<br>0xFFFFFFFFB504F33D|- rs1_val==3037000500 and imm_val==9<br>                                                                 |[0x80002468]:c.addiw a0, 9<br> [0x8000246a]:sd a0, 304(ra)<br>    |
| 324|[0x80004c20]<br>0xFFFFFFFFB504F334|- rs1_val==3037000500 and imm_val==0<br>                                                                 |[0x8000247e]:c.addiw a0, 0<br> [0x80002480]:sd a0, 312(ra)<br>    |
| 325|[0x80004c28]<br>0xFFFFFFFFB504F33F|- rs1_val==3037000500 and imm_val==11<br>                                                                |[0x80002494]:c.addiw a0, 11<br> [0x80002496]:sd a0, 320(ra)<br>   |
| 326|[0x80004c30]<br>0xFFFFFFFFB504F33B|- rs1_val==3037000500 and imm_val==7<br>                                                                 |[0x800024aa]:c.addiw a0, 7<br> [0x800024ac]:sd a0, 328(ra)<br>    |
| 327|[0x80004c38]<br>0xFFFFFFFFB504F333|- rs1_val==3037000500 and imm_val==-1<br>                                                                |[0x800024c0]:c.addiw a0, 63<br> [0x800024c2]:sd a0, 336(ra)<br>   |
| 328|[0x80004c40]<br>0xFFFFFFFFB504F330|- rs1_val==3037000500 and imm_val==-4<br>                                                                |[0x800024d6]:c.addiw a0, 60<br> [0x800024d8]:sd a0, 344(ra)<br>   |
| 329|[0x80004c48]<br>0x0000000000000027|- rs1_val == 8<br>                                                                                       |[0x800024e0]:c.addiw a0, 31<br> [0x800024e2]:sd a0, 352(ra)<br>   |
| 330|[0x80004c50]<br>0x0000000000000017|- rs1_val == 16<br>                                                                                      |[0x800024ea]:c.addiw a0, 7<br> [0x800024ec]:sd a0, 360(ra)<br>    |
| 331|[0x80004c58]<br>0x0000000000000020|- rs1_val == 32<br>                                                                                      |[0x800024f4]:c.addiw a0, 0<br> [0x800024f6]:sd a0, 368(ra)<br>    |
| 332|[0x80004c60]<br>0x0000000000000085|- rs1_val == 128<br>                                                                                     |[0x800024fe]:c.addiw a0, 5<br> [0x80002500]:sd a0, 376(ra)<br>    |
| 333|[0x80004c68]<br>0x000000000000010B|- rs1_val == 256<br>                                                                                     |[0x80002508]:c.addiw a0, 11<br> [0x8000250a]:sd a0, 384(ra)<br>   |
| 334|[0x80004c70]<br>0x00000000000001F9|- rs1_val == 512<br>                                                                                     |[0x80002512]:c.addiw a0, 57<br> [0x80002514]:sd a0, 392(ra)<br>   |
| 335|[0x80004c78]<br>0x000000000000040F|- rs1_val == 1024<br>                                                                                    |[0x8000251c]:c.addiw a0, 15<br> [0x8000251e]:sd a0, 400(ra)<br>   |
| 336|[0x80004c80]<br>0x0000000000000800|- rs1_val == 2048<br>                                                                                    |[0x8000252a]:c.addiw a0, 0<br> [0x8000252c]:sd a0, 408(ra)<br>    |
| 337|[0x80004c88]<br>0x0000000000001005|- rs1_val == 4096<br>                                                                                    |[0x80002534]:c.addiw a0, 5<br> [0x80002536]:sd a0, 416(ra)<br>    |
| 338|[0x80004c90]<br>0x0000000000002001|- rs1_val == 8192<br>                                                                                    |[0x8000253e]:c.addiw a0, 1<br> [0x80002540]:sd a0, 424(ra)<br>    |
| 339|[0x80004c98]<br>0x0000000000003FF6|- rs1_val == 16384<br>                                                                                   |[0x80002548]:c.addiw a0, 54<br> [0x8000254a]:sd a0, 432(ra)<br>   |
| 340|[0x80004ca0]<br>0x0000000000007FF0|- rs1_val == 32768<br>                                                                                   |[0x80002552]:c.addiw a0, 48<br> [0x80002554]:sd a0, 440(ra)<br>   |
| 341|[0x80004ca8]<br>0x0000000000010006|- rs1_val == 65536<br>                                                                                   |[0x8000255c]:c.addiw a0, 6<br> [0x8000255e]:sd a0, 448(ra)<br>    |
| 342|[0x80004cb0]<br>0x0000000000020004|- rs1_val == 131072<br>                                                                                  |[0x80002566]:c.addiw a0, 4<br> [0x80002568]:sd a0, 456(ra)<br>    |
| 343|[0x80004cb8]<br>0x0000000000080006|- rs1_val == 524288<br>                                                                                  |[0x80002570]:c.addiw a0, 6<br> [0x80002572]:sd a0, 464(ra)<br>    |
| 344|[0x80004cc0]<br>0x0000000000100004|- rs1_val == 1048576<br>                                                                                 |[0x8000257a]:c.addiw a0, 4<br> [0x8000257c]:sd a0, 472(ra)<br>    |
| 345|[0x80004cc8]<br>0x0000000000200004|- rs1_val == 2097152<br>                                                                                 |[0x80002584]:c.addiw a0, 4<br> [0x80002586]:sd a0, 480(ra)<br>    |
| 346|[0x80004cd0]<br>0x0000000000400004|- rs1_val == 4194304<br>                                                                                 |[0x8000258e]:c.addiw a0, 4<br> [0x80002590]:sd a0, 488(ra)<br>    |
| 347|[0x80004cd8]<br>0x0000000000800006|- rs1_val == 8388608<br>                                                                                 |[0x80002598]:c.addiw a0, 6<br> [0x8000259a]:sd a0, 496(ra)<br>    |
| 348|[0x80004ce0]<br>0x0000000001000008|- rs1_val == 16777216<br>                                                                                |[0x800025a2]:c.addiw a0, 8<br> [0x800025a4]:sd a0, 504(ra)<br>    |
| 349|[0x80004ce8]<br>0x0000000002000004|- rs1_val == 33554432<br>                                                                                |[0x800025ac]:c.addiw a0, 4<br> [0x800025ae]:sd a0, 512(ra)<br>    |
| 350|[0x80004cf0]<br>0x0000000003FFFFFE|- rs1_val == 67108864<br>                                                                                |[0x800025b6]:c.addiw a0, 62<br> [0x800025b8]:sd a0, 520(ra)<br>   |
| 351|[0x80004cf8]<br>0x000000000FFFFFFB|- rs1_val == 268435456<br>                                                                               |[0x800025c0]:c.addiw a0, 59<br> [0x800025c2]:sd a0, 528(ra)<br>   |
| 352|[0x80004d00]<br>0x0000000020000004|- rs1_val == 536870912<br>                                                                               |[0x800025ca]:c.addiw a0, 4<br> [0x800025cc]:sd a0, 536(ra)<br>    |
| 353|[0x80004d08]<br>0x000000003FFFFFFC|- rs1_val == 1073741824<br>                                                                              |[0x800025d4]:c.addiw a0, 60<br> [0x800025d6]:sd a0, 544(ra)<br>   |
| 354|[0x80004d10]<br>0xFFFFFFFF80000006|- rs1_val == 2147483648<br>                                                                              |[0x800025e2]:c.addiw a0, 6<br> [0x800025e4]:sd a0, 552(ra)<br>    |
| 355|[0x80004d18]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                              |[0x800025f0]:c.addiw a0, 0<br> [0x800025f2]:sd a0, 560(ra)<br>    |
| 356|[0x80004d20]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == 8589934592<br>                                                                              |[0x800025fe]:c.addiw a0, 56<br> [0x80002600]:sd a0, 568(ra)<br>   |
| 357|[0x80004d28]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == 17179869184<br>                                                                             |[0x8000260c]:c.addiw a0, 47<br> [0x8000260e]:sd a0, 576(ra)<br>   |
| 358|[0x80004d30]<br>0x0000000000000005|- rs1_val == 34359738368<br>                                                                             |[0x8000261a]:c.addiw a0, 5<br> [0x8000261c]:sd a0, 584(ra)<br>    |
| 359|[0x80004d38]<br>0x0000000000000005|- rs1_val == 68719476736<br>                                                                             |[0x80002628]:c.addiw a0, 5<br> [0x8000262a]:sd a0, 592(ra)<br>    |
| 360|[0x80004d40]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == 137438953472<br>                                                                            |[0x80002636]:c.addiw a0, 47<br> [0x80002638]:sd a0, 600(ra)<br>   |
| 361|[0x80004d48]<br>0x0000000000000008|- rs1_val == 274877906944<br>                                                                            |[0x80002644]:c.addiw a0, 8<br> [0x80002646]:sd a0, 608(ra)<br>    |
| 362|[0x80004d50]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == 549755813888<br>                                                                            |[0x80002652]:c.addiw a0, 58<br> [0x80002654]:sd a0, 616(ra)<br>   |
| 363|[0x80004d58]<br>0x0000000000000005|- rs1_val == 1099511627776<br>                                                                           |[0x80002660]:c.addiw a0, 5<br> [0x80002662]:sd a0, 624(ra)<br>    |
| 364|[0x80004d60]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == 2199023255552<br>                                                                           |[0x8000266e]:c.addiw a0, 55<br> [0x80002670]:sd a0, 632(ra)<br>   |
| 365|[0x80004d68]<br>0x0000000000000005|- rs1_val == 8796093022208<br>                                                                           |[0x8000267c]:c.addiw a0, 5<br> [0x8000267e]:sd a0, 640(ra)<br>    |
| 366|[0x80004d70]<br>0xFFFFFFFFFFFFFFF6|- rs1_val == 35184372088832<br>                                                                          |[0x8000268a]:c.addiw a0, 54<br> [0x8000268c]:sd a0, 648(ra)<br>   |
| 367|[0x80004d78]<br>0x0000000000000015|- rs1_val == 70368744177664<br>                                                                          |[0x80002698]:c.addiw a0, 21<br> [0x8000269a]:sd a0, 656(ra)<br>   |
| 368|[0x80004d80]<br>0x0000000000000003|- rs1_val == 281474976710656<br>                                                                         |[0x800026a6]:c.addiw a0, 3<br> [0x800026a8]:sd a0, 664(ra)<br>    |
| 369|[0x80004d88]<br>0x0000000000000004|- rs1_val == 562949953421312<br>                                                                         |[0x800026b4]:c.addiw a0, 4<br> [0x800026b6]:sd a0, 672(ra)<br>    |
| 370|[0x80004d90]<br>0x0000000000000005|- rs1_val == 1125899906842624<br>                                                                        |[0x800026c2]:c.addiw a0, 5<br> [0x800026c4]:sd a0, 680(ra)<br>    |
| 371|[0x80004d98]<br>0xFFFFFFFFFFFFFFEA|- rs1_val == 4503599627370496<br>                                                                        |[0x800026d0]:c.addiw a0, 42<br> [0x800026d2]:sd a0, 688(ra)<br>   |
| 372|[0x80004da0]<br>0x0000000000000003|- rs1_val == 9007199254740992<br>                                                                        |[0x800026de]:c.addiw a0, 3<br> [0x800026e0]:sd a0, 696(ra)<br>    |
| 373|[0x80004da8]<br>0x000000000000000A|- rs1_val == 18014398509481984<br>                                                                       |[0x800026ec]:c.addiw a0, 10<br> [0x800026ee]:sd a0, 704(ra)<br>   |
| 374|[0x80004db0]<br>0x0000000000000004|- rs1_val == 36028797018963968<br>                                                                       |[0x800026fa]:c.addiw a0, 4<br> [0x800026fc]:sd a0, 712(ra)<br>    |
| 375|[0x80004db8]<br>0x0000000000000008|- rs1_val == 72057594037927936<br>                                                                       |[0x80002708]:c.addiw a0, 8<br> [0x8000270a]:sd a0, 720(ra)<br>    |
| 376|[0x80004dc0]<br>0x0000000000000007|- rs1_val == 144115188075855872<br>                                                                      |[0x80002716]:c.addiw a0, 7<br> [0x80002718]:sd a0, 728(ra)<br>    |
| 377|[0x80004dc8]<br>0x0000000000000005|- rs1_val == 288230376151711744<br>                                                                      |[0x80002724]:c.addiw a0, 5<br> [0x80002726]:sd a0, 736(ra)<br>    |
| 378|[0x80004dd0]<br>0x0000000000000002|- rs1_val == 576460752303423488<br>                                                                      |[0x80002732]:c.addiw a0, 2<br> [0x80002734]:sd a0, 744(ra)<br>    |
| 379|[0x80004dd8]<br>0x0000000000000005|- rs1_val == 1152921504606846976<br>                                                                     |[0x80002740]:c.addiw a0, 5<br> [0x80002742]:sd a0, 752(ra)<br>    |
| 380|[0x80004de0]<br>0x0000000000000005|- rs1_val == 2305843009213693952<br>                                                                     |[0x8000274e]:c.addiw a0, 5<br> [0x80002750]:sd a0, 760(ra)<br>    |
| 381|[0x80004de8]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == 4611686018427387904<br>                                                                     |[0x8000275c]:c.addiw a0, 59<br> [0x8000275e]:sd a0, 768(ra)<br>   |
| 382|[0x80004df0]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == -2<br>                                                                                      |[0x80002766]:c.addiw a0, 60<br> [0x80002768]:sd a0, 776(ra)<br>   |
| 383|[0x80004df8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                      |[0x80002770]:c.addiw a0, 4<br> [0x80002772]:sd a0, 784(ra)<br>    |
| 384|[0x80004e00]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == -17<br>                                                                                     |[0x8000277a]:c.addiw a0, 10<br> [0x8000277c]:sd a0, 792(ra)<br>   |
| 385|[0x80004e08]<br>0xFFFFFFFFFFFFFFD6|- rs1_val == -33<br>                                                                                     |[0x80002784]:c.addiw a0, 55<br> [0x80002786]:sd a0, 800(ra)<br>   |
| 386|[0x80004e10]<br>0xFFFFFFFFFFFFFFC3|- rs1_val == -65<br>                                                                                     |[0x8000278e]:c.addiw a0, 4<br> [0x80002790]:sd a0, 808(ra)<br>    |
| 387|[0x80004e18]<br>0xFFFFFFFFFFFFFF84|- rs1_val == -129<br>                                                                                    |[0x80002798]:c.addiw a0, 5<br> [0x8000279a]:sd a0, 816(ra)<br>    |
| 388|[0x80004e20]<br>0xFFFFFFFFFFFFFEF8|- rs1_val == -257<br>                                                                                    |[0x800027a2]:c.addiw a0, 57<br> [0x800027a4]:sd a0, 824(ra)<br>   |
| 389|[0x80004e28]<br>0xFFFFFFFFFFFFFE02|- rs1_val == -513<br>                                                                                    |[0x800027ac]:c.addiw a0, 3<br> [0x800027ae]:sd a0, 832(ra)<br>    |
| 390|[0x80004e30]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                   |[0x800027b6]:c.addiw a0, 0<br> [0x800027b8]:sd a0, 840(ra)<br>    |
| 391|[0x80004e38]<br>0xFFFFFFFFFFFFF805|- rs1_val == -2049<br>                                                                                   |[0x800027c4]:c.addiw a0, 6<br> [0x800027c6]:sd a0, 848(ra)<br>    |
| 392|[0x80004e40]<br>0xFFFFFFFFFFFFF014|- rs1_val == -4097<br>                                                                                   |[0x800027d2]:c.addiw a0, 21<br> [0x800027d4]:sd a0, 856(ra)<br>   |
| 393|[0x80004e48]<br>0xFFFFFFFFFFFFE004|- rs1_val == -8193<br>                                                                                   |[0x800027e0]:c.addiw a0, 5<br> [0x800027e2]:sd a0, 864(ra)<br>    |
| 394|[0x80004e50]<br>0xFFFFFFFFFFFFC008|- rs1_val == -16385<br>                                                                                  |[0x800027ee]:c.addiw a0, 9<br> [0x800027f0]:sd a0, 872(ra)<br>    |
| 395|[0x80004e58]<br>0xFFFFFFFFFFFF7FEF|- rs1_val == -32769<br>                                                                                  |[0x800027fc]:c.addiw a0, 48<br> [0x800027fe]:sd a0, 880(ra)<br>   |
| 396|[0x80004e60]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -65537<br>                                                                                  |[0x8000280a]:c.addiw a0, 0<br> [0x8000280c]:sd a0, 888(ra)<br>    |
| 397|[0x80004e68]<br>0xFFFFFFFFFFFE0008|- rs1_val == -131073<br>                                                                                 |[0x80002818]:c.addiw a0, 9<br> [0x8000281a]:sd a0, 896(ra)<br>    |
| 398|[0x80004e70]<br>0xFFFFFFFFFFEFFFFE|- rs1_val == -1048577<br>                                                                                |[0x80002826]:c.addiw a0, 63<br> [0x80002828]:sd a0, 904(ra)<br>   |
| 399|[0x80004e78]<br>0xFFFFFFFFFFE00002|- rs1_val == -2097153<br>                                                                                |[0x80002834]:c.addiw a0, 3<br> [0x80002836]:sd a0, 912(ra)<br>    |
| 400|[0x80004e80]<br>0xFFFFFFFFFFC00003|- rs1_val == -4194305<br>                                                                                |[0x80002842]:c.addiw a0, 4<br> [0x80002844]:sd a0, 920(ra)<br>    |
| 401|[0x80004e88]<br>0xFFFFFFFFFF800000|- rs1_val == -8388609<br>                                                                                |[0x80002850]:c.addiw a0, 1<br> [0x80002852]:sd a0, 928(ra)<br>    |
| 402|[0x80004e90]<br>0xFFFFFFFFFF000001|- rs1_val == -16777217<br>                                                                               |[0x8000285e]:c.addiw a0, 2<br> [0x80002860]:sd a0, 936(ra)<br>    |
| 403|[0x80004e98]<br>0xFFFFFFFFFDFFFFFE|- rs1_val == -33554433<br>                                                                               |[0x8000286c]:c.addiw a0, 63<br> [0x8000286e]:sd a0, 944(ra)<br>   |
| 404|[0x80004ea0]<br>0xFFFFFFFFFC000003|- rs1_val == -67108865<br>                                                                               |[0x8000287a]:c.addiw a0, 4<br> [0x8000287c]:sd a0, 952(ra)<br>    |
| 405|[0x80004ea8]<br>0xFFFFFFFFF7FFFFFB|- rs1_val == -134217729<br>                                                                              |[0x80002888]:c.addiw a0, 60<br> [0x8000288a]:sd a0, 960(ra)<br>   |
| 406|[0x80004eb0]<br>0x000000000000000E|- rs1_val == -1125899906842625<br>                                                                       |[0x8000289a]:c.addiw a0, 15<br> [0x8000289c]:sd a0, 968(ra)<br>   |
| 407|[0x80004eb8]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -9007199254740993<br>                                                                       |[0x800028ac]:c.addiw a0, 57<br> [0x800028ae]:sd a0, 976(ra)<br>   |
| 408|[0x80004ec0]<br>0x0000000000000003|- rs1_val == -18014398509481985<br>                                                                      |[0x800028be]:c.addiw a0, 4<br> [0x800028c0]:sd a0, 984(ra)<br>    |
| 409|[0x80004ec8]<br>0x0000000000000003|- rs1_val == -36028797018963969<br>                                                                      |[0x800028d0]:c.addiw a0, 4<br> [0x800028d2]:sd a0, 992(ra)<br>    |
| 410|[0x80004ed0]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == -72057594037927937<br>                                                                      |[0x800028e2]:c.addiw a0, 59<br> [0x800028e4]:sd a0, 1000(ra)<br>  |
| 411|[0x80004ed8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                     |[0x800028f4]:c.addiw a0, 0<br> [0x800028f6]:sd a0, 1008(ra)<br>   |
| 412|[0x80004ee0]<br>0x0000000000000001|- rs1_val == -288230376151711745<br>                                                                     |[0x80002906]:c.addiw a0, 2<br> [0x80002908]:sd a0, 1016(ra)<br>   |
| 413|[0x80004ee8]<br>0x0000000000000004|- rs1_val == -576460752303423489<br>                                                                     |[0x80002918]:c.addiw a0, 5<br> [0x8000291a]:sd a0, 1024(ra)<br>   |
| 414|[0x80004ef0]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -1152921504606846977<br>                                                                    |[0x8000292a]:c.addiw a0, 61<br> [0x8000292c]:sd a0, 1032(ra)<br>  |
| 415|[0x80004ef8]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == -2305843009213693953<br>                                                                    |[0x8000293c]:c.addiw a0, 59<br> [0x8000293e]:sd a0, 1040(ra)<br>  |
| 416|[0x80004f00]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -4611686018427387905<br>                                                                    |[0x8000294e]:c.addiw a0, 32<br> [0x80002950]:sd a0, 1048(ra)<br>  |
| 417|[0x80004f08]<br>0xFFFFFFFFF0000002|- rs1_val == -268435457<br>                                                                              |[0x8000295c]:c.addiw a0, 3<br> [0x8000295e]:sd a0, 1056(ra)<br>   |
| 418|[0x80004f10]<br>0xFFFFFFFFE0000003|- rs1_val == -536870913<br>                                                                              |[0x8000296a]:c.addiw a0, 4<br> [0x8000296c]:sd a0, 1064(ra)<br>   |
| 419|[0x80004f18]<br>0xFFFFFFFFC0000008|- rs1_val == -1073741825<br>                                                                             |[0x80002978]:c.addiw a0, 9<br> [0x8000297a]:sd a0, 1072(ra)<br>   |
| 420|[0x80004f20]<br>0x000000007FFFFFF7|- rs1_val == -2147483649<br>                                                                             |[0x8000298a]:c.addiw a0, 56<br> [0x8000298c]:sd a0, 1080(ra)<br>  |
| 421|[0x80004f28]<br>0x0000000000000004|- rs1_val == -4294967297<br>                                                                             |[0x8000299c]:c.addiw a0, 5<br> [0x8000299e]:sd a0, 1088(ra)<br>   |
| 422|[0x80004f30]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -8589934593<br>                                                                             |[0x800029ae]:c.addiw a0, 62<br> [0x800029b0]:sd a0, 1096(ra)<br>  |
| 423|[0x80004f38]<br>0xFFFFFFFFFFFFFFEE|- rs1_val == -17179869185<br>                                                                            |[0x800029c0]:c.addiw a0, 47<br> [0x800029c2]:sd a0, 1104(ra)<br>  |
| 424|[0x80004f40]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -34359738369<br>                                                                            |[0x800029d2]:c.addiw a0, 60<br> [0x800029d4]:sd a0, 1112(ra)<br>  |
| 425|[0x80004f48]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == -68719476737<br>                                                                            |[0x800029e4]:c.addiw a0, 58<br> [0x800029e6]:sd a0, 1120(ra)<br>  |
| 426|[0x80004f50]<br>0x0000000000000009|- rs1_val == -137438953473<br>                                                                           |[0x800029f6]:c.addiw a0, 10<br> [0x800029f8]:sd a0, 1128(ra)<br>  |
| 427|[0x80004f58]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -549755813889<br>                                                                           |[0x80002a08]:c.addiw a0, 62<br> [0x80002a0a]:sd a0, 1136(ra)<br>  |
| 428|[0x80004f60]<br>0x0000000000000003|- rs1_val == -1099511627777<br>                                                                          |[0x80002a1a]:c.addiw a0, 4<br> [0x80002a1c]:sd a0, 1144(ra)<br>   |
| 429|[0x80004f68]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -2199023255553<br>                                                                          |[0x80002a2c]:c.addiw a0, 61<br> [0x80002a2e]:sd a0, 1152(ra)<br>  |
| 430|[0x80004f70]<br>0x0000000000000004|- rs1_val == -4398046511105<br>                                                                          |[0x80002a3e]:c.addiw a0, 5<br> [0x80002a40]:sd a0, 1160(ra)<br>   |
| 431|[0x80004f78]<br>0x0000000000000008|- rs1_val == -8796093022209<br>                                                                          |[0x80002a50]:c.addiw a0, 9<br> [0x80002a52]:sd a0, 1168(ra)<br>   |
| 432|[0x80004f80]<br>0x0000000000000002|- rs1_val == -17592186044417<br>                                                                         |[0x80002a62]:c.addiw a0, 3<br> [0x80002a64]:sd a0, 1176(ra)<br>   |
| 433|[0x80004f88]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                         |[0x80002a74]:c.addiw a0, 0<br> [0x80002a76]:sd a0, 1184(ra)<br>   |
| 434|[0x80004f90]<br>0x0000000000000009|- rs1_val == -70368744177665<br>                                                                         |[0x80002a86]:c.addiw a0, 10<br> [0x80002a88]:sd a0, 1192(ra)<br>  |
| 435|[0x80004f98]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -140737488355329<br>                                                                        |[0x80002a98]:c.addiw a0, 56<br> [0x80002a9a]:sd a0, 1200(ra)<br>  |
| 436|[0x80004fa0]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == -562949953421313<br>                                                                        |[0x80002aaa]:c.addiw a0, 58<br> [0x80002aac]:sd a0, 1208(ra)<br>  |
