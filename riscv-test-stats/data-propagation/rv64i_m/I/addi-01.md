
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c00')]      |
| SIG_REGION                | [('0x80003204', '0x80003640', '135 dwords')]      |
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 134      |
| STAT1                     | 133      |
| STAT2                     | 1      |
| STAT3                     | 66     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bf8]:addi a1, a0, 6
      [0x80000bfc]:sd a1, 880(gp)
 -- Signature Address: 0x80003638 Data: 0x0000000000020006
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - rs1_val == 131072






```

## Details of STAT3

```
[0x80000394]:addi t0, t0, 3712

[0x80000398]:addi a1, zero, 3

[0x800003ac]:addi sp, sp, 4095

[0x800003cc]:addi gp, gp, 4095

[0x800003e0]:addi a7, a7, 4095

[0x800003fc]:addi a0, zero, 0

[0x80000410]:addi a6, a6, 4095

[0x8000041c]:addi a5, zero, 1

[0x80000430]:addi s4, s4, 4095

[0x8000044c]:addi fp, zero, 2

[0x80000458]:addi s5, zero, 4

[0x80000464]:addi s2, zero, 8

[0x80000470]:addi s9, zero, 16

[0x8000047c]:addi s11, zero, 32

[0x80000488]:addi a3, zero, 64

[0x80000494]:addi a2, zero, 128

[0x800004a0]:addi s1, zero, 256

[0x800004ac]:addi t1, zero, 512

[0x800004b8]:addi zero, zero, 1024

[0x800004e4]:addi gp, gp, 3560
[0x800004e8]:lui ra, 2

[0x800007a4]:addi a0, zero, 4094

[0x800007b8]:addi a0, a0, 4095

[0x800007cc]:addi a0, a0, 4095

[0x800007e0]:addi a0, a0, 4095

[0x800007f4]:addi a0, a0, 4095

[0x80000808]:addi a0, a0, 4095

[0x8000081c]:addi a0, a0, 4095

[0x80000830]:addi a0, a0, 4095

[0x80000844]:addi a0, a0, 4095

[0x80000858]:addi a0, a0, 4095

[0x8000086c]:addi a0, a0, 4095

[0x80000884]:addi a0, a0, 1365
[0x80000888]:slli a0, a0, 12

[0x8000088c]:addi a0, a0, 1365
[0x80000890]:slli a0, a0, 12

[0x80000894]:addi a0, a0, 1365

[0x800008ac]:addi a0, a0, 2731
[0x800008b0]:slli a0, a0, 12

[0x800008b4]:addi a0, a0, 2731
[0x800008b8]:slli a0, a0, 12

[0x800008bc]:addi a0, a0, 2730

[0x800008d8]:addi a0, zero, 4093

[0x800008e4]:addi a0, zero, 4091

[0x800008f0]:addi a0, zero, 4087

[0x800008fc]:addi a0, zero, 4079

[0x80000908]:addi a0, zero, 4063

[0x80000914]:addi a0, zero, 4031

[0x80000920]:addi a0, zero, 3967

[0x8000092c]:addi a0, zero, 3839

[0x80000938]:addi a0, zero, 3583

[0x80000944]:addi a0, zero, 3071

[0x80000a88]:addi a0, a0, 4095

[0x80000a9c]:addi a0, a0, 4095

[0x80000ab0]:addi a0, a0, 4095

[0x80000ac4]:addi a0, a0, 4095

[0x80000ad8]:addi a0, a0, 4095

[0x80000aec]:addi a0, a0, 4095

[0x80000b00]:addi a0, a0, 4095

[0x80000b14]:addi a0, a0, 4095

[0x80000b28]:addi a0, a0, 4095

[0x80000b3c]:addi a0, a0, 4095

[0x80000b50]:addi a0, a0, 4095

[0x80000b64]:addi a0, a0, 4095

[0x80000b78]:addi a0, a0, 4095

[0x80000b8c]:addi a0, a0, 4095

[0x80000ba0]:addi a0, a0, 4095

[0x80000bb4]:addi a0, a0, 4095

[0x80000bc8]:addi a0, a0, 4095

[0x80000bdc]:addi a0, a0, 4095

[0x80000be8]:addi a0, zero, 1024



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

|s.no|            signature             |                                                      coverpoints                                                       |                                code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000006|- rs1 : x11<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br>                                              |[0x8000039c]:addi a1, a1, 3<br> [0x800003a0]:sd a1, 0(t0)<br>        |
|   2|[0x80003218]<br>0xFFFFFFDFFFFFFFFF|- rd : x12<br> - imm_val == 0<br> - rs1_val == -137438953473<br>                                                        |[0x800003b0]:addi a2, sp, 0<br> [0x800003b4]:sd a2, 8(t0)<br>        |
|   3|[0x80003220]<br>0x000000000000FFFD|- rs1 : x29<br> - rd : x14<br> - imm_val == -3<br> - rs1_val == 65536<br>                                               |[0x800003bc]:addi a4, t4, 4093<br> [0x800003c0]:sd a4, 16(t0)<br>    |
|   4|[0x80003228]<br>0xFFFFFFC000000554|- rd : x28<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 1365<br> - rs1_val == -274877906945<br>                   |[0x800003d0]:addi t3, gp, 1365<br> [0x800003d4]:sd t3, 24(t0)<br>    |
|   5|[0x80003230]<br>0xDFFFFFFFFFFFF7FF|- rd : x18<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -2305843009213693953<br>               |[0x800003e4]:addi s2, a7, 2048<br> [0x800003e8]:sd s2, 32(t0)<br>    |
|   6|[0x80003238]<br>0x8000000000000004|- rs1 : x28<br> - rd : x29<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 4<br> - rs1_val == -9223372036854775808<br> |[0x800003f4]:addi t4, t3, 4<br> [0x800003f8]:sd t4, 40(t0)<br>       |
|   7|[0x80003240]<br>0xFFFFFFFFFFFFFEFF|- rs1 : x10<br> - rd : x13<br> - imm_val == -257<br>                                                                    |[0x80000400]:addi a3, a0, 3839<br> [0x80000404]:sd a3, 48(t0)<br>    |
|   8|[0x80003248]<br>0x7FFFFFFFFFFFFFF7|- rd : x31<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                    |[0x80000414]:addi t6, a6, 4088<br> [0x80000418]:sd t6, 56(t0)<br>    |
|   9|[0x80003250]<br>0xFFFFFFFFFFFFFE00|- rs1 : x15<br> - rd : x25<br> - rs1_val == 1<br> - imm_val == -513<br>                                                 |[0x80000420]:addi s9, a5, 3583<br> [0x80000424]:sd s9, 64(t0)<br>    |
|  10|[0x80003258]<br>0xF8000000000007FE|- imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -576460752303423489<br>                               |[0x80000434]:addi gp, s4, 2047<br> [0x80000438]:sd gp, 72(t0)<br>    |
|  11|[0x80003260]<br>0x0000001000000001|- rs1 : x24<br> - rd : x21<br> - rs1_val == 68719476736<br>                                                             |[0x80000444]:addi s5, s8, 1<br> [0x80000448]:sd s5, 80(t0)<br>       |
|  12|[0x80003268]<br>0x0000000000000402|- rs1 : x8<br> - rd : x4<br> - imm_val == 1024<br> - rs1_val == 2<br>                                                   |[0x80000450]:addi tp, fp, 1024<br> [0x80000454]:sd tp, 88(t0)<br>    |
|  13|[0x80003270]<br>0xFFFFFFFFFFFFFFE3|- rs1 : x21<br> - imm_val == -33<br> - rs1_val == 4<br>                                                                 |[0x8000045c]:addi a0, s5, 4063<br> [0x80000460]:sd a0, 96(t0)<br>    |
|  14|[0x80003278]<br>0xFFFFFFFFFFFFFC08|- rs1 : x18<br> - rs1_val == 8<br>                                                                                      |[0x80000468]:addi a7, s2, 3072<br> [0x8000046c]:sd a7, 104(t0)<br>   |
|  15|[0x80003280]<br>0x000000000000000F|- rs1 : x25<br> - rd : x24<br> - rs1_val == 16<br>                                                                      |[0x80000474]:addi s8, s9, 4095<br> [0x80000478]:sd s8, 112(t0)<br>   |
|  16|[0x80003288]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x27<br> - rd : x30<br> - rs1_val == 32<br>                                                                      |[0x80000480]:addi t5, s11, 4063<br> [0x80000484]:sd t5, 120(t0)<br>  |
|  17|[0x80003290]<br>0x000000000000003D|- rs1 : x13<br> - rd : x26<br> - rs1_val == 64<br>                                                                      |[0x8000048c]:addi s10, a3, 4093<br> [0x80000490]:sd s10, 128(t0)<br> |
|  18|[0x80003298]<br>0xFFFFFFFFFFFFFB2A|- rs1 : x12<br> - rd : x9<br> - imm_val == -1366<br> - rs1_val == 128<br>                                               |[0x80000498]:addi s1, a2, 2730<br> [0x8000049c]:sd s1, 136(t0)<br>   |
|  19|[0x800032a0]<br>0x00000000000000FB|- rs1 : x9<br> - rd : x1<br> - imm_val == -5<br> - rs1_val == 256<br>                                                   |[0x800004a4]:addi ra, s1, 4091<br> [0x800004a8]:sd ra, 144(t0)<br>   |
|  20|[0x800032a8]<br>0x0000000000000755|- rs1 : x6<br> - rd : x19<br> - rs1_val == 512<br>                                                                      |[0x800004b0]:addi s3, t1, 1365<br> [0x800004b4]:sd s3, 152(t0)<br>   |
|  21|[0x800032b0]<br>0xFFFFFFFFFFFFFFBF|- imm_val == -65<br>                                                                                                    |[0x800004bc]:addi a6, zero, 4031<br> [0x800004c0]:sd a6, 160(t0)<br> |
|  22|[0x800032b8]<br>0x0000000000000C00|- rs1 : x4<br> - rs1_val == 2048<br>                                                                                    |[0x800004cc]:addi t1, tp, 1024<br> [0x800004d0]:sd t1, 168(t0)<br>   |
|  23|[0x800032c0]<br>0x0000000000000F7F|- rs1 : x26<br> - rd : x22<br> - imm_val == -129<br> - rs1_val == 4096<br>                                              |[0x800004d8]:addi s6, s10, 3967<br> [0x800004dc]:sd s6, 176(t0)<br>  |
|  24|[0x800032c8]<br>0x0000000000002005|- rs1 : x1<br> - rd : x23<br> - rs1_val == 8192<br>                                                                     |[0x800004ec]:addi s7, ra, 5<br> [0x800004f0]:sd s7, 0(gp)<br>        |
|  25|[0x800032d0]<br>0x0000000000003FEF|- rs1 : x31<br> - imm_val == -17<br> - rs1_val == 16384<br>                                                             |[0x800004f8]:addi s4, t6, 4079<br> [0x800004fc]:sd s4, 8(gp)<br>     |
|  26|[0x800032d8]<br>0x0000000000008555|- rs1 : x30<br> - rs1_val == 32768<br>                                                                                  |[0x80000504]:addi t0, t5, 1365<br> [0x80000508]:sd t0, 16(gp)<br>    |
|  27|[0x800032e0]<br>0x0000000000000000|- rs1 : x22<br> - rs1_val == 131072<br>                                                                                 |[0x80000510]:addi zero, s6, 6<br> [0x80000514]:sd zero, 24(gp)<br>   |
|  28|[0x800032e8]<br>0x000000000003FFFB|- rs1_val == 262144<br>                                                                                                 |[0x8000051c]:addi fp, t0, 4091<br> [0x80000520]:sd fp, 32(gp)<br>    |
|  29|[0x800032f0]<br>0x0000000000080020|- rs1 : x14<br> - rd : x7<br> - rs1_val == 524288<br>                                                                   |[0x80000528]:addi t2, a4, 32<br> [0x8000052c]:sd t2, 40(gp)<br>      |
|  30|[0x800032f8]<br>0x0000000000100002|- rs1 : x7<br> - rs1_val == 1048576<br>                                                                                 |[0x80000534]:addi a5, t2, 2<br> [0x80000538]:sd a5, 48(gp)<br>       |
|  31|[0x80003300]<br>0x00000000001FFFFA|- rs1 : x19<br> - rs1_val == 2097152<br>                                                                                |[0x80000540]:addi s11, s3, 4090<br> [0x80000544]:sd s11, 56(gp)<br>  |
|  32|[0x80003308]<br>0x0000000000400001|- rs1 : x23<br> - rs1_val == 4194304<br>                                                                                |[0x8000054c]:addi sp, s7, 1<br> [0x80000550]:sd sp, 64(gp)<br>       |
|  33|[0x80003310]<br>0x0000000000800400|- rs1_val == 8388608<br>                                                                                                |[0x80000558]:addi a1, a0, 1024<br> [0x8000055c]:sd a1, 72(gp)<br>    |
|  34|[0x80003318]<br>0x0000000000FFFF7F|- rs1_val == 16777216<br>                                                                                               |[0x80000564]:addi a1, a0, 3967<br> [0x80000568]:sd a1, 80(gp)<br>    |
|  35|[0x80003320]<br>0x0000000002000007|- rs1_val == 33554432<br>                                                                                               |[0x80000570]:addi a1, a0, 7<br> [0x80000574]:sd a1, 88(gp)<br>       |
|  36|[0x80003328]<br>0x0000000004000001|- rs1_val == 67108864<br>                                                                                               |[0x8000057c]:addi a1, a0, 1<br> [0x80000580]:sd a1, 96(gp)<br>       |
|  37|[0x80003330]<br>0x0000000007FFFFF9|- rs1_val == 134217728<br>                                                                                              |[0x80000588]:addi a1, a0, 4089<br> [0x8000058c]:sd a1, 104(gp)<br>   |
|  38|[0x80003338]<br>0x0000000010000080|- rs1_val == 268435456<br>                                                                                              |[0x80000594]:addi a1, a0, 128<br> [0x80000598]:sd a1, 112(gp)<br>    |
|  39|[0x80003340]<br>0x0000000020000007|- rs1_val == 536870912<br>                                                                                              |[0x800005a0]:addi a1, a0, 7<br> [0x800005a4]:sd a1, 120(gp)<br>      |
|  40|[0x80003348]<br>0x000000003FFFFFFF|- rs1_val == 1073741824<br>                                                                                             |[0x800005ac]:addi a1, a0, 4095<br> [0x800005b0]:sd a1, 128(gp)<br>   |
|  41|[0x80003350]<br>0x000000007FFFFFF8|- rs1_val == 2147483648<br>                                                                                             |[0x800005bc]:addi a1, a0, 4088<br> [0x800005c0]:sd a1, 136(gp)<br>   |
|  42|[0x80003358]<br>0x00000000FFFFFFFF|- rs1_val == 4294967296<br>                                                                                             |[0x800005cc]:addi a1, a0, 4095<br> [0x800005d0]:sd a1, 144(gp)<br>   |
|  43|[0x80003360]<br>0x0000000200000080|- rs1_val == 8589934592<br>                                                                                             |[0x800005dc]:addi a1, a0, 128<br> [0x800005e0]:sd a1, 152(gp)<br>    |
|  44|[0x80003368]<br>0x00000003FFFFFBFF|- imm_val == -1025<br> - rs1_val == 17179869184<br>                                                                     |[0x800005ec]:addi a1, a0, 3071<br> [0x800005f0]:sd a1, 160(gp)<br>   |
|  45|[0x80003370]<br>0x0000000800000005|- rs1_val == 34359738368<br>                                                                                            |[0x800005fc]:addi a1, a0, 5<br> [0x80000600]:sd a1, 168(gp)<br>      |
|  46|[0x80003378]<br>0x0000002000000008|- rs1_val == 137438953472<br>                                                                                           |[0x8000060c]:addi a1, a0, 8<br> [0x80000610]:sd a1, 176(gp)<br>      |
|  47|[0x80003380]<br>0x0000004000000020|- rs1_val == 274877906944<br>                                                                                           |[0x8000061c]:addi a1, a0, 32<br> [0x80000620]:sd a1, 184(gp)<br>     |
|  48|[0x80003388]<br>0x0000007FFFFFFC00|- rs1_val == 549755813888<br>                                                                                           |[0x8000062c]:addi a1, a0, 3072<br> [0x80000630]:sd a1, 192(gp)<br>   |
|  49|[0x80003390]<br>0x000000FFFFFFFFFA|- rs1_val == 1099511627776<br>                                                                                          |[0x8000063c]:addi a1, a0, 4090<br> [0x80000640]:sd a1, 200(gp)<br>   |
|  50|[0x80003398]<br>0x0000020000000555|- rs1_val == 2199023255552<br>                                                                                          |[0x8000064c]:addi a1, a0, 1365<br> [0x80000650]:sd a1, 208(gp)<br>   |
|  51|[0x800033a0]<br>0x000003FFFFFFFEFF|- rs1_val == 4398046511104<br>                                                                                          |[0x8000065c]:addi a1, a0, 3839<br> [0x80000660]:sd a1, 216(gp)<br>   |
|  52|[0x800033a8]<br>0x000007FFFFFFFFF7|- imm_val == -9<br> - rs1_val == 8796093022208<br>                                                                      |[0x8000066c]:addi a1, a0, 4087<br> [0x80000670]:sd a1, 224(gp)<br>   |
|  53|[0x800033b0]<br>0x0000100000000200|- rs1_val == 17592186044416<br>                                                                                         |[0x8000067c]:addi a1, a0, 512<br> [0x80000680]:sd a1, 232(gp)<br>    |
|  54|[0x800033b8]<br>0x00002000000007FF|- rs1_val == 35184372088832<br>                                                                                         |[0x8000068c]:addi a1, a0, 2047<br> [0x80000690]:sd a1, 240(gp)<br>   |
|  55|[0x800033c0]<br>0x00003FFFFFFFFAAA|- rs1_val == 70368744177664<br>                                                                                         |[0x8000069c]:addi a1, a0, 2730<br> [0x800006a0]:sd a1, 248(gp)<br>   |
|  56|[0x800033c8]<br>0x0000800000000003|- rs1_val == 140737488355328<br>                                                                                        |[0x800006ac]:addi a1, a0, 3<br> [0x800006b0]:sd a1, 256(gp)<br>      |
|  57|[0x800033d0]<br>0x0001000000000004|- rs1_val == 281474976710656<br>                                                                                        |[0x800006bc]:addi a1, a0, 4<br> [0x800006c0]:sd a1, 264(gp)<br>      |
|  58|[0x800033d8]<br>0x0002000000000005|- rs1_val == 562949953421312<br>                                                                                        |[0x800006cc]:addi a1, a0, 5<br> [0x800006d0]:sd a1, 272(gp)<br>      |
|  59|[0x800033e0]<br>0x0003FFFFFFFFFDFF|- rs1_val == 1125899906842624<br>                                                                                       |[0x800006dc]:addi a1, a0, 3583<br> [0x800006e0]:sd a1, 280(gp)<br>   |
|  60|[0x800033e8]<br>0x0008000000000006|- rs1_val == 2251799813685248<br>                                                                                       |[0x800006ec]:addi a1, a0, 6<br> [0x800006f0]:sd a1, 288(gp)<br>      |
|  61|[0x800033f0]<br>0x000FFFFFFFFFFBFF|- rs1_val == 4503599627370496<br>                                                                                       |[0x800006fc]:addi a1, a0, 3071<br> [0x80000700]:sd a1, 296(gp)<br>   |
|  62|[0x800033f8]<br>0x001FFFFFFFFFFF7F|- rs1_val == 9007199254740992<br>                                                                                       |[0x8000070c]:addi a1, a0, 3967<br> [0x80000710]:sd a1, 304(gp)<br>   |
|  63|[0x80003400]<br>0x0040000000000080|- rs1_val == 18014398509481984<br>                                                                                      |[0x8000071c]:addi a1, a0, 128<br> [0x80000720]:sd a1, 312(gp)<br>    |
|  64|[0x80003408]<br>0x0080000000000006|- rs1_val == 36028797018963968<br>                                                                                      |[0x8000072c]:addi a1, a0, 6<br> [0x80000730]:sd a1, 320(gp)<br>      |
|  65|[0x80003410]<br>0x01000000000007FF|- rs1_val == 72057594037927936<br>                                                                                      |[0x8000073c]:addi a1, a0, 2047<br> [0x80000740]:sd a1, 328(gp)<br>   |
|  66|[0x80003418]<br>0x01FFFFFFFFFFFEFF|- rs1_val == 144115188075855872<br>                                                                                     |[0x8000074c]:addi a1, a0, 3839<br> [0x80000750]:sd a1, 336(gp)<br>   |
|  67|[0x80003420]<br>0x03FFFFFFFFFFFFFE|- imm_val == -2<br> - rs1_val == 288230376151711744<br>                                                                 |[0x8000075c]:addi a1, a0, 4094<br> [0x80000760]:sd a1, 344(gp)<br>   |
|  68|[0x80003428]<br>0x07FFFFFFFFFFFFFC|- rs1_val == 576460752303423488<br>                                                                                     |[0x8000076c]:addi a1, a0, 4092<br> [0x80000770]:sd a1, 352(gp)<br>   |
|  69|[0x80003430]<br>0x0FFFFFFFFFFFFFFB|- rs1_val == 1152921504606846976<br>                                                                                    |[0x8000077c]:addi a1, a0, 4091<br> [0x80000780]:sd a1, 360(gp)<br>   |
|  70|[0x80003438]<br>0x1FFFFFFFFFFFFC00|- rs1_val == 2305843009213693952<br>                                                                                    |[0x8000078c]:addi a1, a0, 3072<br> [0x80000790]:sd a1, 368(gp)<br>   |
|  71|[0x80003440]<br>0x3FFFFFFFFFFFFFFA|- rs1_val == 4611686018427387904<br>                                                                                    |[0x8000079c]:addi a1, a0, 4090<br> [0x800007a0]:sd a1, 376(gp)<br>   |
|  72|[0x80003448]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -2<br>                                                                                                     |[0x800007a8]:addi a1, a0, 4093<br> [0x800007ac]:sd a1, 384(gp)<br>   |
|  73|[0x80003450]<br>0xFFF8000000000005|- rs1_val == -2251799813685249<br>                                                                                      |[0x800007bc]:addi a1, a0, 6<br> [0x800007c0]:sd a1, 392(gp)<br>      |
|  74|[0x80003458]<br>0xFFF00000000003FE|- rs1_val == -4503599627370497<br>                                                                                      |[0x800007d0]:addi a1, a0, 1023<br> [0x800007d4]:sd a1, 400(gp)<br>   |
|  75|[0x80003460]<br>0xFFE00000000000FF|- rs1_val == -9007199254740993<br>                                                                                      |[0x800007e4]:addi a1, a0, 256<br> [0x800007e8]:sd a1, 408(gp)<br>    |
|  76|[0x80003468]<br>0xFFBFFFFFFFFFF7FF|- rs1_val == -18014398509481985<br>                                                                                     |[0x800007f8]:addi a1, a0, 2048<br> [0x800007fc]:sd a1, 416(gp)<br>   |
|  77|[0x80003470]<br>0xFF7FFFFFFFFFFFF6|- rs1_val == -36028797018963969<br>                                                                                     |[0x8000080c]:addi a1, a0, 4087<br> [0x80000810]:sd a1, 424(gp)<br>   |
|  78|[0x80003478]<br>0xFF00000000000007|- rs1_val == -72057594037927937<br>                                                                                     |[0x80000820]:addi a1, a0, 8<br> [0x80000824]:sd a1, 432(gp)<br>      |
|  79|[0x80003480]<br>0xFE0000000000000F|- rs1_val == -144115188075855873<br>                                                                                    |[0x80000834]:addi a1, a0, 16<br> [0x80000838]:sd a1, 440(gp)<br>     |
|  80|[0x80003488]<br>0xFBFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                    |[0x80000848]:addi a1, a0, 0<br> [0x8000084c]:sd a1, 448(gp)<br>      |
|  81|[0x80003490]<br>0xF00000000000000F|- rs1_val == -1152921504606846977<br>                                                                                   |[0x8000085c]:addi a1, a0, 16<br> [0x80000860]:sd a1, 456(gp)<br>     |
|  82|[0x80003498]<br>0xBFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                   |[0x80000870]:addi a1, a0, 0<br> [0x80000874]:sd a1, 464(gp)<br>      |
|  83|[0x800034a0]<br>0x555555555555554C|- rs1_val == 6148914691236517205<br>                                                                                    |[0x80000898]:addi a1, a0, 4087<br> [0x8000089c]:sd a1, 472(gp)<br>   |
|  84|[0x800034a8]<br>0xAAAAAAAAAAAAAAB1|- rs1_val == -6148914691236517206<br>                                                                                   |[0x800008c0]:addi a1, a0, 7<br> [0x800008c4]:sd a1, 480(gp)<br>      |
|  85|[0x800034b0]<br>0xFFFFFFFFFFC0003F|- rs1_val == -4194305<br>                                                                                               |[0x800008d0]:addi a1, a0, 64<br> [0x800008d4]:sd a1, 488(gp)<br>     |
|  86|[0x800034b8]<br>0xFFFFFFFFFFFFFFDC|- rs1_val == -3<br>                                                                                                     |[0x800008dc]:addi a1, a0, 4063<br> [0x800008e0]:sd a1, 496(gp)<br>   |
|  87|[0x800034c0]<br>0xFFFFFFFFFFFFFFF5|- rs1_val == -5<br>                                                                                                     |[0x800008e8]:addi a1, a0, 4090<br> [0x800008ec]:sd a1, 504(gp)<br>   |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFFFFF2|- rs1_val == -9<br>                                                                                                     |[0x800008f4]:addi a1, a0, 4091<br> [0x800008f8]:sd a1, 512(gp)<br>   |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFFFFE6|- rs1_val == -17<br>                                                                                                    |[0x80000900]:addi a1, a0, 4087<br> [0x80000904]:sd a1, 520(gp)<br>   |
|  90|[0x800034d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                    |[0x8000090c]:addi a1, a0, 32<br> [0x80000910]:sd a1, 528(gp)<br>     |
|  91|[0x800034e0]<br>0xFFFFFFFFFFFFFFBB|- rs1_val == -65<br>                                                                                                    |[0x80000918]:addi a1, a0, 4092<br> [0x8000091c]:sd a1, 536(gp)<br>   |
|  92|[0x800034e8]<br>0x000000000000017F|- rs1_val == -129<br>                                                                                                   |[0x80000924]:addi a1, a0, 512<br> [0x80000928]:sd a1, 544(gp)<br>    |
|  93|[0x800034f0]<br>0xFFFFFFFFFFFFFEF6|- rs1_val == -257<br>                                                                                                   |[0x80000930]:addi a1, a0, 4087<br> [0x80000934]:sd a1, 552(gp)<br>   |
|  94|[0x800034f8]<br>0xFFFFFFFFFFFFFDF8|- rs1_val == -513<br>                                                                                                   |[0x8000093c]:addi a1, a0, 4089<br> [0x80000940]:sd a1, 560(gp)<br>   |
|  95|[0x80003500]<br>0xFFFFFFFFFFFFFC03|- rs1_val == -1025<br>                                                                                                  |[0x80000948]:addi a1, a0, 4<br> [0x8000094c]:sd a1, 568(gp)<br>      |
|  96|[0x80003508]<br>0xFFFFFFFFFFFFF801|- rs1_val == -2049<br>                                                                                                  |[0x80000958]:addi a1, a0, 2<br> [0x8000095c]:sd a1, 576(gp)<br>      |
|  97|[0x80003510]<br>0xFFFFFFFFFFFFF554|- rs1_val == -4097<br>                                                                                                  |[0x80000968]:addi a1, a0, 1365<br> [0x8000096c]:sd a1, 584(gp)<br>   |
|  98|[0x80003518]<br>0xFFFFFFFFFFFFE07F|- rs1_val == -8193<br>                                                                                                  |[0x80000978]:addi a1, a0, 128<br> [0x8000097c]:sd a1, 592(gp)<br>    |
|  99|[0x80003520]<br>0xFFFFFFFFFFFFBFF8|- rs1_val == -16385<br>                                                                                                 |[0x80000988]:addi a1, a0, 4089<br> [0x8000098c]:sd a1, 600(gp)<br>   |
| 100|[0x80003528]<br>0xFFFFFFFFFFFF8006|- rs1_val == -32769<br>                                                                                                 |[0x80000998]:addi a1, a0, 7<br> [0x8000099c]:sd a1, 608(gp)<br>      |
| 101|[0x80003530]<br>0xFFFFFFFFFFFEF7FF|- rs1_val == -65537<br>                                                                                                 |[0x800009a8]:addi a1, a0, 2048<br> [0x800009ac]:sd a1, 616(gp)<br>   |
| 102|[0x80003538]<br>0xFFFFFFFFFFFDFFFD|- rs1_val == -131073<br>                                                                                                |[0x800009b8]:addi a1, a0, 4094<br> [0x800009bc]:sd a1, 624(gp)<br>   |
| 103|[0x80003540]<br>0xFFFFFFFFFFFBFAA9|- rs1_val == -262145<br>                                                                                                |[0x800009c8]:addi a1, a0, 2730<br> [0x800009cc]:sd a1, 632(gp)<br>   |
| 104|[0x80003548]<br>0xFFFFFFFFFFF7FFDE|- rs1_val == -524289<br>                                                                                                |[0x800009d8]:addi a1, a0, 4063<br> [0x800009dc]:sd a1, 640(gp)<br>   |
| 105|[0x80003550]<br>0xFFFFFFFFFFEFFFEE|- rs1_val == -1048577<br>                                                                                               |[0x800009e8]:addi a1, a0, 4079<br> [0x800009ec]:sd a1, 648(gp)<br>   |
| 106|[0x80003558]<br>0xFFFFFFFFFFE00003|- rs1_val == -2097153<br>                                                                                               |[0x800009f8]:addi a1, a0, 4<br> [0x800009fc]:sd a1, 656(gp)<br>      |
| 107|[0x80003560]<br>0xFFFFFFFFFF800001|- rs1_val == -8388609<br>                                                                                               |[0x80000a08]:addi a1, a0, 2<br> [0x80000a0c]:sd a1, 664(gp)<br>      |
| 108|[0x80003568]<br>0xFFFFFFFFFEFFFFFD|- rs1_val == -16777217<br>                                                                                              |[0x80000a18]:addi a1, a0, 4094<br> [0x80000a1c]:sd a1, 672(gp)<br>   |
| 109|[0x80003570]<br>0xFFFFFFFFFE000001|- rs1_val == -33554433<br>                                                                                              |[0x80000a28]:addi a1, a0, 2<br> [0x80000a2c]:sd a1, 680(gp)<br>      |
| 110|[0x80003578]<br>0xFFFFFFFFFBFFFFF7|- rs1_val == -67108865<br>                                                                                              |[0x80000a38]:addi a1, a0, 4088<br> [0x80000a3c]:sd a1, 688(gp)<br>   |
| 111|[0x80003580]<br>0xFFFFFFFFF7FFFFDE|- rs1_val == -134217729<br>                                                                                             |[0x80000a48]:addi a1, a0, 4063<br> [0x80000a4c]:sd a1, 696(gp)<br>   |
| 112|[0x80003588]<br>0xFFFFFFFFF00003FE|- rs1_val == -268435457<br>                                                                                             |[0x80000a58]:addi a1, a0, 1023<br> [0x80000a5c]:sd a1, 704(gp)<br>   |
| 113|[0x80003590]<br>0xFFFFFFFFDFFFFFFD|- rs1_val == -536870913<br>                                                                                             |[0x80000a68]:addi a1, a0, 4094<br> [0x80000a6c]:sd a1, 712(gp)<br>   |
| 114|[0x80003598]<br>0xFFFFFFFFC00001FF|- rs1_val == -1073741825<br>                                                                                            |[0x80000a78]:addi a1, a0, 512<br> [0x80000a7c]:sd a1, 720(gp)<br>    |
| 115|[0x800035a0]<br>0xFFFFFFFF7FFFFF7E|- rs1_val == -2147483649<br>                                                                                            |[0x80000a8c]:addi a1, a0, 3967<br> [0x80000a90]:sd a1, 728(gp)<br>   |
| 116|[0x800035a8]<br>0xFFFFFFFEFFFFFFF9|- rs1_val == -4294967297<br>                                                                                            |[0x80000aa0]:addi a1, a0, 4090<br> [0x80000aa4]:sd a1, 736(gp)<br>   |
| 117|[0x800035b0]<br>0xFFFFFFFE000001FF|- rs1_val == -8589934593<br>                                                                                            |[0x80000ab4]:addi a1, a0, 512<br> [0x80000ab8]:sd a1, 744(gp)<br>    |
| 118|[0x800035b8]<br>0xFFFFFFFC00000003|- rs1_val == -17179869185<br>                                                                                           |[0x80000ac8]:addi a1, a0, 4<br> [0x80000acc]:sd a1, 752(gp)<br>      |
| 119|[0x800035c0]<br>0xFFFFFFF7FFFFFAA9|- rs1_val == -34359738369<br>                                                                                           |[0x80000adc]:addi a1, a0, 2730<br> [0x80000ae0]:sd a1, 760(gp)<br>   |
| 120|[0x800035c8]<br>0xFFFFFFEFFFFFFF7E|- rs1_val == -68719476737<br>                                                                                           |[0x80000af0]:addi a1, a0, 3967<br> [0x80000af4]:sd a1, 768(gp)<br>   |
| 121|[0x800035d0]<br>0xFFFFFF7FFFFFFBFE|- rs1_val == -549755813889<br>                                                                                          |[0x80000b04]:addi a1, a0, 3071<br> [0x80000b08]:sd a1, 776(gp)<br>   |
| 122|[0x800035d8]<br>0xFFFFFEFFFFFFFBFF|- rs1_val == -1099511627777<br>                                                                                         |[0x80000b18]:addi a1, a0, 3072<br> [0x80000b1c]:sd a1, 784(gp)<br>   |
| 123|[0x800035e0]<br>0xFFFFFDFFFFFFFFF7|- rs1_val == -2199023255553<br>                                                                                         |[0x80000b2c]:addi a1, a0, 4088<br> [0x80000b30]:sd a1, 792(gp)<br>   |
| 124|[0x800035e8]<br>0xFFFFFBFFFFFFFFF6|- rs1_val == -4398046511105<br>                                                                                         |[0x80000b40]:addi a1, a0, 4087<br> [0x80000b44]:sd a1, 800(gp)<br>   |
| 125|[0x800035f0]<br>0xFFFFF80000000002|- rs1_val == -8796093022209<br>                                                                                         |[0x80000b54]:addi a1, a0, 3<br> [0x80000b58]:sd a1, 808(gp)<br>      |
| 126|[0x800035f8]<br>0xFFFFEFFFFFFFFFF8|- rs1_val == -17592186044417<br>                                                                                        |[0x80000b68]:addi a1, a0, 4089<br> [0x80000b6c]:sd a1, 816(gp)<br>   |
| 127|[0x80003600]<br>0xFFFFE00000000005|- rs1_val == -35184372088833<br>                                                                                        |[0x80000b7c]:addi a1, a0, 6<br> [0x80000b80]:sd a1, 824(gp)<br>      |
| 128|[0x80003608]<br>0xFFFFC0000000003F|- rs1_val == -70368744177665<br>                                                                                        |[0x80000b90]:addi a1, a0, 64<br> [0x80000b94]:sd a1, 832(gp)<br>     |
| 129|[0x80003610]<br>0xFFFF7FFFFFFFFDFE|- rs1_val == -140737488355329<br>                                                                                       |[0x80000ba4]:addi a1, a0, 3583<br> [0x80000ba8]:sd a1, 840(gp)<br>   |
| 130|[0x80003618]<br>0xFFFF000000000002|- rs1_val == -281474976710657<br>                                                                                       |[0x80000bb8]:addi a1, a0, 3<br> [0x80000bbc]:sd a1, 848(gp)<br>      |
| 131|[0x80003620]<br>0xFFFDFFFFFFFFFFFC|- rs1_val == -562949953421313<br>                                                                                       |[0x80000bcc]:addi a1, a0, 4093<br> [0x80000bd0]:sd a1, 856(gp)<br>   |
| 132|[0x80003628]<br>0xFFFC00000000003F|- rs1_val == -1125899906842625<br>                                                                                      |[0x80000be0]:addi a1, a0, 64<br> [0x80000be4]:sd a1, 864(gp)<br>     |
| 133|[0x80003630]<br>0x00000000000003BF|- rs1_val == 1024<br>                                                                                                   |[0x80000bec]:addi a1, a0, 4031<br> [0x80000bf0]:sd a1, 872(gp)<br>   |
