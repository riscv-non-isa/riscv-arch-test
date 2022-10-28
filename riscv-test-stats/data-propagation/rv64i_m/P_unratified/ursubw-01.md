
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800017b0')]      |
| SIG_REGION                | [('0x80003210', '0x80003670', '140 dwords')]      |
| COV_LABELS                | ursubw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ursubw-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 139      |
| STAT1                     | 135      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001704]:URSUBW t6, t5, t4
      [0x80001708]:sd t6, 808(ra)
 -- Signature Address: 0x80003640 Data: 0x00000000003FE000
 -- Redundant Coverpoints hit by the op
      - opcode : ursubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 4096
      - rs2_w0_val == 16384
      - rs1_w1_val == 16384
      - rs1_w0_val == 8388608




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000172c]:URSUBW t6, t5, t4
      [0x80001730]:sd t6, 816(ra)
 -- Signature Address: 0x80003648 Data: 0xFFFFFFFFFFC00008
 -- Redundant Coverpoints hit by the op
      - opcode : ursubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 2863311530
      - rs2_w0_val == 8388608
      - rs1_w1_val == 536870912




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001750]:URSUBW t6, t5, t4
      [0x80001754]:sd t6, 824(ra)
 -- Signature Address: 0x80003650 Data: 0x000000007FFFFFF9
 -- Redundant Coverpoints hit by the op
      - opcode : ursubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 4261412863
      - rs1_w1_val == 4294963199
      - rs1_w0_val == 4294967294




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000179c]:URSUBW t6, t5, t4
      [0x800017a0]:sd t6, 840(ra)
 -- Signature Address: 0x80003660 Data: 0x000000007FFFF7FF
 -- Redundant Coverpoints hit by the op
      - opcode : ursubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 4294967291
      - rs2_w0_val == 2048
      - rs1_w1_val == 4
      - rs1_w0_val == 4294965247






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

|s.no|            signature             |                                                                                        coverpoints                                                                                         |                                 code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : ursubw<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs2_w1_val == 4294443007<br> - rs1_w1_val == 4294443007<br>                                   |[0x800003b0]:URSUBW s2, a6, a6<br> [0x800003b4]:sd s2, 0(gp)<br>      |
|   2|[0x80003218]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br> - rs2_w1_val == 2863311530<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == 2863311530<br> - rs1_w0_val == 8388608<br> |[0x800003d8]:URSUBW s10, s10, s10<br> [0x800003dc]:sd s10, 8(gp)<br>  |
|   3|[0x80003220]<br>0xFFFFFFFFFFFFFFC4|- rs1 : x18<br> - rs2 : x6<br> - rd : x25<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 128<br> - rs1_w0_val == 8<br>                    |[0x800003fc]:URSUBW s9, s2, t1<br> [0x80000400]:sd s9, 16(gp)<br>     |
|   4|[0x80003228]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x11<br> - rd : x27<br> - rs1 == rd != rs2<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 16384<br> - rs1_w0_val == 16384<br>                                    |[0x80000424]:URSUBW s11, s11, a1<br> [0x80000428]:sd s11, 24(gp)<br>  |
|   5|[0x80003230]<br>0x000000001FFFF800|- rs1 : x2<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd != rs1<br> - rs2_w1_val == 3221225471<br> - rs2_w0_val == 4096<br> - rs1_w1_val == 4294963199<br> - rs1_w0_val == 1073741824<br>    |[0x8000044c]:URSUBW tp, sp, tp<br> [0x80000450]:sd tp, 32(gp)<br>     |
|   6|[0x80003238]<br>0xFFFFFFFFD5557555|- rs1 : x19<br> - rs2 : x22<br> - rd : x7<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 1431655765<br>                                                                                 |[0x8000047c]:URSUBW t2, s3, s6<br> [0x80000480]:sd t2, 40(gp)<br>     |
|   7|[0x80003240]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x7<br> - rd : x23<br> - rs2_w1_val == 4026531839<br> - rs2_w0_val == 8192<br> - rs1_w0_val == 8192<br>                                                              |[0x800004a4]:URSUBW s7, a5, t2<br> [0x800004a8]:sd s7, 48(gp)<br>     |
|   8|[0x80003248]<br>0x000000000000007F|- rs1 : x28<br> - rs2 : x31<br> - rd : x16<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 4294967039<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 4294967294<br>                    |[0x800004c8]:URSUBW a6, t3, t6<br> [0x800004cc]:sd a6, 56(gp)<br>     |
|   9|[0x80003250]<br>0xFFFFFFFF80000204|- rs1 : x10<br> - rs2 : x27<br> - rd : x24<br> - rs2_w1_val == 4227858431<br> - rs2_w0_val == 4294967287<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 1024<br>                        |[0x800004ec]:URSUBW s8, a0, s11<br> [0x800004f0]:sd s8, 64(gp)<br>    |
|  10|[0x80003258]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x29<br> - rd : x0<br> - rs2_w1_val == 4261412863<br>                                                                                                                |[0x80000510]:URSUBW zero, a2, t4<br> [0x80000514]:sd zero, 72(gp)<br> |
|  11|[0x80003260]<br>0x000000007FFFFEFD|- rs1 : x17<br> - rs2 : x12<br> - rd : x2<br> - rs2_w1_val == 4278190079<br> - rs2_w0_val == 4<br> - rs1_w1_val == 4294966271<br> - rs1_w0_val == 4294966783<br>                            |[0x80000534]:URSUBW sp, a7, a2<br> [0x80000538]:sd sp, 80(gp)<br>     |
|  12|[0x80003268]<br>0xFFFFFFFF80000804|- rs1 : x5<br> - rs2 : x25<br> - rd : x1<br> - rs2_w1_val == 4286578687<br> - rs2_w0_val == 4294963199<br> - rs1_w1_val == 0<br>                                                            |[0x80000554]:URSUBW ra, t0, s9<br> [0x80000558]:sd ra, 88(gp)<br>     |
|  13|[0x80003270]<br>0x000000007FFFFDFC|- rs1 : x29<br> - rs2 : x13<br> - rd : x17<br> - rs2_w1_val == 4290772991<br> - rs1_w1_val == 128<br> - rs1_w0_val == 4294966271<br>                                                        |[0x80000578]:URSUBW a7, t4, a3<br> [0x8000057c]:sd a7, 96(gp)<br>     |
|  14|[0x80003278]<br>0xFFFFFFFF80800005|- rs1 : x22<br> - rs2 : x21<br> - rd : x10<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 4278190079<br> - rs1_w1_val == 8388608<br>                                                    |[0x8000059c]:URSUBW a0, s6, s5<br> [0x800005a0]:sd a0, 104(gp)<br>    |
|  15|[0x80003280]<br>0x000000000007FC00|- rs1 : x1<br> - rs2 : x10<br> - rd : x28<br> - rs2_w1_val == 4293918719<br> - rs2_w0_val == 4293918719<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 4294965247<br>                        |[0x800005d0]:URSUBW t3, ra, a0<br> [0x800005d4]:sd t3, 112(gp)<br>    |
|  16|[0x80003288]<br>0xFFFFFFFFE0000000|- rs1 : x4<br> - rs2 : x19<br> - rd : x20<br> - rs2_w1_val == 4294705151<br> - rs2_w0_val == 4294967295<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 3221225471<br>                       |[0x800005f4]:URSUBW s4, tp, s3<br> [0x800005f8]:sd s4, 120(gp)<br>    |
|  17|[0x80003290]<br>0x000000003FFFFFC0|- rs1 : x20<br> - rs2 : x1<br> - rd : x8<br> - rs2_w1_val == 4294836223<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == 4294965247<br> - rs1_w0_val == 4294967167<br>                    |[0x80000618]:URSUBW fp, s4, ra<br> [0x8000061c]:sd fp, 128(gp)<br>    |
|  18|[0x80003298]<br>0xFFFFFFFF80008003|- rs1 : x30<br> - rs2 : x20<br> - rd : x13<br> - rs2_w1_val == 4294901759<br> - rs2_w0_val == 4294901759<br>                                                                                |[0x80000648]:URSUBW a3, t5, s4<br> [0x8000064c]:sd a3, 0(tp)<br>      |
|  19|[0x800032a0]<br>0x000000007FFFDFFF|- rs1 : x31<br> - rs2 : x2<br> - rd : x9<br> - rs2_w1_val == 4294934527<br> - rs2_w0_val == 1<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 4294950911<br>                                |[0x80000678]:URSUBW s1, t6, sp<br> [0x8000067c]:sd s1, 8(tp)<br>      |
|  20|[0x800032a8]<br>0xFFFFFFFF88000040|- rs1 : x24<br> - rs2 : x23<br> - rd : x19<br> - rs2_w1_val == 4294950911<br> - rs2_w0_val == 4294967167<br> - rs1_w0_val == 268435456<br>                                                  |[0x80000698]:URSUBW s3, s8, s7<br> [0x8000069c]:sd s3, 16(tp)<br>     |
|  21|[0x800032b0]<br>0xFFFFFFFFE0000001|- rs1 : x3<br> - rs2 : x17<br> - rd : x30<br> - rs2_w1_val == 4294959103<br> - rs2_w0_val == 1073741824<br> - rs1_w1_val == 512<br> - rs1_w0_val == 2<br>                                   |[0x800006b8]:URSUBW t5, gp, a7<br> [0x800006bc]:sd t5, 24(tp)<br>     |
|  22|[0x800032b8]<br>0xFFFFFFFFF4000000|- rs1 : x9<br> - rs2 : x18<br> - rd : x21<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 4294705151<br> - rs1_w0_val == 134217728<br>                     |[0x800006d8]:URSUBW s5, s1, s2<br> [0x800006dc]:sd s5, 32(tp)<br>     |
|  23|[0x800032c0]<br>0x000000007FFFBFFE|- rs1 : x14<br> - rs2 : x9<br> - rd : x22<br> - rs2_w1_val == 4294965247<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 4294934527<br>                                                        |[0x80000700]:URSUBW s6, a4, s1<br> [0x80000704]:sd s6, 40(tp)<br>     |
|  24|[0x800032c8]<br>0x0000000000000040|- rs1 : x13<br> - rs2 : x0<br> - rd : x14<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 4294967263<br> - rs1_w0_val == 128<br>                                            |[0x80000724]:URSUBW a4, a3, zero<br> [0x80000728]:sd a4, 48(tp)<br>   |
|  25|[0x800032d0]<br>0x000000007FF7FFEF|- rs1 : x21<br> - rs2 : x24<br> - rd : x11<br> - rs2_w1_val == 4294966783<br> - rs2_w0_val == 32<br> - rs1_w1_val == 2<br> - rs1_w0_val == 4293918719<br>                                   |[0x80000748]:URSUBW a1, s5, s8<br> [0x8000074c]:sd a1, 56(tp)<br>     |
|  26|[0x800032d8]<br>0x000000003FFFFFF6|- rs1 : x11<br> - rs2 : x28<br> - rd : x12<br> - rs2_w1_val == 4294967039<br> - rs1_w1_val == 4<br> - rs1_w0_val == 2147483647<br>                                                          |[0x80000768]:URSUBW a2, a1, t3<br> [0x8000076c]:sd a2, 64(tp)<br>     |
|  27|[0x800032e0]<br>0x00000000001FFFF7|- rs1 : x23<br> - rs2 : x30<br> - rd : x15<br> - rs2_w1_val == 4294967167<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 4194304<br>                                                       |[0x8000078c]:URSUBW a5, s7, t5<br> [0x80000790]:sd a5, 72(tp)<br>     |
|  28|[0x800032e8]<br>0xFFFFFFFF80004200|- rs1 : x6<br> - rs2 : x14<br> - rd : x31<br> - rs2_w1_val == 4294967231<br> - rs2_w0_val == 4294934527<br>                                                                                 |[0x800007b0]:URSUBW t6, t1, a4<br> [0x800007b4]:sd t6, 80(tp)<br>     |
|  29|[0x800032f0]<br>0xFFFFFFFFAAAEAAAB|- rs1 : x8<br> - rs2 : x15<br> - rd : x29<br> - rs2_w1_val == 4294967263<br> - rs2_w0_val == 4294443007<br> - rs1_w0_val == 1431655765<br>                                                  |[0x800007d8]:URSUBW t4, fp, a5<br> [0x800007dc]:sd t4, 88(tp)<br>     |
|  30|[0x800032f8]<br>0x0000000000000004|- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br> - rs2_w1_val == 4294967279<br> - rs1_w1_val == 4294967291<br>                                                                                   |[0x800007f8]:URSUBW t1, t2, t0<br> [0x800007fc]:sd t1, 96(tp)<br>     |
|  31|[0x80003300]<br>0x000000007FFF7FF7|- rs1 : x25<br> - rs2 : x8<br> - rd : x5<br> - rs2_w1_val == 4294967287<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 4294901759<br>                                                      |[0x80000824]:URSUBW t0, s9, fp<br> [0x80000828]:sd t0, 104(tp)<br>    |
|  32|[0x80003308]<br>0xFFFFFFFFFFFFFC00|- rs1 : x0<br> - rs1_w0_val == 0<br> - rs2_w1_val == 4294967291<br> - rs2_w0_val == 2048<br>                                                                                                |[0x8000084c]:URSUBW t6, zero, ra<br> [0x80000850]:sd t6, 112(tp)<br>  |
|  33|[0x80003310]<br>0x0000000055554555|- rs2 : x3<br> - rs2_w1_val == 4294967293<br> - rs1_w1_val == 16<br> - rs1_w0_val == 2863311530<br>                                                                                         |[0x80000870]:URSUBW s10, a1, gp<br> [0x80000874]:sd s10, 120(tp)<br>  |
|  34|[0x80003318]<br>0x000000007FEFFFF6|- rd : x3<br> - rs2_w1_val == 4294967294<br> - rs1_w0_val == 4292870143<br>                                                                                                                 |[0x8000089c]:URSUBW gp, a1, a2<br> [0x800008a0]:sd gp, 0(ra)<br>      |
|  35|[0x80003320]<br>0xFFFFFFFFFFFFE004|- rs2_w1_val == 2147483648<br>                                                                                                                                                              |[0x800008c0]:URSUBW t6, t5, t4<br> [0x800008c4]:sd t6, 8(ra)<br>      |
|  36|[0x80003328]<br>0x00000000000000FE|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 4294966783<br> - rs1_w1_val == 32<br> - rs1_w0_val == 4294967291<br>                                                                         |[0x800008e4]:URSUBW t6, t5, t4<br> [0x800008e8]:sd t6, 16(ra)<br>     |
|  37|[0x80003330]<br>0xFFFFFFFF80010007|- rs2_w1_val == 536870912<br> - rs2_w0_val == 4294836223<br> - rs1_w1_val == 2048<br>                                                                                                       |[0x80000910]:URSUBW t6, t5, t4<br> [0x80000914]:sd t6, 24(ra)<br>     |
|  38|[0x80003338]<br>0x000000007FFFFFFA|- rs2_w1_val == 268435456<br> - rs1_w1_val == 4294934527<br> - rs1_w0_val == 4294967293<br>                                                                                                 |[0x80000930]:URSUBW t6, t5, t4<br> [0x80000934]:sd t6, 32(ra)<br>     |
|  39|[0x80003340]<br>0xFFFFFFFFFFFFF002|- rs2_w1_val == 134217728<br> - rs1_w0_val == 4<br>                                                                                                                                         |[0x80000958]:URSUBW t6, t5, t4<br> [0x8000095c]:sd t6, 40(ra)<br>     |
|  40|[0x80003348]<br>0xFFFFFFFFC0100000|- rs2_w1_val == 67108864<br> - rs2_w0_val == 4292870143<br> - rs1_w1_val == 4293918719<br> - rs1_w0_val == 2147483648<br>                                                                   |[0x80000980]:URSUBW t6, t5, t4<br> [0x80000984]:sd t6, 48(ra)<br>     |
|  41|[0x80003350]<br>0xFFFFFFFF80001100|- rs2_w1_val == 33554432<br> - rs2_w0_val == 4294959103<br> - rs1_w0_val == 512<br>                                                                                                         |[0x800009ac]:URSUBW t6, t5, t4<br> [0x800009b0]:sd t6, 56(ra)<br>     |
|  42|[0x80003358]<br>0xFFFFFFFF90000080|- rs2_w1_val == 16777216<br> - rs2_w0_val == 3758096383<br> - rs1_w1_val == 4294967167<br> - rs1_w0_val == 256<br>                                                                          |[0x800009d0]:URSUBW t6, t5, t4<br> [0x800009d4]:sd t6, 64(ra)<br>     |
|  43|[0x80003360]<br>0xFFFFFFFF80020040|- rs2_w1_val == 8388608<br> - rs1_w1_val == 4261412863<br> - rs1_w0_val == 262144<br>                                                                                                       |[0x800009fc]:URSUBW t6, t5, t4<br> [0x80000a00]:sd t6, 72(ra)<br>     |
|  44|[0x80003368]<br>0xFFFFFFFFFF800005|- rs2_w1_val == 4194304<br> - rs2_w0_val == 16777216<br> - rs1_w1_val == 65536<br>                                                                                                          |[0x80000a1c]:URSUBW t6, t5, t4<br> [0x80000a20]:sd t6, 80(ra)<br>     |
|  45|[0x80003370]<br>0xFFFFFFFF800C0000|- rs2_w1_val == 2097152<br> - rs1_w1_val == 3221225471<br> - rs1_w0_val == 1048576<br>                                                                                                      |[0x80000a50]:URSUBW t6, t5, t4<br> [0x80000a54]:sd t6, 88(ra)<br>     |
|  46|[0x80003378]<br>0xFFFFFFFFFFE00010|- rs2_w1_val == 1048576<br> - rs2_w0_val == 4194304<br> - rs1_w0_val == 32<br>                                                                                                              |[0x80000a70]:URSUBW t6, t5, t4<br> [0x80000a74]:sd t6, 96(ra)<br>     |
|  47|[0x80003380]<br>0xFFFFFFFFFFFFFF87|- rs2_w1_val == 524288<br> - rs2_w0_val == 256<br> - rs1_w1_val == 4278190079<br>                                                                                                           |[0x80000a94]:URSUBW t6, t5, t4<br> [0x80000a98]:sd t6, 104(ra)<br>    |
|  48|[0x80003388]<br>0xFFFFFFFFA0000008|- rs2_w1_val == 262144<br> - rs2_w0_val == 3221225471<br> - rs1_w0_val == 16<br>                                                                                                            |[0x80000ab8]:URSUBW t6, t5, t4<br> [0x80000abc]:sd t6, 112(ra)<br>    |
|  49|[0x80003390]<br>0x00000000000007FF|- rs1_w0_val == 4096<br>                                                                                                                                                                    |[0x80000ae4]:URSUBW t6, t5, t4<br> [0x80000ae8]:sd t6, 120(ra)<br>    |
|  50|[0x80003398]<br>0xFFFFFFFFFFFF8400|- rs2_w1_val == 8192<br> - rs2_w0_val == 65536<br> - rs1_w0_val == 2048<br>                                                                                                                 |[0x80000b0c]:URSUBW t6, t5, t4<br> [0x80000b10]:sd t6, 128(ra)<br>    |
|  51|[0x800033a0]<br>0x000000000000001E|- rs1_w1_val == 1431655765<br> - rs1_w0_val == 64<br>                                                                                                                                       |[0x80000b34]:URSUBW t6, t5, t4<br> [0x80000b38]:sd t6, 136(ra)<br>    |
|  52|[0x800033a8]<br>0xFFFFFFFFA0000001|- rs1_w1_val == 4294967293<br> - rs1_w0_val == 1<br>                                                                                                                                        |[0x80000b54]:URSUBW t6, t5, t4<br> [0x80000b58]:sd t6, 144(ra)<br>    |
|  53|[0x800033b0]<br>0x0000000000000020|- rs2_w0_val == 4294967231<br> - rs1_w0_val == 4294967295<br>                                                                                                                               |[0x80000b74]:URSUBW t6, t5, t4<br> [0x80000b78]:sd t6, 152(ra)<br>    |
|  54|[0x800033b8]<br>0xFFFFFFFF80000029|- rs2_w1_val == 131072<br>                                                                                                                                                                  |[0x80000b98]:URSUBW t6, t5, t4<br> [0x80000b9c]:sd t6, 160(ra)<br>    |
|  55|[0x800033c0]<br>0x000000000000003A|- rs2_w1_val == 65536<br>                                                                                                                                                                   |[0x80000bb8]:URSUBW t6, t5, t4<br> [0x80000bbc]:sd t6, 168(ra)<br>    |
|  56|[0x800033c8]<br>0x0000000000000200|- rs2_w1_val == 32768<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 262144<br>                                                                                                               |[0x80000be0]:URSUBW t6, t5, t4<br> [0x80000be4]:sd t6, 176(ra)<br>    |
|  57|[0x800033d0]<br>0xFFFFFFFFFF820000|- rs2_w1_val == 16384<br>                                                                                                                                                                   |[0x80000c00]:URSUBW t6, t5, t4<br> [0x80000c04]:sd t6, 184(ra)<br>    |
|  58|[0x800033d8]<br>0xFFFFFFFFA0002000|- rs2_w1_val == 4096<br> - rs2_w0_val == 4294950911<br> - rs1_w1_val == 4294967287<br>                                                                                                      |[0x80000c20]:URSUBW t6, t5, t4<br> [0x80000c24]:sd t6, 192(ra)<br>    |
|  59|[0x800033e0]<br>0x000000002AAA8AAA|- rs2_w1_val == 2048<br> - rs2_w0_val == 2863311530<br>                                                                                                                                     |[0x80000c50]:URSUBW t6, t5, t4<br> [0x80000c54]:sd t6, 200(ra)<br>    |
|  60|[0x800033e8]<br>0x00000000000001F8|- rs2_w1_val == 1024<br>                                                                                                                                                                    |[0x80000c70]:URSUBW t6, t5, t4<br> [0x80000c74]:sd t6, 208(ra)<br>    |
|  61|[0x800033f0]<br>0x000000007FFFFFFD|- rs2_w1_val == 512<br> - rs1_w1_val == 33554432<br>                                                                                                                                        |[0x80000c94]:URSUBW t6, t5, t4<br> [0x80000c98]:sd t6, 216(ra)<br>    |
|  62|[0x800033f8]<br>0x000000007DFFFFFD|- rs2_w1_val == 256<br> - rs2_w0_val == 67108864<br>                                                                                                                                        |[0x80000cb8]:URSUBW t6, t5, t4<br> [0x80000cbc]:sd t6, 224(ra)<br>    |
|  63|[0x80003400]<br>0xFFFFFFFFFF800000|- rs2_w1_val == 128<br>                                                                                                                                                                     |[0x80000cd4]:URSUBW t6, t5, t4<br> [0x80000cd8]:sd t6, 232(ra)<br>    |
|  64|[0x80003408]<br>0xFFFFFFFF800A0000|- rs2_w1_val == 64<br> - rs1_w1_val == 64<br>                                                                                                                                               |[0x80000cf8]:URSUBW t6, t5, t4<br> [0x80000cfc]:sd t6, 240(ra)<br>    |
|  65|[0x80003410]<br>0xFFFFFFFFFFF01000|- rs2_w1_val == 32<br> - rs2_w0_val == 2097152<br> - rs1_w1_val == 4292870143<br>                                                                                                           |[0x80000d20]:URSUBW t6, t5, t4<br> [0x80000d24]:sd t6, 248(ra)<br>    |
|  66|[0x80003418]<br>0xFFFFFFFF80008001|- rs2_w1_val == 16<br> - rs1_w1_val == 1<br>                                                                                                                                                |[0x80000d44]:URSUBW t6, t5, t4<br> [0x80000d48]:sd t6, 256(ra)<br>    |
|  67|[0x80003420]<br>0x0000000000000009|- rs2_w1_val == 8<br>                                                                                                                                                                       |[0x80000d64]:URSUBW t6, t5, t4<br> [0x80000d68]:sd t6, 264(ra)<br>    |
|  68|[0x80003428]<br>0xFFFFFFFFAAAB2AAB|- rs2_w1_val == 4<br>                                                                                                                                                                       |[0x80000d8c]:URSUBW t6, t5, t4<br> [0x80000d90]:sd t6, 272(ra)<br>    |
|  69|[0x80003430]<br>0x0000000000000005|- rs2_w1_val == 2<br>                                                                                                                                                                       |[0x80000dac]:URSUBW t6, t5, t4<br> [0x80000db0]:sd t6, 280(ra)<br>    |
|  70|[0x80003438]<br>0xFFFFFFFF80000081|- rs2_w1_val == 1<br> - rs1_w1_val == 4294967295<br>                                                                                                                                        |[0x80000dcc]:URSUBW t6, t5, t4<br> [0x80000dd0]:sd t6, 288(ra)<br>    |
|  71|[0x80003440]<br>0x000000000003FFFC|- rs2_w1_val == 4294967295<br> - rs2_w0_val == 8<br> - rs1_w0_val == 524288<br>                                                                                                             |[0x80000dec]:URSUBW t6, t5, t4<br> [0x80000df0]:sd t6, 296(ra)<br>    |
|  72|[0x80003448]<br>0xFFFFFFFFFFFC0007|- rs2_w0_val == 524288<br>                                                                                                                                                                  |[0x80000e04]:URSUBW t6, t5, t4<br> [0x80000e08]:sd t6, 304(ra)<br>    |
|  73|[0x80003450]<br>0x0000000007FFFFC0|- rs2_w0_val == 4026531839<br>                                                                                                                                                              |[0x80000e28]:URSUBW t6, t5, t4<br> [0x80000e2c]:sd t6, 312(ra)<br>    |
|  74|[0x80003458]<br>0xFFFFFFFF85000000|- rs2_w0_val == 4160749567<br> - rs1_w0_val == 33554432<br>                                                                                                                                 |[0x80000e4c]:URSUBW t6, t5, t4<br> [0x80000e50]:sd t6, 320(ra)<br>    |
|  75|[0x80003460]<br>0xFFFFFFFF82002000|- rs2_w0_val == 4227858431<br>                                                                                                                                                              |[0x80000e68]:URSUBW t6, t5, t4<br> [0x80000e6c]:sd t6, 328(ra)<br>    |
|  76|[0x80003468]<br>0xFFFFFFFF80400001|- rs2_w0_val == 4286578687<br>                                                                                                                                                              |[0x80000e8c]:URSUBW t6, t5, t4<br> [0x80000e90]:sd t6, 336(ra)<br>    |
|  77|[0x80003470]<br>0xFFFFFFFFAACAAAAB|- rs2_w0_val == 4290772991<br>                                                                                                                                                              |[0x80000eb8]:URSUBW t6, t5, t4<br> [0x80000ebc]:sd t6, 344(ra)<br>    |
|  78|[0x80003478]<br>0x000000000001FFFC|- rs2_w0_val == 4294705151<br> - rs1_w0_val == 4294967287<br>                                                                                                                               |[0x80000edc]:URSUBW t6, t5, t4<br> [0x80000ee0]:sd t6, 352(ra)<br>    |
|  79|[0x80003480]<br>0xFFFFFFFF80000408|- rs2_w0_val == 4294965247<br> - rs1_w1_val == 1024<br>                                                                                                                                     |[0x80000f00]:URSUBW t6, t5, t4<br> [0x80000f04]:sd t6, 360(ra)<br>    |
|  80|[0x80003488]<br>0xFFFFFFFF80020200|- rs2_w0_val == 4294966271<br>                                                                                                                                                              |[0x80000f20]:URSUBW t6, t5, t4<br> [0x80000f24]:sd t6, 368(ra)<br>    |
|  81|[0x80003490]<br>0xFFFFFFFFFFFFFFF0|- rs2_w0_val == 4294967263<br> - rs1_w1_val == 8<br> - rs1_w0_val == 4294967231<br>                                                                                                         |[0x80000f40]:URSUBW t6, t5, t4<br> [0x80000f44]:sd t6, 376(ra)<br>    |
|  82|[0x80003498]<br>0xFFFFFFFF80000011|- rs2_w0_val == 4294967279<br>                                                                                                                                                              |[0x80000f60]:URSUBW t6, t5, t4<br> [0x80000f64]:sd t6, 384(ra)<br>    |
|  83|[0x800034a0]<br>0xFFFFFFFF80000082|- rs2_w0_val == 4294967291<br>                                                                                                                                                              |[0x80000f80]:URSUBW t6, t5, t4<br> [0x80000f84]:sd t6, 392(ra)<br>    |
|  84|[0x800034a8]<br>0xFFFFFFFFFF800001|- rs2_w0_val == 4294967293<br> - rs1_w0_val == 4278190079<br>                                                                                                                               |[0x80000fa8]:URSUBW t6, t5, t4<br> [0x80000fac]:sd t6, 400(ra)<br>    |
|  85|[0x800034b0]<br>0xFFFFFFFF82000001|- rs2_w0_val == 4294967294<br> - rs1_w0_val == 67108864<br>                                                                                                                                 |[0x80000fc4]:URSUBW t6, t5, t4<br> [0x80000fc8]:sd t6, 408(ra)<br>    |
|  86|[0x800034b8]<br>0xFFFFFFFFFFFFFFF0|- rs2_w0_val == 64<br> - rs1_w1_val == 4026531839<br>                                                                                                                                       |[0x80000fe8]:URSUBW t6, t5, t4<br> [0x80000fec]:sd t6, 416(ra)<br>    |
|  87|[0x800034c0]<br>0x00000000000000F8|- rs2_w0_val == 16<br>                                                                                                                                                                      |[0x8000100c]:URSUBW t6, t5, t4<br> [0x80001010]:sd t6, 424(ra)<br>    |
|  88|[0x800034c8]<br>0x0000000000000003|- rs2_w0_val == 2<br>                                                                                                                                                                       |[0x80001030]:URSUBW t6, t5, t4<br> [0x80001034]:sd t6, 432(ra)<br>    |
|  89|[0x800034d0]<br>0x0000000000100000|- rs1_w0_val == 2097152<br>                                                                                                                                                                 |[0x8000104c]:URSUBW t6, t5, t4<br> [0x80001050]:sd t6, 440(ra)<br>    |
|  90|[0x800034d8]<br>0x000000006FFFFFFF|- rs1_w1_val == 3758096383<br> - rs1_w0_val == 3758096383<br>                                                                                                                               |[0x80001078]:URSUBW t6, t5, t4<br> [0x8000107c]:sd t6, 448(ra)<br>    |
|  91|[0x800034e0]<br>0xFFFFFFFF80008100|- rs1_w1_val == 4160749567<br>                                                                                                                                                              |[0x800010a0]:URSUBW t6, t5, t4<br> [0x800010a4]:sd t6, 456(ra)<br>    |
|  92|[0x800034e8]<br>0x0000000000000001|- rs1_w1_val == 4227858431<br>                                                                                                                                                              |[0x800010c8]:URSUBW t6, t5, t4<br> [0x800010cc]:sd t6, 464(ra)<br>    |
|  93|[0x800034f0]<br>0x0000000000000000|- rs1_w1_val == 4286578687<br>                                                                                                                                                              |[0x800010f0]:URSUBW t6, t5, t4<br> [0x800010f4]:sd t6, 472(ra)<br>    |
|  94|[0x800034f8]<br>0x0000000000003FFF|- rs1_w1_val == 4290772991<br> - rs1_w0_val == 32768<br>                                                                                                                                    |[0x80001118]:URSUBW t6, t5, t4<br> [0x8000111c]:sd t6, 480(ra)<br>    |
|  95|[0x80003500]<br>0x000000000FFC0000|- rs1_w0_val == 536870912<br>                                                                                                                                                               |[0x80001138]:URSUBW t6, t5, t4<br> [0x8000113c]:sd t6, 488(ra)<br>    |
|  96|[0x80003508]<br>0xFFFFFFFF80801000|- rs1_w1_val == 4294836223<br>                                                                                                                                                              |[0x80001164]:URSUBW t6, t5, t4<br> [0x80001168]:sd t6, 496(ra)<br>    |
|  97|[0x80003510]<br>0x0000000000100000|- rs1_w1_val == 4294901759<br>                                                                                                                                                              |[0x80001188]:URSUBW t6, t5, t4<br> [0x8000118c]:sd t6, 504(ra)<br>    |
|  98|[0x80003518]<br>0x00000000007FFE00|- rs1_w1_val == 4294950911<br> - rs1_w0_val == 16777216<br>                                                                                                                                 |[0x800011a8]:URSUBW t6, t5, t4<br> [0x800011ac]:sd t6, 512(ra)<br>    |
|  99|[0x80003520]<br>0x00000000003FF800|- rs1_w1_val == 4294959103<br> - rs1_w0_val == 4294963199<br>                                                                                                                               |[0x800011d4]:URSUBW t6, t5, t4<br> [0x800011d8]:sd t6, 520(ra)<br>    |
| 100|[0x80003528]<br>0x000000003FFFFFFF|- rs1_w1_val == 4294966783<br>                                                                                                                                                              |[0x800011f4]:URSUBW t6, t5, t4<br> [0x800011f8]:sd t6, 528(ra)<br>    |
| 101|[0x80003530]<br>0x000000000007FFFA|- rs1_w1_val == 4294967039<br>                                                                                                                                                              |[0x80001214]:URSUBW t6, t5, t4<br> [0x80001218]:sd t6, 536(ra)<br>    |
| 102|[0x80003538]<br>0x0000000000000000|- rs1_w1_val == 4294967231<br>                                                                                                                                                              |[0x80001238]:URSUBW t6, t5, t4<br> [0x8000123c]:sd t6, 544(ra)<br>    |
| 103|[0x80003540]<br>0xFFFFFFFFE0000002|- rs1_w1_val == 4294967279<br>                                                                                                                                                              |[0x80001254]:URSUBW t6, t5, t4<br> [0x80001258]:sd t6, 552(ra)<br>    |
| 104|[0x80003548]<br>0xFFFFFFFFFC000008|- rs2_w0_val == 134217728<br> - rs1_w1_val == 4294967294<br>                                                                                                                                |[0x80001278]:URSUBW t6, t5, t4<br> [0x8000127c]:sd t6, 560(ra)<br>    |
| 105|[0x80003550]<br>0x0000000000000000|- rs1_w1_val == 2147483648<br>                                                                                                                                                              |[0x80001298]:URSUBW t6, t5, t4<br> [0x8000129c]:sd t6, 568(ra)<br>    |
| 106|[0x80003558]<br>0x0000000000000FF7|- rs1_w1_val == 1073741824<br>                                                                                                                                                              |[0x800012bc]:URSUBW t6, t5, t4<br> [0x800012c0]:sd t6, 576(ra)<br>    |
| 107|[0x80003560]<br>0xFFFFFFFF80020007|- rs1_w1_val == 256<br>                                                                                                                                                                     |[0x800012e0]:URSUBW t6, t5, t4<br> [0x800012e4]:sd t6, 584(ra)<br>    |
| 108|[0x80003568]<br>0x0000000073FFFFFF|- rs1_w0_val == 4026531839<br>                                                                                                                                                              |[0x80001300]:URSUBW t6, t5, t4<br> [0x80001304]:sd t6, 592(ra)<br>    |
| 109|[0x80003570]<br>0x000000007BFFFFFF|- rs1_w0_val == 4160749567<br>                                                                                                                                                              |[0x80001320]:URSUBW t6, t5, t4<br> [0x80001324]:sd t6, 600(ra)<br>    |
| 110|[0x80003578]<br>0xFFFFFFFFFE000010|- rs1_w0_val == 4227858431<br>                                                                                                                                                              |[0x8000133c]:URSUBW t6, t5, t4<br> [0x80001340]:sd t6, 608(ra)<br>    |
| 111|[0x80003580]<br>0x000000007EFFFFFC|- rs1_w0_val == 4261412863<br>                                                                                                                                                              |[0x80001364]:URSUBW t6, t5, t4<br> [0x80001368]:sd t6, 616(ra)<br>    |
| 112|[0x80003588]<br>0x000000007FFFF7F7|- rs1_w1_val == 8192<br>                                                                                                                                                                    |[0x80001390]:URSUBW t6, t5, t4<br> [0x80001394]:sd t6, 624(ra)<br>    |
| 113|[0x80003590]<br>0x000000007F9FFFFF|- rs1_w0_val == 4286578687<br>                                                                                                                                                              |[0x800013b8]:URSUBW t6, t5, t4<br> [0x800013bc]:sd t6, 632(ra)<br>    |
| 114|[0x80003598]<br>0x000000007F9FFFFF|- rs1_w0_val == 4290772991<br>                                                                                                                                                              |[0x800013e4]:URSUBW t6, t5, t4<br> [0x800013e8]:sd t6, 640(ra)<br>    |
| 115|[0x800035a0]<br>0xFFFFFFFFFFFFC008|- rs2_w0_val == 32768<br> - rs1_w1_val == 536870912<br>                                                                                                                                     |[0x80001404]:URSUBW t6, t5, t4<br> [0x80001408]:sd t6, 648(ra)<br>    |
| 116|[0x800035a8]<br>0xFFFFFFFFA0000004|- rs1_w1_val == 524288<br>                                                                                                                                                                  |[0x80001428]:URSUBW t6, t5, t4<br> [0x8000142c]:sd t6, 656(ra)<br>    |
| 117|[0x800035b0]<br>0x00000000001C0000|- rs1_w0_val == 4294443007<br>                                                                                                                                                              |[0x80001450]:URSUBW t6, t5, t4<br> [0x80001454]:sd t6, 664(ra)<br>    |
| 118|[0x800035b8]<br>0xFFFFFFFFFFFE8000|- rs1_w0_val == 4294705151<br>                                                                                                                                                              |[0x8000147c]:URSUBW t6, t5, t4<br> [0x80001480]:sd t6, 672(ra)<br>    |
| 119|[0x800035c0]<br>0x0000000001FF0000|- rs1_w0_val == 4294836223<br>                                                                                                                                                              |[0x800014a0]:URSUBW t6, t5, t4<br> [0x800014a4]:sd t6, 680(ra)<br>    |
| 120|[0x800035c8]<br>0xFFFFFFFFFFFFF800|- rs1_w0_val == 4294959103<br>                                                                                                                                                              |[0x800014d0]:URSUBW t6, t5, t4<br> [0x800014d4]:sd t6, 688(ra)<br>    |
| 121|[0x800035d0]<br>0x000000000000FF80|- rs1_w1_val == 134217728<br> - rs1_w0_val == 4294967039<br>                                                                                                                                |[0x800014f8]:URSUBW t6, t5, t4<br> [0x800014fc]:sd t6, 696(ra)<br>    |
| 122|[0x800035d8]<br>0x000000003FFFFFDF|- rs2_w0_val == 2147483648<br>                                                                                                                                                              |[0x80001518]:URSUBW t6, t5, t4<br> [0x8000151c]:sd t6, 704(ra)<br>    |
| 123|[0x800035e0]<br>0x000000007FFFFF6F|- rs1_w0_val == 4294967263<br>                                                                                                                                                              |[0x8000153c]:URSUBW t6, t5, t4<br> [0x80001540]:sd t6, 712(ra)<br>    |
| 124|[0x800035e8]<br>0xFFFFFFFFF8002000|- rs2_w0_val == 268435456<br>                                                                                                                                                               |[0x8000155c]:URSUBW t6, t5, t4<br> [0x80001560]:sd t6, 720(ra)<br>    |
| 125|[0x800035f0]<br>0x00000000000007F8|- rs1_w0_val == 4294967279<br>                                                                                                                                                              |[0x80001584]:URSUBW t6, t5, t4<br> [0x80001588]:sd t6, 728(ra)<br>    |
| 126|[0x800035f8]<br>0x0000000054555555|- rs2_w0_val == 33554432<br>                                                                                                                                                                |[0x800015b8]:URSUBW t6, t5, t4<br> [0x800015bc]:sd t6, 736(ra)<br>    |
| 127|[0x80003600]<br>0x000000000001FFF0|- rs1_w1_val == 268435456<br>                                                                                                                                                               |[0x800015dc]:URSUBW t6, t5, t4<br> [0x800015e0]:sd t6, 744(ra)<br>    |
| 128|[0x80003608]<br>0x000000002AAAA2AA|- rs1_w1_val == 16777216<br>                                                                                                                                                                |[0x8000160c]:URSUBW t6, t5, t4<br> [0x80001610]:sd t6, 752(ra)<br>    |
| 129|[0x80003610]<br>0x000000007BF7FFFF|- rs2_w0_val == 1048576<br>                                                                                                                                                                 |[0x80001630]:URSUBW t6, t5, t4<br> [0x80001634]:sd t6, 760(ra)<br>    |
| 130|[0x80003618]<br>0xFFFFFFFFFFFE8000|- rs2_w0_val == 262144<br> - rs1_w0_val == 65536<br>                                                                                                                                        |[0x80001650]:URSUBW t6, t5, t4<br> [0x80001654]:sd t6, 768(ra)<br>    |
| 131|[0x80003620]<br>0xFFFFFFFFFFFFFF03|- rs2_w0_val == 512<br>                                                                                                                                                                     |[0x80001674]:URSUBW t6, t5, t4<br> [0x80001678]:sd t6, 776(ra)<br>    |
| 132|[0x80003628]<br>0x000000000000FFFD|- rs1_w0_val == 131072<br>                                                                                                                                                                  |[0x80001698]:URSUBW t6, t5, t4<br> [0x8000169c]:sd t6, 784(ra)<br>    |
| 133|[0x80003630]<br>0x0000000001FF0000|- rs1_w1_val == 16384<br>                                                                                                                                                                   |[0x800016c0]:URSUBW t6, t5, t4<br> [0x800016c4]:sd t6, 792(ra)<br>    |
| 134|[0x80003638]<br>0xFFFFFFFFFFFF0001|- rs2_w0_val == 131072<br>                                                                                                                                                                  |[0x800016e4]:URSUBW t6, t5, t4<br> [0x800016e8]:sd t6, 800(ra)<br>    |
| 135|[0x80003658]<br>0xFFFFFFFF81000040|- rs2_w1_val == 4294966271<br> - rs2_w0_val == 4261412863<br>                                                                                                                               |[0x80001774]:URSUBW t6, t5, t4<br> [0x80001778]:sd t6, 832(ra)<br>    |
