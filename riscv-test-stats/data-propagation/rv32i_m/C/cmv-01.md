
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000500')]      |
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
      [0x800004ec]:c.mv a0, a1
      [0x800004ee]:sw a0, 260(ra)
 -- Signature Address: 0x80002160 Data: 0x00200000
 -- Redundant Coverpoints hit by the op
      - opcode : c.mv
      - rs2 : x11
      - rd : x10
      - rs2 != rd and rs2 != 0
      - rs2_val == 2097152






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

|s.no|        signature         |                                                                 coverpoints                                                                 |                             code                              |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002010]<br>0x80000000|- opcode : c.mv<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd and rs2 != 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> |[0x80000104]:c.mv a3, a3<br> [0x80000106]:sw a3, 0(t0)<br>     |
|   2|[0x80002014]<br>0x00000000|- rs2 : x10<br> - rd : x26<br> - rs2 != rd and rs2 != 0<br> - rs2_val == 0<br> - rs2_val==0<br>                                              |[0x8000010e]:c.mv s10, a0<br> [0x80000110]:sw s10, 4(t0)<br>   |
|   3|[0x80002018]<br>0x7FFFFFFF|- rs2 : x19<br> - rd : x3<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                   |[0x8000011c]:c.mv gp, s3<br> [0x8000011e]:sw gp, 8(t0)<br>     |
|   4|[0x8000201c]<br>0x00000001|- rs2 : x27<br> - rd : x30<br> - rs2_val == 1<br>                                                                                            |[0x80000126]:c.mv t5, s11<br> [0x80000128]:sw t5, 12(t0)<br>   |
|   5|[0x80002020]<br>0x00000002|- rs2 : x4<br> - rd : x14<br> - rs2_val == 2<br> - rs2_val==2<br>                                                                            |[0x80000130]:c.mv a4, tp<br> [0x80000132]:sw a4, 16(t0)<br>    |
|   6|[0x80002024]<br>0x00000004|- rs2 : x26<br> - rd : x22<br> - rs2_val == 4<br> - rs2_val==4<br>                                                                           |[0x8000013a]:c.mv s6, s10<br> [0x8000013c]:sw s6, 20(t0)<br>   |
|   7|[0x80002028]<br>0x00000008|- rs2 : x30<br> - rd : x16<br> - rs2_val == 8<br>                                                                                            |[0x80000144]:c.mv a6, t5<br> [0x80000146]:sw a6, 24(t0)<br>    |
|   8|[0x8000202c]<br>0x00000010|- rs2 : x3<br> - rd : x7<br> - rs2_val == 16<br>                                                                                             |[0x8000014e]:c.mv t2, gp<br> [0x80000150]:sw t2, 28(t0)<br>    |
|   9|[0x80002030]<br>0x00000020|- rs2 : x14<br> - rd : x8<br> - rs2_val == 32<br>                                                                                            |[0x80000158]:c.mv fp, a4<br> [0x8000015a]:sw fp, 32(t0)<br>    |
|  10|[0x80002034]<br>0x00000040|- rs2 : x11<br> - rd : x1<br> - rs2_val == 64<br>                                                                                            |[0x80000162]:c.mv ra, a1<br> [0x80000164]:sw ra, 36(t0)<br>    |
|  11|[0x80002038]<br>0x00000080|- rs2 : x20<br> - rd : x15<br> - rs2_val == 128<br>                                                                                          |[0x8000016c]:c.mv a5, s4<br> [0x8000016e]:sw a5, 40(t0)<br>    |
|  12|[0x8000203c]<br>0x00000100|- rs2 : x28<br> - rd : x17<br> - rs2_val == 256<br>                                                                                          |[0x80000176]:c.mv a7, t3<br> [0x80000178]:sw a7, 44(t0)<br>    |
|  13|[0x80002040]<br>0x00000200|- rs2 : x18<br> - rd : x12<br> - rs2_val == 512<br>                                                                                          |[0x80000180]:c.mv a2, s2<br> [0x80000182]:sw a2, 48(t0)<br>    |
|  14|[0x80002044]<br>0x00000400|- rs2 : x23<br> - rd : x29<br> - rs2_val == 1024<br>                                                                                         |[0x8000018a]:c.mv t4, s7<br> [0x8000018c]:sw t4, 52(t0)<br>    |
|  15|[0x80002048]<br>0x00000800|- rs2 : x8<br> - rd : x2<br> - rs2_val == 2048<br>                                                                                           |[0x80000198]:c.mv sp, fp<br> [0x8000019a]:sw sp, 56(t0)<br>    |
|  16|[0x8000204c]<br>0x00001000|- rs2 : x1<br> - rd : x9<br> - rs2_val == 4096<br>                                                                                           |[0x800001a2]:c.mv s1, ra<br> [0x800001a4]:sw s1, 60(t0)<br>    |
|  17|[0x80002050]<br>0x00002000|- rs2 : x29<br> - rd : x6<br> - rs2_val == 8192<br>                                                                                          |[0x800001ac]:c.mv t1, t4<br> [0x800001ae]:sw t1, 64(t0)<br>    |
|  18|[0x80002054]<br>0x00004000|- rs2 : x2<br> - rd : x25<br> - rs2_val == 16384<br>                                                                                         |[0x800001b6]:c.mv s9, sp<br> [0x800001b8]:sw s9, 68(t0)<br>    |
|  19|[0x80002058]<br>0x00008000|- rs2 : x9<br> - rd : x31<br> - rs2_val == 32768<br>                                                                                         |[0x800001c0]:c.mv t6, s1<br> [0x800001c2]:sw t6, 72(t0)<br>    |
|  20|[0x8000205c]<br>0x00010000|- rs2 : x31<br> - rd : x19<br> - rs2_val == 65536<br>                                                                                        |[0x800001d2]:c.mv s3, t6<br> [0x800001d4]:sw s3, 0(ra)<br>     |
|  21|[0x80002060]<br>0x00020000|- rs2 : x21<br> - rd : x5<br> - rs2_val == 131072<br>                                                                                        |[0x800001dc]:c.mv t0, s5<br> [0x800001de]:sw t0, 4(ra)<br>     |
|  22|[0x80002064]<br>0x00040000|- rs2 : x25<br> - rd : x27<br> - rs2_val == 262144<br>                                                                                       |[0x800001e6]:c.mv s11, s9<br> [0x800001e8]:sw s11, 8(ra)<br>   |
|  23|[0x80002068]<br>0x00080000|- rs2 : x7<br> - rd : x28<br> - rs2_val == 524288<br>                                                                                        |[0x800001f0]:c.mv t3, t2<br> [0x800001f2]:sw t3, 12(ra)<br>    |
|  24|[0x8000206c]<br>0x00100000|- rs2 : x17<br> - rd : x10<br> - rs2_val == 1048576<br>                                                                                      |[0x800001fa]:c.mv a0, a7<br> [0x800001fc]:sw a0, 16(ra)<br>    |
|  25|[0x80002070]<br>0x00000000|- rs2 : x6<br> - rd : x0<br> - rs2_val == 2097152<br>                                                                                        |[0x80000204]:c.mv.hint.t1<br> [0x80000206]:sw zero, 20(ra)<br> |
|  26|[0x80002074]<br>0x00400000|- rs2 : x15<br> - rd : x20<br> - rs2_val == 4194304<br>                                                                                      |[0x8000020e]:c.mv s4, a5<br> [0x80000210]:sw s4, 24(ra)<br>    |
|  27|[0x80002078]<br>0x00800000|- rs2 : x24<br> - rd : x21<br> - rs2_val == 8388608<br>                                                                                      |[0x80000218]:c.mv s5, s8<br> [0x8000021a]:sw s5, 28(ra)<br>    |
|  28|[0x8000207c]<br>0x01000000|- rs2 : x22<br> - rd : x11<br> - rs2_val == 16777216<br>                                                                                     |[0x80000222]:c.mv a1, s6<br> [0x80000224]:sw a1, 32(ra)<br>    |
|  29|[0x80002080]<br>0x02000000|- rs2 : x16<br> - rd : x4<br> - rs2_val == 33554432<br>                                                                                      |[0x8000022c]:c.mv tp, a6<br> [0x8000022e]:sw tp, 36(ra)<br>    |
|  30|[0x80002084]<br>0x04000000|- rs2 : x5<br> - rd : x18<br> - rs2_val == 67108864<br>                                                                                      |[0x80000236]:c.mv s2, t0<br> [0x80000238]:sw s2, 40(ra)<br>    |
|  31|[0x80002088]<br>0x08000000|- rs2 : x12<br> - rd : x24<br> - rs2_val == 134217728<br>                                                                                    |[0x80000240]:c.mv s8, a2<br> [0x80000242]:sw s8, 44(ra)<br>    |
|  32|[0x8000208c]<br>0x10000000|- rd : x23<br> - rs2_val == 268435456<br>                                                                                                    |[0x8000024a]:c.mv s7, t0<br> [0x8000024c]:sw s7, 48(ra)<br>    |
|  33|[0x80002090]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                   |[0x80000254]:c.mv a0, a1<br> [0x80000256]:sw a0, 52(ra)<br>    |
|  34|[0x80002094]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                  |[0x8000025e]:c.mv a0, a1<br> [0x80000260]:sw a0, 56(ra)<br>    |
|  35|[0x80002098]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                          |[0x80000268]:c.mv a0, a1<br> [0x8000026a]:sw a0, 60(ra)<br>    |
|  36|[0x8000209c]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                          |[0x80000272]:c.mv a0, a1<br> [0x80000274]:sw a0, 64(ra)<br>    |
|  37|[0x800020a0]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                          |[0x8000027c]:c.mv a0, a1<br> [0x8000027e]:sw a0, 68(ra)<br>    |
|  38|[0x800020a4]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                          |[0x80000286]:c.mv a0, a1<br> [0x80000288]:sw a0, 72(ra)<br>    |
|  39|[0x800020a8]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                         |[0x80000290]:c.mv a0, a1<br> [0x80000292]:sw a0, 76(ra)<br>    |
|  40|[0x800020ac]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                         |[0x8000029a]:c.mv a0, a1<br> [0x8000029c]:sw a0, 80(ra)<br>    |
|  41|[0x800020b0]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                         |[0x800002a4]:c.mv a0, a1<br> [0x800002a6]:sw a0, 84(ra)<br>    |
|  42|[0x800020b4]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                        |[0x800002ae]:c.mv a0, a1<br> [0x800002b0]:sw a0, 88(ra)<br>    |
|  43|[0x800020b8]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                        |[0x800002b8]:c.mv a0, a1<br> [0x800002ba]:sw a0, 92(ra)<br>    |
|  44|[0x800020bc]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                        |[0x800002c2]:c.mv a0, a1<br> [0x800002c4]:sw a0, 96(ra)<br>    |
|  45|[0x800020c0]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                       |[0x800002cc]:c.mv a0, a1<br> [0x800002ce]:sw a0, 100(ra)<br>   |
|  46|[0x800020c4]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                       |[0x800002da]:c.mv a0, a1<br> [0x800002dc]:sw a0, 104(ra)<br>   |
|  47|[0x800020c8]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                       |[0x800002e8]:c.mv a0, a1<br> [0x800002ea]:sw a0, 108(ra)<br>   |
|  48|[0x800020cc]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                       |[0x800002f6]:c.mv a0, a1<br> [0x800002f8]:sw a0, 112(ra)<br>   |
|  49|[0x800020d0]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                      |[0x80000304]:c.mv a0, a1<br> [0x80000306]:sw a0, 116(ra)<br>   |
|  50|[0x800020d4]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                      |[0x80000312]:c.mv a0, a1<br> [0x80000314]:sw a0, 120(ra)<br>   |
|  51|[0x800020d8]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                      |[0x80000320]:c.mv a0, a1<br> [0x80000322]:sw a0, 124(ra)<br>   |
|  52|[0x800020dc]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                     |[0x8000032e]:c.mv a0, a1<br> [0x80000330]:sw a0, 128(ra)<br>   |
|  53|[0x800020e0]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                     |[0x8000033c]:c.mv a0, a1<br> [0x8000033e]:sw a0, 132(ra)<br>   |
|  54|[0x800020e4]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                     |[0x8000034a]:c.mv a0, a1<br> [0x8000034c]:sw a0, 136(ra)<br>   |
|  55|[0x800020e8]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                    |[0x80000358]:c.mv a0, a1<br> [0x8000035a]:sw a0, 140(ra)<br>   |
|  56|[0x800020ec]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                  |[0x80000366]:c.mv a0, a1<br> [0x80000368]:sw a0, 144(ra)<br>   |
|  57|[0x800020f0]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                 |[0x80000374]:c.mv a0, a1<br> [0x80000376]:sw a0, 148(ra)<br>   |
|  58|[0x800020f4]<br>0x55555555|- rs2_val == 1431655765<br> - rs2_val==1431655765<br>                                                                                        |[0x80000382]:c.mv a0, a1<br> [0x80000384]:sw a0, 152(ra)<br>   |
|  59|[0x800020f8]<br>0xAAAAAAAA|- rs2_val == -1431655766<br> - rs2_val==-1431655766<br>                                                                                      |[0x80000390]:c.mv a0, a1<br> [0x80000392]:sw a0, 156(ra)<br>   |
|  60|[0x800020fc]<br>0x00000003|- rs2_val==3<br>                                                                                                                             |[0x8000039a]:c.mv a0, a1<br> [0x8000039c]:sw a0, 160(ra)<br>   |
|  61|[0x80002100]<br>0x00000005|- rs2_val==5<br>                                                                                                                             |[0x800003a4]:c.mv a0, a1<br> [0x800003a6]:sw a0, 164(ra)<br>   |
|  62|[0x80002104]<br>0x33333333|- rs2_val==858993459<br>                                                                                                                     |[0x800003b2]:c.mv a0, a1<br> [0x800003b4]:sw a0, 168(ra)<br>   |
|  63|[0x80002108]<br>0x66666666|- rs2_val==1717986918<br>                                                                                                                    |[0x800003c0]:c.mv a0, a1<br> [0x800003c2]:sw a0, 172(ra)<br>   |
|  64|[0x8000210c]<br>0xFFFF4AFC|- rs2_val==-46340<br>                                                                                                                        |[0x800003ce]:c.mv a0, a1<br> [0x800003d0]:sw a0, 176(ra)<br>   |
|  65|[0x80002110]<br>0x0000B504|- rs2_val==46340<br>                                                                                                                         |[0x800003dc]:c.mv a0, a1<br> [0x800003de]:sw a0, 180(ra)<br>   |
|  66|[0x80002114]<br>0x55555554|- rs2_val==1431655764<br>                                                                                                                    |[0x800003ea]:c.mv a0, a1<br> [0x800003ec]:sw a0, 184(ra)<br>   |
|  67|[0x80002118]<br>0x33333332|- rs2_val==858993458<br>                                                                                                                     |[0x800003f8]:c.mv a0, a1<br> [0x800003fa]:sw a0, 188(ra)<br>   |
|  68|[0x8000211c]<br>0x66666665|- rs2_val==1717986917<br>                                                                                                                    |[0x80000406]:c.mv a0, a1<br> [0x80000408]:sw a0, 192(ra)<br>   |
|  69|[0x80002120]<br>0x0000B503|- rs2_val==46339<br>                                                                                                                         |[0x80000414]:c.mv a0, a1<br> [0x80000416]:sw a0, 196(ra)<br>   |
|  70|[0x80002124]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                    |[0x80000422]:c.mv a0, a1<br> [0x80000424]:sw a0, 200(ra)<br>   |
|  71|[0x80002128]<br>0x0000B505|- rs2_val==46341<br>                                                                                                                         |[0x80000430]:c.mv a0, a1<br> [0x80000432]:sw a0, 204(ra)<br>   |
|  72|[0x8000212c]<br>0xFFFF4AFD|- rs2_val==-46339<br>                                                                                                                        |[0x8000043e]:c.mv a0, a1<br> [0x80000440]:sw a0, 208(ra)<br>   |
|  73|[0x80002130]<br>0x55555556|- rs2_val==1431655766<br>                                                                                                                    |[0x8000044c]:c.mv a0, a1<br> [0x8000044e]:sw a0, 212(ra)<br>   |
|  74|[0x80002134]<br>0xAAAAAAAB|- rs2_val==-1431655765<br>                                                                                                                   |[0x8000045a]:c.mv a0, a1<br> [0x8000045c]:sw a0, 216(ra)<br>   |
|  75|[0x80002138]<br>0x00000006|- rs2_val==6<br>                                                                                                                             |[0x80000464]:c.mv a0, a1<br> [0x80000466]:sw a0, 220(ra)<br>   |
|  76|[0x8000213c]<br>0x33333334|- rs2_val==858993460<br>                                                                                                                     |[0x80000472]:c.mv a0, a1<br> [0x80000474]:sw a0, 224(ra)<br>   |
|  77|[0x80002140]<br>0x66666667|- rs2_val==1717986919<br>                                                                                                                    |[0x80000480]:c.mv a0, a1<br> [0x80000482]:sw a0, 228(ra)<br>   |
|  78|[0x80002144]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                    |[0x8000048e]:c.mv a0, a1<br> [0x80000490]:sw a0, 232(ra)<br>   |
|  79|[0x80002148]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                    |[0x8000049c]:c.mv a0, a1<br> [0x8000049e]:sw a0, 236(ra)<br>   |
|  80|[0x8000214c]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                   |[0x800004aa]:c.mv a0, a1<br> [0x800004ac]:sw a0, 240(ra)<br>   |
|  81|[0x80002150]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                   |[0x800004b8]:c.mv a0, a1<br> [0x800004ba]:sw a0, 244(ra)<br>   |
|  82|[0x80002154]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                   |[0x800004c6]:c.mv a0, a1<br> [0x800004c8]:sw a0, 248(ra)<br>   |
|  83|[0x80002158]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                  |[0x800004d4]:c.mv a0, a1<br> [0x800004d6]:sw a0, 252(ra)<br>   |
|  84|[0x8000215c]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                  |[0x800004e2]:c.mv a0, a1<br> [0x800004e4]:sw a0, 256(ra)<br>   |
