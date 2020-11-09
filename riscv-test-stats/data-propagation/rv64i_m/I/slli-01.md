
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
| SIG_REGION                | [('0x80003208', '0x80003668', '140 dwords')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 222     |
| Total Coverpoints Hit     | 222      |
| Total Signature Updates   | 140      |
| STAT1                     | 139      |
| STAT2                     | 1      |
| STAT3                     | 73     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c48]:slli a1, a0, 17
      [0x80000c4c]:sd a1, 936(ra)
 -- Signature Address: 0x80003660 Data: 0x0000000000100000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 8






```

## Details of STAT3

```
[0x800003b4]:slli s11, s11, 38
[0x800003b8]:addi s11, s11, 4095

[0x800003f8]:slli sp, sp, 63

[0x80000414]:slli zero, zero, 63
[0x80000418]:addi zero, zero, 4095

[0x80000428]:slli a6, a6, 50

[0x80000450]:slli t0, t0, 42
[0x80000454]:addi t0, t0, 4095

[0x80000464]:slli t6, t6, 31

[0x80000604]:slli a0, a0, 32

[0x80000614]:slli a0, a0, 33

[0x80000624]:slli a0, a0, 34

[0x80000634]:slli a0, a0, 35

[0x80000644]:slli a0, a0, 36

[0x80000654]:slli a0, a0, 37

[0x80000664]:slli a0, a0, 38

[0x80000674]:slli a0, a0, 39

[0x80000684]:slli a0, a0, 40

[0x80000694]:slli a0, a0, 41

[0x800006a4]:slli a0, a0, 42

[0x800006b4]:slli a0, a0, 43

[0x800006c4]:slli a0, a0, 44

[0x800006d4]:slli a0, a0, 45

[0x800006e4]:slli a0, a0, 46

[0x800006f4]:slli a0, a0, 47

[0x80000704]:slli a0, a0, 48

[0x80000714]:slli a0, a0, 49

[0x80000724]:slli a0, a0, 51

[0x80000734]:slli a0, a0, 52

[0x80000744]:slli a0, a0, 53

[0x80000754]:slli a0, a0, 54

[0x80000764]:slli a0, a0, 55

[0x80000774]:slli a0, a0, 56

[0x80000784]:slli a0, a0, 57

[0x80000794]:slli a0, a0, 58

[0x800007a4]:slli a0, a0, 59

[0x800007b4]:slli a0, a0, 60

[0x800007c4]:slli a0, a0, 39
[0x800007c8]:addi a0, a0, 4095

[0x800007d8]:slli a0, a0, 40
[0x800007dc]:addi a0, a0, 4095

[0x800007ec]:slli a0, a0, 41
[0x800007f0]:addi a0, a0, 4095

[0x80000800]:slli a0, a0, 43
[0x80000804]:addi a0, a0, 4095

[0x80000814]:slli a0, a0, 44
[0x80000818]:addi a0, a0, 4095

[0x80000828]:slli a0, a0, 45
[0x8000082c]:addi a0, a0, 4095

[0x8000083c]:slli a0, a0, 46
[0x80000840]:addi a0, a0, 4095

[0x80000850]:slli a0, a0, 47
[0x80000854]:addi a0, a0, 4095

[0x80000864]:slli a0, a0, 48
[0x80000868]:addi a0, a0, 4095

[0x80000878]:slli a0, a0, 49
[0x8000087c]:addi a0, a0, 4095

[0x8000088c]:slli a0, a0, 50
[0x80000890]:addi a0, a0, 4095

[0x800008a0]:slli a0, a0, 51
[0x800008a4]:addi a0, a0, 4095

[0x800008b4]:slli a0, a0, 52
[0x800008b8]:addi a0, a0, 4095

[0x800008c8]:slli a0, a0, 53
[0x800008cc]:addi a0, a0, 4095

[0x800008dc]:slli a0, a0, 54
[0x800008e0]:addi a0, a0, 4095

[0x800008f0]:slli a0, a0, 55
[0x800008f4]:addi a0, a0, 4095

[0x80000904]:slli a0, a0, 56
[0x80000908]:addi a0, a0, 4095

[0x80000918]:slli a0, a0, 57
[0x8000091c]:addi a0, a0, 4095

[0x8000092c]:slli a0, a0, 58
[0x80000930]:addi a0, a0, 4095

[0x80000940]:slli a0, a0, 59
[0x80000944]:addi a0, a0, 4095

[0x80000954]:slli a0, a0, 60
[0x80000958]:addi a0, a0, 4095

[0x80000968]:slli a0, a0, 61
[0x8000096c]:addi a0, a0, 4095

[0x8000097c]:slli a0, a0, 62
[0x80000980]:addi a0, a0, 4095

[0x80000994]:slli a0, a0, 12
[0x80000998]:addi a0, a0, 1365

[0x8000099c]:slli a0, a0, 12
[0x800009a0]:addi a0, a0, 1365

[0x800009a4]:slli a0, a0, 12
[0x800009a8]:addi a0, a0, 1365

[0x800009bc]:slli a0, a0, 12
[0x800009c0]:addi a0, a0, 2731

[0x800009c4]:slli a0, a0, 12
[0x800009c8]:addi a0, a0, 2731

[0x800009cc]:slli a0, a0, 12
[0x800009d0]:addi a0, a0, 2730

[0x800009e0]:slli a0, a0, 61

[0x800009f0]:slli a0, a0, 62

[0x80000ba8]:slli a0, a0, 31
[0x80000bac]:addi a0, a0, 4095

[0x80000bbc]:slli a0, a0, 32
[0x80000bc0]:addi a0, a0, 4095

[0x80000bd0]:slli a0, a0, 33
[0x80000bd4]:addi a0, a0, 4095

[0x80000be4]:slli a0, a0, 34
[0x80000be8]:addi a0, a0, 4095

[0x80000bf8]:slli a0, a0, 35
[0x80000bfc]:addi a0, a0, 4095

[0x80000c0c]:slli a0, a0, 36
[0x80000c10]:addi a0, a0, 4095

[0x80000c20]:slli a0, a0, 37
[0x80000c24]:addi a0, a0, 4095

[0x80000c34]:slli a0, a0, 63
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

|s.no|            signature             |                                                                                           coverpoints                                                                                            |                               code                                |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFEC0000000000|- opcode : slli<br> - rs1 : x24<br> - rd : x24<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -5<br> - imm_val == 42<br>                                   |[0x8000039c]:slli s8, s8, 42<br> [0x800003a0]:sd s8, 0(t1)<br>     |
|   2|[0x80003210]<br>0x0800000000000000|- rs1 : x23<br> - rd : x28<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 59<br> |[0x800003a8]:slli t3, s7, 59<br> [0x800003ac]:sd t3, 8(t1)<br>     |
|   3|[0x80003218]<br>0xFFFFFFBFFFFFFFFF|- rd : x31<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -274877906945<br>                                                                                                                  |[0x800003bc]:slli t6, s11, 0<br> [0x800003c0]:sd t6, 16(t1)<br>    |
|   4|[0x80003220]<br>0x0000000000010000|- rs1 : x14<br> - rd : x3<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 65536<br>                                                                                                           |[0x800003c8]:slli gp, a4, 0<br> [0x800003cc]:sd gp, 24(t1)<br>     |
|   5|[0x80003228]<br>0x0000000000000000|- rs1 : x30<br> - rs1_val < 0 and imm_val == (xlen-1)<br>                                                                                                                                         |[0x800003d4]:slli s11, t5, 63<br> [0x800003d8]:sd s11, 32(t1)<br>  |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x10<br> - rd : x1<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 536870912<br>                                                                                                |[0x800003e0]:slli ra, a0, 63<br> [0x800003e4]:sd ra, 40(t1)<br>    |
|   7|[0x80003238]<br>0x0000002000000000|- rs1 : x20<br> - rd : x9<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 32<br> - imm_val == 32<br>                                                                 |[0x800003ec]:slli s1, s4, 32<br> [0x800003f0]:sd s1, 48(t1)<br>    |
|   8|[0x80003240]<br>0x0000000000000000|- rd : x11<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>                                                                          |[0x800003fc]:slli a1, sp, 18<br> [0x80000400]:sd a1, 56(t1)<br>    |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x3<br> - rd : x14<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                                                              |[0x80000408]:slli a4, gp, 7<br> [0x8000040c]:sd a4, 64(t1)<br>     |
|  10|[0x80003250]<br>0x0000000000000000|- rd : x8<br> - imm_val == 62<br>                                                                                                                                                                 |[0x8000041c]:slli fp, zero, 62<br> [0x80000420]:sd fp, 72(t1)<br>  |
|  11|[0x80003258]<br>0x0008000000000000|- rd : x19<br> - rs1_val == 1125899906842624<br> - imm_val == 1<br>                                                                                                                               |[0x8000042c]:slli s3, a6, 1<br> [0x80000430]:sd s3, 80(t1)<br>     |
|  12|[0x80003260]<br>0x0000000000000080|- rs1 : x4<br> - rd : x25<br> - imm_val == 2<br>                                                                                                                                                  |[0x80000438]:slli s9, tp, 2<br> [0x8000043c]:sd s9, 88(t1)<br>     |
|  13|[0x80003268]<br>0x0000000000000000|- rs1 : x8<br> - rd : x15<br> - imm_val == 4<br>                                                                                                                                                  |[0x80000444]:slli a5, fp, 4<br> [0x80000448]:sd a5, 96(t1)<br>     |
|  14|[0x80003270]<br>0xFFFBFFFFFFFFFF00|- rd : x29<br> - rs1_val == -4398046511105<br> - imm_val == 8<br>                                                                                                                                 |[0x80000458]:slli t4, t0, 8<br> [0x8000045c]:sd t4, 104(t1)<br>    |
|  15|[0x80003278]<br>0x0000800000000000|- rd : x10<br> - rs1_val == 2147483648<br> - imm_val == 16<br>                                                                                                                                    |[0x80000468]:slli a0, t6, 16<br> [0x8000046c]:sd a0, 112(t1)<br>   |
|  16|[0x80003280]<br>0xC000000000000000|- rs1 : x12<br> - rd : x18<br> - imm_val == 61<br>                                                                                                                                                |[0x80000474]:slli s2, a2, 61<br> [0x80000478]:sd s2, 120(t1)<br>   |
|  17|[0x80003288]<br>0x0000000000000000|- rs1 : x1<br> - imm_val == 55<br>                                                                                                                                                                |[0x80000480]:slli sp, ra, 55<br> [0x80000484]:sd sp, 128(t1)<br>   |
|  18|[0x80003290]<br>0x0004800000000000|- rs1 : x18<br> - rd : x4<br> - imm_val == 47<br>                                                                                                                                                 |[0x8000048c]:slli tp, s2, 47<br> [0x80000490]:sd tp, 136(t1)<br>   |
|  19|[0x80003298]<br>0x1000000000000000|- rs1 : x28<br> - rd : x20<br>                                                                                                                                                                    |[0x80000498]:slli s4, t3, 31<br> [0x8000049c]:sd s4, 144(t1)<br>   |
|  20|[0x800032a0]<br>0xFFFFFFF7FFE00000|- rs1 : x21<br> - rd : x7<br> - rs1_val == -16385<br> - imm_val == 21<br>                                                                                                                         |[0x800004a8]:slli t2, s5, 21<br> [0x800004ac]:sd t2, 152(t1)<br>   |
|  21|[0x800032a8]<br>0x0000000000000004|- rs1 : x9<br> - rd : x13<br> - rs1_val == 2<br>                                                                                                                                                  |[0x800004b4]:slli a3, s1, 1<br> [0x800004b8]:sd a3, 160(t1)<br>    |
|  22|[0x800032b0]<br>0x0000000000000800|- rs1 : x26<br> - rd : x21<br> - rs1_val == 4<br>                                                                                                                                                 |[0x800004c0]:slli s5, s10, 9<br> [0x800004c4]:sd s5, 168(t1)<br>   |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x17<br> - rs1_val == 8<br>                                                                                                                                                                |[0x800004d4]:slli zero, a7, 17<br> [0x800004d8]:sd zero, 0(ra)<br> |
|  24|[0x800032c0]<br>0x8000000000000000|- rs1 : x15<br> - rd : x6<br> - rs1_val == 16<br>                                                                                                                                                 |[0x800004e0]:slli t1, a5, 59<br> [0x800004e4]:sd t1, 8(ra)<br>     |
|  25|[0x800032c8]<br>0x0000000000000400|- rs1 : x29<br> - rd : x12<br> - rs1_val == 64<br>                                                                                                                                                |[0x800004ec]:slli a2, t4, 4<br> [0x800004f0]:sd a2, 16(ra)<br>     |
|  26|[0x800032d0]<br>0x0000008000000000|- rs1 : x25<br> - rd : x17<br> - rs1_val == 128<br>                                                                                                                                               |[0x800004f8]:slli a7, s9, 32<br> [0x800004fc]:sd a7, 24(ra)<br>    |
|  27|[0x800032d8]<br>0x0080000000000000|- rs1 : x19<br> - rd : x26<br> - rs1_val == 256<br>                                                                                                                                               |[0x80000504]:slli s10, s3, 47<br> [0x80000508]:sd s10, 32(ra)<br>  |
|  28|[0x800032e0]<br>0x0000000000080000|- rs1 : x6<br> - rd : x30<br> - rs1_val == 512<br>                                                                                                                                                |[0x80000510]:slli t5, t1, 10<br> [0x80000514]:sd t5, 40(ra)<br>    |
|  29|[0x800032e8]<br>0x0000000000000000|- rs1 : x11<br> - rd : x22<br> - rs1_val == 1024<br>                                                                                                                                              |[0x8000051c]:slli s6, a1, 59<br> [0x80000520]:sd s6, 48(ra)<br>    |
|  30|[0x800032f0]<br>0x0000000100000000|- rs1 : x7<br> - rs1_val == 2048<br>                                                                                                                                                              |[0x8000052c]:slli t0, t2, 21<br> [0x80000530]:sd t0, 56(ra)<br>    |
|  31|[0x800032f8]<br>0x0000000000000000|- rs1 : x13<br> - rd : x23<br> - rs1_val == 4096<br>                                                                                                                                              |[0x80000538]:slli s7, a3, 61<br> [0x8000053c]:sd s7, 64(ra)<br>    |
|  32|[0x80003300]<br>0x0000200000000000|- rs1 : x22<br> - rs1_val == 8192<br>                                                                                                                                                             |[0x80000544]:slli a6, s6, 32<br> [0x80000548]:sd a6, 72(ra)<br>    |
|  33|[0x80003308]<br>0x0000000008000000|- rs1_val == 16384<br>                                                                                                                                                                            |[0x80000550]:slli a1, a0, 13<br> [0x80000554]:sd a1, 80(ra)<br>    |
|  34|[0x80003310]<br>0x0000000020000000|- rs1_val == 32768<br>                                                                                                                                                                            |[0x8000055c]:slli a1, a0, 14<br> [0x80000560]:sd a1, 88(ra)<br>    |
|  35|[0x80003318]<br>0x0000001000000000|- rs1_val == 131072<br>                                                                                                                                                                           |[0x80000568]:slli a1, a0, 19<br> [0x8000056c]:sd a1, 96(ra)<br>    |
|  36|[0x80003320]<br>0x0000000020000000|- rs1_val == 262144<br>                                                                                                                                                                           |[0x80000574]:slli a1, a0, 11<br> [0x80000578]:sd a1, 104(ra)<br>   |
|  37|[0x80003328]<br>0x0000000000000000|- rs1_val == 524288<br>                                                                                                                                                                           |[0x80000580]:slli a1, a0, 59<br> [0x80000584]:sd a1, 112(ra)<br>   |
|  38|[0x80003330]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                                                                                                          |[0x8000058c]:slli a1, a0, 47<br> [0x80000590]:sd a1, 120(ra)<br>   |
|  39|[0x80003338]<br>0x0000000080000000|- rs1_val == 2097152<br>                                                                                                                                                                          |[0x80000598]:slli a1, a0, 10<br> [0x8000059c]:sd a1, 128(ra)<br>   |
|  40|[0x80003340]<br>0x0000000020000000|- rs1_val == 4194304<br>                                                                                                                                                                          |[0x800005a4]:slli a1, a0, 7<br> [0x800005a8]:sd a1, 136(ra)<br>    |
|  41|[0x80003348]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                                                                                                          |[0x800005b0]:slli a1, a0, 42<br> [0x800005b4]:sd a1, 144(ra)<br>   |
|  42|[0x80003350]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                                                                         |[0x800005bc]:slli a1, a0, 42<br> [0x800005c0]:sd a1, 152(ra)<br>   |
|  43|[0x80003358]<br>0x0000000020000000|- rs1_val == 33554432<br>                                                                                                                                                                         |[0x800005c8]:slli a1, a0, 4<br> [0x800005cc]:sd a1, 160(ra)<br>    |
|  44|[0x80003360]<br>0x0400000000000000|- rs1_val == 67108864<br>                                                                                                                                                                         |[0x800005d4]:slli a1, a0, 32<br> [0x800005d8]:sd a1, 168(ra)<br>   |
|  45|[0x80003368]<br>0x0000020000000000|- rs1_val == 134217728<br>                                                                                                                                                                        |[0x800005e0]:slli a1, a0, 14<br> [0x800005e4]:sd a1, 176(ra)<br>   |
|  46|[0x80003370]<br>0x0000800000000000|- rs1_val == 268435456<br>                                                                                                                                                                        |[0x800005ec]:slli a1, a0, 19<br> [0x800005f0]:sd a1, 184(ra)<br>   |
|  47|[0x80003378]<br>0x0000000800000000|- rs1_val == 1073741824<br>                                                                                                                                                                       |[0x800005f8]:slli a1, a0, 5<br> [0x800005fc]:sd a1, 192(ra)<br>    |
|  48|[0x80003380]<br>0x0000008000000000|- rs1_val == 4294967296<br>                                                                                                                                                                       |[0x80000608]:slli a1, a0, 7<br> [0x8000060c]:sd a1, 200(ra)<br>    |
|  49|[0x80003388]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                                                       |[0x80000618]:slli a1, a0, 63<br> [0x8000061c]:sd a1, 208(ra)<br>   |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                                                      |[0x80000628]:slli a1, a0, 62<br> [0x8000062c]:sd a1, 216(ra)<br>   |
|  51|[0x80003398]<br>0x0001000000000000|- rs1_val == 34359738368<br>                                                                                                                                                                      |[0x80000638]:slli a1, a0, 13<br> [0x8000063c]:sd a1, 224(ra)<br>   |
|  52|[0x800033a0]<br>0x0000040000000000|- rs1_val == 68719476736<br>                                                                                                                                                                      |[0x80000648]:slli a1, a0, 6<br> [0x8000064c]:sd a1, 232(ra)<br>    |
|  53|[0x800033a8]<br>0x0000002000000000|- rs1_val == 137438953472<br>                                                                                                                                                                     |[0x80000658]:slli a1, a0, 0<br> [0x8000065c]:sd a1, 240(ra)<br>    |
|  54|[0x800033b0]<br>0x0001000000000000|- rs1_val == 274877906944<br>                                                                                                                                                                     |[0x80000668]:slli a1, a0, 10<br> [0x8000066c]:sd a1, 248(ra)<br>   |
|  55|[0x800033b8]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                                                     |[0x80000678]:slli a1, a0, 61<br> [0x8000067c]:sd a1, 256(ra)<br>   |
|  56|[0x800033c0]<br>0x0040000000000000|- rs1_val == 1099511627776<br>                                                                                                                                                                    |[0x80000688]:slli a1, a0, 14<br> [0x8000068c]:sd a1, 264(ra)<br>   |
|  57|[0x800033c8]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                                                    |[0x80000698]:slli a1, a0, 63<br> [0x8000069c]:sd a1, 272(ra)<br>   |
|  58|[0x800033d0]<br>0x0001000000000000|- rs1_val == 4398046511104<br>                                                                                                                                                                    |[0x800006a8]:slli a1, a0, 6<br> [0x800006ac]:sd a1, 280(ra)<br>    |
|  59|[0x800033d8]<br>0x0001000000000000|- rs1_val == 8796093022208<br>                                                                                                                                                                    |[0x800006b8]:slli a1, a0, 5<br> [0x800006bc]:sd a1, 288(ra)<br>    |
|  60|[0x800033e0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                                                   |[0x800006c8]:slli a1, a0, 42<br> [0x800006cc]:sd a1, 296(ra)<br>   |
|  61|[0x800033e8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                                   |[0x800006d8]:slli a1, a0, 32<br> [0x800006dc]:sd a1, 304(ra)<br>   |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                                                   |[0x800006e8]:slli a1, a0, 61<br> [0x800006ec]:sd a1, 312(ra)<br>   |
|  63|[0x800033f8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                                                  |[0x800006f8]:slli a1, a0, 42<br> [0x800006fc]:sd a1, 320(ra)<br>   |
|  64|[0x80003400]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                                  |[0x80000708]:slli a1, a0, 32<br> [0x8000070c]:sd a1, 328(ra)<br>   |
|  65|[0x80003408]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                                                  |[0x80000718]:slli a1, a0, 32<br> [0x8000071c]:sd a1, 336(ra)<br>   |
|  66|[0x80003410]<br>0x0010000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                                 |[0x80000728]:slli a1, a0, 1<br> [0x8000072c]:sd a1, 344(ra)<br>    |
|  67|[0x80003418]<br>0x0800000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                                 |[0x80000738]:slli a1, a0, 7<br> [0x8000073c]:sd a1, 352(ra)<br>    |
|  68|[0x80003420]<br>0x0800000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                                 |[0x80000748]:slli a1, a0, 6<br> [0x8000074c]:sd a1, 360(ra)<br>    |
|  69|[0x80003428]<br>0x2000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                                |[0x80000758]:slli a1, a0, 7<br> [0x8000075c]:sd a1, 368(ra)<br>    |
|  70|[0x80003430]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                                |[0x80000768]:slli a1, a0, 62<br> [0x8000076c]:sd a1, 376(ra)<br>   |
|  71|[0x80003438]<br>0x0400000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                                |[0x80000778]:slli a1, a0, 2<br> [0x8000077c]:sd a1, 384(ra)<br>    |
|  72|[0x80003440]<br>0x8000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                               |[0x80000788]:slli a1, a0, 6<br> [0x8000078c]:sd a1, 392(ra)<br>    |
|  73|[0x80003448]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                               |[0x80000798]:slli a1, a0, 62<br> [0x8000079c]:sd a1, 400(ra)<br>   |
|  74|[0x80003450]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                               |[0x800007a8]:slli a1, a0, 14<br> [0x800007ac]:sd a1, 408(ra)<br>   |
|  75|[0x80003458]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                              |[0x800007b8]:slli a1, a0, 11<br> [0x800007bc]:sd a1, 416(ra)<br>   |
|  76|[0x80003460]<br>0xFFFFFC0000000000|- rs1_val == -549755813889<br>                                                                                                                                                                    |[0x800007cc]:slli a1, a0, 42<br> [0x800007d0]:sd a1, 424(ra)<br>   |
|  77|[0x80003468]<br>0xFFF7FFFFFFFFF800|- rs1_val == -1099511627777<br>                                                                                                                                                                   |[0x800007e0]:slli a1, a0, 11<br> [0x800007e4]:sd a1, 432(ra)<br>   |
|  78|[0x80003470]<br>0xC000000000000000|- rs1_val == -2199023255553<br>                                                                                                                                                                   |[0x800007f4]:slli a1, a0, 62<br> [0x800007f8]:sd a1, 440(ra)<br>   |
|  79|[0x80003478]<br>0xFEFFFFFFFFFFE000|- rs1_val == -8796093022209<br>                                                                                                                                                                   |[0x80000808]:slli a1, a0, 13<br> [0x8000080c]:sd a1, 448(ra)<br>   |
|  80|[0x80003480]<br>0xEFFFFFFFFFFF0000|- rs1_val == -17592186044417<br>                                                                                                                                                                  |[0x8000081c]:slli a1, a0, 16<br> [0x80000820]:sd a1, 456(ra)<br>   |
|  81|[0x80003488]<br>0xFFBFFFFFFFFFFE00|- rs1_val == -35184372088833<br>                                                                                                                                                                  |[0x80000830]:slli a1, a0, 9<br> [0x80000834]:sd a1, 464(ra)<br>    |
|  82|[0x80003490]<br>0xEFFFFFFFFFFFC000|- rs1_val == -70368744177665<br>                                                                                                                                                                  |[0x80000844]:slli a1, a0, 14<br> [0x80000848]:sd a1, 472(ra)<br>   |
|  83|[0x80003498]<br>0xFEFFFFFFFFFFFE00|- rs1_val == -140737488355329<br>                                                                                                                                                                 |[0x80000858]:slli a1, a0, 9<br> [0x8000085c]:sd a1, 480(ra)<br>    |
|  84|[0x800034a0]<br>0xE000000000000000|- rs1_val == -281474976710657<br>                                                                                                                                                                 |[0x8000086c]:slli a1, a0, 61<br> [0x80000870]:sd a1, 488(ra)<br>   |
|  85|[0x800034a8]<br>0xFFDFFFFFFFFFFFF0|- rs1_val == -562949953421313<br>                                                                                                                                                                 |[0x80000880]:slli a1, a0, 4<br> [0x80000884]:sd a1, 496(ra)<br>    |
|  86|[0x800034b0]<br>0xFFEFFFFFFFFFFFFC|- rs1_val == -1125899906842625<br>                                                                                                                                                                |[0x80000894]:slli a1, a0, 2<br> [0x80000898]:sd a1, 504(ra)<br>    |
|  87|[0x800034b8]<br>0xF7FFFFFFFFFFFF00|- rs1_val == -2251799813685249<br>                                                                                                                                                                |[0x800008a8]:slli a1, a0, 8<br> [0x800008ac]:sd a1, 512(ra)<br>    |
|  88|[0x800034c0]<br>0xF7FFFFFFFFFFFF80|- rs1_val == -4503599627370497<br>                                                                                                                                                                |[0x800008bc]:slli a1, a0, 7<br> [0x800008c0]:sd a1, 520(ra)<br>    |
|  89|[0x800034c8]<br>0xFFFFFFFF80000000|- rs1_val == -9007199254740993<br>                                                                                                                                                                |[0x800008d0]:slli a1, a0, 31<br> [0x800008d4]:sd a1, 528(ra)<br>   |
|  90|[0x800034d0]<br>0xFFFFFC0000000000|- rs1_val == -18014398509481985<br>                                                                                                                                                               |[0x800008e4]:slli a1, a0, 42<br> [0x800008e8]:sd a1, 536(ra)<br>   |
|  91|[0x800034d8]<br>0xFDFFFFFFFFFFFFFC|- rs1_val == -36028797018963969<br>                                                                                                                                                               |[0x800008f8]:slli a1, a0, 2<br> [0x800008fc]:sd a1, 544(ra)<br>    |
|  92|[0x800034e0]<br>0xEFFFFFFFFFFFFFF0|- rs1_val == -72057594037927937<br>                                                                                                                                                               |[0x8000090c]:slli a1, a0, 4<br> [0x80000910]:sd a1, 552(ra)<br>    |
|  93|[0x800034e8]<br>0xFF80000000000000|- rs1_val == -144115188075855873<br>                                                                                                                                                              |[0x80000920]:slli a1, a0, 55<br> [0x80000924]:sd a1, 560(ra)<br>   |
|  94|[0x800034f0]<br>0x8000000000000000|- rs1_val == -288230376151711745<br>                                                                                                                                                              |[0x80000934]:slli a1, a0, 63<br> [0x80000938]:sd a1, 568(ra)<br>   |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFE0000|- rs1_val == -576460752303423489<br>                                                                                                                                                              |[0x80000948]:slli a1, a0, 17<br> [0x8000094c]:sd a1, 576(ra)<br>   |
|  96|[0x80003500]<br>0xBFFFFFFFFFFFFFFC|- rs1_val == -1152921504606846977<br>                                                                                                                                                             |[0x8000095c]:slli a1, a0, 2<br> [0x80000960]:sd a1, 584(ra)<br>    |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -2305843009213693953<br>                                                                                                                                                             |[0x80000970]:slli a1, a0, 8<br> [0x80000974]:sd a1, 592(ra)<br>    |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -4611686018427387905<br>                                                                                                                                                             |[0x80000984]:slli a1, a0, 10<br> [0x80000988]:sd a1, 600(ra)<br>   |
|  99|[0x80003518]<br>0xAAAAAAAAAAAAAA80|- rs1_val == 6148914691236517205<br>                                                                                                                                                              |[0x800009ac]:slli a1, a0, 7<br> [0x800009b0]:sd a1, 608(ra)<br>    |
| 100|[0x80003520]<br>0x5000000000000000|- rs1_val == -6148914691236517206<br>                                                                                                                                                             |[0x800009d4]:slli a1, a0, 59<br> [0x800009d8]:sd a1, 616(ra)<br>   |
| 101|[0x80003528]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                              |[0x800009e4]:slli a1, a0, 19<br> [0x800009e8]:sd a1, 624(ra)<br>   |
| 102|[0x80003530]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                                              |[0x800009f4]:slli a1, a0, 6<br> [0x800009f8]:sd a1, 632(ra)<br>    |
| 103|[0x80003538]<br>0xFFFFFFFFFFFFC000|- rs1_val == -2<br>                                                                                                                                                                               |[0x80000a00]:slli a1, a0, 13<br> [0x80000a04]:sd a1, 640(ra)<br>   |
| 104|[0x80003540]<br>0xFFFFFFFFFFFFFFF4|- rs1_val == -3<br>                                                                                                                                                                               |[0x80000a0c]:slli a1, a0, 2<br> [0x80000a10]:sd a1, 648(ra)<br>    |
| 105|[0x80003548]<br>0xFFFFFFFFFFFFEE00|- rs1_val == -9<br>                                                                                                                                                                               |[0x80000a18]:slli a1, a0, 9<br> [0x80000a1c]:sd a1, 656(ra)<br>    |
| 106|[0x80003550]<br>0xFFFFFFFFFFFFFBC0|- rs1_val == -17<br>                                                                                                                                                                              |[0x80000a24]:slli a1, a0, 6<br> [0x80000a28]:sd a1, 664(ra)<br>    |
| 107|[0x80003558]<br>0xFFFFFFDF00000000|- rs1_val == -33<br>                                                                                                                                                                              |[0x80000a30]:slli a1, a0, 32<br> [0x80000a34]:sd a1, 672(ra)<br>   |
| 108|[0x80003560]<br>0xF800000000000000|- rs1_val == -65<br>                                                                                                                                                                              |[0x80000a3c]:slli a1, a0, 59<br> [0x80000a40]:sd a1, 680(ra)<br>   |
| 109|[0x80003568]<br>0xFFFFFFBF80000000|- rs1_val == -129<br>                                                                                                                                                                             |[0x80000a48]:slli a1, a0, 31<br> [0x80000a4c]:sd a1, 688(ra)<br>   |
| 110|[0x80003570]<br>0xFFFFFEFF00000000|- rs1_val == -257<br>                                                                                                                                                                             |[0x80000a54]:slli a1, a0, 32<br> [0x80000a58]:sd a1, 696(ra)<br>   |
| 111|[0x80003578]<br>0xFFFFFFFFFFFBFE00|- rs1_val == -513<br>                                                                                                                                                                             |[0x80000a60]:slli a1, a0, 9<br> [0x80000a64]:sd a1, 704(ra)<br>    |
| 112|[0x80003580]<br>0x8000000000000000|- rs1_val == -1025<br>                                                                                                                                                                            |[0x80000a6c]:slli a1, a0, 63<br> [0x80000a70]:sd a1, 712(ra)<br>   |
| 113|[0x80003588]<br>0xFFFFFFFFFFFFBFF8|- rs1_val == -2049<br>                                                                                                                                                                            |[0x80000a7c]:slli a1, a0, 3<br> [0x80000a80]:sd a1, 720(ra)<br>    |
| 114|[0x80003590]<br>0xFFFFFFFFFFDFFE00|- rs1_val == -4097<br>                                                                                                                                                                            |[0x80000a8c]:slli a1, a0, 9<br> [0x80000a90]:sd a1, 728(ra)<br>    |
| 115|[0x80003598]<br>0xFFFFFFFBFFE00000|- rs1_val == -8193<br>                                                                                                                                                                            |[0x80000a9c]:slli a1, a0, 21<br> [0x80000aa0]:sd a1, 736(ra)<br>   |
| 116|[0x800035a0]<br>0xC000000000000000|- rs1_val == -32769<br>                                                                                                                                                                           |[0x80000aac]:slli a1, a0, 62<br> [0x80000ab0]:sd a1, 744(ra)<br>   |
| 117|[0x800035a8]<br>0xFF80000000000000|- rs1_val == -65537<br>                                                                                                                                                                           |[0x80000abc]:slli a1, a0, 55<br> [0x80000ac0]:sd a1, 752(ra)<br>   |
| 118|[0x800035b0]<br>0xFFFFFFFFF7FFFC00|- rs1_val == -131073<br>                                                                                                                                                                          |[0x80000acc]:slli a1, a0, 10<br> [0x80000ad0]:sd a1, 760(ra)<br>   |
| 119|[0x800035b8]<br>0xEFFFFC0000000000|- rs1_val == -262145<br>                                                                                                                                                                          |[0x80000adc]:slli a1, a0, 42<br> [0x80000ae0]:sd a1, 768(ra)<br>   |
| 120|[0x800035c0]<br>0xFFFF800000000000|- rs1_val == -524289<br>                                                                                                                                                                          |[0x80000aec]:slli a1, a0, 47<br> [0x80000af0]:sd a1, 776(ra)<br>   |
| 121|[0x800035c8]<br>0xFFFFFFF7FFFF8000|- rs1_val == -1048577<br>                                                                                                                                                                         |[0x80000afc]:slli a1, a0, 15<br> [0x80000b00]:sd a1, 784(ra)<br>   |
| 122|[0x800035d0]<br>0xFFFFFFFFDFFFFF00|- rs1_val == -2097153<br>                                                                                                                                                                         |[0x80000b0c]:slli a1, a0, 8<br> [0x80000b10]:sd a1, 792(ra)<br>    |
| 123|[0x800035d8]<br>0xFF80000000000000|- rs1_val == -4194305<br>                                                                                                                                                                         |[0x80000b1c]:slli a1, a0, 55<br> [0x80000b20]:sd a1, 800(ra)<br>   |
| 124|[0x800035e0]<br>0xFFBFFFFF80000000|- rs1_val == -8388609<br>                                                                                                                                                                         |[0x80000b2c]:slli a1, a0, 31<br> [0x80000b30]:sd a1, 808(ra)<br>   |
| 125|[0x800035e8]<br>0xFFFFFFFBFFFFFC00|- rs1_val == -16777217<br>                                                                                                                                                                        |[0x80000b3c]:slli a1, a0, 10<br> [0x80000b40]:sd a1, 816(ra)<br>   |
| 126|[0x800035f0]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                        |[0x80000b4c]:slli a1, a0, 0<br> [0x80000b50]:sd a1, 824(ra)<br>    |
| 127|[0x800035f8]<br>0xFFFFDFFFFFF80000|- rs1_val == -67108865<br>                                                                                                                                                                        |[0x80000b5c]:slli a1, a0, 19<br> [0x80000b60]:sd a1, 832(ra)<br>   |
| 128|[0x80003600]<br>0xFFFFF7FFFFFF0000|- rs1_val == -134217729<br>                                                                                                                                                                       |[0x80000b6c]:slli a1, a0, 16<br> [0x80000b70]:sd a1, 840(ra)<br>   |
| 129|[0x80003608]<br>0xFFFFFFFFDFFFFFFE|- rs1_val == -268435457<br>                                                                                                                                                                       |[0x80000b7c]:slli a1, a0, 1<br> [0x80000b80]:sd a1, 848(ra)<br>    |
| 130|[0x80003610]<br>0xFF80000000000000|- rs1_val == -536870913<br>                                                                                                                                                                       |[0x80000b8c]:slli a1, a0, 55<br> [0x80000b90]:sd a1, 856(ra)<br>   |
| 131|[0x80003618]<br>0xFFFF800000000000|- rs1_val == -1073741825<br>                                                                                                                                                                      |[0x80000b9c]:slli a1, a0, 47<br> [0x80000ba0]:sd a1, 864(ra)<br>   |
| 132|[0x80003620]<br>0xFFFFFFFEFFFFFFFE|- rs1_val == -2147483649<br>                                                                                                                                                                      |[0x80000bb0]:slli a1, a0, 1<br> [0x80000bb4]:sd a1, 872(ra)<br>    |
| 133|[0x80003628]<br>0xFFFFFFFF00000000|- rs1_val == -4294967297<br>                                                                                                                                                                      |[0x80000bc4]:slli a1, a0, 32<br> [0x80000bc8]:sd a1, 880(ra)<br>   |
| 134|[0x80003630]<br>0xFFFFFEFFFFFFFF80|- rs1_val == -8589934593<br>                                                                                                                                                                      |[0x80000bd8]:slli a1, a0, 7<br> [0x80000bdc]:sd a1, 888(ra)<br>    |
| 135|[0x80003638]<br>0xFFFFFFFF00000000|- rs1_val == -17179869185<br>                                                                                                                                                                     |[0x80000bec]:slli a1, a0, 32<br> [0x80000bf0]:sd a1, 896(ra)<br>   |
| 136|[0x80003640]<br>0xFFFFFFDFFFFFFFFC|- rs1_val == -34359738369<br>                                                                                                                                                                     |[0x80000c00]:slli a1, a0, 2<br> [0x80000c04]:sd a1, 904(ra)<br>    |
| 137|[0x80003648]<br>0xFFFFFBFFFFFFFFC0|- rs1_val == -68719476737<br>                                                                                                                                                                     |[0x80000c14]:slli a1, a0, 6<br> [0x80000c18]:sd a1, 912(ra)<br>    |
| 138|[0x80003650]<br>0xE000000000000000|- rs1_val == -137438953473<br>                                                                                                                                                                    |[0x80000c28]:slli a1, a0, 61<br> [0x80000c2c]:sd a1, 920(ra)<br>   |
| 139|[0x80003658]<br>0xC000000000000000|- rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                                                                                         |[0x80000c3c]:slli a1, a0, 62<br> [0x80000c40]:sd a1, 928(ra)<br>   |
