
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c20')]      |
| SIG_REGION                | [('0x80003208', '0x80003640', '135 dwords')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 222     |
| Total Coverpoints Hit     | 222      |
| Total Signature Updates   | 135      |
| STAT1                     | 133      |
| STAT2                     | 2      |
| STAT3                     | 74     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c04]:slli a1, a0, 61
      [0x80000c08]:sd a1, 896(ra)
 -- Signature Address: 0x80003630 Data: 0x2000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 1 and imm_val >= 0 and imm_val < xlen
      - rs1_val == 1
      - imm_val == 61




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c10]:slli a1, a0, 11
      [0x80000c14]:sd a1, 904(ra)
 -- Signature Address: 0x80003638 Data: 0x0000000000020000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 64






```

## Details of STAT3

```
[0x800003b8]:slli t4, t4, 62

[0x800003e4]:slli s6, s6, 44

[0x80000400]:slli t0, t0, 63

[0x8000041c]:slli a5, a5, 63
[0x80000420]:addi a5, a5, 4095

[0x8000043c]:slli a3, a3, 39

[0x80000458]:slli s5, s5, 56
[0x8000045c]:addi s5, s5, 4095

[0x8000046c]:slli a6, a6, 41

[0x800004a8]:slli t1, t1, 51

[0x800004c4]:slli a7, a7, 56
[0x800004c8]:addi a7, a7, 4095

[0x800004e0]:slli sp, sp, 50
[0x800004e4]:addi sp, sp, 4095

[0x80000620]:slli a0, a0, 31

[0x80000630]:slli a0, a0, 32

[0x80000640]:slli a0, a0, 33

[0x80000650]:slli a0, a0, 34

[0x80000660]:slli a0, a0, 35

[0x80000670]:slli a0, a0, 36

[0x80000680]:slli a0, a0, 37

[0x80000690]:slli a0, a0, 38

[0x800006a0]:slli a0, a0, 40

[0x800006b0]:slli a0, a0, 42

[0x800006c0]:slli a0, a0, 43

[0x800006d0]:slli a0, a0, 45

[0x800006e0]:slli a0, a0, 46

[0x800006f0]:slli a0, a0, 47

[0x80000700]:slli a0, a0, 48

[0x80000710]:slli a0, a0, 49

[0x80000720]:slli a0, a0, 50

[0x80000730]:slli a0, a0, 52

[0x80000740]:slli a0, a0, 53

[0x80000750]:slli a0, a0, 54

[0x80000760]:slli a0, a0, 55

[0x80000770]:slli a0, a0, 56

[0x80000780]:slli a0, a0, 57

[0x80000790]:slli a0, a0, 39
[0x80000794]:addi a0, a0, 4095

[0x800007a4]:slli a0, a0, 40
[0x800007a8]:addi a0, a0, 4095

[0x800007b8]:slli a0, a0, 41
[0x800007bc]:addi a0, a0, 4095

[0x800007cc]:slli a0, a0, 42
[0x800007d0]:addi a0, a0, 4095

[0x800007e0]:slli a0, a0, 43
[0x800007e4]:addi a0, a0, 4095

[0x800007f4]:slli a0, a0, 44
[0x800007f8]:addi a0, a0, 4095

[0x80000808]:slli a0, a0, 45
[0x8000080c]:addi a0, a0, 4095

[0x8000081c]:slli a0, a0, 46
[0x80000820]:addi a0, a0, 4095

[0x80000830]:slli a0, a0, 47
[0x80000834]:addi a0, a0, 4095

[0x80000844]:slli a0, a0, 48
[0x80000848]:addi a0, a0, 4095

[0x80000858]:slli a0, a0, 49
[0x8000085c]:addi a0, a0, 4095

[0x8000086c]:slli a0, a0, 51
[0x80000870]:addi a0, a0, 4095

[0x80000880]:slli a0, a0, 52
[0x80000884]:addi a0, a0, 4095

[0x80000894]:slli a0, a0, 53
[0x80000898]:addi a0, a0, 4095

[0x800008a8]:slli a0, a0, 54
[0x800008ac]:addi a0, a0, 4095

[0x800008bc]:slli a0, a0, 55
[0x800008c0]:addi a0, a0, 4095

[0x800008d0]:slli a0, a0, 57
[0x800008d4]:addi a0, a0, 4095

[0x800008e4]:slli a0, a0, 58
[0x800008e8]:addi a0, a0, 4095

[0x800008f8]:slli a0, a0, 59
[0x800008fc]:addi a0, a0, 4095

[0x8000090c]:slli a0, a0, 60
[0x80000910]:addi a0, a0, 4095

[0x80000920]:slli a0, a0, 61
[0x80000924]:addi a0, a0, 4095

[0x80000934]:slli a0, a0, 62
[0x80000938]:addi a0, a0, 4095

[0x8000094c]:slli a0, a0, 12
[0x80000950]:addi a0, a0, 1365

[0x80000954]:slli a0, a0, 12
[0x80000958]:addi a0, a0, 1365

[0x8000095c]:slli a0, a0, 12
[0x80000960]:addi a0, a0, 1365

[0x80000974]:slli a0, a0, 12
[0x80000978]:addi a0, a0, 2731

[0x8000097c]:slli a0, a0, 12
[0x80000980]:addi a0, a0, 2731

[0x80000984]:slli a0, a0, 12
[0x80000988]:addi a0, a0, 2730

[0x80000998]:slli a0, a0, 58

[0x800009a8]:slli a0, a0, 59

[0x800009b8]:slli a0, a0, 60

[0x800009c8]:slli a0, a0, 61

[0x800009d8]:slli a0, a0, 62

[0x80000b64]:slli a0, a0, 31
[0x80000b68]:addi a0, a0, 4095

[0x80000b78]:slli a0, a0, 32
[0x80000b7c]:addi a0, a0, 4095

[0x80000b8c]:slli a0, a0, 33
[0x80000b90]:addi a0, a0, 4095

[0x80000ba0]:slli a0, a0, 34
[0x80000ba4]:addi a0, a0, 4095

[0x80000bb4]:slli a0, a0, 35
[0x80000bb8]:addi a0, a0, 4095

[0x80000bc8]:slli a0, a0, 36
[0x80000bcc]:addi a0, a0, 4095

[0x80000bdc]:slli a0, a0, 37
[0x80000be0]:addi a0, a0, 4095

[0x80000bf0]:slli a0, a0, 38
[0x80000bf4]:addi a0, a0, 4095



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

|s.no|            signature             |                                                                  coverpoints                                                                  |                                code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFFEFFFC00|- opcode : slli<br> - rs1 : x8<br> - rd : x30<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -16385<br> |[0x800003a0]:slli t5, fp, 10<br> [0x800003a4]:sd t5, 0(sp)<br>       |
|   2|[0x80003210]<br>0x0000000800000000|- rs1 : x24<br> - rd : x24<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 4194304<br>                   |[0x800003ac]:slli s8, s8, 13<br> [0x800003b0]:sd s8, 8(sp)<br>       |
|   3|[0x80003218]<br>0xC000000000000000|- rd : x21<br> - rs1_val < 0 and imm_val == 0<br>                                                                                              |[0x800003bc]:slli s5, t4, 0<br> [0x800003c0]:sd s5, 16(sp)<br>       |
|   4|[0x80003220]<br>0x0000000000000080|- rs1 : x9<br> - rd : x23<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 128<br>                                                          |[0x800003c8]:slli s7, s1, 0<br> [0x800003cc]:sd s7, 24(sp)<br>       |
|   5|[0x80003228]<br>0x8000000000000000|- rs1 : x27<br> - rd : x9<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -2097153<br>                                              |[0x800003d8]:slli s1, s11, 63<br> [0x800003dc]:sd s1, 32(sp)<br>     |
|   6|[0x80003230]<br>0x0000000000000000|- rd : x18<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 17592186044416<br>                                                       |[0x800003e8]:slli s2, s6, 63<br> [0x800003ec]:sd s2, 40(sp)<br>      |
|   7|[0x80003238]<br>0x0000000000000800|- rs1 : x3<br> - rd : x27<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 8<br> - imm_val == 8<br>                |[0x800003f4]:slli s11, gp, 8<br> [0x800003f8]:sd s11, 48(sp)<br>     |
|   8|[0x80003240]<br>0x0000000000000000|- rd : x16<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>                       |[0x80000404]:slli a6, t0, 14<br> [0x80000408]:sd a6, 56(sp)<br>      |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x25<br> - rd : x3<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                           |[0x80000410]:slli gp, s9, 10<br> [0x80000414]:sd gp, 64(sp)<br>      |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFFF80|- rd : x7<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                        |[0x80000424]:slli t2, a5, 7<br> [0x80000428]:sd t2, 72(sp)<br>       |
|  11|[0x80003258]<br>0x0000000000000000|- rs1 : x0<br> - imm_val == 61<br>                                                                                                             |[0x80000430]:slli t0, zero, 61<br> [0x80000434]:sd t0, 80(sp)<br>    |
|  12|[0x80003260]<br>0x0000010000000000|- rd : x6<br> - rs1_val == 549755813888<br> - imm_val == 1<br>                                                                                 |[0x80000440]:slli t1, a3, 1<br> [0x80000444]:sd t1, 88(sp)<br>       |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFBFC|- rs1 : x4<br> - rd : x8<br> - rs1_val == -257<br> - imm_val == 2<br>                                                                          |[0x8000044c]:slli fp, tp, 2<br> [0x80000450]:sd fp, 96(sp)<br>       |
|  14|[0x80003270]<br>0xEFFFFFFFFFFFFFF0|- rd : x19<br> - rs1_val == -72057594037927937<br> - imm_val == 4<br>                                                                          |[0x80000460]:slli s3, s5, 4<br> [0x80000464]:sd s3, 104(sp)<br>      |
|  15|[0x80003278]<br>0x0200000000000000|- rd : x26<br> - rs1_val == 2199023255552<br> - imm_val == 16<br>                                                                              |[0x80000470]:slli s10, a6, 16<br> [0x80000474]:sd s10, 112(sp)<br>   |
|  16|[0x80003280]<br>0x0000080000000000|- rs1 : x7<br> - rd : x10<br> - rs1_val == 2048<br> - imm_val == 32<br>                                                                        |[0x80000480]:slli a0, t2, 32<br> [0x80000484]:sd a0, 120(sp)<br>     |
|  17|[0x80003288]<br>0xC000000000000000|- rs1 : x1<br> - rd : x20<br> - rs1_val == -131073<br>                                                                                         |[0x80000490]:slli s4, ra, 62<br> [0x80000494]:sd s4, 128(sp)<br>     |
|  18|[0x80003290]<br>0xD800000000000000|- rs1 : x31<br> - rd : x14<br> - rs1_val == -5<br> - imm_val == 59<br>                                                                         |[0x8000049c]:slli a4, t6, 59<br> [0x800004a0]:sd a4, 136(sp)<br>     |
|  19|[0x80003298]<br>0x0000000000000000|- rd : x28<br> - rs1_val == 2251799813685248<br> - imm_val == 55<br>                                                                           |[0x800004ac]:slli t3, t1, 55<br> [0x800004b0]:sd t3, 144(sp)<br>     |
|  20|[0x800032a0]<br>0x0000000000000000|- rs1 : x28<br> - rd : x31<br> - rs1_val == 8388608<br> - imm_val == 47<br>                                                                    |[0x800004b8]:slli t6, t3, 47<br> [0x800004bc]:sd t6, 152(sp)<br>     |
|  21|[0x800032a8]<br>0xFFFFFFFF80000000|- rd : x1<br> - imm_val == 31<br>                                                                                                              |[0x800004cc]:slli ra, a7, 31<br> [0x800004d0]:sd ra, 160(sp)<br>     |
|  22|[0x800032b0]<br>0xFFFFFFFFFFE00000|- rs1_val == -1125899906842625<br> - imm_val == 21<br>                                                                                         |[0x800004e8]:slli a7, sp, 21<br> [0x800004ec]:sd a7, 0(ra)<br>       |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x18<br> - rs1_val == 268435456<br> - imm_val == 42<br>                                                                                 |[0x800004f4]:slli a3, s2, 42<br> [0x800004f8]:sd a3, 8(ra)<br>       |
|  24|[0x800032c0]<br>0x0000000000010000|- rs1 : x30<br> - rs1_val == 2<br>                                                                                                             |[0x80000500]:slli sp, t5, 15<br> [0x80000504]:sd sp, 16(ra)<br>      |
|  25|[0x800032c8]<br>0x0000000000000100|- rs1 : x10<br> - rd : x4<br> - rs1_val == 4<br>                                                                                               |[0x8000050c]:slli tp, a0, 6<br> [0x80000510]:sd tp, 24(ra)<br>       |
|  26|[0x800032d0]<br>0x0000000000000800|- rs1 : x19<br> - rd : x25<br> - rs1_val == 16<br>                                                                                             |[0x80000518]:slli s9, s3, 7<br> [0x8000051c]:sd s9, 32(ra)<br>       |
|  27|[0x800032d8]<br>0x0000000000100000|- rs1 : x14<br> - rs1_val == 32<br>                                                                                                            |[0x80000524]:slli s6, a4, 15<br> [0x80000528]:sd s6, 40(ra)<br>      |
|  28|[0x800032e0]<br>0x0000000000000000|- rs1 : x26<br> - rd : x0<br> - rs1_val == 64<br>                                                                                              |[0x80000530]:slli zero, s10, 11<br> [0x80000534]:sd zero, 48(ra)<br> |
|  29|[0x800032e8]<br>0x0000000008000000|- rs1 : x20<br> - rs1_val == 256<br>                                                                                                           |[0x8000053c]:slli a5, s4, 19<br> [0x80000540]:sd a5, 56(ra)<br>      |
|  30|[0x800032f0]<br>0x0000000040000000|- rs1 : x23<br> - rd : x11<br> - rs1_val == 512<br>                                                                                            |[0x80000548]:slli a1, s7, 21<br> [0x8000054c]:sd a1, 64(ra)<br>      |
|  31|[0x800032f8]<br>0x0000000000010000|- rs1 : x11<br> - rd : x12<br> - rs1_val == 1024<br>                                                                                           |[0x80000554]:slli a2, a1, 6<br> [0x80000558]:sd a2, 72(ra)<br>       |
|  32|[0x80003300]<br>0x0000000000002000|- rs1 : x12<br> - rs1_val == 4096<br>                                                                                                          |[0x80000560]:slli t4, a2, 1<br> [0x80000564]:sd t4, 80(ra)<br>       |
|  33|[0x80003308]<br>0x0000000000000000|- rs1_val == 8192<br>                                                                                                                          |[0x8000056c]:slli a1, a0, 63<br> [0x80000570]:sd a1, 88(ra)<br>      |
|  34|[0x80003310]<br>0x0000000000004000|- rs1_val == 16384<br>                                                                                                                         |[0x80000578]:slli a1, a0, 0<br> [0x8000057c]:sd a1, 96(ra)<br>       |
|  35|[0x80003318]<br>0x0000000001000000|- rs1_val == 32768<br>                                                                                                                         |[0x80000584]:slli a1, a0, 9<br> [0x80000588]:sd a1, 104(ra)<br>      |
|  36|[0x80003320]<br>0x0000000000020000|- rs1_val == 65536<br>                                                                                                                         |[0x80000590]:slli a1, a0, 1<br> [0x80000594]:sd a1, 112(ra)<br>      |
|  37|[0x80003328]<br>0x0000000100000000|- rs1_val == 131072<br>                                                                                                                        |[0x8000059c]:slli a1, a0, 15<br> [0x800005a0]:sd a1, 120(ra)<br>     |
|  38|[0x80003330]<br>0x0000000010000000|- rs1_val == 262144<br>                                                                                                                        |[0x800005a8]:slli a1, a0, 10<br> [0x800005ac]:sd a1, 128(ra)<br>     |
|  39|[0x80003338]<br>0x0000000004000000|- rs1_val == 524288<br>                                                                                                                        |[0x800005b4]:slli a1, a0, 7<br> [0x800005b8]:sd a1, 136(ra)<br>      |
|  40|[0x80003340]<br>0x0000000000400000|- rs1_val == 1048576<br>                                                                                                                       |[0x800005c0]:slli a1, a0, 2<br> [0x800005c4]:sd a1, 144(ra)<br>      |
|  41|[0x80003348]<br>0x0000000000000000|- rs1_val == 2097152<br>                                                                                                                       |[0x800005cc]:slli a1, a0, 59<br> [0x800005d0]:sd a1, 152(ra)<br>     |
|  42|[0x80003350]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                      |[0x800005d8]:slli a1, a0, 63<br> [0x800005dc]:sd a1, 160(ra)<br>     |
|  43|[0x80003358]<br>0x0000010000000000|- rs1_val == 33554432<br>                                                                                                                      |[0x800005e4]:slli a1, a0, 15<br> [0x800005e8]:sd a1, 168(ra)<br>     |
|  44|[0x80003360]<br>0x0000000800000000|- rs1_val == 67108864<br>                                                                                                                      |[0x800005f0]:slli a1, a0, 9<br> [0x800005f4]:sd a1, 176(ra)<br>      |
|  45|[0x80003368]<br>0x0800000000000000|- rs1_val == 134217728<br>                                                                                                                     |[0x800005fc]:slli a1, a0, 32<br> [0x80000600]:sd a1, 184(ra)<br>     |
|  46|[0x80003370]<br>0x2000000000000000|- rs1_val == 536870912<br>                                                                                                                     |[0x80000608]:slli a1, a0, 32<br> [0x8000060c]:sd a1, 192(ra)<br>     |
|  47|[0x80003378]<br>0x0000010000000000|- rs1_val == 1073741824<br>                                                                                                                    |[0x80000614]:slli a1, a0, 10<br> [0x80000618]:sd a1, 200(ra)<br>     |
|  48|[0x80003380]<br>0x0000020000000000|- rs1_val == 2147483648<br>                                                                                                                    |[0x80000624]:slli a1, a0, 10<br> [0x80000628]:sd a1, 208(ra)<br>     |
|  49|[0x80003388]<br>0x0000000100000000|- rs1_val == 4294967296<br>                                                                                                                    |[0x80000634]:slli a1, a0, 0<br> [0x80000638]:sd a1, 216(ra)<br>      |
|  50|[0x80003390]<br>0x0000400000000000|- rs1_val == 8589934592<br>                                                                                                                    |[0x80000644]:slli a1, a0, 13<br> [0x80000648]:sd a1, 224(ra)<br>     |
|  51|[0x80003398]<br>0x0000000400000000|- rs1_val == 17179869184<br>                                                                                                                   |[0x80000654]:slli a1, a0, 0<br> [0x80000658]:sd a1, 232(ra)<br>      |
|  52|[0x800033a0]<br>0x0000010000000000|- rs1_val == 34359738368<br>                                                                                                                   |[0x80000664]:slli a1, a0, 5<br> [0x80000668]:sd a1, 240(ra)<br>      |
|  53|[0x800033a8]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                   |[0x80000674]:slli a1, a0, 47<br> [0x80000678]:sd a1, 248(ra)<br>     |
|  54|[0x800033b0]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                  |[0x80000684]:slli a1, a0, 61<br> [0x80000688]:sd a1, 256(ra)<br>     |
|  55|[0x800033b8]<br>0x0000004000000000|- rs1_val == 274877906944<br>                                                                                                                  |[0x80000694]:slli a1, a0, 0<br> [0x80000698]:sd a1, 264(ra)<br>      |
|  56|[0x800033c0]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                 |[0x800006a4]:slli a1, a0, 61<br> [0x800006a8]:sd a1, 272(ra)<br>     |
|  57|[0x800033c8]<br>0x1000000000000000|- rs1_val == 4398046511104<br>                                                                                                                 |[0x800006b4]:slli a1, a0, 18<br> [0x800006b8]:sd a1, 280(ra)<br>     |
|  58|[0x800033d0]<br>0x0040000000000000|- rs1_val == 8796093022208<br>                                                                                                                 |[0x800006c4]:slli a1, a0, 11<br> [0x800006c8]:sd a1, 288(ra)<br>     |
|  59|[0x800033d8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                |[0x800006d4]:slli a1, a0, 62<br> [0x800006d8]:sd a1, 296(ra)<br>     |
|  60|[0x800033e0]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                |[0x800006e4]:slli a1, a0, 59<br> [0x800006e8]:sd a1, 304(ra)<br>     |
|  61|[0x800033e8]<br>0x0400000000000000|- rs1_val == 140737488355328<br>                                                                                                               |[0x800006f4]:slli a1, a0, 11<br> [0x800006f8]:sd a1, 312(ra)<br>     |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                               |[0x80000704]:slli a1, a0, 42<br> [0x80000708]:sd a1, 320(ra)<br>     |
|  63|[0x800033f8]<br>0x4000000000000000|- rs1_val == 562949953421312<br>                                                                                                               |[0x80000714]:slli a1, a0, 13<br> [0x80000718]:sd a1, 328(ra)<br>     |
|  64|[0x80003400]<br>0x0080000000000000|- rs1_val == 1125899906842624<br>                                                                                                              |[0x80000724]:slli a1, a0, 5<br> [0x80000728]:sd a1, 336(ra)<br>      |
|  65|[0x80003408]<br>0x0080000000000000|- rs1_val == 4503599627370496<br>                                                                                                              |[0x80000734]:slli a1, a0, 3<br> [0x80000738]:sd a1, 344(ra)<br>      |
|  66|[0x80003410]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                              |[0x80000744]:slli a1, a0, 19<br> [0x80000748]:sd a1, 352(ra)<br>     |
|  67|[0x80003418]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                             |[0x80000754]:slli a1, a0, 19<br> [0x80000758]:sd a1, 360(ra)<br>     |
|  68|[0x80003420]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                             |[0x80000764]:slli a1, a0, 59<br> [0x80000768]:sd a1, 368(ra)<br>     |
|  69|[0x80003428]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                             |[0x80000774]:slli a1, a0, 61<br> [0x80000778]:sd a1, 376(ra)<br>     |
|  70|[0x80003430]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                            |[0x80000784]:slli a1, a0, 59<br> [0x80000788]:sd a1, 384(ra)<br>     |
|  71|[0x80003438]<br>0xFFFFFF7FFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                 |[0x80000798]:slli a1, a0, 0<br> [0x8000079c]:sd a1, 392(ra)<br>      |
|  72|[0x80003440]<br>0xFDFFFFFFFFFE0000|- rs1_val == -1099511627777<br>                                                                                                                |[0x800007ac]:slli a1, a0, 17<br> [0x800007b0]:sd a1, 400(ra)<br>     |
|  73|[0x80003448]<br>0xF7FFFFFFFFFC0000|- rs1_val == -2199023255553<br>                                                                                                                |[0x800007c0]:slli a1, a0, 18<br> [0x800007c4]:sd a1, 408(ra)<br>     |
|  74|[0x80003450]<br>0xDFFFFFFFFFF80000|- rs1_val == -4398046511105<br>                                                                                                                |[0x800007d4]:slli a1, a0, 19<br> [0x800007d8]:sd a1, 416(ra)<br>     |
|  75|[0x80003458]<br>0xFFEFFFFFFFFFFE00|- rs1_val == -8796093022209<br>                                                                                                                |[0x800007e8]:slli a1, a0, 9<br> [0x800007ec]:sd a1, 424(ra)<br>      |
|  76|[0x80003460]<br>0xE000000000000000|- rs1_val == -17592186044417<br>                                                                                                               |[0x800007fc]:slli a1, a0, 61<br> [0x80000800]:sd a1, 432(ra)<br>     |
|  77|[0x80003468]<br>0x7FFFFFFFFFFC0000|- rs1_val == -35184372088833<br>                                                                                                               |[0x80000810]:slli a1, a0, 18<br> [0x80000814]:sd a1, 440(ra)<br>     |
|  78|[0x80003470]<br>0xFF7FFFFFFFFFFE00|- rs1_val == -70368744177665<br>                                                                                                               |[0x80000824]:slli a1, a0, 9<br> [0x80000828]:sd a1, 448(ra)<br>      |
|  79|[0x80003478]<br>0xFFFDFFFFFFFFFFFC|- rs1_val == -140737488355329<br>                                                                                                              |[0x80000838]:slli a1, a0, 2<br> [0x8000083c]:sd a1, 456(ra)<br>      |
|  80|[0x80003480]<br>0xFFF7FFFFFFFFFFF8|- rs1_val == -281474976710657<br>                                                                                                              |[0x8000084c]:slli a1, a0, 3<br> [0x80000850]:sd a1, 464(ra)<br>      |
|  81|[0x80003488]<br>0xFFFF800000000000|- rs1_val == -562949953421313<br>                                                                                                              |[0x80000860]:slli a1, a0, 47<br> [0x80000864]:sd a1, 472(ra)<br>     |
|  82|[0x80003490]<br>0xFDFFFFFFFFFFFFC0|- rs1_val == -2251799813685249<br>                                                                                                             |[0x80000874]:slli a1, a0, 6<br> [0x80000878]:sd a1, 480(ra)<br>      |
|  83|[0x80003498]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                             |[0x80000888]:slli a1, a0, 0<br> [0x8000088c]:sd a1, 488(ra)<br>      |
|  84|[0x800034a0]<br>0xFFFFFFFFFFFC0000|- rs1_val == -9007199254740993<br>                                                                                                             |[0x8000089c]:slli a1, a0, 18<br> [0x800008a0]:sd a1, 496(ra)<br>     |
|  85|[0x800034a8]<br>0xF800000000000000|- rs1_val == -18014398509481985<br>                                                                                                            |[0x800008b0]:slli a1, a0, 59<br> [0x800008b4]:sd a1, 504(ra)<br>     |
|  86|[0x800034b0]<br>0xFEFFFFFFFFFFFFFE|- rs1_val == -36028797018963969<br>                                                                                                            |[0x800008c4]:slli a1, a0, 1<br> [0x800008c8]:sd a1, 512(ra)<br>      |
|  87|[0x800034b8]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -144115188075855873<br>                                                                                                           |[0x800008d8]:slli a1, a0, 10<br> [0x800008dc]:sd a1, 520(ra)<br>     |
|  88|[0x800034c0]<br>0xFFFFFFFFFFFF8000|- rs1_val == -288230376151711745<br>                                                                                                           |[0x800008ec]:slli a1, a0, 15<br> [0x800008f0]:sd a1, 528(ra)<br>     |
|  89|[0x800034c8]<br>0xFFFFFFFFFFFF0000|- rs1_val == -576460752303423489<br>                                                                                                           |[0x80000900]:slli a1, a0, 16<br> [0x80000904]:sd a1, 536(ra)<br>     |
|  90|[0x800034d0]<br>0xFFFFFFFF80000000|- rs1_val == -1152921504606846977<br>                                                                                                          |[0x80000914]:slli a1, a0, 31<br> [0x80000918]:sd a1, 544(ra)<br>     |
|  91|[0x800034d8]<br>0xFFFFFFFFFFF80000|- rs1_val == -2305843009213693953<br>                                                                                                          |[0x80000928]:slli a1, a0, 19<br> [0x8000092c]:sd a1, 552(ra)<br>     |
|  92|[0x800034e0]<br>0xF800000000000000|- rs1_val == -4611686018427387905<br>                                                                                                          |[0x8000093c]:slli a1, a0, 59<br> [0x80000940]:sd a1, 560(ra)<br>     |
|  93|[0x800034e8]<br>0xAAAAAAAAAAAAAAAA|- rs1_val == 6148914691236517205<br>                                                                                                           |[0x80000964]:slli a1, a0, 1<br> [0x80000968]:sd a1, 568(ra)<br>      |
|  94|[0x800034f0]<br>0x5555555555555554|- rs1_val == -6148914691236517206<br>                                                                                                          |[0x8000098c]:slli a1, a0, 1<br> [0x80000990]:sd a1, 576(ra)<br>      |
|  95|[0x800034f8]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                            |[0x8000099c]:slli a1, a0, 16<br> [0x800009a0]:sd a1, 584(ra)<br>     |
|  96|[0x80003500]<br>0x8000000000000000|- rs1_val == 576460752303423488<br>                                                                                                            |[0x800009ac]:slli a1, a0, 4<br> [0x800009b0]:sd a1, 592(ra)<br>      |
|  97|[0x80003508]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                           |[0x800009bc]:slli a1, a0, 5<br> [0x800009c0]:sd a1, 600(ra)<br>      |
|  98|[0x80003510]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                           |[0x800009cc]:slli a1, a0, 11<br> [0x800009d0]:sd a1, 608(ra)<br>     |
|  99|[0x80003518]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                           |[0x800009dc]:slli a1, a0, 7<br> [0x800009e0]:sd a1, 616(ra)<br>      |
| 100|[0x80003520]<br>0xFFFF000000000000|- rs1_val == -2<br>                                                                                                                            |[0x800009e8]:slli a1, a0, 47<br> [0x800009ec]:sd a1, 624(ra)<br>     |
| 101|[0x80003528]<br>0x4000000000000000|- rs1_val == -3<br>                                                                                                                            |[0x800009f4]:slli a1, a0, 62<br> [0x800009f8]:sd a1, 632(ra)<br>     |
| 102|[0x80003530]<br>0x8000000000000000|- rs1_val == -9<br>                                                                                                                            |[0x80000a00]:slli a1, a0, 63<br> [0x80000a04]:sd a1, 640(ra)<br>     |
| 103|[0x80003538]<br>0x7800000000000000|- rs1_val == -17<br>                                                                                                                           |[0x80000a0c]:slli a1, a0, 59<br> [0x80000a10]:sd a1, 648(ra)<br>     |
| 104|[0x80003540]<br>0xFFFFFFFFFFFBE000|- rs1_val == -33<br>                                                                                                                           |[0x80000a18]:slli a1, a0, 13<br> [0x80000a1c]:sd a1, 656(ra)<br>     |
| 105|[0x80003548]<br>0xFFFFFFFFFFDF8000|- rs1_val == -65<br>                                                                                                                           |[0x80000a24]:slli a1, a0, 15<br> [0x80000a28]:sd a1, 664(ra)<br>     |
| 106|[0x80003550]<br>0xFFFFFFFFEFE00000|- rs1_val == -129<br>                                                                                                                          |[0x80000a30]:slli a1, a0, 21<br> [0x80000a34]:sd a1, 672(ra)<br>     |
| 107|[0x80003558]<br>0xFFFFFFFFFFFEFF80|- rs1_val == -513<br>                                                                                                                          |[0x80000a3c]:slli a1, a0, 7<br> [0x80000a40]:sd a1, 680(ra)<br>      |
| 108|[0x80003560]<br>0xFFFFFFFFFBFF0000|- rs1_val == -1025<br>                                                                                                                         |[0x80000a48]:slli a1, a0, 16<br> [0x80000a4c]:sd a1, 688(ra)<br>     |
| 109|[0x80003568]<br>0xFFFFFFFFFFBFF800|- rs1_val == -2049<br>                                                                                                                         |[0x80000a58]:slli a1, a0, 11<br> [0x80000a5c]:sd a1, 696(ra)<br>     |
| 110|[0x80003570]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                         |[0x80000a68]:slli a1, a0, 0<br> [0x80000a6c]:sd a1, 704(ra)<br>      |
| 111|[0x80003578]<br>0xE000000000000000|- rs1_val == -8193<br>                                                                                                                         |[0x80000a78]:slli a1, a0, 61<br> [0x80000a7c]:sd a1, 712(ra)<br>     |
| 112|[0x80003580]<br>0xFFFFFFFFEFFFE000|- rs1_val == -32769<br>                                                                                                                        |[0x80000a88]:slli a1, a0, 13<br> [0x80000a8c]:sd a1, 720(ra)<br>     |
| 113|[0x80003588]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -65537<br>                                                                                                                        |[0x80000a98]:slli a1, a0, 0<br> [0x80000a9c]:sd a1, 728(ra)<br>      |
| 114|[0x80003590]<br>0xFFFFFFFFBFFFF000|- rs1_val == -262145<br>                                                                                                                       |[0x80000aa8]:slli a1, a0, 12<br> [0x80000aac]:sd a1, 736(ra)<br>     |
| 115|[0x80003598]<br>0xFFFFFFFFFEFFFFE0|- rs1_val == -524289<br>                                                                                                                       |[0x80000ab8]:slli a1, a0, 5<br> [0x80000abc]:sd a1, 744(ra)<br>      |
| 116|[0x800035a0]<br>0xBFFFFC0000000000|- rs1_val == -1048577<br>                                                                                                                      |[0x80000ac8]:slli a1, a0, 42<br> [0x80000acc]:sd a1, 752(ra)<br>     |
| 117|[0x800035a8]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                      |[0x80000ad8]:slli a1, a0, 0<br> [0x80000adc]:sd a1, 760(ra)<br>      |
| 118|[0x800035b0]<br>0xFFFFFFFDFFFFFC00|- rs1_val == -8388609<br>                                                                                                                      |[0x80000ae8]:slli a1, a0, 10<br> [0x80000aec]:sd a1, 768(ra)<br>     |
| 119|[0x800035b8]<br>0xFFFFFFFFDFFFFFE0|- rs1_val == -16777217<br>                                                                                                                     |[0x80000af8]:slli a1, a0, 5<br> [0x80000afc]:sd a1, 776(ra)<br>      |
| 120|[0x800035c0]<br>0xFFFFFFBFFFFFE000|- rs1_val == -33554433<br>                                                                                                                     |[0x80000b08]:slli a1, a0, 13<br> [0x80000b0c]:sd a1, 784(ra)<br>     |
| 121|[0x800035c8]<br>0xFFFFFFFEFFFFFFC0|- rs1_val == -67108865<br>                                                                                                                     |[0x80000b18]:slli a1, a0, 6<br> [0x80000b1c]:sd a1, 792(ra)<br>      |
| 122|[0x800035d0]<br>0xFFFFFC0000000000|- rs1_val == -134217729<br>                                                                                                                    |[0x80000b28]:slli a1, a0, 42<br> [0x80000b2c]:sd a1, 800(ra)<br>     |
| 123|[0x800035d8]<br>0xFFFFFF7FFFFFF800|- rs1_val == -268435457<br>                                                                                                                    |[0x80000b38]:slli a1, a0, 11<br> [0x80000b3c]:sd a1, 808(ra)<br>     |
| 124|[0x800035e0]<br>0xFFFFFFEFFFFFFF80|- rs1_val == -536870913<br>                                                                                                                    |[0x80000b48]:slli a1, a0, 7<br> [0x80000b4c]:sd a1, 816(ra)<br>      |
| 125|[0x800035e8]<br>0xFFFEFFFFFFFC0000|- rs1_val == -1073741825<br>                                                                                                                   |[0x80000b58]:slli a1, a0, 18<br> [0x80000b5c]:sd a1, 824(ra)<br>     |
| 126|[0x800035f0]<br>0xFFEFFFFFFFE00000|- rs1_val == -2147483649<br>                                                                                                                   |[0x80000b6c]:slli a1, a0, 21<br> [0x80000b70]:sd a1, 832(ra)<br>     |
| 127|[0x800035f8]<br>0xF800000000000000|- rs1_val == -4294967297<br>                                                                                                                   |[0x80000b80]:slli a1, a0, 59<br> [0x80000b84]:sd a1, 840(ra)<br>     |
| 128|[0x80003600]<br>0xFFFBFFFFFFFE0000|- rs1_val == -8589934593<br>                                                                                                                   |[0x80000b94]:slli a1, a0, 17<br> [0x80000b98]:sd a1, 848(ra)<br>     |
| 129|[0x80003608]<br>0xFFFFFFFF00000000|- rs1_val == -17179869185<br>                                                                                                                  |[0x80000ba8]:slli a1, a0, 32<br> [0x80000bac]:sd a1, 856(ra)<br>     |
| 130|[0x80003610]<br>0xFFFFF7FFFFFFFF00|- rs1_val == -34359738369<br>                                                                                                                  |[0x80000bbc]:slli a1, a0, 8<br> [0x80000bc0]:sd a1, 864(ra)<br>      |
| 131|[0x80003618]<br>0xFF80000000000000|- rs1_val == -68719476737<br>                                                                                                                  |[0x80000bd0]:slli a1, a0, 55<br> [0x80000bd4]:sd a1, 872(ra)<br>     |
| 132|[0x80003620]<br>0xE000000000000000|- rs1_val == -137438953473<br>                                                                                                                 |[0x80000be4]:slli a1, a0, 61<br> [0x80000be8]:sd a1, 880(ra)<br>     |
| 133|[0x80003628]<br>0xC000000000000000|- rs1_val == -274877906945<br>                                                                                                                 |[0x80000bf8]:slli a1, a0, 62<br> [0x80000bfc]:sd a1, 888(ra)<br>     |
