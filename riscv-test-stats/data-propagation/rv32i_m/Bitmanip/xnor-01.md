
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000cf0')]      |
| SIG_REGION                | [('0x80002210', '0x80002450', '144 words')]      |
| COV_LABELS                | xnor      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/32/riscof_dir/xnor-01.S/ref.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 142      |
| STAT1                     | 137      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000820]:xnor t6, t5, t4
      [0x80000824]:sw t6, 220(t2)
 -- Signature Address: 0x80002354 Data: 0xFFFF4AFA
 -- Redundant Coverpoints hit by the op
      - opcode : xnor
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000838]:xnor t6, t5, t4
      [0x8000083c]:sw t6, 224(t2)
 -- Signature Address: 0x80002358 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : xnor
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000860]:xnor t6, t5, t4
      [0x80000864]:sw t6, 232(t2)
 -- Signature Address: 0x80002360 Data: 0xFFFF4AFA
 -- Redundant Coverpoints hit by the op
      - opcode : xnor
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cb8]:xnor t6, t5, t4
      [0x80000cbc]:sw t6, 452(t2)
 -- Signature Address: 0x8000243c Data: 0x0000B501
 -- Redundant Coverpoints hit by the op
      - opcode : xnor
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs2_val == 4294967291
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ce4]:xnor t6, t5, t4
      [0x80000ce8]:sw t6, 460(t2)
 -- Signature Address: 0x80002444 Data: 0x8000B505
 -- Redundant Coverpoints hit by the op
      - opcode : xnor
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val == 2147483647
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

|s.no|        signature         |                                                                                     coverpoints                                                                                     |                                code                                |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFF|- opcode : xnor<br> - rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br> |[0x80000110]:xnor t6, t6, t6<br> [0x80000114]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0x8000B505|- rs1 : x29<br> - rs2 : x28<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 2147483647<br>    |[0x80000128]:xnor t5, t4, t3<br> [0x8000012c]:sw t5, 4(ra)<br>      |
|   3|[0x80002218]<br>0x4000B505|- rs1 : x28<br> - rs2 : x30<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_val == 3221225471<br>                                                                                    |[0x80000140]:xnor t3, t3, t5<br> [0x80000144]:sw t3, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x2000B505|- rs1 : x30<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs2_val == 3758096383<br>                                                                                    |[0x80000158]:xnor t4, t5, t4<br> [0x8000015c]:sw t4, 12(ra)<br>     |
|   5|[0x80002220]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x26<br> - rd : x27<br> - rs1 == rs2 != rd<br>                                                                                                                |[0x80000170]:xnor s11, s10, s10<br> [0x80000174]:sw s11, 16(ra)<br> |
|   6|[0x80002224]<br>0x0800B505|- rs1 : x27<br> - rs2 : x25<br> - rd : x26<br> - rs2_val == 4160749567<br>                                                                                                           |[0x80000188]:xnor s10, s11, s9<br> [0x8000018c]:sw s10, 20(ra)<br>  |
|   7|[0x80002228]<br>0x0400B505|- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br> - rs2_val == 4227858431<br>                                                                                                           |[0x800001a0]:xnor s9, s8, s11<br> [0x800001a4]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0x0200B505|- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br> - rs2_val == 4261412863<br>                                                                                                           |[0x800001b8]:xnor s8, s9, s7<br> [0x800001bc]:sw s8, 28(ra)<br>     |
|   9|[0x80002230]<br>0x0100B505|- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 4278190079<br>                                                                                                           |[0x800001d0]:xnor s7, s6, s8<br> [0x800001d4]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0x0080B505|- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 4286578687<br>                                                                                                           |[0x800001e8]:xnor s6, s7, s5<br> [0x800001ec]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0x0040B505|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 4290772991<br>                                                                                                           |[0x80000200]:xnor s5, s4, s6<br> [0x80000204]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0x0020B505|- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == 4292870143<br>                                                                                                           |[0x80000218]:xnor s4, s5, s3<br> [0x8000021c]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0x0010B505|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 4293918719<br>                                                                                                           |[0x80000230]:xnor s3, s2, s4<br> [0x80000234]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0x0008B505|- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br> - rs2_val == 4294443007<br>                                                                                                           |[0x80000248]:xnor s2, s3, a7<br> [0x8000024c]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0x0004B505|- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 4294705151<br>                                                                                                           |[0x80000260]:xnor a7, a6, s2<br> [0x80000264]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x0002B505|- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 4294836223<br>                                                                                                           |[0x80000278]:xnor a6, a7, a5<br> [0x8000027c]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0x0001B505|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 4294901759<br>                                                                                                           |[0x80000290]:xnor a5, a4, a6<br> [0x80000294]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0x00003505|- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br> - rs2_val == 4294934527<br>                                                                                                           |[0x800002a8]:xnor a4, a5, a3<br> [0x800002ac]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0x0000F505|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 4294950911<br>                                                                                                           |[0x800002c0]:xnor a3, a2, a4<br> [0x800002c4]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0x00009505|- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == 4294959103<br>                                                                                                           |[0x800002d8]:xnor a2, a3, a1<br> [0x800002dc]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0x0000A505|- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 4294963199<br>                                                                                                           |[0x800002f0]:xnor a1, a0, a2<br> [0x800002f4]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0x0000BD05|- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br> - rs2_val == 4294965247<br>                                                                                                            |[0x80000308]:xnor a0, a1, s1<br> [0x8000030c]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0x0000B105|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 4294966271<br>                                                                                                             |[0x8000031c]:xnor s1, fp, a0<br> [0x80000320]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0x0000B705|- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 4294966783<br>                                                                                                              |[0x80000330]:xnor fp, s1, t2<br> [0x80000334]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0x0000B405|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 4294967039<br>                                                                                                              |[0x80000344]:xnor t2, t1, fp<br> [0x80000348]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0x0000B585|- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == 4294967167<br>                                                                                                              |[0x80000358]:xnor t1, t2, t0<br> [0x8000035c]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0x0000B545|- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 4294967231<br>                                                                                                              |[0x80000374]:xnor t0, tp, t1<br> [0x80000378]:sw t0, 0(t2)<br>      |
|  28|[0x8000227c]<br>0x0000B525|- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br> - rs2_val == 4294967263<br>                                                                                                              |[0x80000388]:xnor tp, t0, gp<br> [0x8000038c]:sw tp, 4(t2)<br>      |
|  29|[0x80002280]<br>0x0000B515|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 4294967279<br>                                                                                                              |[0x8000039c]:xnor gp, sp, tp<br> [0x800003a0]:sw gp, 8(t2)<br>      |
|  30|[0x80002284]<br>0x0000B50D|- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br> - rs2_val == 4294967287<br>                                                                                                              |[0x800003b0]:xnor sp, gp, ra<br> [0x800003b4]:sw sp, 12(t2)<br>     |
|  31|[0x80002288]<br>0x00000004|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 4294967291<br> - rs1_val == 0<br>                                                                                           |[0x800003c0]:xnor ra, zero, sp<br> [0x800003c4]:sw ra, 16(t2)<br>   |
|  32|[0x8000228c]<br>0x0000B507|- rs1 : x1<br> - rs2_val == 4294967293<br>                                                                                                                                           |[0x800003d4]:xnor t6, ra, t5<br> [0x800003d8]:sw t6, 20(t2)<br>     |
|  33|[0x80002290]<br>0xFFFF4AFA|- rs2 : x0<br> - rs2_val == 0<br>                                                                                                                                                    |[0x800003e8]:xnor t6, t5, zero<br> [0x800003ec]:sw t6, 24(t2)<br>   |
|  34|[0x80002294]<br>0x00000000|- rd : x0<br> - rs1_val == 2147483647<br>                                                                                                                                            |[0x80000400]:xnor zero, t6, t5<br> [0x80000404]:sw zero, 28(t2)<br> |
|  35|[0x80002298]<br>0x4000B505|- rs1_val == 3221225471<br>                                                                                                                                                          |[0x80000418]:xnor t6, t5, t4<br> [0x8000041c]:sw t6, 32(t2)<br>     |
|  36|[0x8000229c]<br>0x2000B505|- rs1_val == 3758096383<br>                                                                                                                                                          |[0x80000430]:xnor t6, t5, t4<br> [0x80000434]:sw t6, 36(t2)<br>     |
|  37|[0x800022a0]<br>0x1000B505|- rs1_val == 4026531839<br>                                                                                                                                                          |[0x80000448]:xnor t6, t5, t4<br> [0x8000044c]:sw t6, 40(t2)<br>     |
|  38|[0x800022a4]<br>0x0800B505|- rs1_val == 4160749567<br>                                                                                                                                                          |[0x80000460]:xnor t6, t5, t4<br> [0x80000464]:sw t6, 44(t2)<br>     |
|  39|[0x800022a8]<br>0x0400B505|- rs1_val == 4227858431<br>                                                                                                                                                          |[0x80000478]:xnor t6, t5, t4<br> [0x8000047c]:sw t6, 48(t2)<br>     |
|  40|[0x800022ac]<br>0x0200B505|- rs1_val == 4261412863<br>                                                                                                                                                          |[0x80000490]:xnor t6, t5, t4<br> [0x80000494]:sw t6, 52(t2)<br>     |
|  41|[0x800022b0]<br>0x0100B505|- rs1_val == 4278190079<br>                                                                                                                                                          |[0x800004a8]:xnor t6, t5, t4<br> [0x800004ac]:sw t6, 56(t2)<br>     |
|  42|[0x800022b4]<br>0x0080B505|- rs1_val == 4286578687<br>                                                                                                                                                          |[0x800004c0]:xnor t6, t5, t4<br> [0x800004c4]:sw t6, 60(t2)<br>     |
|  43|[0x800022b8]<br>0x0040B505|- rs1_val == 4290772991<br>                                                                                                                                                          |[0x800004d8]:xnor t6, t5, t4<br> [0x800004dc]:sw t6, 64(t2)<br>     |
|  44|[0x800022bc]<br>0x0020B505|- rs1_val == 4292870143<br>                                                                                                                                                          |[0x800004f0]:xnor t6, t5, t4<br> [0x800004f4]:sw t6, 68(t2)<br>     |
|  45|[0x800022c0]<br>0x0010B505|- rs1_val == 4293918719<br>                                                                                                                                                          |[0x80000508]:xnor t6, t5, t4<br> [0x8000050c]:sw t6, 72(t2)<br>     |
|  46|[0x800022c4]<br>0x0008B505|- rs1_val == 4294443007<br>                                                                                                                                                          |[0x80000520]:xnor t6, t5, t4<br> [0x80000524]:sw t6, 76(t2)<br>     |
|  47|[0x800022c8]<br>0x0004B505|- rs1_val == 4294705151<br>                                                                                                                                                          |[0x80000538]:xnor t6, t5, t4<br> [0x8000053c]:sw t6, 80(t2)<br>     |
|  48|[0x800022cc]<br>0x0002B505|- rs1_val == 4294836223<br>                                                                                                                                                          |[0x80000550]:xnor t6, t5, t4<br> [0x80000554]:sw t6, 84(t2)<br>     |
|  49|[0x800022d0]<br>0x0001B505|- rs1_val == 4294901759<br>                                                                                                                                                          |[0x80000568]:xnor t6, t5, t4<br> [0x8000056c]:sw t6, 88(t2)<br>     |
|  50|[0x800022d4]<br>0x00003505|- rs1_val == 4294934527<br>                                                                                                                                                          |[0x80000580]:xnor t6, t5, t4<br> [0x80000584]:sw t6, 92(t2)<br>     |
|  51|[0x800022d8]<br>0x0000F505|- rs1_val == 4294950911<br>                                                                                                                                                          |[0x80000598]:xnor t6, t5, t4<br> [0x8000059c]:sw t6, 96(t2)<br>     |
|  52|[0x800022dc]<br>0x00009505|- rs1_val == 4294959103<br>                                                                                                                                                          |[0x800005b0]:xnor t6, t5, t4<br> [0x800005b4]:sw t6, 100(t2)<br>    |
|  53|[0x800022e0]<br>0x0000A505|- rs1_val == 4294963199<br>                                                                                                                                                          |[0x800005c8]:xnor t6, t5, t4<br> [0x800005cc]:sw t6, 104(t2)<br>    |
|  54|[0x800022e4]<br>0x0000BD05|- rs1_val == 4294965247<br>                                                                                                                                                          |[0x800005e0]:xnor t6, t5, t4<br> [0x800005e4]:sw t6, 108(t2)<br>    |
|  55|[0x800022e8]<br>0x0000B105|- rs1_val == 4294966271<br>                                                                                                                                                          |[0x800005f4]:xnor t6, t5, t4<br> [0x800005f8]:sw t6, 112(t2)<br>    |
|  56|[0x800022ec]<br>0x0000B705|- rs1_val == 4294966783<br>                                                                                                                                                          |[0x80000608]:xnor t6, t5, t4<br> [0x8000060c]:sw t6, 116(t2)<br>    |
|  57|[0x800022f0]<br>0x0000B405|- rs1_val == 4294967039<br>                                                                                                                                                          |[0x8000061c]:xnor t6, t5, t4<br> [0x80000620]:sw t6, 120(t2)<br>    |
|  58|[0x800022f4]<br>0x0000B585|- rs1_val == 4294967167<br>                                                                                                                                                          |[0x80000630]:xnor t6, t5, t4<br> [0x80000634]:sw t6, 124(t2)<br>    |
|  59|[0x800022f8]<br>0x0000B545|- rs1_val == 4294967231<br>                                                                                                                                                          |[0x80000644]:xnor t6, t5, t4<br> [0x80000648]:sw t6, 128(t2)<br>    |
|  60|[0x800022fc]<br>0x0000B525|- rs1_val == 4294967263<br>                                                                                                                                                          |[0x80000658]:xnor t6, t5, t4<br> [0x8000065c]:sw t6, 132(t2)<br>    |
|  61|[0x80002300]<br>0x0000B515|- rs1_val == 4294967279<br>                                                                                                                                                          |[0x8000066c]:xnor t6, t5, t4<br> [0x80000670]:sw t6, 136(t2)<br>    |
|  62|[0x80002304]<br>0x0000B50D|- rs1_val == 4294967287<br>                                                                                                                                                          |[0x80000680]:xnor t6, t5, t4<br> [0x80000684]:sw t6, 140(t2)<br>    |
|  63|[0x80002308]<br>0x0000B501|- rs1_val == 4294967291<br>                                                                                                                                                          |[0x80000694]:xnor t6, t5, t4<br> [0x80000698]:sw t6, 144(t2)<br>    |
|  64|[0x8000230c]<br>0x0000B507|- rs1_val == 4294967293<br>                                                                                                                                                          |[0x800006a8]:xnor t6, t5, t4<br> [0x800006ac]:sw t6, 148(t2)<br>    |
|  65|[0x80002310]<br>0x0000B504|- rs1_val == 4294967294<br>                                                                                                                                                          |[0x800006bc]:xnor t6, t5, t4<br> [0x800006c0]:sw t6, 152(t2)<br>    |
|  66|[0x80002314]<br>0x7FFF4AFA|- rs2_val == 2147483648<br>                                                                                                                                                          |[0x800006d0]:xnor t6, t5, t4<br> [0x800006d4]:sw t6, 156(t2)<br>    |
|  67|[0x80002318]<br>0xBFFF4AFA|- rs2_val == 1073741824<br>                                                                                                                                                          |[0x800006e4]:xnor t6, t5, t4<br> [0x800006e8]:sw t6, 160(t2)<br>    |
|  68|[0x8000231c]<br>0xDFFF4AFA|- rs2_val == 536870912<br>                                                                                                                                                           |[0x800006f8]:xnor t6, t5, t4<br> [0x800006fc]:sw t6, 164(t2)<br>    |
|  69|[0x80002320]<br>0xEFFF4AFA|- rs2_val == 268435456<br>                                                                                                                                                           |[0x8000070c]:xnor t6, t5, t4<br> [0x80000710]:sw t6, 168(t2)<br>    |
|  70|[0x80002324]<br>0xF7FF4AFA|- rs2_val == 134217728<br>                                                                                                                                                           |[0x80000720]:xnor t6, t5, t4<br> [0x80000724]:sw t6, 172(t2)<br>    |
|  71|[0x80002328]<br>0xFBFF4AFA|- rs2_val == 67108864<br>                                                                                                                                                            |[0x80000734]:xnor t6, t5, t4<br> [0x80000738]:sw t6, 176(t2)<br>    |
|  72|[0x8000232c]<br>0xFDFF4AFA|- rs2_val == 33554432<br>                                                                                                                                                            |[0x80000748]:xnor t6, t5, t4<br> [0x8000074c]:sw t6, 180(t2)<br>    |
|  73|[0x80002330]<br>0xFEFF4AFA|- rs2_val == 16777216<br>                                                                                                                                                            |[0x8000075c]:xnor t6, t5, t4<br> [0x80000760]:sw t6, 184(t2)<br>    |
|  74|[0x80002334]<br>0xFF7F4AFA|- rs2_val == 8388608<br>                                                                                                                                                             |[0x80000770]:xnor t6, t5, t4<br> [0x80000774]:sw t6, 188(t2)<br>    |
|  75|[0x80002338]<br>0xFFBF4AFA|- rs2_val == 4194304<br>                                                                                                                                                             |[0x80000784]:xnor t6, t5, t4<br> [0x80000788]:sw t6, 192(t2)<br>    |
|  76|[0x8000233c]<br>0xFFFF4AFB|- rs1_val == 1<br>                                                                                                                                                                   |[0x80000798]:xnor t6, t5, t4<br> [0x8000079c]:sw t6, 196(t2)<br>    |
|  77|[0x80002340]<br>0x5555E050|- rs2_val == 2863311530<br>                                                                                                                                                          |[0x800007b0]:xnor t6, t5, t4<br> [0x800007b4]:sw t6, 200(t2)<br>    |
|  78|[0x80002344]<br>0xAAAA1FAF|- rs2_val == 1431655765<br>                                                                                                                                                          |[0x800007c8]:xnor t6, t5, t4<br> [0x800007cc]:sw t6, 204(t2)<br>    |
|  79|[0x80002348]<br>0x5555E050|- rs1_val == 2863311530<br>                                                                                                                                                          |[0x800007e0]:xnor t6, t5, t4<br> [0x800007e4]:sw t6, 208(t2)<br>    |
|  80|[0x8000234c]<br>0xAAAA1FAF|- rs1_val == 1431655765<br>                                                                                                                                                          |[0x800007f8]:xnor t6, t5, t4<br> [0x800007fc]:sw t6, 212(t2)<br>    |
|  81|[0x80002350]<br>0x0000B505|- rs1_val == (2**(xlen)-1)<br>                                                                                                                                                       |[0x8000080c]:xnor t6, t5, t4<br> [0x80000810]:sw t6, 216(t2)<br>    |
|  82|[0x8000235c]<br>0x0000B505|- rs2_val == (2**(xlen)-1)<br>                                                                                                                                                       |[0x8000084c]:xnor t6, t5, t4<br> [0x80000850]:sw t6, 228(t2)<br>    |
|  83|[0x80002364]<br>0xFFDF4AFA|- rs2_val == 2097152<br>                                                                                                                                                             |[0x80000874]:xnor t6, t5, t4<br> [0x80000878]:sw t6, 236(t2)<br>    |
|  84|[0x80002368]<br>0xFFEF4AFA|- rs2_val == 1048576<br>                                                                                                                                                             |[0x80000888]:xnor t6, t5, t4<br> [0x8000088c]:sw t6, 240(t2)<br>    |
|  85|[0x8000236c]<br>0xFFF74AFA|- rs2_val == 524288<br>                                                                                                                                                              |[0x8000089c]:xnor t6, t5, t4<br> [0x800008a0]:sw t6, 244(t2)<br>    |
|  86|[0x80002370]<br>0xFFFB4AFA|- rs2_val == 262144<br>                                                                                                                                                              |[0x800008b0]:xnor t6, t5, t4<br> [0x800008b4]:sw t6, 248(t2)<br>    |
|  87|[0x80002374]<br>0xFFFD4AFA|- rs2_val == 131072<br>                                                                                                                                                              |[0x800008c4]:xnor t6, t5, t4<br> [0x800008c8]:sw t6, 252(t2)<br>    |
|  88|[0x80002378]<br>0xFFFE4AFA|- rs2_val == 65536<br>                                                                                                                                                               |[0x800008d8]:xnor t6, t5, t4<br> [0x800008dc]:sw t6, 256(t2)<br>    |
|  89|[0x8000237c]<br>0xFFFFCAFA|- rs2_val == 32768<br>                                                                                                                                                               |[0x800008ec]:xnor t6, t5, t4<br> [0x800008f0]:sw t6, 260(t2)<br>    |
|  90|[0x80002380]<br>0xFFFF0AFA|- rs2_val == 16384<br>                                                                                                                                                               |[0x80000900]:xnor t6, t5, t4<br> [0x80000904]:sw t6, 264(t2)<br>    |
|  91|[0x80002384]<br>0xFFFF6AFA|- rs2_val == 8192<br>                                                                                                                                                                |[0x80000914]:xnor t6, t5, t4<br> [0x80000918]:sw t6, 268(t2)<br>    |
|  92|[0x80002388]<br>0xFFFF5AFA|- rs2_val == 4096<br>                                                                                                                                                                |[0x80000928]:xnor t6, t5, t4<br> [0x8000092c]:sw t6, 272(t2)<br>    |
|  93|[0x8000238c]<br>0xFFFF42FA|- rs2_val == 2048<br>                                                                                                                                                                |[0x80000940]:xnor t6, t5, t4<br> [0x80000944]:sw t6, 276(t2)<br>    |
|  94|[0x80002390]<br>0xFFFF4EFA|- rs2_val == 1024<br>                                                                                                                                                                |[0x80000954]:xnor t6, t5, t4<br> [0x80000958]:sw t6, 280(t2)<br>    |
|  95|[0x80002394]<br>0xFFFF48FA|- rs2_val == 512<br>                                                                                                                                                                 |[0x80000968]:xnor t6, t5, t4<br> [0x8000096c]:sw t6, 284(t2)<br>    |
|  96|[0x80002398]<br>0xFFFF4BFA|- rs2_val == 256<br>                                                                                                                                                                 |[0x8000097c]:xnor t6, t5, t4<br> [0x80000980]:sw t6, 288(t2)<br>    |
|  97|[0x8000239c]<br>0xFFFF4A7A|- rs2_val == 128<br>                                                                                                                                                                 |[0x80000990]:xnor t6, t5, t4<br> [0x80000994]:sw t6, 292(t2)<br>    |
|  98|[0x800023a0]<br>0xFFFF4ABA|- rs2_val == 64<br>                                                                                                                                                                  |[0x800009a4]:xnor t6, t5, t4<br> [0x800009a8]:sw t6, 296(t2)<br>    |
|  99|[0x800023a4]<br>0xFFFF4ADA|- rs2_val == 32<br>                                                                                                                                                                  |[0x800009b8]:xnor t6, t5, t4<br> [0x800009bc]:sw t6, 300(t2)<br>    |
| 100|[0x800023a8]<br>0xFFFF4AEA|- rs2_val == 16<br>                                                                                                                                                                  |[0x800009cc]:xnor t6, t5, t4<br> [0x800009d0]:sw t6, 304(t2)<br>    |
| 101|[0x800023ac]<br>0xFFFF4AF2|- rs2_val == 8<br>                                                                                                                                                                   |[0x800009e0]:xnor t6, t5, t4<br> [0x800009e4]:sw t6, 308(t2)<br>    |
| 102|[0x800023b0]<br>0xFFFF4AFE|- rs2_val == 4<br>                                                                                                                                                                   |[0x800009f4]:xnor t6, t5, t4<br> [0x800009f8]:sw t6, 312(t2)<br>    |
| 103|[0x800023b4]<br>0xFFFF4AF8|- rs2_val == 2<br>                                                                                                                                                                   |[0x80000a08]:xnor t6, t5, t4<br> [0x80000a0c]:sw t6, 316(t2)<br>    |
| 104|[0x800023b8]<br>0xFFFF4AFB|- rs2_val == 1<br>                                                                                                                                                                   |[0x80000a1c]:xnor t6, t5, t4<br> [0x80000a20]:sw t6, 320(t2)<br>    |
| 105|[0x800023bc]<br>0x7FFF4AFA|- rs1_val == 2147483648<br>                                                                                                                                                          |[0x80000a30]:xnor t6, t5, t4<br> [0x80000a34]:sw t6, 324(t2)<br>    |
| 106|[0x800023c0]<br>0xBFFF4AFA|- rs1_val == 1073741824<br>                                                                                                                                                          |[0x80000a44]:xnor t6, t5, t4<br> [0x80000a48]:sw t6, 328(t2)<br>    |
| 107|[0x800023c4]<br>0xDFFF4AFA|- rs1_val == 536870912<br>                                                                                                                                                           |[0x80000a58]:xnor t6, t5, t4<br> [0x80000a5c]:sw t6, 332(t2)<br>    |
| 108|[0x800023c8]<br>0xEFFF4AFA|- rs1_val == 268435456<br>                                                                                                                                                           |[0x80000a6c]:xnor t6, t5, t4<br> [0x80000a70]:sw t6, 336(t2)<br>    |
| 109|[0x800023cc]<br>0xF7FF4AFA|- rs1_val == 134217728<br>                                                                                                                                                           |[0x80000a80]:xnor t6, t5, t4<br> [0x80000a84]:sw t6, 340(t2)<br>    |
| 110|[0x800023d0]<br>0xFBFF4AFA|- rs1_val == 67108864<br>                                                                                                                                                            |[0x80000a94]:xnor t6, t5, t4<br> [0x80000a98]:sw t6, 344(t2)<br>    |
| 111|[0x800023d4]<br>0xFDFF4AFA|- rs1_val == 33554432<br>                                                                                                                                                            |[0x80000aa8]:xnor t6, t5, t4<br> [0x80000aac]:sw t6, 348(t2)<br>    |
| 112|[0x800023d8]<br>0xFEFF4AFA|- rs1_val == 16777216<br>                                                                                                                                                            |[0x80000abc]:xnor t6, t5, t4<br> [0x80000ac0]:sw t6, 352(t2)<br>    |
| 113|[0x800023dc]<br>0xFF7F4AFA|- rs1_val == 8388608<br>                                                                                                                                                             |[0x80000ad0]:xnor t6, t5, t4<br> [0x80000ad4]:sw t6, 356(t2)<br>    |
| 114|[0x800023e0]<br>0xFFBF4AFA|- rs1_val == 4194304<br>                                                                                                                                                             |[0x80000ae4]:xnor t6, t5, t4<br> [0x80000ae8]:sw t6, 360(t2)<br>    |
| 115|[0x800023e4]<br>0xFFDF4AFA|- rs1_val == 2097152<br>                                                                                                                                                             |[0x80000af8]:xnor t6, t5, t4<br> [0x80000afc]:sw t6, 364(t2)<br>    |
| 116|[0x800023e8]<br>0xFFEF4AFA|- rs1_val == 1048576<br>                                                                                                                                                             |[0x80000b0c]:xnor t6, t5, t4<br> [0x80000b10]:sw t6, 368(t2)<br>    |
| 117|[0x800023ec]<br>0xFFF74AFA|- rs1_val == 524288<br>                                                                                                                                                              |[0x80000b20]:xnor t6, t5, t4<br> [0x80000b24]:sw t6, 372(t2)<br>    |
| 118|[0x800023f0]<br>0xFFFB4AFA|- rs1_val == 262144<br>                                                                                                                                                              |[0x80000b34]:xnor t6, t5, t4<br> [0x80000b38]:sw t6, 376(t2)<br>    |
| 119|[0x800023f4]<br>0xFFFD4AFA|- rs1_val == 131072<br>                                                                                                                                                              |[0x80000b48]:xnor t6, t5, t4<br> [0x80000b4c]:sw t6, 380(t2)<br>    |
| 120|[0x800023f8]<br>0xFFFE4AFA|- rs1_val == 65536<br>                                                                                                                                                               |[0x80000b5c]:xnor t6, t5, t4<br> [0x80000b60]:sw t6, 384(t2)<br>    |
| 121|[0x800023fc]<br>0xFFFFCAFA|- rs1_val == 32768<br>                                                                                                                                                               |[0x80000b70]:xnor t6, t5, t4<br> [0x80000b74]:sw t6, 388(t2)<br>    |
| 122|[0x80002400]<br>0xFFFF0AFA|- rs1_val == 16384<br>                                                                                                                                                               |[0x80000b84]:xnor t6, t5, t4<br> [0x80000b88]:sw t6, 392(t2)<br>    |
| 123|[0x80002404]<br>0xFFFF6AFA|- rs1_val == 8192<br>                                                                                                                                                                |[0x80000b98]:xnor t6, t5, t4<br> [0x80000b9c]:sw t6, 396(t2)<br>    |
| 124|[0x80002408]<br>0xFFFF5AFA|- rs1_val == 4096<br>                                                                                                                                                                |[0x80000bac]:xnor t6, t5, t4<br> [0x80000bb0]:sw t6, 400(t2)<br>    |
| 125|[0x8000240c]<br>0xFFFF42FA|- rs1_val == 2048<br>                                                                                                                                                                |[0x80000bc4]:xnor t6, t5, t4<br> [0x80000bc8]:sw t6, 404(t2)<br>    |
| 126|[0x80002410]<br>0xFFFF4EFA|- rs1_val == 1024<br>                                                                                                                                                                |[0x80000bd8]:xnor t6, t5, t4<br> [0x80000bdc]:sw t6, 408(t2)<br>    |
| 127|[0x80002414]<br>0xFFFF48FA|- rs1_val == 512<br>                                                                                                                                                                 |[0x80000bec]:xnor t6, t5, t4<br> [0x80000bf0]:sw t6, 412(t2)<br>    |
| 128|[0x80002418]<br>0xFFFF4BFA|- rs1_val == 256<br>                                                                                                                                                                 |[0x80000c00]:xnor t6, t5, t4<br> [0x80000c04]:sw t6, 416(t2)<br>    |
| 129|[0x8000241c]<br>0xFFFF4A7A|- rs1_val == 128<br>                                                                                                                                                                 |[0x80000c14]:xnor t6, t5, t4<br> [0x80000c18]:sw t6, 420(t2)<br>    |
| 130|[0x80002420]<br>0xFFFF4ABA|- rs1_val == 64<br>                                                                                                                                                                  |[0x80000c28]:xnor t6, t5, t4<br> [0x80000c2c]:sw t6, 424(t2)<br>    |
| 131|[0x80002424]<br>0xFFFF4ADA|- rs1_val == 32<br>                                                                                                                                                                  |[0x80000c3c]:xnor t6, t5, t4<br> [0x80000c40]:sw t6, 428(t2)<br>    |
| 132|[0x80002428]<br>0xFFFF4AEA|- rs1_val == 16<br>                                                                                                                                                                  |[0x80000c50]:xnor t6, t5, t4<br> [0x80000c54]:sw t6, 432(t2)<br>    |
| 133|[0x8000242c]<br>0xFFFF4AF2|- rs1_val == 8<br>                                                                                                                                                                   |[0x80000c64]:xnor t6, t5, t4<br> [0x80000c68]:sw t6, 436(t2)<br>    |
| 134|[0x80002430]<br>0xFFFF4AFE|- rs1_val == 4<br>                                                                                                                                                                   |[0x80000c78]:xnor t6, t5, t4<br> [0x80000c7c]:sw t6, 440(t2)<br>    |
| 135|[0x80002434]<br>0xFFFF4AF8|- rs1_val == 2<br>                                                                                                                                                                   |[0x80000c8c]:xnor t6, t5, t4<br> [0x80000c90]:sw t6, 444(t2)<br>    |
| 136|[0x80002438]<br>0x1000B505|- rs2_val == 4026531839<br>                                                                                                                                                          |[0x80000ca4]:xnor t6, t5, t4<br> [0x80000ca8]:sw t6, 448(t2)<br>    |
| 137|[0x80002440]<br>0x0000B504|- rs2_val == 4294967294<br>                                                                                                                                                          |[0x80000ccc]:xnor t6, t5, t4<br> [0x80000cd0]:sw t6, 456(t2)<br>    |
