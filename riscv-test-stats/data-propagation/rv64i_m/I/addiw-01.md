
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c20')]      |
| SIG_REGION                | [('0x80003204', '0x80003648', '136 dwords')]      |
| COV_LABELS                | addiw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addiw-01.S/addiw-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 135      |
| STAT1                     | 135      |
| STAT2                     | 0      |
| STAT3                     | 91     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```
[0x800003a4]:addiw zero, zero, 4095
[0x800003a8]:slli zero, zero, 63
[0x800003ac]:addi zero, zero, 4095

[0x800003d0]:addiw a0, zero, 4095
[0x800003d4]:slli a0, a0, 63

[0x80000404]:addiw t3, zero, 1
[0x80000408]:slli t3, t3, 49

[0x80000418]:addiw a4, a4, 4095

[0x800004a0]:addiw a6, a6, 2048

[0x80000580]:addiw a0, zero, 1
[0x80000584]:slli a0, a0, 31

[0x80000590]:addiw a0, zero, 1
[0x80000594]:slli a0, a0, 32

[0x800005a0]:addiw a0, zero, 1
[0x800005a4]:slli a0, a0, 33

[0x800005b0]:addiw a0, zero, 1
[0x800005b4]:slli a0, a0, 34

[0x800005c0]:addiw a0, zero, 1
[0x800005c4]:slli a0, a0, 35

[0x800005d0]:addiw a0, zero, 1
[0x800005d4]:slli a0, a0, 36

[0x800005e0]:addiw a0, zero, 1
[0x800005e4]:slli a0, a0, 37

[0x800005f0]:addiw a0, zero, 1
[0x800005f4]:slli a0, a0, 38

[0x80000600]:addiw a0, zero, 1
[0x80000604]:slli a0, a0, 39

[0x80000610]:addiw a0, zero, 1
[0x80000614]:slli a0, a0, 40

[0x80000620]:addiw a0, zero, 1
[0x80000624]:slli a0, a0, 41

[0x80000630]:addiw a0, zero, 1
[0x80000634]:slli a0, a0, 42

[0x80000640]:addiw a0, zero, 1
[0x80000644]:slli a0, a0, 43

[0x80000650]:addiw a0, zero, 1
[0x80000654]:slli a0, a0, 44

[0x80000660]:addiw a0, zero, 1
[0x80000664]:slli a0, a0, 45

[0x80000670]:addiw a0, zero, 1
[0x80000674]:slli a0, a0, 46

[0x80000680]:addiw a0, zero, 1
[0x80000684]:slli a0, a0, 47

[0x80000690]:addiw a0, zero, 1
[0x80000694]:slli a0, a0, 48

[0x800006a0]:addiw a0, zero, 1
[0x800006a4]:slli a0, a0, 50

[0x800006b0]:addiw a0, zero, 1
[0x800006b4]:slli a0, a0, 51

[0x800006c0]:addiw a0, zero, 1
[0x800006c4]:slli a0, a0, 52

[0x800006d0]:addiw a0, zero, 1
[0x800006d4]:slli a0, a0, 53

[0x800006e0]:addiw a0, zero, 1
[0x800006e4]:slli a0, a0, 54

[0x800006f0]:addiw a0, zero, 1
[0x800006f4]:slli a0, a0, 55

[0x80000700]:addiw a0, zero, 1
[0x80000704]:slli a0, a0, 56

[0x80000710]:addiw a0, zero, 1
[0x80000714]:slli a0, a0, 57

[0x80000720]:addiw a0, zero, 1
[0x80000724]:slli a0, a0, 58

[0x80000730]:addiw a0, zero, 1
[0x80000734]:slli a0, a0, 59

[0x80000740]:addiw a0, zero, 1
[0x80000744]:slli a0, a0, 60

[0x80000750]:addiw a0, zero, 1
[0x80000754]:slli a0, a0, 61

[0x80000760]:addiw a0, zero, 1
[0x80000764]:slli a0, a0, 62

[0x80000794]:addiw a0, zero, 4095
[0x80000798]:slli a0, a0, 51
[0x8000079c]:addi a0, a0, 4095

[0x800007a8]:addiw a0, zero, 4095
[0x800007ac]:slli a0, a0, 52
[0x800007b0]:addi a0, a0, 4095

[0x800007bc]:addiw a0, zero, 4095
[0x800007c0]:slli a0, a0, 53
[0x800007c4]:addi a0, a0, 4095

[0x800007d0]:addiw a0, zero, 4095
[0x800007d4]:slli a0, a0, 54
[0x800007d8]:addi a0, a0, 4095

[0x800007e4]:addiw a0, zero, 4095
[0x800007e8]:slli a0, a0, 55
[0x800007ec]:addi a0, a0, 4095

[0x800007f8]:addiw a0, zero, 4095
[0x800007fc]:slli a0, a0, 56
[0x80000800]:addi a0, a0, 4095

[0x8000080c]:addiw a0, zero, 4095
[0x80000810]:slli a0, a0, 57
[0x80000814]:addi a0, a0, 4095

[0x80000820]:addiw a0, zero, 4095
[0x80000824]:slli a0, a0, 58
[0x80000828]:addi a0, a0, 4095

[0x80000834]:addiw a0, zero, 4095
[0x80000838]:slli a0, a0, 59
[0x8000083c]:addi a0, a0, 4095

[0x80000848]:addiw a0, zero, 4095
[0x8000084c]:slli a0, a0, 60
[0x80000850]:addi a0, a0, 4095

[0x8000085c]:addiw a0, zero, 4095
[0x80000860]:slli a0, a0, 61
[0x80000864]:addi a0, a0, 4095

[0x80000870]:addiw a0, zero, 4095
[0x80000874]:slli a0, a0, 62
[0x80000878]:addi a0, a0, 4095

[0x80000888]:addiw a0, a0, 1365
[0x8000088c]:slli a0, a0, 12
[0x80000890]:addi a0, a0, 1365
[0x80000894]:slli a0, a0, 12
[0x80000898]:addi a0, a0, 1365
[0x8000089c]:slli a0, a0, 12
[0x800008a0]:addi a0, a0, 1365

[0x800008b0]:addiw a0, a0, 2731
[0x800008b4]:slli a0, a0, 12
[0x800008b8]:addi a0, a0, 2731
[0x800008bc]:slli a0, a0, 12
[0x800008c0]:addi a0, a0, 2731
[0x800008c4]:slli a0, a0, 12
[0x800008c8]:addi a0, a0, 2730

[0x800008f0]:addiw a0, a0, 4095

[0x80000948]:addiw a0, a0, 2047

[0x80000958]:addiw a0, a0, 4095

[0x80000968]:addiw a0, a0, 4095

[0x80000978]:addiw a0, a0, 4095

[0x80000988]:addiw a0, a0, 4095

[0x80000998]:addiw a0, a0, 4095

[0x800009a8]:addiw a0, a0, 4095

[0x800009b8]:addiw a0, a0, 4095

[0x800009c8]:addiw a0, a0, 4095

[0x800009d8]:addiw a0, a0, 4095

[0x800009e8]:addiw a0, a0, 4095

[0x800009f8]:addiw a0, a0, 4095

[0x80000a08]:addiw a0, a0, 4095

[0x80000a18]:addiw a0, a0, 4095

[0x80000a28]:addiw a0, a0, 4095

[0x80000a38]:addiw a0, a0, 4095

[0x80000a48]:addiw a0, a0, 4095

[0x80000a58]:addiw a0, a0, 4095

[0x80000a68]:addiw a0, a0, 4095

[0x80000a74]:addiw a0, zero, 4095
[0x80000a78]:slli a0, a0, 31
[0x80000a7c]:addi a0, a0, 4095

[0x80000a88]:addiw a0, zero, 4095
[0x80000a8c]:slli a0, a0, 32
[0x80000a90]:addi a0, a0, 4095

[0x80000a9c]:addiw a0, zero, 4095
[0x80000aa0]:slli a0, a0, 33
[0x80000aa4]:addi a0, a0, 4095

[0x80000ab0]:addiw a0, zero, 4095
[0x80000ab4]:slli a0, a0, 34
[0x80000ab8]:addi a0, a0, 4095

[0x80000ac4]:addiw a0, zero, 4095
[0x80000ac8]:slli a0, a0, 35
[0x80000acc]:addi a0, a0, 4095

[0x80000ad8]:addiw a0, zero, 4095
[0x80000adc]:slli a0, a0, 36
[0x80000ae0]:addi a0, a0, 4095

[0x80000aec]:addiw a0, zero, 4095
[0x80000af0]:slli a0, a0, 37
[0x80000af4]:addi a0, a0, 4095

[0x80000b00]:addiw a0, zero, 4095
[0x80000b04]:slli a0, a0, 38
[0x80000b08]:addi a0, a0, 4095

[0x80000b14]:addiw a0, zero, 4095
[0x80000b18]:slli a0, a0, 39
[0x80000b1c]:addi a0, a0, 4095

[0x80000b28]:addiw a0, zero, 4095
[0x80000b2c]:slli a0, a0, 40
[0x80000b30]:addi a0, a0, 4095

[0x80000b3c]:addiw a0, zero, 4095
[0x80000b40]:slli a0, a0, 41
[0x80000b44]:addi a0, a0, 4095

[0x80000b50]:addiw a0, zero, 4095
[0x80000b54]:slli a0, a0, 42
[0x80000b58]:addi a0, a0, 4095

[0x80000b64]:addiw a0, zero, 4095
[0x80000b68]:slli a0, a0, 43
[0x80000b6c]:addi a0, a0, 4095

[0x80000b78]:addiw a0, zero, 4095
[0x80000b7c]:slli a0, a0, 44
[0x80000b80]:addi a0, a0, 4095

[0x80000b8c]:addiw a0, zero, 4095
[0x80000b90]:slli a0, a0, 45
[0x80000b94]:addi a0, a0, 4095

[0x80000ba0]:addiw a0, zero, 4095
[0x80000ba4]:slli a0, a0, 46
[0x80000ba8]:addi a0, a0, 4095

[0x80000bb4]:addiw a0, zero, 4095
[0x80000bb8]:slli a0, a0, 47
[0x80000bbc]:addi a0, a0, 4095

[0x80000bc8]:addiw a0, zero, 4095
[0x80000bcc]:slli a0, a0, 48
[0x80000bd0]:addi a0, a0, 4095

[0x80000bdc]:addiw a0, zero, 4095
[0x80000be0]:slli a0, a0, 49
[0x80000be4]:addi a0, a0, 4095

[0x80000bf0]:addiw a0, zero, 4095
[0x80000bf4]:slli a0, a0, 50
[0x80000bf8]:addi a0, a0, 4095

[0x80000c04]:addiw a0, zero, 4095
[0x80000c08]:slli a0, a0, 63
[0x80000c0c]:addi a0, a0, 4095



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

|s.no|            signature             |                                                                               coverpoints                                                                               |                                  code                                  |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFFFEFE|- opcode : addiw<br> - rs1 : x9<br> - rd : x9<br> - rs1 == rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -129<br> - rs1_val == -129<br> |[0x8000039c]:addiw s1, s1, 3967<br> [0x800003a0]:sd s1, 0(ra)<br>       |
|   2|[0x80003218]<br>0xFFFFFFFFFFFFFFFC|- rd : x19<br> - rs1 != rd<br>                                                                                                                                           |[0x800003b0]:addiw s3, zero, 4092<br> [0x800003b4]:sd s3, 8(ra)<br>     |
|   3|[0x80003220]<br>0x00000000010003FF|- rs1 : x4<br> - rd : x17<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 16777216<br>                                                                                |[0x800003bc]:addiw a7, tp, 1023<br> [0x800003c0]:sd a7, 16(ra)<br>      |
|   4|[0x80003228]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x23<br> - rd : x27<br> - imm_val == 1<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -5<br>                                                                  |[0x800003c8]:addiw s11, s7, 1<br> [0x800003cc]:sd s11, 24(ra)<br>       |
|   5|[0x80003230]<br>0x0000000000000001|- rs1 : x10<br> - rd : x11<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                                     |[0x800003d8]:addiw a1, a0, 1<br> [0x800003dc]:sd a1, 32(ra)<br>         |
|   6|[0x80003238]<br>0xFFFFFFFFFFFFFAAA|- rs1 : x7<br> - rd : x14<br> - imm_val == -1366<br>                                                                                                                     |[0x800003e4]:addiw a4, t2, 2730<br> [0x800003e8]:sd a4, 40(ra)<br>      |
|   7|[0x80003240]<br>0xFFFFFFFFFFFFFC01|- rs1 : x26<br> - rd : x7<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val < 0<br>                                                                                       |[0x800003f0]:addiw t2, s10, 3072<br> [0x800003f4]:sd t2, 48(ra)<br>     |
|   8|[0x80003248]<br>0x000000003FFFF800|- rs1 : x29<br> - rd : x28<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == 1073741824<br>                                                          |[0x800003fc]:addiw t3, t4, 2048<br> [0x80000400]:sd t3, 56(ra)<br>      |
|   9|[0x80003250]<br>0x0000000000000000|- rs1 : x28<br> - rd : x21<br> - imm_val == 0<br> - rs1_val == 562949953421312<br>                                                                                       |[0x8000040c]:addiw s5, t3, 0<br> [0x80000410]:sd s5, 64(ra)<br>         |
|  10|[0x80003258]<br>0xFFFFFFFFFF8007FE|- rd : x13<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -8388609<br>                                                                            |[0x8000041c]:addiw a3, a4, 2047<br> [0x80000420]:sd a3, 72(ra)<br>      |
|  11|[0x80003260]<br>0xFFFFFFFFFFFFFE01|- rs1 : x25<br> - rd : x24<br> - imm_val == -513<br> - rs1_val == 2<br>                                                                                                  |[0x80000428]:addiw s8, s9, 3583<br> [0x8000042c]:sd s8, 80(ra)<br>      |
|  12|[0x80003268]<br>0x0000000000000559|- rs1 : x6<br> - imm_val == 1365<br> - rs1_val == 4<br>                                                                                                                  |[0x80000434]:addiw a0, t1, 1365<br> [0x80000438]:sd a0, 88(ra)<br>      |
|  13|[0x80003270]<br>0x0000000000000088|- rs1 : x22<br> - rd : x15<br> - imm_val == 128<br> - rs1_val == 8<br>                                                                                                   |[0x80000440]:addiw a5, s6, 128<br> [0x80000444]:sd a5, 96(ra)<br>       |
|  14|[0x80003278]<br>0x000000000000000F|- rs1 : x31<br> - rd : x6<br> - rs1_val == 16<br>                                                                                                                        |[0x8000044c]:addiw t1, t6, 4095<br> [0x80000450]:sd t1, 104(ra)<br>     |
|  15|[0x80003280]<br>0xFFFFFFFFFFFFFC20|- rs1 : x18<br> - rd : x8<br> - rs1_val == 32<br>                                                                                                                        |[0x80000458]:addiw fp, s2, 3072<br> [0x8000045c]:sd fp, 112(ra)<br>     |
|  16|[0x80003288]<br>0xFFFFFFFFFFFFFE3F|- rs1 : x27<br> - rd : x18<br> - rs1_val == 64<br>                                                                                                                       |[0x80000464]:addiw s2, s11, 3583<br> [0x80000468]:sd s2, 120(ra)<br>    |
|  17|[0x80003290]<br>0x000000000000007C|- rs1 : x11<br> - rd : x3<br> - rs1_val == 128<br>                                                                                                                       |[0x80000470]:addiw gp, a1, 4092<br> [0x80000474]:sd gp, 128(ra)<br>     |
|  18|[0x80003298]<br>0x0000000000000000|- rs1 : x30<br> - imm_val == -257<br> - rs1_val == 256<br>                                                                                                               |[0x8000047c]:addiw zero, t5, 3839<br> [0x80000480]:sd zero, 136(ra)<br> |
|  19|[0x800032a0]<br>0xFFFFFFFFFFFFFCAA|- rs1 : x21<br> - rd : x20<br> - rs1_val == 512<br>                                                                                                                      |[0x80000488]:addiw s4, s5, 2730<br> [0x8000048c]:sd s4, 144(ra)<br>     |
|  20|[0x800032a8]<br>0x0000000000000BFF|- rs1 : x8<br> - rd : x4<br> - rs1_val == 1024<br>                                                                                                                       |[0x80000494]:addiw tp, fp, 2047<br> [0x80000498]:sd tp, 152(ra)<br>     |
|  21|[0x800032b0]<br>0x00000000000007FE|- rd : x25<br> - imm_val == -2<br> - rs1_val == 2048<br>                                                                                                                 |[0x800004a4]:addiw s9, a6, 4094<br> [0x800004a8]:sd s9, 160(ra)<br>     |
|  22|[0x800032b8]<br>0x0000000000001400|- rs1 : x3<br> - rd : x5<br> - imm_val == 1024<br>                                                                                                                       |[0x800004b0]:addiw t0, gp, 1024<br> [0x800004b4]:sd t0, 168(ra)<br>     |
|  23|[0x800032c0]<br>0x0000000000001AAA|- rs1 : x2<br> - rd : x26<br> - rs1_val == 8192<br>                                                                                                                      |[0x800004c4]:addiw s10, sp, 2730<br> [0x800004c8]:sd s10, 0(gp)<br>     |
|  24|[0x800032c8]<br>0x0000000000003FEF|- rs1 : x19<br> - rd : x31<br> - imm_val == -17<br> - rs1_val == 16384<br>                                                                                               |[0x800004d0]:addiw t6, s3, 4079<br> [0x800004d4]:sd t6, 8(gp)<br>       |
|  25|[0x800032d0]<br>0x0000000000007DFF|- rs1 : x24<br> - rd : x12<br> - rs1_val == 32768<br>                                                                                                                    |[0x800004dc]:addiw a2, s8, 3583<br> [0x800004e0]:sd a2, 16(gp)<br>      |
|  26|[0x800032d8]<br>0x000000000000FF7F|- rs1 : x12<br> - rd : x29<br> - rs1_val == 65536<br>                                                                                                                    |[0x800004e8]:addiw t4, a2, 3967<br> [0x800004ec]:sd t4, 24(gp)<br>      |
|  27|[0x800032e0]<br>0x0000000000020007|- rs1 : x1<br> - rs1_val == 131072<br>                                                                                                                                   |[0x800004f4]:addiw a6, ra, 7<br> [0x800004f8]:sd a6, 32(gp)<br>         |
|  28|[0x800032e8]<br>0x000000000003FFFC|- rs1 : x15<br> - rd : x2<br> - rs1_val == 262144<br>                                                                                                                    |[0x80000500]:addiw sp, a5, 4092<br> [0x80000504]:sd sp, 40(gp)<br>      |
|  29|[0x800032f0]<br>0x000000000007FBFF|- rs1 : x17<br> - rd : x23<br> - imm_val == -1025<br> - rs1_val == 524288<br>                                                                                            |[0x8000050c]:addiw s7, a7, 3071<br> [0x80000510]:sd s7, 48(gp)<br>      |
|  30|[0x800032f8]<br>0x00000000000FFFFF|- rs1 : x20<br> - rd : x22<br> - rs1_val == 1048576<br>                                                                                                                  |[0x80000518]:addiw s6, s4, 4095<br> [0x8000051c]:sd s6, 56(gp)<br>      |
|  31|[0x80003300]<br>0x00000000001FFFF7|- rs1 : x5<br> - rd : x1<br> - imm_val == -9<br> - rs1_val == 2097152<br>                                                                                                |[0x80000524]:addiw ra, t0, 4087<br> [0x80000528]:sd ra, 64(gp)<br>      |
|  32|[0x80003308]<br>0x00000000003FFF7F|- rs1 : x13<br> - rd : x30<br> - rs1_val == 4194304<br>                                                                                                                  |[0x80000530]:addiw t5, a3, 3967<br> [0x80000534]:sd t5, 72(gp)<br>      |
|  33|[0x80003310]<br>0x0000000000800003|- rs1_val == 8388608<br>                                                                                                                                                 |[0x8000053c]:addiw a1, a0, 3<br> [0x80000540]:sd a1, 80(gp)<br>         |
|  34|[0x80003318]<br>0x0000000001FFFFFC|- rs1_val == 33554432<br>                                                                                                                                                |[0x80000548]:addiw a1, a0, 4092<br> [0x8000054c]:sd a1, 88(gp)<br>      |
|  35|[0x80003320]<br>0x00000000040003FF|- rs1_val == 67108864<br>                                                                                                                                                |[0x80000554]:addiw a1, a0, 1023<br> [0x80000558]:sd a1, 96(gp)<br>      |
|  36|[0x80003328]<br>0x00000000080003FF|- rs1_val == 134217728<br>                                                                                                                                               |[0x80000560]:addiw a1, a0, 1023<br> [0x80000564]:sd a1, 104(gp)<br>     |
|  37|[0x80003330]<br>0x000000000FFFFFF7|- rs1_val == 268435456<br>                                                                                                                                               |[0x8000056c]:addiw a1, a0, 4087<br> [0x80000570]:sd a1, 112(gp)<br>     |
|  38|[0x80003338]<br>0x0000000020000010|- imm_val == 16<br> - rs1_val == 536870912<br>                                                                                                                           |[0x80000578]:addiw a1, a0, 16<br> [0x8000057c]:sd a1, 120(gp)<br>       |
|  39|[0x80003340]<br>0xFFFFFFFF80000004|- imm_val == 4<br> - rs1_val == 2147483648<br>                                                                                                                           |[0x80000588]:addiw a1, a0, 4<br> [0x8000058c]:sd a1, 128(gp)<br>        |
|  40|[0x80003348]<br>0x0000000000000005|- rs1_val == 4294967296<br>                                                                                                                                              |[0x80000598]:addiw a1, a0, 5<br> [0x8000059c]:sd a1, 136(gp)<br>        |
|  41|[0x80003350]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                              |[0x800005a8]:addiw a1, a0, 0<br> [0x800005ac]:sd a1, 144(gp)<br>        |
|  42|[0x80003358]<br>0x0000000000000008|- imm_val == 8<br> - rs1_val == 17179869184<br>                                                                                                                          |[0x800005b8]:addiw a1, a0, 8<br> [0x800005bc]:sd a1, 152(gp)<br>        |
|  43|[0x80003360]<br>0x0000000000000010|- rs1_val == 34359738368<br>                                                                                                                                             |[0x800005c8]:addiw a1, a0, 16<br> [0x800005cc]:sd a1, 160(gp)<br>       |
|  44|[0x80003368]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == 68719476736<br>                                                                                                                                             |[0x800005d8]:addiw a1, a0, 3839<br> [0x800005dc]:sd a1, 168(gp)<br>     |
|  45|[0x80003370]<br>0x0000000000000002|- imm_val == 2<br> - rs1_val == 137438953472<br>                                                                                                                         |[0x800005e8]:addiw a1, a0, 2<br> [0x800005ec]:sd a1, 176(gp)<br>        |
|  46|[0x80003378]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == 274877906944<br>                                                                                                                                            |[0x800005f8]:addiw a1, a0, 4090<br> [0x800005fc]:sd a1, 184(gp)<br>     |
|  47|[0x80003380]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                            |[0x80000608]:addiw a1, a0, 0<br> [0x8000060c]:sd a1, 192(gp)<br>        |
|  48|[0x80003388]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == 1099511627776<br>                                                                                                                                           |[0x80000618]:addiw a1, a0, 4079<br> [0x8000061c]:sd a1, 200(gp)<br>     |
|  49|[0x80003390]<br>0x0000000000000010|- rs1_val == 2199023255552<br>                                                                                                                                           |[0x80000628]:addiw a1, a0, 16<br> [0x8000062c]:sd a1, 208(gp)<br>       |
|  50|[0x80003398]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 4398046511104<br>                                                                                                                                           |[0x80000638]:addiw a1, a0, 4092<br> [0x8000063c]:sd a1, 216(gp)<br>     |
|  51|[0x800033a0]<br>0x0000000000000080|- rs1_val == 8796093022208<br>                                                                                                                                           |[0x80000648]:addiw a1, a0, 128<br> [0x8000064c]:sd a1, 224(gp)<br>      |
|  52|[0x800033a8]<br>0x0000000000000001|- rs1_val == 17592186044416<br>                                                                                                                                          |[0x80000658]:addiw a1, a0, 1<br> [0x8000065c]:sd a1, 232(gp)<br>        |
|  53|[0x800033b0]<br>0xFFFFFFFFFFFFFFDF|- imm_val == -33<br> - rs1_val == 35184372088832<br>                                                                                                                     |[0x80000668]:addiw a1, a0, 4063<br> [0x8000066c]:sd a1, 240(gp)<br>     |
|  54|[0x800033b8]<br>0xFFFFFFFFFFFFFFBF|- imm_val == -65<br> - rs1_val == 70368744177664<br>                                                                                                                     |[0x80000678]:addiw a1, a0, 4031<br> [0x8000067c]:sd a1, 248(gp)<br>     |
|  55|[0x800033c0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == 140737488355328<br>                                                                                                                                         |[0x80000688]:addiw a1, a0, 4079<br> [0x8000068c]:sd a1, 256(gp)<br>     |
|  56|[0x800033c8]<br>0x0000000000000009|- rs1_val == 281474976710656<br>                                                                                                                                         |[0x80000698]:addiw a1, a0, 9<br> [0x8000069c]:sd a1, 264(gp)<br>        |
|  57|[0x800033d0]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == 1125899906842624<br>                                                                                                                                        |[0x800006a8]:addiw a1, a0, 4031<br> [0x800006ac]:sd a1, 272(gp)<br>     |
|  58|[0x800033d8]<br>0xFFFFFFFFFFFFFAAA|- rs1_val == 2251799813685248<br>                                                                                                                                        |[0x800006b8]:addiw a1, a0, 2730<br> [0x800006bc]:sd a1, 280(gp)<br>     |
|  59|[0x800033e0]<br>0x0000000000000100|- imm_val == 256<br> - rs1_val == 4503599627370496<br>                                                                                                                   |[0x800006c8]:addiw a1, a0, 256<br> [0x800006cc]:sd a1, 288(gp)<br>      |
|  60|[0x800033e8]<br>0x0000000000000555|- rs1_val == 9007199254740992<br>                                                                                                                                        |[0x800006d8]:addiw a1, a0, 1365<br> [0x800006dc]:sd a1, 296(gp)<br>     |
|  61|[0x800033f0]<br>0xFFFFFFFFFFFFF800|- rs1_val == 18014398509481984<br>                                                                                                                                       |[0x800006e8]:addiw a1, a0, 2048<br> [0x800006ec]:sd a1, 304(gp)<br>     |
|  62|[0x800033f8]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == 36028797018963968<br>                                                                                                                                       |[0x800006f8]:addiw a1, a0, 4090<br> [0x800006fc]:sd a1, 312(gp)<br>     |
|  63|[0x80003400]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                       |[0x80000708]:addiw a1, a0, 0<br> [0x8000070c]:sd a1, 320(gp)<br>        |
|  64|[0x80003408]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                      |[0x80000718]:addiw a1, a0, 0<br> [0x8000071c]:sd a1, 328(gp)<br>        |
|  65|[0x80003410]<br>0x0000000000000400|- rs1_val == 288230376151711744<br>                                                                                                                                      |[0x80000728]:addiw a1, a0, 1024<br> [0x8000072c]:sd a1, 336(gp)<br>     |
|  66|[0x80003418]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == 576460752303423488<br>                                                                                                                                      |[0x80000738]:addiw a1, a0, 3839<br> [0x8000073c]:sd a1, 344(gp)<br>     |
|  67|[0x80003420]<br>0xFFFFFFFFFFFFF800|- rs1_val == 1152921504606846976<br>                                                                                                                                     |[0x80000748]:addiw a1, a0, 2048<br> [0x8000074c]:sd a1, 352(gp)<br>     |
|  68|[0x80003428]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == 2305843009213693952<br>                                                                                                                                     |[0x80000758]:addiw a1, a0, 4087<br> [0x8000075c]:sd a1, 360(gp)<br>     |
|  69|[0x80003430]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == 4611686018427387904<br>                                                                                                                                     |[0x80000768]:addiw a1, a0, 4088<br> [0x8000076c]:sd a1, 368(gp)<br>     |
|  70|[0x80003438]<br>0x000000000000003E|- imm_val == 64<br> - rs1_val == -2<br>                                                                                                                                  |[0x80000774]:addiw a1, a0, 64<br> [0x80000778]:sd a1, 376(gp)<br>       |
|  71|[0x80003440]<br>0xFFFFFFFFFFFFFEFC|- rs1_val == -3<br>                                                                                                                                                      |[0x80000780]:addiw a1, a0, 3839<br> [0x80000784]:sd a1, 384(gp)<br>     |
|  72|[0x80003448]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                                                      |[0x8000078c]:addiw a1, a0, 0<br> [0x80000790]:sd a1, 392(gp)<br>        |
|  73|[0x80003450]<br>0xFFFFFFFFFFFFFDFE|- rs1_val == -2251799813685249<br>                                                                                                                                       |[0x800007a0]:addiw a1, a0, 3583<br> [0x800007a4]:sd a1, 400(gp)<br>     |
|  74|[0x80003458]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -4503599627370497<br>                                                                                                                                       |[0x800007b4]:addiw a1, a0, 4092<br> [0x800007b8]:sd a1, 408(gp)<br>     |
|  75|[0x80003460]<br>0x0000000000000004|- rs1_val == -9007199254740993<br>                                                                                                                                       |[0x800007c8]:addiw a1, a0, 5<br> [0x800007cc]:sd a1, 416(gp)<br>        |
|  76|[0x80003468]<br>0x0000000000000008|- rs1_val == -18014398509481985<br>                                                                                                                                      |[0x800007dc]:addiw a1, a0, 9<br> [0x800007e0]:sd a1, 424(gp)<br>        |
|  77|[0x80003470]<br>0xFFFFFFFFFFFFFFEE|- rs1_val == -36028797018963969<br>                                                                                                                                      |[0x800007f0]:addiw a1, a0, 4079<br> [0x800007f4]:sd a1, 432(gp)<br>     |
|  78|[0x80003478]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -72057594037927937<br>                                                                                                                                      |[0x80000804]:addiw a1, a0, 4088<br> [0x80000808]:sd a1, 440(gp)<br>     |
|  79|[0x80003480]<br>0x0000000000000008|- rs1_val == -144115188075855873<br>                                                                                                                                     |[0x80000818]:addiw a1, a0, 9<br> [0x8000081c]:sd a1, 448(gp)<br>        |
|  80|[0x80003488]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -288230376151711745<br>                                                                                                                                     |[0x8000082c]:addiw a1, a0, 4092<br> [0x80000830]:sd a1, 456(gp)<br>     |
|  81|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                     |[0x80000840]:addiw a1, a0, 0<br> [0x80000844]:sd a1, 464(gp)<br>        |
|  82|[0x80003498]<br>0x0000000000000002|- rs1_val == -1152921504606846977<br>                                                                                                                                    |[0x80000854]:addiw a1, a0, 3<br> [0x80000858]:sd a1, 472(gp)<br>        |
|  83|[0x800034a0]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -2305843009213693953<br>                                                                                                                                    |[0x80000868]:addiw a1, a0, 2048<br> [0x8000086c]:sd a1, 480(gp)<br>     |
|  84|[0x800034a8]<br>0xFFFFFFFFFFFFFFF5|- rs1_val == -4611686018427387905<br>                                                                                                                                    |[0x8000087c]:addiw a1, a0, 4086<br> [0x80000880]:sd a1, 488(gp)<br>     |
|  85|[0x800034b0]<br>0x0000000055555565|- rs1_val == 6148914691236517205<br>                                                                                                                                     |[0x800008a4]:addiw a1, a0, 16<br> [0x800008a8]:sd a1, 496(gp)<br>       |
|  86|[0x800034b8]<br>0xFFFFFFFFAAAAA6AA|- rs1_val == -6148914691236517206<br>                                                                                                                                    |[0x800008cc]:addiw a1, a0, 3072<br> [0x800008d0]:sd a1, 504(gp)<br>     |
|  87|[0x800034c0]<br>0x0000000000000019|- imm_val == 32<br>                                                                                                                                                      |[0x800008d8]:addiw a1, a0, 32<br> [0x800008dc]:sd a1, 512(gp)<br>       |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFFFFFF|- imm_val == 512<br> - rs1_val == -513<br>                                                                                                                               |[0x800008e4]:addiw a1, a0, 512<br> [0x800008e8]:sd a1, 520(gp)<br>      |
|  89|[0x800034d0]<br>0xFFFFFFFFFF7FFFFC|- imm_val == -3<br>                                                                                                                                                      |[0x800008f4]:addiw a1, a0, 4093<br> [0x800008f8]:sd a1, 528(gp)<br>     |
|  90|[0x800034d8]<br>0x00000000000000FB|- imm_val == -5<br>                                                                                                                                                      |[0x80000900]:addiw a1, a0, 4091<br> [0x80000904]:sd a1, 536(gp)<br>     |
|  91|[0x800034e0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -17<br>                                                                                                                                                     |[0x8000090c]:addiw a1, a0, 0<br> [0x80000910]:sd a1, 544(gp)<br>        |
|  92|[0x800034e8]<br>0xFFFFFFFFFFFFFFE8|- rs1_val == -33<br>                                                                                                                                                     |[0x80000918]:addiw a1, a0, 9<br> [0x8000091c]:sd a1, 552(gp)<br>        |
|  93|[0x800034f0]<br>0xFFFFFFFFFFFFFFBB|- rs1_val == -65<br>                                                                                                                                                     |[0x80000924]:addiw a1, a0, 4092<br> [0x80000928]:sd a1, 560(gp)<br>     |
|  94|[0x800034f8]<br>0xFFFFFFFFFFFFFEFE|- rs1_val == -257<br>                                                                                                                                                    |[0x80000930]:addiw a1, a0, 4095<br> [0x80000934]:sd a1, 568(gp)<br>     |
|  95|[0x80003500]<br>0xFFFFFFFFFFFFFBEE|- rs1_val == -1025<br>                                                                                                                                                   |[0x8000093c]:addiw a1, a0, 4079<br> [0x80000940]:sd a1, 576(gp)<br>     |
|  96|[0x80003508]<br>0xFFFFFFFFFFFFF800|- rs1_val == -2049<br>                                                                                                                                                   |[0x8000094c]:addiw a1, a0, 1<br> [0x80000950]:sd a1, 584(gp)<br>        |
|  97|[0x80003510]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                                                   |[0x8000095c]:addiw a1, a0, 0<br> [0x80000960]:sd a1, 592(gp)<br>        |
|  98|[0x80003518]<br>0xFFFFFFFFFFFFDBFF|- rs1_val == -8193<br>                                                                                                                                                   |[0x8000096c]:addiw a1, a0, 3072<br> [0x80000970]:sd a1, 600(gp)<br>     |
|  99|[0x80003520]<br>0xFFFFFFFFFFFFC01F|- rs1_val == -16385<br>                                                                                                                                                  |[0x8000097c]:addiw a1, a0, 32<br> [0x80000980]:sd a1, 608(gp)<br>       |
| 100|[0x80003528]<br>0xFFFFFFFFFFFF8003|- rs1_val == -32769<br>                                                                                                                                                  |[0x8000098c]:addiw a1, a0, 4<br> [0x80000990]:sd a1, 616(gp)<br>        |
| 101|[0x80003530]<br>0xFFFFFFFFFFFEFFBE|- rs1_val == -65537<br>                                                                                                                                                  |[0x8000099c]:addiw a1, a0, 4031<br> [0x800009a0]:sd a1, 624(gp)<br>     |
| 102|[0x80003538]<br>0xFFFFFFFFFFFE0005|- rs1_val == -131073<br>                                                                                                                                                 |[0x800009ac]:addiw a1, a0, 6<br> [0x800009b0]:sd a1, 632(gp)<br>        |
| 103|[0x80003540]<br>0xFFFFFFFFFFFC0008|- rs1_val == -262145<br>                                                                                                                                                 |[0x800009bc]:addiw a1, a0, 9<br> [0x800009c0]:sd a1, 640(gp)<br>        |
| 104|[0x80003548]<br>0xFFFFFFFFFFF7FFBE|- rs1_val == -524289<br>                                                                                                                                                 |[0x800009cc]:addiw a1, a0, 4031<br> [0x800009d0]:sd a1, 648(gp)<br>     |
| 105|[0x80003550]<br>0xFFFFFFFFFFF000FF|- rs1_val == -1048577<br>                                                                                                                                                |[0x800009dc]:addiw a1, a0, 256<br> [0x800009e0]:sd a1, 656(gp)<br>      |
| 106|[0x80003558]<br>0xFFFFFFFFFFE00004|- rs1_val == -2097153<br>                                                                                                                                                |[0x800009ec]:addiw a1, a0, 5<br> [0x800009f0]:sd a1, 664(gp)<br>        |
| 107|[0x80003560]<br>0xFFFFFFFFFFBFFF7E|- rs1_val == -4194305<br>                                                                                                                                                |[0x800009fc]:addiw a1, a0, 3967<br> [0x80000a00]:sd a1, 672(gp)<br>     |
| 108|[0x80003568]<br>0xFFFFFFFFFF00007F|- rs1_val == -16777217<br>                                                                                                                                               |[0x80000a0c]:addiw a1, a0, 128<br> [0x80000a10]:sd a1, 680(gp)<br>      |
| 109|[0x80003570]<br>0xFFFFFFFFFDFFFEFE|- rs1_val == -33554433<br>                                                                                                                                               |[0x80000a1c]:addiw a1, a0, 3839<br> [0x80000a20]:sd a1, 688(gp)<br>     |
| 110|[0x80003578]<br>0xFFFFFFFFFC000006|- rs1_val == -67108865<br>                                                                                                                                               |[0x80000a2c]:addiw a1, a0, 7<br> [0x80000a30]:sd a1, 696(gp)<br>        |
| 111|[0x80003580]<br>0xFFFFFFFFF8000007|- rs1_val == -134217729<br>                                                                                                                                              |[0x80000a3c]:addiw a1, a0, 8<br> [0x80000a40]:sd a1, 704(gp)<br>        |
| 112|[0x80003588]<br>0xFFFFFFFFF00007FE|- rs1_val == -268435457<br>                                                                                                                                              |[0x80000a4c]:addiw a1, a0, 2047<br> [0x80000a50]:sd a1, 712(gp)<br>     |
| 113|[0x80003590]<br>0xFFFFFFFFE00003FF|- rs1_val == -536870913<br>                                                                                                                                              |[0x80000a5c]:addiw a1, a0, 1024<br> [0x80000a60]:sd a1, 720(gp)<br>     |
| 114|[0x80003598]<br>0xFFFFFFFFBFFFFFF6|- rs1_val == -1073741825<br>                                                                                                                                             |[0x80000a6c]:addiw a1, a0, 4087<br> [0x80000a70]:sd a1, 728(gp)<br>     |
| 115|[0x800035a0]<br>0xFFFFFFFF80000001|- rs1_val == -2147483649<br>                                                                                                                                             |[0x80000a80]:addiw a1, a0, 2<br> [0x80000a84]:sd a1, 736(gp)<br>        |
| 116|[0x800035a8]<br>0xFFFFFFFFFFFFFDFE|- rs1_val == -4294967297<br>                                                                                                                                             |[0x80000a94]:addiw a1, a0, 3583<br> [0x80000a98]:sd a1, 744(gp)<br>     |
| 117|[0x800035b0]<br>0xFFFFFFFFFFFFFFDE|- rs1_val == -8589934593<br>                                                                                                                                             |[0x80000aa8]:addiw a1, a0, 4063<br> [0x80000aac]:sd a1, 752(gp)<br>     |
| 118|[0x800035b8]<br>0xFFFFFFFFFFFFFFF6|- rs1_val == -17179869185<br>                                                                                                                                            |[0x80000abc]:addiw a1, a0, 4087<br> [0x80000ac0]:sd a1, 760(gp)<br>     |
| 119|[0x800035c0]<br>0x0000000000000002|- rs1_val == -34359738369<br>                                                                                                                                            |[0x80000ad0]:addiw a1, a0, 3<br> [0x80000ad4]:sd a1, 768(gp)<br>        |
| 120|[0x800035c8]<br>0x000000000000007F|- rs1_val == -68719476737<br>                                                                                                                                            |[0x80000ae4]:addiw a1, a0, 128<br> [0x80000ae8]:sd a1, 776(gp)<br>      |
| 121|[0x800035d0]<br>0xFFFFFFFFFFFFFFDE|- rs1_val == -137438953473<br>                                                                                                                                           |[0x80000af8]:addiw a1, a0, 4063<br> [0x80000afc]:sd a1, 784(gp)<br>     |
| 122|[0x800035d8]<br>0x0000000000000007|- rs1_val == -274877906945<br>                                                                                                                                           |[0x80000b0c]:addiw a1, a0, 8<br> [0x80000b10]:sd a1, 792(gp)<br>        |
| 123|[0x800035e0]<br>0x0000000000000007|- rs1_val == -549755813889<br>                                                                                                                                           |[0x80000b20]:addiw a1, a0, 8<br> [0x80000b24]:sd a1, 800(gp)<br>        |
| 124|[0x800035e8]<br>0xFFFFFFFFFFFFFFF6|- rs1_val == -1099511627777<br>                                                                                                                                          |[0x80000b34]:addiw a1, a0, 4087<br> [0x80000b38]:sd a1, 808(gp)<br>     |
| 125|[0x800035f0]<br>0x0000000000000554|- rs1_val == -2199023255553<br>                                                                                                                                          |[0x80000b48]:addiw a1, a0, 1365<br> [0x80000b4c]:sd a1, 816(gp)<br>     |
| 126|[0x800035f8]<br>0x00000000000003FE|- rs1_val == -4398046511105<br>                                                                                                                                          |[0x80000b5c]:addiw a1, a0, 1023<br> [0x80000b60]:sd a1, 824(gp)<br>     |
| 127|[0x80003600]<br>0x0000000000000004|- rs1_val == -8796093022209<br>                                                                                                                                          |[0x80000b70]:addiw a1, a0, 5<br> [0x80000b74]:sd a1, 832(gp)<br>        |
| 128|[0x80003608]<br>0x0000000000000005|- rs1_val == -17592186044417<br>                                                                                                                                         |[0x80000b84]:addiw a1, a0, 6<br> [0x80000b88]:sd a1, 840(gp)<br>        |
| 129|[0x80003610]<br>0x00000000000003FF|- rs1_val == -35184372088833<br>                                                                                                                                         |[0x80000b98]:addiw a1, a0, 1024<br> [0x80000b9c]:sd a1, 848(gp)<br>     |
| 130|[0x80003618]<br>0xFFFFFFFFFFFFFFBE|- rs1_val == -70368744177665<br>                                                                                                                                         |[0x80000bac]:addiw a1, a0, 4031<br> [0x80000bb0]:sd a1, 856(gp)<br>     |
| 131|[0x80003620]<br>0x00000000000003FF|- rs1_val == -140737488355329<br>                                                                                                                                        |[0x80000bc0]:addiw a1, a0, 1024<br> [0x80000bc4]:sd a1, 864(gp)<br>     |
| 132|[0x80003628]<br>0xFFFFFFFFFFFFFFF5|- rs1_val == -281474976710657<br>                                                                                                                                        |[0x80000bd4]:addiw a1, a0, 4086<br> [0x80000bd8]:sd a1, 872(gp)<br>     |
| 133|[0x80003630]<br>0x000000000000000F|- rs1_val == -562949953421313<br>                                                                                                                                        |[0x80000be8]:addiw a1, a0, 16<br> [0x80000bec]:sd a1, 880(gp)<br>       |
| 134|[0x80003638]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -1125899906842625<br>                                                                                                                                       |[0x80000bfc]:addiw a1, a0, 4093<br> [0x80000c00]:sd a1, 888(gp)<br>     |
| 135|[0x80003640]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                                                    |[0x80000c10]:addiw a1, a0, 4092<br> [0x80000c14]:sd a1, 896(gp)<br>     |
