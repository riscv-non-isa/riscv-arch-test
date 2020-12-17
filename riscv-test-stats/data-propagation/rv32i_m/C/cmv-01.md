
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000480')]      |
| SIG_REGION                | [('0x80002010', '0x80002170', '88 words')]      |
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
      [0x80000474]:c.mv a0, a1
      [0x80000476]:c.swsp a0, 60
 -- Signature Address: 0x80002160 Data: 0x00400000
 -- Redundant Coverpoints hit by the op
      - opcode : c.mv
      - rs2 : x11
      - rd : x10
      - rs2 != rd and rs2 != 0
      - rs2_val == 4194304






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
|   1|[0x80002010]<br>0x80000000|- opcode : c.mv<br> - rs2 : x23<br> - rd : x16<br> - rs2 != rd and rs2 != 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> |[0x80000104]:c.mv a6, s7<br> [0x80000106]:sw a6, 0(t0)<br>    |
|   2|[0x80002014]<br>0x00000000|- rs2 : x11<br> - rd : x11<br> - rs2 == rd and rs2 != 0<br> - rs2_val == 0<br> - rs2_val==0<br>                                              |[0x8000010e]:c.mv a1, a1<br> [0x80000110]:sw a1, 4(t0)<br>    |
|   3|[0x80002018]<br>0x7FFFFFFF|- rs2 : x2<br> - rd : x24<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                   |[0x8000011c]:c.mv s8, sp<br> [0x8000011e]:sw s8, 8(t0)<br>    |
|   4|[0x8000201c]<br>0x00000001|- rs2 : x28<br> - rd : x19<br> - rs2_val == 1<br>                                                                                            |[0x80000126]:c.mv s3, t3<br> [0x80000128]:sw s3, 12(t0)<br>   |
|   5|[0x80002020]<br>0x00000002|- rs2 : x17<br> - rd : x6<br> - rs2_val == 2<br> - rs2_val==2<br>                                                                            |[0x80000130]:c.mv t1, a7<br> [0x80000132]:sw t1, 16(t0)<br>   |
|   6|[0x80002024]<br>0x00000004|- rs2 : x9<br> - rd : x18<br> - rs2_val == 4<br> - rs2_val==4<br>                                                                            |[0x8000013a]:c.mv s2, s1<br> [0x8000013c]:sw s2, 20(t0)<br>   |
|   7|[0x80002028]<br>0x00000008|- rs2 : x13<br> - rd : x21<br> - rs2_val == 8<br>                                                                                            |[0x80000144]:c.mv s5, a3<br> [0x80000146]:sw s5, 24(t0)<br>   |
|   8|[0x8000202c]<br>0x00000010|- rs2 : x6<br> - rd : x26<br> - rs2_val == 16<br>                                                                                            |[0x8000014e]:c.mv s10, t1<br> [0x80000150]:sw s10, 28(t0)<br> |
|   9|[0x80002030]<br>0x00000020|- rs2 : x20<br> - rd : x3<br> - rs2_val == 32<br>                                                                                            |[0x80000158]:c.mv gp, s4<br> [0x8000015a]:sw gp, 32(t0)<br>   |
|  10|[0x80002034]<br>0x00000040|- rs2 : x12<br> - rd : x31<br> - rs2_val == 64<br>                                                                                           |[0x80000162]:c.mv t6, a2<br> [0x80000164]:sw t6, 36(t0)<br>   |
|  11|[0x80002038]<br>0x00000080|- rs2 : x16<br> - rd : x2<br> - rs2_val == 128<br>                                                                                           |[0x8000016c]:c.mv sp, a6<br> [0x8000016e]:sw sp, 40(t0)<br>   |
|  12|[0x8000203c]<br>0x00000100|- rs2 : x15<br> - rd : x14<br> - rs2_val == 256<br>                                                                                          |[0x80000176]:c.mv a4, a5<br> [0x80000178]:sw a4, 44(t0)<br>   |
|  13|[0x80002040]<br>0x00000200|- rs2 : x25<br> - rd : x20<br> - rs2_val == 512<br>                                                                                          |[0x80000180]:c.mv s4, s9<br> [0x80000182]:sw s4, 48(t0)<br>   |
|  14|[0x80002044]<br>0x00000400|- rs2 : x24<br> - rd : x28<br> - rs2_val == 1024<br>                                                                                         |[0x8000018a]:c.mv t3, s8<br> [0x8000018c]:sw t3, 52(t0)<br>   |
|  15|[0x80002048]<br>0x00000800|- rs2 : x26<br> - rd : x15<br> - rs2_val == 2048<br>                                                                                         |[0x80000198]:c.mv a5, s10<br> [0x8000019a]:sw a5, 56(t0)<br>  |
|  16|[0x8000204c]<br>0x00001000|- rs2 : x18<br> - rd : x13<br> - rs2_val == 4096<br>                                                                                         |[0x800001a2]:c.mv a3, s2<br> [0x800001a4]:sw a3, 60(t0)<br>   |
|  17|[0x80002050]<br>0x00002000|- rs2 : x1<br> - rd : x8<br> - rs2_val == 8192<br>                                                                                           |[0x800001ac]:c.mv fp, ra<br> [0x800001ae]:sw fp, 64(t0)<br>   |
|  18|[0x80002054]<br>0x00004000|- rs2 : x10<br> - rd : x7<br> - rs2_val == 16384<br>                                                                                         |[0x800001b6]:c.mv t2, a0<br> [0x800001b8]:sw t2, 68(t0)<br>   |
|  19|[0x80002058]<br>0x00008000|- rs2 : x8<br> - rd : x30<br> - rs2_val == 32768<br>                                                                                         |[0x800001c0]:c.mv t5, fp<br> [0x800001c2]:sw t5, 72(t0)<br>   |
|  20|[0x8000205c]<br>0x00010000|- rs2 : x21<br> - rd : x27<br> - rs2_val == 65536<br>                                                                                        |[0x800001ca]:c.mv s11, s5<br> [0x800001cc]:sw s11, 76(t0)<br> |
|  21|[0x80002060]<br>0x00020000|- rs2 : x27<br> - rd : x9<br> - rs2_val == 131072<br>                                                                                        |[0x800001d4]:c.mv s1, s11<br> [0x800001d6]:sw s1, 80(t0)<br>  |
|  22|[0x80002064]<br>0x00040000|- rs2 : x14<br> - rd : x10<br> - rs2_val == 262144<br>                                                                                       |[0x800001de]:c.mv a0, a4<br> [0x800001e0]:sw a0, 84(t0)<br>   |
|  23|[0x80002068]<br>0x00080000|- rs2 : x30<br> - rd : x25<br> - rs2_val == 524288<br>                                                                                       |[0x800001e8]:c.mv s9, t5<br> [0x800001ea]:sw s9, 88(t0)<br>   |
|  24|[0x8000206c]<br>0x00100000|- rs2 : x4<br> - rd : x22<br> - rs2_val == 1048576<br>                                                                                       |[0x800001f2]:c.mv s6, tp<br> [0x800001f4]:sw s6, 92(t0)<br>   |
|  25|[0x80002070]<br>0x00200000|- rs2 : x19<br> - rd : x4<br> - rs2_val == 2097152<br>                                                                                       |[0x80000204]:c.mv tp, s3<br> [0x80000206]:c.swsp tp, 0<br>    |
|  26|[0x80002074]<br>0x00000000|- rs2 : x29<br> - rd : x0<br> - rs2_val == 4194304<br>                                                                                       |[0x8000020c]:c.mv.hint.t4<br> [0x8000020e]:c.swsp zero, 1<br> |
|  27|[0x80002078]<br>0x00800000|- rs2 : x7<br> - rd : x23<br> - rs2_val == 8388608<br>                                                                                       |[0x80000214]:c.mv s7, t2<br> [0x80000216]:c.swsp s7, 2<br>    |
|  28|[0x8000207c]<br>0x01000000|- rs2 : x31<br> - rd : x29<br> - rs2_val == 16777216<br>                                                                                     |[0x8000021c]:c.mv t4, t6<br> [0x8000021e]:c.swsp t4, 3<br>    |
|  29|[0x80002080]<br>0x02000000|- rs2 : x3<br> - rd : x12<br> - rs2_val == 33554432<br>                                                                                      |[0x80000224]:c.mv a2, gp<br> [0x80000226]:c.swsp a2, 4<br>    |
|  30|[0x80002084]<br>0x04000000|- rs2 : x22<br> - rd : x5<br> - rs2_val == 67108864<br>                                                                                      |[0x8000022c]:c.mv t0, s6<br> [0x8000022e]:c.swsp t0, 5<br>    |
|  31|[0x80002088]<br>0x08000000|- rs2 : x5<br> - rd : x1<br> - rs2_val == 134217728<br>                                                                                      |[0x80000234]:c.mv ra, t0<br> [0x80000236]:c.swsp ra, 6<br>    |
|  32|[0x8000208c]<br>0x10000000|- rd : x17<br> - rs2_val == 268435456<br>                                                                                                    |[0x8000023c]:c.mv a7, t6<br> [0x8000023e]:c.swsp a7, 7<br>    |
|  33|[0x80002090]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                   |[0x80000244]:c.mv a0, a1<br> [0x80000246]:c.swsp a0, 8<br>    |
|  34|[0x80002094]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                  |[0x8000024c]:c.mv a0, a1<br> [0x8000024e]:c.swsp a0, 9<br>    |
|  35|[0x80002098]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                          |[0x80000254]:c.mv a0, a1<br> [0x80000256]:c.swsp a0, 10<br>   |
|  36|[0x8000209c]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                          |[0x8000025c]:c.mv a0, a1<br> [0x8000025e]:c.swsp a0, 11<br>   |
|  37|[0x800020a0]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                          |[0x80000264]:c.mv a0, a1<br> [0x80000266]:c.swsp a0, 12<br>   |
|  38|[0x800020a4]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                          |[0x8000026c]:c.mv a0, a1<br> [0x8000026e]:c.swsp a0, 13<br>   |
|  39|[0x800020a8]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                         |[0x80000274]:c.mv a0, a1<br> [0x80000276]:c.swsp a0, 14<br>   |
|  40|[0x800020ac]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                         |[0x8000027c]:c.mv a0, a1<br> [0x8000027e]:c.swsp a0, 15<br>   |
|  41|[0x800020b0]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                         |[0x80000284]:c.mv a0, a1<br> [0x80000286]:c.swsp a0, 16<br>   |
|  42|[0x800020b4]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                        |[0x8000028c]:c.mv a0, a1<br> [0x8000028e]:c.swsp a0, 17<br>   |
|  43|[0x800020b8]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                        |[0x80000294]:c.mv a0, a1<br> [0x80000296]:c.swsp a0, 18<br>   |
|  44|[0x800020bc]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                        |[0x8000029c]:c.mv a0, a1<br> [0x8000029e]:c.swsp a0, 19<br>   |
|  45|[0x800020c0]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                       |[0x800002a4]:c.mv a0, a1<br> [0x800002a6]:c.swsp a0, 20<br>   |
|  46|[0x800020c4]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                       |[0x800002b0]:c.mv a0, a1<br> [0x800002b2]:c.swsp a0, 21<br>   |
|  47|[0x800020c8]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                       |[0x800002bc]:c.mv a0, a1<br> [0x800002be]:c.swsp a0, 22<br>   |
|  48|[0x800020cc]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                       |[0x800002c8]:c.mv a0, a1<br> [0x800002ca]:c.swsp a0, 23<br>   |
|  49|[0x800020d0]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                      |[0x800002d4]:c.mv a0, a1<br> [0x800002d6]:c.swsp a0, 24<br>   |
|  50|[0x800020d4]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                      |[0x800002e0]:c.mv a0, a1<br> [0x800002e2]:c.swsp a0, 25<br>   |
|  51|[0x800020d8]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                      |[0x800002ec]:c.mv a0, a1<br> [0x800002ee]:c.swsp a0, 26<br>   |
|  52|[0x800020dc]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                     |[0x800002f8]:c.mv a0, a1<br> [0x800002fa]:c.swsp a0, 27<br>   |
|  53|[0x800020e0]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                     |[0x80000304]:c.mv a0, a1<br> [0x80000306]:c.swsp a0, 28<br>   |
|  54|[0x800020e4]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                     |[0x80000310]:c.mv a0, a1<br> [0x80000312]:c.swsp a0, 29<br>   |
|  55|[0x800020e8]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                    |[0x8000031c]:c.mv a0, a1<br> [0x8000031e]:c.swsp a0, 30<br>   |
|  56|[0x800020ec]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                  |[0x80000328]:c.mv a0, a1<br> [0x8000032a]:c.swsp a0, 31<br>   |
|  57|[0x800020f0]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                 |[0x80000334]:c.mv a0, a1<br> [0x80000336]:c.swsp a0, 32<br>   |
|  58|[0x800020f4]<br>0x55555555|- rs2_val == 1431655765<br> - rs2_val==1431655765<br>                                                                                        |[0x80000340]:c.mv a0, a1<br> [0x80000342]:c.swsp a0, 33<br>   |
|  59|[0x800020f8]<br>0xAAAAAAAA|- rs2_val == -1431655766<br> - rs2_val==-1431655766<br>                                                                                      |[0x8000034c]:c.mv a0, a1<br> [0x8000034e]:c.swsp a0, 34<br>   |
|  60|[0x800020fc]<br>0x00000003|- rs2_val==3<br>                                                                                                                             |[0x80000354]:c.mv a0, a1<br> [0x80000356]:c.swsp a0, 35<br>   |
|  61|[0x80002100]<br>0x00000005|- rs2_val==5<br>                                                                                                                             |[0x8000035c]:c.mv a0, a1<br> [0x8000035e]:c.swsp a0, 36<br>   |
|  62|[0x80002104]<br>0x33333333|- rs2_val==858993459<br>                                                                                                                     |[0x80000368]:c.mv a0, a1<br> [0x8000036a]:c.swsp a0, 37<br>   |
|  63|[0x80002108]<br>0x66666666|- rs2_val==1717986918<br>                                                                                                                    |[0x80000374]:c.mv a0, a1<br> [0x80000376]:c.swsp a0, 38<br>   |
|  64|[0x8000210c]<br>0xFFFF4AFC|- rs2_val==-46340<br>                                                                                                                        |[0x80000380]:c.mv a0, a1<br> [0x80000382]:c.swsp a0, 39<br>   |
|  65|[0x80002110]<br>0x0000B504|- rs2_val==46340<br>                                                                                                                         |[0x8000038c]:c.mv a0, a1<br> [0x8000038e]:c.swsp a0, 40<br>   |
|  66|[0x80002114]<br>0x55555554|- rs2_val==1431655764<br>                                                                                                                    |[0x80000398]:c.mv a0, a1<br> [0x8000039a]:c.swsp a0, 41<br>   |
|  67|[0x80002118]<br>0x33333332|- rs2_val==858993458<br>                                                                                                                     |[0x800003a4]:c.mv a0, a1<br> [0x800003a6]:c.swsp a0, 42<br>   |
|  68|[0x8000211c]<br>0x66666665|- rs2_val==1717986917<br>                                                                                                                    |[0x800003b0]:c.mv a0, a1<br> [0x800003b2]:c.swsp a0, 43<br>   |
|  69|[0x80002120]<br>0x0000B503|- rs2_val==46339<br>                                                                                                                         |[0x800003bc]:c.mv a0, a1<br> [0x800003be]:c.swsp a0, 44<br>   |
|  70|[0x80002124]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                    |[0x800003c8]:c.mv a0, a1<br> [0x800003ca]:c.swsp a0, 45<br>   |
|  71|[0x80002128]<br>0x0000B505|- rs2_val==46341<br>                                                                                                                         |[0x800003d4]:c.mv a0, a1<br> [0x800003d6]:c.swsp a0, 46<br>   |
|  72|[0x8000212c]<br>0xFFFF4AFD|- rs2_val==-46339<br>                                                                                                                        |[0x800003e0]:c.mv a0, a1<br> [0x800003e2]:c.swsp a0, 47<br>   |
|  73|[0x80002130]<br>0x55555556|- rs2_val==1431655766<br>                                                                                                                    |[0x800003ec]:c.mv a0, a1<br> [0x800003ee]:c.swsp a0, 48<br>   |
|  74|[0x80002134]<br>0xAAAAAAAB|- rs2_val==-1431655765<br>                                                                                                                   |[0x800003f8]:c.mv a0, a1<br> [0x800003fa]:c.swsp a0, 49<br>   |
|  75|[0x80002138]<br>0x00000006|- rs2_val==6<br>                                                                                                                             |[0x80000400]:c.mv a0, a1<br> [0x80000402]:c.swsp a0, 50<br>   |
|  76|[0x8000213c]<br>0x33333334|- rs2_val==858993460<br>                                                                                                                     |[0x8000040c]:c.mv a0, a1<br> [0x8000040e]:c.swsp a0, 51<br>   |
|  77|[0x80002140]<br>0x66666667|- rs2_val==1717986919<br>                                                                                                                    |[0x80000418]:c.mv a0, a1<br> [0x8000041a]:c.swsp a0, 52<br>   |
|  78|[0x80002144]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                    |[0x80000424]:c.mv a0, a1<br> [0x80000426]:c.swsp a0, 53<br>   |
|  79|[0x80002148]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                    |[0x80000430]:c.mv a0, a1<br> [0x80000432]:c.swsp a0, 54<br>   |
|  80|[0x8000214c]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                   |[0x8000043c]:c.mv a0, a1<br> [0x8000043e]:c.swsp a0, 55<br>   |
|  81|[0x80002150]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                   |[0x80000448]:c.mv a0, a1<br> [0x8000044a]:c.swsp a0, 56<br>   |
|  82|[0x80002154]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                   |[0x80000454]:c.mv a0, a1<br> [0x80000456]:c.swsp a0, 57<br>   |
|  83|[0x80002158]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                  |[0x80000460]:c.mv a0, a1<br> [0x80000462]:c.swsp a0, 58<br>   |
|  84|[0x8000215c]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                  |[0x8000046c]:c.mv a0, a1<br> [0x8000046e]:c.swsp a0, 59<br>   |
