
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c50')]      |
| SIG_REGION                | [('0x80003208', '0x80003650', '137 dwords')]      |
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 137      |
| STAT1                     | 134      |
| STAT2                     | 3      |
| STAT3                     | 68     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008e4]:addi a1, a0, 64
      [0x800008e8]:sd a1, 544(ra)
 -- Signature Address: 0x800034b8 Data: 0x0000100000000040
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 64
      - rs1_val == 17592186044416




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000924]:addi a1, a0, 2730
      [0x80000928]:sd a1, 576(ra)
 -- Signature Address: 0x800034d8 Data: 0xFFFFFFFFDFFFFAA9
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val < 0 and imm_val < 0
      - imm_val == -1366
      - rs1_val == -536870913




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c38]:addi a1, a0, 2048
      [0x80000c3c]:sd a1, 936(ra)
 -- Signature Address: 0x80003640 Data: 0xAAAAAAAAAAAAA2AA
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val == (-2**(12-1))
      - rs1_val != imm_val
      - rs1_val < 0 and imm_val < 0
      - imm_val == -2048
      - rs1_val == -6148914691236517206






```

## Details of STAT3

```
[0x80000394]:addi sp, sp, 3704

[0x80000398]:addi a2, zero, 1024

[0x800003bc]:addi a6, a6, 4095

[0x800003d0]:addi gp, gp, 4095

[0x800003ec]:addi a5, zero, 0

[0x80000400]:addi t0, t0, 4095

[0x8000040c]:addi s9, zero, 1

[0x80000424]:addi s1, s1, 2731
[0x80000428]:slli s1, s1, 12

[0x8000042c]:addi s1, s1, 2731
[0x80000430]:slli s1, s1, 12

[0x80000434]:addi s1, s1, 2730

[0x80000440]:addi ra, zero, 6

[0x8000046c]:addi t2, zero, 2

[0x80000478]:addi t5, zero, 4

[0x80000484]:addi s8, zero, 8

[0x80000490]:addi t1, zero, 16

[0x8000049c]:addi a0, zero, 32

[0x800004a8]:addi s6, zero, 64

[0x800004b8]:addi ra, ra, 3556

[0x800004bc]:addi t6, zero, 128

[0x800004c8]:addi a1, zero, 256

[0x800004d4]:addi s10, zero, 512

[0x800007b4]:addi a0, zero, 4094

[0x800007c0]:addi a0, zero, 4093

[0x800007cc]:addi a0, zero, 4091

[0x800007e0]:addi a0, a0, 4095

[0x800007f4]:addi a0, a0, 4095

[0x80000808]:addi a0, a0, 4095

[0x8000081c]:addi a0, a0, 4095

[0x80000830]:addi a0, a0, 4095

[0x80000844]:addi a0, a0, 4095

[0x80000858]:addi a0, a0, 4095

[0x8000086c]:addi a0, a0, 4095

[0x80000880]:addi a0, a0, 4095

[0x80000894]:addi a0, a0, 4095

[0x800008a8]:addi a0, a0, 4095

[0x800008c0]:addi a0, a0, 1365
[0x800008c4]:slli a0, a0, 12

[0x800008c8]:addi a0, a0, 1365
[0x800008cc]:slli a0, a0, 12

[0x800008d0]:addi a0, a0, 1365

[0x8000092c]:addi a0, zero, 4087

[0x80000938]:addi a0, zero, 4079

[0x80000944]:addi a0, zero, 4063

[0x80000950]:addi a0, zero, 4031

[0x8000095c]:addi a0, zero, 3967

[0x80000968]:addi a0, zero, 3839

[0x80000974]:addi a0, zero, 3583

[0x80000980]:addi a0, zero, 3071

[0x80000aa4]:addi a0, a0, 4095

[0x80000ab8]:addi a0, a0, 4095

[0x80000acc]:addi a0, a0, 4095

[0x80000ae0]:addi a0, a0, 4095

[0x80000af4]:addi a0, a0, 4095

[0x80000b08]:addi a0, a0, 4095

[0x80000b1c]:addi a0, a0, 4095

[0x80000b30]:addi a0, a0, 4095

[0x80000b44]:addi a0, a0, 4095

[0x80000b58]:addi a0, a0, 4095

[0x80000b6c]:addi a0, a0, 4095

[0x80000b80]:addi a0, a0, 4095

[0x80000b94]:addi a0, a0, 4095

[0x80000ba8]:addi a0, a0, 4095

[0x80000bbc]:addi a0, a0, 4095

[0x80000bd0]:addi a0, a0, 4095

[0x80000be4]:addi a0, a0, 4095

[0x80000bf8]:addi a0, a0, 4095

[0x80000c0c]:addi a0, a0, 4095

[0x80000c24]:addi a0, a0, 2731
[0x80000c28]:slli a0, a0, 12

[0x80000c2c]:addi a0, a0, 2731
[0x80000c30]:slli a0, a0, 12

[0x80000c34]:addi a0, a0, 2730



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

|s.no|            signature             |                                                  coverpoints                                                   |                                 code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000800|- rs1 : x12<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 1024<br>                |[0x8000039c]:addi a2, a2, 1024<br> [0x800003a0]:sd a2, 0(sp)<br>      |
|   2|[0x80003210]<br>0x0001FFFFFFFFFF7F|- rs1 : x20<br> - rd : x25<br> - imm_val == -129<br> - rs1_val == 562949953421312<br>                           |[0x800003ac]:addi s9, s4, 3967<br> [0x800003b0]:sd s9, 8(sp)<br>      |
|   3|[0x80003218]<br>0xFFFC000000000008|- rd : x26<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -1125899906842625<br>                             |[0x800003c0]:addi s10, a6, 9<br> [0x800003c4]:sd s10, 16(sp)<br>      |
|   4|[0x80003220]<br>0xEFFFFFFFFFFFFEFE|- rd : x18<br> - imm_val == -257<br> - rs1_val == -1152921504606846977<br>                                      |[0x800003d4]:addi s2, gp, 3839<br> [0x800003d8]:sd s2, 24(sp)<br>     |
|   5|[0x80003228]<br>0x7FFFFFFFFFFFFC00|- rs1 : x13<br> - rd : x6<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>             |[0x800003e4]:addi t1, a3, 3072<br> [0x800003e8]:sd t1, 32(sp)<br>     |
|   6|[0x80003230]<br>0xFFFFFFFFFFFFFFF8|- rs1 : x15<br> - rd : x21<br>                                                                                  |[0x800003f0]:addi s5, a5, 4088<br> [0x800003f4]:sd s5, 40(sp)<br>     |
|   7|[0x80003238]<br>0x7FFFFFFFFFFFFFBE|- rd : x4<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -65<br> - rs1_val == 9223372036854775807<br>        |[0x80000404]:addi tp, t0, 4031<br> [0x80000408]:sd tp, 48(sp)<br>     |
|   8|[0x80003240]<br>0x0000000000000021|- rs1 : x25<br> - rd : x29<br> - rs1_val == 1<br> - imm_val == 32<br>                                           |[0x80000410]:addi t4, s9, 32<br> [0x80000414]:sd t4, 56(sp)<br>       |
|   9|[0x80003248]<br>0x0000000000000000|- rd : x0<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -6148914691236517206<br>        |[0x80000438]:addi zero, s1, 2048<br> [0x8000043c]:sd zero, 64(sp)<br> |
|  10|[0x80003250]<br>0x0000000000000006|- rs1 : x1<br> - rd : x27<br>                                                                                   |[0x80000444]:addi s11, ra, 0<br> [0x80000448]:sd s11, 72(sp)<br>      |
|  11|[0x80003258]<br>0xFFFFFFFFE00007FE|- rs1 : x28<br> - rd : x24<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -536870913<br> |[0x80000454]:addi s8, t3, 2047<br> [0x80000458]:sd s8, 80(sp)<br>     |
|  12|[0x80003260]<br>0x4000000000000001|- rs1 : x14<br> - rd : x22<br> - rs1_val == 4611686018427387904<br>                                             |[0x80000464]:addi s6, a4, 1<br> [0x80000468]:sd s6, 88(sp)<br>        |
|  13|[0x80003268]<br>0x0000000000000000|- rs1 : x7<br> - rd : x8<br> - imm_val == -2<br> - rs1_val == 2<br>                                             |[0x80000470]:addi fp, t2, 4094<br> [0x80000474]:sd fp, 96(sp)<br>     |
|  14|[0x80003270]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x30<br> - rd : x23<br> - rs1_val == 4<br>                                                               |[0x8000047c]:addi s7, t5, 4089<br> [0x80000480]:sd s7, 104(sp)<br>    |
|  15|[0x80003278]<br>0x000000000000000A|- rs1 : x24<br> - rd : x11<br> - rs1_val == 8<br>                                                               |[0x80000488]:addi a1, s8, 2<br> [0x8000048c]:sd a1, 112(sp)<br>       |
|  16|[0x80003280]<br>0x0000000000000030|- rs1 : x6<br> - rd : x10<br> - rs1_val == 16<br>                                                               |[0x80000494]:addi a0, t1, 32<br> [0x80000498]:sd a0, 120(sp)<br>      |
|  17|[0x80003288]<br>0xFFFFFFFFFFFFFC20|- rs1 : x10<br> - rs1_val == 32<br>                                                                             |[0x800004a0]:addi ra, a0, 3072<br> [0x800004a4]:sd ra, 128(sp)<br>    |
|  18|[0x80003290]<br>0x000000000000003B|- rs1 : x22<br> - rd : x31<br> - imm_val == -5<br> - rs1_val == 64<br>                                          |[0x800004ac]:addi t6, s6, 4091<br> [0x800004b0]:sd t6, 136(sp)<br>    |
|  19|[0x80003298]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x31<br> - rs1_val == 128<br>                                                                            |[0x800004c0]:addi sp, t6, 3967<br> [0x800004c4]:sd sp, 0(ra)<br>      |
|  20|[0x800032a0]<br>0x00000000000000F9|- rs1 : x11<br> - rs1_val == 256<br>                                                                            |[0x800004cc]:addi t2, a1, 4089<br> [0x800004d0]:sd t2, 8(ra)<br>      |
|  21|[0x800032a8]<br>0x0000000000000205|- rs1 : x26<br> - rd : x17<br> - rs1_val == 512<br>                                                             |[0x800004d8]:addi a7, s10, 5<br> [0x800004dc]:sd a7, 16(ra)<br>       |
|  22|[0x800032b0]<br>0xFFFFFFFFFFFFFFFF|- rd : x13<br>                                                                                                  |[0x800004e8]:addi a3, zero, 4095<br> [0x800004ec]:sd a3, 24(ra)<br>   |
|  23|[0x800032b8]<br>0x0000000000001400|- rs1 : x19<br> - rs1_val == 4096<br>                                                                           |[0x800004f4]:addi gp, s3, 1024<br> [0x800004f8]:sd gp, 32(ra)<br>     |
|  24|[0x800032c0]<br>0x0000000000002001|- rs1_val == 8192<br>                                                                                           |[0x80000500]:addi a5, sp, 1<br> [0x80000504]:sd a5, 40(ra)<br>        |
|  25|[0x800032c8]<br>0x0000000000004004|- rs1 : x29<br> - rs1_val == 16384<br>                                                                          |[0x8000050c]:addi t5, t4, 4<br> [0x80000510]:sd t5, 48(ra)<br>        |
|  26|[0x800032d0]<br>0x00000000000087FF|- rs1 : x18<br> - rs1_val == 32768<br>                                                                          |[0x80000518]:addi t0, s2, 2047<br> [0x8000051c]:sd t0, 56(ra)<br>     |
|  27|[0x800032d8]<br>0x0000000000010080|- rs1 : x23<br> - rs1_val == 65536<br>                                                                          |[0x80000524]:addi s1, s7, 128<br> [0x80000528]:sd s1, 64(ra)<br>      |
|  28|[0x800032e0]<br>0x0000000000020010|- rs1 : x8<br> - rd : x20<br> - rs1_val == 131072<br>                                                           |[0x80000530]:addi s4, fp, 16<br> [0x80000534]:sd s4, 72(ra)<br>       |
|  29|[0x800032e8]<br>0x000000000003FFFC|- rs1 : x4<br> - rs1_val == 262144<br>                                                                          |[0x8000053c]:addi a6, tp, 4092<br> [0x80000540]:sd a6, 80(ra)<br>     |
|  30|[0x800032f0]<br>0x000000000007FFEF|- rs1 : x27<br> - rd : x19<br> - imm_val == -17<br> - rs1_val == 524288<br>                                     |[0x80000548]:addi s3, s11, 4079<br> [0x8000054c]:sd s3, 88(ra)<br>    |
|  31|[0x800032f8]<br>0x00000000000FFFF8|- rs1 : x17<br> - rd : x28<br> - rs1_val == 1048576<br>                                                         |[0x80000554]:addi t3, a7, 4088<br> [0x80000558]:sd t3, 96(ra)<br>     |
|  32|[0x80003300]<br>0x0000000000200009|- rs1 : x21<br> - rd : x14<br> - rs1_val == 2097152<br>                                                         |[0x80000560]:addi a4, s5, 9<br> [0x80000564]:sd a4, 104(ra)<br>       |
|  33|[0x80003308]<br>0x00000000003FFFF7|- imm_val == -9<br> - rs1_val == 4194304<br>                                                                    |[0x8000056c]:addi a1, a0, 4087<br> [0x80000570]:sd a1, 112(ra)<br>    |
|  34|[0x80003310]<br>0x00000000007FFFFC|- rs1_val == 8388608<br>                                                                                        |[0x80000578]:addi a1, a0, 4092<br> [0x8000057c]:sd a1, 120(ra)<br>    |
|  35|[0x80003318]<br>0x0000000000FFFFF8|- rs1_val == 16777216<br>                                                                                       |[0x80000584]:addi a1, a0, 4088<br> [0x80000588]:sd a1, 128(ra)<br>    |
|  36|[0x80003320]<br>0x0000000001FFFFF6|- rs1_val == 33554432<br>                                                                                       |[0x80000590]:addi a1, a0, 4086<br> [0x80000594]:sd a1, 136(ra)<br>    |
|  37|[0x80003328]<br>0x0000000003FFFFF8|- rs1_val == 67108864<br>                                                                                       |[0x8000059c]:addi a1, a0, 4088<br> [0x800005a0]:sd a1, 144(ra)<br>    |
|  38|[0x80003330]<br>0x0000000008000003|- rs1_val == 134217728<br>                                                                                      |[0x800005a8]:addi a1, a0, 3<br> [0x800005ac]:sd a1, 152(ra)<br>       |
|  39|[0x80003338]<br>0x0000000010000008|- rs1_val == 268435456<br>                                                                                      |[0x800005b4]:addi a1, a0, 8<br> [0x800005b8]:sd a1, 160(ra)<br>       |
|  40|[0x80003340]<br>0x0000000020000007|- rs1_val == 536870912<br>                                                                                      |[0x800005c0]:addi a1, a0, 7<br> [0x800005c4]:sd a1, 168(ra)<br>       |
|  41|[0x80003348]<br>0x0000000040000100|- rs1_val == 1073741824<br>                                                                                     |[0x800005cc]:addi a1, a0, 256<br> [0x800005d0]:sd a1, 176(ra)<br>     |
|  42|[0x80003350]<br>0x0000000080000010|- rs1_val == 2147483648<br>                                                                                     |[0x800005dc]:addi a1, a0, 16<br> [0x800005e0]:sd a1, 184(ra)<br>      |
|  43|[0x80003358]<br>0x00000000FFFFFFFE|- rs1_val == 4294967296<br>                                                                                     |[0x800005ec]:addi a1, a0, 4094<br> [0x800005f0]:sd a1, 192(ra)<br>    |
|  44|[0x80003360]<br>0x00000001FFFFFFF9|- rs1_val == 8589934592<br>                                                                                     |[0x800005fc]:addi a1, a0, 4089<br> [0x80000600]:sd a1, 200(ra)<br>    |
|  45|[0x80003368]<br>0x00000003FFFFFFFD|- imm_val == -3<br> - rs1_val == 17179869184<br>                                                                |[0x8000060c]:addi a1, a0, 4093<br> [0x80000610]:sd a1, 208(ra)<br>    |
|  46|[0x80003370]<br>0x00000007FFFFFFFA|- rs1_val == 34359738368<br>                                                                                    |[0x8000061c]:addi a1, a0, 4090<br> [0x80000620]:sd a1, 216(ra)<br>    |
|  47|[0x80003378]<br>0x0000000FFFFFFBFF|- imm_val == -1025<br> - rs1_val == 68719476736<br>                                                             |[0x8000062c]:addi a1, a0, 3071<br> [0x80000630]:sd a1, 224(ra)<br>    |
|  48|[0x80003380]<br>0x0000001FFFFFFFFE|- rs1_val == 137438953472<br>                                                                                   |[0x8000063c]:addi a1, a0, 4094<br> [0x80000640]:sd a1, 232(ra)<br>    |
|  49|[0x80003388]<br>0x0000003FFFFFFFFD|- rs1_val == 274877906944<br>                                                                                   |[0x8000064c]:addi a1, a0, 4093<br> [0x80000650]:sd a1, 240(ra)<br>    |
|  50|[0x80003390]<br>0x0000008000000020|- rs1_val == 549755813888<br>                                                                                   |[0x8000065c]:addi a1, a0, 32<br> [0x80000660]:sd a1, 248(ra)<br>      |
|  51|[0x80003398]<br>0x000000FFFFFFFFF9|- rs1_val == 1099511627776<br>                                                                                  |[0x8000066c]:addi a1, a0, 4089<br> [0x80000670]:sd a1, 256(ra)<br>    |
|  52|[0x800033a0]<br>0x000001FFFFFFFFFD|- rs1_val == 2199023255552<br>                                                                                  |[0x8000067c]:addi a1, a0, 4093<br> [0x80000680]:sd a1, 264(ra)<br>    |
|  53|[0x800033a8]<br>0x000003FFFFFFFFFE|- rs1_val == 4398046511104<br>                                                                                  |[0x8000068c]:addi a1, a0, 4094<br> [0x80000690]:sd a1, 272(ra)<br>    |
|  54|[0x800033b0]<br>0x0000080000000020|- rs1_val == 8796093022208<br>                                                                                  |[0x8000069c]:addi a1, a0, 32<br> [0x800006a0]:sd a1, 280(ra)<br>      |
|  55|[0x800033b8]<br>0x00000FFFFFFFFFF9|- rs1_val == 17592186044416<br>                                                                                 |[0x800006ac]:addi a1, a0, 4089<br> [0x800006b0]:sd a1, 288(ra)<br>    |
|  56|[0x800033c0]<br>0x0000200000000400|- rs1_val == 35184372088832<br>                                                                                 |[0x800006bc]:addi a1, a0, 1024<br> [0x800006c0]:sd a1, 296(ra)<br>    |
|  57|[0x800033c8]<br>0x00003FFFFFFFFFF7|- rs1_val == 70368744177664<br>                                                                                 |[0x800006cc]:addi a1, a0, 4087<br> [0x800006d0]:sd a1, 304(ra)<br>    |
|  58|[0x800033d0]<br>0x0000800000000020|- rs1_val == 140737488355328<br>                                                                                |[0x800006dc]:addi a1, a0, 32<br> [0x800006e0]:sd a1, 312(ra)<br>      |
|  59|[0x800033d8]<br>0x0000FFFFFFFFFBFF|- rs1_val == 281474976710656<br>                                                                                |[0x800006ec]:addi a1, a0, 3071<br> [0x800006f0]:sd a1, 320(ra)<br>    |
|  60|[0x800033e0]<br>0x0004000000000008|- rs1_val == 1125899906842624<br>                                                                               |[0x800006fc]:addi a1, a0, 8<br> [0x80000700]:sd a1, 328(ra)<br>       |
|  61|[0x800033e8]<br>0x0007FFFFFFFFFFF9|- rs1_val == 2251799813685248<br>                                                                               |[0x8000070c]:addi a1, a0, 4089<br> [0x80000710]:sd a1, 336(ra)<br>    |
|  62|[0x800033f0]<br>0x000FFFFFFFFFFF7F|- rs1_val == 4503599627370496<br>                                                                               |[0x8000071c]:addi a1, a0, 3967<br> [0x80000720]:sd a1, 344(ra)<br>    |
|  63|[0x800033f8]<br>0x00200000000003FF|- rs1_val == 9007199254740992<br>                                                                               |[0x8000072c]:addi a1, a0, 1023<br> [0x80000730]:sd a1, 352(ra)<br>    |
|  64|[0x80003400]<br>0x0040000000000010|- rs1_val == 18014398509481984<br>                                                                              |[0x8000073c]:addi a1, a0, 16<br> [0x80000740]:sd a1, 360(ra)<br>      |
|  65|[0x80003408]<br>0x007FFFFFFFFFFFFE|- rs1_val == 36028797018963968<br>                                                                              |[0x8000074c]:addi a1, a0, 4094<br> [0x80000750]:sd a1, 368(ra)<br>    |
|  66|[0x80003410]<br>0x0100000000000100|- rs1_val == 72057594037927936<br>                                                                              |[0x8000075c]:addi a1, a0, 256<br> [0x80000760]:sd a1, 376(ra)<br>     |
|  67|[0x80003418]<br>0x01FFFFFFFFFFFDFF|- imm_val == -513<br> - rs1_val == 144115188075855872<br>                                                       |[0x8000076c]:addi a1, a0, 3583<br> [0x80000770]:sd a1, 384(ra)<br>    |
|  68|[0x80003420]<br>0x0400000000000010|- rs1_val == 288230376151711744<br>                                                                             |[0x8000077c]:addi a1, a0, 16<br> [0x80000780]:sd a1, 392(ra)<br>      |
|  69|[0x80003428]<br>0x0800000000000000|- rs1_val == 576460752303423488<br>                                                                             |[0x8000078c]:addi a1, a0, 0<br> [0x80000790]:sd a1, 400(ra)<br>       |
|  70|[0x80003430]<br>0x0FFFFFFFFFFFFFFA|- rs1_val == 1152921504606846976<br>                                                                            |[0x8000079c]:addi a1, a0, 4090<br> [0x800007a0]:sd a1, 408(ra)<br>    |
|  71|[0x80003438]<br>0x1FFFFFFFFFFFFBFF|- rs1_val == 2305843009213693952<br>                                                                            |[0x800007ac]:addi a1, a0, 3071<br> [0x800007b0]:sd a1, 416(ra)<br>    |
|  72|[0x80003440]<br>0x0000000000000007|- rs1_val == -2<br>                                                                                             |[0x800007b8]:addi a1, a0, 9<br> [0x800007bc]:sd a1, 424(ra)<br>       |
|  73|[0x80003448]<br>0xFFFFFFFFFFFFFFF4|- rs1_val == -3<br>                                                                                             |[0x800007c4]:addi a1, a0, 4087<br> [0x800007c8]:sd a1, 432(ra)<br>    |
|  74|[0x80003450]<br>0xFFFFFFFFFFFFFFBA|- rs1_val == -5<br>                                                                                             |[0x800007d0]:addi a1, a0, 4031<br> [0x800007d4]:sd a1, 440(ra)<br>    |
|  75|[0x80003458]<br>0xFFF7FFFFFFFFFBFE|- rs1_val == -2251799813685249<br>                                                                              |[0x800007e4]:addi a1, a0, 3071<br> [0x800007e8]:sd a1, 448(ra)<br>    |
|  76|[0x80003460]<br>0xFFEFFFFFFFFFFFF6|- rs1_val == -4503599627370497<br>                                                                              |[0x800007f8]:addi a1, a0, 4087<br> [0x800007fc]:sd a1, 456(ra)<br>    |
|  77|[0x80003468]<br>0xFFDFFFFFFFFFFEFE|- rs1_val == -9007199254740993<br>                                                                              |[0x8000080c]:addi a1, a0, 3839<br> [0x80000810]:sd a1, 464(ra)<br>    |
|  78|[0x80003470]<br>0xFFC00000000000FF|- rs1_val == -18014398509481985<br>                                                                             |[0x80000820]:addi a1, a0, 256<br> [0x80000824]:sd a1, 472(ra)<br>     |
|  79|[0x80003478]<br>0xFF7FFFFFFFFFFDFE|- rs1_val == -36028797018963969<br>                                                                             |[0x80000834]:addi a1, a0, 3583<br> [0x80000838]:sd a1, 480(ra)<br>    |
|  80|[0x80003480]<br>0xFF00000000000008|- rs1_val == -72057594037927937<br>                                                                             |[0x80000848]:addi a1, a0, 9<br> [0x8000084c]:sd a1, 488(ra)<br>       |
|  81|[0x80003488]<br>0xFE00000000000001|- rs1_val == -144115188075855873<br>                                                                            |[0x8000085c]:addi a1, a0, 2<br> [0x80000860]:sd a1, 496(ra)<br>       |
|  82|[0x80003490]<br>0xFC00000000000005|- rs1_val == -288230376151711745<br>                                                                            |[0x80000870]:addi a1, a0, 6<br> [0x80000874]:sd a1, 504(ra)<br>       |
|  83|[0x80003498]<br>0xF7FFFFFFFFFFFFFB|- rs1_val == -576460752303423489<br>                                                                            |[0x80000884]:addi a1, a0, 4092<br> [0x80000888]:sd a1, 512(ra)<br>    |
|  84|[0x800034a0]<br>0xE000000000000007|- rs1_val == -2305843009213693953<br>                                                                           |[0x80000898]:addi a1, a0, 8<br> [0x8000089c]:sd a1, 520(ra)<br>       |
|  85|[0x800034a8]<br>0xBFFFFFFFFFFFFFF7|- rs1_val == -4611686018427387905<br>                                                                           |[0x800008ac]:addi a1, a0, 4088<br> [0x800008b0]:sd a1, 528(ra)<br>    |
|  86|[0x800034b0]<br>0x55555555555554D4|- rs1_val == 6148914691236517205<br>                                                                            |[0x800008d4]:addi a1, a0, 3967<br> [0x800008d8]:sd a1, 536(ra)<br>    |
|  87|[0x800034c0]<br>0xFFFFFFFFFFF801FF|- rs1_val == -524289<br>                                                                                        |[0x800008f4]:addi a1, a0, 512<br> [0x800008f8]:sd a1, 552(ra)<br>     |
|  88|[0x800034c8]<br>0xFFFFFFFFFFF7FFDE|- imm_val == -33<br>                                                                                            |[0x80000904]:addi a1, a0, 4063<br> [0x80000908]:sd a1, 560(ra)<br>    |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFF8554|- rs1_val == -32769<br>                                                                                         |[0x80000914]:addi a1, a0, 1365<br> [0x80000918]:sd a1, 568(ra)<br>    |
|  90|[0x800034e0]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -9<br>                                                                                             |[0x80000930]:addi a1, a0, 6<br> [0x80000934]:sd a1, 584(ra)<br>       |
|  91|[0x800034e8]<br>0xFFFFFFFFFFFFFDEE|- rs1_val == -17<br>                                                                                            |[0x8000093c]:addi a1, a0, 3583<br> [0x80000940]:sd a1, 592(ra)<br>    |
|  92|[0x800034f0]<br>0xFFFFFFFFFFFFFFDA|- rs1_val == -33<br>                                                                                            |[0x80000948]:addi a1, a0, 4091<br> [0x8000094c]:sd a1, 600(ra)<br>    |
|  93|[0x800034f8]<br>0xFFFFFFFFFFFFFF7E|- rs1_val == -65<br>                                                                                            |[0x80000954]:addi a1, a0, 4031<br> [0x80000958]:sd a1, 608(ra)<br>    |
|  94|[0x80003500]<br>0xFFFFFFFFFFFFFE7E|- rs1_val == -129<br>                                                                                           |[0x80000960]:addi a1, a0, 3839<br> [0x80000964]:sd a1, 616(ra)<br>    |
|  95|[0x80003508]<br>0xFFFFFFFFFFFFFDFE|- rs1_val == -257<br>                                                                                           |[0x8000096c]:addi a1, a0, 3839<br> [0x80000970]:sd a1, 624(ra)<br>    |
|  96|[0x80003510]<br>0xFFFFFFFFFFFFFE07|- rs1_val == -513<br>                                                                                           |[0x80000978]:addi a1, a0, 8<br> [0x8000097c]:sd a1, 632(ra)<br>       |
|  97|[0x80003518]<br>0xFFFFFFFFFFFFFC07|- rs1_val == -1025<br>                                                                                          |[0x80000984]:addi a1, a0, 8<br> [0x80000988]:sd a1, 640(ra)<br>       |
|  98|[0x80003520]<br>0xFFFFFFFFFFFFFD54|- rs1_val == -2049<br>                                                                                          |[0x80000994]:addi a1, a0, 1365<br> [0x80000998]:sd a1, 648(ra)<br>    |
|  99|[0x80003528]<br>0xFFFFFFFFFFFFF3FE|- rs1_val == -4097<br>                                                                                          |[0x800009a4]:addi a1, a0, 1023<br> [0x800009a8]:sd a1, 656(ra)<br>    |
| 100|[0x80003530]<br>0xFFFFFFFFFFFFDFDE|- rs1_val == -8193<br>                                                                                          |[0x800009b4]:addi a1, a0, 4063<br> [0x800009b8]:sd a1, 664(ra)<br>    |
| 101|[0x80003538]<br>0xFFFFFFFFFFFFBAA9|- rs1_val == -16385<br>                                                                                         |[0x800009c4]:addi a1, a0, 2730<br> [0x800009c8]:sd a1, 672(ra)<br>    |
| 102|[0x80003540]<br>0xFFFFFFFFFFFEFFDE|- rs1_val == -65537<br>                                                                                         |[0x800009d4]:addi a1, a0, 4063<br> [0x800009d8]:sd a1, 680(ra)<br>    |
| 103|[0x80003548]<br>0xFFFFFFFFFFFDFFF5|- rs1_val == -131073<br>                                                                                        |[0x800009e4]:addi a1, a0, 4086<br> [0x800009e8]:sd a1, 688(ra)<br>    |
| 104|[0x80003550]<br>0xFFFFFFFFFFFC00FF|- rs1_val == -262145<br>                                                                                        |[0x800009f4]:addi a1, a0, 256<br> [0x800009f8]:sd a1, 696(ra)<br>     |
| 105|[0x80003558]<br>0xFFFFFFFFFFF00001|- rs1_val == -1048577<br>                                                                                       |[0x80000a04]:addi a1, a0, 2<br> [0x80000a08]:sd a1, 704(ra)<br>       |
| 106|[0x80003560]<br>0xFFFFFFFFFFE003FE|- rs1_val == -2097153<br>                                                                                       |[0x80000a14]:addi a1, a0, 1023<br> [0x80000a18]:sd a1, 712(ra)<br>    |
| 107|[0x80003568]<br>0xFFFFFFFFFFC00008|- rs1_val == -4194305<br>                                                                                       |[0x80000a24]:addi a1, a0, 9<br> [0x80000a28]:sd a1, 720(ra)<br>       |
| 108|[0x80003570]<br>0xFFFFFFFFFF80007F|- rs1_val == -8388609<br>                                                                                       |[0x80000a34]:addi a1, a0, 128<br> [0x80000a38]:sd a1, 728(ra)<br>     |
| 109|[0x80003578]<br>0xFFFFFFFFFF000007|- rs1_val == -16777217<br>                                                                                      |[0x80000a44]:addi a1, a0, 8<br> [0x80000a48]:sd a1, 736(ra)<br>       |
| 110|[0x80003580]<br>0xFFFFFFFFFE0007FE|- rs1_val == -33554433<br>                                                                                      |[0x80000a54]:addi a1, a0, 2047<br> [0x80000a58]:sd a1, 744(ra)<br>    |
| 111|[0x80003588]<br>0xFFFFFFFFFC00001F|- rs1_val == -67108865<br>                                                                                      |[0x80000a64]:addi a1, a0, 32<br> [0x80000a68]:sd a1, 752(ra)<br>      |
| 112|[0x80003590]<br>0xFFFFFFFFF7FFFFEE|- rs1_val == -134217729<br>                                                                                     |[0x80000a74]:addi a1, a0, 4079<br> [0x80000a78]:sd a1, 760(ra)<br>    |
| 113|[0x80003598]<br>0xFFFFFFFFEFFFF7FF|- rs1_val == -268435457<br>                                                                                     |[0x80000a84]:addi a1, a0, 2048<br> [0x80000a88]:sd a1, 768(ra)<br>    |
| 114|[0x800035a0]<br>0xFFFFFFFFBFFFFFF9|- rs1_val == -1073741825<br>                                                                                    |[0x80000a94]:addi a1, a0, 4090<br> [0x80000a98]:sd a1, 776(ra)<br>    |
| 115|[0x800035a8]<br>0xFFFFFFFF7FFFFFF6|- rs1_val == -2147483649<br>                                                                                    |[0x80000aa8]:addi a1, a0, 4087<br> [0x80000aac]:sd a1, 784(ra)<br>    |
| 116|[0x800035b0]<br>0xFFFFFFFF0000007F|- rs1_val == -4294967297<br>                                                                                    |[0x80000abc]:addi a1, a0, 128<br> [0x80000ac0]:sd a1, 792(ra)<br>     |
| 117|[0x800035b8]<br>0xFFFFFFFDFFFFFBFE|- rs1_val == -8589934593<br>                                                                                    |[0x80000ad0]:addi a1, a0, 3071<br> [0x80000ad4]:sd a1, 800(ra)<br>    |
| 118|[0x800035c0]<br>0xFFFFFFFBFFFFFAA9|- rs1_val == -17179869185<br>                                                                                   |[0x80000ae4]:addi a1, a0, 2730<br> [0x80000ae8]:sd a1, 808(ra)<br>    |
| 119|[0x800035c8]<br>0xFFFFFFF7FFFFFDFE|- rs1_val == -34359738369<br>                                                                                   |[0x80000af8]:addi a1, a0, 3583<br> [0x80000afc]:sd a1, 816(ra)<br>    |
| 120|[0x800035d0]<br>0xFFFFFFF00000000F|- rs1_val == -68719476737<br>                                                                                   |[0x80000b0c]:addi a1, a0, 16<br> [0x80000b10]:sd a1, 824(ra)<br>      |
| 121|[0x800035d8]<br>0xFFFFFFE0000003FF|- rs1_val == -137438953473<br>                                                                                  |[0x80000b20]:addi a1, a0, 1024<br> [0x80000b24]:sd a1, 832(ra)<br>    |
| 122|[0x800035e0]<br>0xFFFFFFC0000000FF|- rs1_val == -274877906945<br>                                                                                  |[0x80000b34]:addi a1, a0, 256<br> [0x80000b38]:sd a1, 840(ra)<br>     |
| 123|[0x800035e8]<br>0xFFFFFF7FFFFFFFBE|- rs1_val == -549755813889<br>                                                                                  |[0x80000b48]:addi a1, a0, 4031<br> [0x80000b4c]:sd a1, 848(ra)<br>    |
| 124|[0x800035f0]<br>0xFFFFFF000000001F|- rs1_val == -1099511627777<br>                                                                                 |[0x80000b5c]:addi a1, a0, 32<br> [0x80000b60]:sd a1, 856(ra)<br>      |
| 125|[0x800035f8]<br>0xFFFFFDFFFFFFFFF9|- rs1_val == -2199023255553<br>                                                                                 |[0x80000b70]:addi a1, a0, 4090<br> [0x80000b74]:sd a1, 864(ra)<br>    |
| 126|[0x80003600]<br>0xFFFFFBFFFFFFFAA9|- rs1_val == -4398046511105<br>                                                                                 |[0x80000b84]:addi a1, a0, 2730<br> [0x80000b88]:sd a1, 872(ra)<br>    |
| 127|[0x80003608]<br>0xFFFFF7FFFFFFFBFE|- rs1_val == -8796093022209<br>                                                                                 |[0x80000b98]:addi a1, a0, 3071<br> [0x80000b9c]:sd a1, 880(ra)<br>    |
| 128|[0x80003610]<br>0xFFFFEFFFFFFFFFF8|- rs1_val == -17592186044417<br>                                                                                |[0x80000bac]:addi a1, a0, 4089<br> [0x80000bb0]:sd a1, 888(ra)<br>    |
| 129|[0x80003618]<br>0xFFFFE00000000008|- rs1_val == -35184372088833<br>                                                                                |[0x80000bc0]:addi a1, a0, 9<br> [0x80000bc4]:sd a1, 896(ra)<br>       |
| 130|[0x80003620]<br>0xFFFFC000000007FE|- rs1_val == -70368744177665<br>                                                                                |[0x80000bd4]:addi a1, a0, 2047<br> [0x80000bd8]:sd a1, 904(ra)<br>    |
| 131|[0x80003628]<br>0xFFFF800000000004|- rs1_val == -140737488355329<br>                                                                               |[0x80000be8]:addi a1, a0, 5<br> [0x80000bec]:sd a1, 912(ra)<br>       |
| 132|[0x80003630]<br>0xFFFF0000000003FF|- rs1_val == -281474976710657<br>                                                                               |[0x80000bfc]:addi a1, a0, 1024<br> [0x80000c00]:sd a1, 920(ra)<br>    |
| 133|[0x80003638]<br>0xFFFDFFFFFFFFFBFF|- rs1_val == -562949953421313<br>                                                                               |[0x80000c10]:addi a1, a0, 3072<br> [0x80000c14]:sd a1, 928(ra)<br>    |
| 134|[0x80003648]<br>0x00000000000007FF|- rs1_val == 2048<br>                                                                                           |[0x80000c48]:addi a1, a0, 4095<br> [0x80000c4c]:sd a1, 944(ra)<br>    |
