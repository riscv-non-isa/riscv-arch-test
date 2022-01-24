
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a90')]      |
| SIG_REGION                | [('0x80002210', '0x80002440', '140 words')]      |
| COV_LABELS                | minu      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/32/riscof_dir/minu-01.S/ref.S    |
| Total Number of coverpoints| 247     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 140      |
| STAT1                     | 135      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006a4]:minu t6, t5, t4
      [0x800006a8]:sw t6, 208(t2)
 -- Signature Address: 0x80002348 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : minu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 65536
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006b4]:minu t6, t5, t4
      [0x800006b8]:sw t6, 212(t2)
 -- Signature Address: 0x8000234c Data: 0x00010000
 -- Redundant Coverpoints hit by the op
      - opcode : minu
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
      [0x800006d4]:minu t6, t5, t4
      [0x800006d8]:sw t6, 220(t2)
 -- Signature Address: 0x80002354 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : minu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 65536
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a60]:minu t6, t5, t4
      [0x80000a64]:sw t6, 444(t2)
 -- Signature Address: 0x80002434 Data: 0x00010000
 -- Redundant Coverpoints hit by the op
      - opcode : minu
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
      [0x80000a84]:minu t6, t5, t4
      [0x80000a88]:sw t6, 452(t2)
 -- Signature Address: 0x8000243c Data: 0x00010000
 -- Redundant Coverpoints hit by the op
      - opcode : minu
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

|s.no|        signature         |                                                                                                            coverpoints                                                                                                            |                                code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00010000|- opcode : minu<br> - rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs2_val == 65536<br> - rs1_val == 65536<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br> |[0x80000108]:minu t6, t6, t6<br> [0x8000010c]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0x00010000|- rs1 : x29<br> - rs2 : x28<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 2147483647<br>                                                  |[0x8000011c]:minu t5, t4, t3<br> [0x80000120]:sw t5, 4(ra)<br>      |
|   3|[0x80002218]<br>0x00010000|- rs1 : x28<br> - rs2 : x30<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_val == 3221225471<br>                                                                                                                                  |[0x80000130]:minu t3, t3, t5<br> [0x80000134]:sw t3, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x00010000|- rs1 : x30<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs2_val == 3758096383<br>                                                                                                                                  |[0x80000144]:minu t4, t5, t4<br> [0x80000148]:sw t4, 12(ra)<br>     |
|   5|[0x80002220]<br>0x00010000|- rs1 : x26<br> - rs2 : x26<br> - rd : x27<br> - rs1 == rs2 != rd<br>                                                                                                                                                              |[0x80000154]:minu s11, s10, s10<br> [0x80000158]:sw s11, 16(ra)<br> |
|   6|[0x80002224]<br>0x00010000|- rs1 : x27<br> - rs2 : x25<br> - rd : x26<br> - rs2_val == 4160749567<br>                                                                                                                                                         |[0x80000168]:minu s10, s11, s9<br> [0x8000016c]:sw s10, 20(ra)<br>  |
|   7|[0x80002228]<br>0x00010000|- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br> - rs2_val == 4227858431<br>                                                                                                                                                         |[0x8000017c]:minu s9, s8, s11<br> [0x80000180]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0x00010000|- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br> - rs2_val == 4261412863<br>                                                                                                                                                         |[0x80000190]:minu s8, s9, s7<br> [0x80000194]:sw s8, 28(ra)<br>     |
|   9|[0x80002230]<br>0x00010000|- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 4278190079<br>                                                                                                                                                         |[0x800001a4]:minu s7, s6, s8<br> [0x800001a8]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0x00010000|- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 4286578687<br>                                                                                                                                                         |[0x800001b8]:minu s6, s7, s5<br> [0x800001bc]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0x00010000|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 4290772991<br>                                                                                                                                                         |[0x800001cc]:minu s5, s4, s6<br> [0x800001d0]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0x00010000|- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == 4292870143<br>                                                                                                                                                         |[0x800001e0]:minu s4, s5, s3<br> [0x800001e4]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0x00010000|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 4293918719<br>                                                                                                                                                         |[0x800001f4]:minu s3, s2, s4<br> [0x800001f8]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0x00010000|- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br> - rs2_val == 4294443007<br>                                                                                                                                                         |[0x80000208]:minu s2, s3, a7<br> [0x8000020c]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0x00010000|- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 4294705151<br>                                                                                                                                                         |[0x8000021c]:minu a7, a6, s2<br> [0x80000220]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x00010000|- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 4294836223<br>                                                                                                                                                         |[0x80000230]:minu a6, a7, a5<br> [0x80000234]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0x00010000|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 4294901759<br>                                                                                                                                                         |[0x80000244]:minu a5, a4, a6<br> [0x80000248]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0x00010000|- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br> - rs2_val == 4294934527<br>                                                                                                                                                         |[0x80000258]:minu a4, a5, a3<br> [0x8000025c]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0x00010000|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 4294950911<br>                                                                                                                                                         |[0x8000026c]:minu a3, a2, a4<br> [0x80000270]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0x00010000|- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == 4294959103<br>                                                                                                                                                         |[0x80000280]:minu a2, a3, a1<br> [0x80000284]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0x00010000|- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 4294963199<br>                                                                                                                                                         |[0x80000294]:minu a1, a0, a2<br> [0x80000298]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0x00010000|- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br> - rs2_val == 4294965247<br>                                                                                                                                                          |[0x800002a8]:minu a0, a1, s1<br> [0x800002ac]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0x00010000|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 4294966271<br>                                                                                                                                                           |[0x800002b8]:minu s1, fp, a0<br> [0x800002bc]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0x00010000|- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 4294966783<br>                                                                                                                                                            |[0x800002c8]:minu fp, s1, t2<br> [0x800002cc]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0x00010000|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 4294967039<br>                                                                                                                                                            |[0x800002d8]:minu t2, t1, fp<br> [0x800002dc]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0x00010000|- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == 4294967167<br>                                                                                                                                                            |[0x800002e8]:minu t1, t2, t0<br> [0x800002ec]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0x00010000|- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 4294967231<br>                                                                                                                                                            |[0x80000300]:minu t0, tp, t1<br> [0x80000304]:sw t0, 0(t2)<br>      |
|  28|[0x8000227c]<br>0x00010000|- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br> - rs2_val == 4294967263<br>                                                                                                                                                            |[0x80000310]:minu tp, t0, gp<br> [0x80000314]:sw tp, 4(t2)<br>      |
|  29|[0x80002280]<br>0x00010000|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 4294967279<br>                                                                                                                                                            |[0x80000320]:minu gp, sp, tp<br> [0x80000324]:sw gp, 8(t2)<br>      |
|  30|[0x80002284]<br>0x00010000|- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br> - rs2_val == 4294967287<br>                                                                                                                                                            |[0x80000330]:minu sp, gp, ra<br> [0x80000334]:sw sp, 12(t2)<br>     |
|  31|[0x80002288]<br>0x00000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 4294967291<br> - rs1_val == 0<br>                                                                                                                                         |[0x80000340]:minu ra, zero, sp<br> [0x80000344]:sw ra, 16(t2)<br>   |
|  32|[0x8000228c]<br>0x00010000|- rs1 : x1<br> - rs2_val == 4294967293<br>                                                                                                                                                                                         |[0x80000350]:minu t6, ra, t5<br> [0x80000354]:sw t6, 20(t2)<br>     |
|  33|[0x80002290]<br>0x00000000|- rs2 : x0<br> - rs2_val == 0<br>                                                                                                                                                                                                  |[0x80000360]:minu t6, t5, zero<br> [0x80000364]:sw t6, 24(t2)<br>   |
|  34|[0x80002294]<br>0x00000000|- rd : x0<br> - rs1_val == 2147483647<br>                                                                                                                                                                                          |[0x80000374]:minu zero, t6, t5<br> [0x80000378]:sw zero, 28(t2)<br> |
|  35|[0x80002298]<br>0x00010000|- rs1_val == 3221225471<br>                                                                                                                                                                                                        |[0x80000388]:minu t6, t5, t4<br> [0x8000038c]:sw t6, 32(t2)<br>     |
|  36|[0x8000229c]<br>0x00010000|- rs1_val == 3758096383<br>                                                                                                                                                                                                        |[0x8000039c]:minu t6, t5, t4<br> [0x800003a0]:sw t6, 36(t2)<br>     |
|  37|[0x800022a0]<br>0x00010000|- rs1_val == 4026531839<br>                                                                                                                                                                                                        |[0x800003b0]:minu t6, t5, t4<br> [0x800003b4]:sw t6, 40(t2)<br>     |
|  38|[0x800022a4]<br>0x00010000|- rs1_val == 4160749567<br>                                                                                                                                                                                                        |[0x800003c4]:minu t6, t5, t4<br> [0x800003c8]:sw t6, 44(t2)<br>     |
|  39|[0x800022a8]<br>0x00010000|- rs1_val == 4227858431<br>                                                                                                                                                                                                        |[0x800003d8]:minu t6, t5, t4<br> [0x800003dc]:sw t6, 48(t2)<br>     |
|  40|[0x800022ac]<br>0x00010000|- rs1_val == 4261412863<br>                                                                                                                                                                                                        |[0x800003ec]:minu t6, t5, t4<br> [0x800003f0]:sw t6, 52(t2)<br>     |
|  41|[0x800022b0]<br>0x00010000|- rs1_val == 4278190079<br>                                                                                                                                                                                                        |[0x80000400]:minu t6, t5, t4<br> [0x80000404]:sw t6, 56(t2)<br>     |
|  42|[0x800022b4]<br>0x00010000|- rs1_val == 4286578687<br>                                                                                                                                                                                                        |[0x80000414]:minu t6, t5, t4<br> [0x80000418]:sw t6, 60(t2)<br>     |
|  43|[0x800022b8]<br>0x00010000|- rs1_val == 4290772991<br>                                                                                                                                                                                                        |[0x80000428]:minu t6, t5, t4<br> [0x8000042c]:sw t6, 64(t2)<br>     |
|  44|[0x800022bc]<br>0x00010000|- rs1_val == 4292870143<br>                                                                                                                                                                                                        |[0x8000043c]:minu t6, t5, t4<br> [0x80000440]:sw t6, 68(t2)<br>     |
|  45|[0x800022c0]<br>0x00010000|- rs1_val == 4293918719<br>                                                                                                                                                                                                        |[0x80000450]:minu t6, t5, t4<br> [0x80000454]:sw t6, 72(t2)<br>     |
|  46|[0x800022c4]<br>0x00010000|- rs1_val == 4294443007<br>                                                                                                                                                                                                        |[0x80000464]:minu t6, t5, t4<br> [0x80000468]:sw t6, 76(t2)<br>     |
|  47|[0x800022c8]<br>0x00010000|- rs1_val == 4294705151<br>                                                                                                                                                                                                        |[0x80000478]:minu t6, t5, t4<br> [0x8000047c]:sw t6, 80(t2)<br>     |
|  48|[0x800022cc]<br>0x00010000|- rs1_val == 4294836223<br>                                                                                                                                                                                                        |[0x8000048c]:minu t6, t5, t4<br> [0x80000490]:sw t6, 84(t2)<br>     |
|  49|[0x800022d0]<br>0x00010000|- rs1_val == 4294901759<br>                                                                                                                                                                                                        |[0x800004a0]:minu t6, t5, t4<br> [0x800004a4]:sw t6, 88(t2)<br>     |
|  50|[0x800022d4]<br>0x00010000|- rs1_val == 4294934527<br>                                                                                                                                                                                                        |[0x800004b4]:minu t6, t5, t4<br> [0x800004b8]:sw t6, 92(t2)<br>     |
|  51|[0x800022d8]<br>0x00010000|- rs1_val == 4294950911<br>                                                                                                                                                                                                        |[0x800004c8]:minu t6, t5, t4<br> [0x800004cc]:sw t6, 96(t2)<br>     |
|  52|[0x800022dc]<br>0x00010000|- rs1_val == 4294959103<br>                                                                                                                                                                                                        |[0x800004dc]:minu t6, t5, t4<br> [0x800004e0]:sw t6, 100(t2)<br>    |
|  53|[0x800022e0]<br>0x00010000|- rs1_val == 4294963199<br>                                                                                                                                                                                                        |[0x800004f0]:minu t6, t5, t4<br> [0x800004f4]:sw t6, 104(t2)<br>    |
|  54|[0x800022e4]<br>0x00010000|- rs1_val == 4294965247<br>                                                                                                                                                                                                        |[0x80000504]:minu t6, t5, t4<br> [0x80000508]:sw t6, 108(t2)<br>    |
|  55|[0x800022e8]<br>0x00010000|- rs1_val == 4294966271<br>                                                                                                                                                                                                        |[0x80000514]:minu t6, t5, t4<br> [0x80000518]:sw t6, 112(t2)<br>    |
|  56|[0x800022ec]<br>0x00010000|- rs1_val == 4294966783<br>                                                                                                                                                                                                        |[0x80000524]:minu t6, t5, t4<br> [0x80000528]:sw t6, 116(t2)<br>    |
|  57|[0x800022f0]<br>0x00010000|- rs1_val == 4294967039<br>                                                                                                                                                                                                        |[0x80000534]:minu t6, t5, t4<br> [0x80000538]:sw t6, 120(t2)<br>    |
|  58|[0x800022f4]<br>0x00010000|- rs1_val == 4294967167<br>                                                                                                                                                                                                        |[0x80000544]:minu t6, t5, t4<br> [0x80000548]:sw t6, 124(t2)<br>    |
|  59|[0x800022f8]<br>0x00010000|- rs1_val == 4294967231<br>                                                                                                                                                                                                        |[0x80000554]:minu t6, t5, t4<br> [0x80000558]:sw t6, 128(t2)<br>    |
|  60|[0x800022fc]<br>0x00010000|- rs1_val == 4294967263<br>                                                                                                                                                                                                        |[0x80000564]:minu t6, t5, t4<br> [0x80000568]:sw t6, 132(t2)<br>    |
|  61|[0x80002300]<br>0x00010000|- rs1_val == 4294967279<br>                                                                                                                                                                                                        |[0x80000574]:minu t6, t5, t4<br> [0x80000578]:sw t6, 136(t2)<br>    |
|  62|[0x80002304]<br>0x00010000|- rs1_val == 4294967287<br>                                                                                                                                                                                                        |[0x80000584]:minu t6, t5, t4<br> [0x80000588]:sw t6, 140(t2)<br>    |
|  63|[0x80002308]<br>0x00010000|- rs1_val == 4294967291<br>                                                                                                                                                                                                        |[0x80000594]:minu t6, t5, t4<br> [0x80000598]:sw t6, 144(t2)<br>    |
|  64|[0x8000230c]<br>0x00010000|- rs1_val == 4294967293<br>                                                                                                                                                                                                        |[0x800005a4]:minu t6, t5, t4<br> [0x800005a8]:sw t6, 148(t2)<br>    |
|  65|[0x80002310]<br>0x00010000|- rs1_val == 4294967294<br>                                                                                                                                                                                                        |[0x800005b4]:minu t6, t5, t4<br> [0x800005b8]:sw t6, 152(t2)<br>    |
|  66|[0x80002314]<br>0x00010000|- rs2_val == 2147483648<br>                                                                                                                                                                                                        |[0x800005c4]:minu t6, t5, t4<br> [0x800005c8]:sw t6, 156(t2)<br>    |
|  67|[0x80002318]<br>0x00010000|- rs2_val == 1073741824<br>                                                                                                                                                                                                        |[0x800005d4]:minu t6, t5, t4<br> [0x800005d8]:sw t6, 160(t2)<br>    |
|  68|[0x8000231c]<br>0x00010000|- rs2_val == 536870912<br>                                                                                                                                                                                                         |[0x800005e4]:minu t6, t5, t4<br> [0x800005e8]:sw t6, 164(t2)<br>    |
|  69|[0x80002320]<br>0x00010000|- rs2_val == 268435456<br>                                                                                                                                                                                                         |[0x800005f4]:minu t6, t5, t4<br> [0x800005f8]:sw t6, 168(t2)<br>    |
|  70|[0x80002324]<br>0x00010000|- rs2_val == 134217728<br>                                                                                                                                                                                                         |[0x80000604]:minu t6, t5, t4<br> [0x80000608]:sw t6, 172(t2)<br>    |
|  71|[0x80002328]<br>0x00010000|- rs2_val == 67108864<br>                                                                                                                                                                                                          |[0x80000614]:minu t6, t5, t4<br> [0x80000618]:sw t6, 176(t2)<br>    |
|  72|[0x8000232c]<br>0x00010000|- rs2_val == 33554432<br>                                                                                                                                                                                                          |[0x80000624]:minu t6, t5, t4<br> [0x80000628]:sw t6, 180(t2)<br>    |
|  73|[0x80002330]<br>0x00000001|- rs1_val == 1<br>                                                                                                                                                                                                                 |[0x80000634]:minu t6, t5, t4<br> [0x80000638]:sw t6, 184(t2)<br>    |
|  74|[0x80002334]<br>0x00010000|- rs2_val == 2863311530<br>                                                                                                                                                                                                        |[0x80000648]:minu t6, t5, t4<br> [0x8000064c]:sw t6, 188(t2)<br>    |
|  75|[0x80002338]<br>0x00010000|- rs2_val == 1431655765<br>                                                                                                                                                                                                        |[0x8000065c]:minu t6, t5, t4<br> [0x80000660]:sw t6, 192(t2)<br>    |
|  76|[0x8000233c]<br>0x00010000|- rs1_val == 2863311530<br>                                                                                                                                                                                                        |[0x80000670]:minu t6, t5, t4<br> [0x80000674]:sw t6, 196(t2)<br>    |
|  77|[0x80002340]<br>0x00010000|- rs1_val == 1431655765<br>                                                                                                                                                                                                        |[0x80000684]:minu t6, t5, t4<br> [0x80000688]:sw t6, 200(t2)<br>    |
|  78|[0x80002344]<br>0x00010000|- rs1_val == (2**(xlen)-1)<br>                                                                                                                                                                                                     |[0x80000694]:minu t6, t5, t4<br> [0x80000698]:sw t6, 204(t2)<br>    |
|  79|[0x80002350]<br>0x00010000|- rs2_val == (2**(xlen)-1)<br>                                                                                                                                                                                                     |[0x800006c4]:minu t6, t5, t4<br> [0x800006c8]:sw t6, 216(t2)<br>    |
|  80|[0x80002358]<br>0x00010000|- rs2_val == 16777216<br>                                                                                                                                                                                                          |[0x800006e4]:minu t6, t5, t4<br> [0x800006e8]:sw t6, 224(t2)<br>    |
|  81|[0x8000235c]<br>0x00010000|- rs2_val == 8388608<br>                                                                                                                                                                                                           |[0x800006f4]:minu t6, t5, t4<br> [0x800006f8]:sw t6, 228(t2)<br>    |
|  82|[0x80002360]<br>0x00010000|- rs2_val == 4194304<br>                                                                                                                                                                                                           |[0x80000704]:minu t6, t5, t4<br> [0x80000708]:sw t6, 232(t2)<br>    |
|  83|[0x80002364]<br>0x00010000|- rs2_val == 2097152<br>                                                                                                                                                                                                           |[0x80000714]:minu t6, t5, t4<br> [0x80000718]:sw t6, 236(t2)<br>    |
|  84|[0x80002368]<br>0x00010000|- rs2_val == 1048576<br>                                                                                                                                                                                                           |[0x80000724]:minu t6, t5, t4<br> [0x80000728]:sw t6, 240(t2)<br>    |
|  85|[0x8000236c]<br>0x00010000|- rs2_val == 524288<br>                                                                                                                                                                                                            |[0x80000734]:minu t6, t5, t4<br> [0x80000738]:sw t6, 244(t2)<br>    |
|  86|[0x80002370]<br>0x00010000|- rs2_val == 262144<br>                                                                                                                                                                                                            |[0x80000744]:minu t6, t5, t4<br> [0x80000748]:sw t6, 248(t2)<br>    |
|  87|[0x80002374]<br>0x00010000|- rs2_val == 131072<br>                                                                                                                                                                                                            |[0x80000754]:minu t6, t5, t4<br> [0x80000758]:sw t6, 252(t2)<br>    |
|  88|[0x80002378]<br>0x00008000|- rs2_val == 32768<br>                                                                                                                                                                                                             |[0x80000764]:minu t6, t5, t4<br> [0x80000768]:sw t6, 256(t2)<br>    |
|  89|[0x8000237c]<br>0x00004000|- rs2_val == 16384<br>                                                                                                                                                                                                             |[0x80000774]:minu t6, t5, t4<br> [0x80000778]:sw t6, 260(t2)<br>    |
|  90|[0x80002380]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                                                                                                              |[0x80000784]:minu t6, t5, t4<br> [0x80000788]:sw t6, 264(t2)<br>    |
|  91|[0x80002384]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                                                                                                              |[0x80000794]:minu t6, t5, t4<br> [0x80000798]:sw t6, 268(t2)<br>    |
|  92|[0x80002388]<br>0x00000800|- rs2_val == 2048<br>                                                                                                                                                                                                              |[0x800007a8]:minu t6, t5, t4<br> [0x800007ac]:sw t6, 272(t2)<br>    |
|  93|[0x8000238c]<br>0x00000400|- rs2_val == 1024<br>                                                                                                                                                                                                              |[0x800007b8]:minu t6, t5, t4<br> [0x800007bc]:sw t6, 276(t2)<br>    |
|  94|[0x80002390]<br>0x00000200|- rs2_val == 512<br>                                                                                                                                                                                                               |[0x800007c8]:minu t6, t5, t4<br> [0x800007cc]:sw t6, 280(t2)<br>    |
|  95|[0x80002394]<br>0x00000100|- rs2_val == 256<br>                                                                                                                                                                                                               |[0x800007d8]:minu t6, t5, t4<br> [0x800007dc]:sw t6, 284(t2)<br>    |
|  96|[0x80002398]<br>0x00000080|- rs2_val == 128<br>                                                                                                                                                                                                               |[0x800007e8]:minu t6, t5, t4<br> [0x800007ec]:sw t6, 288(t2)<br>    |
|  97|[0x8000239c]<br>0x00000040|- rs2_val == 64<br>                                                                                                                                                                                                                |[0x800007f8]:minu t6, t5, t4<br> [0x800007fc]:sw t6, 292(t2)<br>    |
|  98|[0x800023a0]<br>0x00000020|- rs2_val == 32<br>                                                                                                                                                                                                                |[0x80000808]:minu t6, t5, t4<br> [0x8000080c]:sw t6, 296(t2)<br>    |
|  99|[0x800023a4]<br>0x00000010|- rs2_val == 16<br>                                                                                                                                                                                                                |[0x80000818]:minu t6, t5, t4<br> [0x8000081c]:sw t6, 300(t2)<br>    |
| 100|[0x800023a8]<br>0x00000008|- rs2_val == 8<br>                                                                                                                                                                                                                 |[0x80000828]:minu t6, t5, t4<br> [0x8000082c]:sw t6, 304(t2)<br>    |
| 101|[0x800023ac]<br>0x00000004|- rs2_val == 4<br>                                                                                                                                                                                                                 |[0x80000838]:minu t6, t5, t4<br> [0x8000083c]:sw t6, 308(t2)<br>    |
| 102|[0x800023b0]<br>0x00000002|- rs2_val == 2<br>                                                                                                                                                                                                                 |[0x80000848]:minu t6, t5, t4<br> [0x8000084c]:sw t6, 312(t2)<br>    |
| 103|[0x800023b4]<br>0x00010000|- rs1_val == 2147483648<br>                                                                                                                                                                                                        |[0x80000858]:minu t6, t5, t4<br> [0x8000085c]:sw t6, 316(t2)<br>    |
| 104|[0x800023b8]<br>0x00010000|- rs1_val == 1073741824<br>                                                                                                                                                                                                        |[0x80000868]:minu t6, t5, t4<br> [0x8000086c]:sw t6, 320(t2)<br>    |
| 105|[0x800023bc]<br>0x00010000|- rs1_val == 536870912<br>                                                                                                                                                                                                         |[0x80000878]:minu t6, t5, t4<br> [0x8000087c]:sw t6, 324(t2)<br>    |
| 106|[0x800023c0]<br>0x00010000|- rs1_val == 268435456<br>                                                                                                                                                                                                         |[0x80000888]:minu t6, t5, t4<br> [0x8000088c]:sw t6, 328(t2)<br>    |
| 107|[0x800023c4]<br>0x00010000|- rs1_val == 134217728<br>                                                                                                                                                                                                         |[0x80000898]:minu t6, t5, t4<br> [0x8000089c]:sw t6, 332(t2)<br>    |
| 108|[0x800023c8]<br>0x00010000|- rs1_val == 67108864<br>                                                                                                                                                                                                          |[0x800008a8]:minu t6, t5, t4<br> [0x800008ac]:sw t6, 336(t2)<br>    |
| 109|[0x800023cc]<br>0x00010000|- rs1_val == 33554432<br>                                                                                                                                                                                                          |[0x800008b8]:minu t6, t5, t4<br> [0x800008bc]:sw t6, 340(t2)<br>    |
| 110|[0x800023d0]<br>0x00010000|- rs1_val == 16777216<br>                                                                                                                                                                                                          |[0x800008c8]:minu t6, t5, t4<br> [0x800008cc]:sw t6, 344(t2)<br>    |
| 111|[0x800023d4]<br>0x00010000|- rs1_val == 8388608<br>                                                                                                                                                                                                           |[0x800008d8]:minu t6, t5, t4<br> [0x800008dc]:sw t6, 348(t2)<br>    |
| 112|[0x800023d8]<br>0x00010000|- rs1_val == 4194304<br>                                                                                                                                                                                                           |[0x800008e8]:minu t6, t5, t4<br> [0x800008ec]:sw t6, 352(t2)<br>    |
| 113|[0x800023dc]<br>0x00010000|- rs1_val == 2097152<br>                                                                                                                                                                                                           |[0x800008f8]:minu t6, t5, t4<br> [0x800008fc]:sw t6, 356(t2)<br>    |
| 114|[0x800023e0]<br>0x00010000|- rs1_val == 1048576<br>                                                                                                                                                                                                           |[0x80000908]:minu t6, t5, t4<br> [0x8000090c]:sw t6, 360(t2)<br>    |
| 115|[0x800023e4]<br>0x00010000|- rs1_val == 524288<br>                                                                                                                                                                                                            |[0x80000918]:minu t6, t5, t4<br> [0x8000091c]:sw t6, 364(t2)<br>    |
| 116|[0x800023e8]<br>0x00010000|- rs1_val == 262144<br>                                                                                                                                                                                                            |[0x80000928]:minu t6, t5, t4<br> [0x8000092c]:sw t6, 368(t2)<br>    |
| 117|[0x800023ec]<br>0x00010000|- rs1_val == 131072<br>                                                                                                                                                                                                            |[0x80000938]:minu t6, t5, t4<br> [0x8000093c]:sw t6, 372(t2)<br>    |
| 118|[0x800023f0]<br>0x00008000|- rs1_val == 32768<br>                                                                                                                                                                                                             |[0x80000948]:minu t6, t5, t4<br> [0x8000094c]:sw t6, 376(t2)<br>    |
| 119|[0x800023f4]<br>0x00004000|- rs1_val == 16384<br>                                                                                                                                                                                                             |[0x80000958]:minu t6, t5, t4<br> [0x8000095c]:sw t6, 380(t2)<br>    |
| 120|[0x800023f8]<br>0x00002000|- rs1_val == 8192<br>                                                                                                                                                                                                              |[0x80000968]:minu t6, t5, t4<br> [0x8000096c]:sw t6, 384(t2)<br>    |
| 121|[0x800023fc]<br>0x00001000|- rs1_val == 4096<br>                                                                                                                                                                                                              |[0x80000978]:minu t6, t5, t4<br> [0x8000097c]:sw t6, 388(t2)<br>    |
| 122|[0x80002400]<br>0x00000800|- rs1_val == 2048<br>                                                                                                                                                                                                              |[0x8000098c]:minu t6, t5, t4<br> [0x80000990]:sw t6, 392(t2)<br>    |
| 123|[0x80002404]<br>0x00000400|- rs1_val == 1024<br>                                                                                                                                                                                                              |[0x8000099c]:minu t6, t5, t4<br> [0x800009a0]:sw t6, 396(t2)<br>    |
| 124|[0x80002408]<br>0x00000200|- rs1_val == 512<br>                                                                                                                                                                                                               |[0x800009ac]:minu t6, t5, t4<br> [0x800009b0]:sw t6, 400(t2)<br>    |
| 125|[0x8000240c]<br>0x00000100|- rs1_val == 256<br>                                                                                                                                                                                                               |[0x800009bc]:minu t6, t5, t4<br> [0x800009c0]:sw t6, 404(t2)<br>    |
| 126|[0x80002410]<br>0x00000080|- rs1_val == 128<br>                                                                                                                                                                                                               |[0x800009cc]:minu t6, t5, t4<br> [0x800009d0]:sw t6, 408(t2)<br>    |
| 127|[0x80002414]<br>0x00000040|- rs1_val == 64<br>                                                                                                                                                                                                                |[0x800009dc]:minu t6, t5, t4<br> [0x800009e0]:sw t6, 412(t2)<br>    |
| 128|[0x80002418]<br>0x00000020|- rs1_val == 32<br>                                                                                                                                                                                                                |[0x800009ec]:minu t6, t5, t4<br> [0x800009f0]:sw t6, 416(t2)<br>    |
| 129|[0x8000241c]<br>0x00000010|- rs1_val == 16<br>                                                                                                                                                                                                                |[0x800009fc]:minu t6, t5, t4<br> [0x80000a00]:sw t6, 420(t2)<br>    |
| 130|[0x80002420]<br>0x00000008|- rs1_val == 8<br>                                                                                                                                                                                                                 |[0x80000a0c]:minu t6, t5, t4<br> [0x80000a10]:sw t6, 424(t2)<br>    |
| 131|[0x80002424]<br>0x00000004|- rs1_val == 4<br>                                                                                                                                                                                                                 |[0x80000a1c]:minu t6, t5, t4<br> [0x80000a20]:sw t6, 428(t2)<br>    |
| 132|[0x80002428]<br>0x00000002|- rs1_val == 2<br>                                                                                                                                                                                                                 |[0x80000a2c]:minu t6, t5, t4<br> [0x80000a30]:sw t6, 432(t2)<br>    |
| 133|[0x8000242c]<br>0x00000001|- rs2_val == 1<br>                                                                                                                                                                                                                 |[0x80000a3c]:minu t6, t5, t4<br> [0x80000a40]:sw t6, 436(t2)<br>    |
| 134|[0x80002430]<br>0x00010000|- rs2_val == 4026531839<br>                                                                                                                                                                                                        |[0x80000a50]:minu t6, t5, t4<br> [0x80000a54]:sw t6, 440(t2)<br>    |
| 135|[0x80002438]<br>0x00010000|- rs2_val == 4294967294<br>                                                                                                                                                                                                        |[0x80000a70]:minu t6, t5, t4<br> [0x80000a74]:sw t6, 448(t2)<br>    |
