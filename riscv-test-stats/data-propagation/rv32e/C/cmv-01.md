
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000400')]      |
| SIG_REGION                | [('0x80002204', '0x80002358', '85 words')]      |
| COV_LABELS                | cmv      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/cmv-01.S/cmv-01.S    |
| Total Number of coverpoints| 130     |
| Total Coverpoints Hit     | 125      |
| Total Signature Updates   | 85      |
| STAT1                     | 84      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003f0]:c.mv a0, a1
      [0x800003f2]:sw a0, 300(sp)
 -- Signature Address: 0x80002354 Data: 0xFFFBFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : c.mv
      - rs2 : x11
      - rd : x10
      - rs2 != rd and rs2 != 0
      - rs2_val == -262145






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

|s.no|        signature         |                                                                 coverpoints                                                                 |                             code                             |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80002204]<br>0x80000000|- opcode : c.mv<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd and rs2 != 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> |[0x80000084]:c.mv a3, a3<br> [0x80000086]:sw a3, 0(tp)<br>    |
|   2|[0x80002208]<br>0x7FFFFFFF|- rs2 : x14<br> - rd : x3<br> - rs2 != rd and rs2 != 0<br> - rs2_val == 2147483647<br> - rs2_val == (2**(xlen-1)-1)<br>                      |[0x80000092]:c.mv gp, a4<br> [0x80000094]:sw gp, 4(tp)<br>    |
|   3|[0x8000220c]<br>0xBFFFFFFF|- rs2 : x5<br> - rd : x15<br> - rs2_val == -1073741825<br>                                                                                   |[0x800000a0]:c.mv a5, t0<br> [0x800000a2]:sw a5, 8(tp)<br>    |
|   4|[0x80002210]<br>0xDFFFFFFF|- rs2 : x2<br> - rd : x6<br> - rs2_val == -536870913<br>                                                                                     |[0x800000ae]:c.mv t1, sp<br> [0x800000b0]:sw t1, 12(tp)<br>   |
|   5|[0x80002214]<br>0xEFFFFFFF|- rs2 : x7<br> - rd : x9<br> - rs2_val == -268435457<br>                                                                                     |[0x800000bc]:c.mv s1, t2<br> [0x800000be]:sw s1, 16(tp)<br>   |
|   6|[0x80002218]<br>0xF7FFFFFF|- rs2 : x11<br> - rd : x2<br> - rs2_val == -134217729<br>                                                                                    |[0x800000ca]:c.mv sp, a1<br> [0x800000cc]:sw sp, 20(tp)<br>   |
|   7|[0x8000221c]<br>0xFBFFFFFF|- rs2 : x15<br> - rd : x5<br> - rs2_val == -67108865<br>                                                                                     |[0x800000d8]:c.mv t0, a5<br> [0x800000da]:sw t0, 24(tp)<br>   |
|   8|[0x80002220]<br>0xFDFFFFFF|- rs2 : x9<br> - rd : x11<br> - rs2_val == -33554433<br>                                                                                     |[0x800000e6]:c.mv a1, s1<br> [0x800000e8]:sw a1, 28(tp)<br>   |
|   9|[0x80002224]<br>0xFEFFFFFF|- rs2 : x8<br> - rd : x1<br> - rs2_val == -16777217<br>                                                                                      |[0x800000f4]:c.mv ra, fp<br> [0x800000f6]:sw ra, 32(tp)<br>   |
|  10|[0x80002228]<br>0xFF7FFFFF|- rs2 : x6<br> - rd : x7<br> - rs2_val == -8388609<br>                                                                                       |[0x8000010a]:c.mv t2, t1<br> [0x8000010c]:c.swsp t2, 0<br>    |
|  11|[0x8000222c]<br>0xFFBFFFFF|- rs2 : x1<br> - rd : x12<br> - rs2_val == -4194305<br>                                                                                      |[0x80000116]:c.mv a2, ra<br> [0x80000118]:c.swsp a2, 1<br>    |
|  12|[0x80002230]<br>0xFFDFFFFF|- rs2 : x4<br> - rd : x14<br> - rs2_val == -2097153<br>                                                                                      |[0x80000122]:c.mv a4, tp<br> [0x80000124]:c.swsp a4, 2<br>    |
|  13|[0x80002234]<br>0xFFEFFFFF|- rs2 : x12<br> - rd : x10<br> - rs2_val == -1048577<br>                                                                                     |[0x8000012e]:c.mv a0, a2<br> [0x80000130]:c.swsp a0, 3<br>    |
|  14|[0x80002238]<br>0xFFF7FFFF|- rs2 : x3<br> - rd : x8<br> - rs2_val == -524289<br>                                                                                        |[0x8000013a]:c.mv fp, gp<br> [0x8000013c]:c.swsp fp, 4<br>    |
|  15|[0x8000223c]<br>0x00000000|- rs2 : x10<br> - rd : x0<br> - rs2_val == -262145<br>                                                                                       |[0x80000146]:c.mv.hint.a0<br> [0x80000148]:c.swsp zero, 5<br> |
|  16|[0x80002240]<br>0xFFFDFFFF|- rd : x4<br> - rs2_val == -131073<br>                                                                                                       |[0x80000152]:c.mv tp, a2<br> [0x80000154]:c.swsp tp, 6<br>    |
|  17|[0x80002244]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                      |[0x8000015e]:c.mv a0, a1<br> [0x80000160]:c.swsp a0, 7<br>    |
|  18|[0x80002248]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                      |[0x8000016a]:c.mv a0, a1<br> [0x8000016c]:c.swsp a0, 8<br>    |
|  19|[0x8000224c]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                      |[0x80000176]:c.mv a0, a1<br> [0x80000178]:c.swsp a0, 9<br>    |
|  20|[0x80002250]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                       |[0x80000182]:c.mv a0, a1<br> [0x80000184]:c.swsp a0, 10<br>   |
|  21|[0x80002254]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                       |[0x8000018e]:c.mv a0, a1<br> [0x80000190]:c.swsp a0, 11<br>   |
|  22|[0x80002258]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                       |[0x8000019a]:c.mv a0, a1<br> [0x8000019c]:c.swsp a0, 12<br>   |
|  23|[0x8000225c]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                       |[0x800001a2]:c.mv a0, a1<br> [0x800001a4]:c.swsp a0, 13<br>   |
|  24|[0x80002260]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                        |[0x800001aa]:c.mv a0, a1<br> [0x800001ac]:c.swsp a0, 14<br>   |
|  25|[0x80002264]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                        |[0x800001b2]:c.mv a0, a1<br> [0x800001b4]:c.swsp a0, 15<br>   |
|  26|[0x80002268]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                        |[0x800001ba]:c.mv a0, a1<br> [0x800001bc]:c.swsp a0, 16<br>   |
|  27|[0x8000226c]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                         |[0x800001c2]:c.mv a0, a1<br> [0x800001c4]:c.swsp a0, 17<br>   |
|  28|[0x80002270]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                         |[0x800001ca]:c.mv a0, a1<br> [0x800001cc]:c.swsp a0, 18<br>   |
|  29|[0x80002274]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                         |[0x800001d2]:c.mv a0, a1<br> [0x800001d4]:c.swsp a0, 19<br>   |
|  30|[0x80002278]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                          |[0x800001da]:c.mv a0, a1<br> [0x800001dc]:c.swsp a0, 20<br>   |
|  31|[0x8000227c]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                          |[0x800001e2]:c.mv a0, a1<br> [0x800001e4]:c.swsp a0, 21<br>   |
|  32|[0x80002280]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                          |[0x800001ea]:c.mv a0, a1<br> [0x800001ec]:c.swsp a0, 22<br>   |
|  33|[0x80002284]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                          |[0x800001f2]:c.mv a0, a1<br> [0x800001f4]:c.swsp a0, 23<br>   |
|  34|[0x80002288]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                  |[0x800001fa]:c.mv a0, a1<br> [0x800001fc]:c.swsp a0, 24<br>   |
|  35|[0x8000228c]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                   |[0x80000202]:c.mv a0, a1<br> [0x80000204]:c.swsp a0, 25<br>   |
|  36|[0x80002290]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                                   |[0x8000020a]:c.mv a0, a1<br> [0x8000020c]:c.swsp a0, 26<br>   |
|  37|[0x80002294]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                                   |[0x80000212]:c.mv a0, a1<br> [0x80000214]:c.swsp a0, 27<br>   |
|  38|[0x80002298]<br>0x04000000|- rs2_val == 67108864<br>                                                                                                                    |[0x8000021a]:c.mv a0, a1<br> [0x8000021c]:c.swsp a0, 28<br>   |
|  39|[0x8000229c]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                                    |[0x80000222]:c.mv a0, a1<br> [0x80000224]:c.swsp a0, 29<br>   |
|  40|[0x800022a0]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                                    |[0x8000022a]:c.mv a0, a1<br> [0x8000022c]:c.swsp a0, 30<br>   |
|  41|[0x800022a4]<br>0x00800000|- rs2_val == 8388608<br>                                                                                                                     |[0x80000232]:c.mv a0, a1<br> [0x80000234]:c.swsp a0, 31<br>   |
|  42|[0x800022a8]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                                     |[0x8000023a]:c.mv a0, a1<br> [0x8000023c]:c.swsp a0, 32<br>   |
|  43|[0x800022ac]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                     |[0x80000242]:c.mv a0, a1<br> [0x80000244]:c.swsp a0, 33<br>   |
|  44|[0x800022b0]<br>0x00100000|- rs2_val == 1048576<br>                                                                                                                     |[0x8000024a]:c.mv a0, a1<br> [0x8000024c]:c.swsp a0, 34<br>   |
|  45|[0x800022b4]<br>0x00080000|- rs2_val == 524288<br>                                                                                                                      |[0x80000252]:c.mv a0, a1<br> [0x80000254]:c.swsp a0, 35<br>   |
|  46|[0x800022b8]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                      |[0x8000025a]:c.mv a0, a1<br> [0x8000025c]:c.swsp a0, 36<br>   |
|  47|[0x800022bc]<br>0x00020000|- rs2_val == 131072<br>                                                                                                                      |[0x80000262]:c.mv a0, a1<br> [0x80000264]:c.swsp a0, 37<br>   |
|  48|[0x800022c0]<br>0x00010000|- rs2_val == 65536<br>                                                                                                                       |[0x8000026a]:c.mv a0, a1<br> [0x8000026c]:c.swsp a0, 38<br>   |
|  49|[0x800022c4]<br>0x00008000|- rs2_val == 32768<br>                                                                                                                       |[0x80000272]:c.mv a0, a1<br> [0x80000274]:c.swsp a0, 39<br>   |
|  50|[0x800022c8]<br>0x00004000|- rs2_val == 16384<br>                                                                                                                       |[0x8000027a]:c.mv a0, a1<br> [0x8000027c]:c.swsp a0, 40<br>   |
|  51|[0x800022cc]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                        |[0x80000282]:c.mv a0, a1<br> [0x80000284]:c.swsp a0, 41<br>   |
|  52|[0x800022d0]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                        |[0x8000028a]:c.mv a0, a1<br> [0x8000028c]:c.swsp a0, 42<br>   |
|  53|[0x800022d4]<br>0x00000800|- rs2_val == 2048<br>                                                                                                                        |[0x80000296]:c.mv a0, a1<br> [0x80000298]:c.swsp a0, 43<br>   |
|  54|[0x800022d8]<br>0x00000400|- rs2_val == 1024<br>                                                                                                                        |[0x8000029e]:c.mv a0, a1<br> [0x800002a0]:c.swsp a0, 44<br>   |
|  55|[0x800022dc]<br>0x00000200|- rs2_val == 512<br>                                                                                                                         |[0x800002a6]:c.mv a0, a1<br> [0x800002a8]:c.swsp a0, 45<br>   |
|  56|[0x800022e0]<br>0x00000100|- rs2_val == 256<br>                                                                                                                         |[0x800002ae]:c.mv a0, a1<br> [0x800002b0]:c.swsp a0, 46<br>   |
|  57|[0x800022e4]<br>0x00000080|- rs2_val == 128<br>                                                                                                                         |[0x800002b6]:c.mv a0, a1<br> [0x800002b8]:c.swsp a0, 47<br>   |
|  58|[0x800022e8]<br>0x00000040|- rs2_val == 64<br>                                                                                                                          |[0x800002be]:c.mv a0, a1<br> [0x800002c0]:c.swsp a0, 48<br>   |
|  59|[0x800022ec]<br>0x00000001|- rs2_val == 1<br>                                                                                                                           |[0x800002c6]:c.mv a0, a1<br> [0x800002c8]:c.swsp a0, 49<br>   |
|  60|[0x800022f0]<br>0x0000B505|- rs2_val==46341<br>                                                                                                                         |[0x800002d2]:c.mv a0, a1<br> [0x800002d4]:c.swsp a0, 50<br>   |
|  61|[0x800022f4]<br>0xFFFF4AFD|- rs2_val==-46339<br>                                                                                                                        |[0x800002de]:c.mv a0, a1<br> [0x800002e0]:c.swsp a0, 51<br>   |
|  62|[0x800022f8]<br>0x66666667|- rs2_val==1717986919<br>                                                                                                                    |[0x800002ea]:c.mv a0, a1<br> [0x800002ec]:c.swsp a0, 52<br>   |
|  63|[0x800022fc]<br>0x33333334|- rs2_val==858993460<br>                                                                                                                     |[0x800002f6]:c.mv a0, a1<br> [0x800002f8]:c.swsp a0, 53<br>   |
|  64|[0x80002300]<br>0x00000006|- rs2_val==6<br>                                                                                                                             |[0x800002fe]:c.mv a0, a1<br> [0x80000300]:c.swsp a0, 54<br>   |
|  65|[0x80002304]<br>0xAAAAAAAB|- rs2_val==-1431655765<br>                                                                                                                   |[0x8000030a]:c.mv a0, a1<br> [0x8000030c]:c.swsp a0, 55<br>   |
|  66|[0x80002308]<br>0x55555556|- rs2_val==1431655766<br>                                                                                                                    |[0x80000316]:c.mv a0, a1<br> [0x80000318]:c.swsp a0, 56<br>   |
|  67|[0x8000230c]<br>0x00000004|- rs2_val == 4<br> - rs2_val==4<br>                                                                                                          |[0x8000031e]:c.mv a0, a1<br> [0x80000320]:c.swsp a0, 57<br>   |
|  68|[0x80002310]<br>0x0000B503|- rs2_val==46339<br>                                                                                                                         |[0x8000032a]:c.mv a0, a1<br> [0x8000032c]:c.swsp a0, 58<br>   |
|  69|[0x80002314]<br>0x00000000|- rs2_val==0<br> - rs2_val == 0<br>                                                                                                          |[0x80000332]:c.mv a0, a1<br> [0x80000334]:c.swsp a0, 59<br>   |
|  70|[0x80002318]<br>0x66666665|- rs2_val==1717986917<br>                                                                                                                    |[0x8000033e]:c.mv a0, a1<br> [0x80000340]:c.swsp a0, 60<br>   |
|  71|[0x8000231c]<br>0x33333332|- rs2_val==858993458<br>                                                                                                                     |[0x8000034a]:c.mv a0, a1<br> [0x8000034c]:c.swsp a0, 61<br>   |
|  72|[0x80002320]<br>0x55555554|- rs2_val==1431655764<br>                                                                                                                    |[0x80000356]:c.mv a0, a1<br> [0x80000358]:c.swsp a0, 62<br>   |
|  73|[0x80002324]<br>0x00000002|- rs2_val == 2<br> - rs2_val==2<br>                                                                                                          |[0x8000035e]:c.mv a0, a1<br> [0x80000360]:c.swsp a0, 63<br>   |
|  74|[0x80002328]<br>0x0000B504|- rs2_val==46340<br>                                                                                                                         |[0x8000036a]:c.mv a0, a1<br> [0x8000036c]:sw a0, 256(sp)<br>  |
|  75|[0x8000232c]<br>0xFFFF4AFC|- rs2_val==-46340<br>                                                                                                                        |[0x80000378]:c.mv a0, a1<br> [0x8000037a]:sw a0, 260(sp)<br>  |
|  76|[0x80002330]<br>0x66666666|- rs2_val==1717986918<br>                                                                                                                    |[0x80000386]:c.mv a0, a1<br> [0x80000388]:sw a0, 264(sp)<br>  |
|  77|[0x80002334]<br>0x33333333|- rs2_val==858993459<br>                                                                                                                     |[0x80000394]:c.mv a0, a1<br> [0x80000396]:sw a0, 268(sp)<br>  |
|  78|[0x80002338]<br>0x00000005|- rs2_val==5<br>                                                                                                                             |[0x8000039e]:c.mv a0, a1<br> [0x800003a0]:sw a0, 272(sp)<br>  |
|  79|[0x8000233c]<br>0xAAAAAAAA|- rs2_val==-1431655766<br> - rs2_val == -1431655766<br>                                                                                      |[0x800003ac]:c.mv a0, a1<br> [0x800003ae]:sw a0, 276(sp)<br>  |
|  80|[0x80002340]<br>0x55555555|- rs2_val==1431655765<br> - rs2_val == 1431655765<br>                                                                                        |[0x800003ba]:c.mv a0, a1<br> [0x800003bc]:sw a0, 280(sp)<br>  |
|  81|[0x80002344]<br>0x00000020|- rs2_val == 32<br>                                                                                                                          |[0x800003c4]:c.mv a0, a1<br> [0x800003c6]:sw a0, 284(sp)<br>  |
|  82|[0x80002348]<br>0x00000010|- rs2_val == 16<br>                                                                                                                          |[0x800003ce]:c.mv a0, a1<br> [0x800003d0]:sw a0, 288(sp)<br>  |
|  83|[0x8000234c]<br>0x00000008|- rs2_val == 8<br>                                                                                                                           |[0x800003d8]:c.mv a0, a1<br> [0x800003da]:sw a0, 292(sp)<br>  |
|  84|[0x80002350]<br>0x00000003|- rs2_val==3<br>                                                                                                                             |[0x800003e2]:c.mv a0, a1<br> [0x800003e4]:sw a0, 296(sp)<br>  |
