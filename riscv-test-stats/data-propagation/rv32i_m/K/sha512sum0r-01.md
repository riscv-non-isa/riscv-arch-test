
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000c00')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | sha512sum0r      |
| TEST_NAME                 | /home/anku/trials/bcrypto/32/riscof_work_v2/sha512sum0r-01.S/ref.S    |
| Total Number of coverpoints| 250     |
| Total Coverpoints Hit     | 250      |
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
      [0x80000bc8]:sha512sum0r t6, t5, t4
      [0x80000bcc]:sw t6, 500(fp)
 -- Signature Address: 0x80002468 Data: 0xFFFFFFDF
 -- Redundant Coverpoints hit by the op
      - mnemonic : sha512sum0r
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967293




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bdc]:sha512sum0r t6, t5, t4
      [0x80000be0]:sw t6, 504(fp)
 -- Signature Address: 0x8000246c Data: 0xFFFFFFF7
 -- Redundant Coverpoints hit by the op
      - mnemonic : sha512sum0r
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 2147483647




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bf0]:sha512sum0r t6, t5, t4
      [0x80000bf4]:sw t6, 508(fp)
 -- Signature Address: 0x80002470 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : sha512sum0r
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 3758096383






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

|s.no|        signature         |                                                       coverpoints                                                       |                                   code                                    |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
|   1|[0x80002210]<br>0xBBB1793F|- mnemonic : sha512sum0r<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x31<br> - rs1 == rs2 != rd<br>                       |[0x80000110]:sha512sum0r t6, t5, t5<br> [0x80000114]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br>                                                    |[0x80000120]:sha512sum0r t4, t4, t4<br> [0x80000124]:sw t4, 4(ra)<br>      |
|   3|[0x80002218]<br>0xEF7FFFFF|- rs1 : x31<br> - rs2 : x28<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 3221225471<br> |[0x80000134]:sha512sum0r t5, t6, t3<br> [0x80000138]:sw t5, 8(ra)<br>      |
|   4|[0x8000221c]<br>0xF7BFFFFF|- rs1 : x28<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs2_val == 3758096383<br>                        |[0x80000148]:sha512sum0r s11, t3, s11<br> [0x8000014c]:sw s11, 12(ra)<br>  |
|   5|[0x80002220]<br>0xFBDFFFFF|- rs1 : x26<br> - rs2 : x31<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs2_val == 4026531839<br>                        |[0x8000015c]:sha512sum0r s10, s10, t6<br> [0x80000160]:sw s10, 16(ra)<br>  |
|   6|[0x80002224]<br>0x7DEFFFFF|- rs1 : x27<br> - rs2 : x26<br> - rd : x28<br> - rs2_val == 4160749567<br>                                               |[0x80000170]:sha512sum0r t3, s11, s10<br> [0x80000174]:sw t3, 20(ra)<br>   |
|   7|[0x80002228]<br>0xBEF7FFFF|- rs1 : x24<br> - rs2 : x23<br> - rd : x25<br> - rs2_val == 4227858431<br>                                               |[0x80000184]:sha512sum0r s9, s8, s7<br> [0x80000188]:sw s9, 24(ra)<br>     |
|   8|[0x8000222c]<br>0xDF7BFFFF|- rs1 : x23<br> - rs2 : x25<br> - rd : x24<br> - rs2_val == 4261412863<br>                                               |[0x80000198]:sha512sum0r s8, s7, s9<br> [0x8000019c]:sw s8, 28(ra)<br>     |
|   9|[0x80002230]<br>0xEFBDFFFF|- rs1 : x25<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 4278190079<br>                                               |[0x800001ac]:sha512sum0r s7, s9, s8<br> [0x800001b0]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0xF7DEFFFF|- rs1 : x21<br> - rs2 : x20<br> - rd : x22<br> - rs2_val == 4286578687<br>                                               |[0x800001c0]:sha512sum0r s6, s5, s4<br> [0x800001c4]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0xFBEF7FFF|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 4290772991<br>                                               |[0x800001d4]:sha512sum0r s5, s4, s6<br> [0x800001d8]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0xFDF7BFFF|- rs1 : x22<br> - rs2 : x21<br> - rd : x20<br> - rs2_val == 4292870143<br>                                               |[0x800001e8]:sha512sum0r s4, s6, s5<br> [0x800001ec]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0xFEFBDFFF|- rs1 : x18<br> - rs2 : x17<br> - rd : x19<br> - rs2_val == 4293918719<br>                                               |[0x800001fc]:sha512sum0r s3, s2, a7<br> [0x80000200]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0xFF7DEFFF|- rs1 : x17<br> - rs2 : x19<br> - rd : x18<br> - rs2_val == 4294443007<br>                                               |[0x80000210]:sha512sum0r s2, a7, s3<br> [0x80000214]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0xFFBEF7FF|- rs1 : x19<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 4294705151<br>                                               |[0x80000224]:sha512sum0r a7, s3, s2<br> [0x80000228]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0xFFDF7BFF|- rs1 : x15<br> - rs2 : x14<br> - rd : x16<br> - rs2_val == 4294836223<br>                                               |[0x80000238]:sha512sum0r a6, a5, a4<br> [0x8000023c]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0xFFEFBDFF|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 4294901759<br>                                               |[0x8000024c]:sha512sum0r a5, a4, a6<br> [0x80000250]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0xFFF7DEFF|- rs1 : x16<br> - rs2 : x15<br> - rd : x14<br> - rs2_val == 4294934527<br>                                               |[0x80000260]:sha512sum0r a4, a6, a5<br> [0x80000264]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0xFFFBEF7F|- rs1 : x12<br> - rs2 : x11<br> - rd : x13<br> - rs2_val == 4294950911<br>                                               |[0x80000274]:sha512sum0r a3, a2, a1<br> [0x80000278]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0xFFFDF7BF|- rs1 : x11<br> - rs2 : x13<br> - rd : x12<br> - rs2_val == 4294959103<br>                                               |[0x80000288]:sha512sum0r a2, a1, a3<br> [0x8000028c]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0xFFFEFBDF|- rs1 : x13<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 4294963199<br>                                               |[0x8000029c]:sha512sum0r a1, a3, a2<br> [0x800002a0]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0xFFFF7DEF|- rs1 : x9<br> - rs2 : x8<br> - rd : x10<br> - rs2_val == 4294965247<br>                                                 |[0x800002b0]:sha512sum0r a0, s1, fp<br> [0x800002b4]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0xFFFFBEF7|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 4294966271<br>                                                 |[0x800002c0]:sha512sum0r s1, fp, a0<br> [0x800002c4]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0xFFFFDF7B|- rs1 : x10<br> - rs2 : x9<br> - rd : x8<br> - rs2_val == 4294966783<br>                                                 |[0x800002d0]:sha512sum0r fp, a0, s1<br> [0x800002d4]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0xFFFFEFBD|- rs1 : x6<br> - rs2 : x5<br> - rd : x7<br> - rs2_val == 4294967039<br>                                                  |[0x800002e0]:sha512sum0r t2, t1, t0<br> [0x800002e4]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0xFFFFF7DE|- rs1 : x5<br> - rs2 : x7<br> - rd : x6<br> - rs2_val == 4294967167<br>                                                  |[0x800002f8]:sha512sum0r t1, t0, t2<br> [0x800002fc]:sw t1, 0(fp)<br>      |
|  27|[0x80002278]<br>0xFFFFFBEF|- rs1 : x7<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 4294967231<br>                                                  |[0x80000308]:sha512sum0r t0, t2, t1<br> [0x8000030c]:sw t0, 4(fp)<br>      |
|  28|[0x8000227c]<br>0xFFFFFDF7|- rs1 : x3<br> - rs2 : x2<br> - rd : x4<br> - rs2_val == 4294967263<br>                                                  |[0x80000318]:sha512sum0r tp, gp, sp<br> [0x8000031c]:sw tp, 8(fp)<br>      |
|  29|[0x80002280]<br>0xFFFFFEFB|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 4294967279<br>                                                  |[0x80000328]:sha512sum0r gp, sp, tp<br> [0x8000032c]:sw gp, 12(fp)<br>     |
|  30|[0x80002284]<br>0xFFFFFF7D|- rs1 : x4<br> - rs2 : x3<br> - rd : x2<br> - rs2_val == 4294967287<br>                                                  |[0x80000338]:sha512sum0r sp, tp, gp<br> [0x8000033c]:sw sp, 16(fp)<br>     |
|  31|[0x80002288]<br>0xFFFFFFBE|- rs1 : x1<br> - rs2_val == 4294967291<br>                                                                               |[0x80000348]:sha512sum0r t6, ra, t5<br> [0x8000034c]:sw t6, 20(fp)<br>     |
|  32|[0x8000228c]<br>0xC1FFFFD0|- rs1 : x0<br> - rs2_val == 4294967293<br>                                                                               |[0x80000358]:sha512sum0r t6, zero, t5<br> [0x8000035c]:sw t6, 24(fp)<br>   |
|  33|[0x80002290]<br>0xFFFFFFEF|- rs2 : x1<br> - rs2_val == 4294967294<br>                                                                               |[0x80000368]:sha512sum0r t6, t5, ra<br> [0x8000036c]:sw t6, 28(fp)<br>     |
|  34|[0x80002294]<br>0x3E000007|- rs2 : x0<br> - rs1_val == 2147483647<br>                                                                               |[0x8000037c]:sha512sum0r t6, t5, zero<br> [0x80000380]:sw t6, 32(fp)<br>   |
|  35|[0x80002298]<br>0xFFFFFFFB|- rd : x1<br> - rs1_val == 3221225471<br>                                                                                |[0x80000390]:sha512sum0r ra, t6, t5<br> [0x80000394]:sw ra, 36(fp)<br>     |
|  36|[0x8000229c]<br>0x00000000|- rd : x0<br> - rs1_val == 3758096383<br>                                                                                |[0x800003a4]:sha512sum0r zero, t6, t5<br> [0x800003a8]:sw zero, 40(fp)<br> |
|  37|[0x800022a0]<br>0xFFFFFFFE|- rs1_val == 4026531839<br>                                                                                              |[0x800003b8]:sha512sum0r t6, t5, t4<br> [0x800003bc]:sw t6, 44(fp)<br>     |
|  38|[0x800022a4]<br>0xFFFFFFFF|- rs1_val == 4160749567<br>                                                                                              |[0x800003cc]:sha512sum0r t6, t5, t4<br> [0x800003d0]:sw t6, 48(fp)<br>     |
|  39|[0x800022a8]<br>0xFFFFFFFF|- rs1_val == 4227858431<br>                                                                                              |[0x800003e0]:sha512sum0r t6, t5, t4<br> [0x800003e4]:sw t6, 52(fp)<br>     |
|  40|[0x800022ac]<br>0xFFFFFFFF|- rs1_val == 4261412863<br>                                                                                              |[0x800003f4]:sha512sum0r t6, t5, t4<br> [0x800003f8]:sw t6, 56(fp)<br>     |
|  41|[0x800022b0]<br>0xFFFFFFFF|- rs1_val == 4278190079<br>                                                                                              |[0x80000408]:sha512sum0r t6, t5, t4<br> [0x8000040c]:sw t6, 60(fp)<br>     |
|  42|[0x800022b4]<br>0xFFFFFFFF|- rs1_val == 4286578687<br>                                                                                              |[0x8000041c]:sha512sum0r t6, t5, t4<br> [0x80000420]:sw t6, 64(fp)<br>     |
|  43|[0x800022b8]<br>0xFFFFFFFF|- rs1_val == 4290772991<br>                                                                                              |[0x80000430]:sha512sum0r t6, t5, t4<br> [0x80000434]:sw t6, 68(fp)<br>     |
|  44|[0x800022bc]<br>0xFFFFFFFF|- rs1_val == 4292870143<br>                                                                                              |[0x80000444]:sha512sum0r t6, t5, t4<br> [0x80000448]:sw t6, 72(fp)<br>     |
|  45|[0x800022c0]<br>0xFFFFFFFF|- rs1_val == 4293918719<br>                                                                                              |[0x80000458]:sha512sum0r t6, t5, t4<br> [0x8000045c]:sw t6, 76(fp)<br>     |
|  46|[0x800022c4]<br>0xFFFFFFFF|- rs1_val == 4294443007<br>                                                                                              |[0x8000046c]:sha512sum0r t6, t5, t4<br> [0x80000470]:sw t6, 80(fp)<br>     |
|  47|[0x800022c8]<br>0xFFFFFFFF|- rs1_val == 4294705151<br>                                                                                              |[0x80000480]:sha512sum0r t6, t5, t4<br> [0x80000484]:sw t6, 84(fp)<br>     |
|  48|[0x800022cc]<br>0xFFFFFFFF|- rs1_val == 4294836223<br>                                                                                              |[0x80000494]:sha512sum0r t6, t5, t4<br> [0x80000498]:sw t6, 88(fp)<br>     |
|  49|[0x800022d0]<br>0xFFFFFFFF|- rs1_val == 4294901759<br>                                                                                              |[0x800004a8]:sha512sum0r t6, t5, t4<br> [0x800004ac]:sw t6, 92(fp)<br>     |
|  50|[0x800022d4]<br>0xFFFFFFFF|- rs1_val == 4294934527<br>                                                                                              |[0x800004bc]:sha512sum0r t6, t5, t4<br> [0x800004c0]:sw t6, 96(fp)<br>     |
|  51|[0x800022d8]<br>0xFFFFFFFF|- rs1_val == 4294950911<br>                                                                                              |[0x800004d0]:sha512sum0r t6, t5, t4<br> [0x800004d4]:sw t6, 100(fp)<br>    |
|  52|[0x800022dc]<br>0xFFFFFFFF|- rs1_val == 4294959103<br>                                                                                              |[0x800004e4]:sha512sum0r t6, t5, t4<br> [0x800004e8]:sw t6, 104(fp)<br>    |
|  53|[0x800022e0]<br>0xFFFFFFFF|- rs1_val == 4294963199<br>                                                                                              |[0x800004f8]:sha512sum0r t6, t5, t4<br> [0x800004fc]:sw t6, 108(fp)<br>    |
|  54|[0x800022e4]<br>0xFFFFFFFF|- rs1_val == 4294965247<br>                                                                                              |[0x8000050c]:sha512sum0r t6, t5, t4<br> [0x80000510]:sw t6, 112(fp)<br>    |
|  55|[0x800022e8]<br>0xFFFFFFFF|- rs1_val == 4294966271<br>                                                                                              |[0x8000051c]:sha512sum0r t6, t5, t4<br> [0x80000520]:sw t6, 116(fp)<br>    |
|  56|[0x800022ec]<br>0xFFFFFFFF|- rs1_val == 4294966783<br>                                                                                              |[0x8000052c]:sha512sum0r t6, t5, t4<br> [0x80000530]:sw t6, 120(fp)<br>    |
|  57|[0x800022f0]<br>0xFFFFFFFF|- rs1_val == 4294967039<br>                                                                                              |[0x8000053c]:sha512sum0r t6, t5, t4<br> [0x80000540]:sw t6, 124(fp)<br>    |
|  58|[0x800022f4]<br>0xFFFFFFFF|- rs1_val == 4294967167<br>                                                                                              |[0x8000054c]:sha512sum0r t6, t5, t4<br> [0x80000550]:sw t6, 128(fp)<br>    |
|  59|[0x800022f8]<br>0x7FFFFFFF|- rs1_val == 4294967231<br>                                                                                              |[0x8000055c]:sha512sum0r t6, t5, t4<br> [0x80000560]:sw t6, 132(fp)<br>    |
|  60|[0x800022fc]<br>0xBFFFFFFF|- rs1_val == 4294967263<br>                                                                                              |[0x8000056c]:sha512sum0r t6, t5, t4<br> [0x80000570]:sw t6, 136(fp)<br>    |
|  61|[0x80002300]<br>0xDFFFFFFF|- rs1_val == 4294967279<br>                                                                                              |[0x8000057c]:sha512sum0r t6, t5, t4<br> [0x80000580]:sw t6, 140(fp)<br>    |
|  62|[0x80002304]<br>0xEFFFFFFF|- rs1_val == 4294967287<br>                                                                                              |[0x8000058c]:sha512sum0r t6, t5, t4<br> [0x80000590]:sw t6, 144(fp)<br>    |
|  63|[0x80002308]<br>0xF7FFFFFF|- rs1_val == 4294967291<br>                                                                                              |[0x8000059c]:sha512sum0r t6, t5, t4<br> [0x800005a0]:sw t6, 148(fp)<br>    |
|  64|[0x8000230c]<br>0x7BFFFFFF|- rs1_val == 4294967293<br>                                                                                              |[0x800005ac]:sha512sum0r t6, t5, t4<br> [0x800005b0]:sw t6, 152(fp)<br>    |
|  65|[0x80002310]<br>0xBDFFFFFF|- rs1_val == 4294967294<br>                                                                                              |[0x800005bc]:sha512sum0r t6, t5, t4<br> [0x800005c0]:sw t6, 156(fp)<br>    |
|  66|[0x80002314]<br>0x1F00000F|- rs2_val == 2147483648<br>                                                                                              |[0x800005cc]:sha512sum0r t6, t5, t4<br> [0x800005d0]:sw t6, 160(fp)<br>    |
|  67|[0x80002318]<br>0x2E80000F|- rs2_val == 1073741824<br>                                                                                              |[0x800005dc]:sha512sum0r t6, t5, t4<br> [0x800005e0]:sw t6, 164(fp)<br>    |
|  68|[0x8000231c]<br>0x3640000F|- rs2_val == 536870912<br>                                                                                               |[0x800005ec]:sha512sum0r t6, t5, t4<br> [0x800005f0]:sw t6, 168(fp)<br>    |
|  69|[0x80002320]<br>0x3A20000F|- rs2_val == 268435456<br>                                                                                               |[0x800005fc]:sha512sum0r t6, t5, t4<br> [0x80000600]:sw t6, 172(fp)<br>    |
|  70|[0x80002324]<br>0xBC10000F|- rs2_val == 134217728<br>                                                                                               |[0x8000060c]:sha512sum0r t6, t5, t4<br> [0x80000610]:sw t6, 176(fp)<br>    |
|  71|[0x80002328]<br>0x7F08000F|- rs2_val == 67108864<br>                                                                                                |[0x8000061c]:sha512sum0r t6, t5, t4<br> [0x80000620]:sw t6, 180(fp)<br>    |
|  72|[0x8000232c]<br>0x1E84000F|- rs2_val == 33554432<br>                                                                                                |[0x8000062c]:sha512sum0r t6, t5, t4<br> [0x80000630]:sw t6, 184(fp)<br>    |
|  73|[0x80002330]<br>0x2E42000F|- rs2_val == 16777216<br>                                                                                                |[0x8000063c]:sha512sum0r t6, t5, t4<br> [0x80000640]:sw t6, 188(fp)<br>    |
|  74|[0x80002334]<br>0x3621000F|- rs2_val == 8388608<br>                                                                                                 |[0x8000064c]:sha512sum0r t6, t5, t4<br> [0x80000650]:sw t6, 192(fp)<br>    |
|  75|[0x80002338]<br>0x3A10800F|- rs2_val == 4194304<br>                                                                                                 |[0x8000065c]:sha512sum0r t6, t5, t4<br> [0x80000660]:sw t6, 196(fp)<br>    |
|  76|[0x8000233c]<br>0x3C08400F|- rs2_val == 2097152<br>                                                                                                 |[0x8000066c]:sha512sum0r t6, t5, t4<br> [0x80000670]:sw t6, 200(fp)<br>    |
|  77|[0x80002340]<br>0x3F04200F|- rs2_val == 1048576<br>                                                                                                 |[0x8000067c]:sha512sum0r t6, t5, t4<br> [0x80000680]:sw t6, 204(fp)<br>    |
|  78|[0x80002344]<br>0x3E82100F|- rs2_val == 524288<br>                                                                                                  |[0x8000068c]:sha512sum0r t6, t5, t4<br> [0x80000690]:sw t6, 208(fp)<br>    |
|  79|[0x80002348]<br>0x3E41080F|- rs2_val == 262144<br>                                                                                                  |[0x8000069c]:sha512sum0r t6, t5, t4<br> [0x800006a0]:sw t6, 212(fp)<br>    |
|  80|[0x8000234c]<br>0x3E20840F|- rs2_val == 131072<br>                                                                                                  |[0x800006ac]:sha512sum0r t6, t5, t4<br> [0x800006b0]:sw t6, 216(fp)<br>    |
|  81|[0x80002350]<br>0x3E10420F|- rs2_val == 65536<br>                                                                                                   |[0x800006bc]:sha512sum0r t6, t5, t4<br> [0x800006c0]:sw t6, 220(fp)<br>    |
|  82|[0x80002354]<br>0x3E08210F|- rs2_val == 32768<br>                                                                                                   |[0x800006cc]:sha512sum0r t6, t5, t4<br> [0x800006d0]:sw t6, 224(fp)<br>    |
|  83|[0x80002358]<br>0x3E04108F|- rs2_val == 16384<br>                                                                                                   |[0x800006dc]:sha512sum0r t6, t5, t4<br> [0x800006e0]:sw t6, 228(fp)<br>    |
|  84|[0x8000235c]<br>0x3E02084F|- rs2_val == 8192<br>                                                                                                    |[0x800006ec]:sha512sum0r t6, t5, t4<br> [0x800006f0]:sw t6, 232(fp)<br>    |
|  85|[0x80002360]<br>0x3E01042F|- rs2_val == 4096<br>                                                                                                    |[0x800006fc]:sha512sum0r t6, t5, t4<br> [0x80000700]:sw t6, 236(fp)<br>    |
|  86|[0x80002364]<br>0x83FFFFF0|- rs1_val == 1<br>                                                                                                       |[0x8000070c]:sha512sum0r t6, t5, t4<br> [0x80000710]:sw t6, 240(fp)<br>    |
|  87|[0x80002368]<br>0x06F666BB|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                             |[0x80000724]:sha512sum0r t6, t5, t4<br> [0x80000728]:sw t6, 244(fp)<br>    |
|  88|[0x8000236c]<br>0x2CACC664|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                             |[0x8000073c]:sha512sum0r t6, t5, t4<br> [0x80000740]:sw t6, 248(fp)<br>    |
|  89|[0x80002370]<br>0x047F97EE|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                             |[0x80000754]:sha512sum0r t6, t5, t4<br> [0x80000758]:sw t6, 252(fp)<br>    |
|  90|[0x80002374]<br>0x2FC2AB5D|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                             |[0x8000076c]:sha512sum0r t6, t5, t4<br> [0x80000770]:sw t6, 256(fp)<br>    |
|  91|[0x80002378]<br>0x6744A80F|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                             |[0x80000784]:sha512sum0r t6, t5, t4<br> [0x80000788]:sw t6, 260(fp)<br>    |
|  92|[0x8000237c]<br>0xC26D88AA|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                             |[0x8000079c]:sha512sum0r t6, t5, t4<br> [0x800007a0]:sw t6, 264(fp)<br>    |
|  93|[0x80002380]<br>0xCCD3BC16|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                             |[0x800007b4]:sha512sum0r t6, t5, t4<br> [0x800007b8]:sw t6, 268(fp)<br>    |
|  94|[0x80002384]<br>0x6EA85C17|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                             |[0x800007cc]:sha512sum0r t6, t5, t4<br> [0x800007d0]:sw t6, 272(fp)<br>    |
|  95|[0x80002388]<br>0xAD1347ED|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                             |[0x800007e4]:sha512sum0r t6, t5, t4<br> [0x800007e8]:sw t6, 276(fp)<br>    |
|  96|[0x8000238c]<br>0xA78D3E8C|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                             |[0x800007fc]:sha512sum0r t6, t5, t4<br> [0x80000800]:sw t6, 280(fp)<br>    |
|  97|[0x80002390]<br>0x1338C71C|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                             |[0x80000814]:sha512sum0r t6, t5, t4<br> [0x80000818]:sw t6, 284(fp)<br>    |
|  98|[0x80002394]<br>0x59926535|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                             |[0x8000082c]:sha512sum0r t6, t5, t4<br> [0x80000830]:sw t6, 288(fp)<br>    |
|  99|[0x80002398]<br>0xF7628431|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                             |[0x80000844]:sha512sum0r t6, t5, t4<br> [0x80000848]:sw t6, 292(fp)<br>    |
| 100|[0x8000239c]<br>0x4EE976B4|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                             |[0x8000085c]:sha512sum0r t6, t5, t4<br> [0x80000860]:sw t6, 296(fp)<br>    |
| 101|[0x800023a0]<br>0xF83CDD02|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                             |[0x80000874]:sha512sum0r t6, t5, t4<br> [0x80000878]:sw t6, 300(fp)<br>    |
| 102|[0x800023a4]<br>0x8DC915F1|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                             |[0x8000088c]:sha512sum0r t6, t5, t4<br> [0x80000890]:sw t6, 304(fp)<br>    |
| 103|[0x800023a8]<br>0xD4434EBC|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                             |[0x800008a4]:sha512sum0r t6, t5, t4<br> [0x800008a8]:sw t6, 308(fp)<br>    |
| 104|[0x800023ac]<br>0xBDC875F4|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                             |[0x800008bc]:sha512sum0r t6, t5, t4<br> [0x800008c0]:sw t6, 312(fp)<br>    |
| 105|[0x800023b0]<br>0x21B435FB|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                             |[0x800008d4]:sha512sum0r t6, t5, t4<br> [0x800008d8]:sw t6, 316(fp)<br>    |
| 106|[0x800023b4]<br>0x3E00821F|- rs2_val == 2048<br>                                                                                                    |[0x800008e8]:sha512sum0r t6, t5, t4<br> [0x800008ec]:sw t6, 320(fp)<br>    |
| 107|[0x800023b8]<br>0x3E004107|- rs2_val == 1024<br>                                                                                                    |[0x800008f8]:sha512sum0r t6, t5, t4<br> [0x800008fc]:sw t6, 324(fp)<br>    |
| 108|[0x800023bc]<br>0x3E00208B|- rs2_val == 512<br>                                                                                                     |[0x80000908]:sha512sum0r t6, t5, t4<br> [0x8000090c]:sw t6, 328(fp)<br>    |
| 109|[0x800023c0]<br>0x3E00104D|- rs2_val == 256<br>                                                                                                     |[0x80000918]:sha512sum0r t6, t5, t4<br> [0x8000091c]:sw t6, 332(fp)<br>    |
| 110|[0x800023c4]<br>0x3E00082E|- rs2_val == 128<br>                                                                                                     |[0x80000928]:sha512sum0r t6, t5, t4<br> [0x8000092c]:sw t6, 336(fp)<br>    |
| 111|[0x800023c8]<br>0x3E00041F|- rs2_val == 64<br>                                                                                                      |[0x80000938]:sha512sum0r t6, t5, t4<br> [0x8000093c]:sw t6, 340(fp)<br>    |
| 112|[0x800023cc]<br>0x3E000207|- rs2_val == 32<br>                                                                                                      |[0x80000948]:sha512sum0r t6, t5, t4<br> [0x8000094c]:sw t6, 344(fp)<br>    |
| 113|[0x800023d0]<br>0x3E00010B|- rs2_val == 16<br>                                                                                                      |[0x80000958]:sha512sum0r t6, t5, t4<br> [0x8000095c]:sw t6, 348(fp)<br>    |
| 114|[0x800023d4]<br>0x3E00008D|- rs2_val == 8<br>                                                                                                       |[0x80000968]:sha512sum0r t6, t5, t4<br> [0x8000096c]:sw t6, 352(fp)<br>    |
| 115|[0x800023d8]<br>0x3E00004E|- rs2_val == 4<br>                                                                                                       |[0x80000978]:sha512sum0r t6, t5, t4<br> [0x8000097c]:sw t6, 356(fp)<br>    |
| 116|[0x800023dc]<br>0x3E00002F|- rs2_val == 2<br>                                                                                                       |[0x80000988]:sha512sum0r t6, t5, t4<br> [0x8000098c]:sw t6, 360(fp)<br>    |
| 117|[0x800023e0]<br>0x3E00001F|- rs2_val == 1<br>                                                                                                       |[0x80000998]:sha512sum0r t6, t5, t4<br> [0x8000099c]:sw t6, 364(fp)<br>    |
| 118|[0x800023e4]<br>0xC1FFFFF8|- rs1_val == 2147483648<br>                                                                                              |[0x800009a8]:sha512sum0r t6, t5, t4<br> [0x800009ac]:sw t6, 368(fp)<br>    |
| 119|[0x800023e8]<br>0xC1FFFFF4|- rs1_val == 1073741824<br>                                                                                              |[0x800009b8]:sha512sum0r t6, t5, t4<br> [0x800009bc]:sw t6, 372(fp)<br>    |
| 120|[0x800023ec]<br>0xC1FFFFF2|- rs1_val == 536870912<br>                                                                                               |[0x800009c8]:sha512sum0r t6, t5, t4<br> [0x800009cc]:sw t6, 376(fp)<br>    |
| 121|[0x800023f0]<br>0xC1FFFFF1|- rs1_val == 268435456<br>                                                                                               |[0x800009d8]:sha512sum0r t6, t5, t4<br> [0x800009dc]:sw t6, 380(fp)<br>    |
| 122|[0x800023f4]<br>0xC1FFFFF0|- rs1_val == 134217728<br>                                                                                               |[0x800009e8]:sha512sum0r t6, t5, t4<br> [0x800009ec]:sw t6, 384(fp)<br>    |
| 123|[0x800023f8]<br>0xC1FFFFF0|- rs1_val == 67108864<br>                                                                                                |[0x800009f8]:sha512sum0r t6, t5, t4<br> [0x800009fc]:sw t6, 388(fp)<br>    |
| 124|[0x800023fc]<br>0xC1FFFFF0|- rs1_val == 33554432<br>                                                                                                |[0x80000a08]:sha512sum0r t6, t5, t4<br> [0x80000a0c]:sw t6, 392(fp)<br>    |
| 125|[0x80002400]<br>0xC1FFFFF0|- rs1_val == 16777216<br>                                                                                                |[0x80000a18]:sha512sum0r t6, t5, t4<br> [0x80000a1c]:sw t6, 396(fp)<br>    |
| 126|[0x80002404]<br>0xC1FFFFF0|- rs1_val == 8388608<br>                                                                                                 |[0x80000a28]:sha512sum0r t6, t5, t4<br> [0x80000a2c]:sw t6, 400(fp)<br>    |
| 127|[0x80002408]<br>0xC1FFFFF0|- rs1_val == 4194304<br>                                                                                                 |[0x80000a38]:sha512sum0r t6, t5, t4<br> [0x80000a3c]:sw t6, 404(fp)<br>    |
| 128|[0x8000240c]<br>0xC1FFFFF0|- rs1_val == 2097152<br>                                                                                                 |[0x80000a48]:sha512sum0r t6, t5, t4<br> [0x80000a4c]:sw t6, 408(fp)<br>    |
| 129|[0x80002410]<br>0xC1FFFFF0|- rs1_val == 1048576<br>                                                                                                 |[0x80000a58]:sha512sum0r t6, t5, t4<br> [0x80000a5c]:sw t6, 412(fp)<br>    |
| 130|[0x80002414]<br>0xC1FFFFF0|- rs1_val == 524288<br>                                                                                                  |[0x80000a68]:sha512sum0r t6, t5, t4<br> [0x80000a6c]:sw t6, 416(fp)<br>    |
| 131|[0x80002418]<br>0xC1FFFFF0|- rs1_val == 262144<br>                                                                                                  |[0x80000a78]:sha512sum0r t6, t5, t4<br> [0x80000a7c]:sw t6, 420(fp)<br>    |
| 132|[0x8000241c]<br>0xC1FFFFF0|- rs1_val == 131072<br>                                                                                                  |[0x80000a88]:sha512sum0r t6, t5, t4<br> [0x80000a8c]:sw t6, 424(fp)<br>    |
| 133|[0x80002420]<br>0xC1FFFFF0|- rs1_val == 65536<br>                                                                                                   |[0x80000a98]:sha512sum0r t6, t5, t4<br> [0x80000a9c]:sw t6, 428(fp)<br>    |
| 134|[0x80002424]<br>0xC1FFFFF0|- rs1_val == 32768<br>                                                                                                   |[0x80000aa8]:sha512sum0r t6, t5, t4<br> [0x80000aac]:sw t6, 432(fp)<br>    |
| 135|[0x80002428]<br>0xC1FFFFF0|- rs1_val == 16384<br>                                                                                                   |[0x80000ab8]:sha512sum0r t6, t5, t4<br> [0x80000abc]:sw t6, 436(fp)<br>    |
| 136|[0x8000242c]<br>0xC1FFFFF0|- rs1_val == 8192<br>                                                                                                    |[0x80000ac8]:sha512sum0r t6, t5, t4<br> [0x80000acc]:sw t6, 440(fp)<br>    |
| 137|[0x80002430]<br>0xC1FFFFF0|- rs1_val == 4096<br>                                                                                                    |[0x80000ad8]:sha512sum0r t6, t5, t4<br> [0x80000adc]:sw t6, 444(fp)<br>    |
| 138|[0x80002434]<br>0xC1FFFFF0|- rs1_val == 2048<br>                                                                                                    |[0x80000aec]:sha512sum0r t6, t5, t4<br> [0x80000af0]:sw t6, 448(fp)<br>    |
| 139|[0x80002438]<br>0xC1FFFFF0|- rs1_val == 1024<br>                                                                                                    |[0x80000afc]:sha512sum0r t6, t5, t4<br> [0x80000b00]:sw t6, 452(fp)<br>    |
| 140|[0x8000243c]<br>0xC1FFFFF0|- rs1_val == 512<br>                                                                                                     |[0x80000b0c]:sha512sum0r t6, t5, t4<br> [0x80000b10]:sw t6, 456(fp)<br>    |
| 141|[0x80002440]<br>0xC1FFFFF0|- rs1_val == 256<br>                                                                                                     |[0x80000b1c]:sha512sum0r t6, t5, t4<br> [0x80000b20]:sw t6, 460(fp)<br>    |
| 142|[0x80002444]<br>0xC1FFFFF0|- rs1_val == 128<br>                                                                                                     |[0x80000b2c]:sha512sum0r t6, t5, t4<br> [0x80000b30]:sw t6, 464(fp)<br>    |
| 143|[0x80002448]<br>0x41FFFFF0|- rs1_val == 64<br>                                                                                                      |[0x80000b3c]:sha512sum0r t6, t5, t4<br> [0x80000b40]:sw t6, 468(fp)<br>    |
| 144|[0x8000244c]<br>0x81FFFFF0|- rs1_val == 32<br>                                                                                                      |[0x80000b4c]:sha512sum0r t6, t5, t4<br> [0x80000b50]:sw t6, 472(fp)<br>    |
| 145|[0x80002450]<br>0xE1FFFFF0|- rs1_val == 16<br>                                                                                                      |[0x80000b5c]:sha512sum0r t6, t5, t4<br> [0x80000b60]:sw t6, 476(fp)<br>    |
| 146|[0x80002454]<br>0xD1FFFFF0|- rs1_val == 8<br>                                                                                                       |[0x80000b6c]:sha512sum0r t6, t5, t4<br> [0x80000b70]:sw t6, 480(fp)<br>    |
| 147|[0x80002458]<br>0xC9FFFFF0|- rs1_val == 4<br>                                                                                                       |[0x80000b7c]:sha512sum0r t6, t5, t4<br> [0x80000b80]:sw t6, 484(fp)<br>    |
| 148|[0x8000245c]<br>0x45FFFFF0|- rs1_val == 2<br>                                                                                                       |[0x80000b8c]:sha512sum0r t6, t5, t4<br> [0x80000b90]:sw t6, 488(fp)<br>    |
| 149|[0x80002460]<br>0x83FF47B6|- rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br>                                                             |[0x80000ba4]:sha512sum0r t6, t5, t4<br> [0x80000ba8]:sw t6, 492(fp)<br>    |
| 150|[0x80002464]<br>0xDEFFFFFF|- rs2_val == 2147483647<br>                                                                                              |[0x80000bb8]:sha512sum0r t6, t5, t4<br> [0x80000bbc]:sw t6, 496(fp)<br>    |
