
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004a0')]      |
| SIG_REGION                | [('0x80002210', '0x80002320', '68 words')]      |
| COV_LABELS                | ctz      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/32/riscof_dir/ctz-01.S/ref.S    |
| Total Number of coverpoints| 138     |
| Total Coverpoints Hit     | 133      |
| Total Signature Updates   | 68      |
| STAT1                     | 67      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000490]:ctz t6, t5
      [0x80000494]:sw t6, 156(t0)
 -- Signature Address: 0x8000231c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : ctz
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

|s.no|        signature         |                                         coverpoints                                          |                             code                              |
|---:|--------------------------|----------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ctz<br> - rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - rs1_val == 1431655765<br> |[0x80000108]:ctz t6, t6<br> [0x8000010c]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x29<br> - rd : x30<br> - rs1 != rd<br> - rs1_val == 2147483647<br>                    |[0x80000118]:ctz t5, t4<br> [0x8000011c]:sw t5, 4(ra)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x30<br> - rd : x29<br> - rs1_val == 3221225471<br>                                    |[0x80000128]:ctz t4, t5<br> [0x8000012c]:sw t4, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x27<br> - rd : x28<br> - rs1_val == 3758096383<br>                                    |[0x80000138]:ctz t3, s11<br> [0x8000013c]:sw t3, 12(ra)<br>    |
|   5|[0x80002220]<br>0x00000000|- rs1 : x28<br> - rd : x27<br> - rs1_val == 4026531839<br>                                    |[0x80000148]:ctz s11, t3<br> [0x8000014c]:sw s11, 16(ra)<br>   |
|   6|[0x80002224]<br>0x00000000|- rs1 : x25<br> - rd : x26<br> - rs1_val == 4160749567<br>                                    |[0x80000158]:ctz s10, s9<br> [0x8000015c]:sw s10, 20(ra)<br>   |
|   7|[0x80002228]<br>0x00000000|- rs1 : x26<br> - rd : x25<br> - rs1_val == 4227858431<br>                                    |[0x80000168]:ctz s9, s10<br> [0x8000016c]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0x00000000|- rs1 : x23<br> - rd : x24<br> - rs1_val == 4261412863<br>                                    |[0x80000178]:ctz s8, s7<br> [0x8000017c]:sw s8, 28(ra)<br>     |
|   9|[0x80002230]<br>0x00000000|- rs1 : x24<br> - rd : x23<br> - rs1_val == 4278190079<br>                                    |[0x80000188]:ctz s7, s8<br> [0x8000018c]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0x00000000|- rs1 : x21<br> - rd : x22<br> - rs1_val == 4286578687<br>                                    |[0x80000198]:ctz s6, s5<br> [0x8000019c]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x22<br> - rd : x21<br> - rs1_val == 4290772991<br>                                    |[0x800001a8]:ctz s5, s6<br> [0x800001ac]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0x00000000|- rs1 : x19<br> - rd : x20<br> - rs1_val == 4292870143<br>                                    |[0x800001b8]:ctz s4, s3<br> [0x800001bc]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0x00000000|- rs1 : x20<br> - rd : x19<br> - rs1_val == 4293918719<br>                                    |[0x800001c8]:ctz s3, s4<br> [0x800001cc]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0x00000000|- rs1 : x17<br> - rd : x18<br> - rs1_val == 4294443007<br>                                    |[0x800001d8]:ctz s2, a7<br> [0x800001dc]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0x00000000|- rs1 : x18<br> - rd : x17<br> - rs1_val == 4294705151<br>                                    |[0x800001e8]:ctz a7, s2<br> [0x800001ec]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x15<br> - rd : x16<br> - rs1_val == 4294836223<br>                                    |[0x800001f8]:ctz a6, a5<br> [0x800001fc]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0x00000000|- rs1 : x16<br> - rd : x15<br> - rs1_val == 4294901759<br>                                    |[0x80000208]:ctz a5, a6<br> [0x8000020c]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0x00000000|- rs1 : x13<br> - rd : x14<br> - rs1_val == 4294934527<br>                                    |[0x80000218]:ctz a4, a3<br> [0x8000021c]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0x00000000|- rs1 : x14<br> - rd : x13<br> - rs1_val == 4294950911<br>                                    |[0x80000228]:ctz a3, a4<br> [0x8000022c]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0x00000000|- rs1 : x11<br> - rd : x12<br> - rs1_val == 4294959103<br>                                    |[0x80000238]:ctz a2, a1<br> [0x8000023c]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0x00000000|- rs1 : x12<br> - rd : x11<br> - rs1_val == 4294963199<br>                                    |[0x80000248]:ctz a1, a2<br> [0x8000024c]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0x00000000|- rs1 : x9<br> - rd : x10<br> - rs1_val == 4294965247<br>                                     |[0x80000258]:ctz a0, s1<br> [0x8000025c]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0x00000000|- rs1 : x10<br> - rd : x9<br> - rs1_val == 4294966271<br>                                     |[0x80000264]:ctz s1, a0<br> [0x80000268]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x7<br> - rd : x8<br> - rs1_val == 4294966783<br>                                      |[0x80000270]:ctz fp, t2<br> [0x80000274]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0x00000000|- rs1 : x8<br> - rd : x7<br> - rs1_val == 4294967039<br>                                      |[0x8000027c]:ctz t2, fp<br> [0x80000280]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0x00000000|- rs1 : x5<br> - rd : x6<br> - rs1_val == 4294967167<br>                                      |[0x80000288]:ctz t1, t0<br> [0x8000028c]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0x00000000|- rs1 : x6<br> - rd : x5<br> - rs1_val == 4294967231<br>                                      |[0x80000294]:ctz t0, t1<br> [0x80000298]:sw t0, 104(ra)<br>    |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x3<br> - rd : x4<br> - rs1_val == 4294967263<br>                                      |[0x800002a0]:ctz tp, gp<br> [0x800002a4]:sw tp, 108(ra)<br>    |
|  29|[0x80002280]<br>0x00000000|- rs1 : x4<br> - rd : x3<br> - rs1_val == 4294967279<br>                                      |[0x800002b4]:ctz gp, tp<br> [0x800002b8]:sw gp, 0(t0)<br>      |
|  30|[0x80002284]<br>0x00000000|- rs1 : x1<br> - rd : x2<br> - rs1_val == 4294967287<br>                                      |[0x800002c0]:ctz sp, ra<br> [0x800002c4]:sw sp, 4(t0)<br>      |
|  31|[0x80002288]<br>0x00000000|- rs1 : x2<br> - rd : x1<br> - rs1_val == 4294967291<br>                                      |[0x800002cc]:ctz ra, sp<br> [0x800002d0]:sw ra, 8(t0)<br>      |
|  32|[0x8000228c]<br>0x00000020|- rs1 : x0<br>                                                                                |[0x800002d8]:ctz t6, zero<br> [0x800002dc]:sw t6, 12(t0)<br>   |
|  33|[0x80002290]<br>0x00000000|- rd : x0<br> - rs1_val == 4294967294<br>                                                     |[0x800002e4]:ctz zero, t6<br> [0x800002e8]:sw zero, 16(t0)<br> |
|  34|[0x80002294]<br>0x0000001F|- rs1_val == 2147483648<br>                                                                   |[0x800002f0]:ctz t6, t5<br> [0x800002f4]:sw t6, 20(t0)<br>     |
|  35|[0x80002298]<br>0x0000001E|- rs1_val == 1073741824<br>                                                                   |[0x800002fc]:ctz t6, t5<br> [0x80000300]:sw t6, 24(t0)<br>     |
|  36|[0x8000229c]<br>0x00000000|- rs1_val == 1<br>                                                                            |[0x80000308]:ctz t6, t5<br> [0x8000030c]:sw t6, 28(t0)<br>     |
|  37|[0x800022a0]<br>0x00000001|- rs1_val == 2863311530<br>                                                                   |[0x80000318]:ctz t6, t5<br> [0x8000031c]:sw t6, 32(t0)<br>     |
|  38|[0x800022a4]<br>0x0000001D|- rs1_val == 536870912<br>                                                                    |[0x80000324]:ctz t6, t5<br> [0x80000328]:sw t6, 36(t0)<br>     |
|  39|[0x800022a8]<br>0x0000001C|- rs1_val == 268435456<br>                                                                    |[0x80000330]:ctz t6, t5<br> [0x80000334]:sw t6, 40(t0)<br>     |
|  40|[0x800022ac]<br>0x0000001B|- rs1_val == 134217728<br>                                                                    |[0x8000033c]:ctz t6, t5<br> [0x80000340]:sw t6, 44(t0)<br>     |
|  41|[0x800022b0]<br>0x0000001A|- rs1_val == 67108864<br>                                                                     |[0x80000348]:ctz t6, t5<br> [0x8000034c]:sw t6, 48(t0)<br>     |
|  42|[0x800022b4]<br>0x00000019|- rs1_val == 33554432<br>                                                                     |[0x80000354]:ctz t6, t5<br> [0x80000358]:sw t6, 52(t0)<br>     |
|  43|[0x800022b8]<br>0x00000018|- rs1_val == 16777216<br>                                                                     |[0x80000360]:ctz t6, t5<br> [0x80000364]:sw t6, 56(t0)<br>     |
|  44|[0x800022bc]<br>0x00000017|- rs1_val == 8388608<br>                                                                      |[0x8000036c]:ctz t6, t5<br> [0x80000370]:sw t6, 60(t0)<br>     |
|  45|[0x800022c0]<br>0x00000016|- rs1_val == 4194304<br>                                                                      |[0x80000378]:ctz t6, t5<br> [0x8000037c]:sw t6, 64(t0)<br>     |
|  46|[0x800022c4]<br>0x00000015|- rs1_val == 2097152<br>                                                                      |[0x80000384]:ctz t6, t5<br> [0x80000388]:sw t6, 68(t0)<br>     |
|  47|[0x800022c8]<br>0x00000014|- rs1_val == 1048576<br>                                                                      |[0x80000390]:ctz t6, t5<br> [0x80000394]:sw t6, 72(t0)<br>     |
|  48|[0x800022cc]<br>0x00000013|- rs1_val == 524288<br>                                                                       |[0x8000039c]:ctz t6, t5<br> [0x800003a0]:sw t6, 76(t0)<br>     |
|  49|[0x800022d0]<br>0x00000012|- rs1_val == 262144<br>                                                                       |[0x800003a8]:ctz t6, t5<br> [0x800003ac]:sw t6, 80(t0)<br>     |
|  50|[0x800022d4]<br>0x00000011|- rs1_val == 131072<br>                                                                       |[0x800003b4]:ctz t6, t5<br> [0x800003b8]:sw t6, 84(t0)<br>     |
|  51|[0x800022d8]<br>0x00000010|- rs1_val == 65536<br>                                                                        |[0x800003c0]:ctz t6, t5<br> [0x800003c4]:sw t6, 88(t0)<br>     |
|  52|[0x800022dc]<br>0x0000000F|- rs1_val == 32768<br>                                                                        |[0x800003cc]:ctz t6, t5<br> [0x800003d0]:sw t6, 92(t0)<br>     |
|  53|[0x800022e0]<br>0x0000000E|- rs1_val == 16384<br>                                                                        |[0x800003d8]:ctz t6, t5<br> [0x800003dc]:sw t6, 96(t0)<br>     |
|  54|[0x800022e4]<br>0x0000000D|- rs1_val == 8192<br>                                                                         |[0x800003e4]:ctz t6, t5<br> [0x800003e8]:sw t6, 100(t0)<br>    |
|  55|[0x800022e8]<br>0x0000000C|- rs1_val == 4096<br>                                                                         |[0x800003f0]:ctz t6, t5<br> [0x800003f4]:sw t6, 104(t0)<br>    |
|  56|[0x800022ec]<br>0x0000000B|- rs1_val == 2048<br>                                                                         |[0x80000400]:ctz t6, t5<br> [0x80000404]:sw t6, 108(t0)<br>    |
|  57|[0x800022f0]<br>0x0000000A|- rs1_val == 1024<br>                                                                         |[0x8000040c]:ctz t6, t5<br> [0x80000410]:sw t6, 112(t0)<br>    |
|  58|[0x800022f4]<br>0x00000009|- rs1_val == 512<br>                                                                          |[0x80000418]:ctz t6, t5<br> [0x8000041c]:sw t6, 116(t0)<br>    |
|  59|[0x800022f8]<br>0x00000008|- rs1_val == 256<br>                                                                          |[0x80000424]:ctz t6, t5<br> [0x80000428]:sw t6, 120(t0)<br>    |
|  60|[0x800022fc]<br>0x00000007|- rs1_val == 128<br>                                                                          |[0x80000430]:ctz t6, t5<br> [0x80000434]:sw t6, 124(t0)<br>    |
|  61|[0x80002300]<br>0x00000006|- rs1_val == 64<br>                                                                           |[0x8000043c]:ctz t6, t5<br> [0x80000440]:sw t6, 128(t0)<br>    |
|  62|[0x80002304]<br>0x00000005|- rs1_val == 32<br>                                                                           |[0x80000448]:ctz t6, t5<br> [0x8000044c]:sw t6, 132(t0)<br>    |
|  63|[0x80002308]<br>0x00000004|- rs1_val == 16<br>                                                                           |[0x80000454]:ctz t6, t5<br> [0x80000458]:sw t6, 136(t0)<br>    |
|  64|[0x8000230c]<br>0x00000003|- rs1_val == 8<br>                                                                            |[0x80000460]:ctz t6, t5<br> [0x80000464]:sw t6, 140(t0)<br>    |
|  65|[0x80002310]<br>0x00000002|- rs1_val == 4<br>                                                                            |[0x8000046c]:ctz t6, t5<br> [0x80000470]:sw t6, 144(t0)<br>    |
|  66|[0x80002314]<br>0x00000001|- rs1_val == 2<br>                                                                            |[0x80000478]:ctz t6, t5<br> [0x8000047c]:sw t6, 148(t0)<br>    |
|  67|[0x80002318]<br>0x00000000|- rs1_val == 4294967293<br>                                                                   |[0x80000484]:ctz t6, t5<br> [0x80000488]:sw t6, 152(t0)<br>    |
