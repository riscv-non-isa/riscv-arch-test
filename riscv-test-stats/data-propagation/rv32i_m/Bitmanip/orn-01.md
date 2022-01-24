
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000c70')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | orn      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/32/riscof_dir/orn-01.S/ref.S    |
| Total Number of coverpoints| 267     |
| Total Coverpoints Hit     | 261      |
| Total Signature Updates   | 160      |
| STAT1                     | 155      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009c8]:orn t6, t5, t4
      [0x800009cc]:sw t6, 368(t2)
 -- Signature Address: 0x800023e8 Data: 0xFFFEFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : orn
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 65536
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009d8]:orn t6, t5, t4
      [0x800009dc]:sw t6, 372(t2)
 -- Signature Address: 0x800023ec Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : orn
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 65536
      - rs1_val == 65536
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009f8]:orn t6, t5, t4
      [0x800009fc]:sw t6, 380(t2)
 -- Signature Address: 0x800023f4 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : orn
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 65536
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c40]:orn t6, t5, t4
      [0x80000c44]:sw t6, 524(t2)
 -- Signature Address: 0x80002484 Data: 0x00010004
 -- Redundant Coverpoints hit by the op
      - opcode : orn
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs2_val == 4294967291
      - rs1_val == 65536
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c64]:orn t6, t5, t4
      [0x80000c68]:sw t6, 532(t2)
 -- Signature Address: 0x8000248c Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : orn
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val == 2147483647
      - rs2_val == 65536
      - rs1_val > 0 and rs2_val > 0






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

|s.no|        signature         |                                                                                                           coverpoints                                                                                                            |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFF|- opcode : orn<br> - rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs2_val == 65536<br> - rs1_val == 65536<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br> |[0x80000108]:orn t6, t6, t6<br> [0x8000010c]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0x80010000|- rs1 : x29<br> - rs2 : x28<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 2147483647<br>                                                 |[0x8000011c]:orn t5, t4, t3<br> [0x80000120]:sw t5, 4(ra)<br>      |
|   3|[0x80002218]<br>0x40010000|- rs1 : x28<br> - rs2 : x30<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_val == 3221225471<br>                                                                                                                                 |[0x80000130]:orn t3, t3, t5<br> [0x80000134]:sw t3, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x20010000|- rs1 : x30<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs2_val == 3758096383<br>                                                                                                                                 |[0x80000144]:orn t4, t5, t4<br> [0x80000148]:sw t4, 12(ra)<br>     |
|   5|[0x80002220]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x26<br> - rd : x27<br> - rs1 == rs2 != rd<br>                                                                                                                                                             |[0x80000154]:orn s11, s10, s10<br> [0x80000158]:sw s11, 16(ra)<br> |
|   6|[0x80002224]<br>0x08010000|- rs1 : x27<br> - rs2 : x25<br> - rd : x26<br> - rs2_val == 4160749567<br>                                                                                                                                                        |[0x80000168]:orn s10, s11, s9<br> [0x8000016c]:sw s10, 20(ra)<br>  |
|   7|[0x80002228]<br>0x04010000|- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br> - rs2_val == 4227858431<br>                                                                                                                                                        |[0x8000017c]:orn s9, s8, s11<br> [0x80000180]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0x02010000|- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br> - rs2_val == 4261412863<br>                                                                                                                                                        |[0x80000190]:orn s8, s9, s7<br> [0x80000194]:sw s8, 28(ra)<br>     |
|   9|[0x80002230]<br>0x01010000|- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 4278190079<br>                                                                                                                                                        |[0x800001a4]:orn s7, s6, s8<br> [0x800001a8]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0x00810000|- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 4286578687<br>                                                                                                                                                        |[0x800001b8]:orn s6, s7, s5<br> [0x800001bc]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0x00410000|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 4290772991<br>                                                                                                                                                        |[0x800001cc]:orn s5, s4, s6<br> [0x800001d0]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0x00210000|- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == 4292870143<br>                                                                                                                                                        |[0x800001e0]:orn s4, s5, s3<br> [0x800001e4]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0x00110000|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 4293918719<br>                                                                                                                                                        |[0x800001f4]:orn s3, s2, s4<br> [0x800001f8]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0x00090000|- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br> - rs2_val == 4294443007<br>                                                                                                                                                        |[0x80000208]:orn s2, s3, a7<br> [0x8000020c]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0x00050000|- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 4294705151<br>                                                                                                                                                        |[0x8000021c]:orn a7, a6, s2<br> [0x80000220]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x00030000|- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 4294836223<br>                                                                                                                                                        |[0x80000230]:orn a6, a7, a5<br> [0x80000234]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0x00010000|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 4294901759<br>                                                                                                                                                        |[0x80000244]:orn a5, a4, a6<br> [0x80000248]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0x00018000|- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br> - rs2_val == 4294934527<br>                                                                                                                                                        |[0x80000258]:orn a4, a5, a3<br> [0x8000025c]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0x00014000|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 4294950911<br>                                                                                                                                                        |[0x8000026c]:orn a3, a2, a4<br> [0x80000270]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0x00012000|- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == 4294959103<br>                                                                                                                                                        |[0x80000280]:orn a2, a3, a1<br> [0x80000284]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0x00011000|- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 4294963199<br>                                                                                                                                                        |[0x80000294]:orn a1, a0, a2<br> [0x80000298]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0x00010800|- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br> - rs2_val == 4294965247<br>                                                                                                                                                         |[0x800002a8]:orn a0, a1, s1<br> [0x800002ac]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0x00010400|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 4294966271<br>                                                                                                                                                          |[0x800002b8]:orn s1, fp, a0<br> [0x800002bc]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0x00010200|- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 4294966783<br>                                                                                                                                                           |[0x800002c8]:orn fp, s1, t2<br> [0x800002cc]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0x00010100|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 4294967039<br>                                                                                                                                                           |[0x800002d8]:orn t2, t1, fp<br> [0x800002dc]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0x00010080|- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == 4294967167<br>                                                                                                                                                           |[0x800002e8]:orn t1, t2, t0<br> [0x800002ec]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0x00010040|- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 4294967231<br>                                                                                                                                                           |[0x80000300]:orn t0, tp, t1<br> [0x80000304]:sw t0, 0(t2)<br>      |
|  28|[0x8000227c]<br>0x00010020|- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br> - rs2_val == 4294967263<br>                                                                                                                                                           |[0x80000310]:orn tp, t0, gp<br> [0x80000314]:sw tp, 4(t2)<br>      |
|  29|[0x80002280]<br>0x00010010|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 4294967279<br>                                                                                                                                                           |[0x80000320]:orn gp, sp, tp<br> [0x80000324]:sw gp, 8(t2)<br>      |
|  30|[0x80002284]<br>0x00010008|- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br> - rs2_val == 4294967287<br>                                                                                                                                                           |[0x80000330]:orn sp, gp, ra<br> [0x80000334]:sw sp, 12(t2)<br>     |
|  31|[0x80002288]<br>0x00000004|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 4294967291<br> - rs1_val == 0<br>                                                                                                                                        |[0x80000340]:orn ra, zero, sp<br> [0x80000344]:sw ra, 16(t2)<br>   |
|  32|[0x8000228c]<br>0x00010002|- rs1 : x1<br> - rs2_val == 4294967293<br>                                                                                                                                                                                        |[0x80000350]:orn t6, ra, t5<br> [0x80000354]:sw t6, 20(t2)<br>     |
|  33|[0x80002290]<br>0xFFFFFFFF|- rs2 : x0<br> - rs2_val == 0<br>                                                                                                                                                                                                 |[0x80000360]:orn t6, t5, zero<br> [0x80000364]:sw t6, 24(t2)<br>   |
|  34|[0x80002294]<br>0x00000000|- rd : x0<br> - rs1_val == 2147483647<br>                                                                                                                                                                                         |[0x80000374]:orn zero, t6, t5<br> [0x80000378]:sw zero, 28(t2)<br> |
|  35|[0x80002298]<br>0xFFFFFFFF|- rs1_val == 3221225471<br>                                                                                                                                                                                                       |[0x80000388]:orn t6, t5, t4<br> [0x8000038c]:sw t6, 32(t2)<br>     |
|  36|[0x8000229c]<br>0xFFFFFFFF|- rs1_val == 3758096383<br>                                                                                                                                                                                                       |[0x8000039c]:orn t6, t5, t4<br> [0x800003a0]:sw t6, 36(t2)<br>     |
|  37|[0x800022a0]<br>0xFFFFFFFF|- rs1_val == 4026531839<br>                                                                                                                                                                                                       |[0x800003b0]:orn t6, t5, t4<br> [0x800003b4]:sw t6, 40(t2)<br>     |
|  38|[0x800022a4]<br>0xFFFFFFFF|- rs1_val == 4160749567<br>                                                                                                                                                                                                       |[0x800003c4]:orn t6, t5, t4<br> [0x800003c8]:sw t6, 44(t2)<br>     |
|  39|[0x800022a8]<br>0xFFFFFFFF|- rs1_val == 4227858431<br>                                                                                                                                                                                                       |[0x800003d8]:orn t6, t5, t4<br> [0x800003dc]:sw t6, 48(t2)<br>     |
|  40|[0x800022ac]<br>0xFFFFFFFF|- rs1_val == 4261412863<br>                                                                                                                                                                                                       |[0x800003ec]:orn t6, t5, t4<br> [0x800003f0]:sw t6, 52(t2)<br>     |
|  41|[0x800022b0]<br>0xFFFFFFFF|- rs1_val == 4278190079<br>                                                                                                                                                                                                       |[0x80000400]:orn t6, t5, t4<br> [0x80000404]:sw t6, 56(t2)<br>     |
|  42|[0x800022b4]<br>0xFFFFFFFF|- rs1_val == 4286578687<br>                                                                                                                                                                                                       |[0x80000414]:orn t6, t5, t4<br> [0x80000418]:sw t6, 60(t2)<br>     |
|  43|[0x800022b8]<br>0xFFFFFFFF|- rs1_val == 4290772991<br>                                                                                                                                                                                                       |[0x80000428]:orn t6, t5, t4<br> [0x8000042c]:sw t6, 64(t2)<br>     |
|  44|[0x800022bc]<br>0xFFFFFFFF|- rs1_val == 4292870143<br>                                                                                                                                                                                                       |[0x8000043c]:orn t6, t5, t4<br> [0x80000440]:sw t6, 68(t2)<br>     |
|  45|[0x800022c0]<br>0xFFFFFFFF|- rs1_val == 4293918719<br>                                                                                                                                                                                                       |[0x80000450]:orn t6, t5, t4<br> [0x80000454]:sw t6, 72(t2)<br>     |
|  46|[0x800022c4]<br>0xFFFFFFFF|- rs1_val == 4294443007<br>                                                                                                                                                                                                       |[0x80000464]:orn t6, t5, t4<br> [0x80000468]:sw t6, 76(t2)<br>     |
|  47|[0x800022c8]<br>0xFFFFFFFF|- rs1_val == 4294705151<br>                                                                                                                                                                                                       |[0x80000478]:orn t6, t5, t4<br> [0x8000047c]:sw t6, 80(t2)<br>     |
|  48|[0x800022cc]<br>0xFFFFFFFF|- rs1_val == 4294836223<br>                                                                                                                                                                                                       |[0x8000048c]:orn t6, t5, t4<br> [0x80000490]:sw t6, 84(t2)<br>     |
|  49|[0x800022d0]<br>0xFFFEFFFF|- rs1_val == 4294901759<br>                                                                                                                                                                                                       |[0x800004a0]:orn t6, t5, t4<br> [0x800004a4]:sw t6, 88(t2)<br>     |
|  50|[0x800022d4]<br>0xFFFFFFFF|- rs1_val == 4294934527<br>                                                                                                                                                                                                       |[0x800004b4]:orn t6, t5, t4<br> [0x800004b8]:sw t6, 92(t2)<br>     |
|  51|[0x800022d8]<br>0xFFFFFFFF|- rs1_val == 4294950911<br>                                                                                                                                                                                                       |[0x800004c8]:orn t6, t5, t4<br> [0x800004cc]:sw t6, 96(t2)<br>     |
|  52|[0x800022dc]<br>0xFFFFFFFF|- rs1_val == 4294959103<br>                                                                                                                                                                                                       |[0x800004dc]:orn t6, t5, t4<br> [0x800004e0]:sw t6, 100(t2)<br>    |
|  53|[0x800022e0]<br>0xFFFFFFFF|- rs1_val == 4294963199<br>                                                                                                                                                                                                       |[0x800004f0]:orn t6, t5, t4<br> [0x800004f4]:sw t6, 104(t2)<br>    |
|  54|[0x800022e4]<br>0xFFFFFFFF|- rs1_val == 4294965247<br>                                                                                                                                                                                                       |[0x80000504]:orn t6, t5, t4<br> [0x80000508]:sw t6, 108(t2)<br>    |
|  55|[0x800022e8]<br>0xFFFFFFFF|- rs1_val == 4294966271<br>                                                                                                                                                                                                       |[0x80000514]:orn t6, t5, t4<br> [0x80000518]:sw t6, 112(t2)<br>    |
|  56|[0x800022ec]<br>0xFFFFFFFF|- rs1_val == 4294966783<br>                                                                                                                                                                                                       |[0x80000524]:orn t6, t5, t4<br> [0x80000528]:sw t6, 116(t2)<br>    |
|  57|[0x800022f0]<br>0xFFFFFFFF|- rs1_val == 4294967039<br>                                                                                                                                                                                                       |[0x80000534]:orn t6, t5, t4<br> [0x80000538]:sw t6, 120(t2)<br>    |
|  58|[0x800022f4]<br>0xFFFFFFFF|- rs1_val == 4294967167<br>                                                                                                                                                                                                       |[0x80000544]:orn t6, t5, t4<br> [0x80000548]:sw t6, 124(t2)<br>    |
|  59|[0x800022f8]<br>0xFFFFFFFF|- rs1_val == 4294967231<br>                                                                                                                                                                                                       |[0x80000554]:orn t6, t5, t4<br> [0x80000558]:sw t6, 128(t2)<br>    |
|  60|[0x800022fc]<br>0xFFFFFFFF|- rs1_val == 4294967263<br>                                                                                                                                                                                                       |[0x80000564]:orn t6, t5, t4<br> [0x80000568]:sw t6, 132(t2)<br>    |
|  61|[0x80002300]<br>0xFFFFFFFF|- rs1_val == 4294967279<br>                                                                                                                                                                                                       |[0x80000574]:orn t6, t5, t4<br> [0x80000578]:sw t6, 136(t2)<br>    |
|  62|[0x80002304]<br>0xFFFFFFFF|- rs1_val == 4294967287<br>                                                                                                                                                                                                       |[0x80000584]:orn t6, t5, t4<br> [0x80000588]:sw t6, 140(t2)<br>    |
|  63|[0x80002308]<br>0xFFFFFFFF|- rs1_val == 4294967291<br>                                                                                                                                                                                                       |[0x80000594]:orn t6, t5, t4<br> [0x80000598]:sw t6, 144(t2)<br>    |
|  64|[0x8000230c]<br>0xFFFFFFFF|- rs1_val == 4294967293<br>                                                                                                                                                                                                       |[0x800005a4]:orn t6, t5, t4<br> [0x800005a8]:sw t6, 148(t2)<br>    |
|  65|[0x80002310]<br>0xFFFFFFFF|- rs1_val == 4294967294<br>                                                                                                                                                                                                       |[0x800005b4]:orn t6, t5, t4<br> [0x800005b8]:sw t6, 152(t2)<br>    |
|  66|[0x80002314]<br>0x7FFFFFFF|- rs2_val == 2147483648<br>                                                                                                                                                                                                       |[0x800005c4]:orn t6, t5, t4<br> [0x800005c8]:sw t6, 156(t2)<br>    |
|  67|[0x80002318]<br>0xBFFFFFFF|- rs2_val == 1073741824<br>                                                                                                                                                                                                       |[0x800005d4]:orn t6, t5, t4<br> [0x800005d8]:sw t6, 160(t2)<br>    |
|  68|[0x8000231c]<br>0xDFFFFFFF|- rs2_val == 536870912<br>                                                                                                                                                                                                        |[0x800005e4]:orn t6, t5, t4<br> [0x800005e8]:sw t6, 164(t2)<br>    |
|  69|[0x80002320]<br>0xEFFFFFFF|- rs2_val == 268435456<br>                                                                                                                                                                                                        |[0x800005f4]:orn t6, t5, t4<br> [0x800005f8]:sw t6, 168(t2)<br>    |
|  70|[0x80002324]<br>0xF7FFFFFF|- rs2_val == 134217728<br>                                                                                                                                                                                                        |[0x80000604]:orn t6, t5, t4<br> [0x80000608]:sw t6, 172(t2)<br>    |
|  71|[0x80002328]<br>0xFBFFFFFF|- rs2_val == 67108864<br>                                                                                                                                                                                                         |[0x80000614]:orn t6, t5, t4<br> [0x80000618]:sw t6, 176(t2)<br>    |
|  72|[0x8000232c]<br>0xFDFFFFFF|- rs2_val == 33554432<br>                                                                                                                                                                                                         |[0x80000624]:orn t6, t5, t4<br> [0x80000628]:sw t6, 180(t2)<br>    |
|  73|[0x80002330]<br>0xFEFFFFFF|- rs2_val == 16777216<br>                                                                                                                                                                                                         |[0x80000634]:orn t6, t5, t4<br> [0x80000638]:sw t6, 184(t2)<br>    |
|  74|[0x80002334]<br>0xFF7FFFFF|- rs2_val == 8388608<br>                                                                                                                                                                                                          |[0x80000644]:orn t6, t5, t4<br> [0x80000648]:sw t6, 188(t2)<br>    |
|  75|[0x80002338]<br>0xFFBFFFFF|- rs2_val == 4194304<br>                                                                                                                                                                                                          |[0x80000654]:orn t6, t5, t4<br> [0x80000658]:sw t6, 192(t2)<br>    |
|  76|[0x8000233c]<br>0xFFDFFFFF|- rs2_val == 2097152<br>                                                                                                                                                                                                          |[0x80000664]:orn t6, t5, t4<br> [0x80000668]:sw t6, 196(t2)<br>    |
|  77|[0x80002340]<br>0xFFEFFFFF|- rs2_val == 1048576<br>                                                                                                                                                                                                          |[0x80000674]:orn t6, t5, t4<br> [0x80000678]:sw t6, 200(t2)<br>    |
|  78|[0x80002344]<br>0xFFF7FFFF|- rs2_val == 524288<br>                                                                                                                                                                                                           |[0x80000684]:orn t6, t5, t4<br> [0x80000688]:sw t6, 204(t2)<br>    |
|  79|[0x80002348]<br>0xFFFBFFFF|- rs2_val == 262144<br>                                                                                                                                                                                                           |[0x80000694]:orn t6, t5, t4<br> [0x80000698]:sw t6, 208(t2)<br>    |
|  80|[0x8000234c]<br>0xFFFDFFFF|- rs2_val == 131072<br>                                                                                                                                                                                                           |[0x800006a4]:orn t6, t5, t4<br> [0x800006a8]:sw t6, 212(t2)<br>    |
|  81|[0x80002350]<br>0xFFFF7FFF|- rs2_val == 32768<br>                                                                                                                                                                                                            |[0x800006b4]:orn t6, t5, t4<br> [0x800006b8]:sw t6, 216(t2)<br>    |
|  82|[0x80002354]<br>0xFFFFBFFF|- rs2_val == 16384<br>                                                                                                                                                                                                            |[0x800006c4]:orn t6, t5, t4<br> [0x800006c8]:sw t6, 220(t2)<br>    |
|  83|[0x80002358]<br>0xFFFFDFFF|- rs2_val == 8192<br>                                                                                                                                                                                                             |[0x800006d4]:orn t6, t5, t4<br> [0x800006d8]:sw t6, 224(t2)<br>    |
|  84|[0x8000235c]<br>0xFFFFEFFF|- rs2_val == 4096<br>                                                                                                                                                                                                             |[0x800006e4]:orn t6, t5, t4<br> [0x800006e8]:sw t6, 228(t2)<br>    |
|  85|[0x80002360]<br>0xFFFFF7FF|- rs2_val == 2048<br>                                                                                                                                                                                                             |[0x800006f8]:orn t6, t5, t4<br> [0x800006fc]:sw t6, 232(t2)<br>    |
|  86|[0x80002364]<br>0xFFFFFBFF|- rs2_val == 1024<br>                                                                                                                                                                                                             |[0x80000708]:orn t6, t5, t4<br> [0x8000070c]:sw t6, 236(t2)<br>    |
|  87|[0x80002368]<br>0xFFFFFDFF|- rs2_val == 512<br>                                                                                                                                                                                                              |[0x80000718]:orn t6, t5, t4<br> [0x8000071c]:sw t6, 240(t2)<br>    |
|  88|[0x8000236c]<br>0xFFFFFEFF|- rs2_val == 256<br>                                                                                                                                                                                                              |[0x80000728]:orn t6, t5, t4<br> [0x8000072c]:sw t6, 244(t2)<br>    |
|  89|[0x80002370]<br>0xFFFFFF7F|- rs2_val == 128<br>                                                                                                                                                                                                              |[0x80000738]:orn t6, t5, t4<br> [0x8000073c]:sw t6, 248(t2)<br>    |
|  90|[0x80002374]<br>0xFFFFFFBF|- rs2_val == 64<br>                                                                                                                                                                                                               |[0x80000748]:orn t6, t5, t4<br> [0x8000074c]:sw t6, 252(t2)<br>    |
|  91|[0x80002378]<br>0xFFFFFFDF|- rs2_val == 32<br>                                                                                                                                                                                                               |[0x80000758]:orn t6, t5, t4<br> [0x8000075c]:sw t6, 256(t2)<br>    |
|  92|[0x8000237c]<br>0xFFFFFFEF|- rs2_val == 16<br>                                                                                                                                                                                                               |[0x80000768]:orn t6, t5, t4<br> [0x8000076c]:sw t6, 260(t2)<br>    |
|  93|[0x80002380]<br>0xFFFEFFFF|- rs1_val == 1<br>                                                                                                                                                                                                                |[0x80000778]:orn t6, t5, t4<br> [0x8000077c]:sw t6, 264(t2)<br>    |
|  94|[0x80002384]<br>0xBBFFFFF6|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                                                                                                                                      |[0x80000790]:orn t6, t5, t4<br> [0x80000794]:sw t6, 268(t2)<br>    |
|  95|[0x80002388]<br>0xE0FED7DF|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                                                                                                                                      |[0x800007a8]:orn t6, t5, t4<br> [0x800007ac]:sw t6, 272(t2)<br>    |
|  96|[0x8000238c]<br>0xDDD5FB96|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                                                                                                                                      |[0x800007c0]:orn t6, t5, t4<br> [0x800007c4]:sw t6, 276(t2)<br>    |
|  97|[0x80002390]<br>0xDF7BDFFF|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                                                                                                                                      |[0x800007d8]:orn t6, t5, t4<br> [0x800007dc]:sw t6, 280(t2)<br>    |
|  98|[0x80002394]<br>0x49A7FFD2|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                                                                                                                                      |[0x800007f0]:orn t6, t5, t4<br> [0x800007f4]:sw t6, 284(t2)<br>    |
|  99|[0x80002398]<br>0xFBF6FEE7|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                                                                                                                                      |[0x80000808]:orn t6, t5, t4<br> [0x8000080c]:sw t6, 288(t2)<br>    |
| 100|[0x8000239c]<br>0xEFF9D77F|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                                                                                                                                      |[0x80000820]:orn t6, t5, t4<br> [0x80000824]:sw t6, 292(t2)<br>    |
| 101|[0x800023a0]<br>0x9737E9BF|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                                                                                                                                      |[0x80000838]:orn t6, t5, t4<br> [0x8000083c]:sw t6, 296(t2)<br>    |
| 102|[0x800023a4]<br>0xF7F331DE|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                                                                                                                                      |[0x80000850]:orn t6, t5, t4<br> [0x80000854]:sw t6, 300(t2)<br>    |
| 103|[0x800023a8]<br>0xDF573DFE|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                                                                                                                                      |[0x80000868]:orn t6, t5, t4<br> [0x8000086c]:sw t6, 304(t2)<br>    |
| 104|[0x800023ac]<br>0xDEEFBE25|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                                                                                                                                      |[0x80000880]:orn t6, t5, t4<br> [0x80000884]:sw t6, 308(t2)<br>    |
| 105|[0x800023b0]<br>0x9FFFF3CE|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                                                                                                                                      |[0x80000898]:orn t6, t5, t4<br> [0x8000089c]:sw t6, 312(t2)<br>    |
| 106|[0x800023b4]<br>0xAEBEFC2F|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                                                                                                                                      |[0x800008b0]:orn t6, t5, t4<br> [0x800008b4]:sw t6, 316(t2)<br>    |
| 107|[0x800023b8]<br>0x3FFDFFFF|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                                                                                                                                      |[0x800008c8]:orn t6, t5, t4<br> [0x800008cc]:sw t6, 320(t2)<br>    |
| 108|[0x800023bc]<br>0x5FFD6AAB|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                                                                                                                                      |[0x800008e0]:orn t6, t5, t4<br> [0x800008e4]:sw t6, 324(t2)<br>    |
| 109|[0x800023c0]<br>0xD7D9ED7E|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                                                                                                                                      |[0x800008f8]:orn t6, t5, t4<br> [0x800008fc]:sw t6, 328(t2)<br>    |
| 110|[0x800023c4]<br>0x7DBCDFB7|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                                                                                                                                      |[0x80000910]:orn t6, t5, t4<br> [0x80000914]:sw t6, 332(t2)<br>    |
| 111|[0x800023c8]<br>0xFFDFE5CF|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                                                                                                                                      |[0x80000928]:orn t6, t5, t4<br> [0x8000092c]:sw t6, 336(t2)<br>    |
| 112|[0x800023cc]<br>0xF49ED7FE|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                                                                                                                                      |[0x80000940]:orn t6, t5, t4<br> [0x80000944]:sw t6, 340(t2)<br>    |
| 113|[0x800023d0]<br>0x3FEFFD9F|- rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br>                                                                                                                                                                      |[0x80000958]:orn t6, t5, t4<br> [0x8000095c]:sw t6, 344(t2)<br>    |
| 114|[0x800023d4]<br>0x55555555|- rs2_val == 2863311530<br>                                                                                                                                                                                                       |[0x8000096c]:orn t6, t5, t4<br> [0x80000970]:sw t6, 348(t2)<br>    |
| 115|[0x800023d8]<br>0xAAABAAAA|- rs2_val == 1431655765<br>                                                                                                                                                                                                       |[0x80000980]:orn t6, t5, t4<br> [0x80000984]:sw t6, 352(t2)<br>    |
| 116|[0x800023dc]<br>0xFFFEFFFF|- rs1_val == 2863311530<br>                                                                                                                                                                                                       |[0x80000994]:orn t6, t5, t4<br> [0x80000998]:sw t6, 356(t2)<br>    |
| 117|[0x800023e0]<br>0xFFFFFFFF|- rs1_val == 1431655765<br>                                                                                                                                                                                                       |[0x800009a8]:orn t6, t5, t4<br> [0x800009ac]:sw t6, 360(t2)<br>    |
| 118|[0x800023e4]<br>0xFFFFFFFF|- rs1_val == (2**(xlen)-1)<br>                                                                                                                                                                                                    |[0x800009b8]:orn t6, t5, t4<br> [0x800009bc]:sw t6, 364(t2)<br>    |
| 119|[0x800023f0]<br>0x00010000|- rs2_val == (2**(xlen)-1)<br>                                                                                                                                                                                                    |[0x800009e8]:orn t6, t5, t4<br> [0x800009ec]:sw t6, 376(t2)<br>    |
| 120|[0x800023f8]<br>0xFFFFFFF7|- rs2_val == 8<br>                                                                                                                                                                                                                |[0x80000a08]:orn t6, t5, t4<br> [0x80000a0c]:sw t6, 384(t2)<br>    |
| 121|[0x800023fc]<br>0xFFFFFFFB|- rs2_val == 4<br>                                                                                                                                                                                                                |[0x80000a18]:orn t6, t5, t4<br> [0x80000a1c]:sw t6, 388(t2)<br>    |
| 122|[0x80002400]<br>0xFFFFFFFD|- rs2_val == 2<br>                                                                                                                                                                                                                |[0x80000a28]:orn t6, t5, t4<br> [0x80000a2c]:sw t6, 392(t2)<br>    |
| 123|[0x80002404]<br>0xFFFEFFFF|- rs1_val == 2147483648<br>                                                                                                                                                                                                       |[0x80000a38]:orn t6, t5, t4<br> [0x80000a3c]:sw t6, 396(t2)<br>    |
| 124|[0x80002408]<br>0xFFFEFFFF|- rs1_val == 1073741824<br>                                                                                                                                                                                                       |[0x80000a48]:orn t6, t5, t4<br> [0x80000a4c]:sw t6, 400(t2)<br>    |
| 125|[0x8000240c]<br>0xFFFEFFFF|- rs1_val == 536870912<br>                                                                                                                                                                                                        |[0x80000a58]:orn t6, t5, t4<br> [0x80000a5c]:sw t6, 404(t2)<br>    |
| 126|[0x80002410]<br>0xFFFEFFFF|- rs1_val == 268435456<br>                                                                                                                                                                                                        |[0x80000a68]:orn t6, t5, t4<br> [0x80000a6c]:sw t6, 408(t2)<br>    |
| 127|[0x80002414]<br>0xFFFEFFFF|- rs1_val == 134217728<br>                                                                                                                                                                                                        |[0x80000a78]:orn t6, t5, t4<br> [0x80000a7c]:sw t6, 412(t2)<br>    |
| 128|[0x80002418]<br>0xFFFEFFFF|- rs1_val == 67108864<br>                                                                                                                                                                                                         |[0x80000a88]:orn t6, t5, t4<br> [0x80000a8c]:sw t6, 416(t2)<br>    |
| 129|[0x8000241c]<br>0xFFFEFFFF|- rs1_val == 33554432<br>                                                                                                                                                                                                         |[0x80000a98]:orn t6, t5, t4<br> [0x80000a9c]:sw t6, 420(t2)<br>    |
| 130|[0x80002420]<br>0xFFFEFFFF|- rs1_val == 16777216<br>                                                                                                                                                                                                         |[0x80000aa8]:orn t6, t5, t4<br> [0x80000aac]:sw t6, 424(t2)<br>    |
| 131|[0x80002424]<br>0xFFFEFFFF|- rs1_val == 8388608<br>                                                                                                                                                                                                          |[0x80000ab8]:orn t6, t5, t4<br> [0x80000abc]:sw t6, 428(t2)<br>    |
| 132|[0x80002428]<br>0xFFFEFFFF|- rs1_val == 4194304<br>                                                                                                                                                                                                          |[0x80000ac8]:orn t6, t5, t4<br> [0x80000acc]:sw t6, 432(t2)<br>    |
| 133|[0x8000242c]<br>0xFFFEFFFF|- rs1_val == 2097152<br>                                                                                                                                                                                                          |[0x80000ad8]:orn t6, t5, t4<br> [0x80000adc]:sw t6, 436(t2)<br>    |
| 134|[0x80002430]<br>0xFFFEFFFF|- rs1_val == 1048576<br>                                                                                                                                                                                                          |[0x80000ae8]:orn t6, t5, t4<br> [0x80000aec]:sw t6, 440(t2)<br>    |
| 135|[0x80002434]<br>0xFFFEFFFF|- rs1_val == 524288<br>                                                                                                                                                                                                           |[0x80000af8]:orn t6, t5, t4<br> [0x80000afc]:sw t6, 444(t2)<br>    |
| 136|[0x80002438]<br>0xFFFEFFFF|- rs1_val == 262144<br>                                                                                                                                                                                                           |[0x80000b08]:orn t6, t5, t4<br> [0x80000b0c]:sw t6, 448(t2)<br>    |
| 137|[0x8000243c]<br>0xFFFEFFFF|- rs1_val == 131072<br>                                                                                                                                                                                                           |[0x80000b18]:orn t6, t5, t4<br> [0x80000b1c]:sw t6, 452(t2)<br>    |
| 138|[0x80002440]<br>0xFFFEFFFF|- rs1_val == 32768<br>                                                                                                                                                                                                            |[0x80000b28]:orn t6, t5, t4<br> [0x80000b2c]:sw t6, 456(t2)<br>    |
| 139|[0x80002444]<br>0xFFFEFFFF|- rs1_val == 16384<br>                                                                                                                                                                                                            |[0x80000b38]:orn t6, t5, t4<br> [0x80000b3c]:sw t6, 460(t2)<br>    |
| 140|[0x80002448]<br>0xFFFEFFFF|- rs1_val == 8192<br>                                                                                                                                                                                                             |[0x80000b48]:orn t6, t5, t4<br> [0x80000b4c]:sw t6, 464(t2)<br>    |
| 141|[0x8000244c]<br>0xFFFEFFFF|- rs1_val == 4096<br>                                                                                                                                                                                                             |[0x80000b58]:orn t6, t5, t4<br> [0x80000b5c]:sw t6, 468(t2)<br>    |
| 142|[0x80002450]<br>0xFFFEFFFF|- rs1_val == 2048<br>                                                                                                                                                                                                             |[0x80000b6c]:orn t6, t5, t4<br> [0x80000b70]:sw t6, 472(t2)<br>    |
| 143|[0x80002454]<br>0xFFFEFFFF|- rs1_val == 1024<br>                                                                                                                                                                                                             |[0x80000b7c]:orn t6, t5, t4<br> [0x80000b80]:sw t6, 476(t2)<br>    |
| 144|[0x80002458]<br>0xFFFEFFFF|- rs1_val == 512<br>                                                                                                                                                                                                              |[0x80000b8c]:orn t6, t5, t4<br> [0x80000b90]:sw t6, 480(t2)<br>    |
| 145|[0x8000245c]<br>0xFFFEFFFF|- rs1_val == 256<br>                                                                                                                                                                                                              |[0x80000b9c]:orn t6, t5, t4<br> [0x80000ba0]:sw t6, 484(t2)<br>    |
| 146|[0x80002460]<br>0xFFFEFFFF|- rs1_val == 128<br>                                                                                                                                                                                                              |[0x80000bac]:orn t6, t5, t4<br> [0x80000bb0]:sw t6, 488(t2)<br>    |
| 147|[0x80002464]<br>0xFFFEFFFF|- rs1_val == 64<br>                                                                                                                                                                                                               |[0x80000bbc]:orn t6, t5, t4<br> [0x80000bc0]:sw t6, 492(t2)<br>    |
| 148|[0x80002468]<br>0xFFFEFFFF|- rs1_val == 32<br>                                                                                                                                                                                                               |[0x80000bcc]:orn t6, t5, t4<br> [0x80000bd0]:sw t6, 496(t2)<br>    |
| 149|[0x8000246c]<br>0xFFFEFFFF|- rs1_val == 16<br>                                                                                                                                                                                                               |[0x80000bdc]:orn t6, t5, t4<br> [0x80000be0]:sw t6, 500(t2)<br>    |
| 150|[0x80002470]<br>0xFFFEFFFF|- rs1_val == 8<br>                                                                                                                                                                                                                |[0x80000bec]:orn t6, t5, t4<br> [0x80000bf0]:sw t6, 504(t2)<br>    |
| 151|[0x80002474]<br>0xFFFEFFFF|- rs1_val == 4<br>                                                                                                                                                                                                                |[0x80000bfc]:orn t6, t5, t4<br> [0x80000c00]:sw t6, 508(t2)<br>    |
| 152|[0x80002478]<br>0xFFFEFFFF|- rs1_val == 2<br>                                                                                                                                                                                                                |[0x80000c0c]:orn t6, t5, t4<br> [0x80000c10]:sw t6, 512(t2)<br>    |
| 153|[0x8000247c]<br>0xFFFFFFFE|- rs2_val == 1<br>                                                                                                                                                                                                                |[0x80000c1c]:orn t6, t5, t4<br> [0x80000c20]:sw t6, 516(t2)<br>    |
| 154|[0x80002480]<br>0x10010000|- rs2_val == 4026531839<br>                                                                                                                                                                                                       |[0x80000c30]:orn t6, t5, t4<br> [0x80000c34]:sw t6, 520(t2)<br>    |
| 155|[0x80002488]<br>0x00010001|- rs2_val == 4294967294<br>                                                                                                                                                                                                       |[0x80000c50]:orn t6, t5, t4<br> [0x80000c54]:sw t6, 528(t2)<br>    |
