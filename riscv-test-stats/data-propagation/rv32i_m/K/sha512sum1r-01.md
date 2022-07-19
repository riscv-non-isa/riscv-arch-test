
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000bf0')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | sha512sum1r      |
| TEST_NAME                 | /home/anku/trials/bcrypto/32/work_v2/sha512sum1r-01.S/ref.S    |
| Total Number of coverpoints| 250     |
| Total Coverpoints Hit     | 250      |
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
      [0x80000bd0]:sha512sum1r t6, t5, t4
      [0x80000bd4]:sw t6, 496(t1)
 -- Signature Address: 0x8000246c Data: 0xFFEEFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : sha512sum1r
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967291




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000be0]:sha512sum1r t6, t5, t4
      [0x80000be4]:sw t6, 500(t1)
 -- Signature Address: 0x80002470 Data: 0xFFF77FFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : sha512sum1r
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967293






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

|s.no|        signature         |                                                                          coverpoints                                                                           |                                   code                                    |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x95FA3573|- mnemonic : sha512sum1r<br> - rs1 : x30<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br> |[0x80000110]:sha512sum1r t6, t5, t6<br> [0x80000114]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0xFFBFFFFF|- rs1 : x29<br> - rs2 : x30<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_val == 2147483647<br>                                                               |[0x80000124]:sha512sum1r t4, t4, t5<br> [0x80000128]:sw t4, 4(ra)<br>      |
|   3|[0x80002218]<br>0xFFFFFFFF|- rs1 : x28<br> - rs2 : x28<br> - rd : x30<br> - rs1 == rs2 != rd<br>                                                                                           |[0x80000134]:sha512sum1r t5, t3, t3<br> [0x80000138]:sw t5, 8(ra)<br>      |
|   4|[0x8000221c]<br>0xFFFFFFFF|- rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br>                                                                                           |[0x80000144]:sha512sum1r s11, s11, s11<br> [0x80000148]:sw s11, 12(ra)<br> |
|   5|[0x80002220]<br>0xFFF7FFFF|- rs1 : x31<br> - rs2 : x29<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 4026531839<br>                                        |[0x80000158]:sha512sum1r t3, t6, t4<br> [0x8000015c]:sw t3, 16(ra)<br>     |
|   6|[0x80002224]<br>0xFFFBFFFF|- rs1 : x25<br> - rs2 : x24<br> - rd : x26<br> - rs2_val == 4160749567<br>                                                                                      |[0x8000016c]:sha512sum1r s10, s9, s8<br> [0x80000170]:sw s10, 20(ra)<br>   |
|   7|[0x80002228]<br>0xFFFDFFFF|- rs1 : x24<br> - rs2 : x26<br> - rd : x25<br> - rs2_val == 4227858431<br>                                                                                      |[0x80000180]:sha512sum1r s9, s8, s10<br> [0x80000184]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0xFFFEFFFF|- rs1 : x26<br> - rs2 : x25<br> - rd : x24<br> - rs2_val == 4261412863<br>                                                                                      |[0x80000194]:sha512sum1r s8, s10, s9<br> [0x80000198]:sw s8, 28(ra)<br>    |
|   9|[0x80002230]<br>0xFFFF7FFF|- rs1 : x22<br> - rs2 : x21<br> - rd : x23<br> - rs2_val == 4278190079<br>                                                                                      |[0x800001a8]:sha512sum1r s7, s6, s5<br> [0x800001ac]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0xFFFFBFFF|- rs1 : x21<br> - rs2 : x23<br> - rd : x22<br> - rs2_val == 4286578687<br>                                                                                      |[0x800001bc]:sha512sum1r s6, s5, s7<br> [0x800001c0]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0xFFFFDFFF|- rs1 : x23<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 4290772991<br>                                                                                      |[0x800001d0]:sha512sum1r s5, s7, s6<br> [0x800001d4]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0xFFFFEFFF|- rs1 : x19<br> - rs2 : x18<br> - rd : x20<br> - rs2_val == 4292870143<br>                                                                                      |[0x800001e4]:sha512sum1r s4, s3, s2<br> [0x800001e8]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0xFFFFF7FF|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 4293918719<br>                                                                                      |[0x800001f8]:sha512sum1r s3, s2, s4<br> [0x800001fc]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0xFFFFFBFF|- rs1 : x20<br> - rs2 : x19<br> - rd : x18<br> - rs2_val == 4294443007<br>                                                                                      |[0x8000020c]:sha512sum1r s2, s4, s3<br> [0x80000210]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0xFFFFFDFF|- rs1 : x16<br> - rs2 : x15<br> - rd : x17<br> - rs2_val == 4294705151<br>                                                                                      |[0x80000220]:sha512sum1r a7, a6, a5<br> [0x80000224]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x7FFFFEFF|- rs1 : x15<br> - rs2 : x17<br> - rd : x16<br> - rs2_val == 4294836223<br>                                                                                      |[0x80000234]:sha512sum1r a6, a5, a7<br> [0x80000238]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0xBFFFFF7F|- rs1 : x17<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 4294901759<br>                                                                                      |[0x80000248]:sha512sum1r a5, a7, a6<br> [0x8000024c]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0xDFFFFFBF|- rs1 : x13<br> - rs2 : x12<br> - rd : x14<br> - rs2_val == 4294934527<br>                                                                                      |[0x8000025c]:sha512sum1r a4, a3, a2<br> [0x80000260]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0xEFFFFFDF|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 4294950911<br>                                                                                      |[0x80000270]:sha512sum1r a3, a2, a4<br> [0x80000274]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0x77FFFFEF|- rs1 : x14<br> - rs2 : x13<br> - rd : x12<br> - rs2_val == 4294959103<br>                                                                                      |[0x80000284]:sha512sum1r a2, a4, a3<br> [0x80000288]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0xBBFFFFF7|- rs1 : x10<br> - rs2 : x9<br> - rd : x11<br> - rs2_val == 4294963199<br>                                                                                       |[0x80000298]:sha512sum1r a1, a0, s1<br> [0x8000029c]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0xDDFFFFFB|- rs1 : x9<br> - rs2 : x11<br> - rd : x10<br> - rs2_val == 4294965247<br>                                                                                       |[0x800002ac]:sha512sum1r a0, s1, a1<br> [0x800002b0]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0xEEFFFFFD|- rs1 : x11<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 4294966271<br>                                                                                       |[0x800002bc]:sha512sum1r s1, a1, a0<br> [0x800002c0]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0xF77FFFFE|- rs1 : x7<br> - rs2 : x6<br> - rd : x8<br> - rs2_val == 4294966783<br>                                                                                         |[0x800002cc]:sha512sum1r fp, t2, t1<br> [0x800002d0]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0xFBBFFFFF|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 4294967039<br>                                                                                         |[0x800002dc]:sha512sum1r t2, t1, fp<br> [0x800002e0]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0xFDDFFFFF|- rs1 : x8<br> - rs2 : x7<br> - rd : x6<br> - rs2_val == 4294967167<br>                                                                                         |[0x800002ec]:sha512sum1r t1, fp, t2<br> [0x800002f0]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0xFEEFFFFF|- rs1 : x4<br> - rs2 : x3<br> - rd : x5<br> - rs2_val == 4294967231<br>                                                                                         |[0x800002fc]:sha512sum1r t0, tp, gp<br> [0x80000300]:sw t0, 104(ra)<br>    |
|  28|[0x8000227c]<br>0xFF77FFFF|- rs1 : x3<br> - rs2 : x5<br> - rd : x4<br> - rs2_val == 4294967263<br>                                                                                         |[0x80000314]:sha512sum1r tp, gp, t0<br> [0x80000318]:sw tp, 0(t1)<br>      |
|  29|[0x80002280]<br>0xFFBBFFFF|- rs1 : x5<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 4294967279<br>                                                                                         |[0x80000324]:sha512sum1r gp, t0, tp<br> [0x80000328]:sw gp, 4(t1)<br>      |
|  30|[0x80002284]<br>0xFF83C000|- rs1 : x1<br> - rs2 : x0<br> - rd : x2<br>                                                                                                                     |[0x80000334]:sha512sum1r sp, ra, zero<br> [0x80000338]:sw sp, 8(t1)<br>    |
|  31|[0x80002288]<br>0x006D3FFF|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 4294967291<br>                                                                                         |[0x80000344]:sha512sum1r ra, zero, sp<br> [0x80000348]:sw ra, 12(t1)<br>   |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x2<br> - rs2 : x1<br> - rd : x0<br> - rs2_val == 4294967293<br>                                                                                         |[0x80000354]:sha512sum1r zero, sp, ra<br> [0x80000358]:sw zero, 16(t1)<br> |
|  33|[0x80002290]<br>0xFFFBBFFF|- rs2_val == 4294967294<br>                                                                                                                                     |[0x80000364]:sha512sum1r t6, t5, t4<br> [0x80000368]:sw t6, 20(t1)<br>     |
|  34|[0x80002294]<br>0xFFFDDFFF|- rs1_val == 2147483647<br>                                                                                                                                     |[0x80000378]:sha512sum1r t6, t5, t4<br> [0x8000037c]:sw t6, 24(t1)<br>     |
|  35|[0x80002298]<br>0xFFFEEFFF|- rs1_val == 3221225471<br>                                                                                                                                     |[0x8000038c]:sha512sum1r t6, t5, t4<br> [0x80000390]:sw t6, 28(t1)<br>     |
|  36|[0x8000229c]<br>0xFFFF77FF|- rs1_val == 3758096383<br>                                                                                                                                     |[0x800003a0]:sha512sum1r t6, t5, t4<br> [0x800003a4]:sw t6, 32(t1)<br>     |
|  37|[0x800022a0]<br>0xFFFFBBFF|- rs1_val == 4026531839<br>                                                                                                                                     |[0x800003b4]:sha512sum1r t6, t5, t4<br> [0x800003b8]:sw t6, 36(t1)<br>     |
|  38|[0x800022a4]<br>0xFFFFDDFF|- rs1_val == 4160749567<br>                                                                                                                                     |[0x800003c8]:sha512sum1r t6, t5, t4<br> [0x800003cc]:sw t6, 40(t1)<br>     |
|  39|[0x800022a8]<br>0xFFFFEEFF|- rs1_val == 4227858431<br>                                                                                                                                     |[0x800003dc]:sha512sum1r t6, t5, t4<br> [0x800003e0]:sw t6, 44(t1)<br>     |
|  40|[0x800022ac]<br>0xFFFFF77F|- rs1_val == 4261412863<br>                                                                                                                                     |[0x800003f0]:sha512sum1r t6, t5, t4<br> [0x800003f4]:sw t6, 48(t1)<br>     |
|  41|[0x800022b0]<br>0xFFFFFBBF|- rs1_val == 4278190079<br>                                                                                                                                     |[0x80000404]:sha512sum1r t6, t5, t4<br> [0x80000408]:sw t6, 52(t1)<br>     |
|  42|[0x800022b4]<br>0xFFFFFDDF|- rs1_val == 4286578687<br>                                                                                                                                     |[0x80000418]:sha512sum1r t6, t5, t4<br> [0x8000041c]:sw t6, 56(t1)<br>     |
|  43|[0x800022b8]<br>0xFFFFFEEF|- rs1_val == 4290772991<br>                                                                                                                                     |[0x8000042c]:sha512sum1r t6, t5, t4<br> [0x80000430]:sw t6, 60(t1)<br>     |
|  44|[0x800022bc]<br>0xFFFFFF77|- rs1_val == 4292870143<br>                                                                                                                                     |[0x80000440]:sha512sum1r t6, t5, t4<br> [0x80000444]:sw t6, 64(t1)<br>     |
|  45|[0x800022c0]<br>0xFFFFFFBB|- rs1_val == 4293918719<br>                                                                                                                                     |[0x80000454]:sha512sum1r t6, t5, t4<br> [0x80000458]:sw t6, 68(t1)<br>     |
|  46|[0x800022c4]<br>0xFFFFFFDD|- rs1_val == 4294443007<br>                                                                                                                                     |[0x80000468]:sha512sum1r t6, t5, t4<br> [0x8000046c]:sw t6, 72(t1)<br>     |
|  47|[0x800022c8]<br>0xFFFFFFEE|- rs1_val == 4294705151<br>                                                                                                                                     |[0x8000047c]:sha512sum1r t6, t5, t4<br> [0x80000480]:sw t6, 76(t1)<br>     |
|  48|[0x800022cc]<br>0xFFFFFFF7|- rs1_val == 4294836223<br>                                                                                                                                     |[0x80000490]:sha512sum1r t6, t5, t4<br> [0x80000494]:sw t6, 80(t1)<br>     |
|  49|[0x800022d0]<br>0xFFFFFFFB|- rs1_val == 4294901759<br>                                                                                                                                     |[0x800004a4]:sha512sum1r t6, t5, t4<br> [0x800004a8]:sw t6, 84(t1)<br>     |
|  50|[0x800022d4]<br>0xFFFFFFFD|- rs1_val == 4294934527<br>                                                                                                                                     |[0x800004b8]:sha512sum1r t6, t5, t4<br> [0x800004bc]:sw t6, 88(t1)<br>     |
|  51|[0x800022d8]<br>0xFFFFFFFE|- rs1_val == 4294950911<br>                                                                                                                                     |[0x800004cc]:sha512sum1r t6, t5, t4<br> [0x800004d0]:sw t6, 92(t1)<br>     |
|  52|[0x800022dc]<br>0xFFFFFFFF|- rs1_val == 4294959103<br>                                                                                                                                     |[0x800004e0]:sha512sum1r t6, t5, t4<br> [0x800004e4]:sw t6, 96(t1)<br>     |
|  53|[0x800022e0]<br>0xFFFFFFFF|- rs1_val == 4294963199<br>                                                                                                                                     |[0x800004f4]:sha512sum1r t6, t5, t4<br> [0x800004f8]:sw t6, 100(t1)<br>    |
|  54|[0x800022e4]<br>0xFFFFFFFF|- rs1_val == 4294965247<br>                                                                                                                                     |[0x80000508]:sha512sum1r t6, t5, t4<br> [0x8000050c]:sw t6, 104(t1)<br>    |
|  55|[0x800022e8]<br>0xFFFFFFFF|- rs1_val == 4294966271<br>                                                                                                                                     |[0x80000518]:sha512sum1r t6, t5, t4<br> [0x8000051c]:sw t6, 108(t1)<br>    |
|  56|[0x800022ec]<br>0xFFFFFFFF|- rs1_val == 4294966783<br>                                                                                                                                     |[0x80000528]:sha512sum1r t6, t5, t4<br> [0x8000052c]:sw t6, 112(t1)<br>    |
|  57|[0x800022f0]<br>0x7FFFFFFF|- rs1_val == 4294967039<br>                                                                                                                                     |[0x80000538]:sha512sum1r t6, t5, t4<br> [0x8000053c]:sw t6, 116(t1)<br>    |
|  58|[0x800022f4]<br>0xBFFFFFFF|- rs1_val == 4294967167<br>                                                                                                                                     |[0x80000548]:sha512sum1r t6, t5, t4<br> [0x8000054c]:sw t6, 120(t1)<br>    |
|  59|[0x800022f8]<br>0xDFFFFFFF|- rs1_val == 4294967231<br>                                                                                                                                     |[0x80000558]:sha512sum1r t6, t5, t4<br> [0x8000055c]:sw t6, 124(t1)<br>    |
|  60|[0x800022fc]<br>0xEFFFFFFF|- rs1_val == 4294967263<br>                                                                                                                                     |[0x80000568]:sha512sum1r t6, t5, t4<br> [0x8000056c]:sw t6, 128(t1)<br>    |
|  61|[0x80002300]<br>0xF7FFFFFF|- rs1_val == 4294967279<br>                                                                                                                                     |[0x80000578]:sha512sum1r t6, t5, t4<br> [0x8000057c]:sw t6, 132(t1)<br>    |
|  62|[0x80002304]<br>0xFBFFFFFF|- rs1_val == 4294967287<br>                                                                                                                                     |[0x80000588]:sha512sum1r t6, t5, t4<br> [0x8000058c]:sw t6, 136(t1)<br>    |
|  63|[0x80002308]<br>0xFDFFFFFF|- rs1_val == 4294967291<br>                                                                                                                                     |[0x80000598]:sha512sum1r t6, t5, t4<br> [0x8000059c]:sw t6, 140(t1)<br>    |
|  64|[0x8000230c]<br>0xFEFFFFFF|- rs1_val == 4294967293<br>                                                                                                                                     |[0x800005a8]:sha512sum1r t6, t5, t4<br> [0x800005ac]:sw t6, 144(t1)<br>    |
|  65|[0x80002310]<br>0xFF7FFFFF|- rs1_val == 4294967294<br>                                                                                                                                     |[0x800005b8]:sha512sum1r t6, t5, t4<br> [0x800005bc]:sw t6, 148(t1)<br>    |
|  66|[0x80002314]<br>0xFFC3C000|- rs2_val == 2147483648<br>                                                                                                                                     |[0x800005c8]:sha512sum1r t6, t5, t4<br> [0x800005cc]:sw t6, 152(t1)<br>    |
|  67|[0x80002318]<br>0xFFA3C000|- rs2_val == 1073741824<br>                                                                                                                                     |[0x800005d8]:sha512sum1r t6, t5, t4<br> [0x800005dc]:sw t6, 156(t1)<br>    |
|  68|[0x8000231c]<br>0xFF93C000|- rs2_val == 536870912<br>                                                                                                                                      |[0x800005e8]:sha512sum1r t6, t5, t4<br> [0x800005ec]:sw t6, 160(t1)<br>    |
|  69|[0x80002320]<br>0xFF8BC000|- rs2_val == 268435456<br>                                                                                                                                      |[0x800005f8]:sha512sum1r t6, t5, t4<br> [0x800005fc]:sw t6, 164(t1)<br>    |
|  70|[0x80002324]<br>0xFF87C000|- rs2_val == 134217728<br>                                                                                                                                      |[0x80000608]:sha512sum1r t6, t5, t4<br> [0x8000060c]:sw t6, 168(t1)<br>    |
|  71|[0x80002328]<br>0xFF81C000|- rs2_val == 67108864<br>                                                                                                                                       |[0x80000618]:sha512sum1r t6, t5, t4<br> [0x8000061c]:sw t6, 172(t1)<br>    |
|  72|[0x8000232c]<br>0xFF82C000|- rs2_val == 33554432<br>                                                                                                                                       |[0x80000628]:sha512sum1r t6, t5, t4<br> [0x8000062c]:sw t6, 176(t1)<br>    |
|  73|[0x80002330]<br>0xFF834000|- rs2_val == 16777216<br>                                                                                                                                       |[0x80000638]:sha512sum1r t6, t5, t4<br> [0x8000063c]:sw t6, 180(t1)<br>    |
|  74|[0x80002334]<br>0xFF838000|- rs2_val == 8388608<br>                                                                                                                                        |[0x80000648]:sha512sum1r t6, t5, t4<br> [0x8000064c]:sw t6, 184(t1)<br>    |
|  75|[0x80002338]<br>0xFF83E000|- rs2_val == 4194304<br>                                                                                                                                        |[0x80000658]:sha512sum1r t6, t5, t4<br> [0x8000065c]:sw t6, 188(t1)<br>    |
|  76|[0x8000233c]<br>0xFF83D000|- rs2_val == 2097152<br>                                                                                                                                        |[0x80000668]:sha512sum1r t6, t5, t4<br> [0x8000066c]:sw t6, 192(t1)<br>    |
|  77|[0x80002340]<br>0xFF83C800|- rs2_val == 1048576<br>                                                                                                                                        |[0x80000678]:sha512sum1r t6, t5, t4<br> [0x8000067c]:sw t6, 196(t1)<br>    |
|  78|[0x80002344]<br>0xFF83C400|- rs2_val == 524288<br>                                                                                                                                         |[0x80000688]:sha512sum1r t6, t5, t4<br> [0x8000068c]:sw t6, 200(t1)<br>    |
|  79|[0x80002348]<br>0xFF83C200|- rs2_val == 262144<br>                                                                                                                                         |[0x80000698]:sha512sum1r t6, t5, t4<br> [0x8000069c]:sw t6, 204(t1)<br>    |
|  80|[0x8000234c]<br>0x7F83C100|- rs2_val == 131072<br>                                                                                                                                         |[0x800006a8]:sha512sum1r t6, t5, t4<br> [0x800006ac]:sw t6, 208(t1)<br>    |
|  81|[0x80002350]<br>0xBF83C080|- rs2_val == 65536<br>                                                                                                                                          |[0x800006b8]:sha512sum1r t6, t5, t4<br> [0x800006bc]:sw t6, 212(t1)<br>    |
|  82|[0x80002354]<br>0xDF83C040|- rs2_val == 32768<br>                                                                                                                                          |[0x800006c8]:sha512sum1r t6, t5, t4<br> [0x800006cc]:sw t6, 216(t1)<br>    |
|  83|[0x80002358]<br>0xEF83C020|- rs2_val == 16384<br>                                                                                                                                          |[0x800006d8]:sha512sum1r t6, t5, t4<br> [0x800006dc]:sw t6, 220(t1)<br>    |
|  84|[0x8000235c]<br>0x7783C010|- rs2_val == 8192<br>                                                                                                                                           |[0x800006e8]:sha512sum1r t6, t5, t4<br> [0x800006ec]:sw t6, 224(t1)<br>    |
|  85|[0x80002360]<br>0xBB83C008|- rs2_val == 4096<br>                                                                                                                                           |[0x800006f8]:sha512sum1r t6, t5, t4<br> [0x800006fc]:sw t6, 228(t1)<br>    |
|  86|[0x80002364]<br>0x00FC3FFF|- rs1_val == 1<br>                                                                                                                                              |[0x80000708]:sha512sum1r t6, t5, t4<br> [0x8000070c]:sw t6, 232(t1)<br>    |
|  87|[0x80002368]<br>0x92161980|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                                                                    |[0x80000720]:sha512sum1r t6, t5, t4<br> [0x80000724]:sw t6, 236(t1)<br>    |
|  88|[0x8000236c]<br>0x4040F15B|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                                                                    |[0x80000738]:sha512sum1r t6, t5, t4<br> [0x8000073c]:sw t6, 240(t1)<br>    |
|  89|[0x80002370]<br>0x5FB91029|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                                                                    |[0x80000750]:sha512sum1r t6, t5, t4<br> [0x80000754]:sw t6, 244(t1)<br>    |
|  90|[0x80002374]<br>0xE95326F2|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                                                                    |[0x80000768]:sha512sum1r t6, t5, t4<br> [0x8000076c]:sw t6, 248(t1)<br>    |
|  91|[0x80002378]<br>0x34FDAE06|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                                                                    |[0x80000780]:sha512sum1r t6, t5, t4<br> [0x80000784]:sw t6, 252(t1)<br>    |
|  92|[0x8000237c]<br>0x8C7653BC|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                                                                    |[0x80000798]:sha512sum1r t6, t5, t4<br> [0x8000079c]:sw t6, 256(t1)<br>    |
|  93|[0x80002380]<br>0xA7F8904F|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                                                                    |[0x800007b0]:sha512sum1r t6, t5, t4<br> [0x800007b4]:sw t6, 260(t1)<br>    |
|  94|[0x80002384]<br>0x39DE9C28|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                                                                    |[0x800007c8]:sha512sum1r t6, t5, t4<br> [0x800007cc]:sw t6, 264(t1)<br>    |
|  95|[0x80002388]<br>0xAA2454C7|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                                                                    |[0x800007e0]:sha512sum1r t6, t5, t4<br> [0x800007e4]:sw t6, 268(t1)<br>    |
|  96|[0x8000238c]<br>0xCFE25770|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                                                                    |[0x800007f8]:sha512sum1r t6, t5, t4<br> [0x800007fc]:sw t6, 272(t1)<br>    |
|  97|[0x80002390]<br>0xBC0C4FF7|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                                                                    |[0x80000810]:sha512sum1r t6, t5, t4<br> [0x80000814]:sw t6, 276(t1)<br>    |
|  98|[0x80002394]<br>0xF7E218A5|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                                                                    |[0x80000828]:sha512sum1r t6, t5, t4<br> [0x8000082c]:sw t6, 280(t1)<br>    |
|  99|[0x80002398]<br>0xF274AFE0|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                                                                    |[0x80000840]:sha512sum1r t6, t5, t4<br> [0x80000844]:sw t6, 284(t1)<br>    |
| 100|[0x8000239c]<br>0x73277B1B|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                                                                    |[0x80000858]:sha512sum1r t6, t5, t4<br> [0x8000085c]:sw t6, 288(t1)<br>    |
| 101|[0x800023a0]<br>0x87D4DE2E|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                                                                    |[0x80000870]:sha512sum1r t6, t5, t4<br> [0x80000874]:sw t6, 292(t1)<br>    |
| 102|[0x800023a4]<br>0xBABA55DD|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                                                                    |[0x80000888]:sha512sum1r t6, t5, t4<br> [0x8000088c]:sw t6, 296(t1)<br>    |
| 103|[0x800023a8]<br>0x7FDBF617|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                                                                    |[0x800008a0]:sha512sum1r t6, t5, t4<br> [0x800008a4]:sw t6, 300(t1)<br>    |
| 104|[0x800023ac]<br>0xE00B3616|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                                                                    |[0x800008b8]:sha512sum1r t6, t5, t4<br> [0x800008bc]:sw t6, 304(t1)<br>    |
| 105|[0x800023b0]<br>0x23180F81|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                                                                    |[0x800008d0]:sha512sum1r t6, t5, t4<br> [0x800008d4]:sw t6, 308(t1)<br>    |
| 106|[0x800023b4]<br>0xDD83C004|- rs2_val == 2048<br>                                                                                                                                           |[0x800008e4]:sha512sum1r t6, t5, t4<br> [0x800008e8]:sw t6, 312(t1)<br>    |
| 107|[0x800023b8]<br>0xEE83C002|- rs2_val == 1024<br>                                                                                                                                           |[0x800008f4]:sha512sum1r t6, t5, t4<br> [0x800008f8]:sw t6, 316(t1)<br>    |
| 108|[0x800023bc]<br>0xF703C001|- rs2_val == 512<br>                                                                                                                                            |[0x80000904]:sha512sum1r t6, t5, t4<br> [0x80000908]:sw t6, 320(t1)<br>    |
| 109|[0x800023c0]<br>0xFBC3C000|- rs2_val == 256<br>                                                                                                                                            |[0x80000914]:sha512sum1r t6, t5, t4<br> [0x80000918]:sw t6, 324(t1)<br>    |
| 110|[0x800023c4]<br>0xFDA3C000|- rs2_val == 128<br>                                                                                                                                            |[0x80000924]:sha512sum1r t6, t5, t4<br> [0x80000928]:sw t6, 328(t1)<br>    |
| 111|[0x800023c8]<br>0xFE93C000|- rs2_val == 64<br>                                                                                                                                             |[0x80000934]:sha512sum1r t6, t5, t4<br> [0x80000938]:sw t6, 332(t1)<br>    |
| 112|[0x800023cc]<br>0xFF0BC000|- rs2_val == 32<br>                                                                                                                                             |[0x80000944]:sha512sum1r t6, t5, t4<br> [0x80000948]:sw t6, 336(t1)<br>    |
| 113|[0x800023d0]<br>0xFFC7C000|- rs2_val == 16<br>                                                                                                                                             |[0x80000954]:sha512sum1r t6, t5, t4<br> [0x80000958]:sw t6, 340(t1)<br>    |
| 114|[0x800023d4]<br>0xFFA1C000|- rs2_val == 8<br>                                                                                                                                              |[0x80000964]:sha512sum1r t6, t5, t4<br> [0x80000968]:sw t6, 344(t1)<br>    |
| 115|[0x800023d8]<br>0xFF92C000|- rs2_val == 4<br>                                                                                                                                              |[0x80000974]:sha512sum1r t6, t5, t4<br> [0x80000978]:sw t6, 348(t1)<br>    |
| 116|[0x800023dc]<br>0xFF8B4000|- rs2_val == 2<br>                                                                                                                                              |[0x80000984]:sha512sum1r t6, t5, t4<br> [0x80000988]:sw t6, 352(t1)<br>    |
| 117|[0x800023e0]<br>0xFF878000|- rs2_val == 1<br>                                                                                                                                              |[0x80000994]:sha512sum1r t6, t5, t4<br> [0x80000998]:sw t6, 356(t1)<br>    |
| 118|[0x800023e4]<br>0x007E1FFF|- rs1_val == 2147483648<br>                                                                                                                                     |[0x800009a4]:sha512sum1r t6, t5, t4<br> [0x800009a8]:sw t6, 360(t1)<br>    |
| 119|[0x800023e8]<br>0x007D2FFF|- rs1_val == 1073741824<br>                                                                                                                                     |[0x800009b4]:sha512sum1r t6, t5, t4<br> [0x800009b8]:sw t6, 364(t1)<br>    |
| 120|[0x800023ec]<br>0x007CB7FF|- rs1_val == 536870912<br>                                                                                                                                      |[0x800009c4]:sha512sum1r t6, t5, t4<br> [0x800009c8]:sw t6, 368(t1)<br>    |
| 121|[0x800023f0]<br>0x007C7BFF|- rs1_val == 268435456<br>                                                                                                                                      |[0x800009d4]:sha512sum1r t6, t5, t4<br> [0x800009d8]:sw t6, 372(t1)<br>    |
| 122|[0x800023f4]<br>0x007C1DFF|- rs1_val == 134217728<br>                                                                                                                                      |[0x800009e4]:sha512sum1r t6, t5, t4<br> [0x800009e8]:sw t6, 376(t1)<br>    |
| 123|[0x800023f8]<br>0x007C2EFF|- rs1_val == 67108864<br>                                                                                                                                       |[0x800009f4]:sha512sum1r t6, t5, t4<br> [0x800009f8]:sw t6, 380(t1)<br>    |
| 124|[0x800023fc]<br>0x007C377F|- rs1_val == 33554432<br>                                                                                                                                       |[0x80000a04]:sha512sum1r t6, t5, t4<br> [0x80000a08]:sw t6, 384(t1)<br>    |
| 125|[0x80002400]<br>0x007C3BBF|- rs1_val == 16777216<br>                                                                                                                                       |[0x80000a14]:sha512sum1r t6, t5, t4<br> [0x80000a18]:sw t6, 388(t1)<br>    |
| 126|[0x80002404]<br>0x007C3DDF|- rs1_val == 8388608<br>                                                                                                                                        |[0x80000a24]:sha512sum1r t6, t5, t4<br> [0x80000a28]:sw t6, 392(t1)<br>    |
| 127|[0x80002408]<br>0x007C3EEF|- rs1_val == 4194304<br>                                                                                                                                        |[0x80000a34]:sha512sum1r t6, t5, t4<br> [0x80000a38]:sw t6, 396(t1)<br>    |
| 128|[0x8000240c]<br>0x007C3F77|- rs1_val == 2097152<br>                                                                                                                                        |[0x80000a44]:sha512sum1r t6, t5, t4<br> [0x80000a48]:sw t6, 400(t1)<br>    |
| 129|[0x80002410]<br>0x007C3FBB|- rs1_val == 1048576<br>                                                                                                                                        |[0x80000a54]:sha512sum1r t6, t5, t4<br> [0x80000a58]:sw t6, 404(t1)<br>    |
| 130|[0x80002414]<br>0x007C3FDD|- rs1_val == 524288<br>                                                                                                                                         |[0x80000a64]:sha512sum1r t6, t5, t4<br> [0x80000a68]:sw t6, 408(t1)<br>    |
| 131|[0x80002418]<br>0x007C3FEE|- rs1_val == 262144<br>                                                                                                                                         |[0x80000a74]:sha512sum1r t6, t5, t4<br> [0x80000a78]:sw t6, 412(t1)<br>    |
| 132|[0x8000241c]<br>0x007C3FF7|- rs1_val == 131072<br>                                                                                                                                         |[0x80000a84]:sha512sum1r t6, t5, t4<br> [0x80000a88]:sw t6, 416(t1)<br>    |
| 133|[0x80002420]<br>0x007C3FFB|- rs1_val == 65536<br>                                                                                                                                          |[0x80000a94]:sha512sum1r t6, t5, t4<br> [0x80000a98]:sw t6, 420(t1)<br>    |
| 134|[0x80002424]<br>0x007C3FFD|- rs1_val == 32768<br>                                                                                                                                          |[0x80000aa4]:sha512sum1r t6, t5, t4<br> [0x80000aa8]:sw t6, 424(t1)<br>    |
| 135|[0x80002428]<br>0x007C3FFE|- rs1_val == 16384<br>                                                                                                                                          |[0x80000ab4]:sha512sum1r t6, t5, t4<br> [0x80000ab8]:sw t6, 428(t1)<br>    |
| 136|[0x8000242c]<br>0x007C3FFF|- rs1_val == 8192<br>                                                                                                                                           |[0x80000ac4]:sha512sum1r t6, t5, t4<br> [0x80000ac8]:sw t6, 432(t1)<br>    |
| 137|[0x80002430]<br>0x007C3FFF|- rs1_val == 4096<br>                                                                                                                                           |[0x80000ad4]:sha512sum1r t6, t5, t4<br> [0x80000ad8]:sw t6, 436(t1)<br>    |
| 138|[0x80002434]<br>0x007C3FFF|- rs1_val == 2048<br>                                                                                                                                           |[0x80000ae8]:sha512sum1r t6, t5, t4<br> [0x80000aec]:sw t6, 440(t1)<br>    |
| 139|[0x80002438]<br>0x007C3FFF|- rs1_val == 1024<br>                                                                                                                                           |[0x80000af8]:sha512sum1r t6, t5, t4<br> [0x80000afc]:sw t6, 444(t1)<br>    |
| 140|[0x8000243c]<br>0x007C3FFF|- rs1_val == 512<br>                                                                                                                                            |[0x80000b08]:sha512sum1r t6, t5, t4<br> [0x80000b0c]:sw t6, 448(t1)<br>    |
| 141|[0x80002440]<br>0x807C3FFF|- rs1_val == 256<br>                                                                                                                                            |[0x80000b18]:sha512sum1r t6, t5, t4<br> [0x80000b1c]:sw t6, 452(t1)<br>    |
| 142|[0x80002444]<br>0x407C3FFF|- rs1_val == 128<br>                                                                                                                                            |[0x80000b28]:sha512sum1r t6, t5, t4<br> [0x80000b2c]:sw t6, 456(t1)<br>    |
| 143|[0x80002448]<br>0x207C3FFF|- rs1_val == 64<br>                                                                                                                                             |[0x80000b38]:sha512sum1r t6, t5, t4<br> [0x80000b3c]:sw t6, 460(t1)<br>    |
| 144|[0x8000244c]<br>0x107C3FFF|- rs1_val == 32<br>                                                                                                                                             |[0x80000b48]:sha512sum1r t6, t5, t4<br> [0x80000b4c]:sw t6, 464(t1)<br>    |
| 145|[0x80002450]<br>0x087C3FFF|- rs1_val == 16<br>                                                                                                                                             |[0x80000b58]:sha512sum1r t6, t5, t4<br> [0x80000b5c]:sw t6, 468(t1)<br>    |
| 146|[0x80002454]<br>0x047C3FFF|- rs1_val == 8<br>                                                                                                                                              |[0x80000b68]:sha512sum1r t6, t5, t4<br> [0x80000b6c]:sw t6, 472(t1)<br>    |
| 147|[0x80002458]<br>0x027C3FFF|- rs1_val == 4<br>                                                                                                                                              |[0x80000b78]:sha512sum1r t6, t5, t4<br> [0x80000b7c]:sw t6, 476(t1)<br>    |
| 148|[0x8000245c]<br>0x017C3FFF|- rs1_val == 2<br>                                                                                                                                              |[0x80000b88]:sha512sum1r t6, t5, t4<br> [0x80000b8c]:sw t6, 480(t1)<br>    |
| 149|[0x80002460]<br>0xFFDFFFFF|- rs2_val == 3221225471<br>                                                                                                                                     |[0x80000b9c]:sha512sum1r t6, t5, t4<br> [0x80000ba0]:sw t6, 484(t1)<br>    |
| 150|[0x80002464]<br>0xFFEFFFFF|- rs2_val == 3758096383<br>                                                                                                                                     |[0x80000bb0]:sha512sum1r t6, t5, t4<br> [0x80000bb4]:sw t6, 488(t1)<br>    |
| 151|[0x80002468]<br>0xFFDDFFFF|- rs2_val == 4294967287<br>                                                                                                                                     |[0x80000bc0]:sha512sum1r t6, t5, t4<br> [0x80000bc4]:sw t6, 492(t1)<br>    |
