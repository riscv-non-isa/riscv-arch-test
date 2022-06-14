
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
| COV_LABELS                | sha512sig1h      |
| TEST_NAME                 | /home/anku/trials/bcrypto/32/riscof_work_v2/sha512sig1h-01.S/ref.S    |
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
      [0x80000bc8]:sha512sig1h t6, t5, t4
      [0x80000bcc]:sw t6, 500(fp)
 -- Signature Address: 0x80002468 Data: 0x03FFBFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : sha512sig1h
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967293




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bdc]:sha512sig1h t6, t5, t4
      [0x80000be0]:sw t6, 504(fp)
 -- Signature Address: 0x8000246c Data: 0x01FFEFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : sha512sig1h
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 2147483647




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bf0]:sha512sig1h t6, t5, t4
      [0x80000bf4]:sw t6, 508(fp)
 -- Signature Address: 0x80002470 Data: 0x037FFBFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : sha512sig1h
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
|   1|[0x80002210]<br>0x7853EA62|- mnemonic : sha512sig1h<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x31<br> - rs1 == rs2 != rd<br>                       |[0x80000110]:sha512sig1h t6, t5, t5<br> [0x80000114]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0x03FFFFFF|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br>                                                    |[0x80000120]:sha512sig1h t4, t4, t4<br> [0x80000124]:sw t4, 4(ra)<br>      |
|   3|[0x80002218]<br>0x03FFFFFD|- rs1 : x31<br> - rs2 : x28<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 3221225471<br> |[0x80000134]:sha512sig1h t5, t6, t3<br> [0x80000138]:sw t5, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x03FFFFFE|- rs1 : x28<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs2_val == 3758096383<br>                        |[0x80000148]:sha512sig1h s11, t3, s11<br> [0x8000014c]:sw s11, 12(ra)<br>  |
|   5|[0x80002220]<br>0x03FFFFFF|- rs1 : x26<br> - rs2 : x31<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs2_val == 4026531839<br>                        |[0x8000015c]:sha512sig1h s10, s10, t6<br> [0x80000160]:sw s10, 16(ra)<br>  |
|   6|[0x80002224]<br>0x03FFFFFF|- rs1 : x27<br> - rs2 : x26<br> - rd : x28<br> - rs2_val == 4160749567<br>                                               |[0x80000170]:sha512sig1h t3, s11, s10<br> [0x80000174]:sw t3, 20(ra)<br>   |
|   7|[0x80002228]<br>0x03FFFFFF|- rs1 : x24<br> - rs2 : x23<br> - rd : x25<br> - rs2_val == 4227858431<br>                                               |[0x80000184]:sha512sig1h s9, s8, s7<br> [0x80000188]:sw s9, 24(ra)<br>     |
|   8|[0x8000222c]<br>0x03FFFFFF|- rs1 : x23<br> - rs2 : x25<br> - rd : x24<br> - rs2_val == 4261412863<br>                                               |[0x80000198]:sha512sig1h s8, s7, s9<br> [0x8000019c]:sw s8, 28(ra)<br>     |
|   9|[0x80002230]<br>0x03FFFFFF|- rs1 : x25<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 4278190079<br>                                               |[0x800001ac]:sha512sig1h s7, s9, s8<br> [0x800001b0]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0x03FFFFFF|- rs1 : x21<br> - rs2 : x20<br> - rd : x22<br> - rs2_val == 4286578687<br>                                               |[0x800001c0]:sha512sig1h s6, s5, s4<br> [0x800001c4]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0x03FFFFFF|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 4290772991<br>                                               |[0x800001d4]:sha512sig1h s5, s4, s6<br> [0x800001d8]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0x03FFFFFF|- rs1 : x22<br> - rs2 : x21<br> - rd : x20<br> - rs2_val == 4292870143<br>                                               |[0x800001e8]:sha512sig1h s4, s6, s5<br> [0x800001ec]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0x03FFFFFF|- rs1 : x18<br> - rs2 : x17<br> - rd : x19<br> - rs2_val == 4293918719<br>                                               |[0x800001fc]:sha512sig1h s3, s2, a7<br> [0x80000200]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0x03FFFFFF|- rs1 : x17<br> - rs2 : x19<br> - rd : x18<br> - rs2_val == 4294443007<br>                                               |[0x80000210]:sha512sig1h s2, a7, s3<br> [0x80000214]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0x83FFFFFF|- rs1 : x19<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 4294705151<br>                                               |[0x80000224]:sha512sig1h a7, s3, s2<br> [0x80000228]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x43FFFFFF|- rs1 : x15<br> - rs2 : x14<br> - rd : x16<br> - rs2_val == 4294836223<br>                                               |[0x80000238]:sha512sig1h a6, a5, a4<br> [0x8000023c]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0x23FFFFFF|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 4294901759<br>                                               |[0x8000024c]:sha512sig1h a5, a4, a6<br> [0x80000250]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0x13FFFFFF|- rs1 : x16<br> - rs2 : x15<br> - rd : x14<br> - rs2_val == 4294934527<br>                                               |[0x80000260]:sha512sig1h a4, a6, a5<br> [0x80000264]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0x0BFFFFFF|- rs1 : x12<br> - rs2 : x11<br> - rd : x13<br> - rs2_val == 4294950911<br>                                               |[0x80000274]:sha512sig1h a3, a2, a1<br> [0x80000278]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0x07FFFFFF|- rs1 : x11<br> - rs2 : x13<br> - rd : x12<br> - rs2_val == 4294959103<br>                                               |[0x80000288]:sha512sig1h a2, a1, a3<br> [0x8000028c]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0x01FFFFFF|- rs1 : x13<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 4294963199<br>                                               |[0x8000029c]:sha512sig1h a1, a3, a2<br> [0x800002a0]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0x02FFFFFF|- rs1 : x9<br> - rs2 : x8<br> - rd : x10<br> - rs2_val == 4294965247<br>                                                 |[0x800002b0]:sha512sig1h a0, s1, fp<br> [0x800002b4]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0x037FFFFF|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 4294966271<br>                                                 |[0x800002c0]:sha512sig1h s1, fp, a0<br> [0x800002c4]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0x03BFFFFF|- rs1 : x10<br> - rs2 : x9<br> - rd : x8<br> - rs2_val == 4294966783<br>                                                 |[0x800002d0]:sha512sig1h fp, a0, s1<br> [0x800002d4]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0x03DFFFFF|- rs1 : x6<br> - rs2 : x5<br> - rd : x7<br> - rs2_val == 4294967039<br>                                                  |[0x800002e0]:sha512sig1h t2, t1, t0<br> [0x800002e4]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0x03EFFFFF|- rs1 : x5<br> - rs2 : x7<br> - rd : x6<br> - rs2_val == 4294967167<br>                                                  |[0x800002f8]:sha512sig1h t1, t0, t2<br> [0x800002fc]:sw t1, 0(fp)<br>      |
|  27|[0x80002278]<br>0x03F7FFFF|- rs1 : x7<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 4294967231<br>                                                  |[0x80000308]:sha512sig1h t0, t2, t1<br> [0x8000030c]:sw t0, 4(fp)<br>      |
|  28|[0x8000227c]<br>0x03FBFFFF|- rs1 : x3<br> - rs2 : x2<br> - rd : x4<br> - rs2_val == 4294967263<br>                                                  |[0x80000318]:sha512sig1h tp, gp, sp<br> [0x8000031c]:sw tp, 8(fp)<br>      |
|  29|[0x80002280]<br>0x03FDFFFF|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 4294967279<br>                                                  |[0x80000328]:sha512sig1h gp, sp, tp<br> [0x8000032c]:sw gp, 12(fp)<br>     |
|  30|[0x80002284]<br>0x03FEFFFF|- rs1 : x4<br> - rs2 : x3<br> - rd : x2<br> - rs2_val == 4294967287<br>                                                  |[0x80000338]:sha512sig1h sp, tp, gp<br> [0x8000033c]:sw sp, 16(fp)<br>     |
|  31|[0x80002288]<br>0x03FF7FFF|- rs1 : x1<br> - rs2_val == 4294967291<br>                                                                               |[0x80000348]:sha512sig1h t6, ra, t5<br> [0x8000034c]:sw t6, 20(fp)<br>     |
|  32|[0x8000228c]<br>0xFFFFA007|- rs1 : x0<br> - rs2_val == 4294967293<br>                                                                               |[0x80000358]:sha512sig1h t6, zero, t5<br> [0x8000035c]:sw t6, 24(fp)<br>   |
|  33|[0x80002290]<br>0x03FFDFFF|- rs2 : x1<br> - rs2_val == 4294967294<br>                                                                               |[0x80000368]:sha512sig1h t6, t5, ra<br> [0x8000036c]:sw t6, 28(fp)<br>     |
|  34|[0x80002294]<br>0xFE000FF8|- rs2 : x0<br> - rs1_val == 2147483647<br>                                                                               |[0x8000037c]:sha512sig1h t6, t5, zero<br> [0x80000380]:sw t6, 32(fp)<br>   |
|  35|[0x80002298]<br>0x02FFF7FF|- rd : x1<br> - rs1_val == 3221225471<br>                                                                                |[0x80000390]:sha512sig1h ra, t6, t5<br> [0x80000394]:sw ra, 36(fp)<br>     |
|  36|[0x8000229c]<br>0x00000000|- rd : x0<br> - rs1_val == 3758096383<br>                                                                                |[0x800003a4]:sha512sig1h zero, t6, t5<br> [0x800003a8]:sw zero, 40(fp)<br> |
|  37|[0x800022a0]<br>0x83BFFDFF|- rs1_val == 4026531839<br>                                                                                              |[0x800003b8]:sha512sig1h t6, t5, t4<br> [0x800003bc]:sw t6, 44(fp)<br>     |
|  38|[0x800022a4]<br>0x43DFFEFF|- rs1_val == 4160749567<br>                                                                                              |[0x800003cc]:sha512sig1h t6, t5, t4<br> [0x800003d0]:sw t6, 48(fp)<br>     |
|  39|[0x800022a8]<br>0x23EFFF7F|- rs1_val == 4227858431<br>                                                                                              |[0x800003e0]:sha512sig1h t6, t5, t4<br> [0x800003e4]:sw t6, 52(fp)<br>     |
|  40|[0x800022ac]<br>0x13F7FFBF|- rs1_val == 4261412863<br>                                                                                              |[0x800003f4]:sha512sig1h t6, t5, t4<br> [0x800003f8]:sw t6, 56(fp)<br>     |
|  41|[0x800022b0]<br>0x0BFBFFDF|- rs1_val == 4278190079<br>                                                                                              |[0x80000408]:sha512sig1h t6, t5, t4<br> [0x8000040c]:sw t6, 60(fp)<br>     |
|  42|[0x800022b4]<br>0x07FDFFEF|- rs1_val == 4286578687<br>                                                                                              |[0x8000041c]:sha512sig1h t6, t5, t4<br> [0x80000420]:sw t6, 64(fp)<br>     |
|  43|[0x800022b8]<br>0x01FEFFF7|- rs1_val == 4290772991<br>                                                                                              |[0x80000430]:sha512sig1h t6, t5, t4<br> [0x80000434]:sw t6, 68(fp)<br>     |
|  44|[0x800022bc]<br>0x02FF7FFB|- rs1_val == 4292870143<br>                                                                                              |[0x80000444]:sha512sig1h t6, t5, t4<br> [0x80000448]:sw t6, 72(fp)<br>     |
|  45|[0x800022c0]<br>0x037FBFFD|- rs1_val == 4293918719<br>                                                                                              |[0x80000458]:sha512sig1h t6, t5, t4<br> [0x8000045c]:sw t6, 76(fp)<br>     |
|  46|[0x800022c4]<br>0x03BFDFFE|- rs1_val == 4294443007<br>                                                                                              |[0x8000046c]:sha512sig1h t6, t5, t4<br> [0x80000470]:sw t6, 80(fp)<br>     |
|  47|[0x800022c8]<br>0x03DFEFFF|- rs1_val == 4294705151<br>                                                                                              |[0x80000480]:sha512sig1h t6, t5, t4<br> [0x80000484]:sw t6, 84(fp)<br>     |
|  48|[0x800022cc]<br>0x03EFF7FF|- rs1_val == 4294836223<br>                                                                                              |[0x80000494]:sha512sig1h t6, t5, t4<br> [0x80000498]:sw t6, 88(fp)<br>     |
|  49|[0x800022d0]<br>0x03F7FBFF|- rs1_val == 4294901759<br>                                                                                              |[0x800004a8]:sha512sig1h t6, t5, t4<br> [0x800004ac]:sw t6, 92(fp)<br>     |
|  50|[0x800022d4]<br>0x03FBFDFF|- rs1_val == 4294934527<br>                                                                                              |[0x800004bc]:sha512sig1h t6, t5, t4<br> [0x800004c0]:sw t6, 96(fp)<br>     |
|  51|[0x800022d8]<br>0x03FDFEFF|- rs1_val == 4294950911<br>                                                                                              |[0x800004d0]:sha512sig1h t6, t5, t4<br> [0x800004d4]:sw t6, 100(fp)<br>    |
|  52|[0x800022dc]<br>0x03FEFF7F|- rs1_val == 4294959103<br>                                                                                              |[0x800004e4]:sha512sig1h t6, t5, t4<br> [0x800004e8]:sw t6, 104(fp)<br>    |
|  53|[0x800022e0]<br>0x03FF7FBF|- rs1_val == 4294963199<br>                                                                                              |[0x800004f8]:sha512sig1h t6, t5, t4<br> [0x800004fc]:sw t6, 108(fp)<br>    |
|  54|[0x800022e4]<br>0x03FFBFDF|- rs1_val == 4294965247<br>                                                                                              |[0x8000050c]:sha512sig1h t6, t5, t4<br> [0x80000510]:sw t6, 112(fp)<br>    |
|  55|[0x800022e8]<br>0x03FFDFEF|- rs1_val == 4294966271<br>                                                                                              |[0x8000051c]:sha512sig1h t6, t5, t4<br> [0x80000520]:sw t6, 116(fp)<br>    |
|  56|[0x800022ec]<br>0x03FFEFF7|- rs1_val == 4294966783<br>                                                                                              |[0x8000052c]:sha512sig1h t6, t5, t4<br> [0x80000530]:sw t6, 120(fp)<br>    |
|  57|[0x800022f0]<br>0x03FFF7FB|- rs1_val == 4294967039<br>                                                                                              |[0x8000053c]:sha512sig1h t6, t5, t4<br> [0x80000540]:sw t6, 124(fp)<br>    |
|  58|[0x800022f4]<br>0x03FFFBFD|- rs1_val == 4294967167<br>                                                                                              |[0x8000054c]:sha512sig1h t6, t5, t4<br> [0x80000550]:sw t6, 128(fp)<br>    |
|  59|[0x800022f8]<br>0x03FFFDFE|- rs1_val == 4294967231<br>                                                                                              |[0x8000055c]:sha512sig1h t6, t5, t4<br> [0x80000560]:sw t6, 132(fp)<br>    |
|  60|[0x800022fc]<br>0x03FFFEFF|- rs1_val == 4294967263<br>                                                                                              |[0x8000056c]:sha512sig1h t6, t5, t4<br> [0x80000570]:sw t6, 136(fp)<br>    |
|  61|[0x80002300]<br>0x03FFFF7F|- rs1_val == 4294967279<br>                                                                                              |[0x8000057c]:sha512sig1h t6, t5, t4<br> [0x80000580]:sw t6, 140(fp)<br>    |
|  62|[0x80002304]<br>0x03FFFFBF|- rs1_val == 4294967287<br>                                                                                              |[0x8000058c]:sha512sig1h t6, t5, t4<br> [0x80000590]:sw t6, 144(fp)<br>    |
|  63|[0x80002308]<br>0x03FFFFDF|- rs1_val == 4294967291<br>                                                                                              |[0x8000059c]:sha512sig1h t6, t5, t4<br> [0x800005a0]:sw t6, 148(fp)<br>    |
|  64|[0x8000230c]<br>0x03FFFFEF|- rs1_val == 4294967293<br>                                                                                              |[0x800005ac]:sha512sig1h t6, t5, t4<br> [0x800005b0]:sw t6, 152(fp)<br>    |
|  65|[0x80002310]<br>0x03FFFFF7|- rs1_val == 4294967294<br>                                                                                              |[0x800005bc]:sha512sig1h t6, t5, t4<br> [0x800005c0]:sw t6, 156(fp)<br>    |
|  66|[0x80002314]<br>0xFC001FFC|- rs2_val == 2147483648<br>                                                                                              |[0x800005cc]:sha512sig1h t6, t5, t4<br> [0x800005d0]:sw t6, 160(fp)<br>    |
|  67|[0x80002318]<br>0xFC001FFA|- rs2_val == 1073741824<br>                                                                                              |[0x800005dc]:sha512sig1h t6, t5, t4<br> [0x800005e0]:sw t6, 164(fp)<br>    |
|  68|[0x8000231c]<br>0xFC001FF9|- rs2_val == 536870912<br>                                                                                               |[0x800005ec]:sha512sig1h t6, t5, t4<br> [0x800005f0]:sw t6, 168(fp)<br>    |
|  69|[0x80002320]<br>0xFC001FF8|- rs2_val == 268435456<br>                                                                                               |[0x800005fc]:sha512sig1h t6, t5, t4<br> [0x80000600]:sw t6, 172(fp)<br>    |
|  70|[0x80002324]<br>0xFC001FF8|- rs2_val == 134217728<br>                                                                                               |[0x8000060c]:sha512sig1h t6, t5, t4<br> [0x80000610]:sw t6, 176(fp)<br>    |
|  71|[0x80002328]<br>0xFC001FF8|- rs2_val == 67108864<br>                                                                                                |[0x8000061c]:sha512sig1h t6, t5, t4<br> [0x80000620]:sw t6, 180(fp)<br>    |
|  72|[0x8000232c]<br>0xFC001FF8|- rs2_val == 33554432<br>                                                                                                |[0x8000062c]:sha512sig1h t6, t5, t4<br> [0x80000630]:sw t6, 184(fp)<br>    |
|  73|[0x80002330]<br>0xFC001FF8|- rs2_val == 16777216<br>                                                                                                |[0x8000063c]:sha512sig1h t6, t5, t4<br> [0x80000640]:sw t6, 188(fp)<br>    |
|  74|[0x80002334]<br>0xFC001FF8|- rs2_val == 8388608<br>                                                                                                 |[0x8000064c]:sha512sig1h t6, t5, t4<br> [0x80000650]:sw t6, 192(fp)<br>    |
|  75|[0x80002338]<br>0xFC001FF8|- rs2_val == 4194304<br>                                                                                                 |[0x8000065c]:sha512sig1h t6, t5, t4<br> [0x80000660]:sw t6, 196(fp)<br>    |
|  76|[0x8000233c]<br>0xFC001FF8|- rs2_val == 2097152<br>                                                                                                 |[0x8000066c]:sha512sig1h t6, t5, t4<br> [0x80000670]:sw t6, 200(fp)<br>    |
|  77|[0x80002340]<br>0xFC001FF8|- rs2_val == 1048576<br>                                                                                                 |[0x8000067c]:sha512sig1h t6, t5, t4<br> [0x80000680]:sw t6, 204(fp)<br>    |
|  78|[0x80002344]<br>0xFC001FF8|- rs2_val == 524288<br>                                                                                                  |[0x8000068c]:sha512sig1h t6, t5, t4<br> [0x80000690]:sw t6, 208(fp)<br>    |
|  79|[0x80002348]<br>0x7C001FF8|- rs2_val == 262144<br>                                                                                                  |[0x8000069c]:sha512sig1h t6, t5, t4<br> [0x800006a0]:sw t6, 212(fp)<br>    |
|  80|[0x8000234c]<br>0xBC001FF8|- rs2_val == 131072<br>                                                                                                  |[0x800006ac]:sha512sig1h t6, t5, t4<br> [0x800006b0]:sw t6, 216(fp)<br>    |
|  81|[0x80002350]<br>0xDC001FF8|- rs2_val == 65536<br>                                                                                                   |[0x800006bc]:sha512sig1h t6, t5, t4<br> [0x800006c0]:sw t6, 220(fp)<br>    |
|  82|[0x80002354]<br>0xEC001FF8|- rs2_val == 32768<br>                                                                                                   |[0x800006cc]:sha512sig1h t6, t5, t4<br> [0x800006d0]:sw t6, 224(fp)<br>    |
|  83|[0x80002358]<br>0xF4001FF8|- rs2_val == 16384<br>                                                                                                   |[0x800006dc]:sha512sig1h t6, t5, t4<br> [0x800006e0]:sw t6, 228(fp)<br>    |
|  84|[0x8000235c]<br>0xF8001FF8|- rs2_val == 8192<br>                                                                                                    |[0x800006ec]:sha512sig1h t6, t5, t4<br> [0x800006f0]:sw t6, 232(fp)<br>    |
|  85|[0x80002360]<br>0xFE001FF8|- rs2_val == 4096<br>                                                                                                    |[0x800006fc]:sha512sig1h t6, t5, t4<br> [0x80000700]:sw t6, 236(fp)<br>    |
|  86|[0x80002364]<br>0xFFFFE00F|- rs1_val == 1<br>                                                                                                       |[0x8000070c]:sha512sig1h t6, t5, t4<br> [0x80000710]:sw t6, 240(fp)<br>    |
|  87|[0x80002368]<br>0x88FFD081|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                             |[0x80000724]:sha512sig1h t6, t5, t4<br> [0x80000728]:sw t6, 244(fp)<br>    |
|  88|[0x8000236c]<br>0xA3F76EA4|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                             |[0x8000073c]:sha512sig1h t6, t5, t4<br> [0x80000740]:sw t6, 248(fp)<br>    |
|  89|[0x80002370]<br>0xA5F97045|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                             |[0x80000754]:sha512sig1h t6, t5, t4<br> [0x80000758]:sw t6, 252(fp)<br>    |
|  90|[0x80002374]<br>0x6FFF066B|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                             |[0x8000076c]:sha512sig1h t6, t5, t4<br> [0x80000770]:sw t6, 256(fp)<br>    |
|  91|[0x80002378]<br>0x2A20857C|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                             |[0x80000784]:sha512sig1h t6, t5, t4<br> [0x80000788]:sw t6, 260(fp)<br>    |
|  92|[0x8000237c]<br>0x388F6A91|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                             |[0x8000079c]:sha512sig1h t6, t5, t4<br> [0x800007a0]:sw t6, 264(fp)<br>    |
|  93|[0x80002380]<br>0xD99036BC|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                             |[0x800007b4]:sha512sig1h t6, t5, t4<br> [0x800007b8]:sw t6, 268(fp)<br>    |
|  94|[0x80002384]<br>0xE1B254F1|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                             |[0x800007cc]:sha512sig1h t6, t5, t4<br> [0x800007d0]:sw t6, 272(fp)<br>    |
|  95|[0x80002388]<br>0x039178EB|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                             |[0x800007e4]:sha512sig1h t6, t5, t4<br> [0x800007e8]:sw t6, 276(fp)<br>    |
|  96|[0x8000238c]<br>0x479FA9CA|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                             |[0x800007fc]:sha512sig1h t6, t5, t4<br> [0x80000800]:sw t6, 280(fp)<br>    |
|  97|[0x80002390]<br>0x99815DEC|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                             |[0x80000814]:sha512sig1h t6, t5, t4<br> [0x80000818]:sw t6, 284(fp)<br>    |
|  98|[0x80002394]<br>0xEFD5EFE4|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                             |[0x8000082c]:sha512sig1h t6, t5, t4<br> [0x80000830]:sw t6, 288(fp)<br>    |
|  99|[0x80002398]<br>0x4732CA23|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                             |[0x80000844]:sha512sig1h t6, t5, t4<br> [0x80000848]:sw t6, 292(fp)<br>    |
| 100|[0x8000239c]<br>0xCF7EB99D|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                             |[0x8000085c]:sha512sig1h t6, t5, t4<br> [0x80000860]:sw t6, 296(fp)<br>    |
| 101|[0x800023a0]<br>0x1467DB6D|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                             |[0x80000874]:sha512sig1h t6, t5, t4<br> [0x80000878]:sw t6, 300(fp)<br>    |
| 102|[0x800023a4]<br>0x5CC3EFFB|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                             |[0x8000088c]:sha512sig1h t6, t5, t4<br> [0x80000890]:sw t6, 304(fp)<br>    |
| 103|[0x800023a8]<br>0xD29D99D2|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                             |[0x800008a4]:sha512sig1h t6, t5, t4<br> [0x800008a8]:sw t6, 308(fp)<br>    |
| 104|[0x800023ac]<br>0xE204016D|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                             |[0x800008bc]:sha512sig1h t6, t5, t4<br> [0x800008c0]:sw t6, 312(fp)<br>    |
| 105|[0x800023b0]<br>0x930FDA79|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                             |[0x800008d4]:sha512sig1h t6, t5, t4<br> [0x800008d8]:sw t6, 316(fp)<br>    |
| 106|[0x800023b4]<br>0xFD001FF8|- rs2_val == 2048<br>                                                                                                    |[0x800008e8]:sha512sig1h t6, t5, t4<br> [0x800008ec]:sw t6, 320(fp)<br>    |
| 107|[0x800023b8]<br>0xFC801FF8|- rs2_val == 1024<br>                                                                                                    |[0x800008f8]:sha512sig1h t6, t5, t4<br> [0x800008fc]:sw t6, 324(fp)<br>    |
| 108|[0x800023bc]<br>0xFC401FF8|- rs2_val == 512<br>                                                                                                     |[0x80000908]:sha512sig1h t6, t5, t4<br> [0x8000090c]:sw t6, 328(fp)<br>    |
| 109|[0x800023c0]<br>0xFC201FF8|- rs2_val == 256<br>                                                                                                     |[0x80000918]:sha512sig1h t6, t5, t4<br> [0x8000091c]:sw t6, 332(fp)<br>    |
| 110|[0x800023c4]<br>0xFC101FF8|- rs2_val == 128<br>                                                                                                     |[0x80000928]:sha512sig1h t6, t5, t4<br> [0x8000092c]:sw t6, 336(fp)<br>    |
| 111|[0x800023c8]<br>0xFC081FF8|- rs2_val == 64<br>                                                                                                      |[0x80000938]:sha512sig1h t6, t5, t4<br> [0x8000093c]:sw t6, 340(fp)<br>    |
| 112|[0x800023cc]<br>0xFC041FF8|- rs2_val == 32<br>                                                                                                      |[0x80000948]:sha512sig1h t6, t5, t4<br> [0x8000094c]:sw t6, 344(fp)<br>    |
| 113|[0x800023d0]<br>0xFC021FF8|- rs2_val == 16<br>                                                                                                      |[0x80000958]:sha512sig1h t6, t5, t4<br> [0x8000095c]:sw t6, 348(fp)<br>    |
| 114|[0x800023d4]<br>0xFC011FF8|- rs2_val == 8<br>                                                                                                       |[0x80000968]:sha512sig1h t6, t5, t4<br> [0x8000096c]:sw t6, 352(fp)<br>    |
| 115|[0x800023d8]<br>0xFC009FF8|- rs2_val == 4<br>                                                                                                       |[0x80000978]:sha512sig1h t6, t5, t4<br> [0x8000097c]:sw t6, 356(fp)<br>    |
| 116|[0x800023dc]<br>0xFC005FF8|- rs2_val == 2<br>                                                                                                       |[0x80000988]:sha512sig1h t6, t5, t4<br> [0x8000098c]:sw t6, 360(fp)<br>    |
| 117|[0x800023e0]<br>0xFC003FF8|- rs2_val == 1<br>                                                                                                       |[0x80000998]:sha512sig1h t6, t5, t4<br> [0x8000099c]:sw t6, 364(fp)<br>    |
| 118|[0x800023e4]<br>0xFDFFF007|- rs1_val == 2147483648<br>                                                                                              |[0x800009a8]:sha512sig1h t6, t5, t4<br> [0x800009ac]:sw t6, 368(fp)<br>    |
| 119|[0x800023e8]<br>0xFEFFE807|- rs1_val == 1073741824<br>                                                                                              |[0x800009b8]:sha512sig1h t6, t5, t4<br> [0x800009bc]:sw t6, 372(fp)<br>    |
| 120|[0x800023ec]<br>0xFF7FE407|- rs1_val == 536870912<br>                                                                                               |[0x800009c8]:sha512sig1h t6, t5, t4<br> [0x800009cc]:sw t6, 376(fp)<br>    |
| 121|[0x800023f0]<br>0x7FBFE207|- rs1_val == 268435456<br>                                                                                               |[0x800009d8]:sha512sig1h t6, t5, t4<br> [0x800009dc]:sw t6, 380(fp)<br>    |
| 122|[0x800023f4]<br>0xBFDFE107|- rs1_val == 134217728<br>                                                                                               |[0x800009e8]:sha512sig1h t6, t5, t4<br> [0x800009ec]:sw t6, 384(fp)<br>    |
| 123|[0x800023f8]<br>0xDFEFE087|- rs1_val == 67108864<br>                                                                                                |[0x800009f8]:sha512sig1h t6, t5, t4<br> [0x800009fc]:sw t6, 388(fp)<br>    |
| 124|[0x800023fc]<br>0xEFF7E047|- rs1_val == 33554432<br>                                                                                                |[0x80000a08]:sha512sig1h t6, t5, t4<br> [0x80000a0c]:sw t6, 392(fp)<br>    |
| 125|[0x80002400]<br>0xF7FBE027|- rs1_val == 16777216<br>                                                                                                |[0x80000a18]:sha512sig1h t6, t5, t4<br> [0x80000a1c]:sw t6, 396(fp)<br>    |
| 126|[0x80002404]<br>0xFBFDE017|- rs1_val == 8388608<br>                                                                                                 |[0x80000a28]:sha512sig1h t6, t5, t4<br> [0x80000a2c]:sw t6, 400(fp)<br>    |
| 127|[0x80002408]<br>0xFDFEE00F|- rs1_val == 4194304<br>                                                                                                 |[0x80000a38]:sha512sig1h t6, t5, t4<br> [0x80000a3c]:sw t6, 404(fp)<br>    |
| 128|[0x8000240c]<br>0xFEFF6003|- rs1_val == 2097152<br>                                                                                                 |[0x80000a48]:sha512sig1h t6, t5, t4<br> [0x80000a4c]:sw t6, 408(fp)<br>    |
| 129|[0x80002410]<br>0xFF7FA005|- rs1_val == 1048576<br>                                                                                                 |[0x80000a58]:sha512sig1h t6, t5, t4<br> [0x80000a5c]:sw t6, 412(fp)<br>    |
| 130|[0x80002414]<br>0xFFBFC006|- rs1_val == 524288<br>                                                                                                  |[0x80000a68]:sha512sig1h t6, t5, t4<br> [0x80000a6c]:sw t6, 416(fp)<br>    |
| 131|[0x80002418]<br>0xFFDFF007|- rs1_val == 262144<br>                                                                                                  |[0x80000a78]:sha512sig1h t6, t5, t4<br> [0x80000a7c]:sw t6, 420(fp)<br>    |
| 132|[0x8000241c]<br>0xFFEFE807|- rs1_val == 131072<br>                                                                                                  |[0x80000a88]:sha512sig1h t6, t5, t4<br> [0x80000a8c]:sw t6, 424(fp)<br>    |
| 133|[0x80002420]<br>0xFFF7E407|- rs1_val == 65536<br>                                                                                                   |[0x80000a98]:sha512sig1h t6, t5, t4<br> [0x80000a9c]:sw t6, 428(fp)<br>    |
| 134|[0x80002424]<br>0xFFFBE207|- rs1_val == 32768<br>                                                                                                   |[0x80000aa8]:sha512sig1h t6, t5, t4<br> [0x80000aac]:sw t6, 432(fp)<br>    |
| 135|[0x80002428]<br>0xFFFDE107|- rs1_val == 16384<br>                                                                                                   |[0x80000ab8]:sha512sig1h t6, t5, t4<br> [0x80000abc]:sw t6, 436(fp)<br>    |
| 136|[0x8000242c]<br>0xFFFEE087|- rs1_val == 8192<br>                                                                                                    |[0x80000ac8]:sha512sig1h t6, t5, t4<br> [0x80000acc]:sw t6, 440(fp)<br>    |
| 137|[0x80002430]<br>0xFFFF6047|- rs1_val == 4096<br>                                                                                                    |[0x80000ad8]:sha512sig1h t6, t5, t4<br> [0x80000adc]:sw t6, 444(fp)<br>    |
| 138|[0x80002434]<br>0xFFFFA027|- rs1_val == 2048<br>                                                                                                    |[0x80000aec]:sha512sig1h t6, t5, t4<br> [0x80000af0]:sw t6, 448(fp)<br>    |
| 139|[0x80002438]<br>0xFFFFC017|- rs1_val == 1024<br>                                                                                                    |[0x80000afc]:sha512sig1h t6, t5, t4<br> [0x80000b00]:sw t6, 452(fp)<br>    |
| 140|[0x8000243c]<br>0xFFFFF00F|- rs1_val == 512<br>                                                                                                     |[0x80000b0c]:sha512sig1h t6, t5, t4<br> [0x80000b10]:sw t6, 456(fp)<br>    |
| 141|[0x80002440]<br>0xFFFFE803|- rs1_val == 256<br>                                                                                                     |[0x80000b1c]:sha512sig1h t6, t5, t4<br> [0x80000b20]:sw t6, 460(fp)<br>    |
| 142|[0x80002444]<br>0xFFFFE405|- rs1_val == 128<br>                                                                                                     |[0x80000b2c]:sha512sig1h t6, t5, t4<br> [0x80000b30]:sw t6, 464(fp)<br>    |
| 143|[0x80002448]<br>0xFFFFE206|- rs1_val == 64<br>                                                                                                      |[0x80000b3c]:sha512sig1h t6, t5, t4<br> [0x80000b40]:sw t6, 468(fp)<br>    |
| 144|[0x8000244c]<br>0xFFFFE107|- rs1_val == 32<br>                                                                                                      |[0x80000b4c]:sha512sig1h t6, t5, t4<br> [0x80000b50]:sw t6, 472(fp)<br>    |
| 145|[0x80002450]<br>0xFFFFE087|- rs1_val == 16<br>                                                                                                      |[0x80000b5c]:sha512sig1h t6, t5, t4<br> [0x80000b60]:sw t6, 476(fp)<br>    |
| 146|[0x80002454]<br>0xFFFFE047|- rs1_val == 8<br>                                                                                                       |[0x80000b6c]:sha512sig1h t6, t5, t4<br> [0x80000b70]:sw t6, 480(fp)<br>    |
| 147|[0x80002458]<br>0xFFFFE027|- rs1_val == 4<br>                                                                                                       |[0x80000b7c]:sha512sig1h t6, t5, t4<br> [0x80000b80]:sw t6, 484(fp)<br>    |
| 148|[0x8000245c]<br>0xFFFFE017|- rs1_val == 2<br>                                                                                                       |[0x80000b8c]:sha512sig1h t6, t5, t4<br> [0x80000b90]:sw t6, 488(fp)<br>    |
| 149|[0x80002460]<br>0x680D8A65|- rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br>                                                             |[0x80000ba4]:sha512sig1h t6, t5, t4<br> [0x80000ba8]:sw t6, 492(fp)<br>    |
| 150|[0x80002464]<br>0x03FFFFFB|- rs2_val == 2147483647<br>                                                                                              |[0x80000bb8]:sha512sig1h t6, t5, t4<br> [0x80000bbc]:sw t6, 496(fp)<br>    |
