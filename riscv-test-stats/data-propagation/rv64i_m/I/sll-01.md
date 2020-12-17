
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001090')]      |
| SIG_REGION                | [('0x80003010', '0x800034e0', '154 dwords')]      |
| COV_LABELS                | sll      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sll-01.S/sll-01.S    |
| Total Number of coverpoints| 277     |
| Total Coverpoints Hit     | 277      |
| Total Signature Updates   | 153      |
| STAT1                     | 150      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001058]:sll a2, a0, a1
      [0x8000105c]:sd a2, 1056(sp)
 -- Signature Address: 0x800034b8 Data: 0xFFFEFFFFFFFFFC00
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == -274877906945




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001068]:sll a2, a0, a1
      [0x8000106c]:sd a2, 1064(sp)
 -- Signature Address: 0x800034c0 Data: 0x0000000000080000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 131072
      - rs2_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001078]:sll a2, a0, a1
      [0x8000107c]:sd a2, 1072(sp)
 -- Signature Address: 0x800034c8 Data: 0x0000000000400000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 1048576
      - rs2_val == 2






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

|s.no|            signature             |                                                                                                          coverpoints                                                                                                          |                               code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003010]<br>0x8000000000000000|- opcode : sll<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs1_val == -274877906945<br>                                                                                                         |[0x800003b0]:sll t1, s6, s6<br> [0x800003b4]:sd t1, 0(ra)<br>      |
|   2|[0x80003018]<br>0x0000000000800000|- rs1 : x31<br> - rs2 : x7<br> - rd : x7<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 1024<br>                                                                                 |[0x800003c0]:sll t2, t6, t2<br> [0x800003c4]:sd t2, 8(ra)<br>      |
|   3|[0x80003020]<br>0xFD80000000000000|- rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br>                                                                                                                                                          |[0x800003d0]:sll s10, s10, s10<br> [0x800003d4]:sd s10, 16(ra)<br> |
|   4|[0x80003028]<br>0x0000100000000000|- rs1 : x15<br> - rs2 : x28<br> - rd : x20<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 17592186044416<br>                                                                |[0x800003e4]:sll s4, a5, t3<br> [0x800003e8]:sd s4, 24(ra)<br>     |
|   5|[0x80003030]<br>0x0000000000000002|- rs1 : x12<br> - rs2 : x10<br> - rd : x12<br> - rs1 == rd != rs2<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 1<br> |[0x800003f4]:sll a2, a2, a0<br> [0x800003f8]:sd a2, 32(ra)<br>     |
|   6|[0x80003038]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x27<br> - rd : x10<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -9223372036854775808<br>                  |[0x80000408]:sll a0, s5, s11<br> [0x8000040c]:sd a0, 40(ra)<br>    |
|   7|[0x80003040]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : x25<br> - rd : x17<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br> - rs2_val == 59<br>                                                                                      |[0x80000418]:sll a7, t1, s9<br> [0x8000041c]:sd a7, 48(ra)<br>     |
|   8|[0x80003048]<br>0xFFFFFFFF80000000|- rs1 : x24<br> - rs2 : x11<br> - rd : x23<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br> - rs2_val == 31<br>                                                   |[0x80000430]:sll s7, s8, a1<br> [0x80000434]:sd s7, 56(ra)<br>     |
|   9|[0x80003050]<br>0x0000000000000400|- rs1 : x4<br> - rs2 : x24<br> - rd : x2<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                               |[0x80000440]:sll sp, tp, s8<br> [0x80000444]:sd sp, 64(ra)<br>     |
|  10|[0x80003058]<br>0x0000000000002000|- rs1 : x2<br> - rs2 : x17<br> - rd : x4<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                               |[0x80000450]:sll tp, sp, a7<br> [0x80000454]:sd tp, 72(ra)<br>     |
|  11|[0x80003060]<br>0x0000000000080000|- rs1 : x8<br> - rs2 : x5<br> - rd : x11<br> - rs1_val == 8<br> - rs2_val == 16<br>                                                                                                                                            |[0x80000460]:sll a1, fp, t0<br> [0x80000464]:sd a1, 80(ra)<br>     |
|  12|[0x80003068]<br>0x0000000000000020|- rs1 : x18<br> - rs2 : x4<br> - rd : x16<br> - rs1_val == 16<br>                                                                                                                                                              |[0x80000470]:sll a6, s2, tp<br> [0x80000474]:sd a6, 88(ra)<br>     |
|  13|[0x80003070]<br>0x0000000000100000|- rs1 : x3<br> - rs2 : x20<br> - rd : x22<br> - rs1_val == 32<br>                                                                                                                                                              |[0x80000480]:sll s6, gp, s4<br> [0x80000484]:sd s6, 96(ra)<br>     |
|  14|[0x80003078]<br>0x0000000000000200|- rs1 : x5<br> - rs2 : x6<br> - rd : x28<br> - rs1_val == 64<br>                                                                                                                                                               |[0x80000490]:sll t3, t0, t1<br> [0x80000494]:sd t3, 104(ra)<br>    |
|  15|[0x80003080]<br>0x0000000000100000|- rs1 : x11<br> - rs2 : x8<br> - rd : x25<br> - rs1_val == 128<br>                                                                                                                                                             |[0x800004a0]:sll s9, a1, fp<br> [0x800004a4]:sd s9, 112(ra)<br>    |
|  16|[0x80003088]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x2<br> - rd : x14<br> - rs1_val == 256<br>                                                                                                                                                             |[0x800004b0]:sll a4, a3, sp<br> [0x800004b4]:sd a4, 120(ra)<br>    |
|  17|[0x80003090]<br>0x0000000004000000|- rs1 : x9<br> - rs2 : x12<br> - rd : x30<br> - rs1_val == 512<br>                                                                                                                                                             |[0x800004c0]:sll t5, s1, a2<br> [0x800004c4]:sd t5, 128(ra)<br>    |
|  18|[0x80003098]<br>0x0000000000000800|- rs1 : x27<br> - rs2 : x31<br> - rd : x21<br> - rs1_val == 2048<br>                                                                                                                                                           |[0x800004dc]:sll s5, s11, t6<br> [0x800004e0]:sd s5, 0(sp)<br>     |
|  19|[0x800030a0]<br>0x0000080000000000|- rs1 : x20<br> - rs2 : x23<br> - rd : x3<br> - rs1_val == 4096<br>                                                                                                                                                            |[0x800004ec]:sll gp, s4, s7<br> [0x800004f0]:sd gp, 8(sp)<br>      |
|  20|[0x800030a8]<br>0x0000000001000000|- rs1 : x25<br> - rs2 : x19<br> - rd : x5<br> - rs1_val == 8192<br>                                                                                                                                                            |[0x800004fc]:sll t0, s9, s3<br> [0x80000500]:sd t0, 16(sp)<br>     |
|  21|[0x800030b0]<br>0x0000000000800000|- rs1 : x10<br> - rs2 : x29<br> - rd : x1<br> - rs1_val == 16384<br>                                                                                                                                                           |[0x8000050c]:sll ra, a0, t4<br> [0x80000510]:sd ra, 24(sp)<br>     |
|  22|[0x800030b8]<br>0x0000000000008000|- rs1 : x1<br> - rs2 : x18<br> - rd : x19<br> - rs1_val == 32768<br>                                                                                                                                                           |[0x8000051c]:sll s3, ra, s2<br> [0x80000520]:sd s3, 32(sp)<br>     |
|  23|[0x800030c0]<br>0x0000000000020000|- rs1 : x29<br> - rs2 : x30<br> - rd : x31<br> - rs1_val == 65536<br>                                                                                                                                                          |[0x8000052c]:sll t6, t4, t5<br> [0x80000530]:sd t6, 40(sp)<br>     |
|  24|[0x800030c8]<br>0x0000000000020000|- rs1 : x28<br> - rs2 : x0<br> - rd : x15<br> - rs1_val == 131072<br>                                                                                                                                                          |[0x8000053c]:sll a5, t3, zero<br> [0x80000540]:sd a5, 48(sp)<br>   |
|  25|[0x800030d0]<br>0x0000000200000000|- rs1 : x30<br> - rs2 : x21<br> - rd : x27<br> - rs1_val == 262144<br>                                                                                                                                                         |[0x8000054c]:sll s11, t5, s5<br> [0x80000550]:sd s11, 56(sp)<br>   |
|  26|[0x800030d8]<br>0x0000000000200000|- rs1 : x16<br> - rs2 : x14<br> - rd : x29<br> - rs1_val == 524288<br> - rs2_val == 2<br>                                                                                                                                      |[0x8000055c]:sll t4, a6, a4<br> [0x80000560]:sd t4, 64(sp)<br>     |
|  27|[0x800030e0]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : x9<br> - rd : x0<br> - rs1_val == 1048576<br>                                                                                                                                                          |[0x8000056c]:sll zero, s7, s1<br> [0x80000570]:sd zero, 72(sp)<br> |
|  28|[0x800030e8]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x1<br> - rd : x18<br> - rs1_val == 2097152<br>                                                                                                                                                         |[0x8000057c]:sll s2, a7, ra<br> [0x80000580]:sd s2, 80(sp)<br>     |
|  29|[0x800030f0]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x15<br> - rd : x24<br> - rs1_val == 4194304<br>                                                                                                                                                        |[0x8000058c]:sll s8, s3, a5<br> [0x80000590]:sd s8, 88(sp)<br>     |
|  30|[0x800030f8]<br>0x0000040000000000|- rs1 : x14<br> - rs2 : x13<br> - rd : x8<br> - rs1_val == 8388608<br>                                                                                                                                                         |[0x8000059c]:sll fp, a4, a3<br> [0x800005a0]:sd fp, 96(sp)<br>     |
|  31|[0x80003100]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x3<br> - rd : x13<br> - rs2_val == 32<br>                                                                                                                                                               |[0x800005ac]:sll a3, zero, gp<br> [0x800005b0]:sd a3, 104(sp)<br>  |
|  32|[0x80003108]<br>0x0000004000000000|- rs1 : x7<br> - rs2 : x16<br> - rd : x9<br> - rs1_val == 33554432<br>                                                                                                                                                         |[0x800005bc]:sll s1, t2, a6<br> [0x800005c0]:sd s1, 112(sp)<br>    |
|  33|[0x80003110]<br>0x0000000000000000|- rs1_val == 67108864<br>                                                                                                                                                                                                      |[0x800005cc]:sll a2, a0, a1<br> [0x800005d0]:sd a2, 120(sp)<br>    |
|  34|[0x80003118]<br>0x0000000040000000|- rs1_val == 134217728<br>                                                                                                                                                                                                     |[0x800005dc]:sll a2, a0, a1<br> [0x800005e0]:sd a2, 128(sp)<br>    |
|  35|[0x80003120]<br>0x0000000100000000|- rs1_val == 268435456<br> - rs2_val == 4<br>                                                                                                                                                                                  |[0x800005ec]:sll a2, a0, a1<br> [0x800005f0]:sd a2, 136(sp)<br>    |
|  36|[0x80003128]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                                                                                                     |[0x800005fc]:sll a2, a0, a1<br> [0x80000600]:sd a2, 144(sp)<br>    |
|  37|[0x80003130]<br>0x0000001000000000|- rs1_val == 1073741824<br>                                                                                                                                                                                                    |[0x8000060c]:sll a2, a0, a1<br> [0x80000610]:sd a2, 152(sp)<br>    |
|  38|[0x80003138]<br>0x0000008000000000|- rs1_val == 2147483648<br> - rs2_val == 8<br>                                                                                                                                                                                 |[0x80000620]:sll a2, a0, a1<br> [0x80000624]:sd a2, 160(sp)<br>    |
|  39|[0x80003140]<br>0x0004000000000000|- rs1_val == 4294967296<br>                                                                                                                                                                                                    |[0x80000634]:sll a2, a0, a1<br> [0x80000638]:sd a2, 168(sp)<br>    |
|  40|[0x80003148]<br>0x0000040000000000|- rs1_val == 8589934592<br>                                                                                                                                                                                                    |[0x80000648]:sll a2, a0, a1<br> [0x8000064c]:sd a2, 176(sp)<br>    |
|  41|[0x80003150]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                                                                                   |[0x8000065c]:sll a2, a0, a1<br> [0x80000660]:sd a2, 184(sp)<br>    |
|  42|[0x80003158]<br>0x0000001000000000|- rs1_val == 34359738368<br>                                                                                                                                                                                                   |[0x80000670]:sll a2, a0, a1<br> [0x80000674]:sd a2, 192(sp)<br>    |
|  43|[0x80003160]<br>0x0002000000000000|- rs1_val == 68719476736<br>                                                                                                                                                                                                   |[0x80000684]:sll a2, a0, a1<br> [0x80000688]:sd a2, 200(sp)<br>    |
|  44|[0x80003168]<br>0x0000000000000000|- rs1_val == 137438953472<br> - rs2_val == 42<br>                                                                                                                                                                              |[0x80000698]:sll a2, a0, a1<br> [0x8000069c]:sd a2, 208(sp)<br>    |
|  45|[0x80003170]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                                                                                  |[0x800006ac]:sll a2, a0, a1<br> [0x800006b0]:sd a2, 216(sp)<br>    |
|  46|[0x80003178]<br>0x0100000000000000|- rs1_val == 549755813888<br>                                                                                                                                                                                                  |[0x800006c0]:sll a2, a0, a1<br> [0x800006c4]:sd a2, 224(sp)<br>    |
|  47|[0x80003180]<br>0x0000040000000000|- rs1_val == 1099511627776<br>                                                                                                                                                                                                 |[0x800006d4]:sll a2, a0, a1<br> [0x800006d8]:sd a2, 232(sp)<br>    |
|  48|[0x80003188]<br>0x0000000000000000|- rs1_val == 2199023255552<br> - rs2_val == 61<br>                                                                                                                                                                             |[0x800006e8]:sll a2, a0, a1<br> [0x800006ec]:sd a2, 240(sp)<br>    |
|  49|[0x80003190]<br>0x0040000000000000|- rs1_val == 4398046511104<br>                                                                                                                                                                                                 |[0x800006fc]:sll a2, a0, a1<br> [0x80000700]:sd a2, 248(sp)<br>    |
|  50|[0x80003198]<br>0x0000200000000000|- rs1_val == 8796093022208<br>                                                                                                                                                                                                 |[0x80000710]:sll a2, a0, a1<br> [0x80000714]:sd a2, 256(sp)<br>    |
|  51|[0x800031a0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                                                                |[0x80000724]:sll a2, a0, a1<br> [0x80000728]:sd a2, 264(sp)<br>    |
|  52|[0x800031a8]<br>0x0080000000000000|- rs1_val == 70368744177664<br>                                                                                                                                                                                                |[0x80000738]:sll a2, a0, a1<br> [0x8000073c]:sd a2, 272(sp)<br>    |
|  53|[0x800031b0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                                                                               |[0x8000074c]:sll a2, a0, a1<br> [0x80000750]:sd a2, 280(sp)<br>    |
|  54|[0x800031b8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                                                               |[0x80000760]:sll a2, a0, a1<br> [0x80000764]:sd a2, 288(sp)<br>    |
|  55|[0x800031c0]<br>0x0004000000000000|- rs1_val == 562949953421312<br>                                                                                                                                                                                               |[0x80000774]:sll a2, a0, a1<br> [0x80000778]:sd a2, 296(sp)<br>    |
|  56|[0x800031c8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                                                              |[0x80000788]:sll a2, a0, a1<br> [0x8000078c]:sd a2, 304(sp)<br>    |
|  57|[0x800031d0]<br>0x0008000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                                                              |[0x8000079c]:sll a2, a0, a1<br> [0x800007a0]:sd a2, 312(sp)<br>    |
|  58|[0x800031d8]<br>0x0040000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                                                              |[0x800007b0]:sll a2, a0, a1<br> [0x800007b4]:sd a2, 320(sp)<br>    |
|  59|[0x800031e0]<br>0x0100000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                                                              |[0x800007c4]:sll a2, a0, a1<br> [0x800007c8]:sd a2, 328(sp)<br>    |
|  60|[0x800031e8]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                                                             |[0x800007d8]:sll a2, a0, a1<br> [0x800007dc]:sd a2, 336(sp)<br>    |
|  61|[0x800031f0]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                                                             |[0x800007ec]:sll a2, a0, a1<br> [0x800007f0]:sd a2, 344(sp)<br>    |
|  62|[0x800031f8]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                                                             |[0x80000800]:sll a2, a0, a1<br> [0x80000804]:sd a2, 352(sp)<br>    |
|  63|[0x80003200]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                                                            |[0x80000814]:sll a2, a0, a1<br> [0x80000818]:sd a2, 360(sp)<br>    |
|  64|[0x80003208]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                                                            |[0x80000828]:sll a2, a0, a1<br> [0x8000082c]:sd a2, 368(sp)<br>    |
|  65|[0x80003210]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                                                            |[0x8000083c]:sll a2, a0, a1<br> [0x80000840]:sd a2, 376(sp)<br>    |
|  66|[0x80003218]<br>0x4000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                                                           |[0x80000850]:sll a2, a0, a1<br> [0x80000854]:sd a2, 384(sp)<br>    |
|  67|[0x80003220]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                                                           |[0x80000864]:sll a2, a0, a1<br> [0x80000868]:sd a2, 392(sp)<br>    |
|  68|[0x80003228]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                                                                           |[0x80000878]:sll a2, a0, a1<br> [0x8000087c]:sd a2, 400(sp)<br>    |
|  69|[0x80003230]<br>0xFFFFFFFFFFFE0000|- rs1_val == -2<br>                                                                                                                                                                                                            |[0x80000888]:sll a2, a0, a1<br> [0x8000088c]:sd a2, 408(sp)<br>    |
|  70|[0x80003238]<br>0xFFFFFFFFFFFFFFFD|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -3<br>                                                                                                                                                                         |[0x80000898]:sll a2, a0, a1<br> [0x8000089c]:sd a2, 416(sp)<br>    |
|  71|[0x80003240]<br>0xFFFFFFFD80000000|- rs1_val == -5<br>                                                                                                                                                                                                            |[0x800008a8]:sll a2, a0, a1<br> [0x800008ac]:sd a2, 424(sp)<br>    |
|  72|[0x80003248]<br>0xFFFFFFF700000000|- rs1_val == -9<br>                                                                                                                                                                                                            |[0x800008b8]:sll a2, a0, a1<br> [0x800008bc]:sd a2, 432(sp)<br>    |
|  73|[0x80003250]<br>0xFFFFFFFFFF780000|- rs1_val == -17<br>                                                                                                                                                                                                           |[0x800008c8]:sll a2, a0, a1<br> [0x800008cc]:sd a2, 440(sp)<br>    |
|  74|[0x80003258]<br>0x8000000000000000|- rs1_val == -33<br>                                                                                                                                                                                                           |[0x800008d8]:sll a2, a0, a1<br> [0x800008dc]:sd a2, 448(sp)<br>    |
|  75|[0x80003260]<br>0xFFFFFFFFFFFBF000|- rs1_val == -65<br>                                                                                                                                                                                                           |[0x800008e8]:sll a2, a0, a1<br> [0x800008ec]:sd a2, 456(sp)<br>    |
|  76|[0x80003268]<br>0xFFFFFF7F00000000|- rs1_val == -129<br>                                                                                                                                                                                                          |[0x800008f8]:sll a2, a0, a1<br> [0x800008fc]:sd a2, 464(sp)<br>    |
|  77|[0x80003270]<br>0xFFFFFFFFFFFFEFF0|- rs1_val == -257<br>                                                                                                                                                                                                          |[0x80000908]:sll a2, a0, a1<br> [0x8000090c]:sd a2, 472(sp)<br>    |
|  78|[0x80003278]<br>0xFFFFFEFF80000000|- rs1_val == -513<br>                                                                                                                                                                                                          |[0x80000918]:sll a2, a0, a1<br> [0x8000091c]:sd a2, 480(sp)<br>    |
|  79|[0x80003280]<br>0xFFFFFFFFFFFFBFF0|- rs1_val == -1025<br>                                                                                                                                                                                                         |[0x80000928]:sll a2, a0, a1<br> [0x8000092c]:sd a2, 488(sp)<br>    |
|  80|[0x80003288]<br>0xFFFFFFFFFFF7FF00|- rs1_val == -2049<br>                                                                                                                                                                                                         |[0x8000093c]:sll a2, a0, a1<br> [0x80000940]:sd a2, 496(sp)<br>    |
|  81|[0x80003290]<br>0xFFFFFFFFFFFEFFF0|- rs1_val == -4097<br>                                                                                                                                                                                                         |[0x80000950]:sll a2, a0, a1<br> [0x80000954]:sd a2, 504(sp)<br>    |
|  82|[0x80003298]<br>0xFF80000000000000|- rs1_val == -8193<br> - rs2_val == 55<br>                                                                                                                                                                                     |[0x80000964]:sll a2, a0, a1<br> [0x80000968]:sd a2, 512(sp)<br>    |
|  83|[0x800032a0]<br>0xFFFFFFFFDFFF8000|- rs1_val == -16385<br>                                                                                                                                                                                                        |[0x80000978]:sll a2, a0, a1<br> [0x8000097c]:sd a2, 520(sp)<br>    |
|  84|[0x800032a8]<br>0xFFFFFFFFF7FFF000|- rs1_val == -32769<br>                                                                                                                                                                                                        |[0x8000098c]:sll a2, a0, a1<br> [0x80000990]:sd a2, 528(sp)<br>    |
|  85|[0x800032b0]<br>0xFF80000000000000|- rs1_val == -65537<br>                                                                                                                                                                                                        |[0x800009a0]:sll a2, a0, a1<br> [0x800009a4]:sd a2, 536(sp)<br>    |
|  86|[0x800032b8]<br>0xC000000000000000|- rs1_val == -131073<br> - rs2_val == 62<br>                                                                                                                                                                                   |[0x800009b4]:sll a2, a0, a1<br> [0x800009b8]:sd a2, 544(sp)<br>    |
|  87|[0x800032c0]<br>0xFFFFFFFFFDFFFF80|- rs1_val == -262145<br>                                                                                                                                                                                                       |[0x800009c8]:sll a2, a0, a1<br> [0x800009cc]:sd a2, 552(sp)<br>    |
|  88|[0x800032c8]<br>0xFFFFFEFFFFE00000|- rs1_val == -524289<br> - rs2_val == 21<br>                                                                                                                                                                                   |[0x800009dc]:sll a2, a0, a1<br> [0x800009e0]:sd a2, 560(sp)<br>    |
|  89|[0x800032d0]<br>0xBFFFFC0000000000|- rs1_val == -1048577<br>                                                                                                                                                                                                      |[0x800009f0]:sll a2, a0, a1<br> [0x800009f4]:sd a2, 568(sp)<br>    |
|  90|[0x800032d8]<br>0xFFFFFFFF80000000|- rs1_val == -36028797018963969<br>                                                                                                                                                                                            |[0x80000a08]:sll a2, a0, a1<br> [0x80000a0c]:sd a2, 576(sp)<br>    |
|  91|[0x800032e0]<br>0xE000000000000000|- rs1_val == -72057594037927937<br>                                                                                                                                                                                            |[0x80000a20]:sll a2, a0, a1<br> [0x80000a24]:sd a2, 584(sp)<br>    |
|  92|[0x800032e8]<br>0xFFFF800000000000|- rs1_val == -144115188075855873<br> - rs2_val == 47<br>                                                                                                                                                                       |[0x80000a38]:sll a2, a0, a1<br> [0x80000a3c]:sd a2, 592(sp)<br>    |
|  93|[0x800032f0]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -288230376151711745<br>                                                                                                                                                                                           |[0x80000a50]:sll a2, a0, a1<br> [0x80000a54]:sd a2, 600(sp)<br>    |
|  94|[0x800032f8]<br>0xFFFF800000000000|- rs1_val == -576460752303423489<br>                                                                                                                                                                                           |[0x80000a68]:sll a2, a0, a1<br> [0x80000a6c]:sd a2, 608(sp)<br>    |
|  95|[0x80003300]<br>0xFFFFFFFFFFFFE000|- rs1_val == -1152921504606846977<br>                                                                                                                                                                                          |[0x80000a80]:sll a2, a0, a1<br> [0x80000a84]:sd a2, 616(sp)<br>    |
|  96|[0x80003308]<br>0xFFFFFFFFFFFC0000|- rs1_val == -2305843009213693953<br>                                                                                                                                                                                          |[0x80000a98]:sll a2, a0, a1<br> [0x80000a9c]:sd a2, 624(sp)<br>    |
|  97|[0x80003310]<br>0xE000000000000000|- rs1_val == -4611686018427387905<br>                                                                                                                                                                                          |[0x80000ab0]:sll a2, a0, a1<br> [0x80000ab4]:sd a2, 632(sp)<br>    |
|  98|[0x80003318]<br>0xAAAAAAAAAAAAAAA8|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                                                                                        |[0x80000adc]:sll a2, a0, a1<br> [0x80000ae0]:sd a2, 640(sp)<br>    |
|  99|[0x80003320]<br>0xAAAAAAAAAAAAAAA8|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                                                                                      |[0x80000b08]:sll a2, a0, a1<br> [0x80000b0c]:sd a2, 648(sp)<br>    |
| 100|[0x80003328]<br>0x00000000000000C0|- rs1_val==3<br>                                                                                                                                                                                                               |[0x80000b18]:sll a2, a0, a1<br> [0x80000b1c]:sd a2, 656(sp)<br>    |
| 101|[0x80003330]<br>0x0000140000000000|- rs1_val==5<br>                                                                                                                                                                                                               |[0x80000b28]:sll a2, a0, a1<br> [0x80000b2c]:sd a2, 664(sp)<br>    |
| 102|[0x80003338]<br>0x6666666666666666|- rs1_val==3689348814741910323<br>                                                                                                                                                                                             |[0x80000b54]:sll a2, a0, a1<br> [0x80000b58]:sd a2, 672(sp)<br>    |
| 103|[0x80003340]<br>0x3333333333333330|- rs1_val==7378697629483820646<br>                                                                                                                                                                                             |[0x80000b80]:sll a2, a0, a1<br> [0x80000b84]:sd a2, 680(sp)<br>    |
| 104|[0x80003348]<br>0xFFFFD2BEC3334000|- rs1_val==-3037000499<br>                                                                                                                                                                                                     |[0x80000b9c]:sll a2, a0, a1<br> [0x80000ba0]:sd a2, 688(sp)<br>    |
| 105|[0x80003350]<br>0x0000000B504F3330|- rs1_val==3037000499<br>                                                                                                                                                                                                      |[0x80000bb8]:sll a2, a0, a1<br> [0x80000bbc]:sd a2, 696(sp)<br>    |
| 106|[0x80003358]<br>0xAAAAAAAAAAAAAA80|- rs1_val==6148914691236517204<br>                                                                                                                                                                                             |[0x80000be4]:sll a2, a0, a1<br> [0x80000be8]:sd a2, 704(sp)<br>    |
| 107|[0x80003360]<br>0x0000000000000000|- rs1_val==3689348814741910322<br>                                                                                                                                                                                             |[0x80000c10]:sll a2, a0, a1<br> [0x80000c14]:sd a2, 712(sp)<br>    |
| 108|[0x80003368]<br>0x9999999999940000|- rs1_val==7378697629483820645<br>                                                                                                                                                                                             |[0x80000c3c]:sll a2, a0, a1<br> [0x80000c40]:sd a2, 720(sp)<br>    |
| 109|[0x80003370]<br>0xB504F33200000000|- rs1_val==3037000498<br>                                                                                                                                                                                                      |[0x80000c58]:sll a2, a0, a1<br> [0x80000c5c]:sd a2, 728(sp)<br>    |
| 110|[0x80003378]<br>0x5555555555555558|- rs1_val==6148914691236517206<br>                                                                                                                                                                                             |[0x80000c84]:sll a2, a0, a1<br> [0x80000c88]:sd a2, 736(sp)<br>    |
| 111|[0x80003380]<br>0xAAAAAAAAAAAAAAC0|- rs1_val==-6148914691236517205<br>                                                                                                                                                                                            |[0x80000cb0]:sll a2, a0, a1<br> [0x80000cb4]:sd a2, 744(sp)<br>    |
| 112|[0x80003388]<br>0x3000000000000000|- rs1_val==6<br>                                                                                                                                                                                                               |[0x80000cc0]:sll a2, a0, a1<br> [0x80000cc4]:sd a2, 752(sp)<br>    |
| 113|[0x80003390]<br>0x3333333333340000|- rs1_val==3689348814741910324<br>                                                                                                                                                                                             |[0x80000cec]:sll a2, a0, a1<br> [0x80000cf0]:sd a2, 760(sp)<br>    |
| 114|[0x80003398]<br>0x99999C0000000000|- rs1_val==7378697629483820647<br>                                                                                                                                                                                             |[0x80000d18]:sll a2, a0, a1<br> [0x80000d1c]:sd a2, 768(sp)<br>    |
| 115|[0x800033a0]<br>0x8667000000000000|- rs1_val==-3037000498<br>                                                                                                                                                                                                     |[0x80000d34]:sll a2, a0, a1<br> [0x80000d38]:sd a2, 776(sp)<br>    |
| 116|[0x800033a8]<br>0x0000005A82799A00|- rs1_val==3037000500<br>                                                                                                                                                                                                      |[0x80000d50]:sll a2, a0, a1<br> [0x80000d54]:sd a2, 784(sp)<br>    |
| 117|[0x800033b0]<br>0xFFFFFFFFEFFFFF80|- rs1_val == -2097153<br>                                                                                                                                                                                                      |[0x80000d64]:sll a2, a0, a1<br> [0x80000d68]:sd a2, 792(sp)<br>    |
| 118|[0x800033b8]<br>0xFFFFFFFDFFFFF800|- rs1_val == -4194305<br>                                                                                                                                                                                                      |[0x80000d78]:sll a2, a0, a1<br> [0x80000d7c]:sd a2, 800(sp)<br>    |
| 119|[0x800033c0]<br>0xFFFF800000000000|- rs1_val == -8388609<br>                                                                                                                                                                                                      |[0x80000d8c]:sll a2, a0, a1<br> [0x80000d90]:sd a2, 808(sp)<br>    |
| 120|[0x800033c8]<br>0xFFFFFDFFFFFE0000|- rs1_val == -16777217<br>                                                                                                                                                                                                     |[0x80000da0]:sll a2, a0, a1<br> [0x80000da4]:sd a2, 816(sp)<br>    |
| 121|[0x800033d0]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                     |[0x80000db4]:sll a2, a0, a1<br> [0x80000db8]:sd a2, 824(sp)<br>    |
| 122|[0x800033d8]<br>0xFF80000000000000|- rs1_val == -67108865<br>                                                                                                                                                                                                     |[0x80000dc8]:sll a2, a0, a1<br> [0x80000dcc]:sd a2, 832(sp)<br>    |
| 123|[0x800033e0]<br>0xFFFFFFFFDFFFFFFC|- rs1_val == -134217729<br>                                                                                                                                                                                                    |[0x80000ddc]:sll a2, a0, a1<br> [0x80000de0]:sd a2, 840(sp)<br>    |
| 124|[0x800033e8]<br>0xF7FFFFFF80000000|- rs1_val == -268435457<br>                                                                                                                                                                                                    |[0x80000df0]:sll a2, a0, a1<br> [0x80000df4]:sd a2, 848(sp)<br>    |
| 125|[0x800033f0]<br>0xFFFFFFFEFFFFFFF8|- rs1_val == -536870913<br>                                                                                                                                                                                                    |[0x80000e04]:sll a2, a0, a1<br> [0x80000e08]:sd a2, 856(sp)<br>    |
| 126|[0x800033f8]<br>0x8000000000000000|- rs1_val == -1073741825<br>                                                                                                                                                                                                   |[0x80000e18]:sll a2, a0, a1<br> [0x80000e1c]:sd a2, 864(sp)<br>    |
| 127|[0x80003400]<br>0xFFFFFFDFFFFFFFC0|- rs1_val == -2147483649<br>                                                                                                                                                                                                   |[0x80000e30]:sll a2, a0, a1<br> [0x80000e34]:sd a2, 872(sp)<br>    |
| 128|[0x80003408]<br>0xC000000000000000|- rs1_val == -4294967297<br>                                                                                                                                                                                                   |[0x80000e48]:sll a2, a0, a1<br> [0x80000e4c]:sd a2, 880(sp)<br>    |
| 129|[0x80003410]<br>0xFFFFEFFFFFFFF800|- rs1_val == -8589934593<br>                                                                                                                                                                                                   |[0x80000e60]:sll a2, a0, a1<br> [0x80000e64]:sd a2, 888(sp)<br>    |
| 130|[0x80003418]<br>0xFFFDFFFFFFFF8000|- rs1_val == -17179869185<br>                                                                                                                                                                                                  |[0x80000e78]:sll a2, a0, a1<br> [0x80000e7c]:sd a2, 896(sp)<br>    |
| 131|[0x80003420]<br>0xFFFFFFBFFFFFFFF8|- rs1_val == -34359738369<br>                                                                                                                                                                                                  |[0x80000e90]:sll a2, a0, a1<br> [0x80000e94]:sd a2, 904(sp)<br>    |
| 132|[0x80003428]<br>0xFF80000000000000|- rs1_val == -68719476737<br>                                                                                                                                                                                                  |[0x80000ea8]:sll a2, a0, a1<br> [0x80000eac]:sd a2, 912(sp)<br>    |
| 133|[0x80003430]<br>0xFFFFBFFFFFFFFE00|- rs1_val == -137438953473<br>                                                                                                                                                                                                 |[0x80000ec0]:sll a2, a0, a1<br> [0x80000ec4]:sd a2, 920(sp)<br>    |
| 134|[0x80003438]<br>0xFFDFFFFFFFFFC000|- rs1_val == -549755813889<br>                                                                                                                                                                                                 |[0x80000ed8]:sll a2, a0, a1<br> [0x80000edc]:sd a2, 928(sp)<br>    |
| 135|[0x80003440]<br>0xFFFFFC0000000000|- rs1_val == -1099511627777<br>                                                                                                                                                                                                |[0x80000ef0]:sll a2, a0, a1<br> [0x80000ef4]:sd a2, 936(sp)<br>    |
| 136|[0x80003448]<br>0xFFFEFFFFFFFFFF80|- rs1_val == -2199023255553<br>                                                                                                                                                                                                |[0x80000f08]:sll a2, a0, a1<br> [0x80000f0c]:sd a2, 944(sp)<br>    |
| 137|[0x80003450]<br>0xFFFEFFFFFFFFFFC0|- rs1_val == -4398046511105<br>                                                                                                                                                                                                |[0x80000f20]:sll a2, a0, a1<br> [0x80000f24]:sd a2, 952(sp)<br>    |
| 138|[0x80003458]<br>0xFFBFFFFFFFFFF800|- rs1_val == -8796093022209<br>                                                                                                                                                                                                |[0x80000f38]:sll a2, a0, a1<br> [0x80000f3c]:sd a2, 960(sp)<br>    |
| 139|[0x80003460]<br>0xFFFFFFFF00000000|- rs1_val == -17592186044417<br>                                                                                                                                                                                               |[0x80000f50]:sll a2, a0, a1<br> [0x80000f54]:sd a2, 968(sp)<br>    |
| 140|[0x80003468]<br>0xFFFFBFFFFFFFFFFE|- rs1_val == -35184372088833<br>                                                                                                                                                                                               |[0x80000f68]:sll a2, a0, a1<br> [0x80000f6c]:sd a2, 976(sp)<br>    |
| 141|[0x80003470]<br>0xFFFEFFFFFFFFFFFC|- rs1_val == -70368744177665<br>                                                                                                                                                                                               |[0x80000f80]:sll a2, a0, a1<br> [0x80000f84]:sd a2, 984(sp)<br>    |
| 142|[0x80003478]<br>0xDFFFFFFFFFFFC000|- rs1_val == -140737488355329<br>                                                                                                                                                                                              |[0x80000f98]:sll a2, a0, a1<br> [0x80000f9c]:sd a2, 992(sp)<br>    |
| 143|[0x80003480]<br>0xFFDFFFFFFFFFFFE0|- rs1_val == -281474976710657<br>                                                                                                                                                                                              |[0x80000fb0]:sll a2, a0, a1<br> [0x80000fb4]:sd a2, 1000(sp)<br>   |
| 144|[0x80003488]<br>0x7FFFFFFFFFFFC000|- rs1_val == -562949953421313<br>                                                                                                                                                                                              |[0x80000fc8]:sll a2, a0, a1<br> [0x80000fcc]:sd a2, 1008(sp)<br>   |
| 145|[0x80003490]<br>0xFFFFFFFFFFFE0000|- rs1_val == -1125899906842625<br>                                                                                                                                                                                             |[0x80000fe0]:sll a2, a0, a1<br> [0x80000fe4]:sd a2, 1016(sp)<br>   |
| 146|[0x80003498]<br>0xFF80000000000000|- rs1_val == -2251799813685249<br>                                                                                                                                                                                             |[0x80000ff8]:sll a2, a0, a1<br> [0x80000ffc]:sd a2, 1024(sp)<br>   |
| 147|[0x800034a0]<br>0xFFFFFFFFFFFF0000|- rs1_val == -4503599627370497<br>                                                                                                                                                                                             |[0x80001010]:sll a2, a0, a1<br> [0x80001014]:sd a2, 1032(sp)<br>   |
| 148|[0x800034a8]<br>0xFFFFFFFFFFF80000|- rs1_val == -9007199254740993<br>                                                                                                                                                                                             |[0x80001028]:sll a2, a0, a1<br> [0x8000102c]:sd a2, 1040(sp)<br>   |
| 149|[0x800034b0]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -18014398509481985<br>                                                                                                                                                                                            |[0x80001040]:sll a2, a0, a1<br> [0x80001044]:sd a2, 1048(sp)<br>   |
| 150|[0x800034d0]<br>0x0100000000000000|- rs1_val == 16777216<br>                                                                                                                                                                                                      |[0x80001088]:sll a2, a0, a1<br> [0x8000108c]:sd a2, 1080(sp)<br>   |
