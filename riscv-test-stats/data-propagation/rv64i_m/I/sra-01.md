
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800010c0')]      |
| SIG_REGION                | [('0x80003010', '0x800034e0', '154 dwords')]      |
| COV_LABELS                | sra      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sra-01.S/sra-01.S    |
| Total Number of coverpoints| 277     |
| Total Coverpoints Hit     | 277      |
| Total Signature Updates   | 154      |
| STAT1                     | 150      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001068]:sra a2, a0, a1
      [0x8000106c]:sd a2, 1056(gp)
 -- Signature Address: 0x800034b8 Data: 0xFFFFFFFFEFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == -34359738369




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001080]:sra a2, a0, a1
      [0x80001084]:sd a2, 1064(gp)
 -- Signature Address: 0x800034c0 Data: 0xFFFFFFFEFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val == 0
      - rs1_val == -4294967297




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001098]:sra a2, a0, a1
      [0x8000109c]:sd a2, 1072(gp)
 -- Signature Address: 0x800034c8 Data: 0x0FFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen
      - rs1_val == 9223372036854775807




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010b8]:sra a2, a0, a1
      [0x800010bc]:sd a2, 1088(gp)
 -- Signature Address: 0x800034d8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 512






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

|s.no|            signature             |                                                                                                          coverpoints                                                                                                           |                                code                                |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003010]<br>0xFFFFFFFFFFFFFFFF|- opcode : sra<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x7<br> - rs1 == rs2 != rd<br> - rs1_val == -34359738369<br>                                                                                                           |[0x800003b0]:sra t2, s7, s7<br> [0x800003b4]:sd t2, 0(s1)<br>       |
|   2|[0x80003018]<br>0x0000000020000000|- rs1 : x15<br> - rs2 : x3<br> - rd : x3<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 4294967296<br>                                                                            |[0x800003c4]:sra gp, a5, gp<br> [0x800003c8]:sd gp, 8(s1)<br>       |
|   3|[0x80003020]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x4<br> - rs2 : x4<br> - rd : x4<br> - rs1 == rs2 == rd<br> - rs1_val == -4294967297<br>                                                                                                                                 |[0x800003e4]:sra tp, tp, tp<br> [0x800003e8]:sd tp, 16(s1)<br>      |
|   4|[0x80003028]<br>0x3333333333333333|- rs1 : x27<br> - rs2 : x24<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val==3689348814741910323<br>                                                              |[0x80000410]:sra t5, s11, s8<br> [0x80000414]:sd t5, 24(s1)<br>     |
|   5|[0x80003030]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x18<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 1<br>  |[0x80000420]:sra s4, s4, s2<br> [0x80000424]:sd s4, 32(s1)<br>      |
|   6|[0x80003038]<br>0xE000000000000000|- rs1 : x2<br> - rs2 : x15<br> - rd : x24<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -9223372036854775808<br> - rs2_val == 2<br> |[0x80000434]:sra s8, sp, a5<br> [0x80000438]:sd s8, 40(s1)<br>      |
|   7|[0x80003040]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x8<br> - rd : x26<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br>                                                                                                           |[0x80000444]:sra s10, a3, fp<br> [0x80000448]:sd s10, 48(s1)<br>    |
|   8|[0x80003048]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x14<br> - rs2 : x0<br> - rd : x28<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br>                                                                         |[0x8000045c]:sra t3, a4, zero<br> [0x80000460]:sd t3, 56(s1)<br>    |
|   9|[0x80003050]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x22<br> - rd : x6<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                               |[0x8000046c]:sra t1, s9, s6<br> [0x80000470]:sd t1, 64(s1)<br>      |
|  10|[0x80003058]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x12<br> - rd : x18<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                              |[0x8000047c]:sra s2, t4, a2<br> [0x80000480]:sd s2, 72(s1)<br>      |
|  11|[0x80003060]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x28<br> - rd : x11<br> - rs1_val == 8<br>                                                                                                                                                                |[0x8000048c]:sra a1, gp, t3<br> [0x80000490]:sd a1, 80(s1)<br>      |
|  12|[0x80003068]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x16<br> - rd : x8<br>                                                                                                                                                                                    |[0x8000049c]:sra fp, zero, a6<br> [0x800004a0]:sd fp, 88(s1)<br>    |
|  13|[0x80003070]<br>0x0000000000000010|- rs1 : x24<br> - rs2 : x5<br> - rd : x12<br> - rs1_val == 32<br>                                                                                                                                                               |[0x800004ac]:sra a2, s8, t0<br> [0x800004b0]:sd a2, 96(s1)<br>      |
|  14|[0x80003078]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x21<br> - rd : x2<br> - rs1_val == 64<br> - rs2_val == 8<br>                                                                                                                                            |[0x800004bc]:sra sp, t6, s5<br> [0x800004c0]:sd sp, 104(s1)<br>     |
|  15|[0x80003080]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x1<br> - rd : x21<br> - rs1_val == 128<br>                                                                                                                                                               |[0x800004cc]:sra s5, fp, ra<br> [0x800004d0]:sd s5, 112(s1)<br>     |
|  16|[0x80003088]<br>0x0000000000000020|- rs1 : x1<br> - rs2 : x30<br> - rd : x14<br> - rs1_val == 256<br>                                                                                                                                                              |[0x800004dc]:sra a4, ra, t5<br> [0x800004e0]:sd a4, 120(s1)<br>     |
|  17|[0x80003090]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x10<br> - rd : x0<br> - rs1_val == 512<br>                                                                                                                                                              |[0x800004ec]:sra zero, a6, a0<br> [0x800004f0]:sd zero, 128(s1)<br> |
|  18|[0x80003098]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x29<br> - rd : x10<br> - rs1_val == 1024<br>                                                                                                                                                            |[0x80000504]:sra a0, s10, t4<br> [0x80000508]:sd a0, 0(gp)<br>      |
|  19|[0x800030a0]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x27<br> - rd : x31<br> - rs1_val == 2048<br> - rs2_val == 42<br>                                                                                                                                         |[0x80000518]:sra t6, s1, s11<br> [0x8000051c]:sd t6, 8(gp)<br>      |
|  20|[0x800030a8]<br>0x0000000000000100|- rs1 : x22<br> - rs2 : x19<br> - rd : x1<br> - rs1_val == 4096<br> - rs2_val == 4<br>                                                                                                                                          |[0x80000528]:sra ra, s6, s3<br> [0x8000052c]:sd ra, 16(gp)<br>      |
|  21|[0x800030b0]<br>0x0000000000000010|- rs1 : x17<br> - rs2 : x13<br> - rd : x9<br> - rs1_val == 8192<br>                                                                                                                                                             |[0x80000538]:sra s1, a7, a3<br> [0x8000053c]:sd s1, 24(gp)<br>      |
|  22|[0x800030b8]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x7<br> - rd : x13<br> - rs1_val == 16384<br> - rs2_val == 31<br>                                                                                                                                        |[0x80000548]:sra a3, s2, t2<br> [0x8000054c]:sd a3, 32(gp)<br>      |
|  23|[0x800030c0]<br>0x0000000000000040|- rs1 : x7<br> - rs2 : x31<br> - rd : x19<br> - rs1_val == 32768<br>                                                                                                                                                            |[0x80000558]:sra s3, t2, t6<br> [0x8000055c]:sd s3, 40(gp)<br>      |
|  24|[0x800030c8]<br>0x0000000000002000|- rs1 : x21<br> - rs2 : x26<br> - rd : x23<br> - rs1_val == 65536<br>                                                                                                                                                           |[0x80000568]:sra s7, s5, s10<br> [0x8000056c]:sd s7, 48(gp)<br>     |
|  25|[0x800030d0]<br>0x0000000000004000|- rs1 : x10<br> - rs2 : x11<br> - rd : x29<br> - rs1_val == 131072<br>                                                                                                                                                          |[0x80000578]:sra t4, a0, a1<br> [0x8000057c]:sd t4, 56(gp)<br>      |
|  26|[0x800030d8]<br>0x0000000000000400|- rs1 : x19<br> - rs2 : x2<br> - rd : x27<br> - rs1_val == 262144<br>                                                                                                                                                           |[0x80000588]:sra s11, s3, sp<br> [0x8000058c]:sd s11, 64(gp)<br>    |
|  27|[0x800030e0]<br>0x0000000000001000|- rs1 : x12<br> - rs2 : x6<br> - rd : x17<br> - rs1_val == 524288<br>                                                                                                                                                           |[0x80000598]:sra a7, a2, t1<br> [0x8000059c]:sd a7, 72(gp)<br>      |
|  28|[0x800030e8]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x14<br> - rd : x22<br> - rs1_val == 1048576<br> - rs2_val == 32<br>                                                                                                                                      |[0x800005a8]:sra s6, t0, a4<br> [0x800005ac]:sd s6, 80(gp)<br>      |
|  29|[0x800030f0]<br>0x0000000000020000|- rs1 : x6<br> - rs2 : x9<br> - rd : x16<br> - rs1_val == 2097152<br>                                                                                                                                                           |[0x800005b8]:sra a6, t1, s1<br> [0x800005bc]:sd a6, 88(gp)<br>      |
|  30|[0x800030f8]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x25<br> - rd : x5<br> - rs1_val == 4194304<br>                                                                                                                                                          |[0x800005c8]:sra t0, t5, s9<br> [0x800005cc]:sd t0, 96(gp)<br>      |
|  31|[0x80003100]<br>0x0000000000000004|- rs1 : x28<br> - rs2 : x20<br> - rd : x15<br> - rs1_val == 8388608<br> - rs2_val == 21<br>                                                                                                                                     |[0x800005d8]:sra a5, t3, s4<br> [0x800005dc]:sd a5, 104(gp)<br>     |
|  32|[0x80003108]<br>0x0000000000000008|- rs1 : x11<br> - rs2 : x17<br> - rd : x25<br> - rs1_val == 16777216<br>                                                                                                                                                        |[0x800005e8]:sra s9, a1, a7<br> [0x800005ec]:sd s9, 112(gp)<br>     |
|  33|[0x80003110]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                                                                                                       |[0x800005f8]:sra a2, a0, a1<br> [0x800005fc]:sd a2, 120(gp)<br>     |
|  34|[0x80003118]<br>0x0000000000000400|- rs1_val == 67108864<br> - rs2_val == 16<br>                                                                                                                                                                                   |[0x80000608]:sra a2, a0, a1<br> [0x8000060c]:sd a2, 128(gp)<br>     |
|  35|[0x80003120]<br>0x0000000002000000|- rs1_val == 134217728<br>                                                                                                                                                                                                      |[0x80000618]:sra a2, a0, a1<br> [0x8000061c]:sd a2, 136(gp)<br>     |
|  36|[0x80003128]<br>0x0000000000008000|- rs1_val == 268435456<br>                                                                                                                                                                                                      |[0x80000628]:sra a2, a0, a1<br> [0x8000062c]:sd a2, 144(gp)<br>     |
|  37|[0x80003130]<br>0x0000000004000000|- rs1_val == 536870912<br>                                                                                                                                                                                                      |[0x80000638]:sra a2, a0, a1<br> [0x8000063c]:sd a2, 152(gp)<br>     |
|  38|[0x80003138]<br>0x0000000000040000|- rs1_val == 1073741824<br>                                                                                                                                                                                                     |[0x80000648]:sra a2, a0, a1<br> [0x8000064c]:sd a2, 160(gp)<br>     |
|  39|[0x80003140]<br>0x0000000000100000|- rs1_val == 2147483648<br>                                                                                                                                                                                                     |[0x8000065c]:sra a2, a0, a1<br> [0x80000660]:sd a2, 168(gp)<br>     |
|  40|[0x80003148]<br>0x0000000000800000|- rs1_val == 8589934592<br>                                                                                                                                                                                                     |[0x80000670]:sra a2, a0, a1<br> [0x80000674]:sd a2, 176(gp)<br>     |
|  41|[0x80003150]<br>0x0000000000100000|- rs1_val == 17179869184<br>                                                                                                                                                                                                    |[0x80000684]:sra a2, a0, a1<br> [0x80000688]:sd a2, 184(gp)<br>     |
|  42|[0x80003158]<br>0x0000000000100000|- rs1_val == 34359738368<br>                                                                                                                                                                                                    |[0x80000698]:sra a2, a0, a1<br> [0x8000069c]:sd a2, 192(gp)<br>     |
|  43|[0x80003160]<br>0x0000000000000010|- rs1_val == 68719476736<br>                                                                                                                                                                                                    |[0x800006ac]:sra a2, a0, a1<br> [0x800006b0]:sd a2, 200(gp)<br>     |
|  44|[0x80003168]<br>0x0000000000000000|- rs1_val == 137438953472<br> - rs2_val == 47<br>                                                                                                                                                                               |[0x800006c0]:sra a2, a0, a1<br> [0x800006c4]:sd a2, 208(gp)<br>     |
|  45|[0x80003170]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                                                                                   |[0x800006d4]:sra a2, a0, a1<br> [0x800006d8]:sd a2, 216(gp)<br>     |
|  46|[0x80003178]<br>0x0000000000800000|- rs1_val == 549755813888<br>                                                                                                                                                                                                   |[0x800006e8]:sra a2, a0, a1<br> [0x800006ec]:sd a2, 224(gp)<br>     |
|  47|[0x80003180]<br>0x0000000010000000|- rs1_val == 1099511627776<br>                                                                                                                                                                                                  |[0x800006fc]:sra a2, a0, a1<br> [0x80000700]:sd a2, 232(gp)<br>     |
|  48|[0x80003188]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                                                                                  |[0x80000710]:sra a2, a0, a1<br> [0x80000714]:sd a2, 240(gp)<br>     |
|  49|[0x80003190]<br>0x0000002000000000|- rs1_val == 4398046511104<br>                                                                                                                                                                                                  |[0x80000724]:sra a2, a0, a1<br> [0x80000728]:sd a2, 248(gp)<br>     |
|  50|[0x80003198]<br>0x0000000800000000|- rs1_val == 8796093022208<br>                                                                                                                                                                                                  |[0x80000738]:sra a2, a0, a1<br> [0x8000073c]:sd a2, 256(gp)<br>     |
|  51|[0x800031a0]<br>0x0000000000000000|- rs1_val == 17592186044416<br> - rs2_val == 55<br>                                                                                                                                                                             |[0x8000074c]:sra a2, a0, a1<br> [0x80000750]:sd a2, 264(gp)<br>     |
|  52|[0x800031a8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                                                                 |[0x80000760]:sra a2, a0, a1<br> [0x80000764]:sd a2, 272(gp)<br>     |
|  53|[0x800031b0]<br>0x0000000400000000|- rs1_val == 70368744177664<br>                                                                                                                                                                                                 |[0x80000774]:sra a2, a0, a1<br> [0x80000778]:sd a2, 280(gp)<br>     |
|  54|[0x800031b8]<br>0x0000000000000020|- rs1_val == 140737488355328<br>                                                                                                                                                                                                |[0x80000788]:sra a2, a0, a1<br> [0x8000078c]:sd a2, 288(gp)<br>     |
|  55|[0x800031c0]<br>0x0000000000000040|- rs1_val == 281474976710656<br>                                                                                                                                                                                                |[0x8000079c]:sra a2, a0, a1<br> [0x800007a0]:sd a2, 296(gp)<br>     |
|  56|[0x800031c8]<br>0x0000000800000000|- rs1_val == 562949953421312<br>                                                                                                                                                                                                |[0x800007b0]:sra a2, a0, a1<br> [0x800007b4]:sd a2, 304(gp)<br>     |
|  57|[0x800031d0]<br>0x0000004000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                                                               |[0x800007c4]:sra a2, a0, a1<br> [0x800007c8]:sd a2, 312(gp)<br>     |
|  58|[0x800031d8]<br>0x0000000000000000|- rs1_val == 2251799813685248<br> - rs2_val == 61<br>                                                                                                                                                                           |[0x800007d8]:sra a2, a0, a1<br> [0x800007dc]:sd a2, 320(gp)<br>     |
|  59|[0x800031e0]<br>0x0000010000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                                                               |[0x800007ec]:sra a2, a0, a1<br> [0x800007f0]:sd a2, 328(gp)<br>     |
|  60|[0x800031e8]<br>0x0000008000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                                                               |[0x80000800]:sra a2, a0, a1<br> [0x80000804]:sd a2, 336(gp)<br>     |
|  61|[0x800031f0]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                                                              |[0x80000814]:sra a2, a0, a1<br> [0x80000818]:sd a2, 344(gp)<br>     |
|  62|[0x800031f8]<br>0x0000000400000000|- rs1_val == 36028797018963968<br>                                                                                                                                                                                              |[0x80000828]:sra a2, a0, a1<br> [0x8000082c]:sd a2, 352(gp)<br>     |
|  63|[0x80003200]<br>0x0010000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                                                              |[0x8000083c]:sra a2, a0, a1<br> [0x80000840]:sd a2, 360(gp)<br>     |
|  64|[0x80003208]<br>0x0100000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                                                             |[0x80000850]:sra a2, a0, a1<br> [0x80000854]:sd a2, 368(gp)<br>     |
|  65|[0x80003210]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                                                             |[0x80000864]:sra a2, a0, a1<br> [0x80000868]:sd a2, 376(gp)<br>     |
|  66|[0x80003218]<br>0x0100000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                                                             |[0x80000878]:sra a2, a0, a1<br> [0x8000087c]:sd a2, 384(gp)<br>     |
|  67|[0x80003220]<br>0x0000100000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                                                            |[0x8000088c]:sra a2, a0, a1<br> [0x80000890]:sd a2, 392(gp)<br>     |
|  68|[0x80003228]<br>0x0000000000004000|- rs1_val == 2305843009213693952<br>                                                                                                                                                                                            |[0x800008a0]:sra a2, a0, a1<br> [0x800008a4]:sd a2, 400(gp)<br>     |
|  69|[0x80003230]<br>0x0000100000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                                                                            |[0x800008b4]:sra a2, a0, a1<br> [0x800008b8]:sd a2, 408(gp)<br>     |
|  70|[0x80003238]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                                                             |[0x800008c4]:sra a2, a0, a1<br> [0x800008c8]:sd a2, 416(gp)<br>     |
|  71|[0x80003240]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                                                             |[0x800008d4]:sra a2, a0, a1<br> [0x800008d8]:sd a2, 424(gp)<br>     |
|  72|[0x80003248]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                                                             |[0x800008e4]:sra a2, a0, a1<br> [0x800008e8]:sd a2, 432(gp)<br>     |
|  73|[0x80003250]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -9<br>                                                                                                                                                                                                             |[0x800008f4]:sra a2, a0, a1<br> [0x800008f8]:sd a2, 440(gp)<br>     |
|  74|[0x80003258]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                                                            |[0x80000904]:sra a2, a0, a1<br> [0x80000908]:sd a2, 448(gp)<br>     |
|  75|[0x80003260]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                                                            |[0x80000914]:sra a2, a0, a1<br> [0x80000918]:sd a2, 456(gp)<br>     |
|  76|[0x80003268]<br>0xFFFFFFFFFFFFFFBF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -65<br>                                                                                                                                                                         |[0x80000924]:sra a2, a0, a1<br> [0x80000928]:sd a2, 464(gp)<br>     |
|  77|[0x80003270]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -129<br>                                                                                                                                                                                                           |[0x80000934]:sra a2, a0, a1<br> [0x80000938]:sd a2, 472(gp)<br>     |
|  78|[0x80003278]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -257<br>                                                                                                                                                                                                           |[0x80000944]:sra a2, a0, a1<br> [0x80000948]:sd a2, 480(gp)<br>     |
|  79|[0x80003280]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                                                           |[0x80000954]:sra a2, a0, a1<br> [0x80000958]:sd a2, 488(gp)<br>     |
|  80|[0x80003288]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                                                          |[0x80000964]:sra a2, a0, a1<br> [0x80000968]:sd a2, 496(gp)<br>     |
|  81|[0x80003290]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -2049<br>                                                                                                                                                                                                          |[0x80000978]:sra a2, a0, a1<br> [0x8000097c]:sd a2, 504(gp)<br>     |
|  82|[0x80003298]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -4097<br>                                                                                                                                                                                                          |[0x8000098c]:sra a2, a0, a1<br> [0x80000990]:sd a2, 512(gp)<br>     |
|  83|[0x800032a0]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -8193<br>                                                                                                                                                                                                          |[0x800009a0]:sra a2, a0, a1<br> [0x800009a4]:sd a2, 520(gp)<br>     |
|  84|[0x800032a8]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -16385<br>                                                                                                                                                                                                         |[0x800009b4]:sra a2, a0, a1<br> [0x800009b8]:sd a2, 528(gp)<br>     |
|  85|[0x800032b0]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -32769<br>                                                                                                                                                                                                         |[0x800009c8]:sra a2, a0, a1<br> [0x800009cc]:sd a2, 536(gp)<br>     |
|  86|[0x800032b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65537<br> - rs2_val == 62<br>                                                                                                                                                                                     |[0x800009dc]:sra a2, a0, a1<br> [0x800009e0]:sd a2, 544(gp)<br>     |
|  87|[0x800032c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                                                                                        |[0x800009f0]:sra a2, a0, a1<br> [0x800009f4]:sd a2, 552(gp)<br>     |
|  88|[0x800032c8]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -262145<br>                                                                                                                                                                                                        |[0x80000a04]:sra a2, a0, a1<br> [0x80000a08]:sd a2, 560(gp)<br>     |
|  89|[0x800032d0]<br>0xFFFDFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                                                                             |[0x80000a1c]:sra a2, a0, a1<br> [0x80000a20]:sd a2, 568(gp)<br>     |
|  90|[0x800032d8]<br>0xFFFFFBFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                                                                             |[0x80000a34]:sra a2, a0, a1<br> [0x80000a38]:sd a2, 576(gp)<br>     |
|  91|[0x800032e0]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                                                                            |[0x80000a4c]:sra a2, a0, a1<br> [0x80000a50]:sd a2, 584(gp)<br>     |
|  92|[0x800032e8]<br>0xFEFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                                                                            |[0x80000a64]:sra a2, a0, a1<br> [0x80000a68]:sd a2, 592(gp)<br>     |
|  93|[0x800032f0]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                                                                            |[0x80000a7c]:sra a2, a0, a1<br> [0x80000a80]:sd a2, 600(gp)<br>     |
|  94|[0x800032f8]<br>0xFEFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                                                                           |[0x80000a94]:sra a2, a0, a1<br> [0x80000a98]:sd a2, 608(gp)<br>     |
|  95|[0x80003300]<br>0xFBFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                                                                           |[0x80000aac]:sra a2, a0, a1<br> [0x80000ab0]:sd a2, 616(gp)<br>     |
|  96|[0x80003308]<br>0xDFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                                                                           |[0x80000ac4]:sra a2, a0, a1<br> [0x80000ac8]:sd a2, 624(gp)<br>     |
|  97|[0x80003310]<br>0x002AAAAAAAAAAAAA|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                                                                                         |[0x80000af0]:sra a2, a0, a1<br> [0x80000af4]:sd a2, 632(gp)<br>     |
|  98|[0x80003318]<br>0xFF55555555555555|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                                                                                       |[0x80000b1c]:sra a2, a0, a1<br> [0x80000b20]:sd a2, 640(gp)<br>     |
|  99|[0x80003320]<br>0x0000000000000001|- rs1_val==3<br>                                                                                                                                                                                                                |[0x80000b2c]:sra a2, a0, a1<br> [0x80000b30]:sd a2, 648(gp)<br>     |
| 100|[0x80003328]<br>0x0000000000000000|- rs1_val==5<br>                                                                                                                                                                                                                |[0x80000b3c]:sra a2, a0, a1<br> [0x80000b40]:sd a2, 656(gp)<br>     |
| 101|[0x80003330]<br>0x0006666666666666|- rs1_val==7378697629483820646<br>                                                                                                                                                                                              |[0x80000b68]:sra a2, a0, a1<br> [0x80000b6c]:sd a2, 664(gp)<br>     |
| 102|[0x80003338]<br>0xFFFFFFFFFFE95F61|- rs1_val==-3037000499<br>                                                                                                                                                                                                      |[0x80000b84]:sra a2, a0, a1<br> [0x80000b88]:sd a2, 672(gp)<br>     |
| 103|[0x80003340]<br>0x0000000000000001|- rs1_val==3037000499<br>                                                                                                                                                                                                       |[0x80000ba0]:sra a2, a0, a1<br> [0x80000ba4]:sd a2, 680(gp)<br>     |
| 104|[0x80003348]<br>0x00000000000000AA|- rs1_val==6148914691236517204<br>                                                                                                                                                                                              |[0x80000bcc]:sra a2, a0, a1<br> [0x80000bd0]:sd a2, 688(gp)<br>     |
| 105|[0x80003350]<br>0x0000000033333333|- rs1_val==3689348814741910322<br>                                                                                                                                                                                              |[0x80000bf8]:sra a2, a0, a1<br> [0x80000bfc]:sd a2, 696(gp)<br>     |
| 106|[0x80003358]<br>0x0033333333333333|- rs1_val==7378697629483820645<br>                                                                                                                                                                                              |[0x80000c24]:sra a2, a0, a1<br> [0x80000c28]:sd a2, 704(gp)<br>     |
| 107|[0x80003360]<br>0x00000000000005A8|- rs1_val==3037000498<br>                                                                                                                                                                                                       |[0x80000c40]:sra a2, a0, a1<br> [0x80000c44]:sd a2, 712(gp)<br>     |
| 108|[0x80003368]<br>0x0001555555555555|- rs1_val==6148914691236517206<br>                                                                                                                                                                                              |[0x80000c6c]:sra a2, a0, a1<br> [0x80000c70]:sd a2, 720(gp)<br>     |
| 109|[0x80003370]<br>0xFFFEAAAAAAAAAAAA|- rs1_val==-6148914691236517205<br>                                                                                                                                                                                             |[0x80000c98]:sra a2, a0, a1<br> [0x80000c9c]:sd a2, 728(gp)<br>     |
| 110|[0x80003378]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                                                                                                |[0x80000ca8]:sra a2, a0, a1<br> [0x80000cac]:sd a2, 736(gp)<br>     |
| 111|[0x80003380]<br>0x00000CCCCCCCCCCC|- rs1_val==3689348814741910324<br>                                                                                                                                                                                              |[0x80000cd4]:sra a2, a0, a1<br> [0x80000cd8]:sd a2, 744(gp)<br>     |
| 112|[0x80003388]<br>0x0001999999999999|- rs1_val==7378697629483820647<br>                                                                                                                                                                                              |[0x80000d00]:sra a2, a0, a1<br> [0x80000d04]:sd a2, 752(gp)<br>     |
| 113|[0x80003390]<br>0xFFFFFFFFFFFFA57D|- rs1_val==-3037000498<br>                                                                                                                                                                                                      |[0x80000d1c]:sra a2, a0, a1<br> [0x80000d20]:sd a2, 760(gp)<br>     |
| 114|[0x80003398]<br>0x0000000000000000|- rs1_val==3037000500<br>                                                                                                                                                                                                       |[0x80000d38]:sra a2, a0, a1<br> [0x80000d3c]:sd a2, 768(gp)<br>     |
| 115|[0x800033a0]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == 59<br>                                                                                                                                                                                                             |[0x80000d50]:sra a2, a0, a1<br> [0x80000d54]:sd a2, 776(gp)<br>     |
| 116|[0x800033a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -524289<br>                                                                                                                                                                                                        |[0x80000d64]:sra a2, a0, a1<br> [0x80000d68]:sd a2, 784(gp)<br>     |
| 117|[0x800033b0]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -1048577<br>                                                                                                                                                                                                       |[0x80000d78]:sra a2, a0, a1<br> [0x80000d7c]:sd a2, 792(gp)<br>     |
| 118|[0x800033b8]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -2097153<br>                                                                                                                                                                                                       |[0x80000d8c]:sra a2, a0, a1<br> [0x80000d90]:sd a2, 800(gp)<br>     |
| 119|[0x800033c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4194305<br>                                                                                                                                                                                                       |[0x80000da0]:sra a2, a0, a1<br> [0x80000da4]:sd a2, 808(gp)<br>     |
| 120|[0x800033c8]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -8388609<br>                                                                                                                                                                                                       |[0x80000db4]:sra a2, a0, a1<br> [0x80000db8]:sd a2, 816(gp)<br>     |
| 121|[0x800033d0]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -16777217<br>                                                                                                                                                                                                      |[0x80000dc8]:sra a2, a0, a1<br> [0x80000dcc]:sd a2, 824(gp)<br>     |
| 122|[0x800033d8]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                      |[0x80000ddc]:sra a2, a0, a1<br> [0x80000de0]:sd a2, 832(gp)<br>     |
| 123|[0x800033e0]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -67108865<br>                                                                                                                                                                                                      |[0x80000df0]:sra a2, a0, a1<br> [0x80000df4]:sd a2, 840(gp)<br>     |
| 124|[0x800033e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                                     |[0x80000e04]:sra a2, a0, a1<br> [0x80000e08]:sd a2, 848(gp)<br>     |
| 125|[0x800033f0]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -268435457<br>                                                                                                                                                                                                     |[0x80000e18]:sra a2, a0, a1<br> [0x80000e1c]:sd a2, 856(gp)<br>     |
| 126|[0x800033f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                                                                                     |[0x80000e2c]:sra a2, a0, a1<br> [0x80000e30]:sd a2, 864(gp)<br>     |
| 127|[0x80003400]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                                    |[0x80000e40]:sra a2, a0, a1<br> [0x80000e44]:sd a2, 872(gp)<br>     |
| 128|[0x80003408]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -2147483649<br>                                                                                                                                                                                                    |[0x80000e58]:sra a2, a0, a1<br> [0x80000e5c]:sd a2, 880(gp)<br>     |
| 129|[0x80003410]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -8589934593<br>                                                                                                                                                                                                    |[0x80000e70]:sra a2, a0, a1<br> [0x80000e74]:sd a2, 888(gp)<br>     |
| 130|[0x80003418]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                                                                                   |[0x80000e88]:sra a2, a0, a1<br> [0x80000e8c]:sd a2, 896(gp)<br>     |
| 131|[0x80003420]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -68719476737<br>                                                                                                                                                                                                   |[0x80000ea0]:sra a2, a0, a1<br> [0x80000ea4]:sd a2, 904(gp)<br>     |
| 132|[0x80003428]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                                                                                  |[0x80000eb8]:sra a2, a0, a1<br> [0x80000ebc]:sd a2, 912(gp)<br>     |
| 133|[0x80003430]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                                                                                                  |[0x80000ed0]:sra a2, a0, a1<br> [0x80000ed4]:sd a2, 920(gp)<br>     |
| 134|[0x80003438]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                                                                                  |[0x80000ee8]:sra a2, a0, a1<br> [0x80000eec]:sd a2, 928(gp)<br>     |
| 135|[0x80003440]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                                                                                 |[0x80000f00]:sra a2, a0, a1<br> [0x80000f04]:sd a2, 936(gp)<br>     |
| 136|[0x80003448]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                                                                                 |[0x80000f18]:sra a2, a0, a1<br> [0x80000f1c]:sd a2, 944(gp)<br>     |
| 137|[0x80003450]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -4398046511105<br>                                                                                                                                                                                                 |[0x80000f30]:sra a2, a0, a1<br> [0x80000f34]:sd a2, 952(gp)<br>     |
| 138|[0x80003458]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                                                                                 |[0x80000f48]:sra a2, a0, a1<br> [0x80000f4c]:sd a2, 960(gp)<br>     |
| 139|[0x80003460]<br>0xFFFFFFDFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                                                                                |[0x80000f60]:sra a2, a0, a1<br> [0x80000f64]:sd a2, 968(gp)<br>     |
| 140|[0x80003468]<br>0xFFFFEFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                                                                                |[0x80000f78]:sra a2, a0, a1<br> [0x80000f7c]:sd a2, 976(gp)<br>     |
| 141|[0x80003470]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                                                                                |[0x80000f90]:sra a2, a0, a1<br> [0x80000f94]:sd a2, 984(gp)<br>     |
| 142|[0x80003478]<br>0xFFFFFFEFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                                                                               |[0x80000fa8]:sra a2, a0, a1<br> [0x80000fac]:sd a2, 992(gp)<br>     |
| 143|[0x80003480]<br>0xFFFFDFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                                                                               |[0x80000fc0]:sra a2, a0, a1<br> [0x80000fc4]:sd a2, 1000(gp)<br>    |
| 144|[0x80003488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                                                                               |[0x80000fd8]:sra a2, a0, a1<br> [0x80000fdc]:sd a2, 1008(gp)<br>    |
| 145|[0x80003490]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                                                                              |[0x80000ff0]:sra a2, a0, a1<br> [0x80000ff4]:sd a2, 1016(gp)<br>    |
| 146|[0x80003498]<br>0xFFFBFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                                                                              |[0x80001008]:sra a2, a0, a1<br> [0x8000100c]:sd a2, 1024(gp)<br>    |
| 147|[0x800034a0]<br>0xFFFFFFDFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                                                                              |[0x80001020]:sra a2, a0, a1<br> [0x80001024]:sd a2, 1032(gp)<br>    |
| 148|[0x800034a8]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                                                                              |[0x80001038]:sra a2, a0, a1<br> [0x8000103c]:sd a2, 1040(gp)<br>    |
| 149|[0x800034b0]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                                                                             |[0x80001050]:sra a2, a0, a1<br> [0x80001054]:sd a2, 1048(gp)<br>    |
| 150|[0x800034d0]<br>0x0000000000000000|- rs1_val == 16<br>                                                                                                                                                                                                             |[0x800010a8]:sra a2, a0, a1<br> [0x800010ac]:sd a2, 1080(gp)<br>    |
