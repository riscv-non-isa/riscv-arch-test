
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c40')]      |
| SIG_REGION                | [('0x80003208', '0x80003650', '137 dwords')]      |
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 137      |
| STAT1                     | 133      |
| STAT2                     | 4      |
| STAT3                     | 68     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000494]:addi t6, zero, 512
      [0x80000498]:sd t6, 144(s1)
 -- Signature Address: 0x80003298 Data: 0x0000000000000200
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x0
      - rd : x31
      - rs1 != rd
      - rs1_val == 0
      - rs1_val != imm_val
      - imm_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008dc]:addi a1, a0, 16
      [0x800008e0]:sd a1, 504(gp)
 -- Signature Address: 0x800034b8 Data: 0x0008000000000010
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 16
      - rs1_val == 2251799813685248




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008ec]:addi a1, a0, 32
      [0x800008f0]:sd a1, 512(gp)
 -- Signature Address: 0x800034c0 Data: 0x0200000000000020
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 32
      - rs1_val == 144115188075855872




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008fc]:addi a1, a0, 4087
      [0x80000900]:sd a1, 520(gp)
 -- Signature Address: 0x800034c8 Data: 0x0001FFFFFFFFFFF7
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -9
      - rs1_val == 562949953421312






```

## Details of STAT3

```
[0x80000394]:addi s1, s1, 3704

[0x80000398]:addi a1, zero, 64

[0x800003b4]:addi ra, zero, 3

[0x800003c8]:addi s10, s10, 4095

[0x800003e4]:addi s4, zero, 0

[0x800003f8]:addi tp, tp, 4095

[0x80000404]:addi t6, zero, 1

[0x80000430]:addi a2, zero, 4

[0x8000043c]:addi a6, zero, 2

[0x80000448]:addi s7, zero, 8

[0x80000454]:addi s2, zero, 16

[0x80000460]:addi gp, zero, 32

[0x8000046c]:addi s9, zero, 128

[0x80000478]:addi t3, zero, 256

[0x80000484]:addi s8, zero, 512

[0x80000490]:addi zero, zero, 1024

[0x800004d4]:addi gp, gp, 3568
[0x800004d8]:lui s3, 8

[0x80000778]:addi a0, zero, 4094

[0x80000784]:addi a0, zero, 4093

[0x80000790]:addi a0, zero, 4091

[0x8000079c]:addi a0, zero, 4087

[0x800007b0]:addi a0, a0, 4095

[0x800007c4]:addi a0, a0, 4095

[0x800007d8]:addi a0, a0, 4095

[0x800007ec]:addi a0, a0, 4095

[0x80000800]:addi a0, a0, 4095

[0x80000814]:addi a0, a0, 4095

[0x80000828]:addi a0, a0, 4095

[0x8000083c]:addi a0, a0, 4095

[0x80000850]:addi a0, a0, 4095

[0x80000864]:addi a0, a0, 4095

[0x80000878]:addi a0, a0, 4095

[0x80000890]:addi a0, a0, 1365
[0x80000894]:slli a0, a0, 12

[0x80000898]:addi a0, a0, 1365
[0x8000089c]:slli a0, a0, 12

[0x800008a0]:addi a0, a0, 1365

[0x800008b8]:addi a0, a0, 2731
[0x800008bc]:slli a0, a0, 12

[0x800008c0]:addi a0, a0, 2731
[0x800008c4]:slli a0, a0, 12

[0x800008c8]:addi a0, a0, 2730

[0x80000914]:addi a0, zero, 4079

[0x80000920]:addi a0, zero, 4063

[0x8000092c]:addi a0, zero, 4031

[0x80000938]:addi a0, zero, 3967

[0x80000944]:addi a0, zero, 3839

[0x80000950]:addi a0, zero, 3583

[0x8000095c]:addi a0, zero, 3071

[0x80000aa0]:addi a0, a0, 4095

[0x80000ab4]:addi a0, a0, 4095

[0x80000ac8]:addi a0, a0, 4095

[0x80000adc]:addi a0, a0, 4095

[0x80000af0]:addi a0, a0, 4095

[0x80000b04]:addi a0, a0, 4095

[0x80000b18]:addi a0, a0, 4095

[0x80000b2c]:addi a0, a0, 4095

[0x80000b40]:addi a0, a0, 4095

[0x80000b54]:addi a0, a0, 4095

[0x80000b68]:addi a0, a0, 4095

[0x80000b7c]:addi a0, a0, 4095

[0x80000b90]:addi a0, a0, 4095

[0x80000ba4]:addi a0, a0, 4095

[0x80000bb8]:addi a0, a0, 4095

[0x80000bcc]:addi a0, a0, 4095

[0x80000be0]:addi a0, a0, 4095

[0x80000bf4]:addi a0, a0, 4095

[0x80000c08]:addi a0, a0, 4095

[0x80000c1c]:addi a0, a0, 4095

[0x80000c28]:addi a0, zero, 1024

[0x80000c34]:addi zero, zero, 0

[0x80000c38]:addi zero, zero, 0



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

|s.no|            signature             |                                                                       coverpoints                                                                       |                                code                                |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000080|- rs1 : x11<br> - rd : x13<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 64<br>                                            |[0x8000039c]:addi a3, a1, 64<br> [0x800003a0]:sd a3, 0(s1)<br>      |
|   2|[0x80003210]<br>0xFFFFFFFFFFC00003|- rs1 : x5<br> - rd : x5<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 4<br> - rs1_val == -4194305<br>                                              |[0x800003ac]:addi t0, t0, 4<br> [0x800003b0]:sd t0, 8(s1)<br>       |
|   3|[0x80003218]<br>0x0000000000000002|- rs1 : x1<br> - rd : x27<br>                                                                                                                            |[0x800003b8]:addi s11, ra, 4095<br> [0x800003bc]:sd s11, 16(s1)<br> |
|   4|[0x80003220]<br>0xFFDFFFFFFFFFFFEE|- rd : x4<br> - imm_val == -17<br> - rs1_val == -9007199254740993<br>                                                                                    |[0x800003cc]:addi tp, s10, 4079<br> [0x800003d0]:sd tp, 24(s1)<br>  |
|   5|[0x80003228]<br>0x80000000000007FF|- rs1 : x6<br> - rd : x29<br> - imm_val == (2**(12-1)-1)<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 2047<br> - rs1_val == -9223372036854775808<br> |[0x800003dc]:addi t4, t1, 2047<br> [0x800003e0]:sd t4, 32(s1)<br>   |
|   6|[0x80003230]<br>0xFFFFFFFFFFFFFFEF|- rs1 : x20<br> - rd : x12<br>                                                                                                                           |[0x800003e8]:addi a2, s4, 4079<br> [0x800003ec]:sd a2, 40(s1)<br>   |
|   7|[0x80003238]<br>0x7FFFFFFFFFFFFFBE|- rd : x16<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -65<br> - rs1_val == 9223372036854775807<br>                                                |[0x800003fc]:addi a6, tp, 4031<br> [0x80000400]:sd a6, 48(s1)<br>   |
|   8|[0x80003240]<br>0xFFFFFFFFFFFFFFF0|- rs1 : x31<br> - rs1_val == 1<br>                                                                                                                       |[0x80000408]:addi s4, t6, 4079<br> [0x8000040c]:sd s4, 56(s1)<br>   |
|   9|[0x80003248]<br>0x000000FFFFFFF800|- rs1 : x30<br> - rd : x21<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == 1099511627776<br>                                       |[0x80000418]:addi s5, t5, 2048<br> [0x8000041c]:sd s5, 64(s1)<br>   |
|  10|[0x80003250]<br>0x0000000000000000|- rs1 : x7<br> - rd : x0<br> - rs1_val == 144115188075855872<br>                                                                                         |[0x80000428]:addi zero, t2, 0<br> [0x8000042c]:sd zero, 72(s1)<br>  |
|  11|[0x80003258]<br>0x0000000000000005|- rs1 : x12<br> - rd : x2<br> - rs1_val == 4<br>                                                                                                         |[0x80000434]:addi sp, a2, 1<br> [0x80000438]:sd sp, 80(s1)<br>      |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFFFF8|- rs1 : x16<br> - rd : x8<br> - rs1_val == 2<br>                                                                                                         |[0x80000440]:addi fp, a6, 4086<br> [0x80000444]:sd fp, 88(s1)<br>   |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x23<br> - rd : x14<br> - rs1_val == 8<br>                                                                                                        |[0x8000044c]:addi a4, s7, 4086<br> [0x80000450]:sd a4, 96(s1)<br>   |
|  14|[0x80003270]<br>0x000000000000080F|- rs1 : x18<br> - rd : x28<br> - rs1_val == 16<br>                                                                                                       |[0x80000458]:addi t3, s2, 2047<br> [0x8000045c]:sd t3, 104(s1)<br>  |
|  15|[0x80003278]<br>0xFFFFFFFFFFFFFE1F|- rs1 : x3<br> - imm_val == -513<br> - rs1_val == 32<br>                                                                                                 |[0x80000464]:addi s7, gp, 3583<br> [0x80000468]:sd s7, 112(s1)<br>  |
|  16|[0x80003280]<br>0x0000000000000180|- rs1 : x25<br> - rd : x15<br> - imm_val == 256<br> - rs1_val == 128<br>                                                                                 |[0x80000470]:addi a5, s9, 256<br> [0x80000474]:sd a5, 120(s1)<br>   |
|  17|[0x80003288]<br>0xFFFFFFFFFFFFFBAA|- rs1 : x28<br> - imm_val == -1366<br> - rs1_val == 256<br>                                                                                              |[0x8000047c]:addi a1, t3, 2730<br> [0x80000480]:sd a1, 128(s1)<br>  |
|  18|[0x80003290]<br>0xFFFFFFFFFFFFFCAA|- rs1 : x24<br> - rs1_val == 512<br>                                                                                                                     |[0x80000488]:addi s9, s8, 2730<br> [0x8000048c]:sd s9, 136(s1)<br>  |
|  19|[0x800032a0]<br>0x0000000000000800|- rs1 : x15<br> - rs1_val == 2048<br>                                                                                                                    |[0x800004a4]:addi s8, a5, 0<br> [0x800004a8]:sd s8, 152(s1)<br>     |
|  20|[0x800032a8]<br>0x0000000000001555|- rs1 : x27<br> - imm_val == 1365<br> - rs1_val == 4096<br>                                                                                              |[0x800004b0]:addi gp, s11, 1365<br> [0x800004b4]:sd gp, 160(s1)<br> |
|  21|[0x800032b0]<br>0x0000000000002009|- rs1 : x21<br> - rd : x7<br> - rs1_val == 8192<br>                                                                                                      |[0x800004bc]:addi t2, s5, 9<br> [0x800004c0]:sd t2, 168(s1)<br>     |
|  22|[0x800032b8]<br>0x0000000000003FBF|- rs1 : x17<br> - rd : x22<br> - rs1_val == 16384<br>                                                                                                    |[0x800004c8]:addi s6, a7, 4031<br> [0x800004cc]:sd s6, 176(s1)<br>  |
|  23|[0x800032c0]<br>0x0000000000007FFA|- rs1 : x19<br> - rs1_val == 32768<br>                                                                                                                   |[0x800004dc]:addi s10, s3, 4090<br> [0x800004e0]:sd s10, 0(gp)<br>  |
|  24|[0x800032c8]<br>0x0000000000010005|- rd : x6<br> - rs1_val == 65536<br>                                                                                                                     |[0x800004e8]:addi t1, s1, 5<br> [0x800004ec]:sd t1, 8(gp)<br>       |
|  25|[0x800032d0]<br>0x000000000001FFFA|- rs1 : x8<br> - rd : x19<br> - rs1_val == 131072<br>                                                                                                    |[0x800004f4]:addi s3, fp, 4090<br> [0x800004f8]:sd s3, 16(gp)<br>   |
|  26|[0x800032d8]<br>0x0000000000040001|- rs1 : x2<br> - rs1_val == 262144<br>                                                                                                                   |[0x80000500]:addi ra, sp, 1<br> [0x80000504]:sd ra, 24(gp)<br>      |
|  27|[0x800032e0]<br>0x0000000000080008|- rs1 : x29<br> - rs1_val == 524288<br>                                                                                                                  |[0x8000050c]:addi s2, t4, 8<br> [0x80000510]:sd s2, 32(gp)<br>      |
|  28|[0x800032e8]<br>0x00000000000FFFFF|- rs1 : x13<br> - rs1_val == 1048576<br>                                                                                                                 |[0x80000518]:addi s1, a3, 4095<br> [0x8000051c]:sd s1, 40(gp)<br>   |
|  29|[0x800032f0]<br>0x0000000000200200|- rs1 : x10<br> - rd : x17<br> - rs1_val == 2097152<br>                                                                                                  |[0x80000524]:addi a7, a0, 512<br> [0x80000528]:sd a7, 48(gp)<br>    |
|  30|[0x800032f8]<br>0x00000000003FFFF8|- rs1 : x14<br> - rd : x30<br> - rs1_val == 4194304<br>                                                                                                  |[0x80000530]:addi t5, a4, 4088<br> [0x80000534]:sd t5, 56(gp)<br>   |
|  31|[0x80003300]<br>0x0000000000800400|- rs1 : x22<br> - rd : x10<br> - rs1_val == 8388608<br>                                                                                                  |[0x8000053c]:addi a0, s6, 1024<br> [0x80000540]:sd a0, 64(gp)<br>   |
|  32|[0x80003308]<br>0x0000000001000002|- rs1_val == 16777216<br>                                                                                                                                |[0x80000548]:addi a1, a0, 2<br> [0x8000054c]:sd a1, 72(gp)<br>      |
|  33|[0x80003310]<br>0x0000000002000555|- rs1_val == 33554432<br>                                                                                                                                |[0x80000554]:addi a1, a0, 1365<br> [0x80000558]:sd a1, 80(gp)<br>   |
|  34|[0x80003318]<br>0x0000000004000000|- rs1_val == 67108864<br>                                                                                                                                |[0x80000560]:addi a1, a0, 0<br> [0x80000564]:sd a1, 88(gp)<br>      |
|  35|[0x80003320]<br>0x0000000007FFFFF6|- rs1_val == 134217728<br>                                                                                                                               |[0x8000056c]:addi a1, a0, 4086<br> [0x80000570]:sd a1, 96(gp)<br>   |
|  36|[0x80003328]<br>0x000000000FFFFF7F|- imm_val == -129<br> - rs1_val == 268435456<br>                                                                                                         |[0x80000578]:addi a1, a0, 3967<br> [0x8000057c]:sd a1, 104(gp)<br>  |
|  37|[0x80003330]<br>0x0000000020000040|- rs1_val == 536870912<br>                                                                                                                               |[0x80000584]:addi a1, a0, 64<br> [0x80000588]:sd a1, 112(gp)<br>    |
|  38|[0x80003338]<br>0x0000000040000004|- rs1_val == 1073741824<br>                                                                                                                              |[0x80000590]:addi a1, a0, 4<br> [0x80000594]:sd a1, 120(gp)<br>     |
|  39|[0x80003340]<br>0x000000007FFFFFFB|- imm_val == -5<br> - rs1_val == 2147483648<br>                                                                                                          |[0x800005a0]:addi a1, a0, 4091<br> [0x800005a4]:sd a1, 128(gp)<br>  |
|  40|[0x80003348]<br>0x00000000FFFFFFF8|- rs1_val == 4294967296<br>                                                                                                                              |[0x800005b0]:addi a1, a0, 4088<br> [0x800005b4]:sd a1, 136(gp)<br>  |
|  41|[0x80003350]<br>0x0000000200000080|- rs1_val == 8589934592<br>                                                                                                                              |[0x800005c0]:addi a1, a0, 128<br> [0x800005c4]:sd a1, 144(gp)<br>   |
|  42|[0x80003358]<br>0x0000000400000001|- rs1_val == 17179869184<br>                                                                                                                             |[0x800005d0]:addi a1, a0, 1<br> [0x800005d4]:sd a1, 152(gp)<br>     |
|  43|[0x80003360]<br>0x00000007FFFFFFF9|- rs1_val == 34359738368<br>                                                                                                                             |[0x800005e0]:addi a1, a0, 4089<br> [0x800005e4]:sd a1, 160(gp)<br>  |
|  44|[0x80003368]<br>0x0000000FFFFFFFFD|- imm_val == -3<br> - rs1_val == 68719476736<br>                                                                                                         |[0x800005f0]:addi a1, a0, 4093<br> [0x800005f4]:sd a1, 168(gp)<br>  |
|  45|[0x80003370]<br>0x0000001FFFFFFDFF|- rs1_val == 137438953472<br>                                                                                                                            |[0x80000600]:addi a1, a0, 3583<br> [0x80000604]:sd a1, 176(gp)<br>  |
|  46|[0x80003378]<br>0x0000004000000080|- rs1_val == 274877906944<br>                                                                                                                            |[0x80000610]:addi a1, a0, 128<br> [0x80000614]:sd a1, 184(gp)<br>   |
|  47|[0x80003380]<br>0x0000007FFFFFFFFB|- rs1_val == 549755813888<br>                                                                                                                            |[0x80000620]:addi a1, a0, 4091<br> [0x80000624]:sd a1, 192(gp)<br>  |
|  48|[0x80003388]<br>0x0000020000000006|- rs1_val == 2199023255552<br>                                                                                                                           |[0x80000630]:addi a1, a0, 6<br> [0x80000634]:sd a1, 200(gp)<br>     |
|  49|[0x80003390]<br>0x000003FFFFFFFC00|- rs1_val == 4398046511104<br>                                                                                                                           |[0x80000640]:addi a1, a0, 3072<br> [0x80000644]:sd a1, 208(gp)<br>  |
|  50|[0x80003398]<br>0x0000080000000004|- rs1_val == 8796093022208<br>                                                                                                                           |[0x80000650]:addi a1, a0, 4<br> [0x80000654]:sd a1, 216(gp)<br>     |
|  51|[0x800033a0]<br>0x00000FFFFFFFFFFE|- imm_val == -2<br> - rs1_val == 17592186044416<br>                                                                                                      |[0x80000660]:addi a1, a0, 4094<br> [0x80000664]:sd a1, 224(gp)<br>  |
|  52|[0x800033a8]<br>0x0000200000000004|- rs1_val == 35184372088832<br>                                                                                                                          |[0x80000670]:addi a1, a0, 4<br> [0x80000674]:sd a1, 232(gp)<br>     |
|  53|[0x800033b0]<br>0x0000400000000200|- rs1_val == 70368744177664<br>                                                                                                                          |[0x80000680]:addi a1, a0, 512<br> [0x80000684]:sd a1, 240(gp)<br>   |
|  54|[0x800033b8]<br>0x00007FFFFFFFFFF9|- rs1_val == 140737488355328<br>                                                                                                                         |[0x80000690]:addi a1, a0, 4089<br> [0x80000694]:sd a1, 248(gp)<br>  |
|  55|[0x800033c0]<br>0x0001000000000200|- rs1_val == 281474976710656<br>                                                                                                                         |[0x800006a0]:addi a1, a0, 512<br> [0x800006a4]:sd a1, 256(gp)<br>   |
|  56|[0x800033c8]<br>0x0001FFFFFFFFFF7F|- rs1_val == 562949953421312<br>                                                                                                                         |[0x800006b0]:addi a1, a0, 3967<br> [0x800006b4]:sd a1, 264(gp)<br>  |
|  57|[0x800033d0]<br>0x0004000000000008|- rs1_val == 1125899906842624<br>                                                                                                                        |[0x800006c0]:addi a1, a0, 8<br> [0x800006c4]:sd a1, 272(gp)<br>     |
|  58|[0x800033d8]<br>0x0007FFFFFFFFFBFF|- imm_val == -1025<br> - rs1_val == 2251799813685248<br>                                                                                                 |[0x800006d0]:addi a1, a0, 3071<br> [0x800006d4]:sd a1, 280(gp)<br>  |
|  59|[0x800033e0]<br>0x0010000000000040|- rs1_val == 4503599627370496<br>                                                                                                                        |[0x800006e0]:addi a1, a0, 64<br> [0x800006e4]:sd a1, 288(gp)<br>    |
|  60|[0x800033e8]<br>0x001FFFFFFFFFFFF8|- rs1_val == 9007199254740992<br>                                                                                                                        |[0x800006f0]:addi a1, a0, 4088<br> [0x800006f4]:sd a1, 296(gp)<br>  |
|  61|[0x800033f0]<br>0x0040000000000007|- rs1_val == 18014398509481984<br>                                                                                                                       |[0x80000700]:addi a1, a0, 7<br> [0x80000704]:sd a1, 304(gp)<br>     |
|  62|[0x800033f8]<br>0x007FFFFFFFFFFAAA|- rs1_val == 36028797018963968<br>                                                                                                                       |[0x80000710]:addi a1, a0, 2730<br> [0x80000714]:sd a1, 312(gp)<br>  |
|  63|[0x80003400]<br>0x01000000000003FF|- rs1_val == 72057594037927936<br>                                                                                                                       |[0x80000720]:addi a1, a0, 1023<br> [0x80000724]:sd a1, 320(gp)<br>  |
|  64|[0x80003408]<br>0x0400000000000000|- rs1_val == 288230376151711744<br>                                                                                                                      |[0x80000730]:addi a1, a0, 0<br> [0x80000734]:sd a1, 328(gp)<br>     |
|  65|[0x80003410]<br>0x0800000000000001|- rs1_val == 576460752303423488<br>                                                                                                                      |[0x80000740]:addi a1, a0, 1<br> [0x80000744]:sd a1, 336(gp)<br>     |
|  66|[0x80003418]<br>0x0FFFFFFFFFFFFDFF|- rs1_val == 1152921504606846976<br>                                                                                                                     |[0x80000750]:addi a1, a0, 3583<br> [0x80000754]:sd a1, 344(gp)<br>  |
|  67|[0x80003420]<br>0x2000000000000002|- rs1_val == 2305843009213693952<br>                                                                                                                     |[0x80000760]:addi a1, a0, 2<br> [0x80000764]:sd a1, 352(gp)<br>     |
|  68|[0x80003428]<br>0x4000000000000002|- rs1_val == 4611686018427387904<br>                                                                                                                     |[0x80000770]:addi a1, a0, 2<br> [0x80000774]:sd a1, 360(gp)<br>     |
|  69|[0x80003430]<br>0xFFFFFFFFFFFFFBFE|- rs1_val == -2<br>                                                                                                                                      |[0x8000077c]:addi a1, a0, 3072<br> [0x80000780]:sd a1, 368(gp)<br>  |
|  70|[0x80003438]<br>0x00000000000000FD|- rs1_val == -3<br>                                                                                                                                      |[0x80000788]:addi a1, a0, 256<br> [0x8000078c]:sd a1, 376(gp)<br>   |
|  71|[0x80003440]<br>0xFFFFFFFFFFFFFEFA|- imm_val == -257<br> - rs1_val == -5<br>                                                                                                                |[0x80000794]:addi a1, a0, 3839<br> [0x80000798]:sd a1, 384(gp)<br>  |
|  72|[0x80003448]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                      |[0x800007a0]:addi a1, a0, 8<br> [0x800007a4]:sd a1, 392(gp)<br>     |
|  73|[0x80003450]<br>0xFFF8000000000008|- rs1_val == -2251799813685249<br>                                                                                                                       |[0x800007b4]:addi a1, a0, 9<br> [0x800007b8]:sd a1, 400(gp)<br>     |
|  74|[0x80003458]<br>0xFFEFFFFFFFFFFFEE|- rs1_val == -4503599627370497<br>                                                                                                                       |[0x800007c8]:addi a1, a0, 4079<br> [0x800007cc]:sd a1, 408(gp)<br>  |
|  75|[0x80003460]<br>0xFFC0000000000004|- rs1_val == -18014398509481985<br>                                                                                                                      |[0x800007dc]:addi a1, a0, 5<br> [0x800007e0]:sd a1, 416(gp)<br>     |
|  76|[0x80003468]<br>0xFF7FFFFFFFFFFFFC|- rs1_val == -36028797018963969<br>                                                                                                                      |[0x800007f0]:addi a1, a0, 4093<br> [0x800007f4]:sd a1, 424(gp)<br>  |
|  77|[0x80003470]<br>0xFEFFFFFFFFFFFFF7|- rs1_val == -72057594037927937<br>                                                                                                                      |[0x80000804]:addi a1, a0, 4088<br> [0x80000808]:sd a1, 432(gp)<br>  |
|  78|[0x80003478]<br>0xFE00000000000002|- rs1_val == -144115188075855873<br>                                                                                                                     |[0x80000818]:addi a1, a0, 3<br> [0x8000081c]:sd a1, 440(gp)<br>     |
|  79|[0x80003480]<br>0xFC000000000003FE|- rs1_val == -288230376151711745<br>                                                                                                                     |[0x8000082c]:addi a1, a0, 1023<br> [0x80000830]:sd a1, 448(gp)<br>  |
|  80|[0x80003488]<br>0xF800000000000003|- rs1_val == -576460752303423489<br>                                                                                                                     |[0x80000840]:addi a1, a0, 4<br> [0x80000844]:sd a1, 456(gp)<br>     |
|  81|[0x80003490]<br>0xF000000000000000|- rs1_val == -1152921504606846977<br>                                                                                                                    |[0x80000854]:addi a1, a0, 1<br> [0x80000858]:sd a1, 464(gp)<br>     |
|  82|[0x80003498]<br>0xDFFFFFFFFFFFFAA9|- rs1_val == -2305843009213693953<br>                                                                                                                    |[0x80000868]:addi a1, a0, 2730<br> [0x8000086c]:sd a1, 472(gp)<br>  |
|  83|[0x800034a0]<br>0xC0000000000001FF|- rs1_val == -4611686018427387905<br>                                                                                                                    |[0x8000087c]:addi a1, a0, 512<br> [0x80000880]:sd a1, 480(gp)<br>   |
|  84|[0x800034a8]<br>0x5555555555555595|- rs1_val == 6148914691236517205<br>                                                                                                                     |[0x800008a4]:addi a1, a0, 64<br> [0x800008a8]:sd a1, 488(gp)<br>    |
|  85|[0x800034b0]<br>0xAAAAAAAAAAAAAFFF|- rs1_val == -6148914691236517206<br>                                                                                                                    |[0x800008cc]:addi a1, a0, 1365<br> [0x800008d0]:sd a1, 496(gp)<br>  |
|  86|[0x800034d0]<br>0x00000007FFFFFFDF|- imm_val == -33<br>                                                                                                                                     |[0x8000090c]:addi a1, a0, 4063<br> [0x80000910]:sd a1, 528(gp)<br>  |
|  87|[0x800034d8]<br>0x00000000000001EF|- rs1_val == -17<br>                                                                                                                                     |[0x80000918]:addi a1, a0, 512<br> [0x8000091c]:sd a1, 536(gp)<br>   |
|  88|[0x800034e0]<br>0xFFFFFFFFFFFFFFE6|- rs1_val == -33<br>                                                                                                                                     |[0x80000924]:addi a1, a0, 7<br> [0x80000928]:sd a1, 544(gp)<br>     |
|  89|[0x800034e8]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -65<br>                                                                                                                                     |[0x80000930]:addi a1, a0, 1<br> [0x80000934]:sd a1, 552(gp)<br>     |
|  90|[0x800034f0]<br>0xFFFFFFFFFFFFFF7E|- rs1_val == -129<br>                                                                                                                                    |[0x8000093c]:addi a1, a0, 4095<br> [0x80000940]:sd a1, 560(gp)<br>  |
|  91|[0x800034f8]<br>0xFFFFFFFFFFFFFEFC|- rs1_val == -257<br>                                                                                                                                    |[0x80000948]:addi a1, a0, 4093<br> [0x8000094c]:sd a1, 568(gp)<br>  |
|  92|[0x80003500]<br>0xFFFFFFFFFFFFF9FE|- rs1_val == -513<br>                                                                                                                                    |[0x80000954]:addi a1, a0, 3071<br> [0x80000958]:sd a1, 576(gp)<br>  |
|  93|[0x80003508]<br>0xFFFFFFFFFFFFFC01|- rs1_val == -1025<br>                                                                                                                                   |[0x80000960]:addi a1, a0, 2<br> [0x80000964]:sd a1, 584(gp)<br>     |
|  94|[0x80003510]<br>0xFFFFFFFFFFFFF3FF|- rs1_val == -2049<br>                                                                                                                                   |[0x80000970]:addi a1, a0, 3072<br> [0x80000974]:sd a1, 592(gp)<br>  |
|  95|[0x80003518]<br>0xFFFFFFFFFFFFF01F|- rs1_val == -4097<br>                                                                                                                                   |[0x80000980]:addi a1, a0, 32<br> [0x80000984]:sd a1, 600(gp)<br>    |
|  96|[0x80003520]<br>0xFFFFFFFFFFFFE000|- rs1_val == -8193<br>                                                                                                                                   |[0x80000990]:addi a1, a0, 1<br> [0x80000994]:sd a1, 608(gp)<br>     |
|  97|[0x80003528]<br>0xFFFFFFFFFFFFBFFA|- rs1_val == -16385<br>                                                                                                                                  |[0x800009a0]:addi a1, a0, 4091<br> [0x800009a4]:sd a1, 616(gp)<br>  |
|  98|[0x80003530]<br>0xFFFFFFFFFFFF8001|- rs1_val == -32769<br>                                                                                                                                  |[0x800009b0]:addi a1, a0, 2<br> [0x800009b4]:sd a1, 624(gp)<br>     |
|  99|[0x80003538]<br>0xFFFFFFFFFFFF03FF|- rs1_val == -65537<br>                                                                                                                                  |[0x800009c0]:addi a1, a0, 1024<br> [0x800009c4]:sd a1, 632(gp)<br>  |
| 100|[0x80003540]<br>0xFFFFFFFFFFFDFDFE|- rs1_val == -131073<br>                                                                                                                                 |[0x800009d0]:addi a1, a0, 3583<br> [0x800009d4]:sd a1, 640(gp)<br>  |
| 101|[0x80003548]<br>0xFFFFFFFFFFFBFAA9|- rs1_val == -262145<br>                                                                                                                                 |[0x800009e0]:addi a1, a0, 2730<br> [0x800009e4]:sd a1, 648(gp)<br>  |
| 102|[0x80003550]<br>0xFFFFFFFFFFF7FEFE|- rs1_val == -524289<br>                                                                                                                                 |[0x800009f0]:addi a1, a0, 3839<br> [0x800009f4]:sd a1, 656(gp)<br>  |
| 103|[0x80003558]<br>0xFFFFFFFFFFF00008|- rs1_val == -1048577<br>                                                                                                                                |[0x80000a00]:addi a1, a0, 9<br> [0x80000a04]:sd a1, 664(gp)<br>     |
| 104|[0x80003560]<br>0xFFFFFFFFFFE00002|- rs1_val == -2097153<br>                                                                                                                                |[0x80000a10]:addi a1, a0, 3<br> [0x80000a14]:sd a1, 672(gp)<br>     |
| 105|[0x80003568]<br>0xFFFFFFFFFF80000F|- rs1_val == -8388609<br>                                                                                                                                |[0x80000a20]:addi a1, a0, 16<br> [0x80000a24]:sd a1, 680(gp)<br>    |
| 106|[0x80003570]<br>0xFFFFFFFFFEFFFDFE|- rs1_val == -16777217<br>                                                                                                                               |[0x80000a30]:addi a1, a0, 3583<br> [0x80000a34]:sd a1, 688(gp)<br>  |
| 107|[0x80003578]<br>0xFFFFFFFFFDFFFFF7|- rs1_val == -33554433<br>                                                                                                                               |[0x80000a40]:addi a1, a0, 4088<br> [0x80000a44]:sd a1, 696(gp)<br>  |
| 108|[0x80003580]<br>0xFFFFFFFFFBFFFFF7|- rs1_val == -67108865<br>                                                                                                                               |[0x80000a50]:addi a1, a0, 4088<br> [0x80000a54]:sd a1, 704(gp)<br>  |
| 109|[0x80003588]<br>0xFFFFFFFFF80003FE|- rs1_val == -134217729<br>                                                                                                                              |[0x80000a60]:addi a1, a0, 1023<br> [0x80000a64]:sd a1, 712(gp)<br>  |
| 110|[0x80003590]<br>0xFFFFFFFFEFFFFFFA|- rs1_val == -268435457<br>                                                                                                                              |[0x80000a70]:addi a1, a0, 4091<br> [0x80000a74]:sd a1, 720(gp)<br>  |
| 111|[0x80003598]<br>0xFFFFFFFFDFFFFFFA|- rs1_val == -536870913<br>                                                                                                                              |[0x80000a80]:addi a1, a0, 4091<br> [0x80000a84]:sd a1, 728(gp)<br>  |
| 112|[0x800035a0]<br>0xFFFFFFFFBFFFFFFE|- rs1_val == -1073741825<br>                                                                                                                             |[0x80000a90]:addi a1, a0, 4095<br> [0x80000a94]:sd a1, 736(gp)<br>  |
| 113|[0x800035a8]<br>0xFFFFFFFF7FFFFF7E|- rs1_val == -2147483649<br>                                                                                                                             |[0x80000aa4]:addi a1, a0, 3967<br> [0x80000aa8]:sd a1, 744(gp)<br>  |
| 114|[0x800035b0]<br>0xFFFFFFFF0000007F|- rs1_val == -4294967297<br>                                                                                                                             |[0x80000ab8]:addi a1, a0, 128<br> [0x80000abc]:sd a1, 752(gp)<br>   |
| 115|[0x800035b8]<br>0xFFFFFFFE00000554|- rs1_val == -8589934593<br>                                                                                                                             |[0x80000acc]:addi a1, a0, 1365<br> [0x80000ad0]:sd a1, 760(gp)<br>  |
| 116|[0x800035c0]<br>0xFFFFFFFBFFFFFFF8|- rs1_val == -17179869185<br>                                                                                                                            |[0x80000ae0]:addi a1, a0, 4089<br> [0x80000ae4]:sd a1, 768(gp)<br>  |
| 117|[0x800035c8]<br>0xFFFFFFF8000000FF|- rs1_val == -34359738369<br>                                                                                                                            |[0x80000af4]:addi a1, a0, 256<br> [0x80000af8]:sd a1, 776(gp)<br>   |
| 118|[0x800035d0]<br>0xFFFFFFEFFFFFFFEE|- rs1_val == -68719476737<br>                                                                                                                            |[0x80000b08]:addi a1, a0, 4079<br> [0x80000b0c]:sd a1, 784(gp)<br>  |
| 119|[0x800035d8]<br>0xFFFFFFDFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                           |[0x80000b1c]:addi a1, a0, 0<br> [0x80000b20]:sd a1, 792(gp)<br>     |
| 120|[0x800035e0]<br>0xFFFFFFBFFFFFFFF8|- rs1_val == -274877906945<br>                                                                                                                           |[0x80000b30]:addi a1, a0, 4089<br> [0x80000b34]:sd a1, 800(gp)<br>  |
| 121|[0x800035e8]<br>0xFFFFFF800000007F|- rs1_val == -549755813889<br>                                                                                                                           |[0x80000b44]:addi a1, a0, 128<br> [0x80000b48]:sd a1, 808(gp)<br>   |
| 122|[0x800035f0]<br>0xFFFFFEFFFFFFFFF6|- rs1_val == -1099511627777<br>                                                                                                                          |[0x80000b58]:addi a1, a0, 4087<br> [0x80000b5c]:sd a1, 816(gp)<br>  |
| 123|[0x800035f8]<br>0xFFFFFDFFFFFFFFF5|- rs1_val == -2199023255553<br>                                                                                                                          |[0x80000b6c]:addi a1, a0, 4086<br> [0x80000b70]:sd a1, 824(gp)<br>  |
| 124|[0x80003600]<br>0xFFFFFC0000000008|- rs1_val == -4398046511105<br>                                                                                                                          |[0x80000b80]:addi a1, a0, 9<br> [0x80000b84]:sd a1, 832(gp)<br>     |
| 125|[0x80003608]<br>0xFFFFF7FFFFFFFFF8|- rs1_val == -8796093022209<br>                                                                                                                          |[0x80000b94]:addi a1, a0, 4089<br> [0x80000b98]:sd a1, 840(gp)<br>  |
| 126|[0x80003610]<br>0xFFFFF00000000000|- rs1_val == -17592186044417<br>                                                                                                                         |[0x80000ba8]:addi a1, a0, 1<br> [0x80000bac]:sd a1, 848(gp)<br>     |
| 127|[0x80003618]<br>0xFFFFE00000000000|- rs1_val == -35184372088833<br>                                                                                                                         |[0x80000bbc]:addi a1, a0, 1<br> [0x80000bc0]:sd a1, 856(gp)<br>     |
| 128|[0x80003620]<br>0xFFFFBFFFFFFFFFFE|- rs1_val == -70368744177665<br>                                                                                                                         |[0x80000bd0]:addi a1, a0, 4095<br> [0x80000bd4]:sd a1, 864(gp)<br>  |
| 129|[0x80003628]<br>0xFFFF8000000007FE|- rs1_val == -140737488355329<br>                                                                                                                        |[0x80000be4]:addi a1, a0, 2047<br> [0x80000be8]:sd a1, 872(gp)<br>  |
| 130|[0x80003630]<br>0xFFFF00000000003F|- rs1_val == -281474976710657<br>                                                                                                                        |[0x80000bf8]:addi a1, a0, 64<br> [0x80000bfc]:sd a1, 880(gp)<br>    |
| 131|[0x80003638]<br>0xFFFDFFFFFFFFFBFF|- rs1_val == -562949953421313<br>                                                                                                                        |[0x80000c0c]:addi a1, a0, 3072<br> [0x80000c10]:sd a1, 888(gp)<br>  |
| 132|[0x80003640]<br>0xFFFC0000000000FF|- rs1_val == -1125899906842625<br>                                                                                                                       |[0x80000c20]:addi a1, a0, 256<br> [0x80000c24]:sd a1, 896(gp)<br>   |
| 133|[0x80003648]<br>0x0000000000000600|- rs1_val == 1024<br>                                                                                                                                    |[0x80000c2c]:addi a1, a0, 512<br> [0x80000c30]:sd a1, 904(gp)<br>   |
