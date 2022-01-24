
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005d0')]      |
| SIG_REGION                | [('0x80002210', '0x80002370', '88 words')]      |
| COV_LABELS                | sext.b      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/32/riscof_dir/sext.b-01.S/ref.S    |
| Total Number of coverpoints| 157     |
| Total Coverpoints Hit     | 152      |
| Total Signature Updates   | 87      |
| STAT1                     | 86      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005bc]:sext.b t6, t5
      [0x800005c0]:sw t6, 232(t0)
 -- Signature Address: 0x80002368 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : sext.b
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

|s.no|        signature         |                                      coverpoints                                       |                               code                               |
|---:|--------------------------|----------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : sext.b<br> - rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - rs1_val == 0<br> |[0x80000104]:sext.b t6, t6<br> [0x80000108]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0xFFFFFFFF|- rs1 : x29<br> - rd : x30<br> - rs1 != rd<br> - rs1_val == 2147483647<br>              |[0x80000114]:sext.b t5, t4<br> [0x80000118]:sw t5, 4(ra)<br>      |
|   3|[0x80002218]<br>0xFFFFFFFF|- rs1 : x30<br> - rd : x29<br> - rs1_val == 3221225471<br>                              |[0x80000124]:sext.b t4, t5<br> [0x80000128]:sw t4, 8(ra)<br>      |
|   4|[0x8000221c]<br>0xFFFFFFFF|- rs1 : x27<br> - rd : x28<br> - rs1_val == 3758096383<br>                              |[0x80000134]:sext.b t3, s11<br> [0x80000138]:sw t3, 12(ra)<br>    |
|   5|[0x80002220]<br>0xFFFFFFFF|- rs1 : x28<br> - rd : x27<br> - rs1_val == 4026531839<br>                              |[0x80000144]:sext.b s11, t3<br> [0x80000148]:sw s11, 16(ra)<br>   |
|   6|[0x80002224]<br>0xFFFFFFFF|- rs1 : x25<br> - rd : x26<br> - rs1_val == 4160749567<br>                              |[0x80000154]:sext.b s10, s9<br> [0x80000158]:sw s10, 20(ra)<br>   |
|   7|[0x80002228]<br>0xFFFFFFFF|- rs1 : x26<br> - rd : x25<br> - rs1_val == 4227858431<br>                              |[0x80000164]:sext.b s9, s10<br> [0x80000168]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0xFFFFFFFF|- rs1 : x23<br> - rd : x24<br> - rs1_val == 4261412863<br>                              |[0x80000174]:sext.b s8, s7<br> [0x80000178]:sw s8, 28(ra)<br>     |
|   9|[0x80002230]<br>0xFFFFFFFF|- rs1 : x24<br> - rd : x23<br> - rs1_val == 4278190079<br>                              |[0x80000184]:sext.b s7, s8<br> [0x80000188]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0xFFFFFFFF|- rs1 : x21<br> - rd : x22<br> - rs1_val == 4286578687<br>                              |[0x80000194]:sext.b s6, s5<br> [0x80000198]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0xFFFFFFFF|- rs1 : x22<br> - rd : x21<br> - rs1_val == 4290772991<br>                              |[0x800001a4]:sext.b s5, s6<br> [0x800001a8]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0xFFFFFFFF|- rs1 : x19<br> - rd : x20<br> - rs1_val == 4292870143<br>                              |[0x800001b4]:sext.b s4, s3<br> [0x800001b8]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0xFFFFFFFF|- rs1 : x20<br> - rd : x19<br> - rs1_val == 4293918719<br>                              |[0x800001c4]:sext.b s3, s4<br> [0x800001c8]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0xFFFFFFFF|- rs1 : x17<br> - rd : x18<br> - rs1_val == 4294443007<br>                              |[0x800001d4]:sext.b s2, a7<br> [0x800001d8]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0xFFFFFFFF|- rs1 : x18<br> - rd : x17<br> - rs1_val == 4294705151<br>                              |[0x800001e4]:sext.b a7, s2<br> [0x800001e8]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0xFFFFFFFF|- rs1 : x15<br> - rd : x16<br> - rs1_val == 4294836223<br>                              |[0x800001f4]:sext.b a6, a5<br> [0x800001f8]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0xFFFFFFFF|- rs1 : x16<br> - rd : x15<br> - rs1_val == 4294901759<br>                              |[0x80000204]:sext.b a5, a6<br> [0x80000208]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0xFFFFFFFF|- rs1 : x13<br> - rd : x14<br> - rs1_val == 4294934527<br>                              |[0x80000214]:sext.b a4, a3<br> [0x80000218]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0xFFFFFFFF|- rs1 : x14<br> - rd : x13<br> - rs1_val == 4294950911<br>                              |[0x80000224]:sext.b a3, a4<br> [0x80000228]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0xFFFFFFFF|- rs1 : x11<br> - rd : x12<br> - rs1_val == 4294959103<br>                              |[0x80000234]:sext.b a2, a1<br> [0x80000238]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0xFFFFFFFF|- rs1 : x12<br> - rd : x11<br> - rs1_val == 4294963199<br>                              |[0x80000244]:sext.b a1, a2<br> [0x80000248]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0xFFFFFFFF|- rs1 : x9<br> - rd : x10<br> - rs1_val == 4294965247<br>                               |[0x80000254]:sext.b a0, s1<br> [0x80000258]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0xFFFFFFFF|- rs1 : x10<br> - rd : x9<br> - rs1_val == 4294966271<br>                               |[0x80000260]:sext.b s1, a0<br> [0x80000264]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0xFFFFFFFF|- rs1 : x7<br> - rd : x8<br> - rs1_val == 4294966783<br>                                |[0x8000026c]:sext.b fp, t2<br> [0x80000270]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0xFFFFFFFF|- rs1 : x8<br> - rd : x7<br> - rs1_val == 4294967039<br>                                |[0x80000278]:sext.b t2, fp<br> [0x8000027c]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0x0000007F|- rs1 : x5<br> - rd : x6<br> - rs1_val == 4294967167<br>                                |[0x80000284]:sext.b t1, t0<br> [0x80000288]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0xFFFFFFBF|- rs1 : x6<br> - rd : x5<br> - rs1_val == 4294967231<br>                                |[0x80000290]:sext.b t0, t1<br> [0x80000294]:sw t0, 104(ra)<br>    |
|  28|[0x8000227c]<br>0xFFFFFFDF|- rs1 : x3<br> - rd : x4<br> - rs1_val == 4294967263<br>                                |[0x8000029c]:sext.b tp, gp<br> [0x800002a0]:sw tp, 108(ra)<br>    |
|  29|[0x80002280]<br>0xFFFFFFEF|- rs1 : x4<br> - rd : x3<br> - rs1_val == 4294967279<br>                                |[0x800002b0]:sext.b gp, tp<br> [0x800002b4]:sw gp, 0(t0)<br>      |
|  30|[0x80002284]<br>0xFFFFFFF7|- rs1 : x1<br> - rd : x2<br> - rs1_val == 4294967287<br>                                |[0x800002bc]:sext.b sp, ra<br> [0x800002c0]:sw sp, 4(t0)<br>      |
|  31|[0x80002288]<br>0xFFFFFFFB|- rs1 : x2<br> - rd : x1<br> - rs1_val == 4294967291<br>                                |[0x800002c8]:sext.b ra, sp<br> [0x800002cc]:sw ra, 8(t0)<br>      |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x0<br>                                                                          |[0x800002d4]:sext.b t6, zero<br> [0x800002d8]:sw t6, 12(t0)<br>   |
|  33|[0x80002290]<br>0x00000000|- rd : x0<br> - rs1_val == 4294967294<br>                                               |[0x800002e0]:sext.b zero, t6<br> [0x800002e4]:sw zero, 16(t0)<br> |
|  34|[0x80002294]<br>0x00000000|- rs1_val == 2147483648<br>                                                             |[0x800002ec]:sext.b t6, t5<br> [0x800002f0]:sw t6, 20(t0)<br>     |
|  35|[0x80002298]<br>0x00000000|- rs1_val == 1073741824<br>                                                             |[0x800002f8]:sext.b t6, t5<br> [0x800002fc]:sw t6, 24(t0)<br>     |
|  36|[0x8000229c]<br>0x00000000|- rs1_val == 536870912<br>                                                              |[0x80000304]:sext.b t6, t5<br> [0x80000308]:sw t6, 28(t0)<br>     |
|  37|[0x800022a0]<br>0x00000000|- rs1_val == 268435456<br>                                                              |[0x80000310]:sext.b t6, t5<br> [0x80000314]:sw t6, 32(t0)<br>     |
|  38|[0x800022a4]<br>0x00000000|- rs1_val == 134217728<br>                                                              |[0x8000031c]:sext.b t6, t5<br> [0x80000320]:sw t6, 36(t0)<br>     |
|  39|[0x800022a8]<br>0x00000000|- rs1_val == 67108864<br>                                                               |[0x80000328]:sext.b t6, t5<br> [0x8000032c]:sw t6, 40(t0)<br>     |
|  40|[0x800022ac]<br>0x00000000|- rs1_val == 33554432<br>                                                               |[0x80000334]:sext.b t6, t5<br> [0x80000338]:sw t6, 44(t0)<br>     |
|  41|[0x800022b0]<br>0x00000000|- rs1_val == 16777216<br>                                                               |[0x80000340]:sext.b t6, t5<br> [0x80000344]:sw t6, 48(t0)<br>     |
|  42|[0x800022b4]<br>0x00000000|- rs1_val == 8388608<br>                                                                |[0x8000034c]:sext.b t6, t5<br> [0x80000350]:sw t6, 52(t0)<br>     |
|  43|[0x800022b8]<br>0x00000000|- rs1_val == 4194304<br>                                                                |[0x80000358]:sext.b t6, t5<br> [0x8000035c]:sw t6, 56(t0)<br>     |
|  44|[0x800022bc]<br>0x00000000|- rs1_val == 2097152<br>                                                                |[0x80000364]:sext.b t6, t5<br> [0x80000368]:sw t6, 60(t0)<br>     |
|  45|[0x800022c0]<br>0x00000000|- rs1_val == 1048576<br>                                                                |[0x80000370]:sext.b t6, t5<br> [0x80000374]:sw t6, 64(t0)<br>     |
|  46|[0x800022c4]<br>0x00000000|- rs1_val == 524288<br>                                                                 |[0x8000037c]:sext.b t6, t5<br> [0x80000380]:sw t6, 68(t0)<br>     |
|  47|[0x800022c8]<br>0x00000000|- rs1_val == 262144<br>                                                                 |[0x80000388]:sext.b t6, t5<br> [0x8000038c]:sw t6, 72(t0)<br>     |
|  48|[0x800022cc]<br>0x00000000|- rs1_val == 131072<br>                                                                 |[0x80000394]:sext.b t6, t5<br> [0x80000398]:sw t6, 76(t0)<br>     |
|  49|[0x800022d0]<br>0x00000000|- rs1_val == 65536<br>                                                                  |[0x800003a0]:sext.b t6, t5<br> [0x800003a4]:sw t6, 80(t0)<br>     |
|  50|[0x800022d4]<br>0x00000000|- rs1_val == 32768<br>                                                                  |[0x800003ac]:sext.b t6, t5<br> [0x800003b0]:sw t6, 84(t0)<br>     |
|  51|[0x800022d8]<br>0x00000000|- rs1_val == 16384<br>                                                                  |[0x800003b8]:sext.b t6, t5<br> [0x800003bc]:sw t6, 88(t0)<br>     |
|  52|[0x800022dc]<br>0x00000000|- rs1_val == 8192<br>                                                                   |[0x800003c4]:sext.b t6, t5<br> [0x800003c8]:sw t6, 92(t0)<br>     |
|  53|[0x800022e0]<br>0x00000000|- rs1_val == 4096<br>                                                                   |[0x800003d0]:sext.b t6, t5<br> [0x800003d4]:sw t6, 96(t0)<br>     |
|  54|[0x800022e4]<br>0x00000000|- rs1_val == 2048<br>                                                                   |[0x800003e0]:sext.b t6, t5<br> [0x800003e4]:sw t6, 100(t0)<br>    |
|  55|[0x800022e8]<br>0x00000001|- rs1_val == 1<br>                                                                      |[0x800003ec]:sext.b t6, t5<br> [0x800003f0]:sw t6, 104(t0)<br>    |
|  56|[0x800022ec]<br>0xFFFFFFFA|- rs1_val == 0x3150e5fa #nosat<br>                                                      |[0x800003fc]:sext.b t6, t5<br> [0x80000400]:sw t6, 108(t0)<br>    |
|  57|[0x800022f0]<br>0x00000025|- rs1_val == 0x90efb625 #nosat<br>                                                      |[0x8000040c]:sext.b t6, t5<br> [0x80000410]:sw t6, 112(t0)<br>    |
|  58|[0x800022f4]<br>0x00000073|- rs1_val == 0x65408c73 #nosat<br>                                                      |[0x8000041c]:sext.b t6, t5<br> [0x80000420]:sw t6, 116(t0)<br>    |
|  59|[0x800022f8]<br>0xFFFFFFCA|- rs1_val == 0x1fc493ca #nosat<br>                                                      |[0x8000042c]:sext.b t6, t5<br> [0x80000430]:sw t6, 120(t0)<br>    |
|  60|[0x800022fc]<br>0xFFFFFFF8|- rs1_val == 0xd169a3f8 #nosat<br>                                                      |[0x8000043c]:sext.b t6, t5<br> [0x80000440]:sw t6, 124(t0)<br>    |
|  61|[0x80002300]<br>0x0000002A|- rs1_val == 0x8e2eac2a #nosat<br>                                                      |[0x8000044c]:sext.b t6, t5<br> [0x80000450]:sw t6, 128(t0)<br>    |
|  62|[0x80002304]<br>0x00000007|- rs1_val == 0xf4c30307 #nosat<br>                                                      |[0x8000045c]:sext.b t6, t5<br> [0x80000460]:sw t6, 132(t0)<br>    |
|  63|[0x80002308]<br>0x0000007F|- rs1_val == 0x35f9377f #nosat<br>                                                      |[0x8000046c]:sext.b t6, t5<br> [0x80000470]:sw t6, 136(t0)<br>    |
|  64|[0x8000230c]<br>0x00000076|- rs1_val == 0xa0569d76 #nosat<br>                                                      |[0x8000047c]:sext.b t6, t5<br> [0x80000480]:sw t6, 140(t0)<br>    |
|  65|[0x80002310]<br>0xFFFFFFAA|- rs1_val == 0x58d548aa #nosat<br>                                                      |[0x8000048c]:sext.b t6, t5<br> [0x80000490]:sw t6, 144(t0)<br>    |
|  66|[0x80002314]<br>0xFFFFFFC7|- rs1_val == 0x2daf9ac7 #nosat<br>                                                      |[0x8000049c]:sext.b t6, t5<br> [0x800004a0]:sw t6, 148(t0)<br>    |
|  67|[0x80002318]<br>0x0000006E|- rs1_val == 0x55d98c6e #nosat<br>                                                      |[0x800004ac]:sext.b t6, t5<br> [0x800004b0]:sw t6, 152(t0)<br>    |
|  68|[0x8000231c]<br>0x0000004C|- rs1_val == 0xf273b44c #nosat<br>                                                      |[0x800004bc]:sext.b t6, t5<br> [0x800004c0]:sw t6, 156(t0)<br>    |
|  69|[0x80002320]<br>0xFFFFFF87|- rs1_val == 0x74b8de87 #nosat<br>                                                      |[0x800004cc]:sext.b t6, t5<br> [0x800004d0]:sw t6, 160(t0)<br>    |
|  70|[0x80002324]<br>0x00000030|- rs1_val == 0x886c3a30 #nosat<br>                                                      |[0x800004dc]:sext.b t6, t5<br> [0x800004e0]:sw t6, 164(t0)<br>    |
|  71|[0x80002328]<br>0x0000000C|- rs1_val == 0xccce240c #nosat<br>                                                      |[0x800004ec]:sext.b t6, t5<br> [0x800004f0]:sw t6, 168(t0)<br>    |
|  72|[0x8000232c]<br>0xFFFFFFCD|- rs1_val == 0xbb61a9cd #nosat<br>                                                      |[0x800004fc]:sext.b t6, t5<br> [0x80000500]:sw t6, 172(t0)<br>    |
|  73|[0x80002330]<br>0xFFFFFFDC|- rs1_val == 0xb49c83dc #nosat<br>                                                      |[0x8000050c]:sext.b t6, t5<br> [0x80000510]:sw t6, 176(t0)<br>    |
|  74|[0x80002334]<br>0x00000060|- rs1_val == 0xc5521660 #nosat<br>                                                      |[0x8000051c]:sext.b t6, t5<br> [0x80000520]:sw t6, 180(t0)<br>    |
|  75|[0x80002338]<br>0xFFFFFF93|- rs1_val == 0x254a9493 #nosat<br>                                                      |[0x8000052c]:sext.b t6, t5<br> [0x80000530]:sw t6, 184(t0)<br>    |
|  76|[0x8000233c]<br>0x00000000|- rs1_val == 1024<br>                                                                   |[0x80000538]:sext.b t6, t5<br> [0x8000053c]:sw t6, 188(t0)<br>    |
|  77|[0x80002340]<br>0x00000000|- rs1_val == 512<br>                                                                    |[0x80000544]:sext.b t6, t5<br> [0x80000548]:sw t6, 192(t0)<br>    |
|  78|[0x80002344]<br>0x00000000|- rs1_val == 256<br>                                                                    |[0x80000550]:sext.b t6, t5<br> [0x80000554]:sw t6, 196(t0)<br>    |
|  79|[0x80002348]<br>0xFFFFFF80|- rs1_val == 128<br>                                                                    |[0x8000055c]:sext.b t6, t5<br> [0x80000560]:sw t6, 200(t0)<br>    |
|  80|[0x8000234c]<br>0x00000040|- rs1_val == 64<br>                                                                     |[0x80000568]:sext.b t6, t5<br> [0x8000056c]:sw t6, 204(t0)<br>    |
|  81|[0x80002350]<br>0x00000020|- rs1_val == 32<br>                                                                     |[0x80000574]:sext.b t6, t5<br> [0x80000578]:sw t6, 208(t0)<br>    |
|  82|[0x80002354]<br>0x00000010|- rs1_val == 16<br>                                                                     |[0x80000580]:sext.b t6, t5<br> [0x80000584]:sw t6, 212(t0)<br>    |
|  83|[0x80002358]<br>0x00000008|- rs1_val == 8<br>                                                                      |[0x8000058c]:sext.b t6, t5<br> [0x80000590]:sw t6, 216(t0)<br>    |
|  84|[0x8000235c]<br>0x00000004|- rs1_val == 4<br>                                                                      |[0x80000598]:sext.b t6, t5<br> [0x8000059c]:sw t6, 220(t0)<br>    |
|  85|[0x80002360]<br>0x00000002|- rs1_val == 2<br>                                                                      |[0x800005a4]:sext.b t6, t5<br> [0x800005a8]:sw t6, 224(t0)<br>    |
|  86|[0x80002364]<br>0xFFFFFFFD|- rs1_val == 4294967293<br>                                                             |[0x800005b0]:sext.b t6, t5<br> [0x800005b4]:sw t6, 228(t0)<br>    |
