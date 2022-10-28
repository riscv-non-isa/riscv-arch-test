
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000f20')]      |
| SIG_REGION                | [('0x80002210', '0x80002700', '158 dwords')]      |
| COV_LABELS                | smal      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/smal-01.S    |
| Total Number of coverpoints| 222     |
| Total Coverpoints Hit     | 216      |
| Total Signature Updates   | 79      |
| STAT1                     | 77      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009a8]:SMAL t6, t5, t4
      [0x800009ac]:sd t6, 352(ra)
 -- Signature Address: 0x80002490 Data: 0x00000000000FD000
 -- Redundant Coverpoints hit by the op
      - opcode : smal
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 2048
      - rs2_h1_val == 32767
      - rs2_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f10]:SMAL t6, t5, t4
      [0x80000f14]:sd t6, 960(ra)
 -- Signature Address: 0x800026f0 Data: 0x00000000004C4020
 -- Redundant Coverpoints hit by the op
      - opcode : smal
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == -21846
      - rs2_h2_val == -33
      - rs2_h1_val == -8193






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

|s.no|            signature             |                                                                                         coverpoints                                                                                          |                               code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002210]<br>0xEFFFFFF8FFF88110|- opcode : smal<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x26<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -4097<br> - rs2_h1_val == -9<br> - rs2_h0_val == -33<br>                            |[0x800003b8]:SMAL s10, a6, a6<br> [0x800003bc]:sd s10, 0(gp)<br>   |
|   2|[0x80002220]<br>0xAAAAFFDFE00C4016|- rs1 : x4<br> - rs2 : x4<br> - rd : x4<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -33<br> - rs2_h1_val == -8193<br>                                               |[0x800003dc]:SMAL tp, tp, tp<br> [0x800003e0]:sd tp, 16(gp)<br>    |
|   3|[0x80002230]<br>0x01FFFFFFFFF954D4|- rs1 : x18<br> - rs2 : x9<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 4<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 128<br> |[0x8000040c]:SMAL a0, s2, s1<br> [0x80000410]:sd a0, 32(gp)<br>    |
|   4|[0x80002240]<br>0x0000000001FFF3C6|- rs1 : x24<br> - rs2 : x20<br> - rd : x24<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 1024<br> - rs2_h1_val == -33<br> - rs2_h0_val == 64<br>                       |[0x80000430]:SMAL s8, s8, s4<br> [0x80000434]:sd s8, 48(gp)<br>    |
|   5|[0x80002250]<br>0xFFFFFFFFEAA26AA6|- rs1 : x22<br> - rs2 : x14<br> - rd : x14<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 21845<br> - rs2_h1_val == 2<br> - rs2_h0_val == -2<br>                       |[0x80000458]:SMAL a4, s6, a4<br> [0x8000045c]:sd a4, 64(gp)<br>    |
|   6|[0x80002260]<br>0xFFFFFFFFFC026000|- rs1 : x30<br> - rs2 : x2<br> - rd : x20<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 8192<br> - rs2_h1_val == 32<br> - rs2_h0_val == 4096<br>                                              |[0x80000478]:SMAL s4, t5, sp<br> [0x8000047c]:sd s4, 80(gp)<br>    |
|   7|[0x80002270]<br>0xFFF7FFFFFEFC8AAD|- rs1 : x10<br> - rs2 : x30<br> - rd : x8<br> - rs2_h3_val == -2049<br> - rs2_h1_val == 21845<br>                                                                                             |[0x800004a4]:SMAL fp, a0, t5<br> [0x800004a8]:sd fp, 96(gp)<br>    |
|   8|[0x80002280]<br>0xFFFFFFFFFFFBC410|- rs1 : x14<br> - rs2 : x11<br> - rd : x30<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -17<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 8<br>                                             |[0x800004c4]:SMAL t5, a4, a1<br> [0x800004c8]:sd t5, 112(gp)<br>   |
|   9|[0x80002290]<br>0x00000000800705FF|- rs1 : x26<br> - rs2 : x13<br> - rd : x6<br> - rs2_h3_val == -513<br> - rs2_h2_val == -1025<br> - rs2_h1_val == -21846<br>                                                                   |[0x800004ec]:SMAL t1, s10, a3<br> [0x800004f0]:sd t1, 128(gp)<br>  |
|  10|[0x800022a0]<br>0xFFFFFFFFFDFF7E7F|- rs1 : x12<br> - rs2 : x18<br> - rd : x16<br> - rs2_h3_val == -257<br> - rs2_h2_val == 128<br>                                                                                               |[0x80000514]:SMAL a6, a2, s2<br> [0x80000518]:sd a6, 144(gp)<br>   |
|  11|[0x800022b0]<br>0xFFFFFFFFFFFFFE08|- rs1 : x8<br> - rs2 : x19<br> - rd : x2<br> - rs2_h3_val == -129<br> - rs2_h0_val == -257<br>                                                                                                |[0x80000538]:SMAL sp, fp, s3<br> [0x8000053c]:sd sp, 160(gp)<br>   |
|  12|[0x800022c0]<br>0x0004000000003006|- rs1 : x6<br> - rs2 : x1<br> - rd : x18<br> - rs2_h3_val == -65<br> - rs2_h2_val == 0<br> - rs2_h1_val == -2049<br>                                                                          |[0x80000558]:SMAL s2, t1, ra<br> [0x8000055c]:sd s2, 176(gp)<br>   |
|  13|[0x800022d0]<br>0x00007FFFFFFFFEFB|- rs1 : x20<br> - rs2 : x21<br> - rd : x28<br> - rs2_h3_val == -33<br>                                                                                                                        |[0x80000580]:SMAL t3, s4, s5<br> [0x80000584]:sd t3, 192(gp)<br>   |
|  14|[0x800022e0]<br>0xFFFFFFFFFFFDB776|- rs1 : x28<br> - rs2 : x7<br> - rd : x12<br> - rs2_h3_val == -17<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -9<br>                                                                        |[0x800005a4]:SMAL a2, t3, t2<br> [0x800005a8]:sd a2, 208(gp)<br>   |
|  15|[0x800022f0]<br>0x0000001FFFFF7FDC|- rs1 : x2<br> - rs2 : x25<br> - rd : x22<br> - rs2_h3_val == -9<br>                                                                                                                          |[0x800005c8]:SMAL s6, sp, s9<br> [0x800005cc]:sd s6, 224(gp)<br>   |
|  16|[0x80002300]<br>0x0000000800000C01|- rs2 : x5<br> - rs2_h3_val == -5<br> - rs2_h1_val == -1<br> - rs2_h0_val == -8193<br>                                                                                                        |[0x800005f0]:SMAL s3, s6, t0<br> [0x800005f4]:sd s3, 240(gp)<br>   |
|  17|[0x80002310]<br>0xFFFFFFFFFDFFFFF6|- rs2 : x27<br> - rs2_h3_val == -3<br> - rs2_h0_val == 1024<br>                                                                                                                               |[0x80000610]:SMAL s5, t0, s11<br> [0x80000614]:sd s5, 256(gp)<br>  |
|  18|[0x80002320]<br>0xFFFFFF8008000005|- rs2 : x29<br> - rs2_h3_val == -2<br> - rs2_h2_val == -3<br> - rs2_h0_val == 8192<br>                                                                                                        |[0x80000638]:SMAL s8, t6, t4<br> [0x8000063c]:sd s8, 272(gp)<br>   |
|  19|[0x80002330]<br>0xFFFFFFFFC400C008|- rs2 : x10<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 32767<br> - rs2_h0_val == -2049<br>                                                                                                |[0x80000664]:SMAL s3, t3, a0<br> [0x80000668]:sd s3, 0(ra)<br>     |
|  20|[0x80002340]<br>0x0000001FFFFF8009|- rs2 : x15<br> - rs2_h3_val == 16384<br> - rs2_h2_val == 16<br> - rs2_h1_val == 32767<br>                                                                                                    |[0x80000688]:SMAL t4, s2, a5<br> [0x8000068c]:sd t4, 16(ra)<br>    |
|  21|[0x80002350]<br>0xFFFDFFFFFFFF3FD7|- rs2 : x6<br> - rs2_h3_val == 8192<br> - rs2_h0_val == 4<br>                                                                                                                                 |[0x800006b4]:SMAL a1, t4, t1<br> [0x800006b8]:sd a1, 32(ra)<br>    |
|  22|[0x80002360]<br>0x0000000000003E80|- rs2 : x22<br> - rs2_h3_val == 4096<br> - rs2_h2_val == 8<br> - rs2_h1_val == 512<br>                                                                                                        |[0x800006d8]:SMAL tp, fp, s6<br> [0x800006dc]:sd tp, 48(ra)<br>    |
|  23|[0x80002370]<br>0xFFFFFFDFFFFDD7FF|- rs2 : x17<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -5<br> - rs2_h1_val == 8<br>                                                                                                         |[0x80000700]:SMAL s10, a0, a7<br> [0x80000704]:sd s10, 64(ra)<br>  |
|  24|[0x80002380]<br>0x00001FFFFFFFFBFC|- rs2 : x12<br> - rs2_h3_val == 1024<br> - rs2_h2_val == -1<br> - rs2_h0_val == 1<br>                                                                                                         |[0x80000724]:SMAL t4, s6, a2<br> [0x80000728]:sd t4, 80(ra)<br>    |
|  25|[0x80002390]<br>0x555555555550D35D|- rs2 : x31<br> - rs2_h3_val == 512<br> - rs2_h2_val == -65<br>                                                                                                                               |[0x8000075c]:SMAL a1, a0, t6<br> [0x80000760]:sd a1, 96(ra)<br>    |
|  26|[0x800023a0]<br>0xFFFFC000000016FF|- rs2 : x24<br> - rs2_h3_val == 256<br> - rs2_h2_val == 32<br> - rs2_h1_val == 256<br>                                                                                                        |[0x80000788]:SMAL t1, a6, s8<br> [0x8000078c]:sd t1, 112(ra)<br>   |
|  27|[0x800023b0]<br>0xFFFFFF000000016A|- rs2 : x26<br> - rs2_h3_val == 128<br>                                                                                                                                                       |[0x800007b4]:SMAL gp, a3, s10<br> [0x800007b8]:sd gp, 128(ra)<br>  |
|  28|[0x800023c0]<br>0xFFFFFFFFFFFFFDFF|- rs2 : x0<br> - rs2_h3_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                                                                              |[0x800007d8]:SMAL s2, t6, zero<br> [0x800007dc]:sd s2, 144(ra)<br> |
|  29|[0x800023d0]<br>0x0001FFFFFFFE7FE0|- rs2 : x28<br> - rs2_h3_val == 32<br> - rs2_h2_val == -2049<br>                                                                                                                              |[0x800007fc]:SMAL t6, tp, t3<br> [0x80000800]:sd t6, 160(ra)<br>   |
|  30|[0x800023e0]<br>0xFFFFFFFFFFFF5537|- rs2 : x3<br> - rs2_h3_val == 16<br> - rs2_h2_val == -2<br> - rs2_h0_val == -21846<br>                                                                                                       |[0x80000820]:SMAL t3, t1, gp<br> [0x80000824]:sd t3, 176(ra)<br>   |
|  31|[0x800023f0]<br>0x0000000000000774|- rs2 : x8<br> - rs2_h3_val == 8<br>                                                                                                                                                          |[0x80000844]:SMAL tp, a1, fp<br> [0x80000848]:sd tp, 192(ra)<br>   |
|  32|[0x80002400]<br>0xFFFFDFFFFFF7FBFF|- rs2 : x23<br> - rs2_h3_val == 4<br> - rs2_h1_val == -513<br>                                                                                                                                |[0x80000870]:SMAL fp, t6, s7<br> [0x80000874]:sd fp, 208(ra)<br>   |
|  33|[0x80002410]<br>0xFFFFFFFFFFFC0800|- rs2_h3_val == 2<br>                                                                                                                                                                         |[0x80000898]:SMAL t6, t5, t4<br> [0x8000089c]:sd t6, 224(ra)<br>   |
|  34|[0x80002420]<br>0xFFFFFFFFFFFBBFF7|- rs2_h2_val == 1<br> - rs2_h1_val == -17<br> - rs2_h0_val == 16384<br>                                                                                                                       |[0x800008b8]:SMAL t6, t5, t4<br> [0x800008bc]:sd t6, 240(ra)<br>   |
|  35|[0x80002430]<br>0x000003FFFF802800|- rs2_h2_val == 256<br> - rs2_h0_val == 2048<br>                                                                                                                                              |[0x800008e0]:SMAL t6, t5, t4<br> [0x800008e4]:sd t6, 256(ra)<br>   |
|  36|[0x80002440]<br>0x000000000000F800|- rs2_h0_val == 512<br>                                                                                                                                                                       |[0x80000904]:SMAL t6, t5, t4<br> [0x80000908]:sd t6, 272(ra)<br>   |
|  37|[0x80002450]<br>0xFFFFFFFFFEAAB0FB|- rs2_h0_val == 256<br>                                                                                                                                                                       |[0x80000928]:SMAL t6, t5, t4<br> [0x8000092c]:sd t6, 288(ra)<br>   |
|  38|[0x80002460]<br>0xFFFFFFFFFFEFFFED|- rs2_h0_val == 32<br>                                                                                                                                                                        |[0x80000944]:SMAL t6, t5, t4<br> [0x80000948]:sd t6, 304(ra)<br>   |
|  39|[0x80002470]<br>0x0000000000000290|- rs2_h0_val == 16<br>                                                                                                                                                                        |[0x80000964]:SMAL t6, t5, t4<br> [0x80000968]:sd t6, 320(ra)<br>   |
|  40|[0x80002480]<br>0x00000000000A5D5B|- rs2_h1_val == 1024<br> - rs2_h0_val == 2<br>                                                                                                                                                |[0x80000988]:SMAL t6, t5, t4<br> [0x8000098c]:sd t6, 336(ra)<br>   |
|  41|[0x800024a0]<br>0x400000000000800A|- rs2_h0_val == -1<br>                                                                                                                                                                        |[0x800009d0]:SMAL t6, t5, t4<br> [0x800009d4]:sd t6, 368(ra)<br>   |
|  42|[0x800024b0]<br>0x8000000000061840|- rs2_h1_val == -65<br> - rs1_val == (2**63-1)<br>                                                                                                                                            |[0x800009fc]:SMAL t6, t5, t4<br> [0x80000a00]:sd t6, 384(ra)<br>   |
|  43|[0x800024c0]<br>0x0000000000005FC5|- rs1_val == 0<br>                                                                                                                                                                            |[0x80000a18]:SMAL t6, t5, t4<br> [0x80000a1c]:sd t6, 400(ra)<br>   |
|  44|[0x800024d0]<br>0x0000000000080301|- rs2_h1_val == 128<br> - rs1_val == 1<br>                                                                                                                                                    |[0x80000a3c]:SMAL t6, t5, t4<br> [0x80000a40]:sd t6, 416(ra)<br>   |
|  45|[0x800024e0]<br>0x0000000000001210|- rs2_h3_val == 1<br> - rs2_h2_val == 512<br> - rs2_h1_val == 4<br>                                                                                                                           |[0x80000a58]:SMAL t6, t5, t4<br> [0x80000a5c]:sd t6, 432(ra)<br>   |
|  46|[0x800024f0]<br>0xE000000000023FFF|- rs2_h2_val == 2<br>                                                                                                                                                                         |[0x80000a7c]:SMAL t6, t5, t4<br> [0x80000a80]:sd t6, 448(ra)<br>   |
|  47|[0x80002500]<br>0xFFFFFFFFFF7FBD7F|- rs2_h3_val == -1<br> - rs2_h2_val == 16384<br> - rs2_h1_val == 64<br>                                                                                                                       |[0x80000aa0]:SMAL t6, t5, t4<br> [0x80000aa4]:sd t6, 464(ra)<br>   |
|  48|[0x80002510]<br>0xFFFFFFFFEAA2401E|- rs2_h2_val == -21846<br>                                                                                                                                                                    |[0x80000ac4]:SMAL t6, t5, t4<br> [0x80000ac8]:sd t6, 480(ra)<br>   |
|  49|[0x80002520]<br>0xFFFFFFFFFFFC7FE6|- rs2_h2_val == -16385<br>                                                                                                                                                                    |[0x80000aec]:SMAL t6, t5, t4<br> [0x80000af0]:sd t6, 496(ra)<br>   |
|  50|[0x80002530]<br>0x0000000000015FC8|- rs2_h2_val == -8193<br> - rs2_h1_val == 8192<br>                                                                                                                                            |[0x80000b08]:SMAL t6, t5, t4<br> [0x80000b0c]:sd t6, 512(ra)<br>   |
|  51|[0x80002540]<br>0xFFFFFFFFFE480881|- rs2_h2_val == -4097<br> - rs2_h1_val == -16385<br>                                                                                                                                          |[0x80000b2c]:SMAL t6, t5, t4<br> [0x80000b30]:sd t6, 528(ra)<br>   |
|  52|[0x80002550]<br>0xFFFFFFFF8100804F|- rs2_h2_val == -513<br>                                                                                                                                                                      |[0x80000b58]:SMAL t6, t5, t4<br> [0x80000b5c]:sd t6, 544(ra)<br>   |
|  53|[0x80002560]<br>0xFFFFFFFFF7FFFEBF|- rs2_h2_val == 64<br>                                                                                                                                                                        |[0x80000b78]:SMAL t6, t5, t4<br> [0x80000b7c]:sd t6, 560(ra)<br>   |
|  54|[0x80002570]<br>0xFFFFFFFFFFCFF840|- rs2_h1_val == -1025<br>                                                                                                                                                                     |[0x80000ba4]:SMAL t6, t5, t4<br> [0x80000ba8]:sd t6, 576(ra)<br>   |
|  55|[0x80002580]<br>0x0000000000106903|- rs2_h1_val == -257<br> - rs2_h0_val == -4097<br>                                                                                                                                            |[0x80000bcc]:SMAL t6, t5, t4<br> [0x80000bd0]:sd t6, 592(ra)<br>   |
|  56|[0x80002590]<br>0x0000001000055856|- rs2_h1_val == -129<br>                                                                                                                                                                      |[0x80000bf4]:SMAL t6, t5, t4<br> [0x80000bf8]:sd t6, 608(ra)<br>   |
|  57|[0x800025a0]<br>0x0000000000244007|- rs2_h3_val == 64<br> - rs2_h2_val == 4096<br> - rs2_h0_val == -129<br>                                                                                                                      |[0x80000c18]:SMAL t6, t5, t4<br> [0x80000c1c]:sd t6, 624(ra)<br>   |
|  58|[0x800025b0]<br>0xFFFFFFFFFFFFFFBF|- rs2_h1_val == -5<br> - rs2_h0_val == -17<br>                                                                                                                                                |[0x80000c3c]:SMAL t6, t5, t4<br> [0x80000c40]:sd t6, 640(ra)<br>   |
|  59|[0x800025c0]<br>0x000FFFFFFFFFFFC1|- rs2_h2_val == -9<br> - rs2_h1_val == -3<br>                                                                                                                                                 |[0x80000c60]:SMAL t6, t5, t4<br> [0x80000c64]:sd t6, 656(ra)<br>   |
|  60|[0x800025d0]<br>0x0000000000000105|- rs2_h1_val == -2<br>                                                                                                                                                                        |[0x80000c84]:SMAL t6, t5, t4<br> [0x80000c88]:sd t6, 672(ra)<br>   |
|  61|[0x800025e0]<br>0xFFFF000000010248|- rs2_h1_val == 4096<br>                                                                                                                                                                      |[0x80000ca8]:SMAL t6, t5, t4<br> [0x80000cac]:sd t6, 688(ra)<br>   |
|  62|[0x800025f0]<br>0xFFFFFFFBFFFEF811|- rs2_h1_val == 2048<br>                                                                                                                                                                      |[0x80000cd4]:SMAL t6, t5, t4<br> [0x80000cd8]:sd t6, 704(ra)<br>   |
|  63|[0x80002600]<br>0xFFFFFFFEFFFFEFFE|- rs2_h1_val == 16<br>                                                                                                                                                                        |[0x80000d00]:SMAL t6, t5, t4<br> [0x80000d04]:sd t6, 720(ra)<br>   |
|  64|[0x80002610]<br>0x000000000001FFEF|- rs2_h1_val == 1<br>                                                                                                                                                                         |[0x80000d20]:SMAL t6, t5, t4<br> [0x80000d24]:sd t6, 736(ra)<br>   |
|  65|[0x80002620]<br>0xFFFFFFFFFFFF0010|- rs2_h2_val == -32768<br>                                                                                                                                                                    |[0x80000d38]:SMAL t6, t5, t4<br> [0x80000d3c]:sd t6, 752(ra)<br>   |
|  66|[0x80002630]<br>0xFFFFEFFFFFFF0807|- rs2_h2_val == -257<br>                                                                                                                                                                      |[0x80000d5c]:SMAL t6, t5, t4<br> [0x80000d60]:sd t6, 768(ra)<br>   |
|  67|[0x80002640]<br>0x0000040000155320|- rs2_h0_val == 21845<br>                                                                                                                                                                     |[0x80000d84]:SMAL t6, t5, t4<br> [0x80000d88]:sd t6, 784(ra)<br>   |
|  68|[0x80002650]<br>0x00000008000015FF|- rs2_h2_val == -129<br> - rs2_h0_val == -3<br>                                                                                                                                               |[0x80000da4]:SMAL t6, t5, t4<br> [0x80000da8]:sd t6, 800(ra)<br>   |
|  69|[0x80002660]<br>0xFFFFFFFFE06FFDFF|- rs2_h0_val == 32767<br>                                                                                                                                                                     |[0x80000dcc]:SMAL t6, t5, t4<br> [0x80000dd0]:sd t6, 816(ra)<br>   |
|  70|[0x80002670]<br>0xFFFFFFFFFFFE7D78|- rs2_h0_val == -16385<br>                                                                                                                                                                    |[0x80000df4]:SMAL t6, t5, t4<br> [0x80000df8]:sd t6, 832(ra)<br>   |
|  71|[0x80002680]<br>0x0000000000001BE3|- rs2_h0_val == -1025<br>                                                                                                                                                                     |[0x80000e0c]:SMAL t6, t5, t4<br> [0x80000e10]:sd t6, 848(ra)<br>   |
|  72|[0x80002690]<br>0xFFFFFFFFF6AA56A8|- rs2_h0_val == -513<br>                                                                                                                                                                      |[0x80000e34]:SMAL t6, t5, t4<br> [0x80000e38]:sd t6, 864(ra)<br>   |
|  73|[0x800026a0]<br>0xFFFFFFFDFFFE0144|- rs2_h0_val == -65<br>                                                                                                                                                                       |[0x80000e60]:SMAL t6, t5, t4<br> [0x80000e64]:sd t6, 880(ra)<br>   |
|  74|[0x800026b0]<br>0xFFFFFFFFFFFDCD7A|- rs2_h2_val == 2048<br>                                                                                                                                                                      |[0x80000e84]:SMAL t6, t5, t4<br> [0x80000e88]:sd t6, 896(ra)<br>   |
|  75|[0x800026c0]<br>0xFFFFFFFFFF7E1004|- rs2_h0_val == -5<br>                                                                                                                                                                        |[0x80000ea4]:SMAL t6, t5, t4<br> [0x80000ea8]:sd t6, 912(ra)<br>   |
|  76|[0x800026d0]<br>0xFFFFFFFFFFFD2FF8|- rs2_h0_val == -32768<br>                                                                                                                                                                    |[0x80000ec4]:SMAL t6, t5, t4<br> [0x80000ec8]:sd t6, 928(ra)<br>   |
|  77|[0x800026e0]<br>0x8000000000008131|- rs1_val == (-2**63)<br>                                                                                                                                                                     |[0x80000eec]:SMAL t6, t5, t4<br> [0x80000ef0]:sd t6, 944(ra)<br>   |
