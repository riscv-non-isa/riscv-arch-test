
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c10')]      |
| SIG_REGION                | [('0x80003208', '0x80003640', '135 dwords')]      |
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 135      |
| STAT1                     | 133      |
| STAT2                     | 2      |
| STAT3                     | 68     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f8]:addi a1, a0, 2
      [0x800008fc]:sd a1, 520(ra)
 -- Signature Address: 0x800034c0 Data: 0xFFFFFFFFFFFFFFF8
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val < 0 and imm_val > 0
      - imm_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c04]:addi a1, a0, 3071
      [0x80000c08]:sd a1, 896(ra)
 -- Signature Address: 0x80003638 Data: 0xFFFFFFFFFFFFFCFF
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -1025
      - rs1_val == 256






```

## Details of STAT3

```
[0x80000394]:addi t0, t0, 3704

[0x80000398]:addi a3, zero, 6

[0x800003cc]:addi s2, s2, 4095

[0x800003e8]:addi a6, zero, 0

[0x800003fc]:addi t5, t5, 4095

[0x80000408]:addi a0, zero, 1

[0x80000444]:addi ra, zero, 2

[0x80000450]:addi s11, zero, 4

[0x8000045c]:addi zero, zero, 8

[0x80000468]:addi t6, zero, 16

[0x80000474]:addi fp, zero, 32

[0x80000480]:addi a1, zero, 64

[0x8000048c]:addi sp, zero, 128

[0x80000498]:addi s7, zero, 256

[0x800004a4]:addi t4, zero, 512

[0x800004b0]:addi tp, zero, 1024

[0x800004d0]:addi ra, ra, 3564
[0x800004d4]:lui a2, 1

[0x800007a8]:addi a0, zero, 4094

[0x800007bc]:addi a0, a0, 4095

[0x800007d0]:addi a0, a0, 4095

[0x800007e4]:addi a0, a0, 4095

[0x800007f8]:addi a0, a0, 4095

[0x8000080c]:addi a0, a0, 4095

[0x80000820]:addi a0, a0, 4095

[0x80000834]:addi a0, a0, 4095

[0x80000848]:addi a0, a0, 4095

[0x8000085c]:addi a0, a0, 4095

[0x80000870]:addi a0, a0, 4095

[0x80000884]:addi a0, a0, 4095

[0x80000898]:addi a0, a0, 4095

[0x800008b0]:addi a0, a0, 1365
[0x800008b4]:slli a0, a0, 12

[0x800008b8]:addi a0, a0, 1365
[0x800008bc]:slli a0, a0, 12

[0x800008c0]:addi a0, a0, 1365

[0x800008d8]:addi a0, a0, 2731
[0x800008dc]:slli a0, a0, 12

[0x800008e0]:addi a0, a0, 2731
[0x800008e4]:slli a0, a0, 12

[0x800008e8]:addi a0, a0, 2730

[0x800008f4]:addi a0, zero, 4086

[0x80000910]:addi a0, zero, 4093

[0x8000091c]:addi a0, zero, 4091

[0x80000928]:addi a0, zero, 4087

[0x80000934]:addi a0, zero, 4079

[0x80000940]:addi a0, zero, 4063

[0x8000094c]:addi a0, zero, 4031

[0x80000958]:addi a0, zero, 3967

[0x80000964]:addi a0, zero, 3839

[0x80000970]:addi a0, zero, 3583

[0x8000097c]:addi a0, zero, 3071

[0x80000a80]:addi a0, a0, 4095

[0x80000a94]:addi a0, a0, 4095

[0x80000aa8]:addi a0, a0, 4095

[0x80000abc]:addi a0, a0, 4095

[0x80000ad0]:addi a0, a0, 4095

[0x80000ae4]:addi a0, a0, 4095

[0x80000af8]:addi a0, a0, 4095

[0x80000b0c]:addi a0, a0, 4095

[0x80000b20]:addi a0, a0, 4095

[0x80000b34]:addi a0, a0, 4095

[0x80000b48]:addi a0, a0, 4095

[0x80000b5c]:addi a0, a0, 4095

[0x80000b70]:addi a0, a0, 4095

[0x80000b84]:addi a0, a0, 4095

[0x80000b98]:addi a0, a0, 4095

[0x80000bac]:addi a0, a0, 4095

[0x80000bc0]:addi a0, a0, 4095

[0x80000bd4]:addi a0, a0, 4095

[0x80000be8]:addi a0, a0, 4095

[0x80000bf4]:addi a0, zero, 8

[0x80000c00]:addi a0, zero, 256



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

|s.no|            signature             |                                                  coverpoints                                                   |                                 code                                  |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003208]<br>0x000000000000000C|- rs1 : x13<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br>                                      |[0x8000039c]:addi a3, a3, 6<br> [0x800003a0]:sd a3, 0(t0)<br>          |
|   2|[0x80003210]<br>0xFFFFFFFFFFFEFBFE|- rs1 : x14<br> - rd : x22<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -1025<br> - rs1_val == -65537<br> |[0x800003ac]:addi s6, a4, 3071<br> [0x800003b0]:sd s6, 8(t0)<br>       |
|   3|[0x80003218]<br>0x00000FFFFFFFFFFD|- rs1 : x20<br> - rd : x27<br> - imm_val == -3<br> - rs1_val == 17592186044416<br>                              |[0x800003bc]:addi s11, s4, 4093<br> [0x800003c0]:sd s11, 16(t0)<br>    |
|   4|[0x80003220]<br>0xFFFFE00000000554|- rd : x6<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 1365<br> - rs1_val == -35184372088833<br>          |[0x800003d0]:addi t1, s2, 1365<br> [0x800003d4]:sd t1, 24(t0)<br>      |
|   5|[0x80003228]<br>0x80000000000003FF|- rs1 : x24<br> - rd : x14<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>            |[0x800003e0]:addi a4, s8, 1023<br> [0x800003e4]:sd a4, 32(t0)<br>      |
|   6|[0x80003230]<br>0x0000000000000005|- rs1 : x16<br> - rd : x21<br>                                                                                  |[0x800003ec]:addi s5, a6, 5<br> [0x800003f0]:sd s5, 40(t0)<br>         |
|   7|[0x80003238]<br>0x8000000000000000|- rd : x29<br> - imm_val == 1<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>         |[0x80000400]:addi t4, t5, 1<br> [0x80000404]:sd t4, 48(t0)<br>         |
|   8|[0x80003240]<br>0xFFFFFFFFFFFFFFF7|- rs1 : x10<br> - rs1_val == 1<br>                                                                              |[0x8000040c]:addi t5, a0, 4086<br> [0x80000410]:sd t5, 56(t0)<br>      |
|   9|[0x80003248]<br>0xFFFFFFFFFDFFF7FF|- rs1 : x6<br> - rd : x17<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -33554433<br>   |[0x8000041c]:addi a7, t1, 2048<br> [0x80000420]:sd a7, 64(t0)<br>      |
|  10|[0x80003250]<br>0xFFFFFFFFF7FFFFFF|- rs1 : x25<br> - rd : x20<br> - rs1_val == -134217729<br>                                                      |[0x8000042c]:addi s4, s9, 0<br> [0x80000430]:sd s4, 72(t0)<br>         |
|  11|[0x80003258]<br>0xFFFFFFFFFFFE07FE|- rs1 : x7<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -131073<br>                    |[0x8000043c]:addi a0, t2, 2047<br> [0x80000440]:sd a0, 80(t0)<br>      |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFFFC1|- rs1 : x1<br> - rd : x2<br> - imm_val == -65<br> - rs1_val == 2<br>                                            |[0x80000448]:addi sp, ra, 4031<br> [0x8000044c]:sd sp, 88(t0)<br>      |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFF03|- rs1 : x27<br> - rd : x19<br> - imm_val == -257<br> - rs1_val == 4<br>                                         |[0x80000454]:addi s3, s11, 3839<br> [0x80000458]:sd s3, 96(t0)<br>     |
|  14|[0x80003270]<br>0x0000000000000100|- imm_val == 256<br>                                                                                            |[0x80000460]:addi ra, zero, 256<br> [0x80000464]:sd ra, 104(t0)<br>    |
|  15|[0x80003278]<br>0xFFFFFFFFFFFFFFCF|- rs1 : x31<br> - rd : x15<br> - rs1_val == 16<br>                                                              |[0x8000046c]:addi a5, t6, 4031<br> [0x80000470]:sd a5, 112(t0)<br>     |
|  16|[0x80003280]<br>0xFFFFFFFFFFFFFF1F|- rs1 : x8<br> - rd : x7<br> - rs1_val == 32<br>                                                                |[0x80000478]:addi t2, fp, 3839<br> [0x8000047c]:sd t2, 120(t0)<br>     |
|  17|[0x80003288]<br>0x0000000000000048|- rs1 : x11<br> - rd : x3<br> - rs1_val == 64<br>                                                               |[0x80000484]:addi gp, a1, 8<br> [0x80000488]:sd gp, 128(t0)<br>        |
|  18|[0x80003290]<br>0x0000000000000076|- rs1 : x2<br> - rd : x23<br> - rs1_val == 128<br>                                                              |[0x80000490]:addi s7, sp, 4086<br> [0x80000494]:sd s7, 136(t0)<br>     |
|  19|[0x80003298]<br>0x0000000000000000|- rs1 : x23<br> - rs1_val == 256<br>                                                                            |[0x8000049c]:addi zero, s7, 3071<br> [0x800004a0]:sd zero, 144(t0)<br> |
|  20|[0x800032a0]<br>0x000000000000017F|- rs1 : x29<br> - rd : x9<br> - imm_val == -129<br> - rs1_val == 512<br>                                        |[0x800004a8]:addi s1, t4, 3967<br> [0x800004ac]:sd s1, 152(t0)<br>     |
|  21|[0x800032a8]<br>0x0000000000000410|- rs1 : x4<br> - rs1_val == 1024<br>                                                                            |[0x800004b4]:addi t6, tp, 16<br> [0x800004b8]:sd t6, 160(t0)<br>       |
|  22|[0x800032b0]<br>0x0000000000000800|- rs1 : x15<br> - rd : x12<br> - rs1_val == 2048<br>                                                            |[0x800004c4]:addi a2, a5, 0<br> [0x800004c8]:sd a2, 168(t0)<br>        |
|  23|[0x800032b8]<br>0x0000000000000FF8|- rs1 : x12<br> - rd : x25<br> - rs1_val == 4096<br>                                                            |[0x800004d8]:addi s9, a2, 4088<br> [0x800004dc]:sd s9, 0(ra)<br>       |
|  24|[0x800032c0]<br>0x0000000000001FF7|- rs1 : x26<br> - imm_val == -9<br> - rs1_val == 8192<br>                                                       |[0x800004e4]:addi tp, s10, 4087<br> [0x800004e8]:sd tp, 8(ra)<br>      |
|  25|[0x800032c8]<br>0x0000000000003FFE|- rs1 : x9<br> - rd : x26<br> - imm_val == -2<br> - rs1_val == 16384<br>                                        |[0x800004f0]:addi s10, s1, 4094<br> [0x800004f4]:sd s10, 16(ra)<br>    |
|  26|[0x800032d0]<br>0x0000000000008003|- rs1 : x21<br> - rd : x24<br> - rs1_val == 32768<br>                                                           |[0x800004fc]:addi s8, s5, 3<br> [0x80000500]:sd s8, 24(ra)<br>         |
|  27|[0x800032d8]<br>0x0000000000010001|- rs1_val == 65536<br>                                                                                          |[0x80000508]:addi s2, t0, 1<br> [0x8000050c]:sd s2, 32(ra)<br>         |
|  28|[0x800032e0]<br>0x000000000001FFFE|- rs1 : x19<br> - rs1_val == 131072<br>                                                                         |[0x80000514]:addi a6, s3, 4094<br> [0x80000518]:sd a6, 40(ra)<br>      |
|  29|[0x800032e8]<br>0x0000000000040003|- rs1 : x17<br> - rd : x28<br> - rs1_val == 262144<br>                                                          |[0x80000520]:addi t3, a7, 3<br> [0x80000524]:sd t3, 48(ra)<br>         |
|  30|[0x800032f0]<br>0x000000000007FFF9|- rs1 : x22<br> - rs1_val == 524288<br>                                                                         |[0x8000052c]:addi fp, s6, 4089<br> [0x80000530]:sd fp, 56(ra)<br>      |
|  31|[0x800032f8]<br>0x0000000000100003|- rs1 : x3<br> - rs1_val == 1048576<br>                                                                         |[0x80000538]:addi t0, gp, 3<br> [0x8000053c]:sd t0, 64(ra)<br>         |
|  32|[0x80003300]<br>0x0000000000200100|- rs1 : x28<br> - rs1_val == 2097152<br>                                                                        |[0x80000544]:addi a1, t3, 256<br> [0x80000548]:sd a1, 72(ra)<br>       |
|  33|[0x80003308]<br>0x00000000003FFFFA|- rs1_val == 4194304<br>                                                                                        |[0x80000550]:addi a1, a0, 4090<br> [0x80000554]:sd a1, 80(ra)<br>      |
|  34|[0x80003310]<br>0x0000000000800080|- rs1_val == 8388608<br>                                                                                        |[0x8000055c]:addi a1, a0, 128<br> [0x80000560]:sd a1, 88(ra)<br>       |
|  35|[0x80003318]<br>0x0000000000FFFFFE|- rs1_val == 16777216<br>                                                                                       |[0x80000568]:addi a1, a0, 4094<br> [0x8000056c]:sd a1, 96(ra)<br>      |
|  36|[0x80003320]<br>0x0000000002000001|- rs1_val == 33554432<br>                                                                                       |[0x80000574]:addi a1, a0, 1<br> [0x80000578]:sd a1, 104(ra)<br>        |
|  37|[0x80003328]<br>0x0000000004000020|- rs1_val == 67108864<br>                                                                                       |[0x80000580]:addi a1, a0, 32<br> [0x80000584]:sd a1, 112(ra)<br>       |
|  38|[0x80003330]<br>0x0000000008000009|- rs1_val == 134217728<br>                                                                                      |[0x8000058c]:addi a1, a0, 9<br> [0x80000590]:sd a1, 120(ra)<br>        |
|  39|[0x80003338]<br>0x000000000FFFF800|- rs1_val == 268435456<br>                                                                                      |[0x80000598]:addi a1, a0, 2048<br> [0x8000059c]:sd a1, 128(ra)<br>     |
|  40|[0x80003340]<br>0x000000001FFFFC00|- rs1_val == 536870912<br>                                                                                      |[0x800005a4]:addi a1, a0, 3072<br> [0x800005a8]:sd a1, 136(ra)<br>     |
|  41|[0x80003348]<br>0x00000000400007FF|- rs1_val == 1073741824<br>                                                                                     |[0x800005b0]:addi a1, a0, 2047<br> [0x800005b4]:sd a1, 144(ra)<br>     |
|  42|[0x80003350]<br>0x000000007FFFFFF8|- rs1_val == 2147483648<br>                                                                                     |[0x800005c0]:addi a1, a0, 4088<br> [0x800005c4]:sd a1, 152(ra)<br>     |
|  43|[0x80003358]<br>0x00000000FFFFFFDF|- imm_val == -33<br> - rs1_val == 4294967296<br>                                                                |[0x800005d0]:addi a1, a0, 4063<br> [0x800005d4]:sd a1, 160(ra)<br>     |
|  44|[0x80003360]<br>0x0000000200000010|- rs1_val == 8589934592<br>                                                                                     |[0x800005e0]:addi a1, a0, 16<br> [0x800005e4]:sd a1, 168(ra)<br>       |
|  45|[0x80003368]<br>0x0000000400000004|- rs1_val == 17179869184<br>                                                                                    |[0x800005f0]:addi a1, a0, 4<br> [0x800005f4]:sd a1, 176(ra)<br>        |
|  46|[0x80003370]<br>0x0000000800000555|- rs1_val == 34359738368<br>                                                                                    |[0x80000600]:addi a1, a0, 1365<br> [0x80000604]:sd a1, 184(ra)<br>     |
|  47|[0x80003378]<br>0x0000000FFFFFFF7F|- rs1_val == 68719476736<br>                                                                                    |[0x80000610]:addi a1, a0, 3967<br> [0x80000614]:sd a1, 192(ra)<br>     |
|  48|[0x80003380]<br>0x0000001FFFFFFFDF|- rs1_val == 137438953472<br>                                                                                   |[0x80000620]:addi a1, a0, 4063<br> [0x80000624]:sd a1, 200(ra)<br>     |
|  49|[0x80003388]<br>0x0000004000000080|- rs1_val == 274877906944<br>                                                                                   |[0x80000630]:addi a1, a0, 128<br> [0x80000634]:sd a1, 208(ra)<br>      |
|  50|[0x80003390]<br>0x0000008000000020|- rs1_val == 549755813888<br>                                                                                   |[0x80000640]:addi a1, a0, 32<br> [0x80000644]:sd a1, 216(ra)<br>       |
|  51|[0x80003398]<br>0x0000010000000100|- rs1_val == 1099511627776<br>                                                                                  |[0x80000650]:addi a1, a0, 256<br> [0x80000654]:sd a1, 224(ra)<br>      |
|  52|[0x800033a0]<br>0x0000020000000001|- rs1_val == 2199023255552<br>                                                                                  |[0x80000660]:addi a1, a0, 1<br> [0x80000664]:sd a1, 232(ra)<br>        |
|  53|[0x800033a8]<br>0x000003FFFFFFFAAA|- imm_val == -1366<br> - rs1_val == 4398046511104<br>                                                           |[0x80000670]:addi a1, a0, 2730<br> [0x80000674]:sd a1, 240(ra)<br>     |
|  54|[0x800033b0]<br>0x000007FFFFFFFFF8|- rs1_val == 8796093022208<br>                                                                                  |[0x80000680]:addi a1, a0, 4088<br> [0x80000684]:sd a1, 248(ra)<br>     |
|  55|[0x800033b8]<br>0x00002000000003FF|- rs1_val == 35184372088832<br>                                                                                 |[0x80000690]:addi a1, a0, 1023<br> [0x80000694]:sd a1, 256(ra)<br>     |
|  56|[0x800033c0]<br>0x00003FFFFFFFFFF7|- rs1_val == 70368744177664<br>                                                                                 |[0x800006a0]:addi a1, a0, 4087<br> [0x800006a4]:sd a1, 264(ra)<br>     |
|  57|[0x800033c8]<br>0x00007FFFFFFFFDFF|- imm_val == -513<br> - rs1_val == 140737488355328<br>                                                          |[0x800006b0]:addi a1, a0, 3583<br> [0x800006b4]:sd a1, 272(ra)<br>     |
|  58|[0x800033d0]<br>0x0001000000000004|- rs1_val == 281474976710656<br>                                                                                |[0x800006c0]:addi a1, a0, 4<br> [0x800006c4]:sd a1, 280(ra)<br>        |
|  59|[0x800033d8]<br>0x0002000000000001|- rs1_val == 562949953421312<br>                                                                                |[0x800006d0]:addi a1, a0, 1<br> [0x800006d4]:sd a1, 288(ra)<br>        |
|  60|[0x800033e0]<br>0x0003FFFFFFFFFFEF|- imm_val == -17<br> - rs1_val == 1125899906842624<br>                                                          |[0x800006e0]:addi a1, a0, 4079<br> [0x800006e4]:sd a1, 296(ra)<br>     |
|  61|[0x800033e8]<br>0x0007FFFFFFFFFFF9|- rs1_val == 2251799813685248<br>                                                                               |[0x800006f0]:addi a1, a0, 4089<br> [0x800006f4]:sd a1, 304(ra)<br>     |
|  62|[0x800033f0]<br>0x0010000000000080|- rs1_val == 4503599627370496<br>                                                                               |[0x80000700]:addi a1, a0, 128<br> [0x80000704]:sd a1, 312(ra)<br>      |
|  63|[0x800033f8]<br>0x001FFFFFFFFFFFFA|- rs1_val == 9007199254740992<br>                                                                               |[0x80000710]:addi a1, a0, 4090<br> [0x80000714]:sd a1, 320(ra)<br>     |
|  64|[0x80003400]<br>0x0040000000000001|- rs1_val == 18014398509481984<br>                                                                              |[0x80000720]:addi a1, a0, 1<br> [0x80000724]:sd a1, 328(ra)<br>        |
|  65|[0x80003408]<br>0x007FFFFFFFFFFFFF|- rs1_val == 36028797018963968<br>                                                                              |[0x80000730]:addi a1, a0, 4095<br> [0x80000734]:sd a1, 336(ra)<br>     |
|  66|[0x80003410]<br>0x00FFFFFFFFFFFFFC|- rs1_val == 72057594037927936<br>                                                                              |[0x80000740]:addi a1, a0, 4092<br> [0x80000744]:sd a1, 344(ra)<br>     |
|  67|[0x80003418]<br>0x0200000000000080|- rs1_val == 144115188075855872<br>                                                                             |[0x80000750]:addi a1, a0, 128<br> [0x80000754]:sd a1, 352(ra)<br>      |
|  68|[0x80003420]<br>0x0400000000000555|- rs1_val == 288230376151711744<br>                                                                             |[0x80000760]:addi a1, a0, 1365<br> [0x80000764]:sd a1, 360(ra)<br>     |
|  69|[0x80003428]<br>0x07FFFFFFFFFFF800|- rs1_val == 576460752303423488<br>                                                                             |[0x80000770]:addi a1, a0, 2048<br> [0x80000774]:sd a1, 368(ra)<br>     |
|  70|[0x80003430]<br>0x0FFFFFFFFFFFFDFF|- rs1_val == 1152921504606846976<br>                                                                            |[0x80000780]:addi a1, a0, 3583<br> [0x80000784]:sd a1, 376(ra)<br>     |
|  71|[0x80003438]<br>0x1FFFFFFFFFFFFFFA|- rs1_val == 2305843009213693952<br>                                                                            |[0x80000790]:addi a1, a0, 4090<br> [0x80000794]:sd a1, 384(ra)<br>     |
|  72|[0x80003440]<br>0x4000000000000040|- rs1_val == 4611686018427387904<br>                                                                            |[0x800007a0]:addi a1, a0, 64<br> [0x800007a4]:sd a1, 392(ra)<br>       |
|  73|[0x80003448]<br>0xFFFFFFFFFFFFFDFD|- rs1_val == -2<br>                                                                                             |[0x800007ac]:addi a1, a0, 3583<br> [0x800007b0]:sd a1, 400(ra)<br>     |
|  74|[0x80003450]<br>0xFFF7FFFFFFFFFFFB|- rs1_val == -2251799813685249<br>                                                                              |[0x800007c0]:addi a1, a0, 4092<br> [0x800007c4]:sd a1, 408(ra)<br>     |
|  75|[0x80003458]<br>0xFFF00000000001FF|- rs1_val == -4503599627370497<br>                                                                              |[0x800007d4]:addi a1, a0, 512<br> [0x800007d8]:sd a1, 416(ra)<br>      |
|  76|[0x80003460]<br>0xFFDFFFFFFFFFFFEE|- rs1_val == -9007199254740993<br>                                                                              |[0x800007e8]:addi a1, a0, 4079<br> [0x800007ec]:sd a1, 424(ra)<br>     |
|  77|[0x80003468]<br>0xFFC0000000000004|- rs1_val == -18014398509481985<br>                                                                             |[0x800007fc]:addi a1, a0, 5<br> [0x80000800]:sd a1, 432(ra)<br>        |
|  78|[0x80003470]<br>0xFF80000000000004|- rs1_val == -36028797018963969<br>                                                                             |[0x80000810]:addi a1, a0, 5<br> [0x80000814]:sd a1, 440(ra)<br>        |
|  79|[0x80003478]<br>0xFF000000000003FF|- rs1_val == -72057594037927937<br>                                                                             |[0x80000824]:addi a1, a0, 1024<br> [0x80000828]:sd a1, 448(ra)<br>     |
|  80|[0x80003480]<br>0xFDFFFFFFFFFFFFF5|- rs1_val == -144115188075855873<br>                                                                            |[0x80000838]:addi a1, a0, 4086<br> [0x8000083c]:sd a1, 456(ra)<br>     |
|  81|[0x80003488]<br>0xFC0000000000001F|- rs1_val == -288230376151711745<br>                                                                            |[0x8000084c]:addi a1, a0, 32<br> [0x80000850]:sd a1, 464(ra)<br>       |
|  82|[0x80003490]<br>0xF7FFFFFFFFFFFAA9|- rs1_val == -576460752303423489<br>                                                                            |[0x80000860]:addi a1, a0, 2730<br> [0x80000864]:sd a1, 472(ra)<br>     |
|  83|[0x80003498]<br>0xF00000000000007F|- rs1_val == -1152921504606846977<br>                                                                           |[0x80000874]:addi a1, a0, 128<br> [0x80000878]:sd a1, 480(ra)<br>      |
|  84|[0x800034a0]<br>0xE000000000000000|- rs1_val == -2305843009213693953<br>                                                                           |[0x80000888]:addi a1, a0, 1<br> [0x8000088c]:sd a1, 488(ra)<br>        |
|  85|[0x800034a8]<br>0xC00000000000000F|- rs1_val == -4611686018427387905<br>                                                                           |[0x8000089c]:addi a1, a0, 16<br> [0x800008a0]:sd a1, 496(ra)<br>       |
|  86|[0x800034b0]<br>0x5555555555555554|- rs1_val == 6148914691236517205<br>                                                                            |[0x800008c4]:addi a1, a0, 4095<br> [0x800008c8]:sd a1, 504(ra)<br>     |
|  87|[0x800034b8]<br>0xAAAAAAAAAAAAB2A9|- rs1_val == -6148914691236517206<br>                                                                           |[0x800008ec]:addi a1, a0, 2047<br> [0x800008f0]:sd a1, 512(ra)<br>     |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFFBFFA|- imm_val == -5<br> - rs1_val == -16385<br>                                                                     |[0x80000908]:addi a1, a0, 4091<br> [0x8000090c]:sd a1, 528(ra)<br>     |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFFFDFC|- rs1_val == -3<br>                                                                                             |[0x80000914]:addi a1, a0, 3583<br> [0x80000918]:sd a1, 536(ra)<br>     |
|  90|[0x800034d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                             |[0x80000920]:addi a1, a0, 4<br> [0x80000924]:sd a1, 544(ra)<br>        |
|  91|[0x800034e0]<br>0x00000000000003F7|- rs1_val == -9<br>                                                                                             |[0x8000092c]:addi a1, a0, 1024<br> [0x80000930]:sd a1, 552(ra)<br>     |
|  92|[0x800034e8]<br>0xFFFFFFFFFFFFFFDE|- rs1_val == -17<br>                                                                                            |[0x80000938]:addi a1, a0, 4079<br> [0x8000093c]:sd a1, 560(ra)<br>     |
|  93|[0x800034f0]<br>0x00000000000001DF|- rs1_val == -33<br>                                                                                            |[0x80000944]:addi a1, a0, 512<br> [0x80000948]:sd a1, 568(ra)<br>      |
|  94|[0x800034f8]<br>0xFFFFFFFFFFFFFFB9|- rs1_val == -65<br>                                                                                            |[0x80000950]:addi a1, a0, 4090<br> [0x80000954]:sd a1, 576(ra)<br>     |
|  95|[0x80003500]<br>0xFFFFFFFFFFFFFF7C|- rs1_val == -129<br>                                                                                           |[0x8000095c]:addi a1, a0, 4093<br> [0x80000960]:sd a1, 584(ra)<br>     |
|  96|[0x80003508]<br>0xFFFFFFFFFFFFFF08|- rs1_val == -257<br>                                                                                           |[0x80000968]:addi a1, a0, 9<br> [0x8000096c]:sd a1, 592(ra)<br>        |
|  97|[0x80003510]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                           |[0x80000974]:addi a1, a0, 512<br> [0x80000978]:sd a1, 600(ra)<br>      |
|  98|[0x80003518]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                          |[0x80000980]:addi a1, a0, 0<br> [0x80000984]:sd a1, 608(ra)<br>        |
|  99|[0x80003520]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -2049<br>                                                                                          |[0x80000990]:addi a1, a0, 1024<br> [0x80000994]:sd a1, 616(ra)<br>     |
| 100|[0x80003528]<br>0xFFFFFFFFFFFFEFF6|- rs1_val == -4097<br>                                                                                          |[0x800009a0]:addi a1, a0, 4087<br> [0x800009a4]:sd a1, 624(ra)<br>     |
| 101|[0x80003530]<br>0xFFFFFFFFFFFFDDFE|- rs1_val == -8193<br>                                                                                          |[0x800009b0]:addi a1, a0, 3583<br> [0x800009b4]:sd a1, 632(ra)<br>     |
| 102|[0x80003538]<br>0xFFFFFFFFFFFF7DFE|- rs1_val == -32769<br>                                                                                         |[0x800009c0]:addi a1, a0, 3583<br> [0x800009c4]:sd a1, 640(ra)<br>     |
| 103|[0x80003540]<br>0xFFFFFFFFFFFC0007|- rs1_val == -262145<br>                                                                                        |[0x800009d0]:addi a1, a0, 8<br> [0x800009d4]:sd a1, 648(ra)<br>        |
| 104|[0x80003548]<br>0xFFFFFFFFFFF7FFFB|- rs1_val == -524289<br>                                                                                        |[0x800009e0]:addi a1, a0, 4092<br> [0x800009e4]:sd a1, 656(ra)<br>     |
| 105|[0x80003550]<br>0xFFFFFFFFFFEFFEFE|- rs1_val == -1048577<br>                                                                                       |[0x800009f0]:addi a1, a0, 3839<br> [0x800009f4]:sd a1, 664(ra)<br>     |
| 106|[0x80003558]<br>0xFFFFFFFFFFE00554|- rs1_val == -2097153<br>                                                                                       |[0x80000a00]:addi a1, a0, 1365<br> [0x80000a04]:sd a1, 672(ra)<br>     |
| 107|[0x80003560]<br>0xFFFFFFFFFFBFFFF7|- rs1_val == -4194305<br>                                                                                       |[0x80000a10]:addi a1, a0, 4088<br> [0x80000a14]:sd a1, 680(ra)<br>     |
| 108|[0x80003568]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                       |[0x80000a20]:addi a1, a0, 0<br> [0x80000a24]:sd a1, 688(ra)<br>        |
| 109|[0x80003570]<br>0xFFFFFFFFFF0003FE|- rs1_val == -16777217<br>                                                                                      |[0x80000a30]:addi a1, a0, 1023<br> [0x80000a34]:sd a1, 696(ra)<br>     |
| 110|[0x80003578]<br>0xFFFFFFFFFBFFF7FF|- rs1_val == -67108865<br>                                                                                      |[0x80000a40]:addi a1, a0, 2048<br> [0x80000a44]:sd a1, 704(ra)<br>     |
| 111|[0x80003580]<br>0xFFFFFFFFF0000003|- rs1_val == -268435457<br>                                                                                     |[0x80000a50]:addi a1, a0, 4<br> [0x80000a54]:sd a1, 712(ra)<br>        |
| 112|[0x80003588]<br>0xFFFFFFFFDFFFFFEE|- rs1_val == -536870913<br>                                                                                     |[0x80000a60]:addi a1, a0, 4079<br> [0x80000a64]:sd a1, 720(ra)<br>     |
| 113|[0x80003590]<br>0xFFFFFFFFC00000FF|- rs1_val == -1073741825<br>                                                                                    |[0x80000a70]:addi a1, a0, 256<br> [0x80000a74]:sd a1, 728(ra)<br>      |
| 114|[0x80003598]<br>0xFFFFFFFF800007FE|- rs1_val == -2147483649<br>                                                                                    |[0x80000a84]:addi a1, a0, 2047<br> [0x80000a88]:sd a1, 736(ra)<br>     |
| 115|[0x800035a0]<br>0xFFFFFFFEFFFFFFF5|- rs1_val == -4294967297<br>                                                                                    |[0x80000a98]:addi a1, a0, 4086<br> [0x80000a9c]:sd a1, 744(ra)<br>     |
| 116|[0x800035a8]<br>0xFFFFFFFE00000006|- rs1_val == -8589934593<br>                                                                                    |[0x80000aac]:addi a1, a0, 7<br> [0x80000ab0]:sd a1, 752(ra)<br>        |
| 117|[0x800035b0]<br>0xFFFFFFFBFFFFFBFF|- rs1_val == -17179869185<br>                                                                                   |[0x80000ac0]:addi a1, a0, 3072<br> [0x80000ac4]:sd a1, 760(ra)<br>     |
| 118|[0x800035b8]<br>0xFFFFFFF8000001FF|- rs1_val == -34359738369<br>                                                                                   |[0x80000ad4]:addi a1, a0, 512<br> [0x80000ad8]:sd a1, 768(ra)<br>      |
| 119|[0x800035c0]<br>0xFFFFFFEFFFFFFFF7|- rs1_val == -68719476737<br>                                                                                   |[0x80000ae8]:addi a1, a0, 4088<br> [0x80000aec]:sd a1, 776(ra)<br>     |
| 120|[0x800035c8]<br>0xFFFFFFDFFFFFFFFD|- rs1_val == -137438953473<br>                                                                                  |[0x80000afc]:addi a1, a0, 4094<br> [0x80000b00]:sd a1, 784(ra)<br>     |
| 121|[0x800035d0]<br>0xFFFFFFBFFFFFFFFE|- rs1_val == -274877906945<br>                                                                                  |[0x80000b10]:addi a1, a0, 4095<br> [0x80000b14]:sd a1, 792(ra)<br>     |
| 122|[0x800035d8]<br>0xFFFFFF7FFFFFFFDE|- rs1_val == -549755813889<br>                                                                                  |[0x80000b24]:addi a1, a0, 4063<br> [0x80000b28]:sd a1, 800(ra)<br>     |
| 123|[0x800035e0]<br>0xFFFFFEFFFFFFFFBE|- rs1_val == -1099511627777<br>                                                                                 |[0x80000b38]:addi a1, a0, 4031<br> [0x80000b3c]:sd a1, 808(ra)<br>     |
| 124|[0x800035e8]<br>0xFFFFFE0000000000|- rs1_val == -2199023255553<br>                                                                                 |[0x80000b4c]:addi a1, a0, 1<br> [0x80000b50]:sd a1, 816(ra)<br>        |
| 125|[0x800035f0]<br>0xFFFFFC0000000008|- rs1_val == -4398046511105<br>                                                                                 |[0x80000b60]:addi a1, a0, 9<br> [0x80000b64]:sd a1, 824(ra)<br>        |
| 126|[0x800035f8]<br>0xFFFFF7FFFFFFFBFE|- rs1_val == -8796093022209<br>                                                                                 |[0x80000b74]:addi a1, a0, 3071<br> [0x80000b78]:sd a1, 832(ra)<br>     |
| 127|[0x80003600]<br>0xFFFFEFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                |[0x80000b88]:addi a1, a0, 0<br> [0x80000b8c]:sd a1, 840(ra)<br>        |
| 128|[0x80003608]<br>0xFFFFBFFFFFFFFFFA|- rs1_val == -70368744177665<br>                                                                                |[0x80000b9c]:addi a1, a0, 4091<br> [0x80000ba0]:sd a1, 848(ra)<br>     |
| 129|[0x80003610]<br>0xFFFF8000000000FF|- rs1_val == -140737488355329<br>                                                                               |[0x80000bb0]:addi a1, a0, 256<br> [0x80000bb4]:sd a1, 856(ra)<br>      |
| 130|[0x80003618]<br>0xFFFEFFFFFFFFFFBE|- rs1_val == -281474976710657<br>                                                                               |[0x80000bc4]:addi a1, a0, 4031<br> [0x80000bc8]:sd a1, 864(ra)<br>     |
| 131|[0x80003620]<br>0xFFFE00000000003F|- rs1_val == -562949953421313<br>                                                                               |[0x80000bd8]:addi a1, a0, 64<br> [0x80000bdc]:sd a1, 872(ra)<br>       |
| 132|[0x80003628]<br>0xFFFBFFFFFFFFFFEE|- rs1_val == -1125899906842625<br>                                                                              |[0x80000bec]:addi a1, a0, 4079<br> [0x80000bf0]:sd a1, 880(ra)<br>     |
| 133|[0x80003630]<br>0x0000000000000108|- rs1_val == 8<br>                                                                                              |[0x80000bf8]:addi a1, a0, 256<br> [0x80000bfc]:sd a1, 888(ra)<br>      |
