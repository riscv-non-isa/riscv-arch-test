
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000482')]      |
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
      [0x80000470]:c.mv a0, a1
      [0x80000472]:c.swsp a0, 62
 -- Signature Address: 0x80002354 Data: 0x01000000
 -- Redundant Coverpoints hit by the op
      - opcode : c.mv
      - rs2 : x11
      - rd : x10
      - rs2 != rd and rs2 != 0
      - rs2_val == 16777216






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

|s.no|        signature         |                                                                coverpoints                                                                |                             code                             |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80002204]<br>0x80000000|- opcode : c.mv<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd and rs2 != 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> |[0x80000104]:c.mv fp, fp<br> [0x80000106]:sw fp, 0(t1)<br>    |
|   2|[0x80002208]<br>0x00000000|- rs2 : x5<br> - rd : x21<br> - rs2 != rd and rs2 != 0<br> - rs2_val == 0<br> - rs2_val==0<br>                                             |[0x8000010e]:c.mv s5, t0<br> [0x80000110]:sw s5, 4(t1)<br>    |
|   3|[0x8000220c]<br>0x7FFFFFFF|- rs2 : x26<br> - rd : x19<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                |[0x8000011c]:c.mv s3, s10<br> [0x8000011e]:sw s3, 8(t1)<br>   |
|   4|[0x80002210]<br>0x00000001|- rs2 : x9<br> - rd : x27<br> - rs2_val == 1<br>                                                                                           |[0x80000126]:c.mv s11, s1<br> [0x80000128]:sw s11, 12(t1)<br> |
|   5|[0x80002214]<br>0x00000002|- rs2 : x7<br> - rd : x23<br> - rs2_val == 2<br> - rs2_val==2<br>                                                                          |[0x80000130]:c.mv s7, t2<br> [0x80000132]:sw s7, 16(t1)<br>   |
|   6|[0x80002218]<br>0x00000004|- rs2 : x18<br> - rd : x25<br> - rs2_val == 4<br> - rs2_val==4<br>                                                                         |[0x8000013a]:c.mv s9, s2<br> [0x8000013c]:sw s9, 20(t1)<br>   |
|   7|[0x8000221c]<br>0x00000008|- rs2 : x19<br> - rd : x5<br> - rs2_val == 8<br>                                                                                           |[0x80000144]:c.mv t0, s3<br> [0x80000146]:sw t0, 24(t1)<br>   |
|   8|[0x80002220]<br>0x00000010|- rs2 : x10<br> - rd : x29<br> - rs2_val == 16<br>                                                                                         |[0x8000014e]:c.mv t4, a0<br> [0x80000150]:sw t4, 28(t1)<br>   |
|   9|[0x80002224]<br>0x00000020|- rs2 : x22<br> - rd : x7<br> - rs2_val == 32<br>                                                                                          |[0x80000158]:c.mv t2, s6<br> [0x8000015a]:sw t2, 32(t1)<br>   |
|  10|[0x80002228]<br>0x00000040|- rs2 : x14<br> - rd : x24<br> - rs2_val == 64<br>                                                                                         |[0x80000162]:c.mv s8, a4<br> [0x80000164]:sw s8, 36(t1)<br>   |
|  11|[0x8000222c]<br>0x00000080|- rs2 : x20<br> - rd : x16<br> - rs2_val == 128<br>                                                                                        |[0x8000016c]:c.mv a6, s4<br> [0x8000016e]:sw a6, 40(t1)<br>   |
|  12|[0x80002230]<br>0x00000100|- rs2 : x3<br> - rd : x14<br> - rs2_val == 256<br>                                                                                         |[0x80000176]:c.mv a4, gp<br> [0x80000178]:sw a4, 44(t1)<br>   |
|  13|[0x80002234]<br>0x00000200|- rs2 : x2<br> - rd : x26<br> - rs2_val == 512<br>                                                                                         |[0x80000180]:c.mv s10, sp<br> [0x80000182]:sw s10, 48(t1)<br> |
|  14|[0x80002238]<br>0x00000400|- rs2 : x1<br> - rd : x10<br> - rs2_val == 1024<br>                                                                                        |[0x8000018a]:c.mv a0, ra<br> [0x8000018c]:sw a0, 52(t1)<br>   |
|  15|[0x8000223c]<br>0x00000800|- rs2 : x13<br> - rd : x28<br> - rs2_val == 2048<br>                                                                                       |[0x80000198]:c.mv t3, a3<br> [0x8000019a]:sw t3, 56(t1)<br>   |
|  16|[0x80002240]<br>0x00001000|- rs2 : x28<br> - rd : x11<br> - rs2_val == 4096<br>                                                                                       |[0x800001a2]:c.mv a1, t3<br> [0x800001a4]:sw a1, 60(t1)<br>   |
|  17|[0x80002244]<br>0x00002000|- rs2 : x21<br> - rd : x4<br> - rs2_val == 8192<br>                                                                                        |[0x800001ac]:c.mv tp, s5<br> [0x800001ae]:sw tp, 64(t1)<br>   |
|  18|[0x80002248]<br>0x00004000|- rs2 : x16<br> - rd : x2<br> - rs2_val == 16384<br>                                                                                       |[0x800001b6]:c.mv sp, a6<br> [0x800001b8]:sw sp, 68(t1)<br>   |
|  19|[0x8000224c]<br>0x00008000|- rs2 : x12<br> - rd : x13<br> - rs2_val == 32768<br>                                                                                      |[0x800001c0]:c.mv a3, a2<br> [0x800001c2]:sw a3, 72(t1)<br>   |
|  20|[0x80002250]<br>0x00010000|- rs2 : x4<br> - rd : x22<br> - rs2_val == 65536<br>                                                                                       |[0x800001ca]:c.mv s6, tp<br> [0x800001cc]:sw s6, 76(t1)<br>   |
|  21|[0x80002254]<br>0x00020000|- rs2 : x27<br> - rd : x15<br> - rs2_val == 131072<br>                                                                                     |[0x800001d4]:c.mv a5, s11<br> [0x800001d6]:sw a5, 80(t1)<br>  |
|  22|[0x80002258]<br>0x00040000|- rs2 : x23<br> - rd : x30<br> - rs2_val == 262144<br>                                                                                     |[0x800001de]:c.mv t5, s7<br> [0x800001e0]:sw t5, 84(t1)<br>   |
|  23|[0x8000225c]<br>0x00080000|- rs2 : x25<br> - rd : x31<br> - rs2_val == 524288<br>                                                                                     |[0x800001f0]:c.mv t6, s9<br> [0x800001f2]:c.swsp t6, 0<br>    |
|  24|[0x80002260]<br>0x00100000|- rs2 : x29<br> - rd : x3<br> - rs2_val == 1048576<br>                                                                                     |[0x800001f8]:c.mv gp, t4<br> [0x800001fa]:c.swsp gp, 1<br>    |
|  25|[0x80002264]<br>0x00200000|- rs2 : x24<br> - rd : x18<br> - rs2_val == 2097152<br>                                                                                    |[0x80000200]:c.mv s2, s8<br> [0x80000202]:c.swsp s2, 2<br>    |
|  26|[0x80002268]<br>0x00400000|- rs2 : x30<br> - rd : x20<br> - rs2_val == 4194304<br>                                                                                    |[0x80000208]:c.mv s4, t5<br> [0x8000020a]:c.swsp s4, 3<br>    |
|  27|[0x8000226c]<br>0x00800000|- rs2 : x11<br> - rd : x12<br> - rs2_val == 8388608<br>                                                                                    |[0x80000210]:c.mv a2, a1<br> [0x80000212]:c.swsp a2, 4<br>    |
|  28|[0x80002270]<br>0x00000000|- rs2 : x6<br> - rd : x0<br> - rs2_val == 16777216<br>                                                                                     |[0x80000218]:c.mv.hint.t1<br> [0x8000021a]:c.swsp zero, 5<br> |
|  29|[0x80002274]<br>0x02000000|- rs2 : x15<br> - rd : x9<br> - rs2_val == 33554432<br>                                                                                    |[0x80000220]:c.mv s1, a5<br> [0x80000222]:c.swsp s1, 6<br>    |
|  30|[0x80002278]<br>0x04000000|- rs2 : x17<br> - rd : x6<br> - rs2_val == 67108864<br>                                                                                    |[0x80000228]:c.mv t1, a7<br> [0x8000022a]:c.swsp t1, 7<br>    |
|  31|[0x8000227c]<br>0x08000000|- rs2 : x31<br> - rd : x1<br> - rs2_val == 134217728<br>                                                                                   |[0x80000230]:c.mv ra, t6<br> [0x80000232]:c.swsp ra, 8<br>    |
|  32|[0x80002280]<br>0x10000000|- rd : x17<br> - rs2_val == 268435456<br>                                                                                                  |[0x80000238]:c.mv a7, s9<br> [0x8000023a]:c.swsp a7, 9<br>    |
|  33|[0x80002284]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                 |[0x80000240]:c.mv a0, a1<br> [0x80000242]:c.swsp a0, 10<br>   |
|  34|[0x80002288]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                |[0x80000248]:c.mv a0, a1<br> [0x8000024a]:c.swsp a0, 11<br>   |
|  35|[0x8000228c]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                        |[0x80000250]:c.mv a0, a1<br> [0x80000252]:c.swsp a0, 12<br>   |
|  36|[0x80002290]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                        |[0x80000258]:c.mv a0, a1<br> [0x8000025a]:c.swsp a0, 13<br>   |
|  37|[0x80002294]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                        |[0x80000260]:c.mv a0, a1<br> [0x80000262]:c.swsp a0, 14<br>   |
|  38|[0x80002298]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                        |[0x80000268]:c.mv a0, a1<br> [0x8000026a]:c.swsp a0, 15<br>   |
|  39|[0x8000229c]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                       |[0x80000270]:c.mv a0, a1<br> [0x80000272]:c.swsp a0, 16<br>   |
|  40|[0x800022a0]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                       |[0x80000278]:c.mv a0, a1<br> [0x8000027a]:c.swsp a0, 17<br>   |
|  41|[0x800022a4]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                       |[0x80000280]:c.mv a0, a1<br> [0x80000282]:c.swsp a0, 18<br>   |
|  42|[0x800022a8]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                      |[0x80000288]:c.mv a0, a1<br> [0x8000028a]:c.swsp a0, 19<br>   |
|  43|[0x800022ac]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                      |[0x80000290]:c.mv a0, a1<br> [0x80000292]:c.swsp a0, 20<br>   |
|  44|[0x800022b0]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                      |[0x80000298]:c.mv a0, a1<br> [0x8000029a]:c.swsp a0, 21<br>   |
|  45|[0x800022b4]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                     |[0x800002a0]:c.mv a0, a1<br> [0x800002a2]:c.swsp a0, 22<br>   |
|  46|[0x800022b8]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                     |[0x800002ac]:c.mv a0, a1<br> [0x800002ae]:c.swsp a0, 23<br>   |
|  47|[0x800022bc]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                     |[0x800002b8]:c.mv a0, a1<br> [0x800002ba]:c.swsp a0, 24<br>   |
|  48|[0x800022c0]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                     |[0x800002c4]:c.mv a0, a1<br> [0x800002c6]:c.swsp a0, 25<br>   |
|  49|[0x800022c4]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                    |[0x800002d0]:c.mv a0, a1<br> [0x800002d2]:c.swsp a0, 26<br>   |
|  50|[0x800022c8]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                    |[0x800002dc]:c.mv a0, a1<br> [0x800002de]:c.swsp a0, 27<br>   |
|  51|[0x800022cc]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                    |[0x800002e8]:c.mv a0, a1<br> [0x800002ea]:c.swsp a0, 28<br>   |
|  52|[0x800022d0]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                   |[0x800002f4]:c.mv a0, a1<br> [0x800002f6]:c.swsp a0, 29<br>   |
|  53|[0x800022d4]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                   |[0x80000300]:c.mv a0, a1<br> [0x80000302]:c.swsp a0, 30<br>   |
|  54|[0x800022d8]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                   |[0x8000030c]:c.mv a0, a1<br> [0x8000030e]:c.swsp a0, 31<br>   |
|  55|[0x800022dc]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                  |[0x80000318]:c.mv a0, a1<br> [0x8000031a]:c.swsp a0, 32<br>   |
|  56|[0x800022e0]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                |[0x80000324]:c.mv a0, a1<br> [0x80000326]:c.swsp a0, 33<br>   |
|  57|[0x800022e4]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                               |[0x80000330]:c.mv a0, a1<br> [0x80000332]:c.swsp a0, 34<br>   |
|  58|[0x800022e8]<br>0x55555555|- rs2_val == 1431655765<br> - rs2_val==1431655765<br>                                                                                      |[0x8000033c]:c.mv a0, a1<br> [0x8000033e]:c.swsp a0, 35<br>   |
|  59|[0x800022ec]<br>0xAAAAAAAA|- rs2_val == -1431655766<br> - rs2_val==-1431655766<br>                                                                                    |[0x80000348]:c.mv a0, a1<br> [0x8000034a]:c.swsp a0, 36<br>   |
|  60|[0x800022f0]<br>0x00000003|- rs2_val==3<br>                                                                                                                           |[0x80000350]:c.mv a0, a1<br> [0x80000352]:c.swsp a0, 37<br>   |
|  61|[0x800022f4]<br>0x00000005|- rs2_val==5<br>                                                                                                                           |[0x80000358]:c.mv a0, a1<br> [0x8000035a]:c.swsp a0, 38<br>   |
|  62|[0x800022f8]<br>0x33333333|- rs2_val==858993459<br>                                                                                                                   |[0x80000364]:c.mv a0, a1<br> [0x80000366]:c.swsp a0, 39<br>   |
|  63|[0x800022fc]<br>0x66666666|- rs2_val==1717986918<br>                                                                                                                  |[0x80000370]:c.mv a0, a1<br> [0x80000372]:c.swsp a0, 40<br>   |
|  64|[0x80002300]<br>0xFFFF4AFC|- rs2_val==-46340<br>                                                                                                                      |[0x8000037c]:c.mv a0, a1<br> [0x8000037e]:c.swsp a0, 41<br>   |
|  65|[0x80002304]<br>0x0000B504|- rs2_val==46340<br>                                                                                                                       |[0x80000388]:c.mv a0, a1<br> [0x8000038a]:c.swsp a0, 42<br>   |
|  66|[0x80002308]<br>0x55555554|- rs2_val==1431655764<br>                                                                                                                  |[0x80000394]:c.mv a0, a1<br> [0x80000396]:c.swsp a0, 43<br>   |
|  67|[0x8000230c]<br>0x33333332|- rs2_val==858993458<br>                                                                                                                   |[0x800003a0]:c.mv a0, a1<br> [0x800003a2]:c.swsp a0, 44<br>   |
|  68|[0x80002310]<br>0x66666665|- rs2_val==1717986917<br>                                                                                                                  |[0x800003ac]:c.mv a0, a1<br> [0x800003ae]:c.swsp a0, 45<br>   |
|  69|[0x80002314]<br>0x0000B503|- rs2_val==46339<br>                                                                                                                       |[0x800003b8]:c.mv a0, a1<br> [0x800003ba]:c.swsp a0, 46<br>   |
|  70|[0x80002318]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                  |[0x800003c4]:c.mv a0, a1<br> [0x800003c6]:c.swsp a0, 47<br>   |
|  71|[0x8000231c]<br>0x0000B505|- rs2_val==46341<br>                                                                                                                       |[0x800003d0]:c.mv a0, a1<br> [0x800003d2]:c.swsp a0, 48<br>   |
|  72|[0x80002320]<br>0xFFFF4AFD|- rs2_val==-46339<br>                                                                                                                      |[0x800003dc]:c.mv a0, a1<br> [0x800003de]:c.swsp a0, 49<br>   |
|  73|[0x80002324]<br>0x55555556|- rs2_val==1431655766<br>                                                                                                                  |[0x800003e8]:c.mv a0, a1<br> [0x800003ea]:c.swsp a0, 50<br>   |
|  74|[0x80002328]<br>0xAAAAAAAB|- rs2_val==-1431655765<br>                                                                                                                 |[0x800003f4]:c.mv a0, a1<br> [0x800003f6]:c.swsp a0, 51<br>   |
|  75|[0x8000232c]<br>0x00000006|- rs2_val==6<br>                                                                                                                           |[0x800003fc]:c.mv a0, a1<br> [0x800003fe]:c.swsp a0, 52<br>   |
|  76|[0x80002330]<br>0x33333334|- rs2_val==858993460<br>                                                                                                                   |[0x80000408]:c.mv a0, a1<br> [0x8000040a]:c.swsp a0, 53<br>   |
|  77|[0x80002334]<br>0x66666667|- rs2_val==1717986919<br>                                                                                                                  |[0x80000414]:c.mv a0, a1<br> [0x80000416]:c.swsp a0, 54<br>   |
|  78|[0x80002338]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                  |[0x80000420]:c.mv a0, a1<br> [0x80000422]:c.swsp a0, 55<br>   |
|  79|[0x8000233c]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                  |[0x8000042c]:c.mv a0, a1<br> [0x8000042e]:c.swsp a0, 56<br>   |
|  80|[0x80002340]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                 |[0x80000438]:c.mv a0, a1<br> [0x8000043a]:c.swsp a0, 57<br>   |
|  81|[0x80002344]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                 |[0x80000444]:c.mv a0, a1<br> [0x80000446]:c.swsp a0, 58<br>   |
|  82|[0x80002348]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                 |[0x80000450]:c.mv a0, a1<br> [0x80000452]:c.swsp a0, 59<br>   |
|  83|[0x8000234c]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                |[0x8000045c]:c.mv a0, a1<br> [0x8000045e]:c.swsp a0, 60<br>   |
|  84|[0x80002350]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                |[0x80000468]:c.mv a0, a1<br> [0x8000046a]:c.swsp a0, 61<br>   |
