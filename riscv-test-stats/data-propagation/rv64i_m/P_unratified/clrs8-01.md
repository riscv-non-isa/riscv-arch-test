
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ba0')]      |
| SIG_REGION                | [('0x80002210', '0x800023e0', '58 dwords')]      |
| COV_LABELS                | clrs8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/clrs8-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 58      |
| STAT1                     | 57      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b98]:CLRS8 t6, t5
      [0x80000b9c]:sd t6, 272(sp)
 -- Signature Address: 0x800023d8 Data: 0x0104060405000004
 -- Redundant Coverpoints hit by the op
      - opcode : clrs8
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == -33
      - rs1_b5_val == -2
      - rs1_b3_val == -3
      - rs1_b2_val == 85
      - rs1_b1_val == 64






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

|s.no|            signature             |                                                                                        coverpoints                                                                                         |                              code                               |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
|   1|[0x80002210]<br>0x0504040400010500|- opcode : clrs8<br> - rs1 : x13<br> - rd : x30<br> - rs1_b0_val == -128<br> - rs1_b7_val == -3<br> - rs1_b3_val == 64<br> - rs1_b2_val == 32<br> - rs1_b1_val == -3<br>                    |[0x800003b0]:CLRS8 t5, a3<br> [0x800003b4]:sd t5, 0(ra)<br>      |
|   2|[0x80002218]<br>0x0005000500040400|- rs1 : x16<br> - rd : x12<br> - rs1_b7_val == -86<br> - rs1_b5_val == -86<br> - rs1_b4_val == 2<br> - rs1_b3_val == 127<br> - rs1_b2_val == -5<br> - rs1_b0_val == 64<br>                  |[0x800003d8]:CLRS8 a2, a6<br> [0x800003dc]:sd a2, 8(ra)<br>      |
|   3|[0x80002220]<br>0x0006060505040702|- rs1 : x27<br> - rd : x6<br> - rs1_b7_val == 85<br> - rs1_b6_val == 1<br> - rs1_b5_val == -2<br> - rs1_b4_val == -3<br> - rs1_b3_val == 2<br> - rs1_b1_val == 0<br> - rs1_b0_val == 16<br> |[0x800003f8]:CLRS8 t1, s11<br> [0x800003fc]:sd t1, 16(ra)<br>    |
|   4|[0x80002228]<br>0x0005050007000104|- rs1 : x7<br> - rd : x13<br> - rs1_b7_val == 127<br> - rs1_b5_val == -3<br> - rs1_b4_val == -65<br> - rs1_b3_val == -1<br> - rs1_b2_val == -128<br>                                        |[0x80000418]:CLRS8 a3, t2<br> [0x8000041c]:sd a3, 24(ra)<br>     |
|   5|[0x80002230]<br>0x0003000406050301|- rs1 : x25<br> - rd : x3<br> - rs1_b7_val == -65<br> - rs1_b5_val == 127<br> - rs1_b4_val == 4<br> - rs1_b3_val == -2<br> - rs1_b1_val == -9<br> - rs1_b0_val == 32<br>                    |[0x80000440]:CLRS8 gp, s9<br> [0x80000444]:sd gp, 32(ra)<br>     |
|   6|[0x80002238]<br>0x0000000000000000|- rs1 : x5<br> - rd : x0<br> - rs1_b7_val == -33<br> - rs1_b3_val == -3<br> - rs1_b2_val == 85<br> - rs1_b1_val == 64<br>                                                                   |[0x80000468]:CLRS8 zero, t0<br> [0x8000046c]:sd zero, 40(ra)<br> |
|   7|[0x80002240]<br>0x0202050504000005|- rs1 : x28<br> - rd : x26<br> - rs1_b7_val == -17<br> - rs1_b6_val == -17<br> - rs1_b5_val == 2<br> - rs1_b2_val == -86<br>                                                                |[0x80000490]:CLRS8 s10, t3<br> [0x80000494]:sd s10, 48(ra)<br>   |
|   8|[0x80002248]<br>0x0304050000040405|- rs1 : x14<br> - rd : x21<br> - rs1_b7_val == -9<br> - rs1_b6_val == -5<br> - rs1_b4_val == -86<br> - rs1_b0_val == -3<br>                                                                 |[0x800004b0]:CLRS8 s5, a4<br> [0x800004b4]:sd s5, 56(ra)<br>     |
|   9|[0x80002250]<br>0x0403000501060005|- rs1 : x15<br> - rd : x28<br> - rs1_b7_val == -5<br> - rs1_b5_val == -65<br> - rs1_b2_val == 1<br> - rs1_b1_val == -65<br>                                                                 |[0x800004d0]:CLRS8 t3, a5<br> [0x800004d4]:sd t3, 64(ra)<br>     |
|  10|[0x80002258]<br>0x0601000005030004|- rs1 : x21<br> - rd : x22<br> - rs1_b7_val == -2<br> - rs1_b5_val == 85<br> - rs1_b4_val == 85<br> - rs1_b2_val == 8<br> - rs1_b1_val == -128<br> - rs1_b0_val == -5<br>                   |[0x800004f0]:CLRS8 s6, s5<br> [0x800004f4]:sd s6, 72(ra)<br>     |
|  11|[0x80002260]<br>0x0707070707070707|- rs1 : x0<br> - rd : x16<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b0_val == 0<br>     |[0x80000518]:CLRS8 a6, zero<br> [0x8000051c]:sd a6, 80(ra)<br>   |
|  12|[0x80002268]<br>0x0003070100040301|- rs1 : x2<br> - rd : x11<br> - rs1_b7_val == 64<br> - rs1_b4_val == 32<br>                                                                                                                 |[0x80000540]:CLRS8 a1, sp<br> [0x80000544]:sd a1, 88(ra)<br>     |
|  13|[0x80002270]<br>0x0103050204000304|- rs1 : x8<br> - rd : x18<br> - rs1_b7_val == 32<br> - rs1_b4_val == 16<br> - rs1_b3_val == 4<br> - rs1_b2_val == 64<br>                                                                    |[0x80000568]:CLRS8 s2, fp<br> [0x8000056c]:sd s2, 96(ra)<br>     |
|  14|[0x80002278]<br>0x0201000000040407|- rs1 : x17<br> - rd : x2<br> - rs1_b7_val == 16<br> - rs1_b3_val == -86<br> - rs1_b0_val == -1<br>                                                                                         |[0x80000590]:CLRS8 sp, a7<br> [0x80000594]:sd sp, 104(ra)<br>    |
|  15|[0x80002280]<br>0x0305050004050404|- rs1 : x12<br> - rd : x10<br> - rs1_b7_val == 8<br> - rs1_b4_val == -128<br> - rs1_b0_val == 4<br>                                                                                         |[0x800005b0]:CLRS8 a0, a2<br> [0x800005b4]:sd a0, 112(ra)<br>    |
|  16|[0x80002288]<br>0x0404040100050700|- rs1 : x3<br> - rd : x17<br> - rs1_b7_val == 4<br> - rs1_b4_val == -33<br> - rs1_b1_val == -1<br> - rs1_b0_val == -86<br>                                                                  |[0x800005d0]:CLRS8 a7, gp<br> [0x800005d4]:sd a7, 120(ra)<br>    |
|  17|[0x80002290]<br>0x0500030703040001|- rs1 : x29<br> - rd : x15<br> - rs1_b7_val == 2<br> - rs1_b6_val == -128<br> - rs1_b5_val == -9<br> - rs1_b0_val == -33<br>                                                                |[0x800005f0]:CLRS8 a5, t4<br> [0x800005f4]:sd a5, 128(ra)<br>    |
|  18|[0x80002298]<br>0x0606010001040600|- rs1 : x26<br> - rd : x19<br> - rs1_b7_val == 1<br> - rs1_b5_val == 32<br> - rs1_b1_val == 1<br>                                                                                           |[0x80000610]:CLRS8 s3, s10<br> [0x80000614]:sd s3, 136(ra)<br>   |
|  19|[0x800022a0]<br>0x0703000305040404|- rs1 : x11<br> - rd : x8<br> - rs1_b6_val == -9<br> - rs1_b4_val == -9<br> - rs1_b1_val == 4<br>                                                                                           |[0x80000630]:CLRS8 fp, a1<br> [0x80000634]:sd fp, 144(ra)<br>    |
|  20|[0x800022a8]<br>0x0702040500010404|- rs1 : x23<br> - rd : x9<br> - rs1_b7_val == -1<br> - rs1_b6_val == 16<br> - rs1_b3_val == -65<br>                                                                                         |[0x80000650]:CLRS8 s1, s7<br> [0x80000654]:sd s1, 152(ra)<br>    |
|  21|[0x800022b0]<br>0x0400000507000301|- rs1 : x18<br> - rd : x5<br> - rs1_b6_val == -86<br> - rs1_b2_val == -65<br> - rs1_b1_val == 8<br>                                                                                         |[0x80000670]:CLRS8 t0, s2<br> [0x80000674]:sd t0, 160(ra)<br>    |
|  22|[0x800022b8]<br>0x0100020001000507|- rs1 : x4<br> - rd : x7<br> - rs1_b6_val == 85<br> - rs1_b5_val == -17<br> - rs1_b3_val == -33<br>                                                                                         |[0x80000698]:CLRS8 t2, tp<br> [0x8000069c]:sd t2, 168(ra)<br>    |
|  23|[0x800022c0]<br>0x0400000002040404|- rs1 : x31<br> - rd : x24<br> - rs1_b6_val == 127<br> - rs1_b5_val == -128<br> - rs1_b4_val == 127<br> - rs1_b3_val == -17<br> - rs1_b1_val == -5<br>                                      |[0x800006b8]:CLRS8 s8, t6<br> [0x800006bc]:sd s8, 176(ra)<br>    |
|  24|[0x800022c8]<br>0x0600060603040507|- rs1 : x24<br> - rd : x20<br> - rs1_b6_val == -65<br> - rs1_b5_val == 1<br> - rs1_b4_val == -2<br> - rs1_b3_val == -9<br> - rs1_b1_val == 2<br>                                            |[0x800006e0]:CLRS8 s4, s8<br> [0x800006e4]:sd s4, 0(sp)<br>      |
|  25|[0x800022d0]<br>0x0100070405050600|- rs1 : x6<br> - rd : x25<br> - rs1_b5_val == -1<br> - rs1_b2_val == -3<br> - rs1_b1_val == -2<br> - rs1_b0_val == -65<br>                                                                  |[0x80000700]:CLRS8 s9, t1<br> [0x80000704]:sd s9, 8(sp)<br>      |
|  26|[0x800022d8]<br>0x0403000400070103|- rs1 : x9<br> - rd : x27<br> - rs1_b4_val == -5<br> - rs1_b3_val == -128<br> - rs1_b2_val == -1<br> - rs1_b1_val == 32<br>                                                                 |[0x80000720]:CLRS8 s11, s1<br> [0x80000724]:sd s11, 16(sp)<br>   |
|  27|[0x800022e0]<br>0x0100020605010205|- rs1 : x10<br> - rd : x1<br> - rs1_b5_val == 16<br> - rs1_b4_val == 1<br> - rs1_b2_val == -33<br> - rs1_b1_val == 16<br> - rs1_b0_val == 2<br>                                             |[0x80000748]:CLRS8 ra, a0<br> [0x8000074c]:sd ra, 24(sp)<br>     |
|  28|[0x800022e8]<br>0x0507040404010400|- rs1 : x1<br> - rd : x29<br> - rs1_b6_val == -1<br> - rs1_b0_val == 127<br>                                                                                                                |[0x80000768]:CLRS8 t4, ra<br> [0x8000076c]:sd t4, 32(sp)<br>     |
|  29|[0x800022f0]<br>0x0304000701050602|- rs1 : x22<br> - rd : x31<br> - rs1_b0_val == -17<br>                                                                                                                                      |[0x80000788]:CLRS8 t6, s6<br> [0x8000078c]:sd t6, 40(sp)<br>     |
|  30|[0x800022f8]<br>0x0704000104000403|- rs1 : x20<br> - rd : x14<br> - rs1_b0_val == -9<br>                                                                                                                                       |[0x800007a8]:CLRS8 a4, s4<br> [0x800007ac]:sd a4, 48(sp)<br>     |
|  31|[0x80002300]<br>0x0401040005050706|- rs1 : x30<br> - rd : x23<br> - rs1_b6_val == -33<br> - rs1_b2_val == 2<br> - rs1_b0_val == -2<br>                                                                                         |[0x800007c8]:CLRS8 s7, t5<br> [0x800007cc]:sd s7, 56(sp)<br>     |
|  32|[0x80002308]<br>0x0300040405040503|- rs1 : x19<br> - rd : x4<br> - rs1_b0_val == 8<br>                                                                                                                                         |[0x800007e8]:CLRS8 tp, s3<br> [0x800007ec]:sd tp, 64(sp)<br>     |
|  33|[0x80002310]<br>0x0005050001040404|- rs1_b6_val == -3<br>                                                                                                                                                                      |[0x80000810]:CLRS8 t6, t5<br> [0x80000814]:sd t6, 72(sp)<br>     |
|  34|[0x80002318]<br>0x0200030203040206|- rs1_b5_val == 8<br> - rs1_b4_val == -17<br> - rs1_b0_val == 1<br>                                                                                                                         |[0x80000838]:CLRS8 t6, t5<br> [0x8000083c]:sd t6, 80(sp)<br>     |
|  35|[0x80002320]<br>0x0306040303040304|- rs1_b6_val == -2<br>                                                                                                                                                                      |[0x80000860]:CLRS8 t6, t5<br> [0x80000864]:sd t6, 88(sp)<br>     |
|  36|[0x80002328]<br>0x0400000401050304|- rs1_b6_val == 64<br>                                                                                                                                                                      |[0x80000888]:CLRS8 t6, t5<br> [0x8000088c]:sd t6, 96(sp)<br>     |
|  37|[0x80002330]<br>0x0006040007050702|- rs1_b7_val == -128<br> - rs1_b4_val == 64<br>                                                                                                                                             |[0x800008a8]:CLRS8 t6, t5<br> [0x800008ac]:sd t6, 104(sp)<br>    |
|  38|[0x80002338]<br>0x0003010303000700|- rs1_b6_val == 8<br> - rs1_b4_val == 8<br>                                                                                                                                                 |[0x800008d0]:CLRS8 t6, t5<br> [0x800008d4]:sd t6, 112(sp)<br>    |
|  39|[0x80002340]<br>0x0305050705040400|- rs1_b4_val == -1<br>                                                                                                                                                                      |[0x800008f0]:CLRS8 t6, t5<br> [0x800008f4]:sd t6, 120(sp)<br>    |
|  40|[0x80002348]<br>0x0004040400030004|- rs1_b3_val == 85<br>                                                                                                                                                                      |[0x80000918]:CLRS8 t6, t5<br> [0x8000091c]:sd t6, 128(sp)<br>    |
|  41|[0x80002350]<br>0x0004070504000500|- rs1_b3_val == -5<br>                                                                                                                                                                      |[0x80000938]:CLRS8 t6, t5<br> [0x8000093c]:sd t6, 136(sp)<br>    |
|  42|[0x80002358]<br>0x0002040301030400|- rs1_b5_val == -5<br> - rs1_b3_val == 32<br>                                                                                                                                               |[0x80000960]:CLRS8 t6, t5<br> [0x80000964]:sd t6, 144(sp)<br>    |
|  43|[0x80002360]<br>0x0007010402040405|- rs1_b3_val == 16<br>                                                                                                                                                                      |[0x80000980]:CLRS8 t6, t5<br> [0x80000984]:sd t6, 152(sp)<br>    |
|  44|[0x80002368]<br>0x0301050403020304|- rs1_b3_val == 8<br> - rs1_b2_val == 16<br>                                                                                                                                                |[0x800009a8]:CLRS8 t6, t5<br> [0x800009ac]:sd t6, 160(sp)<br>    |
|  45|[0x80002370]<br>0x0501060405030100|- rs1_b6_val == 32<br>                                                                                                                                                                      |[0x800009d0]:CLRS8 t6, t5<br> [0x800009d4]:sd t6, 168(sp)<br>    |
|  46|[0x80002378]<br>0x0205030006040506|- rs1_b3_val == 1<br> - rs1_b2_val == 4<br>                                                                                                                                                 |[0x800009f0]:CLRS8 t6, t5<br> [0x800009f4]:sd t6, 176(sp)<br>    |
|  47|[0x80002380]<br>0x0404040201000200|- rs1_b6_val == 4<br> - rs1_b2_val == 127<br> - rs1_b1_val == -17<br> - rs1_b0_val == 85<br>                                                                                                |[0x80000a18]:CLRS8 t6, t5<br> [0x80000a1c]:sd t6, 184(sp)<br>    |
|  48|[0x80002388]<br>0x0605030403030004|- rs1_b6_val == 2<br> - rs1_b1_val == 85<br>                                                                                                                                                |[0x80000a40]:CLRS8 t6, t5<br> [0x80000a44]:sd t6, 192(sp)<br>    |
|  49|[0x80002390]<br>0x0304040401020001|- rs1_b2_val == -17<br>                                                                                                                                                                     |[0x80000a60]:CLRS8 t6, t5<br> [0x80000a64]:sd t6, 200(sp)<br>    |
|  50|[0x80002398]<br>0x0004010207030407|- rs1_b2_val == -9<br>                                                                                                                                                                      |[0x80000a80]:CLRS8 t6, t5<br> [0x80000a84]:sd t6, 208(sp)<br>    |
|  51|[0x800023a0]<br>0x0300010406040606|- rs1_b5_val == -33<br>                                                                                                                                                                     |[0x80000aa0]:CLRS8 t6, t5<br> [0x80000aa4]:sd t6, 216(sp)<br>    |
|  52|[0x800023a8]<br>0x0500000001040103|- rs1_b5_val == 64<br>                                                                                                                                                                      |[0x80000ac0]:CLRS8 t6, t5<br> [0x80000ac4]:sd t6, 224(sp)<br>    |
|  53|[0x800023b0]<br>0x0206000501070001|- rs1_b1_val == -86<br>                                                                                                                                                                     |[0x80000ae8]:CLRS8 t6, t5<br> [0x80000aec]:sd t6, 232(sp)<br>    |
|  54|[0x800023b8]<br>0x0207040007030105|- rs1_b5_val == 4<br>                                                                                                                                                                       |[0x80000b08]:CLRS8 t6, t5<br> [0x80000b0c]:sd t6, 240(sp)<br>    |
|  55|[0x800023c0]<br>0x0304040301050003|- rs1_b1_val == 127<br>                                                                                                                                                                     |[0x80000b28]:CLRS8 t6, t5<br> [0x80000b2c]:sd t6, 248(sp)<br>    |
|  56|[0x800023c8]<br>0x0404040206000104|- rs1_b1_val == -33<br>                                                                                                                                                                     |[0x80000b50]:CLRS8 t6, t5<br> [0x80000b54]:sd t6, 256(sp)<br>    |
|  57|[0x800023d0]<br>0x0604060200060500|- rs1_b2_val == -2<br>                                                                                                                                                                      |[0x80000b70]:CLRS8 t6, t5<br> [0x80000b74]:sd t6, 264(sp)<br>    |
