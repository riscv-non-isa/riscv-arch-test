
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004e0')]      |
| SIG_REGION                | [('0x80002210', '0x80002330', '72 words')]      |
| COV_LABELS                | orc.b      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/32/riscof_dir/orc.b-01.S/ref.S    |
| Total Number of coverpoints| 142     |
| Total Coverpoints Hit     | 137      |
| Total Signature Updates   | 72      |
| STAT1                     | 71      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d0]:orc.b t6, t5
      [0x800004d4]:sw t6, 172(t0)
 -- Signature Address: 0x8000232c Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : orc.b
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - rs1_val == 4294967294






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

|s.no|        signature         |                                          coverpoints                                          |                              code                               |
|---:|--------------------------|-----------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFF|- opcode : orc.b<br> - rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - rs1_val == 134283780<br> |[0x80000108]:orc.b t6, t6<br> [0x8000010c]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0xFFFFFFFF|- rs1 : x29<br> - rd : x30<br> - rs1 != rd<br> - rs1_val == 2147483647<br>                     |[0x80000118]:orc.b t5, t4<br> [0x8000011c]:sw t5, 4(ra)<br>      |
|   3|[0x80002218]<br>0xFFFFFFFF|- rs1 : x30<br> - rd : x29<br> - rs1_val == 3221225471<br>                                     |[0x80000128]:orc.b t4, t5<br> [0x8000012c]:sw t4, 8(ra)<br>      |
|   4|[0x8000221c]<br>0xFFFFFFFF|- rs1 : x27<br> - rd : x28<br> - rs1_val == 3758096383<br>                                     |[0x80000138]:orc.b t3, s11<br> [0x8000013c]:sw t3, 12(ra)<br>    |
|   5|[0x80002220]<br>0xFFFFFFFF|- rs1 : x28<br> - rd : x27<br> - rs1_val == 4026531839<br>                                     |[0x80000148]:orc.b s11, t3<br> [0x8000014c]:sw s11, 16(ra)<br>   |
|   6|[0x80002224]<br>0xFFFFFFFF|- rs1 : x25<br> - rd : x26<br> - rs1_val == 4160749567<br>                                     |[0x80000158]:orc.b s10, s9<br> [0x8000015c]:sw s10, 20(ra)<br>   |
|   7|[0x80002228]<br>0xFFFFFFFF|- rs1 : x26<br> - rd : x25<br> - rs1_val == 4227858431<br>                                     |[0x80000168]:orc.b s9, s10<br> [0x8000016c]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0xFFFFFFFF|- rs1 : x23<br> - rd : x24<br> - rs1_val == 4261412863<br>                                     |[0x80000178]:orc.b s8, s7<br> [0x8000017c]:sw s8, 28(ra)<br>     |
|   9|[0x80002230]<br>0xFFFFFFFF|- rs1 : x24<br> - rd : x23<br> - rs1_val == 4278190079<br>                                     |[0x80000188]:orc.b s7, s8<br> [0x8000018c]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0xFFFFFFFF|- rs1 : x21<br> - rd : x22<br> - rs1_val == 4286578687<br>                                     |[0x80000198]:orc.b s6, s5<br> [0x8000019c]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0xFFFFFFFF|- rs1 : x22<br> - rd : x21<br> - rs1_val == 4290772991<br>                                     |[0x800001a8]:orc.b s5, s6<br> [0x800001ac]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0xFFFFFFFF|- rs1 : x19<br> - rd : x20<br> - rs1_val == 4292870143<br>                                     |[0x800001b8]:orc.b s4, s3<br> [0x800001bc]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0xFFFFFFFF|- rs1 : x20<br> - rd : x19<br> - rs1_val == 4293918719<br>                                     |[0x800001c8]:orc.b s3, s4<br> [0x800001cc]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0xFFFFFFFF|- rs1 : x17<br> - rd : x18<br> - rs1_val == 4294443007<br>                                     |[0x800001d8]:orc.b s2, a7<br> [0x800001dc]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0xFFFFFFFF|- rs1 : x18<br> - rd : x17<br> - rs1_val == 4294705151<br>                                     |[0x800001e8]:orc.b a7, s2<br> [0x800001ec]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0xFFFFFFFF|- rs1 : x15<br> - rd : x16<br> - rs1_val == 4294836223<br>                                     |[0x800001f8]:orc.b a6, a5<br> [0x800001fc]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0xFFFFFFFF|- rs1 : x16<br> - rd : x15<br> - rs1_val == 4294901759<br>                                     |[0x80000208]:orc.b a5, a6<br> [0x8000020c]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0xFFFFFFFF|- rs1 : x13<br> - rd : x14<br> - rs1_val == 4294934527<br>                                     |[0x80000218]:orc.b a4, a3<br> [0x8000021c]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0xFFFFFFFF|- rs1 : x14<br> - rd : x13<br> - rs1_val == 4294950911<br>                                     |[0x80000228]:orc.b a3, a4<br> [0x8000022c]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0xFFFFFFFF|- rs1 : x11<br> - rd : x12<br> - rs1_val == 4294959103<br>                                     |[0x80000238]:orc.b a2, a1<br> [0x8000023c]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0xFFFFFFFF|- rs1 : x12<br> - rd : x11<br> - rs1_val == 4294963199<br>                                     |[0x80000248]:orc.b a1, a2<br> [0x8000024c]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0xFFFFFFFF|- rs1 : x9<br> - rd : x10<br> - rs1_val == 4294965247<br>                                      |[0x80000258]:orc.b a0, s1<br> [0x8000025c]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0xFFFFFFFF|- rs1 : x10<br> - rd : x9<br> - rs1_val == 4294966271<br>                                      |[0x80000264]:orc.b s1, a0<br> [0x80000268]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0xFFFFFFFF|- rs1 : x7<br> - rd : x8<br> - rs1_val == 4294966783<br>                                       |[0x80000270]:orc.b fp, t2<br> [0x80000274]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0xFFFFFFFF|- rs1 : x8<br> - rd : x7<br> - rs1_val == 4294967039<br>                                       |[0x8000027c]:orc.b t2, fp<br> [0x80000280]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0xFFFFFFFF|- rs1 : x5<br> - rd : x6<br> - rs1_val == 4294967167<br>                                       |[0x80000288]:orc.b t1, t0<br> [0x8000028c]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0xFFFFFFFF|- rs1 : x6<br> - rd : x5<br> - rs1_val == 4294967231<br>                                       |[0x80000294]:orc.b t0, t1<br> [0x80000298]:sw t0, 104(ra)<br>    |
|  28|[0x8000227c]<br>0xFFFFFFFF|- rs1 : x3<br> - rd : x4<br> - rs1_val == 4294967263<br>                                       |[0x800002a0]:orc.b tp, gp<br> [0x800002a4]:sw tp, 108(ra)<br>    |
|  29|[0x80002280]<br>0xFFFFFFFF|- rs1 : x4<br> - rd : x3<br> - rs1_val == 4294967279<br>                                       |[0x800002b4]:orc.b gp, tp<br> [0x800002b8]:sw gp, 0(t0)<br>      |
|  30|[0x80002284]<br>0xFFFFFFFF|- rs1 : x1<br> - rd : x2<br> - rs1_val == 4294967287<br>                                       |[0x800002c0]:orc.b sp, ra<br> [0x800002c4]:sw sp, 4(t0)<br>      |
|  31|[0x80002288]<br>0xFFFFFFFF|- rs1 : x2<br> - rd : x1<br> - rs1_val == 4294967291<br>                                       |[0x800002cc]:orc.b ra, sp<br> [0x800002d0]:sw ra, 8(t0)<br>      |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x0<br>                                                                                 |[0x800002d8]:orc.b t6, zero<br> [0x800002dc]:sw t6, 12(t0)<br>   |
|  33|[0x80002290]<br>0x00000000|- rd : x0<br> - rs1_val == 4294967294<br>                                                      |[0x800002e4]:orc.b zero, t6<br> [0x800002e8]:sw zero, 16(t0)<br> |
|  34|[0x80002294]<br>0xFF000000|- rs1_val == 2147483648<br>                                                                    |[0x800002f0]:orc.b t6, t5<br> [0x800002f4]:sw t6, 20(t0)<br>     |
|  35|[0x80002298]<br>0xFF000000|- rs1_val == 1073741824<br>                                                                    |[0x800002fc]:orc.b t6, t5<br> [0x80000300]:sw t6, 24(t0)<br>     |
|  36|[0x8000229c]<br>0xFF000000|- rs1_val == 536870912<br>                                                                     |[0x80000308]:orc.b t6, t5<br> [0x8000030c]:sw t6, 28(t0)<br>     |
|  37|[0x800022a0]<br>0xFF000000|- rs1_val == 268435456<br>                                                                     |[0x80000314]:orc.b t6, t5<br> [0x80000318]:sw t6, 32(t0)<br>     |
|  38|[0x800022a4]<br>0xFF000000|- rs1_val == 134217728<br>                                                                     |[0x80000320]:orc.b t6, t5<br> [0x80000324]:sw t6, 36(t0)<br>     |
|  39|[0x800022a8]<br>0xFF000000|- rs1_val == 67108864<br>                                                                      |[0x8000032c]:orc.b t6, t5<br> [0x80000330]:sw t6, 40(t0)<br>     |
|  40|[0x800022ac]<br>0x000000FF|- rs1_val == 1<br>                                                                             |[0x80000338]:orc.b t6, t5<br> [0x8000033c]:sw t6, 44(t0)<br>     |
|  41|[0x800022b0]<br>0xFFFFFFFF|- rs1_val == 2863311530<br>                                                                    |[0x80000348]:orc.b t6, t5<br> [0x8000034c]:sw t6, 48(t0)<br>     |
|  42|[0x800022b4]<br>0xFFFFFFFF|- rs1_val == 1431655765<br>                                                                    |[0x80000358]:orc.b t6, t5<br> [0x8000035c]:sw t6, 52(t0)<br>     |
|  43|[0x800022b8]<br>0xFFFFFFFF|- rs1_val == 16909320<br>                                                                      |[0x80000368]:orc.b t6, t5<br> [0x8000036c]:sw t6, 56(t0)<br>     |
|  44|[0x800022bc]<br>0xFFFFFFFF|- rs1_val == 33818625<br>                                                                      |[0x80000378]:orc.b t6, t5<br> [0x8000037c]:sw t6, 60(t0)<br>     |
|  45|[0x800022c0]<br>0xFFFFFFFF|- rs1_val == 67633410<br>                                                                      |[0x80000388]:orc.b t6, t5<br> [0x8000038c]:sw t6, 64(t0)<br>     |
|  46|[0x800022c4]<br>0xFF000000|- rs1_val == 33554432<br>                                                                      |[0x80000394]:orc.b t6, t5<br> [0x80000398]:sw t6, 68(t0)<br>     |
|  47|[0x800022c8]<br>0xFF000000|- rs1_val == 16777216<br>                                                                      |[0x800003a0]:orc.b t6, t5<br> [0x800003a4]:sw t6, 72(t0)<br>     |
|  48|[0x800022cc]<br>0x00FF0000|- rs1_val == 8388608<br>                                                                       |[0x800003ac]:orc.b t6, t5<br> [0x800003b0]:sw t6, 76(t0)<br>     |
|  49|[0x800022d0]<br>0x00FF0000|- rs1_val == 4194304<br>                                                                       |[0x800003b8]:orc.b t6, t5<br> [0x800003bc]:sw t6, 80(t0)<br>     |
|  50|[0x800022d4]<br>0x00FF0000|- rs1_val == 2097152<br>                                                                       |[0x800003c4]:orc.b t6, t5<br> [0x800003c8]:sw t6, 84(t0)<br>     |
|  51|[0x800022d8]<br>0x00FF0000|- rs1_val == 1048576<br>                                                                       |[0x800003d0]:orc.b t6, t5<br> [0x800003d4]:sw t6, 88(t0)<br>     |
|  52|[0x800022dc]<br>0x00FF0000|- rs1_val == 524288<br>                                                                        |[0x800003dc]:orc.b t6, t5<br> [0x800003e0]:sw t6, 92(t0)<br>     |
|  53|[0x800022e0]<br>0x00FF0000|- rs1_val == 262144<br>                                                                        |[0x800003e8]:orc.b t6, t5<br> [0x800003ec]:sw t6, 96(t0)<br>     |
|  54|[0x800022e4]<br>0x00FF0000|- rs1_val == 131072<br>                                                                        |[0x800003f4]:orc.b t6, t5<br> [0x800003f8]:sw t6, 100(t0)<br>    |
|  55|[0x800022e8]<br>0x00FF0000|- rs1_val == 65536<br>                                                                         |[0x80000400]:orc.b t6, t5<br> [0x80000404]:sw t6, 104(t0)<br>    |
|  56|[0x800022ec]<br>0x0000FF00|- rs1_val == 32768<br>                                                                         |[0x8000040c]:orc.b t6, t5<br> [0x80000410]:sw t6, 108(t0)<br>    |
|  57|[0x800022f0]<br>0x0000FF00|- rs1_val == 16384<br>                                                                         |[0x80000418]:orc.b t6, t5<br> [0x8000041c]:sw t6, 112(t0)<br>    |
|  58|[0x800022f4]<br>0x0000FF00|- rs1_val == 8192<br>                                                                          |[0x80000424]:orc.b t6, t5<br> [0x80000428]:sw t6, 116(t0)<br>    |
|  59|[0x800022f8]<br>0x0000FF00|- rs1_val == 4096<br>                                                                          |[0x80000430]:orc.b t6, t5<br> [0x80000434]:sw t6, 120(t0)<br>    |
|  60|[0x800022fc]<br>0x0000FF00|- rs1_val == 2048<br>                                                                          |[0x80000440]:orc.b t6, t5<br> [0x80000444]:sw t6, 124(t0)<br>    |
|  61|[0x80002300]<br>0x0000FF00|- rs1_val == 1024<br>                                                                          |[0x8000044c]:orc.b t6, t5<br> [0x80000450]:sw t6, 128(t0)<br>    |
|  62|[0x80002304]<br>0x0000FF00|- rs1_val == 512<br>                                                                           |[0x80000458]:orc.b t6, t5<br> [0x8000045c]:sw t6, 132(t0)<br>    |
|  63|[0x80002308]<br>0x0000FF00|- rs1_val == 256<br>                                                                           |[0x80000464]:orc.b t6, t5<br> [0x80000468]:sw t6, 136(t0)<br>    |
|  64|[0x8000230c]<br>0x000000FF|- rs1_val == 128<br>                                                                           |[0x80000470]:orc.b t6, t5<br> [0x80000474]:sw t6, 140(t0)<br>    |
|  65|[0x80002310]<br>0x000000FF|- rs1_val == 64<br>                                                                            |[0x8000047c]:orc.b t6, t5<br> [0x80000480]:sw t6, 144(t0)<br>    |
|  66|[0x80002314]<br>0x000000FF|- rs1_val == 32<br>                                                                            |[0x80000488]:orc.b t6, t5<br> [0x8000048c]:sw t6, 148(t0)<br>    |
|  67|[0x80002318]<br>0x000000FF|- rs1_val == 16<br>                                                                            |[0x80000494]:orc.b t6, t5<br> [0x80000498]:sw t6, 152(t0)<br>    |
|  68|[0x8000231c]<br>0x000000FF|- rs1_val == 8<br>                                                                             |[0x800004a0]:orc.b t6, t5<br> [0x800004a4]:sw t6, 156(t0)<br>    |
|  69|[0x80002320]<br>0x000000FF|- rs1_val == 4<br>                                                                             |[0x800004ac]:orc.b t6, t5<br> [0x800004b0]:sw t6, 160(t0)<br>    |
|  70|[0x80002324]<br>0x000000FF|- rs1_val == 2<br>                                                                             |[0x800004b8]:orc.b t6, t5<br> [0x800004bc]:sw t6, 164(t0)<br>    |
|  71|[0x80002328]<br>0xFFFFFFFF|- rs1_val == 4294967293<br>                                                                    |[0x800004c4]:orc.b t6, t5<br> [0x800004c8]:sw t6, 168(t0)<br>    |
