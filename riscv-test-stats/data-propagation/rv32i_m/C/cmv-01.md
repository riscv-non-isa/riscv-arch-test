
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800003c0')]      |
| SIG_REGION                | [('0x80003204', '0x80003320', '71 words')]      |
| COV_LABELS                | cmv      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cmv-01.S/cmv-01.S    |
| Total Number of coverpoints| 135     |
| Total Coverpoints Hit     | 135      |
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
      [0x800003ae]:c.mv a0, a1
      [0x800003b0]:c.swsp a0, 46
 -- Signature Address: 0x8000331c Data: 0x00000100
 -- Redundant Coverpoints hit by the op
      - opcode : c.mv
      - rs2 : x11
      - rd : x10
      - rs2 != rd and rs2 != 0
      - rs2_val == 256






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

|s.no|        signature         |                                                                coverpoints                                                                |                             code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003210]<br>0x80000000|- opcode : c.mv<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd and rs2 != 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> |[0x80000104]:c.mv tp, tp<br> [0x80000106]:sw tp, 0(t1)<br>     |
|   2|[0x80003214]<br>0x00000000|- rs2 : x11<br> - rd : x1<br> - rs2 != rd and rs2 != 0<br> - rs2_val == 0<br>                                                              |[0x8000010e]:c.mv ra, a1<br> [0x80000110]:sw ra, 4(t1)<br>     |
|   3|[0x80003218]<br>0x7FFFFFFF|- rs2 : x9<br> - rd : x17<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                 |[0x8000011c]:c.mv a7, s1<br> [0x8000011e]:sw a7, 8(t1)<br>     |
|   4|[0x8000321c]<br>0x00000001|- rs2 : x13<br> - rd : x18<br> - rs2_val == 1<br>                                                                                          |[0x80000126]:c.mv s2, a3<br> [0x80000128]:sw s2, 12(t1)<br>    |
|   5|[0x80003220]<br>0x00000002|- rs2 : x17<br> - rd : x24<br> - rs2_val == 2<br>                                                                                          |[0x80000130]:c.mv s8, a7<br> [0x80000132]:sw s8, 16(t1)<br>    |
|   6|[0x80003224]<br>0x00000004|- rs2 : x22<br> - rd : x16<br> - rs2_val == 4<br>                                                                                          |[0x8000013a]:c.mv a6, s6<br> [0x8000013c]:sw a6, 20(t1)<br>    |
|   7|[0x80003228]<br>0x00000008|- rs2 : x23<br> - rd : x11<br> - rs2_val == 8<br>                                                                                          |[0x80000144]:c.mv a1, s7<br> [0x80000146]:sw a1, 24(t1)<br>    |
|   8|[0x8000322c]<br>0x00000010|- rs2 : x19<br> - rd : x30<br> - rs2_val == 16<br>                                                                                         |[0x8000014e]:c.mv t5, s3<br> [0x80000150]:sw t5, 28(t1)<br>    |
|   9|[0x80003230]<br>0x00000020|- rs2 : x27<br> - rd : x13<br> - rs2_val == 32<br>                                                                                         |[0x80000158]:c.mv a3, s11<br> [0x8000015a]:sw a3, 32(t1)<br>   |
|  10|[0x80003234]<br>0x00000040|- rs2 : x26<br> - rd : x29<br> - rs2_val == 64<br>                                                                                         |[0x80000162]:c.mv t4, s10<br> [0x80000164]:sw t4, 36(t1)<br>   |
|  11|[0x80003238]<br>0x00000080|- rs2 : x15<br> - rd : x3<br> - rs2_val == 128<br>                                                                                         |[0x8000016c]:c.mv gp, a5<br> [0x8000016e]:sw gp, 40(t1)<br>    |
|  12|[0x8000323c]<br>0x00000000|- rs2 : x2<br> - rd : x0<br> - rs2_val == 256<br>                                                                                          |[0x80000176]:c.mv.hint.sp<br> [0x80000178]:sw zero, 44(t1)<br> |
|  13|[0x80003240]<br>0x00000200|- rs2 : x12<br> - rd : x20<br> - rs2_val == 512<br>                                                                                        |[0x80000180]:c.mv s4, a2<br> [0x80000182]:sw s4, 48(t1)<br>    |
|  14|[0x80003244]<br>0x00000400|- rs2 : x28<br> - rd : x7<br> - rs2_val == 1024<br>                                                                                        |[0x8000018a]:c.mv t2, t3<br> [0x8000018c]:sw t2, 52(t1)<br>    |
|  15|[0x80003248]<br>0x00000800|- rs2 : x10<br> - rd : x2<br> - rs2_val == 2048<br>                                                                                        |[0x80000198]:c.mv sp, a0<br> [0x8000019a]:sw sp, 56(t1)<br>    |
|  16|[0x8000324c]<br>0x00001000|- rs2 : x3<br> - rd : x14<br> - rs2_val == 4096<br>                                                                                        |[0x800001a2]:c.mv a4, gp<br> [0x800001a4]:sw a4, 60(t1)<br>    |
|  17|[0x80003250]<br>0x00002000|- rs2 : x30<br> - rd : x21<br> - rs2_val == 8192<br>                                                                                       |[0x800001ac]:c.mv s5, t5<br> [0x800001ae]:sw s5, 64(t1)<br>    |
|  18|[0x80003254]<br>0x00004000|- rs2 : x14<br> - rd : x28<br> - rs2_val == 16384<br>                                                                                      |[0x800001b6]:c.mv t3, a4<br> [0x800001b8]:sw t3, 68(t1)<br>    |
|  19|[0x80003258]<br>0x00008000|- rs2 : x5<br> - rd : x22<br> - rs2_val == 32768<br>                                                                                       |[0x800001c0]:c.mv s6, t0<br> [0x800001c2]:sw s6, 72(t1)<br>    |
|  20|[0x8000325c]<br>0x00010000|- rs2 : x29<br> - rd : x5<br> - rs2_val == 65536<br>                                                                                       |[0x800001ca]:c.mv t0, t4<br> [0x800001cc]:sw t0, 76(t1)<br>    |
|  21|[0x80003260]<br>0x00020000|- rs2 : x7<br> - rd : x31<br> - rs2_val == 131072<br>                                                                                      |[0x800001d4]:c.mv t6, t2<br> [0x800001d6]:sw t6, 80(t1)<br>    |
|  22|[0x80003264]<br>0x00040000|- rs2 : x1<br> - rd : x19<br> - rs2_val == 262144<br>                                                                                      |[0x800001e6]:c.mv s3, ra<br> [0x800001e8]:c.swsp s3, 0<br>     |
|  23|[0x80003268]<br>0x00080000|- rs2 : x25<br> - rd : x12<br> - rs2_val == 524288<br>                                                                                     |[0x800001ee]:c.mv a2, s9<br> [0x800001f0]:c.swsp a2, 1<br>     |
|  24|[0x8000326c]<br>0x00100000|- rs2 : x16<br> - rd : x9<br> - rs2_val == 1048576<br>                                                                                     |[0x800001f6]:c.mv s1, a6<br> [0x800001f8]:c.swsp s1, 2<br>     |
|  25|[0x80003270]<br>0x00200000|- rs2 : x6<br> - rd : x26<br> - rs2_val == 2097152<br>                                                                                     |[0x800001fe]:c.mv s10, t1<br> [0x80000200]:c.swsp s10, 3<br>   |
|  26|[0x80003274]<br>0x00400000|- rs2 : x20<br> - rd : x8<br> - rs2_val == 4194304<br>                                                                                     |[0x80000206]:c.mv fp, s4<br> [0x80000208]:c.swsp fp, 4<br>     |
|  27|[0x80003278]<br>0x00800000|- rs2 : x31<br> - rd : x15<br> - rs2_val == 8388608<br>                                                                                    |[0x8000020e]:c.mv a5, t6<br> [0x80000210]:c.swsp a5, 5<br>     |
|  28|[0x8000327c]<br>0x01000000|- rs2 : x24<br> - rd : x10<br> - rs2_val == 16777216<br>                                                                                   |[0x80000216]:c.mv a0, s8<br> [0x80000218]:c.swsp a0, 6<br>     |
|  29|[0x80003280]<br>0x02000000|- rs2 : x21<br> - rd : x23<br> - rs2_val == 33554432<br>                                                                                   |[0x8000021e]:c.mv s7, s5<br> [0x80000220]:c.swsp s7, 7<br>     |
|  30|[0x80003284]<br>0x04000000|- rs2 : x8<br> - rd : x6<br> - rs2_val == 67108864<br>                                                                                     |[0x80000226]:c.mv t1, fp<br> [0x80000228]:c.swsp t1, 8<br>     |
|  31|[0x80003288]<br>0x08000000|- rs2 : x18<br> - rd : x27<br> - rs2_val == 134217728<br>                                                                                  |[0x8000022e]:c.mv s11, s2<br> [0x80000230]:c.swsp s11, 9<br>   |
|  32|[0x8000328c]<br>0x10000000|- rd : x25<br> - rs2_val == 268435456<br>                                                                                                  |[0x80000236]:c.mv s9, s10<br> [0x80000238]:c.swsp s9, 10<br>   |
|  33|[0x80003290]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                 |[0x8000023e]:c.mv a0, a1<br> [0x80000240]:c.swsp a0, 11<br>    |
|  34|[0x80003294]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                |[0x80000246]:c.mv a0, a1<br> [0x80000248]:c.swsp a0, 12<br>    |
|  35|[0x80003298]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                        |[0x8000024e]:c.mv a0, a1<br> [0x80000250]:c.swsp a0, 13<br>    |
|  36|[0x8000329c]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                        |[0x80000256]:c.mv a0, a1<br> [0x80000258]:c.swsp a0, 14<br>    |
|  37|[0x800032a0]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                |[0x80000262]:c.mv a0, a1<br> [0x80000264]:c.swsp a0, 15<br>    |
|  38|[0x800032a4]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                               |[0x8000026e]:c.mv a0, a1<br> [0x80000270]:c.swsp a0, 16<br>    |
|  39|[0x800032a8]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                |[0x8000027a]:c.mv a0, a1<br> [0x8000027c]:c.swsp a0, 17<br>    |
|  40|[0x800032ac]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                               |[0x80000286]:c.mv a0, a1<br> [0x80000288]:c.swsp a0, 18<br>    |
|  41|[0x800032b0]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                        |[0x8000028e]:c.mv a0, a1<br> [0x80000290]:c.swsp a0, 19<br>    |
|  42|[0x800032b4]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                        |[0x80000296]:c.mv a0, a1<br> [0x80000298]:c.swsp a0, 20<br>    |
|  43|[0x800032b8]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                       |[0x8000029e]:c.mv a0, a1<br> [0x800002a0]:c.swsp a0, 21<br>    |
|  44|[0x800032bc]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                       |[0x800002a6]:c.mv a0, a1<br> [0x800002a8]:c.swsp a0, 22<br>    |
|  45|[0x800032c0]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                       |[0x800002ae]:c.mv a0, a1<br> [0x800002b0]:c.swsp a0, 23<br>    |
|  46|[0x800032c4]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                      |[0x800002b6]:c.mv a0, a1<br> [0x800002b8]:c.swsp a0, 24<br>    |
|  47|[0x800032c8]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                      |[0x800002be]:c.mv a0, a1<br> [0x800002c0]:c.swsp a0, 25<br>    |
|  48|[0x800032cc]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                      |[0x800002c6]:c.mv a0, a1<br> [0x800002c8]:c.swsp a0, 26<br>    |
|  49|[0x800032d0]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                     |[0x800002ce]:c.mv a0, a1<br> [0x800002d0]:c.swsp a0, 27<br>    |
|  50|[0x800032d4]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                     |[0x800002da]:c.mv a0, a1<br> [0x800002dc]:c.swsp a0, 28<br>    |
|  51|[0x800032d8]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                     |[0x800002e6]:c.mv a0, a1<br> [0x800002e8]:c.swsp a0, 29<br>    |
|  52|[0x800032dc]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                     |[0x800002f2]:c.mv a0, a1<br> [0x800002f4]:c.swsp a0, 30<br>    |
|  53|[0x800032e0]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                    |[0x800002fe]:c.mv a0, a1<br> [0x80000300]:c.swsp a0, 31<br>    |
|  54|[0x800032e4]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                    |[0x8000030a]:c.mv a0, a1<br> [0x8000030c]:c.swsp a0, 32<br>    |
|  55|[0x800032e8]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                    |[0x80000316]:c.mv a0, a1<br> [0x80000318]:c.swsp a0, 33<br>    |
|  56|[0x800032ec]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                   |[0x80000322]:c.mv a0, a1<br> [0x80000324]:c.swsp a0, 34<br>    |
|  57|[0x800032f0]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                   |[0x8000032e]:c.mv a0, a1<br> [0x80000330]:c.swsp a0, 35<br>    |
|  58|[0x800032f4]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                   |[0x8000033a]:c.mv a0, a1<br> [0x8000033c]:c.swsp a0, 36<br>    |
|  59|[0x800032f8]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                  |[0x80000346]:c.mv a0, a1<br> [0x80000348]:c.swsp a0, 37<br>    |
|  60|[0x800032fc]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                  |[0x80000352]:c.mv a0, a1<br> [0x80000354]:c.swsp a0, 38<br>    |
|  61|[0x80003300]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                  |[0x8000035e]:c.mv a0, a1<br> [0x80000360]:c.swsp a0, 39<br>    |
|  62|[0x80003304]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                  |[0x8000036a]:c.mv a0, a1<br> [0x8000036c]:c.swsp a0, 40<br>    |
|  63|[0x80003308]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                 |[0x80000376]:c.mv a0, a1<br> [0x80000378]:c.swsp a0, 41<br>    |
|  64|[0x8000330c]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                 |[0x80000382]:c.mv a0, a1<br> [0x80000384]:c.swsp a0, 42<br>    |
|  65|[0x80003310]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                 |[0x8000038e]:c.mv a0, a1<br> [0x80000390]:c.swsp a0, 43<br>    |
|  66|[0x80003314]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                |[0x8000039a]:c.mv a0, a1<br> [0x8000039c]:c.swsp a0, 44<br>    |
|  67|[0x80003318]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                |[0x800003a6]:c.mv a0, a1<br> [0x800003a8]:c.swsp a0, 45<br>    |
