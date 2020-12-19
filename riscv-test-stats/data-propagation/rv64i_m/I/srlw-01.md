
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
| COV_LABELS                | srlw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srlw-01.S/srlw-01.S    |
| Total Number of coverpoints| 275     |
| Total Coverpoints Hit     | 275      |
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
      [0x80001068]:srlw a2, a0, a1
      [0x8000106c]:sd a2, 1048(tp)
 -- Signature Address: 0x800034b8 Data: 0x00000000012BEC33
 -- Redundant Coverpoints hit by the op
      - opcode : srlw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val==-3037000499




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001080]:srlw a2, a0, a1
      [0x80001084]:sd a2, 1056(tp)
 -- Signature Address: 0x800034c0 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : srlw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val == 0
      - rs1_val == -4503599627370497




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001090]:srlw a2, a0, a1
      [0x80001094]:sd a2, 1064(tp)
 -- Signature Address: 0x800034c8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srlw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen
      - rs1_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010a8]:srlw a2, a0, a1
      [0x800010ac]:sd a2, 1072(tp)
 -- Signature Address: 0x800034d0 Data: 0x000000000000001F
 -- Redundant Coverpoints hit by the op
      - opcode : srlw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen
      - rs1_val == 9223372036854775807
      - rs2_val == 27






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
|   1|[0x80003010]<br>0x00000000000257D8|- opcode : srlw<br> - rs1 : x17<br> - rs2 : x17<br> - rd : x24<br> - rs1 == rs2 != rd<br> - rs1_val==-3037000499<br>                                                                                                            |[0x800003b8]:srlw s8, a7, a7<br> [0x800003bc]:sd s8, 0(fp)<br>      |
|   2|[0x80003018]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 288230376151711744<br> - rs2_val == 2<br>                                                |[0x800003cc]:srlw a2, gp, a2<br> [0x800003d0]:sd a2, 8(fp)<br>      |
|   3|[0x80003020]<br>0x0000000000000001|- rs1 : x7<br> - rs2 : x7<br> - rd : x7<br> - rs1 == rs2 == rd<br> - rs1_val == -4503599627370497<br>                                                                                                                           |[0x800003ec]:srlw t2, t2, t2<br> [0x800003f0]:sd t2, 16(fp)<br>     |
|   4|[0x80003028]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x15<br> - rd : x22<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 140737488355328<br>                                                                 |[0x80000400]:srlw s6, s1, a5<br> [0x80000404]:sd s6, 24(fp)<br>     |
|   5|[0x80003030]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x4<br> - rd : x11<br> - rs1 == rd != rs2<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>                                                                                                |[0x80000410]:srlw a1, a1, tp<br> [0x80000414]:sd a1, 32(fp)<br>     |
|   6|[0x80003038]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : x24<br> - rd : x1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -9223372036854775808<br> - rs2_val == 15<br> |[0x80000424]:srlw ra, tp, s8<br> [0x80000428]:sd ra, 40(fp)<br>     |
|   7|[0x80003040]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x18<br> - rd : x0<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br>                                                                                                            |[0x80000434]:srlw zero, sp, s2<br> [0x80000438]:sd zero, 48(fp)<br> |
|   8|[0x80003048]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x21<br> - rs2 : x0<br> - rd : x5<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br>                                                                          |[0x8000044c]:srlw t0, s5, zero<br> [0x80000450]:sd t0, 56(fp)<br>   |
|   9|[0x80003050]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x9<br> - rd : x21<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                                                         |[0x8000045c]:srlw s5, a5, s1<br> [0x80000460]:sd s5, 64(fp)<br>     |
|  10|[0x80003058]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x30<br> - rd : x6<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                                               |[0x8000046c]:srlw t1, a3, t5<br> [0x80000470]:sd t1, 72(fp)<br>     |
|  11|[0x80003060]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x20<br> - rd : x23<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                              |[0x8000047c]:srlw s7, s6, s4<br> [0x80000480]:sd s7, 80(fp)<br>     |
|  12|[0x80003068]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x26<br> - rd : x28<br> - rs1_val == 8<br>                                                                                                                                                               |[0x8000048c]:srlw t3, a2, s10<br> [0x80000490]:sd t3, 88(fp)<br>    |
|  13|[0x80003070]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x31<br> - rd : x2<br> - rs1_val == 16<br>                                                                                                                                                               |[0x8000049c]:srlw sp, s8, t6<br> [0x800004a0]:sd sp, 96(fp)<br>     |
|  14|[0x80003078]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x25<br> - rd : x27<br> - rs1_val == 32<br> - rs2_val == 30<br>                                                                                                                                          |[0x800004ac]:srlw s11, a6, s9<br> [0x800004b0]:sd s11, 104(fp)<br>  |
|  15|[0x80003080]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x1<br> - rd : x15<br> - rs1_val == 64<br> - rs2_val == 8<br>                                                                                                                                            |[0x800004bc]:srlw a5, t6, ra<br> [0x800004c0]:sd a5, 112(fp)<br>    |
|  16|[0x80003088]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x5<br> - rd : x25<br>                                                                                                                                                                                    |[0x800004cc]:srlw s9, zero, t0<br> [0x800004d0]:sd s9, 120(fp)<br>  |
|  17|[0x80003090]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x14<br> - rd : x30<br> - rs1_val == 256<br>                                                                                                                                                             |[0x800004dc]:srlw t5, s11, a4<br> [0x800004e0]:sd t5, 128(fp)<br>   |
|  18|[0x80003098]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : x19<br> - rd : x4<br> - rs1_val == 512<br> - rs2_val == 27<br>                                                                                                                                           |[0x800004ec]:srlw tp, t1, s3<br> [0x800004f0]:sd tp, 136(fp)<br>    |
|  19|[0x800030a0]<br>0x0000000000000020|- rs1 : x20<br> - rs2 : x28<br> - rd : x3<br> - rs1_val == 1024<br>                                                                                                                                                             |[0x80000504]:srlw gp, s4, t3<br> [0x80000508]:sd gp, 0(tp)<br>      |
|  20|[0x800030a8]<br>0x0000000000000100|- rs1 : x18<br> - rs2 : x11<br> - rd : x31<br> - rs1_val == 2048<br>                                                                                                                                                            |[0x80000518]:srlw t6, s2, a1<br> [0x8000051c]:sd t6, 8(tp)<br>      |
|  21|[0x800030b0]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x2<br> - rd : x18<br> - rs1_val == 4096<br>                                                                                                                                                             |[0x80000528]:srlw s2, t5, sp<br> [0x8000052c]:sd s2, 16(tp)<br>     |
|  22|[0x800030b8]<br>0x0000000000000010|- rs1 : x19<br> - rs2 : x21<br> - rd : x26<br> - rs1_val == 8192<br>                                                                                                                                                            |[0x80000538]:srlw s10, s3, s5<br> [0x8000053c]:sd s10, 24(tp)<br>   |
|  23|[0x800030c0]<br>0x0000000000000200|- rs1 : x1<br> - rs2 : x29<br> - rd : x20<br> - rs1_val == 16384<br>                                                                                                                                                            |[0x80000548]:srlw s4, ra, t4<br> [0x8000054c]:sd s4, 32(tp)<br>     |
|  24|[0x800030c8]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x22<br> - rd : x9<br> - rs1_val == 32768<br>                                                                                                                                                            |[0x80000558]:srlw s1, s9, s6<br> [0x8000055c]:sd s1, 40(tp)<br>     |
|  25|[0x800030d0]<br>0x0000000000000004|- rs1 : x5<br> - rs2 : x6<br> - rd : x13<br> - rs1_val == 65536<br>                                                                                                                                                             |[0x80000568]:srlw a3, t0, t1<br> [0x8000056c]:sd a3, 48(tp)<br>     |
|  26|[0x800030d8]<br>0x0000000000008000|- rs1 : x26<br> - rs2 : x3<br> - rd : x17<br> - rs1_val == 131072<br>                                                                                                                                                           |[0x80000578]:srlw a7, s10, gp<br> [0x8000057c]:sd a7, 56(tp)<br>    |
|  27|[0x800030e0]<br>0x0000000000008000|- rs1 : x10<br> - rs2 : x13<br> - rd : x8<br> - rs1_val == 262144<br>                                                                                                                                                           |[0x80000588]:srlw fp, a0, a3<br> [0x8000058c]:sd fp, 64(tp)<br>     |
|  28|[0x800030e8]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : x10<br> - rd : x16<br> - rs1_val == 524288<br>                                                                                                                                                          |[0x80000598]:srlw a6, s7, a0<br> [0x8000059c]:sd a6, 72(tp)<br>     |
|  29|[0x800030f0]<br>0x0000000000008000|- rs1 : x28<br> - rs2 : x8<br> - rd : x10<br> - rs1_val == 1048576<br>                                                                                                                                                          |[0x800005a8]:srlw a0, t3, fp<br> [0x800005ac]:sd a0, 80(tp)<br>     |
|  30|[0x800030f8]<br>0x0000000000000008|- rs1 : x8<br> - rs2 : x23<br> - rd : x14<br> - rs1_val == 2097152<br>                                                                                                                                                          |[0x800005b8]:srlw a4, fp, s7<br> [0x800005bc]:sd a4, 88(tp)<br>     |
|  31|[0x80003100]<br>0x0000000000080000|- rs1 : x29<br> - rs2 : x16<br> - rd : x19<br> - rs1_val == 4194304<br>                                                                                                                                                         |[0x800005c8]:srlw s3, t4, a6<br> [0x800005cc]:sd s3, 96(tp)<br>     |
|  32|[0x80003108]<br>0x0000000000000400|- rs1 : x14<br> - rs2 : x27<br> - rd : x29<br> - rs1_val == 8388608<br>                                                                                                                                                         |[0x800005d8]:srlw t4, a4, s11<br> [0x800005dc]:sd t4, 104(tp)<br>   |
|  33|[0x80003110]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                                                                                                       |[0x800005e8]:srlw a2, a0, a1<br> [0x800005ec]:sd a2, 112(tp)<br>    |
|  34|[0x80003118]<br>0x0000000000002000|- rs1_val == 33554432<br>                                                                                                                                                                                                       |[0x800005f8]:srlw a2, a0, a1<br> [0x800005fc]:sd a2, 120(tp)<br>    |
|  35|[0x80003120]<br>0x0000000000008000|- rs1_val == 67108864<br>                                                                                                                                                                                                       |[0x80000608]:srlw a2, a0, a1<br> [0x8000060c]:sd a2, 128(tp)<br>    |
|  36|[0x80003128]<br>0x0000000000200000|- rs1_val == 134217728<br>                                                                                                                                                                                                      |[0x80000618]:srlw a2, a0, a1<br> [0x8000061c]:sd a2, 136(tp)<br>    |
|  37|[0x80003130]<br>0x0000000001000000|- rs1_val == 268435456<br> - rs2_val == 4<br>                                                                                                                                                                                   |[0x80000628]:srlw a2, a0, a1<br> [0x8000062c]:sd a2, 144(tp)<br>    |
|  38|[0x80003138]<br>0x0000000004000000|- rs1_val == 536870912<br>                                                                                                                                                                                                      |[0x80000638]:srlw a2, a0, a1<br> [0x8000063c]:sd a2, 152(tp)<br>    |
|  39|[0x80003140]<br>0x0000000010000000|- rs1_val == 1073741824<br>                                                                                                                                                                                                     |[0x80000648]:srlw a2, a0, a1<br> [0x8000064c]:sd a2, 160(tp)<br>    |
|  40|[0x80003148]<br>0x0000000000010000|- rs1_val == 2147483648<br>                                                                                                                                                                                                     |[0x8000065c]:srlw a2, a0, a1<br> [0x80000660]:sd a2, 168(tp)<br>    |
|  41|[0x80003150]<br>0x0000000000000000|- rs1_val == 4294967296<br> - rs2_val == 1<br>                                                                                                                                                                                  |[0x80000670]:srlw a2, a0, a1<br> [0x80000674]:sd a2, 176(tp)<br>    |
|  42|[0x80003158]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                                                                                     |[0x80000684]:srlw a2, a0, a1<br> [0x80000688]:sd a2, 184(tp)<br>    |
|  43|[0x80003160]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                                                                                    |[0x80000698]:srlw a2, a0, a1<br> [0x8000069c]:sd a2, 192(tp)<br>    |
|  44|[0x80003168]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                                                                                    |[0x800006ac]:srlw a2, a0, a1<br> [0x800006b0]:sd a2, 200(tp)<br>    |
|  45|[0x80003170]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                                                                                    |[0x800006c0]:srlw a2, a0, a1<br> [0x800006c4]:sd a2, 208(tp)<br>    |
|  46|[0x80003178]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                                                                                   |[0x800006d4]:srlw a2, a0, a1<br> [0x800006d8]:sd a2, 216(tp)<br>    |
|  47|[0x80003180]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                                                                                   |[0x800006e8]:srlw a2, a0, a1<br> [0x800006ec]:sd a2, 224(tp)<br>    |
|  48|[0x80003188]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                                                                                   |[0x800006fc]:srlw a2, a0, a1<br> [0x80000700]:sd a2, 232(tp)<br>    |
|  49|[0x80003190]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                                                                                  |[0x80000710]:srlw a2, a0, a1<br> [0x80000714]:sd a2, 240(tp)<br>    |
|  50|[0x80003198]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                                                                                  |[0x80000724]:srlw a2, a0, a1<br> [0x80000728]:sd a2, 248(tp)<br>    |
|  51|[0x800031a0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                                                                                  |[0x80000738]:srlw a2, a0, a1<br> [0x8000073c]:sd a2, 256(tp)<br>    |
|  52|[0x800031a8]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                                                                                  |[0x8000074c]:srlw a2, a0, a1<br> [0x80000750]:sd a2, 264(tp)<br>    |
|  53|[0x800031b0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                                                                                 |[0x80000760]:srlw a2, a0, a1<br> [0x80000764]:sd a2, 272(tp)<br>    |
|  54|[0x800031b8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                                                                 |[0x80000774]:srlw a2, a0, a1<br> [0x80000778]:sd a2, 280(tp)<br>    |
|  55|[0x800031c0]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                                                                                 |[0x80000788]:srlw a2, a0, a1<br> [0x8000078c]:sd a2, 288(tp)<br>    |
|  56|[0x800031c8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                                                                |[0x8000079c]:srlw a2, a0, a1<br> [0x800007a0]:sd a2, 296(tp)<br>    |
|  57|[0x800031d0]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                                                                                |[0x800007b0]:srlw a2, a0, a1<br> [0x800007b4]:sd a2, 304(tp)<br>    |
|  58|[0x800031d8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br> - rs2_val == 23<br>                                                                                                                                                                           |[0x800007c4]:srlw a2, a0, a1<br> [0x800007c8]:sd a2, 312(tp)<br>    |
|  59|[0x800031e0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br> - rs2_val == 10<br>                                                                                                                                                                           |[0x800007d8]:srlw a2, a0, a1<br> [0x800007dc]:sd a2, 320(tp)<br>    |
|  60|[0x800031e8]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                                                               |[0x800007ec]:srlw a2, a0, a1<br> [0x800007f0]:sd a2, 328(tp)<br>    |
|  61|[0x800031f0]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                                                               |[0x80000800]:srlw a2, a0, a1<br> [0x80000804]:sd a2, 336(tp)<br>    |
|  62|[0x800031f8]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                                                              |[0x80000814]:srlw a2, a0, a1<br> [0x80000818]:sd a2, 344(tp)<br>    |
|  63|[0x80003200]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                                                              |[0x80000828]:srlw a2, a0, a1<br> [0x8000082c]:sd a2, 352(tp)<br>    |
|  64|[0x80003208]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                                                              |[0x8000083c]:srlw a2, a0, a1<br> [0x80000840]:sd a2, 360(tp)<br>    |
|  65|[0x80003210]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                                                             |[0x80000850]:srlw a2, a0, a1<br> [0x80000854]:sd a2, 368(tp)<br>    |
|  66|[0x80003218]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                                                             |[0x80000864]:srlw a2, a0, a1<br> [0x80000868]:sd a2, 376(tp)<br>    |
|  67|[0x80003220]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                                                            |[0x80000878]:srlw a2, a0, a1<br> [0x8000087c]:sd a2, 384(tp)<br>    |
|  68|[0x80003228]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                                                            |[0x8000088c]:srlw a2, a0, a1<br> [0x80000890]:sd a2, 392(tp)<br>    |
|  69|[0x80003230]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br> - rs2_val == 16<br>                                                                                                                                                                        |[0x800008a0]:srlw a2, a0, a1<br> [0x800008a4]:sd a2, 400(tp)<br>    |
|  70|[0x80003238]<br>0x0000000003FFFFFF|- rs1_val == -2<br>                                                                                                                                                                                                             |[0x800008b0]:srlw a2, a0, a1<br> [0x800008b4]:sd a2, 408(tp)<br>    |
|  71|[0x80003240]<br>0x000000000000001F|- rs1_val == -3<br>                                                                                                                                                                                                             |[0x800008c0]:srlw a2, a0, a1<br> [0x800008c4]:sd a2, 416(tp)<br>    |
|  72|[0x80003248]<br>0x0000000000001FFF|- rs1_val == -5<br>                                                                                                                                                                                                             |[0x800008d0]:srlw a2, a0, a1<br> [0x800008d4]:sd a2, 424(tp)<br>    |
|  73|[0x80003250]<br>0x00000000000FFFFF|- rs1_val == -9<br>                                                                                                                                                                                                             |[0x800008e0]:srlw a2, a0, a1<br> [0x800008e4]:sd a2, 432(tp)<br>    |
|  74|[0x80003258]<br>0x000000000FFFFFFE|- rs1_val == -17<br>                                                                                                                                                                                                            |[0x800008f0]:srlw a2, a0, a1<br> [0x800008f4]:sd a2, 440(tp)<br>    |
|  75|[0x80003260]<br>0x00000000007FFFFF|- rs1_val == -33<br>                                                                                                                                                                                                            |[0x80000900]:srlw a2, a0, a1<br> [0x80000904]:sd a2, 448(tp)<br>    |
|  76|[0x80003268]<br>0xFFFFFFFFFFFFFFBF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -65<br>                                                                                                                                                                         |[0x80000910]:srlw a2, a0, a1<br> [0x80000914]:sd a2, 456(tp)<br>    |
|  77|[0x80003270]<br>0x00000000000007FF|- rs1_val == -129<br> - rs2_val == 21<br>                                                                                                                                                                                       |[0x80000920]:srlw a2, a0, a1<br> [0x80000924]:sd a2, 464(tp)<br>    |
|  78|[0x80003278]<br>0x000000007FFFFF7F|- rs1_val == -257<br>                                                                                                                                                                                                           |[0x80000930]:srlw a2, a0, a1<br> [0x80000934]:sd a2, 472(tp)<br>    |
|  79|[0x80003280]<br>0x00000000007FFFFE|- rs1_val == -513<br>                                                                                                                                                                                                           |[0x80000940]:srlw a2, a0, a1<br> [0x80000944]:sd a2, 480(tp)<br>    |
|  80|[0x80003288]<br>0x000000003FFFFEFF|- rs1_val == -1025<br>                                                                                                                                                                                                          |[0x80000950]:srlw a2, a0, a1<br> [0x80000954]:sd a2, 488(tp)<br>    |
|  81|[0x80003290]<br>0x0000000000FFFFF7|- rs1_val == -2049<br>                                                                                                                                                                                                          |[0x80000964]:srlw a2, a0, a1<br> [0x80000968]:sd a2, 496(tp)<br>    |
|  82|[0x80003298]<br>0x0000000000001FFF|- rs1_val == -4097<br>                                                                                                                                                                                                          |[0x80000978]:srlw a2, a0, a1<br> [0x8000097c]:sd a2, 504(tp)<br>    |
|  83|[0x800032a0]<br>0x00000000000FFFFD|- rs1_val == -8193<br>                                                                                                                                                                                                          |[0x8000098c]:srlw a2, a0, a1<br> [0x80000990]:sd a2, 512(tp)<br>    |
|  84|[0x800032a8]<br>0x000000000003FFFE|- rs1_val == -16385<br>                                                                                                                                                                                                         |[0x800009a0]:srlw a2, a0, a1<br> [0x800009a4]:sd a2, 520(tp)<br>    |
|  85|[0x800032b0]<br>0x000000007FFFBFFF|- rs1_val == -32769<br>                                                                                                                                                                                                         |[0x800009b4]:srlw a2, a0, a1<br> [0x800009b8]:sd a2, 528(tp)<br>    |
|  86|[0x800032b8]<br>0x000000000001FFFD|- rs1_val == -65537<br>                                                                                                                                                                                                         |[0x800009c8]:srlw a2, a0, a1<br> [0x800009cc]:sd a2, 536(tp)<br>    |
|  87|[0x800032c0]<br>0x0000000000003FFF|- rs1_val == -131073<br>                                                                                                                                                                                                        |[0x800009dc]:srlw a2, a0, a1<br> [0x800009e0]:sd a2, 544(tp)<br>    |
|  88|[0x800032c8]<br>0x000000007FFDFFFF|- rs1_val == -262145<br>                                                                                                                                                                                                        |[0x800009f0]:srlw a2, a0, a1<br> [0x800009f4]:sd a2, 552(tp)<br>    |
|  89|[0x800032d0]<br>0x000000000FFF7FFF|- rs1_val == -524289<br>                                                                                                                                                                                                        |[0x80000a04]:srlw a2, a0, a1<br> [0x80000a08]:sd a2, 560(tp)<br>    |
|  90|[0x800032d8]<br>0x0000000000000003|- rs1_val == -36028797018963969<br>                                                                                                                                                                                             |[0x80000a1c]:srlw a2, a0, a1<br> [0x80000a20]:sd a2, 568(tp)<br>    |
|  91|[0x800032e0]<br>0x0000000000000007|- rs1_val == -72057594037927937<br> - rs2_val == 29<br>                                                                                                                                                                         |[0x80000a34]:srlw a2, a0, a1<br> [0x80000a38]:sd a2, 576(tp)<br>    |
|  92|[0x800032e8]<br>0x0000000000FFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                                                                            |[0x80000a4c]:srlw a2, a0, a1<br> [0x80000a50]:sd a2, 584(tp)<br>    |
|  93|[0x800032f0]<br>0x000000003FFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                                                                            |[0x80000a64]:srlw a2, a0, a1<br> [0x80000a68]:sd a2, 592(tp)<br>    |
|  94|[0x800032f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                                                                            |[0x80000a7c]:srlw a2, a0, a1<br> [0x80000a80]:sd a2, 600(tp)<br>    |
|  95|[0x80003300]<br>0x00000000007FFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                                                                           |[0x80000a94]:srlw a2, a0, a1<br> [0x80000a98]:sd a2, 608(tp)<br>    |
|  96|[0x80003308]<br>0x000000000001FFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                                                                           |[0x80000aac]:srlw a2, a0, a1<br> [0x80000ab0]:sd a2, 616(tp)<br>    |
|  97|[0x80003310]<br>0x0000000000000003|- rs1_val == -4611686018427387905<br>                                                                                                                                                                                           |[0x80000ac4]:srlw a2, a0, a1<br> [0x80000ac8]:sd a2, 624(tp)<br>    |
|  98|[0x80003318]<br>0x0000000000155555|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                                                                                         |[0x80000af0]:srlw a2, a0, a1<br> [0x80000af4]:sd a2, 632(tp)<br>    |
|  99|[0x80003320]<br>0x0000000000001555|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                                                                                       |[0x80000b1c]:srlw a2, a0, a1<br> [0x80000b20]:sd a2, 640(tp)<br>    |
| 100|[0x80003328]<br>0x0000000000000000|- rs1_val==3<br>                                                                                                                                                                                                                |[0x80000b2c]:srlw a2, a0, a1<br> [0x80000b30]:sd a2, 648(tp)<br>    |
| 101|[0x80003330]<br>0x0000000000000000|- rs1_val==5<br>                                                                                                                                                                                                                |[0x80000b3c]:srlw a2, a0, a1<br> [0x80000b40]:sd a2, 656(tp)<br>    |
| 102|[0x80003338]<br>0x0000000000001999|- rs1_val==3689348814741910323<br>                                                                                                                                                                                              |[0x80000b68]:srlw a2, a0, a1<br> [0x80000b6c]:sd a2, 664(tp)<br>    |
| 103|[0x80003340]<br>0x000000000000000C|- rs1_val==7378697629483820646<br>                                                                                                                                                                                              |[0x80000b94]:srlw a2, a0, a1<br> [0x80000b98]:sd a2, 672(tp)<br>    |
| 104|[0x80003348]<br>0x0000000000B504F3|- rs1_val==3037000499<br>                                                                                                                                                                                                       |[0x80000bb0]:srlw a2, a0, a1<br> [0x80000bb4]:sd a2, 680(tp)<br>    |
| 105|[0x80003350]<br>0x0000000000055555|- rs1_val==6148914691236517204<br>                                                                                                                                                                                              |[0x80000bdc]:srlw a2, a0, a1<br> [0x80000be0]:sd a2, 688(tp)<br>    |
| 106|[0x80003358]<br>0x0000000006666666|- rs1_val==3689348814741910322<br>                                                                                                                                                                                              |[0x80000c08]:srlw a2, a0, a1<br> [0x80000c0c]:sd a2, 696(tp)<br>    |
| 107|[0x80003360]<br>0x0000000019999999|- rs1_val==7378697629483820645<br>                                                                                                                                                                                              |[0x80000c34]:srlw a2, a0, a1<br> [0x80000c38]:sd a2, 704(tp)<br>    |
| 108|[0x80003368]<br>0x0000000000000001|- rs1_val==3037000498<br>                                                                                                                                                                                                       |[0x80000c50]:srlw a2, a0, a1<br> [0x80000c54]:sd a2, 712(tp)<br>    |
| 109|[0x80003370]<br>0x00000000002AAAAA|- rs1_val==6148914691236517206<br>                                                                                                                                                                                              |[0x80000c7c]:srlw a2, a0, a1<br> [0x80000c80]:sd a2, 720(tp)<br>    |
| 110|[0x80003378]<br>0x0000000000000555|- rs1_val==-6148914691236517205<br>                                                                                                                                                                                             |[0x80000ca8]:srlw a2, a0, a1<br> [0x80000cac]:sd a2, 728(tp)<br>    |
| 111|[0x80003380]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                                                                                                |[0x80000cb8]:srlw a2, a0, a1<br> [0x80000cbc]:sd a2, 736(tp)<br>    |
| 112|[0x80003388]<br>0x0000000000003333|- rs1_val==3689348814741910324<br>                                                                                                                                                                                              |[0x80000ce4]:srlw a2, a0, a1<br> [0x80000ce8]:sd a2, 744(tp)<br>    |
| 113|[0x80003390]<br>0x0000000000003333|- rs1_val==7378697629483820647<br>                                                                                                                                                                                              |[0x80000d10]:srlw a2, a0, a1<br> [0x80000d14]:sd a2, 752(tp)<br>    |
| 114|[0x80003398]<br>0x0000000000000000|- rs1_val==-3037000498<br>                                                                                                                                                                                                      |[0x80000d2c]:srlw a2, a0, a1<br> [0x80000d30]:sd a2, 760(tp)<br>    |
| 115|[0x800033a0]<br>0x00000000000005A8|- rs1_val==3037000500<br>                                                                                                                                                                                                       |[0x80000d48]:srlw a2, a0, a1<br> [0x80000d4c]:sd a2, 768(tp)<br>    |
| 116|[0x800033a8]<br>0x0000000003FFBFFF|- rs1_val == -1048577<br>                                                                                                                                                                                                       |[0x80000d5c]:srlw a2, a0, a1<br> [0x80000d60]:sd a2, 776(tp)<br>    |
| 117|[0x800033b0]<br>0x000000000000FFDF|- rs1_val == -2097153<br>                                                                                                                                                                                                       |[0x80000d70]:srlw a2, a0, a1<br> [0x80000d74]:sd a2, 784(tp)<br>    |
| 118|[0x800033b8]<br>0x00000000000007FD|- rs1_val == -4194305<br>                                                                                                                                                                                                       |[0x80000d84]:srlw a2, a0, a1<br> [0x80000d88]:sd a2, 792(tp)<br>    |
| 119|[0x800033c0]<br>0x00000000003FDFFF|- rs1_val == -8388609<br>                                                                                                                                                                                                       |[0x80000d98]:srlw a2, a0, a1<br> [0x80000d9c]:sd a2, 800(tp)<br>    |
| 120|[0x800033c8]<br>0x00000000007F7FFF|- rs1_val == -16777217<br>                                                                                                                                                                                                      |[0x80000dac]:srlw a2, a0, a1<br> [0x80000db0]:sd a2, 808(tp)<br>    |
| 121|[0x800033d0]<br>0x0000000003F7FFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                      |[0x80000dc0]:srlw a2, a0, a1<br> [0x80000dc4]:sd a2, 816(tp)<br>    |
| 122|[0x800033d8]<br>0x00000000000001F7|- rs1_val == -67108865<br>                                                                                                                                                                                                      |[0x80000dd4]:srlw a2, a0, a1<br> [0x80000dd8]:sd a2, 824(tp)<br>    |
| 123|[0x800033e0]<br>0x000000003DFFFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                                     |[0x80000de8]:srlw a2, a0, a1<br> [0x80000dec]:sd a2, 832(tp)<br>    |
| 124|[0x800033e8]<br>0x00000000000EFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                                     |[0x80000dfc]:srlw a2, a0, a1<br> [0x80000e00]:sd a2, 840(tp)<br>    |
| 125|[0x800033f0]<br>0x00000000006FFFFF|- rs1_val == -536870913<br>                                                                                                                                                                                                     |[0x80000e10]:srlw a2, a0, a1<br> [0x80000e14]:sd a2, 848(tp)<br>    |
| 126|[0x800033f8]<br>0x0000000000000001|- rs1_val == -1073741825<br>                                                                                                                                                                                                    |[0x80000e24]:srlw a2, a0, a1<br> [0x80000e28]:sd a2, 856(tp)<br>    |
| 127|[0x80003400]<br>0x00000000007FFFFF|- rs1_val == -2147483649<br>                                                                                                                                                                                                    |[0x80000e3c]:srlw a2, a0, a1<br> [0x80000e40]:sd a2, 864(tp)<br>    |
| 128|[0x80003408]<br>0x000000000FFFFFFF|- rs1_val == -4294967297<br>                                                                                                                                                                                                    |[0x80000e54]:srlw a2, a0, a1<br> [0x80000e58]:sd a2, 872(tp)<br>    |
| 129|[0x80003410]<br>0x00000000000001FF|- rs1_val == -8589934593<br>                                                                                                                                                                                                    |[0x80000e6c]:srlw a2, a0, a1<br> [0x80000e70]:sd a2, 880(tp)<br>    |
| 130|[0x80003418]<br>0x000000000007FFFF|- rs1_val == -17179869185<br>                                                                                                                                                                                                   |[0x80000e84]:srlw a2, a0, a1<br> [0x80000e88]:sd a2, 888(tp)<br>    |
| 131|[0x80003420]<br>0x0000000000000007|- rs1_val == -34359738369<br>                                                                                                                                                                                                   |[0x80000e9c]:srlw a2, a0, a1<br> [0x80000ea0]:sd a2, 896(tp)<br>    |
| 132|[0x80003428]<br>0x00000000000007FF|- rs1_val == -68719476737<br>                                                                                                                                                                                                   |[0x80000eb4]:srlw a2, a0, a1<br> [0x80000eb8]:sd a2, 904(tp)<br>    |
| 133|[0x80003430]<br>0x0000000000003FFF|- rs1_val == -137438953473<br>                                                                                                                                                                                                  |[0x80000ecc]:srlw a2, a0, a1<br> [0x80000ed0]:sd a2, 912(tp)<br>    |
| 134|[0x80003438]<br>0x000000000003FFFF|- rs1_val == -274877906945<br>                                                                                                                                                                                                  |[0x80000ee4]:srlw a2, a0, a1<br> [0x80000ee8]:sd a2, 920(tp)<br>    |
| 135|[0x80003440]<br>0x0000000007FFFFFF|- rs1_val == -549755813889<br>                                                                                                                                                                                                  |[0x80000efc]:srlw a2, a0, a1<br> [0x80000f00]:sd a2, 928(tp)<br>    |
| 136|[0x80003448]<br>0x0000000007FFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                                                                                 |[0x80000f14]:srlw a2, a0, a1<br> [0x80000f18]:sd a2, 936(tp)<br>    |
| 137|[0x80003450]<br>0x00000000000007FF|- rs1_val == -2199023255553<br>                                                                                                                                                                                                 |[0x80000f2c]:srlw a2, a0, a1<br> [0x80000f30]:sd a2, 944(tp)<br>    |
| 138|[0x80003458]<br>0x00000000000007FF|- rs1_val == -4398046511105<br>                                                                                                                                                                                                 |[0x80000f44]:srlw a2, a0, a1<br> [0x80000f48]:sd a2, 952(tp)<br>    |
| 139|[0x80003460]<br>0x000000000000FFFF|- rs1_val == -8796093022209<br>                                                                                                                                                                                                 |[0x80000f5c]:srlw a2, a0, a1<br> [0x80000f60]:sd a2, 960(tp)<br>    |
| 140|[0x80003468]<br>0x000000000007FFFF|- rs1_val == -17592186044417<br>                                                                                                                                                                                                |[0x80000f74]:srlw a2, a0, a1<br> [0x80000f78]:sd a2, 968(tp)<br>    |
| 141|[0x80003470]<br>0x000000007FFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                                                                                |[0x80000f8c]:srlw a2, a0, a1<br> [0x80000f90]:sd a2, 976(tp)<br>    |
| 142|[0x80003478]<br>0x0000000007FFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                                                                                |[0x80000fa4]:srlw a2, a0, a1<br> [0x80000fa8]:sd a2, 984(tp)<br>    |
| 143|[0x80003480]<br>0x000000003FFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                                                                               |[0x80000fbc]:srlw a2, a0, a1<br> [0x80000fc0]:sd a2, 992(tp)<br>    |
| 144|[0x80003488]<br>0x000000000003FFFF|- rs1_val == -281474976710657<br>                                                                                                                                                                                               |[0x80000fd4]:srlw a2, a0, a1<br> [0x80000fd8]:sd a2, 1000(tp)<br>   |
| 145|[0x80003490]<br>0x000000007FFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                                                                               |[0x80000fec]:srlw a2, a0, a1<br> [0x80000ff0]:sd a2, 1008(tp)<br>   |
| 146|[0x80003498]<br>0x0000000000000003|- rs1_val == -1125899906842625<br>                                                                                                                                                                                              |[0x80001004]:srlw a2, a0, a1<br> [0x80001008]:sd a2, 1016(tp)<br>   |
| 147|[0x800034a0]<br>0x00000000000FFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                                                                              |[0x8000101c]:srlw a2, a0, a1<br> [0x80001020]:sd a2, 1024(tp)<br>   |
| 148|[0x800034a8]<br>0x000000000003FFFF|- rs1_val == -9007199254740993<br>                                                                                                                                                                                              |[0x80001034]:srlw a2, a0, a1<br> [0x80001038]:sd a2, 1032(tp)<br>   |
| 149|[0x800034b0]<br>0x00000000007FFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                                                                             |[0x8000104c]:srlw a2, a0, a1<br> [0x80001050]:sd a2, 1040(tp)<br>   |
| 150|[0x800034d8]<br>0x0000000000000000|- rs1_val == 128<br>                                                                                                                                                                                                            |[0x800010b8]:srlw a2, a0, a1<br> [0x800010bc]:sd a2, 1080(tp)<br>   |
