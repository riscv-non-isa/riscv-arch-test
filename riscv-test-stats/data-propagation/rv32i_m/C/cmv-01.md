
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000470')]      |
| SIG_REGION                | [('0x80002204', '0x80002358', '85 words')]      |
| COV_LABELS                | cmv      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cmv-01.S/cmv-01.S    |
| Total Number of coverpoints| 157     |
| Total Coverpoints Hit     | 157      |
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
      [0x8000046c]:c.mv a0, a1
      [0x8000046e]:c.swsp a0, 59
 -- Signature Address: 0x80002354 Data: 0x00000040
 -- Redundant Coverpoints hit by the op
      - opcode : c.mv
      - rs2 : x11
      - rd : x10
      - rs2 != rd and rs2 != 0
      - rs2_val == 64






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

|s.no|        signature         |                                                                coverpoints                                                                 |                             code                              |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002204]<br>0x80000000|- opcode : c.mv<br> - rs2 : x8<br> - rd : x29<br> - rs2 != rd and rs2 != 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> |[0x80000104]:c.mv t4, fp<br> [0x80000106]:sw t4, 0(a0)<br>     |
|   2|[0x80002208]<br>0x00000000|- rs2 : x13<br> - rd : x13<br> - rs2 == rd and rs2 != 0<br> - rs2_val == 0<br> - rs2_val==0<br>                                             |[0x8000010e]:c.mv a3, a3<br> [0x80000110]:c.sw a0, a3, 4<br>   |
|   3|[0x8000220c]<br>0x7FFFFFFF|- rs2 : x22<br> - rd : x8<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                  |[0x8000011a]:c.mv fp, s6<br> [0x8000011c]:c.sw a0, s0, 8<br>   |
|   4|[0x80002210]<br>0x00000001|- rs2 : x9<br> - rd : x22<br> - rs2_val == 1<br>                                                                                            |[0x80000122]:c.mv s6, s1<br> [0x80000124]:sw s6, 12(a0)<br>    |
|   5|[0x80002214]<br>0x00000002|- rs2 : x26<br> - rd : x7<br> - rs2_val == 2<br> - rs2_val==2<br>                                                                           |[0x8000012c]:c.mv t2, s10<br> [0x8000012e]:sw t2, 16(a0)<br>   |
|   6|[0x80002218]<br>0x00000004|- rs2 : x16<br> - rd : x18<br> - rs2_val == 4<br> - rs2_val==4<br>                                                                          |[0x80000136]:c.mv s2, a6<br> [0x80000138]:sw s2, 20(a0)<br>    |
|   7|[0x8000221c]<br>0x00000008|- rs2 : x25<br> - rd : x17<br> - rs2_val == 8<br>                                                                                           |[0x80000140]:c.mv a7, s9<br> [0x80000142]:sw a7, 24(a0)<br>    |
|   8|[0x80002220]<br>0x00000010|- rs2 : x23<br> - rd : x27<br> - rs2_val == 16<br>                                                                                          |[0x8000014a]:c.mv s11, s7<br> [0x8000014c]:sw s11, 28(a0)<br>  |
|   9|[0x80002224]<br>0x00000020|- rs2 : x28<br> - rd : x26<br> - rs2_val == 32<br>                                                                                          |[0x80000154]:c.mv s10, t3<br> [0x80000156]:sw s10, 32(a0)<br>  |
|  10|[0x80002228]<br>0x00000000|- rs2 : x15<br> - rd : x0<br> - rs2_val == 64<br>                                                                                           |[0x8000015e]:c.mv.hint.a5<br> [0x80000160]:sw zero, 36(a0)<br> |
|  11|[0x8000222c]<br>0x00000080|- rs2 : x30<br> - rd : x16<br> - rs2_val == 128<br>                                                                                         |[0x80000168]:c.mv a6, t5<br> [0x8000016a]:sw a6, 40(a0)<br>    |
|  12|[0x80002230]<br>0x00000100|- rs2 : x3<br> - rd : x12<br> - rs2_val == 256<br>                                                                                          |[0x80000172]:c.mv a2, gp<br> [0x80000174]:c.sw a0, a2, 44<br>  |
|  13|[0x80002234]<br>0x00000200|- rs2 : x20<br> - rd : x2<br> - rs2_val == 512<br>                                                                                          |[0x8000017a]:c.mv sp, s4<br> [0x8000017c]:sw sp, 48(a0)<br>    |
|  14|[0x80002238]<br>0x00000400|- rs2 : x7<br> - rd : x25<br> - rs2_val == 1024<br>                                                                                         |[0x80000184]:c.mv s9, t2<br> [0x80000186]:sw s9, 52(a0)<br>    |
|  15|[0x8000223c]<br>0x00000800|- rs2 : x21<br> - rd : x24<br> - rs2_val == 2048<br>                                                                                        |[0x80000192]:c.mv s8, s5<br> [0x80000194]:sw s8, 56(a0)<br>    |
|  16|[0x80002240]<br>0x00001000|- rs2 : x6<br> - rd : x5<br> - rs2_val == 4096<br>                                                                                          |[0x8000019c]:c.mv t0, t1<br> [0x8000019e]:sw t0, 60(a0)<br>    |
|  17|[0x80002244]<br>0x00002000|- rs2 : x12<br> - rd : x21<br> - rs2_val == 8192<br>                                                                                        |[0x800001a6]:c.mv s5, a2<br> [0x800001a8]:sw s5, 64(a0)<br>    |
|  18|[0x80002248]<br>0x00004000|- rs2 : x29<br> - rd : x15<br> - rs2_val == 16384<br>                                                                                       |[0x800001b0]:c.mv a5, t4<br> [0x800001b2]:c.sw a0, a5, 68<br>  |
|  19|[0x8000224c]<br>0x00008000|- rs2 : x17<br> - rd : x1<br> - rs2_val == 32768<br>                                                                                        |[0x800001b8]:c.mv ra, a7<br> [0x800001ba]:sw ra, 72(a0)<br>    |
|  20|[0x80002250]<br>0x00010000|- rs2 : x5<br> - rd : x23<br> - rs2_val == 65536<br>                                                                                        |[0x800001c2]:c.mv s7, t0<br> [0x800001c4]:sw s7, 76(a0)<br>    |
|  21|[0x80002254]<br>0x00020000|- rs2 : x2<br> - rd : x3<br> - rs2_val == 131072<br>                                                                                        |[0x800001cc]:c.mv gp, sp<br> [0x800001ce]:sw gp, 80(a0)<br>    |
|  22|[0x80002258]<br>0x00040000|- rs2 : x19<br> - rd : x28<br> - rs2_val == 262144<br>                                                                                      |[0x800001d6]:c.mv t3, s3<br> [0x800001d8]:sw t3, 84(a0)<br>    |
|  23|[0x8000225c]<br>0x00080000|- rs2 : x18<br> - rd : x4<br> - rs2_val == 524288<br>                                                                                       |[0x800001e0]:c.mv tp, s2<br> [0x800001e2]:sw tp, 88(a0)<br>    |
|  24|[0x80002260]<br>0x00100000|- rs2 : x24<br> - rd : x9<br> - rs2_val == 1048576<br>                                                                                      |[0x800001ea]:c.mv s1, s8<br> [0x800001ec]:c.sw a0, s1, 92<br>  |
|  25|[0x80002264]<br>0x00200000|- rs2 : x11<br> - rd : x6<br> - rs2_val == 2097152<br>                                                                                      |[0x800001f2]:c.mv t1, a1<br> [0x800001f4]:sw t1, 96(a0)<br>    |
|  26|[0x80002268]<br>0x00400000|- rs2 : x27<br> - rd : x11<br> - rs2_val == 4194304<br>                                                                                     |[0x80000204]:c.mv a1, s11<br> [0x80000206]:c.swsp a1, 0<br>    |
|  27|[0x8000226c]<br>0x00800000|- rs2 : x1<br> - rd : x14<br> - rs2_val == 8388608<br>                                                                                      |[0x8000020c]:c.mv a4, ra<br> [0x8000020e]:c.swsp a4, 1<br>     |
|  28|[0x80002270]<br>0x01000000|- rs2 : x10<br> - rd : x20<br> - rs2_val == 16777216<br>                                                                                    |[0x80000214]:c.mv s4, a0<br> [0x80000216]:c.swsp s4, 2<br>     |
|  29|[0x80002274]<br>0x02000000|- rs2 : x31<br> - rd : x19<br> - rs2_val == 33554432<br>                                                                                    |[0x8000021c]:c.mv s3, t6<br> [0x8000021e]:c.swsp s3, 3<br>     |
|  30|[0x80002278]<br>0x04000000|- rs2 : x4<br> - rd : x10<br> - rs2_val == 67108864<br>                                                                                     |[0x80000224]:c.mv a0, tp<br> [0x80000226]:c.swsp a0, 4<br>     |
|  31|[0x8000227c]<br>0x08000000|- rs2 : x14<br> - rd : x30<br> - rs2_val == 134217728<br>                                                                                   |[0x8000022c]:c.mv t5, a4<br> [0x8000022e]:c.swsp t5, 5<br>     |
|  32|[0x80002280]<br>0x10000000|- rd : x31<br> - rs2_val == 268435456<br>                                                                                                   |[0x80000234]:c.mv t6, a3<br> [0x80000236]:c.swsp t6, 6<br>     |
|  33|[0x80002284]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                  |[0x8000023c]:c.mv a0, a1<br> [0x8000023e]:c.swsp a0, 7<br>     |
|  34|[0x80002288]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                 |[0x80000244]:c.mv a0, a1<br> [0x80000246]:c.swsp a0, 8<br>     |
|  35|[0x8000228c]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                         |[0x8000024c]:c.mv a0, a1<br> [0x8000024e]:c.swsp a0, 9<br>     |
|  36|[0x80002290]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                         |[0x80000254]:c.mv a0, a1<br> [0x80000256]:c.swsp a0, 10<br>    |
|  37|[0x80002294]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                         |[0x8000025c]:c.mv a0, a1<br> [0x8000025e]:c.swsp a0, 11<br>    |
|  38|[0x80002298]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                         |[0x80000264]:c.mv a0, a1<br> [0x80000266]:c.swsp a0, 12<br>    |
|  39|[0x8000229c]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                        |[0x8000026c]:c.mv a0, a1<br> [0x8000026e]:c.swsp a0, 13<br>    |
|  40|[0x800022a0]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                        |[0x80000274]:c.mv a0, a1<br> [0x80000276]:c.swsp a0, 14<br>    |
|  41|[0x800022a4]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                        |[0x8000027c]:c.mv a0, a1<br> [0x8000027e]:c.swsp a0, 15<br>    |
|  42|[0x800022a8]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                       |[0x80000284]:c.mv a0, a1<br> [0x80000286]:c.swsp a0, 16<br>    |
|  43|[0x800022ac]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                       |[0x8000028c]:c.mv a0, a1<br> [0x8000028e]:c.swsp a0, 17<br>    |
|  44|[0x800022b0]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                       |[0x80000294]:c.mv a0, a1<br> [0x80000296]:c.swsp a0, 18<br>    |
|  45|[0x800022b4]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                      |[0x8000029c]:c.mv a0, a1<br> [0x8000029e]:c.swsp a0, 19<br>    |
|  46|[0x800022b8]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                      |[0x800002a8]:c.mv a0, a1<br> [0x800002aa]:c.swsp a0, 20<br>    |
|  47|[0x800022bc]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                      |[0x800002b4]:c.mv a0, a1<br> [0x800002b6]:c.swsp a0, 21<br>    |
|  48|[0x800022c0]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                      |[0x800002c0]:c.mv a0, a1<br> [0x800002c2]:c.swsp a0, 22<br>    |
|  49|[0x800022c4]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                     |[0x800002cc]:c.mv a0, a1<br> [0x800002ce]:c.swsp a0, 23<br>    |
|  50|[0x800022c8]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                     |[0x800002d8]:c.mv a0, a1<br> [0x800002da]:c.swsp a0, 24<br>    |
|  51|[0x800022cc]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                     |[0x800002e4]:c.mv a0, a1<br> [0x800002e6]:c.swsp a0, 25<br>    |
|  52|[0x800022d0]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                    |[0x800002f0]:c.mv a0, a1<br> [0x800002f2]:c.swsp a0, 26<br>    |
|  53|[0x800022d4]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                    |[0x800002fc]:c.mv a0, a1<br> [0x800002fe]:c.swsp a0, 27<br>    |
|  54|[0x800022d8]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                    |[0x80000308]:c.mv a0, a1<br> [0x8000030a]:c.swsp a0, 28<br>    |
|  55|[0x800022dc]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                   |[0x80000314]:c.mv a0, a1<br> [0x80000316]:c.swsp a0, 29<br>    |
|  56|[0x800022e0]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                 |[0x80000320]:c.mv a0, a1<br> [0x80000322]:c.swsp a0, 30<br>    |
|  57|[0x800022e4]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                |[0x8000032c]:c.mv a0, a1<br> [0x8000032e]:c.swsp a0, 31<br>    |
|  58|[0x800022e8]<br>0x55555555|- rs2_val == 1431655765<br> - rs2_val==1431655765<br>                                                                                       |[0x80000338]:c.mv a0, a1<br> [0x8000033a]:c.swsp a0, 32<br>    |
|  59|[0x800022ec]<br>0xAAAAAAAA|- rs2_val == -1431655766<br> - rs2_val==-1431655766<br>                                                                                     |[0x80000344]:c.mv a0, a1<br> [0x80000346]:c.swsp a0, 33<br>    |
|  60|[0x800022f0]<br>0x00000003|- rs2_val==3<br>                                                                                                                            |[0x8000034c]:c.mv a0, a1<br> [0x8000034e]:c.swsp a0, 34<br>    |
|  61|[0x800022f4]<br>0x00000005|- rs2_val==5<br>                                                                                                                            |[0x80000354]:c.mv a0, a1<br> [0x80000356]:c.swsp a0, 35<br>    |
|  62|[0x800022f8]<br>0x33333333|- rs2_val==858993459<br>                                                                                                                    |[0x80000360]:c.mv a0, a1<br> [0x80000362]:c.swsp a0, 36<br>    |
|  63|[0x800022fc]<br>0x66666666|- rs2_val==1717986918<br>                                                                                                                   |[0x8000036c]:c.mv a0, a1<br> [0x8000036e]:c.swsp a0, 37<br>    |
|  64|[0x80002300]<br>0xFFFF4AFC|- rs2_val==-46340<br>                                                                                                                       |[0x80000378]:c.mv a0, a1<br> [0x8000037a]:c.swsp a0, 38<br>    |
|  65|[0x80002304]<br>0x0000B504|- rs2_val==46340<br>                                                                                                                        |[0x80000384]:c.mv a0, a1<br> [0x80000386]:c.swsp a0, 39<br>    |
|  66|[0x80002308]<br>0x55555554|- rs2_val==1431655764<br>                                                                                                                   |[0x80000390]:c.mv a0, a1<br> [0x80000392]:c.swsp a0, 40<br>    |
|  67|[0x8000230c]<br>0x33333332|- rs2_val==858993458<br>                                                                                                                    |[0x8000039c]:c.mv a0, a1<br> [0x8000039e]:c.swsp a0, 41<br>    |
|  68|[0x80002310]<br>0x66666665|- rs2_val==1717986917<br>                                                                                                                   |[0x800003a8]:c.mv a0, a1<br> [0x800003aa]:c.swsp a0, 42<br>    |
|  69|[0x80002314]<br>0x0000B503|- rs2_val==46339<br>                                                                                                                        |[0x800003b4]:c.mv a0, a1<br> [0x800003b6]:c.swsp a0, 43<br>    |
|  70|[0x80002318]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                   |[0x800003c0]:c.mv a0, a1<br> [0x800003c2]:c.swsp a0, 44<br>    |
|  71|[0x8000231c]<br>0x0000B505|- rs2_val==46341<br>                                                                                                                        |[0x800003cc]:c.mv a0, a1<br> [0x800003ce]:c.swsp a0, 45<br>    |
|  72|[0x80002320]<br>0xFFFF4AFD|- rs2_val==-46339<br>                                                                                                                       |[0x800003d8]:c.mv a0, a1<br> [0x800003da]:c.swsp a0, 46<br>    |
|  73|[0x80002324]<br>0x55555556|- rs2_val==1431655766<br>                                                                                                                   |[0x800003e4]:c.mv a0, a1<br> [0x800003e6]:c.swsp a0, 47<br>    |
|  74|[0x80002328]<br>0xAAAAAAAB|- rs2_val==-1431655765<br>                                                                                                                  |[0x800003f0]:c.mv a0, a1<br> [0x800003f2]:c.swsp a0, 48<br>    |
|  75|[0x8000232c]<br>0x00000006|- rs2_val==6<br>                                                                                                                            |[0x800003f8]:c.mv a0, a1<br> [0x800003fa]:c.swsp a0, 49<br>    |
|  76|[0x80002330]<br>0x33333334|- rs2_val==858993460<br>                                                                                                                    |[0x80000404]:c.mv a0, a1<br> [0x80000406]:c.swsp a0, 50<br>    |
|  77|[0x80002334]<br>0x66666667|- rs2_val==1717986919<br>                                                                                                                   |[0x80000410]:c.mv a0, a1<br> [0x80000412]:c.swsp a0, 51<br>    |
|  78|[0x80002338]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                   |[0x8000041c]:c.mv a0, a1<br> [0x8000041e]:c.swsp a0, 52<br>    |
|  79|[0x8000233c]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                   |[0x80000428]:c.mv a0, a1<br> [0x8000042a]:c.swsp a0, 53<br>    |
|  80|[0x80002340]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                  |[0x80000434]:c.mv a0, a1<br> [0x80000436]:c.swsp a0, 54<br>    |
|  81|[0x80002344]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                  |[0x80000440]:c.mv a0, a1<br> [0x80000442]:c.swsp a0, 55<br>    |
|  82|[0x80002348]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                  |[0x8000044c]:c.mv a0, a1<br> [0x8000044e]:c.swsp a0, 56<br>    |
|  83|[0x8000234c]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                 |[0x80000458]:c.mv a0, a1<br> [0x8000045a]:c.swsp a0, 57<br>    |
|  84|[0x80002350]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                 |[0x80000464]:c.mv a0, a1<br> [0x80000466]:c.swsp a0, 58<br>    |
