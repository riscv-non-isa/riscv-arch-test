
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c50')]      |
| SIG_REGION                | [('0x80003204', '0x80003660', '139 dwords')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 222     |
| Total Signature Updates   | 138      |
| Total Coverpoints Covered | 222      |
| STAT1                     | 137      |
| STAT2                     | 1      |
| STAT3                     | 75     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c28]:slli a1, a0, 6
      [0x80000c2c]:sd a1, 912(sp)
 -- Signature Address: 0x80003650 Data: 0x0000000000000180
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == imm_val and imm_val > 0 and imm_val < xlen






```

## Details of STAT3

```
[0x8000039c]:slli s10, s10, 31
[0x800003a0]:addi s10, s10, 4095

[0x800003b0]:slli gp, gp, 42

[0x800003dc]:slli a5, a5, 44
[0x800003e0]:addi a5, a5, 4095

[0x800003f0]:slli s1, s1, 36

[0x8000040c]:slli a1, a1, 63

[0x80000428]:slli a2, a2, 63
[0x8000042c]:addi a2, a2, 4095

[0x80000448]:slli t4, t4, 45
[0x8000044c]:addi t4, t4, 4095

[0x8000045c]:slli t3, t3, 42

[0x80000478]:slli t2, t2, 44
[0x8000047c]:addi t2, t2, 4095

[0x80000498]:slli zero, zero, 40
[0x8000049c]:addi zero, zero, 4095

[0x800004ac]:slli sp, sp, 39
[0x800004b0]:addi sp, sp, 4095

[0x800004c0]:slli a4, a4, 35

[0x800004e0]:slli s8, s8, 41
[0x800004e4]:addi s8, s8, 4095

[0x800004f4]:slli s9, s9, 58
[0x800004f8]:addi s9, s9, 4095

[0x80000670]:slli a0, a0, 31

[0x80000680]:slli a0, a0, 32

[0x80000690]:slli a0, a0, 33

[0x800006a0]:slli a0, a0, 34

[0x800006b0]:slli a0, a0, 37

[0x800006c0]:slli a0, a0, 38

[0x800006d0]:slli a0, a0, 39

[0x800006e0]:slli a0, a0, 40

[0x800006f0]:slli a0, a0, 41

[0x80000700]:slli a0, a0, 43

[0x80000710]:slli a0, a0, 44

[0x80000720]:slli a0, a0, 45

[0x80000730]:slli a0, a0, 46

[0x80000740]:slli a0, a0, 47

[0x80000750]:slli a0, a0, 48

[0x80000760]:slli a0, a0, 49

[0x80000770]:slli a0, a0, 50

[0x80000780]:slli a0, a0, 51

[0x80000790]:slli a0, a0, 52

[0x800007a0]:slli a0, a0, 53

[0x800007b0]:slli a0, a0, 54

[0x800007c0]:slli a0, a0, 55

[0x800007d0]:slli a0, a0, 42
[0x800007d4]:addi a0, a0, 4095

[0x800007e4]:slli a0, a0, 43
[0x800007e8]:addi a0, a0, 4095

[0x800007f8]:slli a0, a0, 46
[0x800007fc]:addi a0, a0, 4095

[0x8000080c]:slli a0, a0, 47
[0x80000810]:addi a0, a0, 4095

[0x80000820]:slli a0, a0, 48
[0x80000824]:addi a0, a0, 4095

[0x80000834]:slli a0, a0, 49
[0x80000838]:addi a0, a0, 4095

[0x80000848]:slli a0, a0, 50
[0x8000084c]:addi a0, a0, 4095

[0x8000085c]:slli a0, a0, 51
[0x80000860]:addi a0, a0, 4095

[0x80000870]:slli a0, a0, 52
[0x80000874]:addi a0, a0, 4095

[0x80000884]:slli a0, a0, 53
[0x80000888]:addi a0, a0, 4095

[0x80000898]:slli a0, a0, 54
[0x8000089c]:addi a0, a0, 4095

[0x800008ac]:slli a0, a0, 55
[0x800008b0]:addi a0, a0, 4095

[0x800008c0]:slli a0, a0, 56
[0x800008c4]:addi a0, a0, 4095

[0x800008d4]:slli a0, a0, 57
[0x800008d8]:addi a0, a0, 4095

[0x800008e8]:slli a0, a0, 59
[0x800008ec]:addi a0, a0, 4095

[0x800008fc]:slli a0, a0, 60
[0x80000900]:addi a0, a0, 4095

[0x80000910]:slli a0, a0, 61
[0x80000914]:addi a0, a0, 4095

[0x80000924]:slli a0, a0, 62
[0x80000928]:addi a0, a0, 4095

[0x8000093c]:slli a0, a0, 12
[0x80000940]:addi a0, a0, 1365

[0x80000944]:slli a0, a0, 12
[0x80000948]:addi a0, a0, 1365

[0x8000094c]:slli a0, a0, 12
[0x80000950]:addi a0, a0, 1365

[0x80000964]:slli a0, a0, 12
[0x80000968]:addi a0, a0, 2731

[0x8000096c]:slli a0, a0, 12
[0x80000970]:addi a0, a0, 2731

[0x80000974]:slli a0, a0, 12
[0x80000978]:addi a0, a0, 2730

[0x80000988]:slli a0, a0, 56

[0x80000998]:slli a0, a0, 57

[0x800009a8]:slli a0, a0, 58

[0x800009b8]:slli a0, a0, 59

[0x800009c8]:slli a0, a0, 60

[0x800009d8]:slli a0, a0, 61

[0x800009e8]:slli a0, a0, 62

[0x80000b9c]:slli a0, a0, 32
[0x80000ba0]:addi a0, a0, 4095

[0x80000bb0]:slli a0, a0, 33
[0x80000bb4]:addi a0, a0, 4095

[0x80000bc4]:slli a0, a0, 34
[0x80000bc8]:addi a0, a0, 4095

[0x80000bd8]:slli a0, a0, 35
[0x80000bdc]:addi a0, a0, 4095

[0x80000bec]:slli a0, a0, 36
[0x80000bf0]:addi a0, a0, 4095

[0x80000c00]:slli a0, a0, 37
[0x80000c04]:addi a0, a0, 4095

[0x80000c14]:slli a0, a0, 38
[0x80000c18]:addi a0, a0, 4095

[0x80000c34]:slli a0, a0, 40
[0x80000c38]:addi a0, a0, 4095



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

|s.no|            signature             |                                                                 coverpoints                                                                 |                               code                                |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFBFFFFFFF800|- rs1_val == -2147483649<br>                                                                                                                 |[0x800003a4]:slli s10, s10, 11<br> [0x800003a8]:sd s10, 0(tp)<br>  |
|   2|[0x80003218]<br>0x0000400000000000|- rd : x7<br> - rs1 != rd<br> - rs1_val == 4398046511104<br> - imm_val == 4<br>                                                              |[0x800003b4]:slli t2, gp, 4<br> [0x800003b8]:sd t2, 8(tp)<br>      |
|   3|[0x80003220]<br>0xFFFFFFFFFEFFFFFF|- rs1 : x31<br> - rd : x5<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -16777217<br>                                                  |[0x800003c4]:slli t0, t6, 0<br> [0x800003c8]:sd t0, 16(tp)<br>     |
|   4|[0x80003228]<br>0x0000000000000003|- rs1 : x10<br> - rd : x9<br> - rs1_val > 0 and imm_val == 0<br>                                                                             |[0x800003d0]:slli s1, a0, 0<br> [0x800003d4]:sd s1, 24(tp)<br>     |
|   5|[0x80003230]<br>0x8000000000000000|- rd : x8<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -17592186044417<br>                                                     |[0x800003e4]:slli fp, a5, 63<br> [0x800003e8]:sd fp, 32(tp)<br>    |
|   6|[0x80003238]<br>0x0000000000000000|- rd : x11<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 68719476736<br>                                                        |[0x800003f4]:slli a1, s1, 63<br> [0x800003f8]:sd a1, 40(tp)<br>    |
|   7|[0x80003240]<br>0x0000000000000000|- rs1 : x1<br> - rd : x0<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br>                                                     |[0x80000400]:slli zero, ra, 6<br> [0x80000404]:sd zero, 48(tp)<br> |
|   8|[0x80003248]<br>0x0000000000000000|- rd : x19<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br> - imm_val == 59<br> |[0x80000410]:slli s3, a1, 59<br> [0x80000414]:sd s3, 56(tp)<br>    |
|   9|[0x80003250]<br>0x0000000000000000|- rs1 : x22<br> - rd : x24<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - imm_val == 16<br>                                    |[0x8000041c]:slli s8, s6, 16<br> [0x80000420]:sd s8, 64(tp)<br>    |
|  10|[0x80003258]<br>0xFFFFFFFFFFF80000|- rd : x31<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                     |[0x80000430]:slli t6, a2, 19<br> [0x80000434]:sd t6, 72(tp)<br>    |
|  11|[0x80003260]<br>0x0000000000000400|- rs1 : x16<br> - rd : x2<br>                                                                                                                |[0x8000043c]:slli sp, a6, 10<br> [0x80000440]:sd sp, 80(tp)<br>    |
|  12|[0x80003268]<br>0xFFFFBFFFFFFFFFFE|- rd : x20<br> - rs1_val == -35184372088833<br> - imm_val == 1<br>                                                                           |[0x80000450]:slli s4, t4, 1<br> [0x80000454]:sd s4, 88(tp)<br>     |
|  13|[0x80003270]<br>0x0000100000000000|- imm_val == 2<br>                                                                                                                           |[0x80000460]:slli a2, t3, 2<br> [0x80000464]:sd a2, 96(tp)<br>     |
|  14|[0x80003278]<br>0xFFFFFFFFFFFFFF00|- rs1 : x8<br> - rd : x6<br> - imm_val == 8<br>                                                                                              |[0x8000046c]:slli t1, fp, 8<br> [0x80000470]:sd t1, 104(tp)<br>    |
|  15|[0x80003280]<br>0xFFFFFFFF00000000|- rd : x30<br> - imm_val == 32<br>                                                                                                           |[0x80000480]:slli t5, t2, 32<br> [0x80000484]:sd t5, 112(tp)<br>   |
|  16|[0x80003288]<br>0x0000000000000000|- rs1 : x23<br> - rd : x18<br> - rs1_val == 67108864<br> - imm_val == 62<br>                                                                 |[0x8000048c]:slli s2, s7, 62<br> [0x80000490]:sd s2, 120(tp)<br>   |
|  17|[0x80003290]<br>0x0000000000000000|- rd : x10<br> - imm_val == 61<br>                                                                                                           |[0x800004a0]:slli a0, zero, 61<br> [0x800004a4]:sd a0, 128(tp)<br> |
|  18|[0x80003298]<br>0xFF80000000000000|- rd : x23<br> - rs1_val == -549755813889<br> - imm_val == 55<br>                                                                            |[0x800004b4]:slli s7, sp, 55<br> [0x800004b8]:sd s7, 136(tp)<br>   |
|  19|[0x800032a0]<br>0x0000000000000000|- rs1_val == 34359738368<br> - imm_val == 47<br>                                                                                             |[0x800004c4]:slli t4, a4, 47<br> [0x800004c8]:sd t4, 144(tp)<br>   |
|  20|[0x800032a8]<br>0xFFFFDFFF80000000|- rs1 : x13<br> - rs1_val == -16385<br>                                                                                                      |[0x800004d4]:slli gp, a3, 31<br> [0x800004d8]:sd gp, 152(tp)<br>   |
|  21|[0x800032b0]<br>0xBFFFFFFFFFE00000|- rd : x21<br> - rs1_val == -2199023255553<br> - imm_val == 21<br>                                                                           |[0x800004e8]:slli s5, s8, 21<br> [0x800004ec]:sd s5, 160(tp)<br>   |
|  22|[0x800032b8]<br>0xFFFFFC0000000000|- rd : x16<br> - rs1_val == -288230376151711745<br>                                                                                          |[0x800004fc]:slli a6, s9, 42<br> [0x80000500]:sd a6, 168(tp)<br>   |
|  23|[0x800032c0]<br>0x0000000000000200|- rs1 : x19<br> - rs1_val == 2<br>                                                                                                           |[0x80000510]:slli a5, s3, 8<br> [0x80000514]:sd a5, 0(sp)<br>      |
|  24|[0x800032c8]<br>0x0000000000000080|- rs1 : x6<br> - rs1_val == 4<br>                                                                                                            |[0x8000051c]:slli a4, t1, 5<br> [0x80000520]:sd a4, 8(sp)<br>      |
|  25|[0x800032d0]<br>0x0000000000000100|- rs1 : x21<br> - rs1_val == 8<br>                                                                                                           |[0x80000528]:slli t3, s5, 5<br> [0x8000052c]:sd t3, 16(sp)<br>     |
|  26|[0x800032d8]<br>0x0000000000002000|- rs1 : x4<br> - rd : x13<br> - rs1_val == 16<br>                                                                                            |[0x80000534]:slli a3, tp, 9<br> [0x80000538]:sd a3, 24(sp)<br>     |
|  27|[0x800032e0]<br>0x0000000001000000|- rs1 : x27<br> - rd : x17<br> - rs1_val == 32<br>                                                                                           |[0x80000540]:slli a7, s11, 19<br> [0x80000544]:sd a7, 32(sp)<br>   |
|  28|[0x800032e8]<br>0x0000000000004000|- rs1 : x18<br> - rs1_val == 64<br>                                                                                                          |[0x8000054c]:slli s9, s2, 8<br> [0x80000550]:sd s9, 40(sp)<br>     |
|  29|[0x800032f0]<br>0x0000000000000200|- rs1 : x30<br> - rd : x22<br> - rs1_val == 128<br>                                                                                          |[0x80000558]:slli s6, t5, 2<br> [0x8000055c]:sd s6, 48(sp)<br>     |
|  30|[0x800032f8]<br>0x0000000000000800|- rs1 : x5<br> - rd : x1<br> - rs1_val == 256<br>                                                                                            |[0x80000564]:slli ra, t0, 3<br> [0x80000568]:sd ra, 56(sp)<br>     |
|  31|[0x80003300]<br>0x0000000000000000|- rs1 : x20<br> - rd : x4<br> - rs1_val == 512<br>                                                                                           |[0x80000570]:slli tp, s4, 62<br> [0x80000574]:sd tp, 64(sp)<br>    |
|  32|[0x80003308]<br>0x0000000000000000|- rs1 : x17<br> - rd : x27<br> - rs1_val == 1024<br>                                                                                         |[0x8000057c]:slli s11, a7, 55<br> [0x80000580]:sd s11, 72(sp)<br>  |
|  33|[0x80003310]<br>0x0000080000000000|- rs1_val == 2048<br>                                                                                                                        |[0x8000058c]:slli a1, a0, 32<br> [0x80000590]:sd a1, 80(sp)<br>    |
|  34|[0x80003318]<br>0x0000000000080000|- rs1_val == 4096<br>                                                                                                                        |[0x80000598]:slli a1, a0, 7<br> [0x8000059c]:sd a1, 88(sp)<br>     |
|  35|[0x80003320]<br>0x0000000000080000|- rs1_val == 8192<br>                                                                                                                        |[0x800005a4]:slli a1, a0, 6<br> [0x800005a8]:sd a1, 96(sp)<br>     |
|  36|[0x80003328]<br>0x0000000020000000|- rs1_val == 16384<br>                                                                                                                       |[0x800005b0]:slli a1, a0, 15<br> [0x800005b4]:sd a1, 104(sp)<br>   |
|  37|[0x80003330]<br>0x0000000000000000|- rs1_val == 32768<br>                                                                                                                       |[0x800005bc]:slli a1, a0, 62<br> [0x800005c0]:sd a1, 112(sp)<br>   |
|  38|[0x80003338]<br>0x0000000004000000|- rs1_val == 65536<br>                                                                                                                       |[0x800005c8]:slli a1, a0, 10<br> [0x800005cc]:sd a1, 120(sp)<br>   |
|  39|[0x80003340]<br>0x0000000000100000|- rs1_val == 131072<br>                                                                                                                      |[0x800005d4]:slli a1, a0, 3<br> [0x800005d8]:sd a1, 128(sp)<br>    |
|  40|[0x80003348]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                                      |[0x800005e0]:slli a1, a0, 63<br> [0x800005e4]:sd a1, 136(sp)<br>   |
|  41|[0x80003350]<br>0x0000000800000000|- rs1_val == 524288<br>                                                                                                                      |[0x800005ec]:slli a1, a0, 16<br> [0x800005f0]:sd a1, 144(sp)<br>   |
|  42|[0x80003358]<br>0x0000000080000000|- rs1_val == 1048576<br>                                                                                                                     |[0x800005f8]:slli a1, a0, 11<br> [0x800005fc]:sd a1, 152(sp)<br>   |
|  43|[0x80003360]<br>0x0000004000000000|- rs1_val == 2097152<br>                                                                                                                     |[0x80000604]:slli a1, a0, 17<br> [0x80000608]:sd a1, 160(sp)<br>   |
|  44|[0x80003368]<br>0x0000000200000000|- rs1_val == 4194304<br>                                                                                                                     |[0x80000610]:slli a1, a0, 11<br> [0x80000614]:sd a1, 168(sp)<br>   |
|  45|[0x80003370]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                                                     |[0x8000061c]:slli a1, a0, 47<br> [0x80000620]:sd a1, 176(sp)<br>   |
|  46|[0x80003378]<br>0x0000040000000000|- rs1_val == 16777216<br>                                                                                                                    |[0x80000628]:slli a1, a0, 18<br> [0x8000062c]:sd a1, 184(sp)<br>   |
|  47|[0x80003380]<br>0x0000100000000000|- rs1_val == 33554432<br>                                                                                                                    |[0x80000634]:slli a1, a0, 19<br> [0x80000638]:sd a1, 192(sp)<br>   |
|  48|[0x80003388]<br>0x0001000000000000|- rs1_val == 134217728<br>                                                                                                                   |[0x80000640]:slli a1, a0, 21<br> [0x80000644]:sd a1, 200(sp)<br>   |
|  49|[0x80003390]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                   |[0x8000064c]:slli a1, a0, 61<br> [0x80000650]:sd a1, 208(sp)<br>   |
|  50|[0x80003398]<br>0x0000400000000000|- rs1_val == 536870912<br>                                                                                                                   |[0x80000658]:slli a1, a0, 17<br> [0x8000065c]:sd a1, 216(sp)<br>   |
|  51|[0x800033a0]<br>0x0000000100000000|- rs1_val == 1073741824<br>                                                                                                                  |[0x80000664]:slli a1, a0, 2<br> [0x80000668]:sd a1, 224(sp)<br>    |
|  52|[0x800033a8]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                  |[0x80000674]:slli a1, a0, 62<br> [0x80000678]:sd a1, 232(sp)<br>   |
|  53|[0x800033b0]<br>0x0000001000000000|- rs1_val == 4294967296<br>                                                                                                                  |[0x80000684]:slli a1, a0, 4<br> [0x80000688]:sd a1, 240(sp)<br>    |
|  54|[0x800033b8]<br>0x0000080000000000|- rs1_val == 8589934592<br>                                                                                                                  |[0x80000694]:slli a1, a0, 10<br> [0x80000698]:sd a1, 248(sp)<br>   |
|  55|[0x800033c0]<br>0x0000004000000000|- rs1_val == 17179869184<br>                                                                                                                 |[0x800006a4]:slli a1, a0, 4<br> [0x800006a8]:sd a1, 256(sp)<br>    |
|  56|[0x800033c8]<br>0x0000010000000000|- rs1_val == 137438953472<br>                                                                                                                |[0x800006b4]:slli a1, a0, 3<br> [0x800006b8]:sd a1, 264(sp)<br>    |
|  57|[0x800033d0]<br>0x0000020000000000|- rs1_val == 274877906944<br>                                                                                                                |[0x800006c4]:slli a1, a0, 3<br> [0x800006c8]:sd a1, 272(sp)<br>    |
|  58|[0x800033d8]<br>0x0000800000000000|- rs1_val == 549755813888<br>                                                                                                                |[0x800006d4]:slli a1, a0, 8<br> [0x800006d8]:sd a1, 280(sp)<br>    |
|  59|[0x800033e0]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                               |[0x800006e4]:slli a1, a0, 47<br> [0x800006e8]:sd a1, 288(sp)<br>   |
|  60|[0x800033e8]<br>0x0000100000000000|- rs1_val == 2199023255552<br>                                                                                                               |[0x800006f4]:slli a1, a0, 3<br> [0x800006f8]:sd a1, 296(sp)<br>    |
|  61|[0x800033f0]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                               |[0x80000704]:slli a1, a0, 42<br> [0x80000708]:sd a1, 304(sp)<br>   |
|  62|[0x800033f8]<br>0x0080000000000000|- rs1_val == 17592186044416<br>                                                                                                              |[0x80000714]:slli a1, a0, 11<br> [0x80000718]:sd a1, 312(sp)<br>   |
|  63|[0x80003400]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                              |[0x80000724]:slli a1, a0, 47<br> [0x80000728]:sd a1, 320(sp)<br>   |
|  64|[0x80003408]<br>0x0004000000000000|- rs1_val == 70368744177664<br>                                                                                                              |[0x80000734]:slli a1, a0, 4<br> [0x80000738]:sd a1, 328(sp)<br>    |
|  65|[0x80003410]<br>0x2000000000000000|- rs1_val == 140737488355328<br>                                                                                                             |[0x80000744]:slli a1, a0, 14<br> [0x80000748]:sd a1, 336(sp)<br>   |
|  66|[0x80003418]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                             |[0x80000754]:slli a1, a0, 42<br> [0x80000758]:sd a1, 344(sp)<br>   |
|  67|[0x80003420]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                             |[0x80000764]:slli a1, a0, 16<br> [0x80000768]:sd a1, 352(sp)<br>   |
|  68|[0x80003428]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                            |[0x80000774]:slli a1, a0, 19<br> [0x80000778]:sd a1, 360(sp)<br>   |
|  69|[0x80003430]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                            |[0x80000784]:slli a1, a0, 42<br> [0x80000788]:sd a1, 368(sp)<br>   |
|  70|[0x80003438]<br>0x0400000000000000|- rs1_val == 4503599627370496<br>                                                                                                            |[0x80000794]:slli a1, a0, 6<br> [0x80000798]:sd a1, 376(sp)<br>    |
|  71|[0x80003440]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                            |[0x800007a4]:slli a1, a0, 63<br> [0x800007a8]:sd a1, 384(sp)<br>   |
|  72|[0x80003448]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                           |[0x800007b4]:slli a1, a0, 14<br> [0x800007b8]:sd a1, 392(sp)<br>   |
|  73|[0x80003450]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                           |[0x800007c4]:slli a1, a0, 55<br> [0x800007c8]:sd a1, 400(sp)<br>   |
|  74|[0x80003458]<br>0xFFFFF7FFFFFFFFFE|- rs1_val == -4398046511105<br>                                                                                                              |[0x800007d8]:slli a1, a0, 1<br> [0x800007dc]:sd a1, 408(sp)<br>    |
|  75|[0x80003460]<br>0xFDFFFFFFFFFFC000|- rs1_val == -8796093022209<br>                                                                                                              |[0x800007ec]:slli a1, a0, 14<br> [0x800007f0]:sd a1, 416(sp)<br>   |
|  76|[0x80003468]<br>0xFFFF7FFFFFFFFFFE|- rs1_val == -70368744177665<br>                                                                                                             |[0x80000800]:slli a1, a0, 1<br> [0x80000804]:sd a1, 424(sp)<br>    |
|  77|[0x80003470]<br>0xDFFFFFFFFFFFC000|- rs1_val == -140737488355329<br>                                                                                                            |[0x80000814]:slli a1, a0, 14<br> [0x80000818]:sd a1, 432(sp)<br>   |
|  78|[0x80003478]<br>0xFFFFFFFFFFFF0000|- rs1_val == -281474976710657<br>                                                                                                            |[0x80000828]:slli a1, a0, 16<br> [0x8000082c]:sd a1, 440(sp)<br>   |
|  79|[0x80003480]<br>0xF800000000000000|- rs1_val == -562949953421313<br>                                                                                                            |[0x8000083c]:slli a1, a0, 59<br> [0x80000840]:sd a1, 448(sp)<br>   |
|  80|[0x80003488]<br>0xFDFFFFFFFFFFFF80|- rs1_val == -1125899906842625<br>                                                                                                           |[0x80000850]:slli a1, a0, 7<br> [0x80000854]:sd a1, 456(sp)<br>    |
|  81|[0x80003490]<br>0xFFFFFFFFFFF80000|- rs1_val == -2251799813685249<br>                                                                                                           |[0x80000864]:slli a1, a0, 19<br> [0x80000868]:sd a1, 464(sp)<br>   |
|  82|[0x80003498]<br>0xFFFFFC0000000000|- rs1_val == -4503599627370497<br>                                                                                                           |[0x80000878]:slli a1, a0, 42<br> [0x8000087c]:sd a1, 472(sp)<br>   |
|  83|[0x800034a0]<br>0xFFFFFFFFFFF80000|- rs1_val == -9007199254740993<br>                                                                                                           |[0x8000088c]:slli a1, a0, 19<br> [0x80000890]:sd a1, 480(sp)<br>   |
|  84|[0x800034a8]<br>0xFFFFFFFFFFE00000|- rs1_val == -18014398509481985<br>                                                                                                          |[0x800008a0]:slli a1, a0, 21<br> [0x800008a4]:sd a1, 488(sp)<br>   |
|  85|[0x800034b0]<br>0xFEFFFFFFFFFFFFFE|- rs1_val == -36028797018963969<br>                                                                                                          |[0x800008b4]:slli a1, a0, 1<br> [0x800008b8]:sd a1, 496(sp)<br>    |
|  86|[0x800034b8]<br>0x8000000000000000|- rs1_val == -72057594037927937<br>                                                                                                          |[0x800008c8]:slli a1, a0, 63<br> [0x800008cc]:sd a1, 504(sp)<br>   |
|  87|[0x800034c0]<br>0xC000000000000000|- rs1_val == -144115188075855873<br>                                                                                                         |[0x800008dc]:slli a1, a0, 62<br> [0x800008e0]:sd a1, 512(sp)<br>   |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFE0000|- rs1_val == -576460752303423489<br>                                                                                                         |[0x800008f0]:slli a1, a0, 17<br> [0x800008f4]:sd a1, 520(sp)<br>   |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -1152921504606846977<br>                                                                                                        |[0x80000904]:slli a1, a0, 8<br> [0x80000908]:sd a1, 528(sp)<br>    |
|  90|[0x800034d8]<br>0xFFFFFFFFFFFF0000|- rs1_val == -2305843009213693953<br>                                                                                                        |[0x80000918]:slli a1, a0, 16<br> [0x8000091c]:sd a1, 536(sp)<br>   |
|  91|[0x800034e0]<br>0xF800000000000000|- rs1_val == -4611686018427387905<br>                                                                                                        |[0x8000092c]:slli a1, a0, 59<br> [0x80000930]:sd a1, 544(sp)<br>   |
|  92|[0x800034e8]<br>0xAAAAAAAAAAAA0000|- rs1_val == 6148914691236517205<br>                                                                                                         |[0x80000954]:slli a1, a0, 17<br> [0x80000958]:sd a1, 552(sp)<br>   |
|  93|[0x800034f0]<br>0xAAAAAAAAAAAAAAA0|- rs1_val == -6148914691236517206<br>                                                                                                        |[0x8000097c]:slli a1, a0, 4<br> [0x80000980]:sd a1, 560(sp)<br>    |
|  94|[0x800034f8]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                           |[0x8000098c]:slli a1, a0, 62<br> [0x80000990]:sd a1, 568(sp)<br>   |
|  95|[0x80003500]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                          |[0x8000099c]:slli a1, a0, 62<br> [0x800009a0]:sd a1, 576(sp)<br>   |
|  96|[0x80003508]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                          |[0x800009ac]:slli a1, a0, 10<br> [0x800009b0]:sd a1, 584(sp)<br>   |
|  97|[0x80003510]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                          |[0x800009bc]:slli a1, a0, 32<br> [0x800009c0]:sd a1, 592(sp)<br>   |
|  98|[0x80003518]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                         |[0x800009cc]:slli a1, a0, 47<br> [0x800009d0]:sd a1, 600(sp)<br>   |
|  99|[0x80003520]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                         |[0x800009dc]:slli a1, a0, 42<br> [0x800009e0]:sd a1, 608(sp)<br>   |
| 100|[0x80003528]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                         |[0x800009ec]:slli a1, a0, 9<br> [0x800009f0]:sd a1, 616(sp)<br>    |
| 101|[0x80003530]<br>0xFFFFFFFFFFFE0000|- rs1_val == -2<br>                                                                                                                          |[0x800009f8]:slli a1, a0, 16<br> [0x800009fc]:sd a1, 624(sp)<br>   |
| 102|[0x80003538]<br>0xFFFFFFFFFFFD0000|- rs1_val == -3<br>                                                                                                                          |[0x80000a04]:slli a1, a0, 16<br> [0x80000a08]:sd a1, 632(sp)<br>   |
| 103|[0x80003540]<br>0xFFFFFFFD80000000|- rs1_val == -5<br>                                                                                                                          |[0x80000a10]:slli a1, a0, 31<br> [0x80000a14]:sd a1, 640(sp)<br>   |
| 104|[0x80003548]<br>0xFFFB800000000000|- rs1_val == -9<br>                                                                                                                          |[0x80000a1c]:slli a1, a0, 47<br> [0x80000a20]:sd a1, 648(sp)<br>   |
| 105|[0x80003550]<br>0xFFFFFFFFFFFFFFBC|- rs1_val == -17<br>                                                                                                                         |[0x80000a28]:slli a1, a0, 2<br> [0x80000a2c]:sd a1, 656(sp)<br>    |
| 106|[0x80003558]<br>0xFFFFFFFFFFFFEF80|- rs1_val == -33<br>                                                                                                                         |[0x80000a34]:slli a1, a0, 7<br> [0x80000a38]:sd a1, 664(sp)<br>    |
| 107|[0x80003560]<br>0xFFFFFFFFFEFC0000|- rs1_val == -65<br>                                                                                                                         |[0x80000a40]:slli a1, a0, 18<br> [0x80000a44]:sd a1, 672(sp)<br>   |
| 108|[0x80003568]<br>0xFFFFFFFFFFFFFEFE|- rs1_val == -129<br>                                                                                                                        |[0x80000a4c]:slli a1, a0, 1<br> [0x80000a50]:sd a1, 680(sp)<br>    |
| 109|[0x80003570]<br>0xFFFFFFFFF7F80000|- rs1_val == -257<br>                                                                                                                        |[0x80000a58]:slli a1, a0, 19<br> [0x80000a5c]:sd a1, 688(sp)<br>   |
| 110|[0x80003578]<br>0x8000000000000000|- rs1_val == -513<br>                                                                                                                        |[0x80000a64]:slli a1, a0, 63<br> [0x80000a68]:sd a1, 696(sp)<br>   |
| 111|[0x80003580]<br>0xFFFFFFFFFFFEFFC0|- rs1_val == -1025<br>                                                                                                                       |[0x80000a70]:slli a1, a0, 6<br> [0x80000a74]:sd a1, 704(sp)<br>    |
| 112|[0x80003588]<br>0xFFFFFFFFFDFFC000|- rs1_val == -2049<br>                                                                                                                       |[0x80000a80]:slli a1, a0, 14<br> [0x80000a84]:sd a1, 712(sp)<br>   |
| 113|[0x80003590]<br>0xFFFFFFFFFFF7FF80|- rs1_val == -4097<br>                                                                                                                       |[0x80000a90]:slli a1, a0, 7<br> [0x80000a94]:sd a1, 720(sp)<br>    |
| 114|[0x80003598]<br>0xE000000000000000|- rs1_val == -8193<br>                                                                                                                       |[0x80000aa0]:slli a1, a0, 61<br> [0x80000aa4]:sd a1, 728(sp)<br>   |
| 115|[0x800035a0]<br>0xFFFF7FFF00000000|- rs1_val == -32769<br>                                                                                                                      |[0x80000ab0]:slli a1, a0, 32<br> [0x80000ab4]:sd a1, 736(sp)<br>   |
| 116|[0x800035a8]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -65537<br>                                                                                                                      |[0x80000ac0]:slli a1, a0, 0<br> [0x80000ac4]:sd a1, 744(sp)<br>    |
| 117|[0x800035b0]<br>0xFFFDFFFF00000000|- rs1_val == -131073<br>                                                                                                                     |[0x80000ad0]:slli a1, a0, 32<br> [0x80000ad4]:sd a1, 752(sp)<br>   |
| 118|[0x800035b8]<br>0xFFFFFFFFFFBFFFF0|- rs1_val == -262145<br>                                                                                                                     |[0x80000ae0]:slli a1, a0, 4<br> [0x80000ae4]:sd a1, 760(sp)<br>    |
| 119|[0x800035c0]<br>0xC000000000000000|- rs1_val == -524289<br>                                                                                                                     |[0x80000af0]:slli a1, a0, 62<br> [0x80000af4]:sd a1, 768(sp)<br>   |
| 120|[0x800035c8]<br>0xFFFFFFFFFF7FFFF8|- rs1_val == -1048577<br>                                                                                                                    |[0x80000b00]:slli a1, a0, 3<br> [0x80000b04]:sd a1, 776(sp)<br>    |
| 121|[0x800035d0]<br>0xFFFFFFFFFF7FFFFC|- rs1_val == -2097153<br>                                                                                                                    |[0x80000b10]:slli a1, a0, 2<br> [0x80000b14]:sd a1, 784(sp)<br>    |
| 122|[0x800035d8]<br>0xFFFFFFFFF7FFFFE0|- rs1_val == -4194305<br>                                                                                                                    |[0x80000b20]:slli a1, a0, 5<br> [0x80000b24]:sd a1, 792(sp)<br>    |
| 123|[0x800035e0]<br>0xFFFFFDFFFFFC0000|- rs1_val == -8388609<br>                                                                                                                    |[0x80000b30]:slli a1, a0, 18<br> [0x80000b34]:sd a1, 800(sp)<br>   |
| 124|[0x800035e8]<br>0xFFFF800000000000|- rs1_val == -33554433<br>                                                                                                                   |[0x80000b40]:slli a1, a0, 47<br> [0x80000b44]:sd a1, 808(sp)<br>   |
| 125|[0x800035f0]<br>0xFFFFFFBFFFFFF000|- rs1_val == -67108865<br>                                                                                                                   |[0x80000b50]:slli a1, a0, 12<br> [0x80000b54]:sd a1, 816(sp)<br>   |
| 126|[0x800035f8]<br>0xFBFFFFFF80000000|- rs1_val == -134217729<br>                                                                                                                  |[0x80000b60]:slli a1, a0, 31<br> [0x80000b64]:sd a1, 824(sp)<br>   |
| 127|[0x80003600]<br>0xFFFFFFEFFFFFFF00|- rs1_val == -268435457<br>                                                                                                                  |[0x80000b70]:slli a1, a0, 8<br> [0x80000b74]:sd a1, 832(sp)<br>    |
| 128|[0x80003608]<br>0xFFFFEFFFFFFF8000|- rs1_val == -536870913<br>                                                                                                                  |[0x80000b80]:slli a1, a0, 15<br> [0x80000b84]:sd a1, 840(sp)<br>   |
| 129|[0x80003610]<br>0xFFFFFF7FFFFFFE00|- rs1_val == -1073741825<br>                                                                                                                 |[0x80000b90]:slli a1, a0, 9<br> [0x80000b94]:sd a1, 848(sp)<br>    |
| 130|[0x80003618]<br>0x8000000000000000|- rs1_val == -4294967297<br>                                                                                                                 |[0x80000ba4]:slli a1, a0, 63<br> [0x80000ba8]:sd a1, 856(sp)<br>   |
| 131|[0x80003620]<br>0xFFFFFDFFFFFFFF00|- rs1_val == -8589934593<br>                                                                                                                 |[0x80000bb8]:slli a1, a0, 8<br> [0x80000bbc]:sd a1, 864(sp)<br>    |
| 132|[0x80003628]<br>0xFFFFEFFFFFFFFC00|- rs1_val == -17179869185<br>                                                                                                                |[0x80000bcc]:slli a1, a0, 10<br> [0x80000bd0]:sd a1, 872(sp)<br>   |
| 133|[0x80003630]<br>0xFFFFFFDFFFFFFFFC|- rs1_val == -34359738369<br>                                                                                                                |[0x80000be0]:slli a1, a0, 2<br> [0x80000be4]:sd a1, 880(sp)<br>    |
| 134|[0x80003638]<br>0xFFFFF7FFFFFFFF80|- rs1_val == -68719476737<br>                                                                                                                |[0x80000bf4]:slli a1, a0, 7<br> [0x80000bf8]:sd a1, 888(sp)<br>    |
| 135|[0x80003640]<br>0xFFFFEFFFFFFFFF80|- rs1_val == -137438953473<br>                                                                                                               |[0x80000c08]:slli a1, a0, 7<br> [0x80000c0c]:sd a1, 896(sp)<br>    |
| 136|[0x80003648]<br>0xFFFFFFBFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                               |[0x80000c1c]:slli a1, a0, 0<br> [0x80000c20]:sd a1, 904(sp)<br>    |
| 137|[0x80003658]<br>0xE000000000000000|- rs1_val == -1099511627777<br>                                                                                                              |[0x80000c3c]:slli a1, a0, 61<br> [0x80000c40]:sd a1, 920(sp)<br>   |
