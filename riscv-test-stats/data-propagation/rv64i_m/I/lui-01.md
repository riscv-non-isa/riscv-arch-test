
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800005a0')]      |
| SIG_REGION                | [('0x80002010', '0x80002210', '64 dwords')]      |
| COV_LABELS                | lui      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lui-01.S/lui-01.S    |
| Total Number of coverpoints| 103     |
| Total Coverpoints Hit     | 103      |
| Total Signature Updates   | 63      |
| STAT1                     | 62      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000590]:lui a0, 64
      [0x80000594]:sd a0, 272(ra)
 -- Signature Address: 0x80002200 Data: 0x0000000000040000
 -- Redundant Coverpoints hit by the op
      - opcode : lui
      - rd : x10
      - imm_val > 0
      - imm_val == 64






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

|s.no|            signature             |                             coverpoints                             |                              code                               |
|---:|----------------------------------|---------------------------------------------------------------------|-----------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000000000000000|- opcode : lui<br> - rd : x2<br> - imm_val == 0<br> - imm_val==0<br> |[0x80000398]:lui sp, 0<br> [0x8000039c]:sd sp, 0(a3)<br>         |
|   2|[0x80002018]<br>0x00000000002D4000|- rd : x11<br> - imm_val > 0<br> - imm_val==724<br>                  |[0x800003a0]:lui a1, 724<br> [0x800003a4]:sd a1, 8(a3)<br>       |
|   3|[0x80002020]<br>0xFFFFFFFFFFFFF000|- rd : x12<br> - imm_val == ((2**20)-1)<br>                          |[0x800003a8]:lui a2, 1048575<br> [0x800003ac]:sd a2, 16(a3)<br>  |
|   4|[0x80002028]<br>0x0000000000003000|- rd : x1<br> - imm_val==3<br>                                       |[0x800003b0]:lui ra, 3<br> [0x800003b4]:sd ra, 24(a3)<br>        |
|   5|[0x80002030]<br>0x0000000055555000|- rd : x24<br> - imm_val==349525<br> - imm_val == 349525<br>         |[0x800003b8]:lui s8, 349525<br> [0x800003bc]:sd s8, 32(a3)<br>   |
|   6|[0x80002038]<br>0xFFFFFFFFAAAAA000|- rd : x3<br> - imm_val==699050<br> - imm_val == 699050<br>          |[0x800003c0]:lui gp, 699050<br> [0x800003c4]:sd gp, 40(a3)<br>   |
|   7|[0x80002040]<br>0x0000000000005000|- rd : x4<br> - imm_val==5<br>                                       |[0x800003c8]:lui tp, 5<br> [0x800003cc]:sd tp, 48(a3)<br>        |
|   8|[0x80002048]<br>0x0000000033333000|- rd : x15<br> - imm_val==209715<br>                                 |[0x800003d0]:lui a5, 209715<br> [0x800003d4]:sd a5, 56(a3)<br>   |
|   9|[0x80002050]<br>0x0000000066666000|- rd : x16<br> - imm_val==419430<br>                                 |[0x800003d8]:lui a6, 419430<br> [0x800003dc]:sd a6, 64(a3)<br>   |
|  10|[0x80002058]<br>0x00000000003FF000|- rd : x23<br> - imm_val==1023<br>                                   |[0x800003e0]:lui s7, 1023<br> [0x800003e4]:sd s7, 72(a3)<br>     |
|  11|[0x80002060]<br>0x0000000000002000|- rd : x31<br> - imm_val==2<br> - imm_val == 2<br>                   |[0x800003e8]:lui t6, 2<br> [0x800003ec]:sd t6, 80(a3)<br>        |
|  12|[0x80002068]<br>0x0000000055554000|- rd : x30<br> - imm_val==349524<br>                                 |[0x800003f0]:lui t5, 349524<br> [0x800003f4]:sd t5, 88(a3)<br>   |
|  13|[0x80002070]<br>0xFFFFFFFFAAAA9000|- rd : x28<br> - imm_val==699049<br>                                 |[0x800003f8]:lui t3, 699049<br> [0x800003fc]:sd t3, 96(a3)<br>   |
|  14|[0x80002078]<br>0x0000000000004000|- rd : x10<br> - imm_val==4<br> - imm_val == 4<br>                   |[0x80000400]:lui a0, 4<br> [0x80000404]:sd a0, 104(a3)<br>       |
|  15|[0x80002080]<br>0x0000000033332000|- rd : x19<br> - imm_val==209714<br>                                 |[0x80000408]:lui s3, 209714<br> [0x8000040c]:sd s3, 112(a3)<br>  |
|  16|[0x80002088]<br>0x0000000066665000|- rd : x20<br> - imm_val==419429<br>                                 |[0x80000410]:lui s4, 419429<br> [0x80000414]:sd s4, 120(a3)<br>  |
|  17|[0x80002090]<br>0x00000000002D3000|- rd : x9<br> - imm_val==723<br>                                     |[0x80000418]:lui s1, 723<br> [0x8000041c]:sd s1, 128(a3)<br>     |
|  18|[0x80002098]<br>0x00000000003FE000|- rd : x27<br> - imm_val==1022<br>                                   |[0x80000420]:lui s11, 1022<br> [0x80000424]:sd s11, 136(a3)<br>  |
|  19|[0x800020a0]<br>0x0000000055556000|- rd : x6<br> - imm_val==349526<br>                                  |[0x80000428]:lui t1, 349526<br> [0x8000042c]:sd t1, 144(a3)<br>  |
|  20|[0x800020a8]<br>0xFFFFFFFFAAAAB000|- rd : x8<br> - imm_val==699051<br>                                  |[0x80000430]:lui fp, 699051<br> [0x80000434]:sd fp, 152(a3)<br>  |
|  21|[0x800020b0]<br>0x0000000000006000|- rd : x7<br> - imm_val==6<br>                                       |[0x80000438]:lui t2, 6<br> [0x8000043c]:sd t2, 160(a3)<br>       |
|  22|[0x800020b8]<br>0x0000000033334000|- rd : x5<br> - imm_val==209716<br>                                  |[0x80000440]:lui t0, 209716<br> [0x80000444]:sd t0, 168(a3)<br>  |
|  23|[0x800020c0]<br>0x0000000066667000|- rd : x18<br> - imm_val==419431<br>                                 |[0x80000448]:lui s2, 419431<br> [0x8000044c]:sd s2, 176(a3)<br>  |
|  24|[0x800020c8]<br>0x00000000002D5000|- rd : x14<br> - imm_val==725<br>                                    |[0x80000450]:lui a4, 725<br> [0x80000454]:sd a4, 184(a3)<br>     |
|  25|[0x800020d0]<br>0x0000000000001000|- rd : x21<br> - imm_val==1<br> - imm_val == 1<br>                   |[0x80000458]:lui s5, 1<br> [0x8000045c]:sd s5, 192(a3)<br>       |
|  26|[0x800020d8]<br>0x0000000000400000|- rd : x26<br> - imm_val==1024<br> - imm_val == 1024<br>             |[0x80000460]:lui s10, 1024<br> [0x80000464]:sd s10, 200(a3)<br>  |
|  27|[0x800020e0]<br>0x0000000000008000|- rd : x17<br> - imm_val == 8<br>                                    |[0x80000468]:lui a7, 8<br> [0x8000046c]:sd a7, 208(a3)<br>       |
|  28|[0x800020e8]<br>0x0000000000010000|- rd : x25<br> - imm_val == 16<br>                                   |[0x80000470]:lui s9, 16<br> [0x80000474]:sd s9, 216(a3)<br>      |
|  29|[0x800020f0]<br>0x0000000000020000|- rd : x22<br> - imm_val == 32<br>                                   |[0x80000480]:lui s6, 32<br> [0x80000484]:sd s6, 0(ra)<br>        |
|  30|[0x800020f8]<br>0x0000000000000000|- rd : x0<br> - imm_val == 64<br>                                    |[0x80000488]:lui zero, 64<br> [0x8000048c]:sd zero, 8(ra)<br>    |
|  31|[0x80002100]<br>0x0000000000080000|- rd : x29<br> - imm_val == 128<br>                                  |[0x80000490]:lui t4, 128<br> [0x80000494]:sd t4, 16(ra)<br>      |
|  32|[0x80002108]<br>0xFFFFFFFFEFFFF000|- rd : x13<br> - imm_val == 983039<br>                               |[0x80000498]:lui a3, 983039<br> [0x8000049c]:sd a3, 24(ra)<br>   |
|  33|[0x80002110]<br>0xFFFFFFFFDFFFF000|- imm_val == 917503<br>                                              |[0x800004a0]:lui a0, 917503<br> [0x800004a4]:sd a0, 32(ra)<br>   |
|  34|[0x80002118]<br>0xFFFFFFFFBFFFF000|- imm_val == 786431<br>                                              |[0x800004a8]:lui a0, 786431<br> [0x800004ac]:sd a0, 40(ra)<br>   |
|  35|[0x80002120]<br>0x000000007FFFF000|- imm_val == 524287<br>                                              |[0x800004b0]:lui a0, 524287<br> [0x800004b4]:sd a0, 48(ra)<br>   |
|  36|[0x80002128]<br>0x0000000000100000|- imm_val == 256<br>                                                 |[0x800004b8]:lui a0, 256<br> [0x800004bc]:sd a0, 56(ra)<br>      |
|  37|[0x80002130]<br>0x0000000000200000|- imm_val == 512<br>                                                 |[0x800004c0]:lui a0, 512<br> [0x800004c4]:sd a0, 64(ra)<br>      |
|  38|[0x80002138]<br>0x0000000000800000|- imm_val == 2048<br>                                                |[0x800004c8]:lui a0, 2048<br> [0x800004cc]:sd a0, 72(ra)<br>     |
|  39|[0x80002140]<br>0x0000000001000000|- imm_val == 4096<br>                                                |[0x800004d0]:lui a0, 4096<br> [0x800004d4]:sd a0, 80(ra)<br>     |
|  40|[0x80002148]<br>0x0000000002000000|- imm_val == 8192<br>                                                |[0x800004d8]:lui a0, 8192<br> [0x800004dc]:sd a0, 88(ra)<br>     |
|  41|[0x80002150]<br>0x0000000004000000|- imm_val == 16384<br>                                               |[0x800004e0]:lui a0, 16384<br> [0x800004e4]:sd a0, 96(ra)<br>    |
|  42|[0x80002158]<br>0x0000000008000000|- imm_val == 32768<br>                                               |[0x800004e8]:lui a0, 32768<br> [0x800004ec]:sd a0, 104(ra)<br>   |
|  43|[0x80002160]<br>0x0000000010000000|- imm_val == 65536<br>                                               |[0x800004f0]:lui a0, 65536<br> [0x800004f4]:sd a0, 112(ra)<br>   |
|  44|[0x80002168]<br>0x0000000020000000|- imm_val == 131072<br>                                              |[0x800004f8]:lui a0, 131072<br> [0x800004fc]:sd a0, 120(ra)<br>  |
|  45|[0x80002170]<br>0x0000000040000000|- imm_val == 262144<br>                                              |[0x80000500]:lui a0, 262144<br> [0x80000504]:sd a0, 128(ra)<br>  |
|  46|[0x80002178]<br>0xFFFFFFFF80000000|- imm_val == 524288<br>                                              |[0x80000508]:lui a0, 524288<br> [0x8000050c]:sd a0, 136(ra)<br>  |
|  47|[0x80002180]<br>0xFFFFFFFFFFFFE000|- imm_val == 1048574<br>                                             |[0x80000510]:lui a0, 1048574<br> [0x80000514]:sd a0, 144(ra)<br> |
|  48|[0x80002188]<br>0xFFFFFFFFFFFFD000|- imm_val == 1048573<br>                                             |[0x80000518]:lui a0, 1048573<br> [0x8000051c]:sd a0, 152(ra)<br> |
|  49|[0x80002190]<br>0xFFFFFFFFFFFFB000|- imm_val == 1048571<br>                                             |[0x80000520]:lui a0, 1048571<br> [0x80000524]:sd a0, 160(ra)<br> |
|  50|[0x80002198]<br>0xFFFFFFFFFFFF7000|- imm_val == 1048567<br>                                             |[0x80000528]:lui a0, 1048567<br> [0x8000052c]:sd a0, 168(ra)<br> |
|  51|[0x800021a0]<br>0xFFFFFFFFFFFEF000|- imm_val == 1048559<br>                                             |[0x80000530]:lui a0, 1048559<br> [0x80000534]:sd a0, 176(ra)<br> |
|  52|[0x800021a8]<br>0xFFFFFFFFFFFDF000|- imm_val == 1048543<br>                                             |[0x80000538]:lui a0, 1048543<br> [0x8000053c]:sd a0, 184(ra)<br> |
|  53|[0x800021b0]<br>0xFFFFFFFFFFFBF000|- imm_val == 1048511<br>                                             |[0x80000540]:lui a0, 1048511<br> [0x80000544]:sd a0, 192(ra)<br> |
|  54|[0x800021b8]<br>0xFFFFFFFFFFF7F000|- imm_val == 1048447<br>                                             |[0x80000548]:lui a0, 1048447<br> [0x8000054c]:sd a0, 200(ra)<br> |
|  55|[0x800021c0]<br>0xFFFFFFFFFFEFF000|- imm_val == 1048319<br>                                             |[0x80000550]:lui a0, 1048319<br> [0x80000554]:sd a0, 208(ra)<br> |
|  56|[0x800021c8]<br>0xFFFFFFFFFFDFF000|- imm_val == 1048063<br>                                             |[0x80000558]:lui a0, 1048063<br> [0x8000055c]:sd a0, 216(ra)<br> |
|  57|[0x800021d0]<br>0xFFFFFFFFFFBFF000|- imm_val == 1047551<br>                                             |[0x80000560]:lui a0, 1047551<br> [0x80000564]:sd a0, 224(ra)<br> |
|  58|[0x800021d8]<br>0xFFFFFFFFFF7FF000|- imm_val == 1046527<br>                                             |[0x80000568]:lui a0, 1046527<br> [0x8000056c]:sd a0, 232(ra)<br> |
|  59|[0x800021e0]<br>0xFFFFFFFFFEFFF000|- imm_val == 1044479<br>                                             |[0x80000570]:lui a0, 1044479<br> [0x80000574]:sd a0, 240(ra)<br> |
|  60|[0x800021e8]<br>0xFFFFFFFFFDFFF000|- imm_val == 1040383<br>                                             |[0x80000578]:lui a0, 1040383<br> [0x8000057c]:sd a0, 248(ra)<br> |
|  61|[0x800021f0]<br>0xFFFFFFFFFBFFF000|- imm_val == 1032191<br>                                             |[0x80000580]:lui a0, 1032191<br> [0x80000584]:sd a0, 256(ra)<br> |
|  62|[0x800021f8]<br>0xFFFFFFFFF7FFF000|- imm_val == 1015807<br>                                             |[0x80000588]:lui a0, 1015807<br> [0x8000058c]:sd a0, 264(ra)<br> |
