
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001450')]      |
| SIG_REGION                | [('0x80004208', '0x80004630', '133 dwords')]      |
| COV_LABELS                | sd-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sd-align-01.S/sd-align-01.S    |
| Total Number of coverpoints| 209     |
| Total Coverpoints Hit     | 209      |
| Total Signature Updates   | 133      |
| STAT1                     | 133      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|            signature             |                                                                      coverpoints                                                                      |               code               |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|   1|[0x80004208]<br>0x0000000000004000|- opcode : sd<br> - rs1 : x20<br> - rs2 : x31<br> - rs1 != rs2<br> - ea_align == 0 and (imm_val % 8) == 0<br> - imm_val > 0<br> - rs2_val == 16384<br> |[0x800003a8]:sd t6, 256(s4)<br>   |
|   2|[0x80004210]<br>0x0000000000000020|- rs1 : x18<br> - rs2 : x16<br> - ea_align == 0 and (imm_val % 8) == 1<br> - rs2_val == 32<br>                                                         |[0x800003c4]:sd a6, 1(s2)<br>     |
|   3|[0x80004218]<br>0x0000000200000000|- rs1 : x16<br> - rs2 : x13<br> - ea_align == 0 and (imm_val % 8) == 2<br> - rs2_val == 8589934592<br>                                                 |[0x800003e4]:sd a3, 2(a6)<br>     |
|   4|[0x80004220]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x28<br> - rs2 : x25<br> - ea_align == 0 and (imm_val % 8) == 3<br> - imm_val < 0<br>                                                           |[0x80000400]:sd s9, 4091(t3)<br>  |
|   5|[0x80004228]<br>0xFFFFFFFFFFFFDFFF|- rs1 : x29<br> - rs2 : x1<br> - ea_align == 0 and (imm_val % 8) == 4<br> - rs2_val == -8193<br>                                                       |[0x80000420]:sd ra, 4(t4)<br>     |
|   6|[0x80004230]<br>0xFFFFFFFFFFFBFFFF|- rs1 : x24<br> - rs2 : x19<br> - ea_align == 0 and (imm_val % 8) == 5<br> - rs2_val == -262145<br>                                                    |[0x80000440]:sd s3, 4093(s8)<br>  |
|   7|[0x80004238]<br>0x0000000000080000|- rs1 : x9<br> - rs2 : x27<br> - ea_align == 0 and (imm_val % 8) == 6<br> - rs2_val == 524288<br>                                                      |[0x8000045c]:sd s11, 4086(s1)<br> |
|   8|[0x80004240]<br>0xFFFFDFFFFFFFFFFF|- rs1 : x22<br> - rs2 : x5<br> - ea_align == 0 and (imm_val % 8) == 7<br> - rs2_val == -35184372088833<br>                                             |[0x80000480]:sd t0, 4031(s6)<br>  |
|   9|[0x80004248]<br>0x0000000000020000|- rs1 : x7<br> - rs2 : x20<br> - imm_val == 0<br> - rs2_val == 131072<br>                                                                              |[0x8000049c]:sd s4, 0(t2)<br>     |
|  10|[0x80004250]<br>0x8000000000000000|- rs1 : x23<br> - rs2 : x21<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br>                                                  |[0x800004bc]:sd s5, 4031(s7)<br>  |
|  11|[0x80004258]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x2<br> - rs2_val == 0<br>                                                                                                      |[0x800004d8]:sd sp, 4031(t6)<br>  |
|  12|[0x80004260]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x6<br> - rs2 : x15<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br>                                                   |[0x800004fc]:sd a5, 1023(t1)<br>  |
|  13|[0x80004268]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x0<br>                                                                                                                          |[0x80000518]:sd zero, 16(ra)<br>  |
|  14|[0x80004270]<br>0x0000000000000002|- rs1 : x19<br> - rs2 : x29<br> - rs2_val == 2<br>                                                                                                     |[0x80000534]:sd t4, 4094(s3)<br>  |
|  15|[0x80004278]<br>0x0000000000000004|- rs1 : x21<br> - rs2 : x22<br> - rs2_val == 4<br>                                                                                                     |[0x80000550]:sd s6, 3(s5)<br>     |
|  16|[0x80004280]<br>0x0000000000000008|- rs1 : x3<br> - rs2 : x11<br> - rs2_val == 8<br>                                                                                                      |[0x8000056c]:sd a1, 2(gp)<br>     |
|  17|[0x80004288]<br>0x0000000000000010|- rs1 : x11<br> - rs2 : x4<br> - rs2_val == 16<br>                                                                                                     |[0x80000588]:sd tp, 512(a1)<br>   |
|  18|[0x80004290]<br>0x0000000000000040|- rs1 : x26<br> - rs2 : x9<br> - rs2_val == 64<br>                                                                                                     |[0x800005a4]:sd s1, 4087(s10)<br> |
|  19|[0x80004298]<br>0x0000000000000080|- rs1 : x17<br> - rs2 : x8<br> - rs2_val == 128<br>                                                                                                    |[0x800005c0]:sd fp, 9(a7)<br>     |
|  20|[0x800042a0]<br>0x0000000000000100|- rs1 : x8<br> - rs2 : x23<br> - rs2_val == 256<br>                                                                                                    |[0x800005dc]:sd s7, 4092(fp)<br>  |
|  21|[0x800042a8]<br>0x0000000000000200|- rs1 : x25<br> - rs2 : x12<br> - rs2_val == 512<br>                                                                                                   |[0x800005f8]:sd a2, 4086(s9)<br>  |
|  22|[0x800042b0]<br>0x0000000000000400|- rs1 : x30<br> - rs2 : x28<br> - rs2_val == 1024<br>                                                                                                  |[0x8000061c]:sd t3, 4031(t5)<br>  |
|  23|[0x800042b8]<br>0x0000000000000800|- rs1 : x27<br> - rs2 : x7<br> - rs2_val == 2048<br>                                                                                                   |[0x8000063c]:sd t2, 3(s11)<br>    |
|  24|[0x800042c0]<br>0x0000000000001000|- rs1 : x15<br> - rs2 : x10<br> - rs2_val == 4096<br>                                                                                                  |[0x80000658]:sd a0, 512(a5)<br>   |
|  25|[0x800042c8]<br>0x0000000000002000|- rs1 : x14<br> - rs2 : x17<br> - rs2_val == 8192<br>                                                                                                  |[0x80000674]:sd a7, 4031(a4)<br>  |
|  26|[0x800042d0]<br>0x0000000000008000|- rs1 : x5<br> - rs2 : x26<br> - rs2_val == 32768<br>                                                                                                  |[0x80000690]:sd s10, 3072(t0)<br> |
|  27|[0x800042d8]<br>0x0000000000010000|- rs1 : x13<br> - rs2 : x24<br> - rs2_val == 65536<br>                                                                                                 |[0x800006ac]:sd s8, 3967(a3)<br>  |
|  28|[0x800042e0]<br>0x0000000000040000|- rs1 : x10<br> - rs2 : x30<br> - rs2_val == 262144<br>                                                                                                |[0x800006c8]:sd t5, 1023(a0)<br>  |
|  29|[0x800042e8]<br>0x0000000000100000|- rs1 : x4<br> - rs2 : x14<br> - rs2_val == 1048576<br>                                                                                                |[0x800006e4]:sd a4, 4063(tp)<br>  |
|  30|[0x800042f0]<br>0x0000000000200000|- rs1 : x2<br> - rs2 : x6<br> - rs2_val == 2097152<br>                                                                                                 |[0x80000700]:sd t1, 4088(sp)<br>  |
|  31|[0x800042f8]<br>0x0000000000400000|- rs1 : x12<br> - rs2 : x18<br> - rs2_val == 4194304<br>                                                                                               |[0x8000071c]:sd s2, 3967(a2)<br>  |
|  32|[0x80004300]<br>0x0000000000800000|- rs2 : x3<br> - rs2_val == 8388608<br>                                                                                                                |[0x80000738]:sd gp, 2047(t6)<br>  |
|  33|[0x80004308]<br>0x0000000001000000|- rs2_val == 16777216<br>                                                                                                                              |[0x80000754]:sd a1, 64(a0)<br>    |
|  34|[0x80004310]<br>0x0000000002000000|- rs2_val == 33554432<br>                                                                                                                              |[0x80000770]:sd a1, 4088(a0)<br>  |
|  35|[0x80004318]<br>0x0000000004000000|- rs2_val == 67108864<br>                                                                                                                              |[0x8000078c]:sd a1, 4086(a0)<br>  |
|  36|[0x80004320]<br>0x0000000008000000|- rs2_val == 134217728<br>                                                                                                                             |[0x800007a8]:sd a1, 4093(a0)<br>  |
|  37|[0x80004328]<br>0x0000000010000000|- rs2_val == 268435456<br>                                                                                                                             |[0x800007c4]:sd a1, 1(a0)<br>     |
|  38|[0x80004330]<br>0x0000000020000000|- rs2_val == 536870912<br>                                                                                                                             |[0x800007e0]:sd a1, 4093(a0)<br>  |
|  39|[0x80004338]<br>0x0000000040000000|- rs2_val == 1073741824<br>                                                                                                                            |[0x800007fc]:sd a1, 7(a0)<br>     |
|  40|[0x80004340]<br>0x0000000080000000|- rs2_val == 2147483648<br>                                                                                                                            |[0x8000081c]:sd a1, 32(a0)<br>    |
|  41|[0x80004348]<br>0x0000000100000000|- rs2_val == 4294967296<br>                                                                                                                            |[0x8000083c]:sd a1, 0(a0)<br>     |
|  42|[0x80004350]<br>0x0000000400000000|- rs2_val == 17179869184<br>                                                                                                                           |[0x8000085c]:sd a1, 5(a0)<br>     |
|  43|[0x80004358]<br>0x0000000800000000|- rs2_val == 34359738368<br>                                                                                                                           |[0x8000087c]:sd a1, 7(a0)<br>     |
|  44|[0x80004360]<br>0x0000001000000000|- rs2_val == 68719476736<br>                                                                                                                           |[0x8000089c]:sd a1, 4094(a0)<br>  |
|  45|[0x80004368]<br>0x0000002000000000|- rs2_val == 137438953472<br>                                                                                                                          |[0x800008bc]:sd a1, 16(a0)<br>    |
|  46|[0x80004370]<br>0x0000004000000000|- rs2_val == 274877906944<br>                                                                                                                          |[0x800008dc]:sd a1, 4092(a0)<br>  |
|  47|[0x80004378]<br>0x0000008000000000|- rs2_val == 549755813888<br>                                                                                                                          |[0x800008fc]:sd a1, 3967(a0)<br>  |
|  48|[0x80004380]<br>0x0000010000000000|- rs2_val == 1099511627776<br>                                                                                                                         |[0x8000091c]:sd a1, 3967(a0)<br>  |
|  49|[0x80004388]<br>0x0000020000000000|- rs2_val == 2199023255552<br>                                                                                                                         |[0x8000093c]:sd a1, 7(a0)<br>     |
|  50|[0x80004390]<br>0x0000040000000000|- rs2_val == 4398046511104<br>                                                                                                                         |[0x8000095c]:sd a1, 3072(a0)<br>  |
|  51|[0x80004398]<br>0x0000080000000000|- rs2_val == 8796093022208<br>                                                                                                                         |[0x8000097c]:sd a1, 4090(a0)<br>  |
|  52|[0x800043a0]<br>0x0000100000000000|- rs2_val == 17592186044416<br>                                                                                                                        |[0x8000099c]:sd a1, 3583(a0)<br>  |
|  53|[0x800043a8]<br>0x0000200000000000|- rs2_val == 35184372088832<br>                                                                                                                        |[0x800009bc]:sd a1, 3839(a0)<br>  |
|  54|[0x800043b0]<br>0x0000400000000000|- rs2_val == 70368744177664<br>                                                                                                                        |[0x800009dc]:sd a1, 0(a0)<br>     |
|  55|[0x800043b8]<br>0x0000800000000000|- rs2_val == 140737488355328<br>                                                                                                                       |[0x800009fc]:sd a1, 9(a0)<br>     |
|  56|[0x800043c0]<br>0x0001000000000000|- rs2_val == 281474976710656<br>                                                                                                                       |[0x80000a1c]:sd a1, 6(a0)<br>     |
|  57|[0x800043c8]<br>0x0002000000000000|- rs2_val == 562949953421312<br>                                                                                                                       |[0x80000a3c]:sd a1, 4031(a0)<br>  |
|  58|[0x800043d0]<br>0x0004000000000000|- rs2_val == 1125899906842624<br>                                                                                                                      |[0x80000a5c]:sd a1, 4094(a0)<br>  |
|  59|[0x800043d8]<br>0x0008000000000000|- rs2_val == 2251799813685248<br>                                                                                                                      |[0x80000a7c]:sd a1, 256(a0)<br>   |
|  60|[0x800043e0]<br>0x0010000000000000|- rs2_val == 4503599627370496<br>                                                                                                                      |[0x80000a9c]:sd a1, 2730(a0)<br>  |
|  61|[0x800043e8]<br>0x0020000000000000|- rs2_val == 9007199254740992<br>                                                                                                                      |[0x80000abc]:sd a1, 4031(a0)<br>  |
|  62|[0x800043f0]<br>0x0040000000000000|- rs2_val == 18014398509481984<br>                                                                                                                     |[0x80000adc]:sd a1, 4031(a0)<br>  |
|  63|[0x800043f8]<br>0x0080000000000000|- rs2_val == 36028797018963968<br>                                                                                                                     |[0x80000afc]:sd a1, 1365(a0)<br>  |
|  64|[0x80004400]<br>0x0100000000000000|- rs2_val == 72057594037927936<br>                                                                                                                     |[0x80000b1c]:sd a1, 8(a0)<br>     |
|  65|[0x80004408]<br>0x0200000000000000|- rs2_val == 144115188075855872<br>                                                                                                                    |[0x80000b3c]:sd a1, 4086(a0)<br>  |
|  66|[0x80004410]<br>0x0400000000000000|- rs2_val == 288230376151711744<br>                                                                                                                    |[0x80000b5c]:sd a1, 5(a0)<br>     |
|  67|[0x80004418]<br>0x0800000000000000|- rs2_val == 576460752303423488<br>                                                                                                                    |[0x80000b7c]:sd a1, 256(a0)<br>   |
|  68|[0x80004420]<br>0x1000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                                   |[0x80000b9c]:sd a1, 7(a0)<br>     |
|  69|[0x80004428]<br>0x2000000000000000|- rs2_val == 2305843009213693952<br>                                                                                                                   |[0x80000bbc]:sd a1, 0(a0)<br>     |
|  70|[0x80004430]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == -1125899906842625<br>                                                                                                                     |[0x80000be0]:sd a1, 2(a0)<br>     |
|  71|[0x80004438]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == -2251799813685249<br>                                                                                                                     |[0x80000c04]:sd a1, 4079(a0)<br>  |
|  72|[0x80004440]<br>0xFFEFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br>                                                                                                                     |[0x80000c28]:sd a1, 7(a0)<br>     |
|  73|[0x80004448]<br>0xFFDFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br>                                                                                                                     |[0x80000c4c]:sd a1, 0(a0)<br>     |
|  74|[0x80004450]<br>0xFFBFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br>                                                                                                                    |[0x80000c70]:sd a1, 1(a0)<br>     |
|  75|[0x80004458]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == -36028797018963969<br>                                                                                                                    |[0x80000c94]:sd a1, 6(a0)<br>     |
|  76|[0x80004460]<br>0xFEFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br>                                                                                                                    |[0x80000cb8]:sd a1, 2047(a0)<br>  |
|  77|[0x80004468]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                                   |[0x80000cdc]:sd a1, 0(a0)<br>     |
|  78|[0x80004470]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                                                                                   |[0x80000d00]:sd a1, 4094(a0)<br>  |
|  79|[0x80004478]<br>0xF7FFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br>                                                                                                                   |[0x80000d24]:sd a1, 128(a0)<br>   |
|  80|[0x80004480]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                                  |[0x80000d48]:sd a1, 4090(a0)<br>  |
|  81|[0x80004488]<br>0xDFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br>                                                                                                                  |[0x80000d6c]:sd a1, 8(a0)<br>     |
|  82|[0x80004490]<br>0xBFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br>                                                                                                                  |[0x80000d90]:sd a1, 4087(a0)<br>  |
|  83|[0x80004498]<br>0x5555555555555555|- rs2_val == 6148914691236517205<br>                                                                                                                   |[0x80000dc8]:sd a1, 256(a0)<br>   |
|  84|[0x800044a0]<br>0xAAAAAAAAAAAAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                                  |[0x80000e00]:sd a1, 1023(a0)<br>  |
|  85|[0x800044a8]<br>0x4000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                                   |[0x80000e20]:sd a1, 4086(a0)<br>  |
|  86|[0x800044b0]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2<br>                                                                                                                                    |[0x80000e3c]:sd a1, 2(a0)<br>     |
|  87|[0x800044b8]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == -3<br>                                                                                                                                    |[0x80000e58]:sd a1, 64(a0)<br>    |
|  88|[0x800044c0]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == -5<br>                                                                                                                                    |[0x80000e74]:sd a1, 4088(a0)<br>  |
|  89|[0x800044c8]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -9<br>                                                                                                                                    |[0x80000e90]:sd a1, 7(a0)<br>     |
|  90|[0x800044d0]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == -17<br>                                                                                                                                   |[0x80000eac]:sd a1, 2(a0)<br>     |
|  91|[0x800044d8]<br>0xFFFFFFFFFFFFFFDF|- rs2_val == -33<br>                                                                                                                                   |[0x80000ec8]:sd a1, 7(a0)<br>     |
|  92|[0x800044e0]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == -65<br>                                                                                                                                   |[0x80000ee4]:sd a1, 4092(a0)<br>  |
|  93|[0x800044e8]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == -129<br>                                                                                                                                  |[0x80000f00]:sd a1, 7(a0)<br>     |
|  94|[0x800044f0]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == -257<br>                                                                                                                                  |[0x80000f1c]:sd a1, 64(a0)<br>    |
|  95|[0x800044f8]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == -513<br>                                                                                                                                  |[0x80000f38]:sd a1, 4079(a0)<br>  |
|  96|[0x80004500]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                 |[0x80000f54]:sd a1, 4079(a0)<br>  |
|  97|[0x80004508]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                 |[0x80000f74]:sd a1, 4088(a0)<br>  |
|  98|[0x80004510]<br>0xFFFFFFFFFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                 |[0x80000f94]:sd a1, 4031(a0)<br>  |
|  99|[0x80004518]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == -16385<br>                                                                                                                                |[0x80000fb4]:sd a1, 3583(a0)<br>  |
| 100|[0x80004520]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == -32769<br>                                                                                                                                |[0x80000fd4]:sd a1, 128(a0)<br>   |
| 101|[0x80004528]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                |[0x80000ff4]:sd a1, 128(a0)<br>   |
| 102|[0x80004530]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == -131073<br>                                                                                                                               |[0x80001014]:sd a1, 256(a0)<br>   |
| 103|[0x80004538]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == -524289<br>                                                                                                                               |[0x80001034]:sd a1, 3071(a0)<br>  |
| 104|[0x80004540]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                              |[0x80001054]:sd a1, 4063(a0)<br>  |
| 105|[0x80004548]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                              |[0x80001074]:sd a1, 3072(a0)<br>  |
| 106|[0x80004550]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                              |[0x80001094]:sd a1, 4094(a0)<br>  |
| 107|[0x80004558]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                              |[0x800010b4]:sd a1, 4087(a0)<br>  |
| 108|[0x80004560]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                             |[0x800010d4]:sd a1, 3967(a0)<br>  |
| 109|[0x80004568]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                             |[0x800010f4]:sd a1, 5(a0)<br>     |
| 110|[0x80004570]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                             |[0x80001114]:sd a1, 3072(a0)<br>  |
| 111|[0x80004578]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                            |[0x80001134]:sd a1, 4095(a0)<br>  |
| 112|[0x80004580]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                            |[0x80001154]:sd a1, 0(a0)<br>     |
| 113|[0x80004588]<br>0xFFFFFFFFDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                            |[0x80001174]:sd a1, 2047(a0)<br>  |
| 114|[0x80004590]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                           |[0x80001194]:sd a1, 2047(a0)<br>  |
| 115|[0x80004598]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == -2147483649<br>                                                                                                                           |[0x800011b8]:sd a1, 2730(a0)<br>  |
| 116|[0x800045a0]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -4294967297<br>                                                                                                                           |[0x800011dc]:sd a1, 3071(a0)<br>  |
| 117|[0x800045a8]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == -8589934593<br>                                                                                                                           |[0x80001200]:sd a1, 4031(a0)<br>  |
| 118|[0x800045b0]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == -17179869185<br>                                                                                                                          |[0x80001224]:sd a1, 4094(a0)<br>  |
| 119|[0x800045b8]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == -34359738369<br>                                                                                                                          |[0x80001248]:sd a1, 512(a0)<br>   |
| 120|[0x800045c0]<br>0xFFFFFFEFFFFFFFFF|- rs2_val == -68719476737<br>                                                                                                                          |[0x8000126c]:sd a1, 1365(a0)<br>  |
| 121|[0x800045c8]<br>0xFFFFFFDFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                                         |[0x80001290]:sd a1, 3071(a0)<br>  |
| 122|[0x800045d0]<br>0xFFFFFFBFFFFFFFFF|- rs2_val == -274877906945<br>                                                                                                                         |[0x800012b4]:sd a1, 2(a0)<br>     |
| 123|[0x800045d8]<br>0xFFFFFF7FFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                                         |[0x800012d8]:sd a1, 4091(a0)<br>  |
| 124|[0x800045e0]<br>0xFFFFFEFFFFFFFFFF|- rs2_val == -1099511627777<br>                                                                                                                        |[0x800012fc]:sd a1, 1(a0)<br>     |
| 125|[0x800045e8]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == -2199023255553<br>                                                                                                                        |[0x80001320]:sd a1, 3583(a0)<br>  |
| 126|[0x800045f0]<br>0xFFFFFBFFFFFFFFFF|- rs2_val == -4398046511105<br>                                                                                                                        |[0x80001344]:sd a1, 4092(a0)<br>  |
| 127|[0x800045f8]<br>0xFFFFF7FFFFFFFFFF|- rs2_val == -8796093022209<br>                                                                                                                        |[0x80001368]:sd a1, 4095(a0)<br>  |
| 128|[0x80004600]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == -17592186044417<br>                                                                                                                       |[0x8000138c]:sd a1, 16(a0)<br>    |
| 129|[0x80004608]<br>0xFFFFBFFFFFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                                       |[0x800013b0]:sd a1, 256(a0)<br>   |
| 130|[0x80004610]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -140737488355329<br>                                                                                                                      |[0x800013d4]:sd a1, 4088(a0)<br>  |
| 131|[0x80004618]<br>0xFFFEFFFFFFFFFFFF|- rs2_val == -281474976710657<br>                                                                                                                      |[0x800013f8]:sd a1, 3583(a0)<br>  |
| 132|[0x80004620]<br>0xFFFDFFFFFFFFFFFF|- rs2_val == -562949953421313<br>                                                                                                                      |[0x8000141c]:sd a1, 3967(a0)<br>  |
| 133|[0x80004628]<br>0x0000000000000001|- rs2_val == 1<br>                                                                                                                                     |[0x80001438]:sd a1, 16(a0)<br>    |
