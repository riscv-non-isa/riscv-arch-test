
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
| STAT1                     | 151      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001064]:sll a2, a0, a1
      [0x80001068]:sd a2, 1064(t2)
 -- Signature Address: 0x800034c0 Data: 0x0000000000000010
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 2
      - rs1_val==2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001084]:sll a2, a0, a1
      [0x80001088]:sd a2, 1080(t2)
 -- Signature Address: 0x800034d0 Data: 0x0000000040000000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 32768






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

|s.no|            signature             |                                                                                            coverpoints                                                                                            |                               code                                |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003010]<br>0xFFFFFFFF00000000|- opcode : sll<br> - rs1 : x30<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -17592186044417<br> - rs2_val == 32<br> |[0x800003a8]:sll a3, t5, a3<br> [0x800003ac]:sd a3, 0(ra)<br>      |
|   2|[0x80003018]<br>0x0000000000140000|- rs1 : x22<br> - rs2 : x8<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val==5<br>                                  |[0x800003b8]:sll s10, s6, fp<br> [0x800003bc]:sd s10, 8(ra)<br>    |
|   3|[0x80003020]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x25<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br>                                                      |[0x800003d0]:sll a2, s9, s9<br> [0x800003d4]:sd a2, 16(ra)<br>     |
|   4|[0x80003028]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x10<br> - rd : x10<br> - rs1 == rs2 == rd<br>                                                                                                                              |[0x800003e0]:sll a0, a0, a0<br> [0x800003e4]:sd a0, 24(ra)<br>     |
|   5|[0x80003030]<br>0x0000000000000180|- rs1 : x3<br> - rs2 : x23<br> - rd : x3<br> - rs1 == rd != rs2<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val==6<br>                                                   |[0x800003f0]:sll gp, gp, s7<br> [0x800003f4]:sd gp, 32(ra)<br>     |
|   6|[0x80003038]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x7<br> - rd : x9<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -9223372036854775808<br>                                             |[0x80000404]:sll s1, a7, t2<br> [0x80000408]:sd s1, 40(ra)<br>     |
|   7|[0x80003040]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x28<br> - rd : x15<br>                                                                                                                                                     |[0x80000414]:sll a5, s3, t3<br> [0x80000418]:sd a5, 48(ra)<br>     |
|   8|[0x80003048]<br>0xFFFFFFFFFFFE0000|- rs1 : x26<br> - rs2 : x31<br> - rd : x7<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br>                                            |[0x8000042c]:sll t2, s10, t6<br> [0x80000430]:sd t2, 56(ra)<br>    |
|   9|[0x80003050]<br>0x0000800000000000|- rs1 : x9<br> - rs2 : x19<br> - rd : x5<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 47<br>                                                         |[0x8000043c]:sll t0, s1, s3<br> [0x80000440]:sd t0, 64(ra)<br>     |
|  10|[0x80003058]<br>0x0000000000000002|- rs1 : x20<br> - rs2 : x0<br> - rd : x18<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                               |[0x8000044c]:sll s2, s4, zero<br> [0x80000450]:sd s2, 72(ra)<br>   |
|  11|[0x80003060]<br>0x0000000000010000|- rs1 : x12<br> - rs2 : x24<br> - rd : x22<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                                 |[0x8000045c]:sll s6, a2, s8<br> [0x80000460]:sd s6, 80(ra)<br>     |
|  12|[0x80003068]<br>0x0000000000000008|- rs1 : x11<br> - rs2 : x15<br> - rd : x8<br> - rs1_val == 8<br>                                                                                                                                   |[0x8000046c]:sll fp, a1, a5<br> [0x80000470]:sd fp, 88(ra)<br>     |
|  13|[0x80003070]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x29<br> - rd : x24<br> - rs1_val == 16<br>                                                                                                                                 |[0x8000047c]:sll s8, a6, t4<br> [0x80000480]:sd s8, 96(ra)<br>     |
|  14|[0x80003078]<br>0x0000000000020000|- rs1 : x27<br> - rs2 : x11<br> - rd : x6<br> - rs1_val == 32<br>                                                                                                                                  |[0x8000048c]:sll t1, s11, a1<br> [0x80000490]:sd t1, 104(ra)<br>   |
|  15|[0x80003080]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x16<br> - rd : x11<br> - rs1_val == 64<br> - rs2_val == 59<br>                                                                                                              |[0x8000049c]:sll a1, fp, a6<br> [0x800004a0]:sd a1, 112(ra)<br>    |
|  16|[0x80003088]<br>0x0000000000400000|- rs1 : x24<br> - rs2 : x22<br> - rd : x31<br> - rs1_val == 256<br>                                                                                                                                |[0x800004ac]:sll t6, s8, s6<br> [0x800004b0]:sd t6, 120(ra)<br>    |
|  17|[0x80003090]<br>0x0000000000000200|- rs1 : x7<br> - rs2 : x14<br> - rd : x2<br> - rs1_val == 512<br>                                                                                                                                  |[0x800004bc]:sll sp, t2, a4<br> [0x800004c0]:sd sp, 128(ra)<br>    |
|  18|[0x80003098]<br>0x0000000000002000|- rs1 : x15<br> - rs2 : x3<br> - rd : x16<br> - rs1_val == 1024<br>                                                                                                                                |[0x800004d4]:sll a6, a5, gp<br> [0x800004d8]:sd a6, 0(t2)<br>      |
|  19|[0x800030a0]<br>0x0000000000800000|- rs1 : x5<br> - rs2 : x26<br> - rd : x21<br> - rs1_val == 2048<br>                                                                                                                                |[0x800004e8]:sll s5, t0, s10<br> [0x800004ec]:sd s5, 8(t2)<br>     |
|  20|[0x800030a8]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x4<br> - rd : x29<br>                                                                                                                                                       |[0x800004fc]:sll t4, zero, tp<br> [0x80000500]:sd t4, 16(t2)<br>   |
|  21|[0x800030b0]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x1<br> - rd : x14<br> - rs1_val == 8192<br> - rs2_val == 61<br>                                                                                                            |[0x8000050c]:sll a4, s2, ra<br> [0x80000510]:sd a4, 24(t2)<br>     |
|  22|[0x800030b8]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x2<br> - rd : x20<br> - rs1_val == 16384<br> - rs2_val == 55<br>                                                                                                           |[0x8000051c]:sll s4, t6, sp<br> [0x80000520]:sd s4, 32(t2)<br>     |
|  23|[0x800030c0]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x21<br> - rd : x0<br> - rs1_val == 32768<br>                                                                                                                               |[0x8000052c]:sll zero, a3, s5<br> [0x80000530]:sd zero, 40(t2)<br> |
|  24|[0x800030c8]<br>0x0000000200000000|- rs1 : x14<br> - rs2 : x27<br> - rd : x30<br> - rs1_val == 65536<br>                                                                                                                              |[0x8000053c]:sll t5, a4, s11<br> [0x80000540]:sd t5, 48(t2)<br>    |
|  25|[0x800030d0]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x30<br> - rd : x27<br> - rs1_val == 131072<br>                                                                                                                             |[0x8000054c]:sll s11, s5, t5<br> [0x80000550]:sd s11, 56(t2)<br>   |
|  26|[0x800030d8]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : x9<br> - rd : x4<br> - rs1_val == 262144<br>                                                                                                                                |[0x8000055c]:sll tp, t1, s1<br> [0x80000560]:sd tp, 64(t2)<br>     |
|  27|[0x800030e0]<br>0x0000000080000000|- rs1 : x1<br> - rs2 : x5<br> - rd : x17<br> - rs1_val == 524288<br>                                                                                                                               |[0x8000056c]:sll a7, ra, t0<br> [0x80000570]:sd a7, 72(t2)<br>     |
|  28|[0x800030e8]<br>0x0008000000000000|- rs1 : x29<br> - rs2 : x12<br> - rd : x1<br> - rs1_val == 1048576<br> - rs2_val == 31<br>                                                                                                         |[0x8000057c]:sll ra, t4, a2<br> [0x80000580]:sd ra, 80(t2)<br>     |
|  29|[0x800030f0]<br>0x0000008000000000|- rs1 : x28<br> - rs2 : x17<br> - rd : x19<br> - rs1_val == 2097152<br>                                                                                                                            |[0x8000058c]:sll s3, t3, a7<br> [0x80000590]:sd s3, 88(t2)<br>     |
|  30|[0x800030f8]<br>0x0000000008000000|- rs1 : x4<br> - rs2 : x20<br> - rd : x23<br> - rs1_val == 4194304<br>                                                                                                                             |[0x8000059c]:sll s7, tp, s4<br> [0x800005a0]:sd s7, 96(t2)<br>     |
|  31|[0x80003100]<br>0x0000000400000000|- rs1 : x23<br> - rs2 : x18<br> - rd : x25<br> - rs1_val == 8388608<br>                                                                                                                            |[0x800005ac]:sll s9, s7, s2<br> [0x800005b0]:sd s9, 104(t2)<br>    |
|  32|[0x80003108]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x6<br> - rd : x28<br> - rs1_val == 16777216<br>                                                                                                                             |[0x800005bc]:sll t3, sp, t1<br> [0x800005c0]:sd t3, 112(t2)<br>    |
|  33|[0x80003110]<br>0x0100000000000000|- rs1_val == 33554432<br>                                                                                                                                                                          |[0x800005cc]:sll a2, a0, a1<br> [0x800005d0]:sd a2, 120(t2)<br>    |
|  34|[0x80003118]<br>0x0400000000000000|- rs1_val == 67108864<br>                                                                                                                                                                          |[0x800005dc]:sll a2, a0, a1<br> [0x800005e0]:sd a2, 128(t2)<br>    |
|  35|[0x80003120]<br>0x0000001000000000|- rs1_val == 134217728<br>                                                                                                                                                                         |[0x800005ec]:sll a2, a0, a1<br> [0x800005f0]:sd a2, 136(t2)<br>    |
|  36|[0x80003128]<br>0x0800000000000000|- rs1_val == 268435456<br>                                                                                                                                                                         |[0x800005fc]:sll a2, a0, a1<br> [0x80000600]:sd a2, 144(t2)<br>    |
|  37|[0x80003130]<br>0x0000080000000000|- rs1_val == 536870912<br>                                                                                                                                                                         |[0x8000060c]:sll a2, a0, a1<br> [0x80000610]:sd a2, 152(t2)<br>    |
|  38|[0x80003138]<br>0x0000000800000000|- rs1_val == 1073741824<br>                                                                                                                                                                        |[0x8000061c]:sll a2, a0, a1<br> [0x80000620]:sd a2, 160(t2)<br>    |
|  39|[0x80003140]<br>0x0000000400000000|- rs1_val == 2147483648<br>                                                                                                                                                                        |[0x80000630]:sll a2, a0, a1<br> [0x80000634]:sd a2, 168(t2)<br>    |
|  40|[0x80003148]<br>0x0000000800000000|- rs1_val == 4294967296<br>                                                                                                                                                                        |[0x80000644]:sll a2, a0, a1<br> [0x80000648]:sd a2, 176(t2)<br>    |
|  41|[0x80003150]<br>0x0008000000000000|- rs1_val == 8589934592<br>                                                                                                                                                                        |[0x80000658]:sll a2, a0, a1<br> [0x8000065c]:sd a2, 184(t2)<br>    |
|  42|[0x80003158]<br>0x0000010000000000|- rs1_val == 17179869184<br>                                                                                                                                                                       |[0x8000066c]:sll a2, a0, a1<br> [0x80000670]:sd a2, 192(t2)<br>    |
|  43|[0x80003160]<br>0x0004000000000000|- rs1_val == 34359738368<br>                                                                                                                                                                       |[0x80000680]:sll a2, a0, a1<br> [0x80000684]:sd a2, 200(t2)<br>    |
|  44|[0x80003168]<br>0x0001000000000000|- rs1_val == 68719476736<br>                                                                                                                                                                       |[0x80000694]:sll a2, a0, a1<br> [0x80000698]:sd a2, 208(t2)<br>    |
|  45|[0x80003170]<br>0x0000800000000000|- rs1_val == 137438953472<br>                                                                                                                                                                      |[0x800006a8]:sll a2, a0, a1<br> [0x800006ac]:sd a2, 216(t2)<br>    |
|  46|[0x80003178]<br>0x0000080000000000|- rs1_val == 274877906944<br>                                                                                                                                                                      |[0x800006bc]:sll a2, a0, a1<br> [0x800006c0]:sd a2, 224(t2)<br>    |
|  47|[0x80003180]<br>0x0000008000000000|- rs1_val == 549755813888<br>                                                                                                                                                                      |[0x800006d0]:sll a2, a0, a1<br> [0x800006d4]:sd a2, 232(t2)<br>    |
|  48|[0x80003188]<br>0x0001000000000000|- rs1_val == 1099511627776<br> - rs2_val == 8<br>                                                                                                                                                  |[0x800006e4]:sll a2, a0, a1<br> [0x800006e8]:sd a2, 240(t2)<br>    |
|  49|[0x80003190]<br>0x1000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                                                     |[0x800006f8]:sll a2, a0, a1<br> [0x800006fc]:sd a2, 248(t2)<br>    |
|  50|[0x80003198]<br>0x0000100000000000|- rs1_val == 4398046511104<br> - rs2_val == 2<br>                                                                                                                                                  |[0x8000070c]:sll a2, a0, a1<br> [0x80000710]:sd a2, 256(t2)<br>    |
|  51|[0x800031a0]<br>0x0000000000000000|- rs1_val == 8796093022208<br> - rs2_val == 62<br>                                                                                                                                                 |[0x80000720]:sll a2, a0, a1<br> [0x80000724]:sd a2, 264(t2)<br>    |
|  52|[0x800031a8]<br>0x0000400000000000|- rs1_val == 17592186044416<br>                                                                                                                                                                    |[0x80000734]:sll a2, a0, a1<br> [0x80000738]:sd a2, 272(t2)<br>    |
|  53|[0x800031b0]<br>0x0000400000000000|- rs1_val == 35184372088832<br> - rs2_val == 1<br>                                                                                                                                                 |[0x80000748]:sll a2, a0, a1<br> [0x8000074c]:sd a2, 280(t2)<br>    |
|  54|[0x800031b8]<br>0x0000000000000000|- rs1_val == 70368744177664<br> - rs2_val == 42<br>                                                                                                                                                |[0x8000075c]:sll a2, a0, a1<br> [0x80000760]:sd a2, 288(t2)<br>    |
|  55|[0x800031c0]<br>0x0800000000000000|- rs1_val == 140737488355328<br>                                                                                                                                                                   |[0x80000770]:sll a2, a0, a1<br> [0x80000774]:sd a2, 296(t2)<br>    |
|  56|[0x800031c8]<br>0x4000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                                   |[0x80000784]:sll a2, a0, a1<br> [0x80000788]:sd a2, 304(t2)<br>    |
|  57|[0x800031d0]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                                                   |[0x80000798]:sll a2, a0, a1<br> [0x8000079c]:sd a2, 312(t2)<br>    |
|  58|[0x800031d8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                                  |[0x800007ac]:sll a2, a0, a1<br> [0x800007b0]:sd a2, 320(t2)<br>    |
|  59|[0x800031e0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br> - rs2_val == 16<br>                                                                                                                                              |[0x800007c0]:sll a2, a0, a1<br> [0x800007c4]:sd a2, 328(t2)<br>    |
|  60|[0x800031e8]<br>0x8000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                                  |[0x800007d4]:sll a2, a0, a1<br> [0x800007d8]:sd a2, 336(t2)<br>    |
|  61|[0x800031f0]<br>0x0020000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                                  |[0x800007e8]:sll a2, a0, a1<br> [0x800007ec]:sd a2, 344(t2)<br>    |
|  62|[0x800031f8]<br>0x2000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                                 |[0x800007fc]:sll a2, a0, a1<br> [0x80000800]:sd a2, 352(t2)<br>    |
|  63|[0x80003200]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                                 |[0x80000810]:sll a2, a0, a1<br> [0x80000814]:sd a2, 360(t2)<br>    |
|  64|[0x80003208]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                                 |[0x80000824]:sll a2, a0, a1<br> [0x80000828]:sd a2, 368(t2)<br>    |
|  65|[0x80003210]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                                |[0x80000838]:sll a2, a0, a1<br> [0x8000083c]:sd a2, 376(t2)<br>    |
|  66|[0x80003218]<br>0x0400000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                                |[0x8000084c]:sll a2, a0, a1<br> [0x80000850]:sd a2, 384(t2)<br>    |
|  67|[0x80003220]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                                |[0x80000860]:sll a2, a0, a1<br> [0x80000864]:sd a2, 392(t2)<br>    |
|  68|[0x80003228]<br>0x2000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                               |[0x80000874]:sll a2, a0, a1<br> [0x80000878]:sd a2, 400(t2)<br>    |
|  69|[0x80003230]<br>0x4000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                               |[0x80000888]:sll a2, a0, a1<br> [0x8000088c]:sd a2, 408(t2)<br>    |
|  70|[0x80003238]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                                               |[0x8000089c]:sll a2, a0, a1<br> [0x800008a0]:sd a2, 416(t2)<br>    |
|  71|[0x80003240]<br>0x0000000000000000|- rs1_val == -2<br>                                                                                                                                                                                |[0x800008ac]:sll a2, a0, a1<br> [0x800008b0]:sd a2, 424(t2)<br>    |
|  72|[0x80003248]<br>0xA000000000000000|- rs1_val == -3<br>                                                                                                                                                                                |[0x800008bc]:sll a2, a0, a1<br> [0x800008c0]:sd a2, 432(t2)<br>    |
|  73|[0x80003250]<br>0xFFFFEC0000000000|- rs1_val == -5<br>                                                                                                                                                                                |[0x800008cc]:sll a2, a0, a1<br> [0x800008d0]:sd a2, 440(t2)<br>    |
|  74|[0x80003258]<br>0xFFFFFFFFFFFFFFDC|- rs1_val == -9<br>                                                                                                                                                                                |[0x800008dc]:sll a2, a0, a1<br> [0x800008e0]:sd a2, 448(t2)<br>    |
|  75|[0x80003260]<br>0xFFFFFFFFFFFFFBC0|- rs1_val == -17<br>                                                                                                                                                                               |[0x800008ec]:sll a2, a0, a1<br> [0x800008f0]:sd a2, 456(t2)<br>    |
|  76|[0x80003268]<br>0xC000000000000000|- rs1_val == -33<br>                                                                                                                                                                               |[0x800008fc]:sll a2, a0, a1<br> [0x80000900]:sd a2, 464(t2)<br>    |
|  77|[0x80003270]<br>0xFFFFFFFFFFFFFEFC|- rs1_val == -65<br>                                                                                                                                                                               |[0x8000090c]:sll a2, a0, a1<br> [0x80000910]:sd a2, 472(t2)<br>    |
|  78|[0x80003278]<br>0xFFFFFFFFFFFFBF80|- rs1_val == -129<br>                                                                                                                                                                              |[0x8000091c]:sll a2, a0, a1<br> [0x80000920]:sd a2, 480(t2)<br>    |
|  79|[0x80003280]<br>0xFFFFFFFFFFF7F800|- rs1_val == -257<br>                                                                                                                                                                              |[0x8000092c]:sll a2, a0, a1<br> [0x80000930]:sd a2, 488(t2)<br>    |
|  80|[0x80003288]<br>0xFFFFFEFF80000000|- rs1_val == -513<br>                                                                                                                                                                              |[0x8000093c]:sll a2, a0, a1<br> [0x80000940]:sd a2, 496(t2)<br>    |
|  81|[0x80003290]<br>0xFFEFFC0000000000|- rs1_val == -1025<br>                                                                                                                                                                             |[0x8000094c]:sll a2, a0, a1<br> [0x80000950]:sd a2, 504(t2)<br>    |
|  82|[0x80003298]<br>0xFFFFFFFFFFFBFF80|- rs1_val == -2049<br>                                                                                                                                                                             |[0x80000960]:sll a2, a0, a1<br> [0x80000964]:sd a2, 512(t2)<br>    |
|  83|[0x800032a0]<br>0xFFFFFFFFFFFEFFF0|- rs1_val == -4097<br> - rs2_val == 4<br>                                                                                                                                                          |[0x80000974]:sll a2, a0, a1<br> [0x80000978]:sd a2, 520(t2)<br>    |
|  84|[0x800032a8]<br>0xFFFFFFFFFFEFFF80|- rs1_val == -8193<br>                                                                                                                                                                             |[0x80000988]:sll a2, a0, a1<br> [0x8000098c]:sd a2, 528(t2)<br>    |
|  85|[0x800032b0]<br>0xFFFFFFFFFF7FFE00|- rs1_val == -16385<br>                                                                                                                                                                            |[0x8000099c]:sll a2, a0, a1<br> [0x800009a0]:sd a2, 536(t2)<br>    |
|  86|[0x800032b8]<br>0xBFFF800000000000|- rs1_val == -32769<br>                                                                                                                                                                            |[0x800009b0]:sll a2, a0, a1<br> [0x800009b4]:sd a2, 544(t2)<br>    |
|  87|[0x800032c0]<br>0xFFFFFFFFFFFBFFFC|- rs1_val == -65537<br>                                                                                                                                                                            |[0x800009c4]:sll a2, a0, a1<br> [0x800009c8]:sd a2, 552(t2)<br>    |
|  88|[0x800032c8]<br>0xFFFFFFFFFFBFFFE0|- rs1_val == -131073<br>                                                                                                                                                                           |[0x800009d8]:sll a2, a0, a1<br> [0x800009dc]:sd a2, 560(t2)<br>    |
|  89|[0x800032d0]<br>0xFFFFFFFFFFFF0000|- rs1_val == -36028797018963969<br>                                                                                                                                                                |[0x800009f0]:sll a2, a0, a1<br> [0x800009f4]:sd a2, 568(t2)<br>    |
|  90|[0x800032d8]<br>0xDFFFFFFFFFFFFFE0|- rs1_val == -72057594037927937<br>                                                                                                                                                                |[0x80000a08]:sll a2, a0, a1<br> [0x80000a0c]:sd a2, 576(t2)<br>    |
|  91|[0x800032e0]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -144115188075855873<br>                                                                                                                                                               |[0x80000a20]:sll a2, a0, a1<br> [0x80000a24]:sd a2, 584(t2)<br>    |
|  92|[0x800032e8]<br>0xFFFFFC0000000000|- rs1_val == -288230376151711745<br>                                                                                                                                                               |[0x80000a38]:sll a2, a0, a1<br> [0x80000a3c]:sd a2, 592(t2)<br>    |
|  93|[0x800032f0]<br>0xFFFFFFFFFFFFE000|- rs1_val == -576460752303423489<br>                                                                                                                                                               |[0x80000a50]:sll a2, a0, a1<br> [0x80000a54]:sd a2, 600(t2)<br>    |
|  94|[0x800032f8]<br>0xFFFFFC0000000000|- rs1_val == -1152921504606846977<br>                                                                                                                                                              |[0x80000a68]:sll a2, a0, a1<br> [0x80000a6c]:sd a2, 608(t2)<br>    |
|  95|[0x80003300]<br>0xFFFFFFFFFFFFF000|- rs1_val == -2305843009213693953<br>                                                                                                                                                              |[0x80000a80]:sll a2, a0, a1<br> [0x80000a84]:sd a2, 616(t2)<br>    |
|  96|[0x80003308]<br>0xBFFFFFFFFFFFFFFF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -4611686018427387905<br>                                                                                                                           |[0x80000a98]:sll a2, a0, a1<br> [0x80000a9c]:sd a2, 624(t2)<br>    |
|  97|[0x80003310]<br>0x5555555555555554|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                                                            |[0x80000ac4]:sll a2, a0, a1<br> [0x80000ac8]:sd a2, 632(t2)<br>    |
|  98|[0x80003318]<br>0xAAAAAAAAAAAA0000|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                                                          |[0x80000af0]:sll a2, a0, a1<br> [0x80000af4]:sd a2, 640(t2)<br>    |
|  99|[0x80003320]<br>0x0000000180000000|- rs1_val==3<br>                                                                                                                                                                                   |[0x80000b00]:sll a2, a0, a1<br> [0x80000b04]:sd a2, 648(t2)<br>    |
| 100|[0x80003328]<br>0x9999999999999980|- rs1_val==3689348814741910323<br>                                                                                                                                                                 |[0x80000b2c]:sll a2, a0, a1<br> [0x80000b30]:sd a2, 656(t2)<br>    |
| 101|[0x80003330]<br>0xCCCCCCCCCCCCCC00|- rs1_val==7378697629483820646<br>                                                                                                                                                                 |[0x80000b58]:sll a2, a0, a1<br> [0x80000b5c]:sd a2, 664(t2)<br>    |
| 102|[0x80003338]<br>0xFFFFFFFE95F6199A|- rs1_val==-3037000499<br>                                                                                                                                                                         |[0x80000b74]:sll a2, a0, a1<br> [0x80000b78]:sd a2, 672(t2)<br>    |
| 103|[0x80003340]<br>0x000002D413CCCC00|- rs1_val==3037000499<br>                                                                                                                                                                          |[0x80000b90]:sll a2, a0, a1<br> [0x80000b94]:sd a2, 680(t2)<br>    |
| 104|[0x80003348]<br>0x5555555555555400|- rs1_val==6148914691236517204<br>                                                                                                                                                                 |[0x80000bbc]:sll a2, a0, a1<br> [0x80000bc0]:sd a2, 688(t2)<br>    |
| 105|[0x80003350]<br>0xCCCCCCCCCCCCC800|- rs1_val==3689348814741910322<br>                                                                                                                                                                 |[0x80000be8]:sll a2, a0, a1<br> [0x80000bec]:sd a2, 696(t2)<br>    |
| 106|[0x80003358]<br>0xA000000000000000|- rs1_val==7378697629483820645<br>                                                                                                                                                                 |[0x80000c14]:sll a2, a0, a1<br> [0x80000c18]:sd a2, 704(t2)<br>    |
| 107|[0x80003360]<br>0x0016A09E66400000|- rs1_val==3037000498<br> - rs2_val == 21<br>                                                                                                                                                      |[0x80000c30]:sll a2, a0, a1<br> [0x80000c34]:sd a2, 712(t2)<br>    |
| 108|[0x80003368]<br>0x5555555555555600|- rs1_val==6148914691236517206<br>                                                                                                                                                                 |[0x80000c5c]:sll a2, a0, a1<br> [0x80000c60]:sd a2, 720(t2)<br>    |
| 109|[0x80003370]<br>0xAAAAAAAAAAAAB000|- rs1_val==-6148914691236517205<br>                                                                                                                                                                |[0x80000c88]:sll a2, a0, a1<br> [0x80000c8c]:sd a2, 728(t2)<br>    |
| 110|[0x80003378]<br>0x6666666666666668|- rs1_val==3689348814741910324<br>                                                                                                                                                                 |[0x80000cb4]:sll a2, a0, a1<br> [0x80000cb8]:sd a2, 736(t2)<br>    |
| 111|[0x80003380]<br>0x3333333333333800|- rs1_val==7378697629483820647<br>                                                                                                                                                                 |[0x80000ce0]:sll a2, a0, a1<br> [0x80000ce4]:sd a2, 744(t2)<br>    |
| 112|[0x80003388]<br>0xFFFFF4AFB0CCE000|- rs1_val==-3037000498<br>                                                                                                                                                                         |[0x80000cfc]:sll a2, a0, a1<br> [0x80000d00]:sd a2, 752(t2)<br>    |
| 113|[0x80003390]<br>0x00000005A82799A0|- rs1_val==3037000500<br>                                                                                                                                                                          |[0x80000d18]:sll a2, a0, a1<br> [0x80000d1c]:sd a2, 760(t2)<br>    |
| 114|[0x80003398]<br>0xF800000000000000|- rs1_val == -262145<br>                                                                                                                                                                           |[0x80000d2c]:sll a2, a0, a1<br> [0x80000d30]:sd a2, 768(t2)<br>    |
| 115|[0x800033a0]<br>0x8000000000000000|- rs1_val == -524289<br>                                                                                                                                                                           |[0x80000d40]:sll a2, a0, a1<br> [0x80000d44]:sd a2, 776(t2)<br>    |
| 116|[0x800033a8]<br>0xFFFFFFFFEFFFFF00|- rs1_val == -1048577<br>                                                                                                                                                                          |[0x80000d54]:sll a2, a0, a1<br> [0x80000d58]:sd a2, 784(t2)<br>    |
| 117|[0x800033b0]<br>0xFFFFFFEFFFFF8000|- rs1_val == -2097153<br>                                                                                                                                                                          |[0x80000d68]:sll a2, a0, a1<br> [0x80000d6c]:sd a2, 792(t2)<br>    |
| 118|[0x800033b8]<br>0xFFFFFFFFFBFFFFF0|- rs1_val == -4194305<br>                                                                                                                                                                          |[0x80000d7c]:sll a2, a0, a1<br> [0x80000d80]:sd a2, 800(t2)<br>    |
| 119|[0x800033c0]<br>0xFFFFFFFDFFFFFC00|- rs1_val == -8388609<br>                                                                                                                                                                          |[0x80000d90]:sll a2, a0, a1<br> [0x80000d94]:sd a2, 808(t2)<br>    |
| 120|[0x800033c8]<br>0xFFFFFFFDFFFFFE00|- rs1_val == -16777217<br>                                                                                                                                                                         |[0x80000da4]:sll a2, a0, a1<br> [0x80000da8]:sd a2, 816(t2)<br>    |
| 121|[0x800033d0]<br>0xE000000000000000|- rs1_val == -33554433<br>                                                                                                                                                                         |[0x80000db8]:sll a2, a0, a1<br> [0x80000dbc]:sd a2, 824(t2)<br>    |
| 122|[0x800033d8]<br>0xFFFFFBFFFFFF0000|- rs1_val == -67108865<br>                                                                                                                                                                         |[0x80000dcc]:sll a2, a0, a1<br> [0x80000dd0]:sd a2, 832(t2)<br>    |
| 123|[0x800033e0]<br>0xFFFFEFFFFFFE0000|- rs1_val == -134217729<br>                                                                                                                                                                        |[0x80000de0]:sll a2, a0, a1<br> [0x80000de4]:sd a2, 840(t2)<br>    |
| 124|[0x800033e8]<br>0xFFFFFEFFFFFFF000|- rs1_val == -268435457<br>                                                                                                                                                                        |[0x80000df4]:sll a2, a0, a1<br> [0x80000df8]:sd a2, 848(t2)<br>    |
| 125|[0x800033f0]<br>0xE000000000000000|- rs1_val == -536870913<br>                                                                                                                                                                        |[0x80000e08]:sll a2, a0, a1<br> [0x80000e0c]:sd a2, 856(t2)<br>    |
| 126|[0x800033f8]<br>0xE000000000000000|- rs1_val == -1073741825<br>                                                                                                                                                                       |[0x80000e1c]:sll a2, a0, a1<br> [0x80000e20]:sd a2, 864(t2)<br>    |
| 127|[0x80003400]<br>0x7FFFFFFF00000000|- rs1_val == -2147483649<br>                                                                                                                                                                       |[0x80000e34]:sll a2, a0, a1<br> [0x80000e38]:sd a2, 872(t2)<br>    |
| 128|[0x80003408]<br>0xFFFFFFDFFFFFFFE0|- rs1_val == -4294967297<br>                                                                                                                                                                       |[0x80000e4c]:sll a2, a0, a1<br> [0x80000e50]:sd a2, 880(t2)<br>    |
| 129|[0x80003410]<br>0xFFFFFF7FFFFFFFC0|- rs1_val == -8589934593<br>                                                                                                                                                                       |[0x80000e64]:sll a2, a0, a1<br> [0x80000e68]:sd a2, 888(t2)<br>    |
| 130|[0x80003418]<br>0xFFFFFFBFFFFFFFF0|- rs1_val == -17179869185<br>                                                                                                                                                                      |[0x80000e7c]:sll a2, a0, a1<br> [0x80000e80]:sd a2, 896(t2)<br>    |
| 131|[0x80003420]<br>0xFFFFFDFFFFFFFFC0|- rs1_val == -34359738369<br>                                                                                                                                                                      |[0x80000e94]:sll a2, a0, a1<br> [0x80000e98]:sd a2, 904(t2)<br>    |
| 132|[0x80003428]<br>0xFFFFBFFFFFFFFC00|- rs1_val == -68719476737<br>                                                                                                                                                                      |[0x80000eac]:sll a2, a0, a1<br> [0x80000eb0]:sd a2, 912(t2)<br>    |
| 133|[0x80003430]<br>0xFFFEFFFFFFFFF800|- rs1_val == -137438953473<br>                                                                                                                                                                     |[0x80000ec4]:sll a2, a0, a1<br> [0x80000ec8]:sd a2, 920(t2)<br>    |
| 134|[0x80003438]<br>0xFFFF800000000000|- rs1_val == -274877906945<br>                                                                                                                                                                     |[0x80000edc]:sll a2, a0, a1<br> [0x80000ee0]:sd a2, 928(t2)<br>    |
| 135|[0x80003440]<br>0xFBFFFFFFFFF80000|- rs1_val == -549755813889<br>                                                                                                                                                                     |[0x80000ef4]:sll a2, a0, a1<br> [0x80000ef8]:sd a2, 936(t2)<br>    |
| 136|[0x80003448]<br>0xFFFFEFFFFFFFFFF0|- rs1_val == -1099511627777<br>                                                                                                                                                                    |[0x80000f0c]:sll a2, a0, a1<br> [0x80000f10]:sd a2, 944(t2)<br>    |
| 137|[0x80003450]<br>0xFFFFFFFF80000000|- rs1_val == -2199023255553<br>                                                                                                                                                                    |[0x80000f24]:sll a2, a0, a1<br> [0x80000f28]:sd a2, 952(t2)<br>    |
| 138|[0x80003458]<br>0xFFF7FFFFFFFFFE00|- rs1_val == -4398046511105<br>                                                                                                                                                                    |[0x80000f3c]:sll a2, a0, a1<br> [0x80000f40]:sd a2, 960(t2)<br>    |
| 139|[0x80003460]<br>0xFFDFFFFFFFFFFF00|- rs1_val == -35184372088833<br>                                                                                                                                                                   |[0x80000f54]:sll a2, a0, a1<br> [0x80000f58]:sd a2, 968(t2)<br>    |
| 140|[0x80003468]<br>0xFFFDFFFFFFFFFFF8|- rs1_val == -70368744177665<br>                                                                                                                                                                   |[0x80000f6c]:sll a2, a0, a1<br> [0x80000f70]:sd a2, 976(t2)<br>    |
| 141|[0x80003470]<br>0xFFFFFFFFFFFE0000|- rs1_val == -140737488355329<br>                                                                                                                                                                  |[0x80000f84]:sll a2, a0, a1<br> [0x80000f88]:sd a2, 984(t2)<br>    |
| 142|[0x80003478]<br>0xE000000000000000|- rs1_val == -281474976710657<br>                                                                                                                                                                  |[0x80000f9c]:sll a2, a0, a1<br> [0x80000fa0]:sd a2, 992(t2)<br>    |
| 143|[0x80003480]<br>0xFF7FFFFFFFFFFFC0|- rs1_val == -562949953421313<br>                                                                                                                                                                  |[0x80000fb4]:sll a2, a0, a1<br> [0x80000fb8]:sd a2, 1000(t2)<br>   |
| 144|[0x80003488]<br>0xBFFFFFFFFFFFF000|- rs1_val == -1125899906842625<br>                                                                                                                                                                 |[0x80000fcc]:sll a2, a0, a1<br> [0x80000fd0]:sd a2, 1008(t2)<br>   |
| 145|[0x80003490]<br>0xFEFFFFFFFFFFFFE0|- rs1_val == -2251799813685249<br>                                                                                                                                                                 |[0x80000fe4]:sll a2, a0, a1<br> [0x80000fe8]:sd a2, 1016(t2)<br>   |
| 146|[0x80003498]<br>0xBFFFFFFFFFFFFC00|- rs1_val == -4503599627370497<br>                                                                                                                                                                 |[0x80000ffc]:sll a2, a0, a1<br> [0x80001000]:sd a2, 1024(t2)<br>   |
| 147|[0x800034a0]<br>0xFFFFFFFFFFFF0000|- rs1_val == -9007199254740993<br>                                                                                                                                                                 |[0x80001014]:sll a2, a0, a1<br> [0x80001018]:sd a2, 1032(t2)<br>   |
| 148|[0x800034a8]<br>0xFFFFFC0000000000|- rs1_val == -18014398509481985<br>                                                                                                                                                                |[0x8000102c]:sll a2, a0, a1<br> [0x80001030]:sd a2, 1040(t2)<br>   |
| 149|[0x800034b0]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                                                    |[0x80001044]:sll a2, a0, a1<br> [0x80001048]:sd a2, 1048(t2)<br>   |
| 150|[0x800034b8]<br>0x0000000000000080|- rs1_val == 128<br>                                                                                                                                                                               |[0x80001054]:sll a2, a0, a1<br> [0x80001058]:sd a2, 1056(t2)<br>   |
| 151|[0x800034c8]<br>0x0000000000020000|- rs1_val == 4096<br>                                                                                                                                                                              |[0x80001074]:sll a2, a0, a1<br> [0x80001078]:sd a2, 1072(t2)<br>   |
