
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c40')]      |
| SIG_REGION                | [('0x80003208', '0x80003658', '138 dwords')]      |
| COV_LABELS                | addiw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addiw-01.S/addiw-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 138      |
| STAT1                     | 137      |
| STAT2                     | 1      |
| STAT3                     | 92     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c24]:addiw a1, a0, 1024
      [0x80000c28]:sd a1, 920(t1)
 -- Signature Address: 0x80003648 Data: 0xFFFFFFFFFFFFFBFF
 -- Redundant Coverpoints hit by the op
      - opcode : addiw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val < 0 and imm_val > 0
      - imm_val == 1024
      - rs1_val == -2049






```

## Details of STAT3

```
[0x800003a8]:addiw fp, fp, 2047

[0x800003b4]:addiw s2, zero, 1
[0x800003b8]:slli s2, s2, 56

[0x800003c4]:addiw a7, zero, 1
[0x800003c8]:slli a7, a7, 37

[0x800003d4]:addiw s6, zero, 4095
[0x800003d8]:slli s6, s6, 63

[0x800003f0]:addiw zero, zero, 4095
[0x800003f4]:slli zero, zero, 63
[0x800003f8]:addi zero, zero, 4095

[0x80000410]:addiw t5, zero, 1
[0x80000414]:slli t5, t5, 49

[0x800004bc]:addiw s4, s4, 2048

[0x800005a0]:addiw a0, zero, 1
[0x800005a4]:slli a0, a0, 31

[0x800005b0]:addiw a0, zero, 1
[0x800005b4]:slli a0, a0, 32

[0x800005c0]:addiw a0, zero, 1
[0x800005c4]:slli a0, a0, 33

[0x800005d0]:addiw a0, zero, 1
[0x800005d4]:slli a0, a0, 34

[0x800005e0]:addiw a0, zero, 1
[0x800005e4]:slli a0, a0, 35

[0x800005f0]:addiw a0, zero, 1
[0x800005f4]:slli a0, a0, 36

[0x80000600]:addiw a0, zero, 1
[0x80000604]:slli a0, a0, 38

[0x80000610]:addiw a0, zero, 1
[0x80000614]:slli a0, a0, 39

[0x80000620]:addiw a0, zero, 1
[0x80000624]:slli a0, a0, 40

[0x80000630]:addiw a0, zero, 1
[0x80000634]:slli a0, a0, 41

[0x80000640]:addiw a0, zero, 1
[0x80000644]:slli a0, a0, 42

[0x80000650]:addiw a0, zero, 1
[0x80000654]:slli a0, a0, 43

[0x80000660]:addiw a0, zero, 1
[0x80000664]:slli a0, a0, 44

[0x80000670]:addiw a0, zero, 1
[0x80000674]:slli a0, a0, 45

[0x80000680]:addiw a0, zero, 1
[0x80000684]:slli a0, a0, 46

[0x80000690]:addiw a0, zero, 1
[0x80000694]:slli a0, a0, 47

[0x800006a0]:addiw a0, zero, 1
[0x800006a4]:slli a0, a0, 48

[0x800006b0]:addiw a0, zero, 1
[0x800006b4]:slli a0, a0, 50

[0x800006c0]:addiw a0, zero, 1
[0x800006c4]:slli a0, a0, 51

[0x800006d0]:addiw a0, zero, 1
[0x800006d4]:slli a0, a0, 52

[0x800006e0]:addiw a0, zero, 1
[0x800006e4]:slli a0, a0, 53

[0x800006f0]:addiw a0, zero, 1
[0x800006f4]:slli a0, a0, 54

[0x80000700]:addiw a0, zero, 1
[0x80000704]:slli a0, a0, 55

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

[0x800007c4]:addiw a0, zero, 4095
[0x800007c8]:slli a0, a0, 51
[0x800007cc]:addi a0, a0, 4095

[0x800007d8]:addiw a0, zero, 4095
[0x800007dc]:slli a0, a0, 52
[0x800007e0]:addi a0, a0, 4095

[0x800007ec]:addiw a0, zero, 4095
[0x800007f0]:slli a0, a0, 53
[0x800007f4]:addi a0, a0, 4095

[0x80000800]:addiw a0, zero, 4095
[0x80000804]:slli a0, a0, 54
[0x80000808]:addi a0, a0, 4095

[0x80000814]:addiw a0, zero, 4095
[0x80000818]:slli a0, a0, 55
[0x8000081c]:addi a0, a0, 4095

[0x80000828]:addiw a0, zero, 4095
[0x8000082c]:slli a0, a0, 56
[0x80000830]:addi a0, a0, 4095

[0x8000083c]:addiw a0, zero, 4095
[0x80000840]:slli a0, a0, 57
[0x80000844]:addi a0, a0, 4095

[0x80000850]:addiw a0, zero, 4095
[0x80000854]:slli a0, a0, 58
[0x80000858]:addi a0, a0, 4095

[0x80000864]:addiw a0, zero, 4095
[0x80000868]:slli a0, a0, 59
[0x8000086c]:addi a0, a0, 4095

[0x80000878]:addiw a0, zero, 4095
[0x8000087c]:slli a0, a0, 60
[0x80000880]:addi a0, a0, 4095

[0x8000088c]:addiw a0, zero, 4095
[0x80000890]:slli a0, a0, 61
[0x80000894]:addi a0, a0, 4095

[0x800008a0]:addiw a0, zero, 4095
[0x800008a4]:slli a0, a0, 62
[0x800008a8]:addi a0, a0, 4095

[0x800008b8]:addiw a0, a0, 1365
[0x800008bc]:slli a0, a0, 12
[0x800008c0]:addi a0, a0, 1365
[0x800008c4]:slli a0, a0, 12
[0x800008c8]:addi a0, a0, 1365
[0x800008cc]:slli a0, a0, 12
[0x800008d0]:addi a0, a0, 1365

[0x800008e0]:addiw a0, a0, 2731
[0x800008e4]:slli a0, a0, 12
[0x800008e8]:addi a0, a0, 2731
[0x800008ec]:slli a0, a0, 12
[0x800008f0]:addi a0, a0, 2731
[0x800008f4]:slli a0, a0, 12
[0x800008f8]:addi a0, a0, 2730

[0x80000904]:addiw a0, zero, 1
[0x80000908]:slli a0, a0, 60

[0x8000093c]:addiw a0, a0, 4095

[0x80000970]:addiw a0, a0, 4095

[0x80000980]:addiw a0, a0, 4095

[0x80000990]:addiw a0, a0, 4095

[0x800009a0]:addiw a0, a0, 4095

[0x800009b0]:addiw a0, a0, 4095

[0x800009c0]:addiw a0, a0, 4095

[0x800009d0]:addiw a0, a0, 4095

[0x800009e0]:addiw a0, a0, 4095

[0x800009f0]:addiw a0, a0, 4095

[0x80000a00]:addiw a0, a0, 4095

[0x80000a10]:addiw a0, a0, 4095

[0x80000a20]:addiw a0, a0, 4095

[0x80000a30]:addiw a0, a0, 4095

[0x80000a40]:addiw a0, a0, 4095

[0x80000a50]:addiw a0, a0, 4095

[0x80000a60]:addiw a0, a0, 4095

[0x80000a70]:addiw a0, a0, 4095

[0x80000a80]:addiw a0, a0, 4095

[0x80000a8c]:addiw a0, zero, 4095
[0x80000a90]:slli a0, a0, 31
[0x80000a94]:addi a0, a0, 4095

[0x80000aa0]:addiw a0, zero, 4095
[0x80000aa4]:slli a0, a0, 32
[0x80000aa8]:addi a0, a0, 4095

[0x80000ab4]:addiw a0, zero, 4095
[0x80000ab8]:slli a0, a0, 33
[0x80000abc]:addi a0, a0, 4095

[0x80000ac8]:addiw a0, zero, 4095
[0x80000acc]:slli a0, a0, 34
[0x80000ad0]:addi a0, a0, 4095

[0x80000adc]:addiw a0, zero, 4095
[0x80000ae0]:slli a0, a0, 35
[0x80000ae4]:addi a0, a0, 4095

[0x80000af0]:addiw a0, zero, 4095
[0x80000af4]:slli a0, a0, 36
[0x80000af8]:addi a0, a0, 4095

[0x80000b04]:addiw a0, zero, 4095
[0x80000b08]:slli a0, a0, 37
[0x80000b0c]:addi a0, a0, 4095

[0x80000b18]:addiw a0, zero, 4095
[0x80000b1c]:slli a0, a0, 38
[0x80000b20]:addi a0, a0, 4095

[0x80000b2c]:addiw a0, zero, 4095
[0x80000b30]:slli a0, a0, 39
[0x80000b34]:addi a0, a0, 4095

[0x80000b40]:addiw a0, zero, 4095
[0x80000b44]:slli a0, a0, 40
[0x80000b48]:addi a0, a0, 4095

[0x80000b54]:addiw a0, zero, 4095
[0x80000b58]:slli a0, a0, 41
[0x80000b5c]:addi a0, a0, 4095

[0x80000b68]:addiw a0, zero, 4095
[0x80000b6c]:slli a0, a0, 42
[0x80000b70]:addi a0, a0, 4095

[0x80000b7c]:addiw a0, zero, 4095
[0x80000b80]:slli a0, a0, 43
[0x80000b84]:addi a0, a0, 4095

[0x80000b90]:addiw a0, zero, 4095
[0x80000b94]:slli a0, a0, 44
[0x80000b98]:addi a0, a0, 4095

[0x80000ba4]:addiw a0, zero, 4095
[0x80000ba8]:slli a0, a0, 45
[0x80000bac]:addi a0, a0, 4095

[0x80000bb8]:addiw a0, zero, 4095
[0x80000bbc]:slli a0, a0, 46
[0x80000bc0]:addi a0, a0, 4095

[0x80000bcc]:addiw a0, zero, 4095
[0x80000bd0]:slli a0, a0, 47
[0x80000bd4]:addi a0, a0, 4095

[0x80000be0]:addiw a0, zero, 4095
[0x80000be4]:slli a0, a0, 48
[0x80000be8]:addi a0, a0, 4095

[0x80000bf4]:addiw a0, zero, 4095
[0x80000bf8]:slli a0, a0, 49
[0x80000bfc]:addi a0, a0, 4095

[0x80000c08]:addiw a0, zero, 4095
[0x80000c0c]:slli a0, a0, 50
[0x80000c10]:addi a0, a0, 4095

[0x80000c20]:addiw a0, a0, 2047

[0x80000c2c]:addiw a0, zero, 4095
[0x80000c30]:slli a0, a0, 63
[0x80000c34]:addi a0, a0, 4095



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

|s.no|            signature             |                                                                              coverpoints                                                                              |                                 code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFFFFFFFBE|- opcode : addiw<br> - rs1 : x6<br> - rd : x6<br> - rs1 == rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -33<br> - rs1_val == -33<br> |[0x8000039c]:addiw t1, t1, 4063<br> [0x800003a0]:sd t1, 0(a0)<br>     |
|   2|[0x80003210]<br>0x0000000000000000|- rd : x0<br> - rs1 != rd<br> - imm_val == 1024<br> - rs1_val == -2049<br>                                                                                             |[0x800003ac]:addiw zero, fp, 1024<br> [0x800003b0]:sd zero, 8(a0)<br> |
|   3|[0x80003218]<br>0x0000000000000002|- rs1 : x18<br> - rd : x31<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 2<br> - rs1_val == 72057594037927936<br>                                                 |[0x800003bc]:addiw t6, s2, 2<br> [0x800003c0]:sd t6, 16(a0)<br>       |
|   4|[0x80003220]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x17<br> - rd : x1<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 137438953472<br>                                                                          |[0x800003cc]:addiw ra, a7, 4092<br> [0x800003d0]:sd ra, 24(a0)<br>    |
|   5|[0x80003228]<br>0x0000000000000004|- rs1 : x22<br> - rd : x4<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 4<br> - rs1_val == -9223372036854775808<br>                                                 |[0x800003dc]:addiw tp, s6, 4<br> [0x800003e0]:sd tp, 32(a0)<br>       |
|   6|[0x80003230]<br>0x0000000000000005|- rs1 : x24<br> - rd : x28<br>                                                                                                                                         |[0x800003e8]:addiw t3, s8, 5<br> [0x800003ec]:sd t3, 40(a0)<br>       |
|   7|[0x80003238]<br>0xFFFFFFFFFFFFF800|- rd : x2<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br>                                                                                                     |[0x800003fc]:addiw sp, zero, 2048<br> [0x80000400]:sd sp, 48(a0)<br>  |
|   8|[0x80003240]<br>0x0000000000000004|- rs1 : x11<br> - rd : x30<br> - rs1_val == 1<br>                                                                                                                      |[0x80000408]:addiw t5, a1, 3<br> [0x8000040c]:sd t5, 56(a0)<br>       |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x30<br> - rd : x14<br> - imm_val == 0<br> - rs1_val == 562949953421312<br>                                                                                     |[0x80000418]:addiw a4, t5, 0<br> [0x8000041c]:sd a4, 64(a0)<br>       |
|  10|[0x80003250]<br>0x00000000000007F5|- rs1 : x13<br> - rd : x21<br>                                                                                                                                         |[0x80000424]:addiw s5, a3, 2047<br> [0x80000428]:sd s5, 72(a0)<br>    |
|  11|[0x80003258]<br>0x0000000010000001|- rs1 : x15<br> - rd : x7<br> - rs1_val == 268435456<br>                                                                                                               |[0x80000430]:addiw t2, a5, 1<br> [0x80000434]:sd t2, 80(a0)<br>       |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFFE01|- rs1 : x28<br> - rd : x20<br> - imm_val == -513<br> - rs1_val == 2<br>                                                                                                |[0x8000043c]:addiw s4, t3, 3583<br> [0x80000440]:sd s4, 88(a0)<br>    |
|  13|[0x80003268]<br>0x000000000000000D|- rs1 : x7<br> - rd : x15<br> - rs1_val == 4<br>                                                                                                                       |[0x80000448]:addiw a5, t2, 9<br> [0x8000044c]:sd a5, 96(a0)<br>       |
|  14|[0x80003270]<br>0xFFFFFFFFFFFFFFC7|- rs1 : x27<br> - rd : x3<br> - imm_val == -65<br> - rs1_val == 8<br>                                                                                                  |[0x80000454]:addiw gp, s11, 4031<br> [0x80000458]:sd gp, 104(a0)<br>  |
|  15|[0x80003278]<br>0x000000000000080F|- rs1 : x25<br> - rs1_val == 16<br>                                                                                                                                    |[0x80000460]:addiw a7, s9, 2047<br> [0x80000464]:sd a7, 112(a0)<br>   |
|  16|[0x80003280]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x21<br> - rd : x13<br> - rs1_val == 32<br>                                                                                                                     |[0x8000046c]:addiw a3, s5, 4063<br> [0x80000470]:sd a3, 120(a0)<br>   |
|  17|[0x80003288]<br>0x0000000000000040|- rs1 : x19<br> - rd : x11<br> - rs1_val == 64<br>                                                                                                                     |[0x80000478]:addiw a1, s3, 0<br> [0x8000047c]:sd a1, 128(a0)<br>      |
|  18|[0x80003290]<br>0xFFFFFFFFFFFFFC80|- rs1 : x9<br> - rd : x29<br> - rs1_val == 128<br>                                                                                                                     |[0x80000484]:addiw t4, s1, 3072<br> [0x80000488]:sd t4, 136(a0)<br>   |
|  19|[0x80003298]<br>0xFFFFFFFFFFFFFEFF|- rs1 : x16<br> - rd : x19<br> - rs1_val == 256<br>                                                                                                                    |[0x80000490]:addiw s3, a6, 3583<br> [0x80000494]:sd s3, 144(a0)<br>   |
|  20|[0x800032a0]<br>0x0000000000000300|- rs1 : x23<br> - rd : x16<br> - imm_val == 256<br> - rs1_val == 512<br>                                                                                               |[0x8000049c]:addiw a6, s7, 256<br> [0x800004a0]:sd a6, 152(a0)<br>    |
|  21|[0x800032a8]<br>0x00000000000003F7|- rs1 : x5<br> - rd : x26<br> - imm_val == -9<br> - rs1_val == 1024<br>                                                                                                |[0x800004a8]:addiw s10, t0, 4087<br> [0x800004ac]:sd s10, 160(a0)<br> |
|  22|[0x800032b0]<br>0x00000000000007F8|- rs1_val == 2048<br>                                                                                                                                                  |[0x800004c0]:addiw s2, s4, 4088<br> [0x800004c4]:sd s2, 0(t1)<br>     |
|  23|[0x800032b8]<br>0x0000000000001004|- rs1 : x31<br> - rd : x24<br>                                                                                                                                         |[0x800004cc]:addiw s8, t6, 4<br> [0x800004d0]:sd s8, 8(t1)<br>        |
|  24|[0x800032c0]<br>0x0000000000001FF9|- rs1 : x3<br> - rs1_val == 8192<br>                                                                                                                                   |[0x800004d8]:addiw s6, gp, 4089<br> [0x800004dc]:sd s6, 16(t1)<br>    |
|  25|[0x800032c8]<br>0x0000000000004004|- rs1 : x2<br> - rs1_val == 16384<br>                                                                                                                                  |[0x800004e4]:addiw fp, sp, 4<br> [0x800004e8]:sd fp, 24(t1)<br>       |
|  26|[0x800032d0]<br>0x0000000000007BFF|- rs1 : x29<br> - rd : x5<br> - imm_val == -1025<br> - rs1_val == 32768<br>                                                                                            |[0x800004f0]:addiw t0, t4, 3071<br> [0x800004f4]:sd t0, 32(t1)<br>    |
|  27|[0x800032d8]<br>0x0000000000010000|- rs1 : x4<br> - rd : x12<br> - rs1_val == 65536<br>                                                                                                                   |[0x800004fc]:addiw a2, tp, 0<br> [0x80000500]:sd a2, 40(t1)<br>       |
|  28|[0x800032e0]<br>0x000000000001FFEF|- rs1 : x12<br> - rd : x10<br> - imm_val == -17<br> - rs1_val == 131072<br>                                                                                            |[0x80000508]:addiw a0, a2, 4079<br> [0x8000050c]:sd a0, 48(t1)<br>    |
|  29|[0x800032e8]<br>0x000000000003FFDF|- rs1 : x14<br> - rd : x23<br> - rs1_val == 262144<br>                                                                                                                 |[0x80000514]:addiw s7, a4, 4063<br> [0x80000518]:sd s7, 56(t1)<br>    |
|  30|[0x800032f0]<br>0x0000000000080001|- rs1 : x10<br> - rd : x25<br> - rs1_val == 524288<br>                                                                                                                 |[0x80000520]:addiw s9, a0, 1<br> [0x80000524]:sd s9, 64(t1)<br>       |
|  31|[0x800032f8]<br>0x0000000000100100|- rs1 : x26<br> - rd : x9<br> - rs1_val == 1048576<br>                                                                                                                 |[0x8000052c]:addiw s1, s10, 256<br> [0x80000530]:sd s1, 72(t1)<br>    |
|  32|[0x80003300]<br>0x00000000001FFFF7|- rs1 : x1<br> - rd : x27<br> - rs1_val == 2097152<br>                                                                                                                 |[0x80000538]:addiw s11, ra, 4087<br> [0x8000053c]:sd s11, 80(t1)<br>  |
|  33|[0x80003308]<br>0x0000000000400040|- imm_val == 64<br> - rs1_val == 4194304<br>                                                                                                                           |[0x80000544]:addiw a1, a0, 64<br> [0x80000548]:sd a1, 88(t1)<br>      |
|  34|[0x80003310]<br>0x0000000000800080|- imm_val == 128<br> - rs1_val == 8388608<br>                                                                                                                          |[0x80000550]:addiw a1, a0, 128<br> [0x80000554]:sd a1, 96(t1)<br>     |
|  35|[0x80003318]<br>0x0000000001000080|- rs1_val == 16777216<br>                                                                                                                                              |[0x8000055c]:addiw a1, a0, 128<br> [0x80000560]:sd a1, 104(t1)<br>    |
|  36|[0x80003320]<br>0x00000000020007FF|- rs1_val == 33554432<br>                                                                                                                                              |[0x80000568]:addiw a1, a0, 2047<br> [0x8000056c]:sd a1, 112(t1)<br>   |
|  37|[0x80003328]<br>0x0000000004000200|- imm_val == 512<br> - rs1_val == 67108864<br>                                                                                                                         |[0x80000574]:addiw a1, a0, 512<br> [0x80000578]:sd a1, 120(t1)<br>    |
|  38|[0x80003330]<br>0x0000000007FFFAAA|- imm_val == -1366<br> - rs1_val == 134217728<br>                                                                                                                      |[0x80000580]:addiw a1, a0, 2730<br> [0x80000584]:sd a1, 128(t1)<br>   |
|  39|[0x80003338]<br>0x000000001FFFFFFC|- rs1_val == 536870912<br>                                                                                                                                             |[0x8000058c]:addiw a1, a0, 4092<br> [0x80000590]:sd a1, 136(t1)<br>   |
|  40|[0x80003340]<br>0x0000000040000040|- rs1_val == 1073741824<br>                                                                                                                                            |[0x80000598]:addiw a1, a0, 64<br> [0x8000059c]:sd a1, 144(t1)<br>     |
|  41|[0x80003348]<br>0x000000007FFFFFF8|- rs1_val == 2147483648<br>                                                                                                                                            |[0x800005a8]:addiw a1, a0, 4088<br> [0x800005ac]:sd a1, 152(t1)<br>   |
|  42|[0x80003350]<br>0xFFFFFFFFFFFFFF7F|- imm_val == -129<br> - rs1_val == 4294967296<br>                                                                                                                      |[0x800005b8]:addiw a1, a0, 3967<br> [0x800005bc]:sd a1, 160(t1)<br>   |
|  43|[0x80003358]<br>0x00000000000003FF|- rs1_val == 8589934592<br>                                                                                                                                            |[0x800005c8]:addiw a1, a0, 1023<br> [0x800005cc]:sd a1, 168(t1)<br>   |
|  44|[0x80003360]<br>0x00000000000007FF|- rs1_val == 17179869184<br>                                                                                                                                           |[0x800005d8]:addiw a1, a0, 2047<br> [0x800005dc]:sd a1, 176(t1)<br>   |
|  45|[0x80003368]<br>0x0000000000000001|- rs1_val == 34359738368<br>                                                                                                                                           |[0x800005e8]:addiw a1, a0, 1<br> [0x800005ec]:sd a1, 184(t1)<br>      |
|  46|[0x80003370]<br>0x0000000000000100|- rs1_val == 68719476736<br>                                                                                                                                           |[0x800005f8]:addiw a1, a0, 256<br> [0x800005fc]:sd a1, 192(t1)<br>    |
|  47|[0x80003378]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 274877906944<br>                                                                                                                                          |[0x80000608]:addiw a1, a0, 4092<br> [0x8000060c]:sd a1, 200(t1)<br>   |
|  48|[0x80003380]<br>0x0000000000000006|- rs1_val == 549755813888<br>                                                                                                                                          |[0x80000618]:addiw a1, a0, 6<br> [0x8000061c]:sd a1, 208(t1)<br>      |
|  49|[0x80003388]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == 1099511627776<br>                                                                                                                                         |[0x80000628]:addiw a1, a0, 3071<br> [0x8000062c]:sd a1, 216(t1)<br>   |
|  50|[0x80003390]<br>0x0000000000000555|- imm_val == 1365<br> - rs1_val == 2199023255552<br>                                                                                                                   |[0x80000638]:addiw a1, a0, 1365<br> [0x8000063c]:sd a1, 224(t1)<br>   |
|  51|[0x80003398]<br>0x0000000000000004|- rs1_val == 4398046511104<br>                                                                                                                                         |[0x80000648]:addiw a1, a0, 4<br> [0x8000064c]:sd a1, 232(t1)<br>      |
|  52|[0x800033a0]<br>0x0000000000000040|- rs1_val == 8796093022208<br>                                                                                                                                         |[0x80000658]:addiw a1, a0, 64<br> [0x8000065c]:sd a1, 240(t1)<br>     |
|  53|[0x800033a8]<br>0x0000000000000007|- rs1_val == 17592186044416<br>                                                                                                                                        |[0x80000668]:addiw a1, a0, 7<br> [0x8000066c]:sd a1, 248(t1)<br>      |
|  54|[0x800033b0]<br>0x0000000000000080|- rs1_val == 35184372088832<br>                                                                                                                                        |[0x80000678]:addiw a1, a0, 128<br> [0x8000067c]:sd a1, 256(t1)<br>    |
|  55|[0x800033b8]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == 70368744177664<br>                                                                                                                                        |[0x80000688]:addiw a1, a0, 3071<br> [0x8000068c]:sd a1, 264(t1)<br>   |
|  56|[0x800033c0]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 140737488355328<br>                                                                                                                                       |[0x80000698]:addiw a1, a0, 4092<br> [0x8000069c]:sd a1, 272(t1)<br>   |
|  57|[0x800033c8]<br>0x0000000000000040|- rs1_val == 281474976710656<br>                                                                                                                                       |[0x800006a8]:addiw a1, a0, 64<br> [0x800006ac]:sd a1, 280(t1)<br>     |
|  58|[0x800033d0]<br>0x0000000000000040|- rs1_val == 1125899906842624<br>                                                                                                                                      |[0x800006b8]:addiw a1, a0, 64<br> [0x800006bc]:sd a1, 288(t1)<br>     |
|  59|[0x800033d8]<br>0x0000000000000100|- rs1_val == 2251799813685248<br>                                                                                                                                      |[0x800006c8]:addiw a1, a0, 256<br> [0x800006cc]:sd a1, 296(t1)<br>    |
|  60|[0x800033e0]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == 4503599627370496<br>                                                                                                                                      |[0x800006d8]:addiw a1, a0, 3583<br> [0x800006dc]:sd a1, 304(t1)<br>   |
|  61|[0x800033e8]<br>0x0000000000000005|- rs1_val == 9007199254740992<br>                                                                                                                                      |[0x800006e8]:addiw a1, a0, 5<br> [0x800006ec]:sd a1, 312(t1)<br>      |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                     |[0x800006f8]:addiw a1, a0, 0<br> [0x800006fc]:sd a1, 320(t1)<br>      |
|  63|[0x800033f8]<br>0x0000000000000004|- rs1_val == 36028797018963968<br>                                                                                                                                     |[0x80000708]:addiw a1, a0, 4<br> [0x8000070c]:sd a1, 328(t1)<br>      |
|  64|[0x80003400]<br>0x00000000000007FF|- rs1_val == 144115188075855872<br>                                                                                                                                    |[0x80000718]:addiw a1, a0, 2047<br> [0x8000071c]:sd a1, 336(t1)<br>   |
|  65|[0x80003408]<br>0xFFFFFFFFFFFFFAAA|- rs1_val == 288230376151711744<br>                                                                                                                                    |[0x80000728]:addiw a1, a0, 2730<br> [0x8000072c]:sd a1, 344(t1)<br>   |
|  66|[0x80003410]<br>0x0000000000000080|- rs1_val == 576460752303423488<br>                                                                                                                                    |[0x80000738]:addiw a1, a0, 128<br> [0x8000073c]:sd a1, 352(t1)<br>    |
|  67|[0x80003418]<br>0x0000000000000002|- rs1_val == 1152921504606846976<br>                                                                                                                                   |[0x80000748]:addiw a1, a0, 2<br> [0x8000074c]:sd a1, 360(t1)<br>      |
|  68|[0x80003420]<br>0x00000000000003FF|- rs1_val == 2305843009213693952<br>                                                                                                                                   |[0x80000758]:addiw a1, a0, 1023<br> [0x8000075c]:sd a1, 368(t1)<br>   |
|  69|[0x80003428]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == 4611686018427387904<br>                                                                                                                                   |[0x80000768]:addiw a1, a0, 3071<br> [0x8000076c]:sd a1, 376(t1)<br>   |
|  70|[0x80003430]<br>0x00000000000003FE|- rs1_val == -2<br>                                                                                                                                                    |[0x80000774]:addiw a1, a0, 1024<br> [0x80000778]:sd a1, 384(t1)<br>   |
|  71|[0x80003438]<br>0x00000000000000FD|- rs1_val == -3<br>                                                                                                                                                    |[0x80000780]:addiw a1, a0, 256<br> [0x80000784]:sd a1, 392(t1)<br>    |
|  72|[0x80003440]<br>0xFFFFFFFFFFFFFFEA|- rs1_val == -5<br>                                                                                                                                                    |[0x8000078c]:addiw a1, a0, 4079<br> [0x80000790]:sd a1, 400(t1)<br>   |
|  73|[0x80003448]<br>0xFFFFFFFFFFFFFBF6|- rs1_val == -9<br>                                                                                                                                                    |[0x80000798]:addiw a1, a0, 3071<br> [0x8000079c]:sd a1, 408(t1)<br>   |
|  74|[0x80003450]<br>0x00000000000003EE|- rs1_val == -17<br>                                                                                                                                                   |[0x800007a4]:addiw a1, a0, 1023<br> [0x800007a8]:sd a1, 416(t1)<br>   |
|  75|[0x80003458]<br>0xFFFFFFFFFFFFFFCF|- imm_val == 16<br> - rs1_val == -65<br>                                                                                                                               |[0x800007b0]:addiw a1, a0, 16<br> [0x800007b4]:sd a1, 424(t1)<br>     |
|  76|[0x80003460]<br>0x000000000000017F|- rs1_val == -129<br>                                                                                                                                                  |[0x800007bc]:addiw a1, a0, 512<br> [0x800007c0]:sd a1, 432(t1)<br>    |
|  77|[0x80003468]<br>0x0000000000000002|- rs1_val == -2251799813685249<br>                                                                                                                                     |[0x800007d0]:addiw a1, a0, 3<br> [0x800007d4]:sd a1, 440(t1)<br>      |
|  78|[0x80003470]<br>0xFFFFFFFFFFFFFAA9|- rs1_val == -4503599627370497<br>                                                                                                                                     |[0x800007e4]:addiw a1, a0, 2730<br> [0x800007e8]:sd a1, 448(t1)<br>   |
|  79|[0x80003478]<br>0x00000000000003FF|- rs1_val == -9007199254740993<br>                                                                                                                                     |[0x800007f8]:addiw a1, a0, 1024<br> [0x800007fc]:sd a1, 456(t1)<br>   |
|  80|[0x80003480]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -18014398509481985<br>                                                                                                                                    |[0x8000080c]:addiw a1, a0, 4092<br> [0x80000810]:sd a1, 464(t1)<br>   |
|  81|[0x80003488]<br>0xFFFFFFFFFFFFFAA9|- rs1_val == -36028797018963969<br>                                                                                                                                    |[0x80000820]:addiw a1, a0, 2730<br> [0x80000824]:sd a1, 472(t1)<br>   |
|  82|[0x80003490]<br>0x0000000000000002|- rs1_val == -72057594037927937<br>                                                                                                                                    |[0x80000834]:addiw a1, a0, 3<br> [0x80000838]:sd a1, 480(t1)<br>      |
|  83|[0x80003498]<br>0xFFFFFFFFFFFFFFFD|- imm_val == -2<br> - rs1_val == -144115188075855873<br>                                                                                                               |[0x80000848]:addiw a1, a0, 4094<br> [0x8000084c]:sd a1, 488(t1)<br>   |
|  84|[0x800034a0]<br>0x0000000000000008|- rs1_val == -288230376151711745<br>                                                                                                                                   |[0x8000085c]:addiw a1, a0, 9<br> [0x80000860]:sd a1, 496(t1)<br>      |
|  85|[0x800034a8]<br>0xFFFFFFFFFFFFFFF5|- rs1_val == -576460752303423489<br>                                                                                                                                   |[0x80000870]:addiw a1, a0, 4086<br> [0x80000874]:sd a1, 504(t1)<br>   |
|  86|[0x800034b0]<br>0xFFFFFFFFFFFFFFDE|- rs1_val == -1152921504606846977<br>                                                                                                                                  |[0x80000884]:addiw a1, a0, 4063<br> [0x80000888]:sd a1, 512(t1)<br>   |
|  87|[0x800034b8]<br>0xFFFFFFFFFFFFFBFE|- rs1_val == -2305843009213693953<br>                                                                                                                                  |[0x80000898]:addiw a1, a0, 3071<br> [0x8000089c]:sd a1, 520(t1)<br>   |
|  88|[0x800034c0]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -4611686018427387905<br>                                                                                                                                  |[0x800008ac]:addiw a1, a0, 4092<br> [0x800008b0]:sd a1, 528(t1)<br>   |
|  89|[0x800034c8]<br>0x000000005555554D|- rs1_val == 6148914691236517205<br>                                                                                                                                   |[0x800008d4]:addiw a1, a0, 4088<br> [0x800008d8]:sd a1, 536(t1)<br>   |
|  90|[0x800034d0]<br>0xFFFFFFFFAAAAAA29|- rs1_val == -6148914691236517206<br>                                                                                                                                  |[0x800008fc]:addiw a1, a0, 3967<br> [0x80000900]:sd a1, 544(t1)<br>   |
|  91|[0x800034d8]<br>0x0000000000000008|- imm_val == 8<br>                                                                                                                                                     |[0x8000090c]:addiw a1, a0, 8<br> [0x80000910]:sd a1, 552(t1)<br>      |
|  92|[0x800034e0]<br>0x0000000040000020|- imm_val == 32<br>                                                                                                                                                    |[0x80000918]:addiw a1, a0, 32<br> [0x8000091c]:sd a1, 560(t1)<br>     |
|  93|[0x800034e8]<br>0x00000000007FFFFD|- imm_val == -3<br>                                                                                                                                                    |[0x80000924]:addiw a1, a0, 4093<br> [0x80000928]:sd a1, 568(t1)<br>   |
|  94|[0x800034f0]<br>0x0000000000003FFB|- imm_val == -5<br>                                                                                                                                                    |[0x80000930]:addiw a1, a0, 4091<br> [0x80000934]:sd a1, 576(t1)<br>   |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFFBEFE|- imm_val == -257<br> - rs1_val == -16385<br>                                                                                                                          |[0x80000940]:addiw a1, a0, 3839<br> [0x80000944]:sd a1, 584(t1)<br>   |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFFF06|- rs1_val == -257<br>                                                                                                                                                  |[0x8000094c]:addiw a1, a0, 7<br> [0x80000950]:sd a1, 592(t1)<br>      |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFF8A9|- rs1_val == -513<br>                                                                                                                                                  |[0x80000958]:addiw a1, a0, 2730<br> [0x8000095c]:sd a1, 600(t1)<br>   |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                                                                                 |[0x80000964]:addiw a1, a0, 0<br> [0x80000968]:sd a1, 608(t1)<br>      |
|  99|[0x80003518]<br>0xFFFFFFFFFFFFF004|- rs1_val == -4097<br>                                                                                                                                                 |[0x80000974]:addiw a1, a0, 5<br> [0x80000978]:sd a1, 616(t1)<br>      |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFDEFE|- rs1_val == -8193<br>                                                                                                                                                 |[0x80000984]:addiw a1, a0, 3839<br> [0x80000988]:sd a1, 624(t1)<br>   |
| 101|[0x80003528]<br>0xFFFFFFFFFFFF8001|- rs1_val == -32769<br>                                                                                                                                                |[0x80000994]:addiw a1, a0, 2<br> [0x80000998]:sd a1, 632(t1)<br>      |
| 102|[0x80003530]<br>0xFFFFFFFFFFFEFDFE|- rs1_val == -65537<br>                                                                                                                                                |[0x800009a4]:addiw a1, a0, 3583<br> [0x800009a8]:sd a1, 640(t1)<br>   |
| 103|[0x80003538]<br>0xFFFFFFFFFFFDFBFF|- rs1_val == -131073<br>                                                                                                                                               |[0x800009b4]:addiw a1, a0, 3072<br> [0x800009b8]:sd a1, 648(t1)<br>   |
| 104|[0x80003540]<br>0xFFFFFFFFFFFC0004|- rs1_val == -262145<br>                                                                                                                                               |[0x800009c4]:addiw a1, a0, 5<br> [0x800009c8]:sd a1, 656(t1)<br>      |
| 105|[0x80003548]<br>0xFFFFFFFFFFF7FFFE|- rs1_val == -524289<br>                                                                                                                                               |[0x800009d4]:addiw a1, a0, 4095<br> [0x800009d8]:sd a1, 664(t1)<br>   |
| 106|[0x80003550]<br>0xFFFFFFFFFFF000FF|- rs1_val == -1048577<br>                                                                                                                                              |[0x800009e4]:addiw a1, a0, 256<br> [0x800009e8]:sd a1, 672(t1)<br>    |
| 107|[0x80003558]<br>0xFFFFFFFFFFDFFFF9|- rs1_val == -2097153<br>                                                                                                                                              |[0x800009f4]:addiw a1, a0, 4090<br> [0x800009f8]:sd a1, 680(t1)<br>   |
| 108|[0x80003560]<br>0xFFFFFFFFFFBFFAA9|- rs1_val == -4194305<br>                                                                                                                                              |[0x80000a04]:addiw a1, a0, 2730<br> [0x80000a08]:sd a1, 688(t1)<br>   |
| 109|[0x80003568]<br>0xFFFFFFFFFF7FFFF5|- rs1_val == -8388609<br>                                                                                                                                              |[0x80000a14]:addiw a1, a0, 4086<br> [0x80000a18]:sd a1, 696(t1)<br>   |
| 110|[0x80003570]<br>0xFFFFFFFFFEFFFFFB|- rs1_val == -16777217<br>                                                                                                                                             |[0x80000a24]:addiw a1, a0, 4092<br> [0x80000a28]:sd a1, 704(t1)<br>   |
| 111|[0x80003578]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                                             |[0x80000a34]:addiw a1, a0, 0<br> [0x80000a38]:sd a1, 712(t1)<br>      |
| 112|[0x80003580]<br>0xFFFFFFFFFBFFFFFC|- rs1_val == -67108865<br>                                                                                                                                             |[0x80000a44]:addiw a1, a0, 4093<br> [0x80000a48]:sd a1, 720(t1)<br>   |
| 113|[0x80003588]<br>0xFFFFFFFFF8000007|- rs1_val == -134217729<br>                                                                                                                                            |[0x80000a54]:addiw a1, a0, 8<br> [0x80000a58]:sd a1, 728(t1)<br>      |
| 114|[0x80003590]<br>0xFFFFFFFFEFFFF7FF|- rs1_val == -268435457<br>                                                                                                                                            |[0x80000a64]:addiw a1, a0, 2048<br> [0x80000a68]:sd a1, 736(t1)<br>   |
| 115|[0x80003598]<br>0xFFFFFFFFE00007FE|- rs1_val == -536870913<br>                                                                                                                                            |[0x80000a74]:addiw a1, a0, 2047<br> [0x80000a78]:sd a1, 744(t1)<br>   |
| 116|[0x800035a0]<br>0xFFFFFFFFBFFFFFFC|- rs1_val == -1073741825<br>                                                                                                                                           |[0x80000a84]:addiw a1, a0, 4093<br> [0x80000a88]:sd a1, 752(t1)<br>   |
| 117|[0x800035a8]<br>0x000000007FFFFFFC|- rs1_val == -2147483649<br>                                                                                                                                           |[0x80000a98]:addiw a1, a0, 4093<br> [0x80000a9c]:sd a1, 760(t1)<br>   |
| 118|[0x800035b0]<br>0xFFFFFFFFFFFFFF7E|- rs1_val == -4294967297<br>                                                                                                                                           |[0x80000aac]:addiw a1, a0, 3967<br> [0x80000ab0]:sd a1, 768(t1)<br>   |
| 119|[0x800035b8]<br>0xFFFFFFFFFFFFFAA9|- rs1_val == -8589934593<br>                                                                                                                                           |[0x80000ac0]:addiw a1, a0, 2730<br> [0x80000ac4]:sd a1, 776(t1)<br>   |
| 120|[0x800035c0]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -17179869185<br>                                                                                                                                          |[0x80000ad4]:addiw a1, a0, 4093<br> [0x80000ad8]:sd a1, 784(t1)<br>   |
| 121|[0x800035c8]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -34359738369<br>                                                                                                                                          |[0x80000ae8]:addiw a1, a0, 4092<br> [0x80000aec]:sd a1, 792(t1)<br>   |
| 122|[0x800035d0]<br>0x00000000000000FF|- rs1_val == -68719476737<br>                                                                                                                                          |[0x80000afc]:addiw a1, a0, 256<br> [0x80000b00]:sd a1, 800(t1)<br>    |
| 123|[0x800035d8]<br>0x0000000000000000|- rs1_val == -137438953473<br>                                                                                                                                         |[0x80000b10]:addiw a1, a0, 1<br> [0x80000b14]:sd a1, 808(t1)<br>      |
| 124|[0x800035e0]<br>0x00000000000007FE|- rs1_val == -274877906945<br>                                                                                                                                         |[0x80000b24]:addiw a1, a0, 2047<br> [0x80000b28]:sd a1, 816(t1)<br>   |
| 125|[0x800035e8]<br>0x00000000000001FF|- rs1_val == -549755813889<br>                                                                                                                                         |[0x80000b38]:addiw a1, a0, 512<br> [0x80000b3c]:sd a1, 824(t1)<br>    |
| 126|[0x800035f0]<br>0x00000000000003FE|- rs1_val == -1099511627777<br>                                                                                                                                        |[0x80000b4c]:addiw a1, a0, 1023<br> [0x80000b50]:sd a1, 832(t1)<br>   |
| 127|[0x800035f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                        |[0x80000b60]:addiw a1, a0, 0<br> [0x80000b64]:sd a1, 840(t1)<br>      |
| 128|[0x80003600]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == -4398046511105<br>                                                                                                                                        |[0x80000b74]:addiw a1, a0, 4090<br> [0x80000b78]:sd a1, 848(t1)<br>   |
| 129|[0x80003608]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -8796093022209<br>                                                                                                                                        |[0x80000b88]:addiw a1, a0, 4092<br> [0x80000b8c]:sd a1, 856(t1)<br>   |
| 130|[0x80003610]<br>0xFFFFFFFFFFFFFFDE|- rs1_val == -17592186044417<br>                                                                                                                                       |[0x80000b9c]:addiw a1, a0, 4063<br> [0x80000ba0]:sd a1, 864(t1)<br>   |
| 131|[0x80003618]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -35184372088833<br>                                                                                                                                       |[0x80000bb0]:addiw a1, a0, 4095<br> [0x80000bb4]:sd a1, 872(t1)<br>   |
| 132|[0x80003620]<br>0x0000000000000554|- rs1_val == -70368744177665<br>                                                                                                                                       |[0x80000bc4]:addiw a1, a0, 1365<br> [0x80000bc8]:sd a1, 880(t1)<br>   |
| 133|[0x80003628]<br>0x0000000000000000|- rs1_val == -140737488355329<br>                                                                                                                                      |[0x80000bd8]:addiw a1, a0, 1<br> [0x80000bdc]:sd a1, 888(t1)<br>      |
| 134|[0x80003630]<br>0x0000000000000002|- rs1_val == -281474976710657<br>                                                                                                                                      |[0x80000bec]:addiw a1, a0, 3<br> [0x80000bf0]:sd a1, 896(t1)<br>      |
| 135|[0x80003638]<br>0xFFFFFFFFFFFFFFEE|- rs1_val == -562949953421313<br>                                                                                                                                      |[0x80000c00]:addiw a1, a0, 4079<br> [0x80000c04]:sd a1, 904(t1)<br>   |
| 136|[0x80003640]<br>0xFFFFFFFFFFFFFAA9|- rs1_val == -1125899906842625<br>                                                                                                                                     |[0x80000c14]:addiw a1, a0, 2730<br> [0x80000c18]:sd a1, 912(t1)<br>   |
| 137|[0x80003650]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                                                  |[0x80000c38]:addiw a1, a0, 2048<br> [0x80000c3c]:sd a1, 928(t1)<br>   |
