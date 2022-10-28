
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001800')]      |
| SIG_REGION                | [('0x80003210', '0x80003680', '142 dwords')]      |
| COV_LABELS                | uraddw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/uraddw-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 141      |
| STAT1                     | 138      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001014]:URADDW t6, t5, t4
      [0x80001018]:sd t6, 440(sp)
 -- Signature Address: 0x800034c0 Data: 0x0000000070000004
 -- Redundant Coverpoints hit by the op
      - opcode : uraddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 4294967039
      - rs1_w1_val == 2863311530
      - rs1_w0_val == 3758096383




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017a4]:URADDW t6, t5, t4
      [0x800017a8]:sd t6, 856(sp)
 -- Signature Address: 0x80003660 Data: 0x0000000000002000
 -- Redundant Coverpoints hit by the op
      - opcode : uraddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0
      - rs2_w1_val == 4294967263
      - rs2_w0_val == 16384
      - rs1_w1_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017f8]:URADDW t6, t5, t4
      [0x800017fc]:sd t6, 872(sp)
 -- Signature Address: 0x80003670 Data: 0x000000007FFFF007
 -- Redundant Coverpoints hit by the op
      - opcode : uraddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w1_val == 4294901759
      - rs2_w0_val == 4294959103
      - rs1_w1_val == 4294963199
      - rs1_w0_val == 16






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

|s.no|            signature             |                                                                                                 coverpoints                                                                                                  |                                 code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000004000|- opcode : uraddw<br> - rs1 : x13<br> - rs2 : x13<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs2_w1_val == 4294967263<br> - rs2_w0_val == 16384<br> - rs1_w1_val == 4294967263<br> - rs1_w0_val == 16384<br> |[0x800003ac]:URADDW a2, a3, a3<br> [0x800003b0]:sd a2, 0(sp)<br>      |
|   2|[0x80003218]<br>0x000000000000000A|- rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs2_w1_val == 2863311530<br> - rs1_w1_val == 2863311530<br>                                                                           |[0x800003d4]:URADDW s11, s11, s11<br> [0x800003d8]:sd s11, 8(sp)<br>  |
|   3|[0x80003220]<br>0x0000000000000101|- rs1 : x10<br> - rs2 : x15<br> - rd : x1<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 2<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 512<br>       |[0x800003fc]:URADDW ra, a0, a5<br> [0x80000400]:sd ra, 16(sp)<br>     |
|   4|[0x80003228]<br>0x0000000000010000|- rs1 : x24<br> - rs2 : x0<br> - rd : x24<br> - rs1 == rd != rs2<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 4294967295<br> - rs1_w0_val == 131072<br>                                    |[0x80000424]:URADDW s8, s8, zero<br> [0x80000428]:sd s8, 24(sp)<br>   |
|   5|[0x80003230]<br>0xFFFFFFFF80FFFFEF|- rs1 : x18<br> - rs2 : x14<br> - rd : x14<br> - rs2 == rd != rs1<br> - rs2_w1_val == 3221225471<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == 1024<br> - rs1_w0_val == 4294967263<br>                     |[0x80000448]:URADDW a4, s2, a4<br> [0x8000044c]:sd a4, 32(sp)<br>     |
|   6|[0x80003238]<br>0x0000000000080007|- rs1 : x15<br> - rs2 : x26<br> - rd : x7<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 1048576<br>                                                                                                      |[0x80000470]:URADDW t2, a5, s10<br> [0x80000474]:sd t2, 40(sp)<br>    |
|   7|[0x80003240]<br>0x000000005555555B|- rs1 : x6<br> - rs2 : x9<br> - rd : x23<br> - rs2_w1_val == 4026531839<br> - rs2_w0_val == 2863311530<br>                                                                                                    |[0x800004a0]:URADDW s7, t1, s1<br> [0x800004a4]:sd s7, 48(sp)<br>     |
|   8|[0x80003248]<br>0x0000000000200002|- rs1 : x31<br> - rs2 : x7<br> - rd : x22<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == 8192<br>                                                                             |[0x800004c4]:URADDW s6, t6, t2<br> [0x800004c8]:sd s6, 56(sp)<br>     |
|   9|[0x80003250]<br>0x000000007FFF000F|- rs1 : x9<br> - rs2 : x1<br> - rd : x19<br> - rs2_w1_val == 4227858431<br> - rs2_w0_val == 4294836223<br> - rs1_w0_val == 32<br>                                                                             |[0x800004ec]:URADDW s3, s1, ra<br> [0x800004f0]:sd s3, 64(sp)<br>     |
|  10|[0x80003258]<br>0x000000007F007FFF|- rs1 : x11<br> - rs2 : x3<br> - rd : x30<br> - rs2_w1_val == 4261412863<br> - rs2_w0_val == 65536<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 4261412863<br>                                            |[0x8000051c]:URADDW t5, a1, gp<br> [0x80000520]:sd t5, 72(sp)<br>     |
|  11|[0x80003260]<br>0xFFFFFFFFFBFFFF7F|- rs1 : x4<br> - rs2 : x5<br> - rd : x11<br> - rs2_w1_val == 4278190079<br> - rs2_w0_val == 4294967039<br> - rs1_w1_val == 32<br> - rs1_w0_val == 4160749567<br>                                              |[0x8000053c]:URADDW a1, tp, t0<br> [0x80000540]:sd a1, 80(sp)<br>     |
|  12|[0x80003268]<br>0x0000000000000018|- rs1 : x17<br> - rs2 : x28<br> - rd : x31<br> - rs2_w1_val == 4286578687<br> - rs2_w0_val == 32<br> - rs1_w1_val == 4294966783<br> - rs1_w0_val == 16<br>                                                    |[0x80000560]:URADDW t6, a7, t3<br> [0x80000564]:sd t6, 88(sp)<br>     |
|  13|[0x80003270]<br>0x000000007FFFFC05|- rs1 : x16<br> - rs2 : x12<br> - rd : x20<br> - rs2_w1_val == 4290772991<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 4294965247<br>                                                                      |[0x80000590]:URADDW s4, a6, a2<br> [0x80000594]:sd s4, 96(sp)<br>     |
|  14|[0x80003278]<br>0xFFFFFFFFFDFFFFFF|- rs1 : x14<br> - rs2 : x17<br> - rd : x29<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 4261412863<br>                                                                                                  |[0x800005b8]:URADDW t4, a4, a7<br> [0x800005bc]:sd t4, 104(sp)<br>    |
|  15|[0x80003280]<br>0x0000000055D55555|- rs1 : x26<br> - rs2 : x20<br> - rd : x25<br> - rs2_w1_val == 4293918719<br> - rs2_w0_val == 16777216<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == 2863311530<br>                                         |[0x800005f0]:URADDW s9, s10, s4<br> [0x800005f4]:sd s9, 0(ra)<br>     |
|  16|[0x80003288]<br>0xFFFFFFFF8000000F|- rs1 : x2<br> - rs2 : x4<br> - rd : x15<br> - rs2_w1_val == 4294443007<br> - rs1_w0_val == 4294967294<br>                                                                                                    |[0x80000614]:URADDW a5, sp, tp<br> [0x80000618]:sd a5, 8(ra)<br>      |
|  17|[0x80003290]<br>0x000000007007FFFF|- rs1 : x21<br> - rs2 : x24<br> - rd : x8<br> - rs2_w1_val == 4294705151<br> - rs1_w1_val == 1<br> - rs1_w0_val == 3758096383<br>                                                                             |[0x80000634]:URADDW fp, s5, s8<br> [0x80000638]:sd fp, 16(ra)<br>     |
|  18|[0x80003298]<br>0x000000000000000E|- rs1 : x12<br> - rs2 : x23<br> - rd : x28<br> - rs2_w1_val == 4294836223<br> - rs2_w0_val == 16<br> - rs1_w1_val == 67108864<br>                                                                             |[0x80000658]:URADDW t3, a2, s7<br> [0x8000065c]:sd t3, 24(ra)<br>     |
|  19|[0x800032a0]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x25<br> - rd : x0<br> - rs2_w1_val == 4294901759<br> - rs2_w0_val == 4294959103<br> - rs1_w1_val == 4294963199<br>                                                                    |[0x80000684]:URADDW zero, t5, s9<br> [0x80000688]:sd zero, 32(ra)<br> |
|  20|[0x800032a8]<br>0x000000007FFDFFFF|- rs1 : x25<br> - rs2 : x6<br> - rd : x16<br> - rs2_w1_val == 4294934527<br> - rs1_w1_val == 4227858431<br> - rs1_w0_val == 4294705151<br>                                                                    |[0x800006ac]:URADDW a6, s9, t1<br> [0x800006b0]:sd a6, 40(ra)<br>     |
|  21|[0x800032b0]<br>0xFFFFFFFFFFFBFDFF|- rs1 : x5<br> - rs2 : x18<br> - rd : x2<br> - rs2_w1_val == 4294950911<br> - rs2_w0_val == 4294966271<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 4294443007<br>                                      |[0x800006d8]:URADDW sp, t0, s2<br> [0x800006dc]:sd sp, 48(ra)<br>     |
|  22|[0x800032b8]<br>0xFFFFFFFFFFFFDFF7|- rs1 : x8<br> - rs2 : x10<br> - rd : x4<br> - rs2_w1_val == 4294959103<br> - rs2_w0_val == 4294967279<br> - rs1_w1_val == 4294967294<br> - rs1_w0_val == 4294950911<br>                                      |[0x800006fc]:URADDW tp, fp, a0<br> [0x80000700]:sd tp, 56(ra)<br>     |
|  23|[0x800032c0]<br>0x000000007FFFFFC6|- rs1 : x19<br> - rs2 : x2<br> - rd : x9<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 4294967167<br>                                                                                                    |[0x8000071c]:URADDW s1, s3, sp<br> [0x80000720]:sd s1, 64(ra)<br>     |
|  24|[0x800032c8]<br>0x000000007FFFFFFC|- rs1 : x7<br> - rs2 : x11<br> - rd : x3<br> - rs2_w1_val == 4294965247<br> - rs2_w0_val == 4294967287<br> - rs1_w0_val == 2<br>                                                                              |[0x80000740]:URADDW gp, t2, a1<br> [0x80000744]:sd gp, 72(ra)<br>     |
|  25|[0x800032d0]<br>0xFFFFFFFF80000000|- rs1 : x29<br> - rs2 : x16<br> - rd : x21<br> - rs2_w1_val == 4294966271<br> - rs1_w1_val == 4160749567<br> - rs1_w0_val == 4294967279<br>                                                                   |[0x80000760]:URADDW s5, t4, a6<br> [0x80000764]:sd s5, 80(ra)<br>     |
|  26|[0x800032d8]<br>0x0000000000000004|- rs1 : x0<br> - rs2 : x21<br> - rd : x26<br> - rs1_w0_val == 0<br> - rs2_w1_val == 4294966783<br> - rs1_w1_val == 0<br>                                                                                      |[0x80000784]:URADDW s10, zero, s5<br> [0x80000788]:sd s10, 88(ra)<br> |
|  27|[0x800032e0]<br>0x000000000000000B|- rs1 : x3<br> - rs2 : x31<br> - rd : x6<br> - rs2_w1_val == 4294967039<br> - rs1_w0_val == 8<br>                                                                                                             |[0x800007a4]:URADDW t1, gp, t6<br> [0x800007a8]:sd t1, 96(ra)<br>     |
|  28|[0x800032e8]<br>0x0000000000008006|- rs1 : x28<br> - rs2 : x30<br> - rd : x5<br> - rs2_w1_val == 4294967167<br>                                                                                                                                  |[0x800007c4]:URADDW t0, t3, t5<br> [0x800007c8]:sd t0, 104(ra)<br>    |
|  29|[0x800032f0]<br>0x000000004000FFFF|- rs1 : x23<br> - rs2 : x8<br> - rd : x18<br> - rs2_w1_val == 4294967231<br> - rs2_w0_val == 2147483647<br>                                                                                                   |[0x800007e4]:URADDW s2, s7, fp<br> [0x800007e8]:sd s2, 112(ra)<br>    |
|  30|[0x800032f8]<br>0x000000005555555B|- rs1 : x22<br> - rs2 : x29<br> - rd : x10<br> - rs2_w1_val == 4294967279<br> - rs1_w1_val == 64<br>                                                                                                          |[0x80000808]:URADDW a0, s6, t4<br> [0x8000080c]:sd a0, 120(ra)<br>    |
|  31|[0x80003300]<br>0x000000007F800008|- rs1 : x20<br> - rs2 : x22<br> - rd : x13<br> - rs2_w1_val == 4294967287<br> - rs2_w0_val == 4278190079<br>                                                                                                  |[0x8000082c]:URADDW a3, s4, s6<br> [0x80000830]:sd a3, 128(ra)<br>    |
|  32|[0x80003308]<br>0x000000000000000A|- rs1 : x1<br> - rs2 : x19<br> - rd : x17<br> - rs2_w1_val == 4294967291<br> - rs2_w0_val == 1<br>                                                                                                            |[0x80000854]:URADDW a7, ra, s3<br> [0x80000858]:sd a7, 0(sp)<br>      |
|  33|[0x80003310]<br>0x000000007FFFFE03|- rs2_w1_val == 4294967293<br>                                                                                                                                                                                |[0x80000874]:URADDW t6, t5, t4<br> [0x80000878]:sd t6, 8(sp)<br>      |
|  34|[0x80003318]<br>0x0000000000000087|- rs2_w1_val == 4294967294<br> - rs1_w0_val == 256<br>                                                                                                                                                        |[0x80000894]:URADDW t6, t5, t4<br> [0x80000898]:sd t6, 16(sp)<br>     |
|  35|[0x80003320]<br>0x0000000000000003|- rs2_w1_val == 2147483648<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 4<br>                                                                                                                             |[0x800008b4]:URADDW t6, t5, t4<br> [0x800008b8]:sd t6, 24(sp)<br>     |
|  36|[0x80003328]<br>0x0000000000002006|- rs2_w1_val == 1073741824<br>                                                                                                                                                                                |[0x800008d8]:URADDW t6, t5, t4<br> [0x800008dc]:sd t6, 32(sp)<br>     |
|  37|[0x80003330]<br>0x000000007FFFC01F|- rs2_w1_val == 536870912<br> - rs2_w0_val == 64<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 4294934527<br>                                                                                                  |[0x800008fc]:URADDW t6, t5, t4<br> [0x80000900]:sd t6, 40(sp)<br>     |
|  38|[0x80003338]<br>0x0000000000000006|- rs2_w1_val == 268435456<br> - rs2_w0_val == 4<br> - rs1_w1_val == 4294836223<br>                                                                                                                            |[0x80000920]:URADDW t6, t5, t4<br> [0x80000924]:sd t6, 48(sp)<br>     |
|  39|[0x80003340]<br>0xFFFFFFFF802FFFFF|- rs2_w1_val == 134217728<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == 4294901759<br> - rs1_w0_val == 4292870143<br>                                                                                       |[0x80000948]:URADDW t6, t5, t4<br> [0x8000094c]:sd t6, 56(sp)<br>     |
|  40|[0x80003348]<br>0x000000007F9FFFFF|- rs2_w1_val == 67108864<br> - rs1_w1_val == 256<br> - rs1_w0_val == 4194304<br>                                                                                                                              |[0x80000970]:URADDW t6, t5, t4<br> [0x80000974]:sd t6, 64(sp)<br>     |
|  41|[0x80003350]<br>0x0000000000000044|- rs2_w1_val == 33554432<br> - rs2_w0_val == 128<br> - rs1_w1_val == 536870912<br>                                                                                                                            |[0x80000990]:URADDW t6, t5, t4<br> [0x80000994]:sd t6, 72(sp)<br>     |
|  42|[0x80003358]<br>0x000000007E000009|- rs2_w1_val == 16777216<br> - rs1_w1_val == 4294934527<br> - rs1_w0_val == 4227858431<br>                                                                                                                    |[0x800009b4]:URADDW t6, t5, t4<br> [0x800009b8]:sd t6, 80(sp)<br>     |
|  43|[0x80003360]<br>0x0000000000002001|- rs2_w1_val == 8388608<br> - rs1_w1_val == 4294967287<br>                                                                                                                                                    |[0x800009d4]:URADDW t6, t5, t4<br> [0x800009d8]:sd t6, 88(sp)<br>     |
|  44|[0x80003368]<br>0x000000000000000E|- rs2_w1_val == 4194304<br> - rs1_w1_val == 4294967279<br>                                                                                                                                                    |[0x800009f4]:URADDW t6, t5, t4<br> [0x800009f8]:sd t6, 96(sp)<br>     |
|  45|[0x80003370]<br>0x0000000000002005|- rs2_w1_val == 2097152<br>                                                                                                                                                                                   |[0x80000a18]:URADDW t6, t5, t4<br> [0x80000a1c]:sd t6, 104(sp)<br>    |
|  46|[0x80003378]<br>0xFFFFFFFF80003FFF|- rs2_w1_val == 1048576<br> - rs2_w0_val == 32768<br> - rs1_w1_val == 262144<br>                                                                                                                              |[0x80000a40]:URADDW t6, t5, t4<br> [0x80000a44]:sd t6, 112(sp)<br>    |
|  47|[0x80003380]<br>0x000000007FF0003F|- rs2_w1_val == 524288<br> - rs2_w0_val == 4292870143<br> - rs1_w0_val == 128<br>                                                                                                                             |[0x80000a64]:URADDW t6, t5, t4<br> [0x80000a68]:sd t6, 120(sp)<br>    |
|  48|[0x80003388]<br>0x0000000000200040|- rs2_w1_val == 262144<br>                                                                                                                                                                                    |[0x80000a84]:URADDW t6, t5, t4<br> [0x80000a88]:sd t6, 128(sp)<br>    |
|  49|[0x80003390]<br>0xFFFFFFFF8FFFFFBF|- rs2_w1_val == 131072<br> - rs2_w0_val == 536870912<br> - rs1_w0_val == 4294967167<br>                                                                                                                       |[0x80000aa4]:URADDW t6, t5, t4<br> [0x80000aa8]:sd t6, 136(sp)<br>    |
|  50|[0x80003398]<br>0x0000000000C00000|- rs2_w1_val == 65536<br> - rs1_w0_val == 8388608<br>                                                                                                                                                         |[0x80000ac8]:URADDW t6, t5, t4<br> [0x80000acc]:sd t6, 144(sp)<br>    |
|  51|[0x800033a0]<br>0xFFFFFFFF80000001|- rs2_w1_val == 32768<br> - rs2_w0_val == 4294967295<br>                                                                                                                                                      |[0x80000aec]:URADDW t6, t5, t4<br> [0x80000af0]:sd t6, 152(sp)<br>    |
|  52|[0x800033a8]<br>0xFFFFFFFFFEFBFFFF|- rs2_w1_val == 16384<br> - rs1_w1_val == 4278190079<br>                                                                                                                                                      |[0x80000b18]:URADDW t6, t5, t4<br> [0x80000b1c]:sd t6, 160(sp)<br>    |
|  53|[0x800033b0]<br>0xFFFFFFFF8000001D|- rs2_w1_val == 8192<br> - rs1_w1_val == 4290772991<br> - rs1_w0_val == 4294967291<br>                                                                                                                        |[0x80000b38]:URADDW t6, t5, t4<br> [0x80000b3c]:sd t6, 168(sp)<br>    |
|  54|[0x800033b8]<br>0x0000000000001008|- rs1_w0_val == 8192<br>                                                                                                                                                                                      |[0x80000b58]:URADDW t6, t5, t4<br> [0x80000b5c]:sd t6, 176(sp)<br>    |
|  55|[0x800033c0]<br>0x0000000000000810|- rs1_w0_val == 4096<br>                                                                                                                                                                                      |[0x80000b7c]:URADDW t6, t5, t4<br> [0x80000b80]:sd t6, 184(sp)<br>    |
|  56|[0x800033c8]<br>0x0000000000000600|- rs2_w1_val == 512<br> - rs2_w0_val == 1024<br> - rs1_w0_val == 2048<br>                                                                                                                                     |[0x80000ba4]:URADDW t6, t5, t4<br> [0x80000ba8]:sd t6, 192(sp)<br>    |
|  57|[0x800033d0]<br>0x000000007C0001FF|- rs2_w0_val == 4160749567<br> - rs1_w0_val == 1024<br>                                                                                                                                                       |[0x80000bcc]:URADDW t6, t5, t4<br> [0x80000bd0]:sd t6, 200(sp)<br>    |
|  58|[0x800033d8]<br>0xFFFFFFFF8000000F|- rs2_w0_val == 4294967263<br> - rs1_w1_val == 4286578687<br> - rs1_w0_val == 64<br>                                                                                                                          |[0x80000bf0]:URADDW t6, t5, t4<br> [0x80000bf4]:sd t6, 208(sp)<br>    |
|  59|[0x800033e0]<br>0x000000007FC00000|- rs2_w1_val == 32<br> - rs2_w0_val == 4286578687<br> - rs1_w0_val == 1<br>                                                                                                                                   |[0x80000c0c]:URADDW t6, t5, t4<br> [0x80000c10]:sd t6, 216(sp)<br>    |
|  60|[0x800033e8]<br>0x000000007807FFFF|- rs2_w1_val == 4096<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 4026531839<br>                                                                                                                             |[0x80000c30]:URADDW t6, t5, t4<br> [0x80000c34]:sd t6, 224(sp)<br>    |
|  61|[0x800033f0]<br>0xFFFFFFFF80001FFF|- rs2_w1_val == 2048<br> - rs1_w0_val == 4294967295<br>                                                                                                                                                       |[0x80000c50]:URADDW t6, t5, t4<br> [0x80000c54]:sd t6, 232(sp)<br>    |
|  62|[0x800033f8]<br>0xFFFFFFFF80000000|- rs2_w1_val == 1024<br> - rs2_w0_val == 4294967294<br>                                                                                                                                                       |[0x80000c74]:URADDW t6, t5, t4<br> [0x80000c78]:sd t6, 240(sp)<br>    |
|  63|[0x80003400]<br>0xFFFFFFFFFFFDFFDF|- rs2_w1_val == 256<br> - rs2_w0_val == 4294967231<br>                                                                                                                                                        |[0x80000c9c]:URADDW t6, t5, t4<br> [0x80000ca0]:sd t6, 248(sp)<br>    |
|  64|[0x80003408]<br>0xFFFFFFFF8001FFFE|- rs2_w1_val == 128<br> - rs2_w0_val == 4294967293<br> - rs1_w1_val == 4294967167<br> - rs1_w0_val == 262144<br>                                                                                              |[0x80000cbc]:URADDW t6, t5, t4<br> [0x80000cc0]:sd t6, 256(sp)<br>    |
|  65|[0x80003410]<br>0xFFFFFFFF83FFFEFF|- rs2_w1_val == 64<br> - rs2_w0_val == 134217728<br> - rs1_w0_val == 4294966783<br>                                                                                                                           |[0x80000ce0]:URADDW t6, t5, t4<br> [0x80000ce4]:sd t6, 264(sp)<br>    |
|  66|[0x80003418]<br>0xFFFFFFFFFEFEFFFF|- rs2_w1_val == 16<br> - rs1_w0_val == 4294836223<br>                                                                                                                                                         |[0x80000d08]:URADDW t6, t5, t4<br> [0x80000d0c]:sd t6, 272(sp)<br>    |
|  67|[0x80003420]<br>0xFFFFFFFF817FFFFF|- rs2_w1_val == 8<br> - rs1_w0_val == 67108864<br>                                                                                                                                                            |[0x80000d28]:URADDW t6, t5, t4<br> [0x80000d2c]:sd t6, 280(sp)<br>    |
|  68|[0x80003428]<br>0xFFFFFFFFAAA8AAAA|- rs2_w1_val == 4<br> - rs2_w0_val == 1431655765<br>                                                                                                                                                          |[0x80000d50]:URADDW t6, t5, t4<br> [0x80000d54]:sd t6, 288(sp)<br>    |
|  69|[0x80003430]<br>0x0000000000004800|- rs2_w1_val == 2<br>                                                                                                                                                                                         |[0x80000d74]:URADDW t6, t5, t4<br> [0x80000d78]:sd t6, 296(sp)<br>    |
|  70|[0x80003438]<br>0x000000007FFFFC05|- rs2_w1_val == 1<br> - rs2_w0_val == 4294965247<br>                                                                                                                                                          |[0x80000d98]:URADDW t6, t5, t4<br> [0x80000d9c]:sd t6, 304(sp)<br>    |
|  71|[0x80003440]<br>0xFFFFFFFFBFFEFFFF|- rs2_w1_val == 4294967295<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 2147483648<br>                                                                                                                   |[0x80000db4]:URADDW t6, t5, t4<br> [0x80000db8]:sd t6, 312(sp)<br>    |
|  72|[0x80003448]<br>0x000000007FFFFBFF|- rs2_w0_val == 4294963199<br> - rs1_w1_val == 4294965247<br>                                                                                                                                                 |[0x80000de4]:URADDW t6, t5, t4<br> [0x80000de8]:sd t6, 320(sp)<br>    |
|  73|[0x80003450]<br>0xFFFFFFFFDFFFFFFF|- rs2_w0_val == 3221225471<br>                                                                                                                                                                                |[0x80000e08]:URADDW t6, t5, t4<br> [0x80000e0c]:sd t6, 328(sp)<br>    |
|  74|[0x80003458]<br>0xFFFFFFFF8FFFFFFF|- rs2_w0_val == 3758096383<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 1073741824<br>                                                                                                                     |[0x80000e2c]:URADDW t6, t5, t4<br> [0x80000e30]:sd t6, 336(sp)<br>    |
|  75|[0x80003460]<br>0x0000000078001FFF|- rs2_w0_val == 4026531839<br>                                                                                                                                                                                |[0x80000e44]:URADDW t6, t5, t4<br> [0x80000e48]:sd t6, 344(sp)<br>    |
|  76|[0x80003468]<br>0x000000007E0001FF|- rs2_w0_val == 4227858431<br>                                                                                                                                                                                |[0x80000e68]:URADDW t6, t5, t4<br> [0x80000e6c]:sd t6, 352(sp)<br>    |
|  77|[0x80003470]<br>0xFFFFFFFF87DFFFFF|- rs2_w0_val == 4290772991<br> - rs1_w0_val == 268435456<br>                                                                                                                                                  |[0x80000e88]:URADDW t6, t5, t4<br> [0x80000e8c]:sd t6, 360(sp)<br>    |
|  78|[0x80003478]<br>0xFFFFFFFFFFF7FFBF|- rs2_w0_val == 4293918719<br>                                                                                                                                                                                |[0x80000eb0]:URADDW t6, t5, t4<br> [0x80000eb4]:sd t6, 368(sp)<br>    |
|  79|[0x80003480]<br>0x000000007FFC0003|- rs2_w0_val == 4294443007<br> - rs1_w1_val == 4<br>                                                                                                                                                          |[0x80000ed4]:URADDW t6, t5, t4<br> [0x80000ed8]:sd t6, 376(sp)<br>    |
|  80|[0x80003488]<br>0x000000007FFE0FFF|- rs2_w0_val == 4294705151<br>                                                                                                                                                                                |[0x80000f08]:URADDW t6, t5, t4<br> [0x80000f0c]:sd t6, 384(sp)<br>    |
|  81|[0x80003490]<br>0x000000007FFFC005|- rs2_w0_val == 4294934527<br>                                                                                                                                                                                |[0x80000f2c]:URADDW t6, t5, t4<br> [0x80000f30]:sd t6, 392(sp)<br>    |
|  82|[0x80003498]<br>0xFFFFFFFFFDFFDFFF|- rs2_w0_val == 4294950911<br> - rs1_w1_val == 3758096383<br>                                                                                                                                                 |[0x80000f5c]:URADDW t6, t5, t4<br> [0x80000f60]:sd t6, 400(sp)<br>    |
|  83|[0x800034a0]<br>0xFFFFFFFFFFFBFEFF|- rs2_w0_val == 4294966783<br>                                                                                                                                                                                |[0x80000f84]:URADDW t6, t5, t4<br> [0x80000f88]:sd t6, 408(sp)<br>    |
|  84|[0x800034a8]<br>0xFFFFFFFF80007FFD|- rs2_w0_val == 4294967291<br> - rs1_w0_val == 65536<br>                                                                                                                                                      |[0x80000fa4]:URADDW t6, t5, t4<br> [0x80000fa8]:sd t6, 416(sp)<br>    |
|  85|[0x800034b0]<br>0xFFFFFFFFBFFFFFBF|- rs2_w0_val == 2147483648<br> - rs1_w1_val == 524288<br>                                                                                                                                                     |[0x80000fc4]:URADDW t6, t5, t4<br> [0x80000fc8]:sd t6, 424(sp)<br>    |
|  86|[0x800034b8]<br>0x000000007E000003|- rs2_w0_val == 8<br>                                                                                                                                                                                         |[0x80000fe8]:URADDW t6, t5, t4<br> [0x80000fec]:sd t6, 432(sp)<br>    |
|  87|[0x800034c8]<br>0x0000000000004080|- rs2_w0_val == 256<br> - rs1_w1_val == 3221225471<br> - rs1_w0_val == 32768<br>                                                                                                                              |[0x80001040]:URADDW t6, t5, t4<br> [0x80001044]:sd t6, 448(sp)<br>    |
|  88|[0x800034d0]<br>0xFFFFFFFF80000006|- rs1_w1_val == 4026531839<br>                                                                                                                                                                                |[0x80001068]:URADDW t6, t5, t4<br> [0x8000106c]:sd t6, 456(sp)<br>    |
|  89|[0x800034d8]<br>0x000000007FC07FFF|- rs2_w1_val == 2147483647<br> - rs1_w1_val == 4261412863<br> - rs1_w0_val == 4286578687<br>                                                                                                                  |[0x80001098]:URADDW t6, t5, t4<br> [0x8000109c]:sd t6, 464(sp)<br>    |
|  90|[0x800034e0]<br>0x000000007E000000|- rs1_w1_val == 4292870143<br>                                                                                                                                                                                |[0x800010c0]:URADDW t6, t5, t4<br> [0x800010c4]:sd t6, 472(sp)<br>    |
|  91|[0x800034e8]<br>0x0000000000000807|- rs1_w1_val == 4293918719<br>                                                                                                                                                                                |[0x800010e8]:URADDW t6, t5, t4<br> [0x800010ec]:sd t6, 480(sp)<br>    |
|  92|[0x800034f0]<br>0x0000000000000005|- rs1_w1_val == 4294443007<br>                                                                                                                                                                                |[0x8000110c]:URADDW t6, t5, t4<br> [0x80001110]:sd t6, 488(sp)<br>    |
|  93|[0x800034f8]<br>0x000000000000000A|- rs1_w1_val == 4294705151<br>                                                                                                                                                                                |[0x80001130]:URADDW t6, t5, t4<br> [0x80001134]:sd t6, 496(sp)<br>    |
|  94|[0x80003500]<br>0xFFFFFFFF87FFFEFF|- rs2_w0_val == 268435456<br> - rs1_w1_val == 4294950911<br>                                                                                                                                                  |[0x8000114c]:URADDW t6, t5, t4<br> [0x80001150]:sd t6, 504(sp)<br>    |
|  95|[0x80003508]<br>0xFFFFFFFF800FF7FF|- rs1_w1_val == 4294959103<br> - rs1_w0_val == 2097152<br>                                                                                                                                                    |[0x80001178]:URADDW t6, t5, t4<br> [0x8000117c]:sd t6, 512(sp)<br>    |
|  96|[0x80003510]<br>0x000000007F800000|- rs1_w1_val == 4294967039<br>                                                                                                                                                                                |[0x80001198]:URADDW t6, t5, t4<br> [0x8000119c]:sd t6, 520(sp)<br>    |
|  97|[0x80003518]<br>0x0000000000000104|- rs1_w1_val == 4294967231<br>                                                                                                                                                                                |[0x800011bc]:URADDW t6, t5, t4<br> [0x800011c0]:sd t6, 528(sp)<br>    |
|  98|[0x80003520]<br>0x000000000000000B|- rs1_w1_val == 4294967291<br>                                                                                                                                                                                |[0x800011dc]:URADDW t6, t5, t4<br> [0x800011e0]:sd t6, 536(sp)<br>    |
|  99|[0x80003528]<br>0xFFFFFFFFFFFEFFFF|- rs1_w1_val == 4294967293<br>                                                                                                                                                                                |[0x80001200]:URADDW t6, t5, t4<br> [0x80001204]:sd t6, 544(sp)<br>    |
| 100|[0x80003530]<br>0xFFFFFFFFEFFFFFF7|- rs1_w1_val == 2147483648<br>                                                                                                                                                                                |[0x80001228]:URADDW t6, t5, t4<br> [0x8000122c]:sd t6, 552(sp)<br>    |
| 101|[0x80003538]<br>0x0000000000000004|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                |[0x80001248]:URADDW t6, t5, t4<br> [0x8000124c]:sd t6, 560(sp)<br>    |
| 102|[0x80003540]<br>0x000000007FFFFE07|- rs1_w1_val == 134217728<br>                                                                                                                                                                                 |[0x80001268]:URADDW t6, t5, t4<br> [0x8000126c]:sd t6, 568(sp)<br>    |
| 103|[0x80003548]<br>0xFFFFFFFFFBFFFFFF|- rs1_w1_val == 2097152<br>                                                                                                                                                                                   |[0x80001290]:URADDW t6, t5, t4<br> [0x80001294]:sd t6, 576(sp)<br>    |
| 104|[0x80003550]<br>0x000000007F000FFF|- rs2_w0_val == 8192<br> - rs1_w1_val == 131072<br>                                                                                                                                                           |[0x800012bc]:URADDW t6, t5, t4<br> [0x800012c0]:sd t6, 584(sp)<br>    |
| 105|[0x80003558]<br>0xFFFFFFFF87FFFFFE|- rs1_w1_val == 65536<br> - rs1_w0_val == 4294967293<br>                                                                                                                                                      |[0x800012e4]:URADDW t6, t5, t4<br> [0x800012e8]:sd t6, 592(sp)<br>    |
| 106|[0x80003560]<br>0x0000000040000009|- rs1_w1_val == 32768<br>                                                                                                                                                                                     |[0x80001304]:URADDW t6, t5, t4<br> [0x80001308]:sd t6, 600(sp)<br>    |
| 107|[0x80003568]<br>0x0000000000000044|- rs1_w1_val == 2048<br>                                                                                                                                                                                      |[0x80001324]:URADDW t6, t5, t4<br> [0x80001328]:sd t6, 608(sp)<br>    |
| 108|[0x80003570]<br>0x000000007FFFFF86|- rs1_w1_val == 512<br>                                                                                                                                                                                       |[0x80001348]:URADDW t6, t5, t4<br> [0x8000134c]:sd t6, 616(sp)<br>    |
| 109|[0x80003578]<br>0x000000007FFFFFFB|- rs1_w1_val == 128<br> - rs1_w0_val == 4294967287<br>                                                                                                                                                        |[0x80001364]:URADDW t6, t5, t4<br> [0x80001368]:sd t6, 624(sp)<br>    |
| 110|[0x80003580]<br>0x000000007FFFFC04|- rs1_w1_val == 16<br>                                                                                                                                                                                        |[0x80001390]:URADDW t6, t5, t4<br> [0x80001394]:sd t6, 632(sp)<br>    |
| 111|[0x80003588]<br>0x000000007FFFC01F|- rs1_w1_val == 8<br>                                                                                                                                                                                         |[0x800013b4]:URADDW t6, t5, t4<br> [0x800013b8]:sd t6, 640(sp)<br>    |
| 112|[0x80003590]<br>0xFFFFFFFFFEFDFFFF|- rs1_w1_val == 2<br>                                                                                                                                                                                         |[0x800013e0]:URADDW t6, t5, t4<br> [0x800013e4]:sd t6, 648(sp)<br>    |
| 113|[0x80003598]<br>0x000000002AAAAAB3|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                |[0x80001408]:URADDW t6, t5, t4<br> [0x8000140c]:sd t6, 656(sp)<br>    |
| 114|[0x800035a0]<br>0xFFFFFFFFBFBFFFFF|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                |[0x80001430]:URADDW t6, t5, t4<br> [0x80001434]:sd t6, 664(sp)<br>    |
| 115|[0x800035a8]<br>0x00000000607FFFFF|- rs1_w0_val == 3221225471<br>                                                                                                                                                                                |[0x8000144c]:URADDW t6, t5, t4<br> [0x80001450]:sd t6, 672(sp)<br>    |
| 116|[0x800035b0]<br>0xFFFFFFFF837FFFFF|- rs1_w0_val == 4278190079<br>                                                                                                                                                                                |[0x8000146c]:URADDW t6, t5, t4<br> [0x80001470]:sd t6, 680(sp)<br>    |
| 117|[0x800035b8]<br>0xFFFFFFFFFFDFBFFF|- rs1_w0_val == 4290772991<br>                                                                                                                                                                                |[0x800014a0]:URADDW t6, t5, t4<br> [0x800014a4]:sd t6, 688(sp)<br>    |
| 118|[0x800035c0]<br>0xFFFFFFFFFFF3FFFF|- rs1_w0_val == 4293918719<br>                                                                                                                                                                                |[0x800014c8]:URADDW t6, t5, t4<br> [0x800014cc]:sd t6, 696(sp)<br>    |
| 119|[0x800035c8]<br>0xFFFFFFFFD554D554|- rs1_w0_val == 4294901759<br>                                                                                                                                                                                |[0x800014f8]:URADDW t6, t5, t4<br> [0x800014fc]:sd t6, 704(sp)<br>    |
| 120|[0x800035d0]<br>0xFFFFFFFF80FFEFFF|- rs1_w0_val == 4294959103<br>                                                                                                                                                                                |[0x8000151c]:URADDW t6, t5, t4<br> [0x80001520]:sd t6, 712(sp)<br>    |
| 121|[0x800035d8]<br>0xFFFFFFFF800001FF|- rs2_w0_val == 2048<br> - rs1_w0_val == 4294966271<br>                                                                                                                                                       |[0x80001540]:URADDW t6, t5, t4<br> [0x80001544]:sd t6, 720(sp)<br>    |
| 122|[0x800035e0]<br>0x000000007FFFFF88|- rs1_w0_val == 4294967039<br>                                                                                                                                                                                |[0x80001560]:URADDW t6, t5, t4<br> [0x80001564]:sd t6, 728(sp)<br>    |
| 123|[0x800035e8]<br>0x0000000075555555|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                |[0x80001588]:URADDW t6, t5, t4<br> [0x8000158c]:sd t6, 736(sp)<br>    |
| 124|[0x800035f0]<br>0x0000000000001000|- rs2_w0_val == 4096<br>                                                                                                                                                                                      |[0x800015ac]:URADDW t6, t5, t4<br> [0x800015b0]:sd t6, 744(sp)<br>    |
| 125|[0x800035f8]<br>0xFFFFFFFF80003FDF|- rs1_w0_val == 4294967231<br>                                                                                                                                                                                |[0x800015d8]:URADDW t6, t5, t4<br> [0x800015dc]:sd t6, 752(sp)<br>    |
| 126|[0x80003600]<br>0xFFFFFFFF81F7FFFF|- rs2_w0_val == 67108864<br>                                                                                                                                                                                  |[0x800015f8]:URADDW t6, t5, t4<br> [0x800015fc]:sd t6, 760(sp)<br>    |
| 127|[0x80003608]<br>0xFFFFFFFF800FF7FF|- rs2_w0_val == 2097152<br> - rs1_w0_val == 4294963199<br>                                                                                                                                                    |[0x80001624]:URADDW t6, t5, t4<br> [0x80001628]:sd t6, 768(sp)<br>    |
| 128|[0x80003610]<br>0x0000000010000000|- rs1_w0_val == 536870912<br>                                                                                                                                                                                 |[0x80001640]:URADDW t6, t5, t4<br> [0x80001644]:sd t6, 776(sp)<br>    |
| 129|[0x80003618]<br>0x0000000000040004|- rs2_w0_val == 524288<br>                                                                                                                                                                                    |[0x80001664]:URADDW t6, t5, t4<br> [0x80001668]:sd t6, 784(sp)<br>    |
| 130|[0x80003620]<br>0x0000000004000007|- rs1_w0_val == 134217728<br>                                                                                                                                                                                 |[0x80001680]:URADDW t6, t5, t4<br> [0x80001684]:sd t6, 792(sp)<br>    |
| 131|[0x80003628]<br>0x000000007FF9FFFF|- rs2_w0_val == 262144<br>                                                                                                                                                                                    |[0x800016a8]:URADDW t6, t5, t4<br> [0x800016ac]:sd t6, 800(sp)<br>    |
| 132|[0x80003630]<br>0x0000000000010003|- rs2_w0_val == 131072<br>                                                                                                                                                                                    |[0x800016d4]:URADDW t6, t5, t4<br> [0x800016d8]:sd t6, 808(sp)<br>    |
| 133|[0x80003638]<br>0x0000000021000000|- rs1_w0_val == 33554432<br>                                                                                                                                                                                  |[0x800016f4]:URADDW t6, t5, t4<br> [0x800016f8]:sd t6, 816(sp)<br>    |
| 134|[0x80003640]<br>0x0000000000080001|- rs1_w0_val == 1048576<br>                                                                                                                                                                                   |[0x8000171c]:URADDW t6, t5, t4<br> [0x80001720]:sd t6, 824(sp)<br>    |
| 135|[0x80003648]<br>0x0000000000040800|- rs1_w0_val == 524288<br>                                                                                                                                                                                    |[0x80001740]:URADDW t6, t5, t4<br> [0x80001744]:sd t6, 832(sp)<br>    |
| 136|[0x80003650]<br>0x000000007FC000FF|- rs2_w0_val == 512<br> - rs1_w1_val == 4294966271<br>                                                                                                                                                        |[0x80001764]:URADDW t6, t5, t4<br> [0x80001768]:sd t6, 840(sp)<br>    |
| 137|[0x80003658]<br>0x0000000000800200|- rs1_w0_val == 16777216<br>                                                                                                                                                                                  |[0x80001788]:URADDW t6, t5, t4<br> [0x8000178c]:sd t6, 848(sp)<br>    |
| 138|[0x80003668]<br>0xFFFFFFFF80007FFF|- rs2_w0_val == 4294901759<br>                                                                                                                                                                                |[0x800017cc]:URADDW t6, t5, t4<br> [0x800017d0]:sd t6, 864(sp)<br>    |
