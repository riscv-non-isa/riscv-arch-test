
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e70')]      |
| SIG_REGION                | [('0x80002210', '0x80002540', '102 dwords')]      |
| COV_LABELS                | srl32.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srl32.u-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 102      |
| STAT1                     | 99      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000998]:SRL32_U t6, t5, t4
      [0x8000099c]:sd t6, 208(ra)
 -- Signature Address: 0x800023c8 Data: 0x0400000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl32.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == 536870912
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e40]:SRL32_U t6, t5, t4
      [0x80000e44]:sd t6, 568(ra)
 -- Signature Address: 0x80002530 Data: 0x0000000100000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl32.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == 2863311530
      - rs1_w0_val == 32768




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e60]:SRL32_U t6, t5, t4
      [0x80000e64]:sd t6, 576(ra)
 -- Signature Address: 0x80002538 Data: 0x0000000100000001
 -- Redundant Coverpoints hit by the op
      - opcode : srl32.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == 3221225471
      - rs1_w0_val == 3221225471






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

|s.no|            signature             |                                                                                 coverpoints                                                                                 |                                 code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : srl32.u<br> - rs1 : x25<br> - rs2 : x25<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs2_val == 21<br> - rs1_w1_val == 0<br>                                       |[0x800003b0]:SRL32_U s3, s9, s9<br> [0x800003b4]:sd s3, 0(t1)<br>     |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x1<br> - rd : x1<br> - rs1 == rs2 == rd<br> - rs2_val == 15<br>                                                                                       |[0x800003c8]:SRL32_U ra, ra, ra<br> [0x800003cc]:sd ra, 8(t1)<br>     |
|   3|[0x80002220]<br>0x0000002000000200|- rs1 : x15<br> - rs2 : x24<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 23<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 4294443007<br> |[0x800003ec]:SRL32_U fp, a5, s8<br> [0x800003f0]:sd fp, 16(t1)<br>    |
|   4|[0x80002228]<br>0x000000000000001F|- rs1 : x29<br> - rs2 : x3<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_val == 27<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 4227858431<br>                           |[0x80000408]:SRL32_U t4, t4, gp<br> [0x8000040c]:sd t4, 24(t1)<br>    |
|   5|[0x80002230]<br>0x0000000800000008|- rs1 : x28<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs2_val == 29<br> - rs1_w1_val == 4294950911<br> - rs1_w0_val == 4294901759<br>                      |[0x80000424]:SRL32_U s5, t3, s5<br> [0x80000428]:sd s5, 32(t1)<br>    |
|   6|[0x80002238]<br>0x0000000400000003|- rs1 : x14<br> - rs2 : x13<br> - rd : x26<br> - rs2_val == 30<br> - rs1_w1_val == 4294967231<br> - rs1_w0_val == 3221225471<br>                                             |[0x8000043c]:SRL32_U s10, a4, a3<br> [0x80000440]:sd s10, 40(t1)<br>  |
|   7|[0x80002240]<br>0x0000000000008000|- rs1 : x31<br> - rs2 : x2<br> - rd : x18<br> - rs2_val == 16<br> - rs1_w1_val == 64<br> - rs1_w0_val == 2147483647<br>                                                      |[0x80000454]:SRL32_U s2, t6, sp<br> [0x80000458]:sd s2, 48(t1)<br>    |
|   8|[0x80002248]<br>0x0000000100FFFFC0|- rs1 : x23<br> - rs2 : x4<br> - rd : x27<br> - rs2_val == 8<br> - rs1_w1_val == 128<br> - rs1_w0_val == 4294950911<br>                                                      |[0x80000470]:SRL32_U s11, s7, tp<br> [0x80000474]:sd s11, 56(t1)<br>  |
|   9|[0x80002250]<br>0x000200000FFFF000|- rs1 : x16<br> - rs2 : x22<br> - rd : x4<br> - rs2_val == 4<br> - rs1_w1_val == 2097152<br>                                                                                 |[0x80000494]:SRL32_U tp, a6, s6<br> [0x80000498]:sd tp, 64(t1)<br>    |
|  10|[0x80002258]<br>0x000000003FFFFFE0|- rs1 : x11<br> - rs2 : x26<br> - rd : x5<br> - rs2_val == 2<br> - rs1_w0_val == 4294967167<br>                                                                              |[0x800004ac]:SRL32_U t0, a1, s10<br> [0x800004b0]:sd t0, 72(t1)<br>   |
|  11|[0x80002260]<br>0x7FFFFF807FC00000|- rs1 : x5<br> - rs2 : x10<br> - rd : x31<br> - rs2_val == 1<br> - rs1_w1_val == 4294967039<br> - rs1_w0_val == 4286578687<br>                                               |[0x800004c8]:SRL32_U t6, t0, a0<br> [0x800004cc]:sd t6, 80(t1)<br>    |
|  12|[0x80002268]<br>0xAAAAAAAA00008000|- rs1 : x7<br> - rs2 : x0<br> - rd : x12<br> - rs1_w1_val == 2863311530<br> - rs1_w0_val == 32768<br>                                                                        |[0x800004e8]:SRL32_U a2, t2, zero<br> [0x800004ec]:sd a2, 88(t1)<br>  |
|  13|[0x80002270]<br>0x000AAAAB00000400|- rs1 : x9<br> - rs2 : x5<br> - rd : x17<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 2097152<br>                                                                      |[0x80000508]:SRL32_U a7, s1, t0<br> [0x8000050c]:sd a7, 96(t1)<br>    |
|  14|[0x80002278]<br>0x00200000003FF000|- rs1 : x24<br> - rs2 : x16<br> - rd : x14<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 4290772991<br> - rs2_val == 10<br>                                             |[0x80000530]:SRL32_U a4, s8, a6<br> [0x80000534]:sd a4, 0(ra)<br>     |
|  15|[0x80002280]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x19<br> - rd : x0<br> - rs1_w1_val == 3221225471<br>                                                                                                 |[0x80000550]:SRL32_U zero, s6, s3<br> [0x80000554]:sd zero, 8(ra)<br> |
|  16|[0x80002288]<br>0x000380000003FFC0|- rs1 : x10<br> - rs2 : x15<br> - rd : x23<br> - rs1_w1_val == 3758096383<br> - rs1_w0_val == 4293918719<br>                                                                 |[0x80000570]:SRL32_U s7, a0, a5<br> [0x80000574]:sd s7, 16(ra)<br>    |
|  17|[0x80002290]<br>0x0F00000000000010|- rs1 : x2<br> - rs2 : x7<br> - rd : x15<br> - rs1_w1_val == 4026531839<br> - rs1_w0_val == 256<br>                                                                          |[0x8000058c]:SRL32_U a5, sp, t2<br> [0x80000590]:sd a5, 24(ra)<br>    |
|  18|[0x80002298]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x8<br> - rd : x30<br> - rs1_w0_val == 0<br>                                                                                                           |[0x800005a8]:SRL32_U t5, zero, fp<br> [0x800005ac]:sd t5, 32(ra)<br>  |
|  19|[0x800022a0]<br>0x0000FE000000FFFF|- rs1 : x6<br> - rs2 : x23<br> - rd : x28<br> - rs1_w1_val == 4261412863<br> - rs1_w0_val == 4294934527<br>                                                                  |[0x800005c8]:SRL32_U t3, t1, s7<br> [0x800005cc]:sd t3, 40(ra)<br>    |
|  20|[0x800022a8]<br>0x0003FC0000000000|- rs1 : x27<br> - rs2 : x30<br> - rd : x22<br> - rs1_w1_val == 4278190079<br> - rs1_w0_val == 64<br>                                                                         |[0x800005e4]:SRL32_U s6, s11, t5<br> [0x800005e8]:sd s6, 48(ra)<br>   |
|  21|[0x800022b0]<br>0x007FC00000000001|- rs1 : x18<br> - rs2 : x6<br> - rd : x13<br> - rs1_w1_val == 4286578687<br>                                                                                                 |[0x80000600]:SRL32_U a3, s2, t1<br> [0x80000604]:sd a3, 56(ra)<br>    |
|  22|[0x800022b8]<br>0x000001FF00000100|- rs1 : x30<br> - rs2 : x18<br> - rd : x11<br> - rs1_w1_val == 4290772991<br>                                                                                                |[0x8000061c]:SRL32_U a1, t5, s2<br> [0x80000620]:sd a1, 64(ra)<br>    |
|  23|[0x800022c0]<br>0x0000000400000000|- rs1 : x8<br> - rs2 : x14<br> - rd : x9<br> - rs1_w1_val == 4293918719<br>                                                                                                  |[0x80000638]:SRL32_U s1, fp, a4<br> [0x8000063c]:sd s1, 72(ra)<br>    |
|  24|[0x800022c8]<br>0x000FFF8000000001|- rs1 : x21<br> - rs2 : x11<br> - rd : x24<br> - rs1_w1_val == 4294443007<br> - rs1_w0_val == 4096<br>                                                                       |[0x80000658]:SRL32_U s8, s5, a1<br> [0x8000065c]:sd s8, 80(ra)<br>    |
|  25|[0x800022d0]<br>0x0000000400000004|- rs1 : x12<br> - rs2 : x27<br> - rd : x25<br> - rs1_w1_val == 4294705151<br> - rs1_w0_val == 4294967293<br>                                                                 |[0x80000670]:SRL32_U s9, a2, s11<br> [0x80000674]:sd s9, 88(ra)<br>   |
|  26|[0x800022d8]<br>0x01FFFC0000000000|- rs1 : x3<br> - rs2 : x20<br> - rd : x2<br> - rs1_w1_val == 4294836223<br>                                                                                                  |[0x8000068c]:SRL32_U sp, gp, s4<br> [0x80000690]:sd sp, 96(ra)<br>    |
|  27|[0x800022e0]<br>0x0000200000002000|- rs1 : x4<br> - rs2 : x31<br> - rd : x20<br> - rs1_w1_val == 4294901759<br>                                                                                                 |[0x800006ac]:SRL32_U s4, tp, t6<br> [0x800006b0]:sd s4, 104(ra)<br>   |
|  28|[0x800022e8]<br>0x0000000200000000|- rs1 : x19<br> - rs2 : x28<br> - rd : x7<br> - rs1_w1_val == 4294934527<br>                                                                                                 |[0x800006c8]:SRL32_U t2, s3, t3<br> [0x800006cc]:sd t2, 112(ra)<br>   |
|  29|[0x800022f0]<br>0x000200000001F800|- rs1 : x20<br> - rs2 : x29<br> - rd : x10<br> - rs1_w1_val == 4294959103<br>                                                                                                |[0x800006e4]:SRL32_U a0, s4, t4<br> [0x800006e8]:sd a0, 120(ra)<br>   |
|  30|[0x800022f8]<br>0x07FFFF8000000000|- rs1 : x13<br> - rs2 : x9<br> - rd : x6<br> - rs1_w1_val == 4294963199<br>                                                                                                  |[0x80000708]:SRL32_U t1, a3, s1<br> [0x8000070c]:sd t1, 0(ra)<br>     |
|  31|[0x80002300]<br>0x0000400000004000|- rs1 : x17<br> - rs2 : x12<br> - rd : x3<br> - rs1_w1_val == 4294965247<br>                                                                                                 |[0x80000720]:SRL32_U gp, a7, a2<br> [0x80000724]:sd gp, 8(ra)<br>     |
|  32|[0x80002308]<br>0x0000080000000700|- rs1 : x26<br> - rs2 : x17<br> - rd : x16<br> - rs1_w1_val == 4294966271<br> - rs1_w0_val == 3758096383<br>                                                                 |[0x8000073c]:SRL32_U a6, s10, a7<br> [0x80000740]:sd a6, 16(ra)<br>   |
|  33|[0x80002310]<br>0x0002000000000400|- rs1_w1_val == 4294966783<br> - rs1_w0_val == 33554432<br>                                                                                                                  |[0x80000754]:SRL32_U t6, t5, t4<br> [0x80000758]:sd t6, 24(ra)<br>    |
|  34|[0x80002318]<br>0x7FFFFFC000000100|- rs1_w1_val == 4294967167<br> - rs1_w0_val == 512<br>                                                                                                                       |[0x8000076c]:SRL32_U t6, t5, t4<br> [0x80000770]:sd t6, 32(ra)<br>    |
|  35|[0x80002320]<br>0x0000020000000200|- rs1_w1_val == 4294967263<br> - rs1_w0_val == 4294967039<br>                                                                                                                |[0x80000784]:SRL32_U t6, t5, t4<br> [0x80000788]:sd t6, 40(ra)<br>    |
|  36|[0x80002328]<br>0x0000080000000000|- rs1_w1_val == 4294967279<br>                                                                                                                                               |[0x8000079c]:SRL32_U t6, t5, t4<br> [0x800007a0]:sd t6, 48(ra)<br>    |
|  37|[0x80002330]<br>0x0000800000000000|- rs1_w1_val == 4294967287<br> - rs1_w0_val == 2048<br>                                                                                                                      |[0x800007b8]:SRL32_U t6, t5, t4<br> [0x800007bc]:sd t6, 56(ra)<br>    |
|  38|[0x80002338]<br>0x0000000800000008|- rs1_w1_val == 4294967291<br> - rs1_w0_val == 4294836223<br>                                                                                                                |[0x800007d4]:SRL32_U t6, t5, t4<br> [0x800007d8]:sd t6, 64(ra)<br>    |
|  39|[0x80002340]<br>0x0001000000000000|- rs1_w1_val == 4294967293<br> - rs1_w0_val == 128<br>                                                                                                                       |[0x800007ec]:SRL32_U t6, t5, t4<br> [0x800007f0]:sd t6, 72(ra)<br>    |
|  40|[0x80002348]<br>0x0200000001C00000|- rs1_w1_val == 4294967294<br>                                                                                                                                               |[0x80000804]:SRL32_U t6, t5, t4<br> [0x80000808]:sd t6, 80(ra)<br>    |
|  41|[0x80002350]<br>0x0800000000000010|- rs1_w1_val == 2147483648<br>                                                                                                                                               |[0x8000081c]:SRL32_U t6, t5, t4<br> [0x80000820]:sd t6, 88(ra)<br>    |
|  42|[0x80002358]<br>0x0000000800000000|- rs1_w1_val == 1073741824<br>                                                                                                                                               |[0x80000834]:SRL32_U t6, t5, t4<br> [0x80000838]:sd t6, 96(ra)<br>    |
|  43|[0x80002360]<br>0x0000004000000000|- rs1_w1_val == 536870912<br> - rs1_w0_val == 65536<br>                                                                                                                      |[0x80000850]:SRL32_U t6, t5, t4<br> [0x80000854]:sd t6, 104(ra)<br>   |
|  44|[0x80002368]<br>0x0000020000003FFE|- rs1_w1_val == 134217728<br>                                                                                                                                                |[0x80000874]:SRL32_U t6, t5, t4<br> [0x80000878]:sd t6, 112(ra)<br>   |
|  45|[0x80002370]<br>0x0000080000002000|- rs1_w1_val == 67108864<br> - rs1_w0_val == 268435456<br>                                                                                                                   |[0x8000088c]:SRL32_U t6, t5, t4<br> [0x80000890]:sd t6, 120(ra)<br>   |
|  46|[0x80002378]<br>0x0000004000000000|- rs1_w1_val == 33554432<br> - rs1_w0_val == 8192<br>                                                                                                                        |[0x800008a8]:SRL32_U t6, t5, t4<br> [0x800008ac]:sd t6, 128(ra)<br>   |
|  47|[0x80002380]<br>0x0000000000000000|- rs1_w0_val == 16384<br>                                                                                                                                                    |[0x800008c0]:SRL32_U t6, t5, t4<br> [0x800008c4]:sd t6, 136(ra)<br>   |
|  48|[0x80002388]<br>0x0001000000000000|- rs1_w0_val == 1024<br>                                                                                                                                                     |[0x800008d8]:SRL32_U t6, t5, t4<br> [0x800008dc]:sd t6, 144(ra)<br>   |
|  49|[0x80002390]<br>0x00001FC000000000|- rs1_w0_val == 32<br>                                                                                                                                                       |[0x800008f4]:SRL32_U t6, t5, t4<br> [0x800008f8]:sd t6, 152(ra)<br>   |
|  50|[0x80002398]<br>0x0000080000000000|- rs1_w1_val == 4194304<br> - rs1_w0_val == 16<br>                                                                                                                           |[0x8000090c]:SRL32_U t6, t5, t4<br> [0x80000910]:sd t6, 160(ra)<br>   |
|  51|[0x800023a0]<br>0xFFFFFFFB00000008|- rs1_w0_val == 8<br>                                                                                                                                                        |[0x80000924]:SRL32_U t6, t5, t4<br> [0x80000928]:sd t6, 168(ra)<br>   |
|  52|[0x800023a8]<br>0x0010000000000004|- rs1_w1_val == 1048576<br> - rs1_w0_val == 4<br>                                                                                                                            |[0x8000093c]:SRL32_U t6, t5, t4<br> [0x80000940]:sd t6, 176(ra)<br>   |
|  53|[0x800023b0]<br>0x0001000000000000|- rs1_w0_val == 2<br>                                                                                                                                                        |[0x80000954]:SRL32_U t6, t5, t4<br> [0x80000958]:sd t6, 184(ra)<br>   |
|  54|[0x800023b8]<br>0x0000010000000000|- rs1_w0_val == 1<br>                                                                                                                                                        |[0x8000096c]:SRL32_U t6, t5, t4<br> [0x80000970]:sd t6, 192(ra)<br>   |
|  55|[0x800023c0]<br>0x0000020000000200|- rs1_w0_val == 4294967295<br>                                                                                                                                               |[0x80000984]:SRL32_U t6, t5, t4<br> [0x80000988]:sd t6, 200(ra)<br>   |
|  56|[0x800023d0]<br>0x0002000000000000|- rs1_w1_val == 16777216<br>                                                                                                                                                 |[0x800009b0]:SRL32_U t6, t5, t4<br> [0x800009b4]:sd t6, 216(ra)<br>   |
|  57|[0x800023d8]<br>0x001000001FFFFF80|- rs1_w1_val == 8388608<br> - rs1_w0_val == 4294966271<br>                                                                                                                   |[0x800009cc]:SRL32_U t6, t5, t4<br> [0x800009d0]:sd t6, 224(ra)<br>   |
|  58|[0x800023e0]<br>0x0000400001000000|- rs1_w1_val == 262144<br>                                                                                                                                                   |[0x800009e4]:SRL32_U t6, t5, t4<br> [0x800009e8]:sd t6, 232(ra)<br>   |
|  59|[0x800023e8]<br>0x0000001000000000|- rs1_w1_val == 131072<br>                                                                                                                                                   |[0x80000a04]:SRL32_U t6, t5, t4<br> [0x80000a08]:sd t6, 240(ra)<br>   |
|  60|[0x800023f0]<br>0x0000008000800000|- rs1_w1_val == 65536<br>                                                                                                                                                    |[0x80000a20]:SRL32_U t6, t5, t4<br> [0x80000a24]:sd t6, 248(ra)<br>   |
|  61|[0x800023f8]<br>0x0000080005555555|- rs1_w1_val == 32768<br> - rs1_w0_val == 1431655765<br>                                                                                                                     |[0x80000a44]:SRL32_U t6, t5, t4<br> [0x80000a48]:sd t6, 256(ra)<br>   |
|  62|[0x80002400]<br>0x0000010000000400|- rs1_w1_val == 16384<br>                                                                                                                                                    |[0x80000a5c]:SRL32_U t6, t5, t4<br> [0x80000a60]:sd t6, 264(ra)<br>   |
|  63|[0x80002408]<br>0x0000004001FFFFFF|- rs1_w1_val == 8192<br> - rs1_w0_val == 4294967231<br>                                                                                                                      |[0x80000a78]:SRL32_U t6, t5, t4<br> [0x80000a7c]:sd t6, 272(ra)<br>   |
|  64|[0x80002410]<br>0x0000000000000000|- rs1_w1_val == 4096<br>                                                                                                                                                     |[0x80000a90]:SRL32_U t6, t5, t4<br> [0x80000a94]:sd t6, 280(ra)<br>   |
|  65|[0x80002418]<br>0x0000000000000004|- rs1_w1_val == 2048<br>                                                                                                                                                     |[0x80000aac]:SRL32_U t6, t5, t4<br> [0x80000ab0]:sd t6, 288(ra)<br>   |
|  66|[0x80002420]<br>0x00000001003C0000|- rs1_w1_val == 1024<br> - rs1_w0_val == 4026531839<br>                                                                                                                      |[0x80000ac8]:SRL32_U t6, t5, t4<br> [0x80000acc]:sd t6, 296(ra)<br>   |
|  67|[0x80002428]<br>0x0000001007FF0000|- rs1_w1_val == 512<br> - rs1_w0_val == 4292870143<br>                                                                                                                       |[0x80000ae4]:SRL32_U t6, t5, t4<br> [0x80000ae8]:sd t6, 304(ra)<br>   |
|  68|[0x80002430]<br>0x0000000000000200|- rs1_w1_val == 256<br> - rs1_w0_val == 4294959103<br>                                                                                                                       |[0x80000b00]:SRL32_U t6, t5, t4<br> [0x80000b04]:sd t6, 312(ra)<br>   |
|  69|[0x80002438]<br>0x000000020E000000|- rs1_w1_val == 32<br>                                                                                                                                                       |[0x80000b18]:SRL32_U t6, t5, t4<br> [0x80000b1c]:sd t6, 320(ra)<br>   |
|  70|[0x80002440]<br>0x0000000000030000|- rs1_w1_val == 16<br>                                                                                                                                                       |[0x80000b30]:SRL32_U t6, t5, t4<br> [0x80000b34]:sd t6, 328(ra)<br>   |
|  71|[0x80002448]<br>0x00000000003FFF00|- rs1_w1_val == 8<br> - rs1_w0_val == 4294705151<br>                                                                                                                         |[0x80000b4c]:SRL32_U t6, t5, t4<br> [0x80000b50]:sd t6, 336(ra)<br>   |
|  72|[0x80002450]<br>0x0000000000000000|- rs1_w1_val == 4<br>                                                                                                                                                        |[0x80000b60]:SRL32_U t6, t5, t4<br> [0x80000b64]:sd t6, 344(ra)<br>   |
|  73|[0x80002458]<br>0x0000000000000000|- rs1_w1_val == 2<br>                                                                                                                                                        |[0x80000b78]:SRL32_U t6, t5, t4<br> [0x80000b7c]:sd t6, 352(ra)<br>   |
|  74|[0x80002460]<br>0x000000000003FFE0|- rs1_w1_val == 1<br>                                                                                                                                                        |[0x80000b94]:SRL32_U t6, t5, t4<br> [0x80000b98]:sd t6, 360(ra)<br>   |
|  75|[0x80002468]<br>0x0004000000000000|- rs1_w1_val == 4294967295<br>                                                                                                                                               |[0x80000ba8]:SRL32_U t6, t5, t4<br> [0x80000bac]:sd t6, 368(ra)<br>   |
|  76|[0x80002470]<br>0x0000000000002AAB|- rs1_w0_val == 2863311530<br>                                                                                                                                               |[0x80000bc4]:SRL32_U t6, t5, t4<br> [0x80000bc8]:sd t6, 376(ra)<br>   |
|  77|[0x80002478]<br>0x0000000000000008|- rs1_w0_val == 4160749567<br>                                                                                                                                               |[0x80000bdc]:SRL32_U t6, t5, t4<br> [0x80000be0]:sd t6, 384(ra)<br>   |
|  78|[0x80002480]<br>0x00000002007F0000|- rs1_w0_val == 4261412863<br>                                                                                                                                               |[0x80000bf8]:SRL32_U t6, t5, t4<br> [0x80000bfc]:sd t6, 392(ra)<br>   |
|  79|[0x80002488]<br>0x3FFF80003FC00000|- rs1_w0_val == 4278190079<br>                                                                                                                                               |[0x80000c14]:SRL32_U t6, t5, t4<br> [0x80000c18]:sd t6, 400(ra)<br>   |
|  80|[0x80002490]<br>0x0000000001FFFFE0|- rs1_w0_val == 4294963199<br>                                                                                                                                               |[0x80000c30]:SRL32_U t6, t5, t4<br> [0x80000c34]:sd t6, 408(ra)<br>   |
|  81|[0x80002498]<br>0x0000000000040000|- rs1_w0_val == 4294965247<br>                                                                                                                                               |[0x80000c4c]:SRL32_U t6, t5, t4<br> [0x80000c50]:sd t6, 416(ra)<br>   |
|  82|[0x800024a0]<br>0x20000000FFFFFDFF|- rs1_w0_val == 4294966783<br>                                                                                                                                               |[0x80000c68]:SRL32_U t6, t5, t4<br> [0x80000c6c]:sd t6, 424(ra)<br>   |
|  83|[0x800024a8]<br>0x0000000100800000|- rs1_w0_val == 4294967263<br>                                                                                                                                               |[0x80000c80]:SRL32_U t6, t5, t4<br> [0x80000c84]:sd t6, 432(ra)<br>   |
|  84|[0x800024b0]<br>0x0003FF0000040000|- rs1_w0_val == 4294967279<br>                                                                                                                                               |[0x80000c98]:SRL32_U t6, t5, t4<br> [0x80000c9c]:sd t6, 440(ra)<br>   |
|  85|[0x800024b8]<br>0x000000087FFFFFFC|- rs1_w0_val == 4294967287<br>                                                                                                                                               |[0x80000cb0]:SRL32_U t6, t5, t4<br> [0x80000cb4]:sd t6, 448(ra)<br>   |
|  86|[0x800024c0]<br>0x0000000000000002|- rs1_w0_val == 4294967291<br>                                                                                                                                               |[0x80000ccc]:SRL32_U t6, t5, t4<br> [0x80000cd0]:sd t6, 456(ra)<br>   |
|  87|[0x800024c8]<br>0x0000000800008000|- rs1_w0_val == 4294967294<br>                                                                                                                                               |[0x80000ce8]:SRL32_U t6, t5, t4<br> [0x80000cec]:sd t6, 464(ra)<br>   |
|  88|[0x800024d0]<br>0x0000002000000010|- rs1_w0_val == 2147483648<br>                                                                                                                                               |[0x80000d00]:SRL32_U t6, t5, t4<br> [0x80000d04]:sd t6, 472(ra)<br>   |
|  89|[0x800024d8]<br>0x0000000000000002|- rs1_w0_val == 1073741824<br>                                                                                                                                               |[0x80000d14]:SRL32_U t6, t5, t4<br> [0x80000d18]:sd t6, 480(ra)<br>   |
|  90|[0x800024e0]<br>0x0000000200000000|- rs1_w1_val == 4227858431<br> - rs1_w0_val == 536870912<br>                                                                                                                 |[0x80000d2c]:SRL32_U t6, t5, t4<br> [0x80000d30]:sd t6, 488(ra)<br>   |
|  91|[0x800024e8]<br>0x000FFFFF00008000|- rs1_w0_val == 134217728<br>                                                                                                                                                |[0x80000d44]:SRL32_U t6, t5, t4<br> [0x80000d48]:sd t6, 496(ra)<br>   |
|  92|[0x800024f0]<br>0x0000000700800000|- rs1_w0_val == 16777216<br>                                                                                                                                                 |[0x80000d5c]:SRL32_U t6, t5, t4<br> [0x80000d60]:sd t6, 504(ra)<br>   |
|  93|[0x800024f8]<br>0x2AAAAAAB00200000|- rs1_w0_val == 8388608<br>                                                                                                                                                  |[0x80000d7c]:SRL32_U t6, t5, t4<br> [0x80000d80]:sd t6, 512(ra)<br>   |
|  94|[0x80002500]<br>0x0000000000000002|- rs1_w0_val == 4194304<br>                                                                                                                                                  |[0x80000d94]:SRL32_U t6, t5, t4<br> [0x80000d98]:sd t6, 520(ra)<br>   |
|  95|[0x80002508]<br>0x0000000000000200|- rs1_w0_val == 1048576<br>                                                                                                                                                  |[0x80000dac]:SRL32_U t6, t5, t4<br> [0x80000db0]:sd t6, 528(ra)<br>   |
|  96|[0x80002510]<br>0x0000010000000080|- rs1_w0_val == 262144<br>                                                                                                                                                   |[0x80000dc8]:SRL32_U t6, t5, t4<br> [0x80000dcc]:sd t6, 536(ra)<br>   |
|  97|[0x80002518]<br>0x0000400000000001|- rs1_w0_val == 131072<br>                                                                                                                                                   |[0x80000de8]:SRL32_U t6, t5, t4<br> [0x80000dec]:sd t6, 544(ra)<br>   |
|  98|[0x80002520]<br>0x000007C000000000|- rs1_w1_val == 4160749567<br> - rs1_w0_val == 524288<br>                                                                                                                    |[0x80000e08]:SRL32_U t6, t5, t4<br> [0x80000e0c]:sd t6, 552(ra)<br>   |
|  99|[0x80002528]<br>0x0001FFC000000800|- rs1_w1_val == 4292870143<br> - rs1_w0_val == 67108864<br>                                                                                                                  |[0x80000e20]:SRL32_U t6, t5, t4<br> [0x80000e24]:sd t6, 560(ra)<br>   |
