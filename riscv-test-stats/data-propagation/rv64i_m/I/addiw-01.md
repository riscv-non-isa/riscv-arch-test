
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
| SIG_REGION                | [('0x80003208', '0x80003640', '135 dwords')]      |
| COV_LABELS                | addiw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addiw-01.S/addiw-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 135      |
| STAT1                     | 134      |
| STAT2                     | 1      |
| STAT3                     | 91     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c00]:addiw a1, a0, 3839
      [0x80000c04]:sd a1, 888(sp)
 -- Signature Address: 0x80003630 Data: 0xFFFFFFFFFFFFFEFF
 -- Redundant Coverpoints hit by the op
      - opcode : addiw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -257
      - rs1_val == 274877906944






```

## Details of STAT3

```
[0x800003a4]:addiw s4, zero, 4095
[0x800003a8]:slli s4, s4, 56
[0x800003ac]:addi s4, s4, 4095

[0x800003b8]:addiw t3, zero, 1
[0x800003bc]:slli t3, t3, 38

[0x800003c8]:addiw ra, zero, 4095
[0x800003cc]:slli ra, ra, 40
[0x800003d0]:addi ra, ra, 4095

[0x800003e8]:addiw s2, zero, 4095
[0x800003ec]:slli s2, s2, 63

[0x80000404]:addiw s8, zero, 4095
[0x80000408]:slli s8, s8, 63
[0x8000040c]:addi s8, s8, 4095

[0x80000430]:addiw s3, zero, 4095
[0x80000434]:slli s3, s3, 52
[0x80000438]:addi s3, s3, 4095

[0x800004b4]:addiw s6, s6, 2048

[0x80000544]:addiw zero, zero, 0

[0x800005b0]:addiw a0, zero, 1
[0x800005b4]:slli a0, a0, 31

[0x800005c0]:addiw a0, zero, 1
[0x800005c4]:slli a0, a0, 32

[0x800005d0]:addiw a0, zero, 1
[0x800005d4]:slli a0, a0, 33

[0x800005e0]:addiw a0, zero, 1
[0x800005e4]:slli a0, a0, 34

[0x800005f0]:addiw a0, zero, 1
[0x800005f4]:slli a0, a0, 35

[0x80000600]:addiw a0, zero, 1
[0x80000604]:slli a0, a0, 36

[0x80000610]:addiw a0, zero, 1
[0x80000614]:slli a0, a0, 37

[0x80000620]:addiw a0, zero, 1
[0x80000624]:slli a0, a0, 39

[0x80000630]:addiw a0, zero, 1
[0x80000634]:slli a0, a0, 40

[0x80000640]:addiw a0, zero, 1
[0x80000644]:slli a0, a0, 41

[0x80000650]:addiw a0, zero, 1
[0x80000654]:slli a0, a0, 42

[0x80000660]:addiw a0, zero, 1
[0x80000664]:slli a0, a0, 43

[0x80000670]:addiw a0, zero, 1
[0x80000674]:slli a0, a0, 44

[0x80000680]:addiw a0, zero, 1
[0x80000684]:slli a0, a0, 45

[0x80000690]:addiw a0, zero, 1
[0x80000694]:slli a0, a0, 46

[0x800006a0]:addiw a0, zero, 1
[0x800006a4]:slli a0, a0, 47

[0x800006b0]:addiw a0, zero, 1
[0x800006b4]:slli a0, a0, 48

[0x800006c0]:addiw a0, zero, 1
[0x800006c4]:slli a0, a0, 49

[0x800006d0]:addiw a0, zero, 1
[0x800006d4]:slli a0, a0, 50

[0x800006e0]:addiw a0, zero, 1
[0x800006e4]:slli a0, a0, 51

[0x800006f0]:addiw a0, zero, 1
[0x800006f4]:slli a0, a0, 52

[0x80000700]:addiw a0, zero, 1
[0x80000704]:slli a0, a0, 53

[0x80000710]:addiw a0, zero, 1
[0x80000714]:slli a0, a0, 54

[0x80000720]:addiw a0, zero, 1
[0x80000724]:slli a0, a0, 55

[0x80000730]:addiw a0, zero, 1
[0x80000734]:slli a0, a0, 56

[0x80000740]:addiw a0, zero, 1
[0x80000744]:slli a0, a0, 57

[0x80000750]:addiw a0, zero, 1
[0x80000754]:slli a0, a0, 58

[0x80000760]:addiw a0, zero, 1
[0x80000764]:slli a0, a0, 59

[0x80000770]:addiw a0, zero, 1
[0x80000774]:slli a0, a0, 60

[0x80000780]:addiw a0, zero, 1
[0x80000784]:slli a0, a0, 61

[0x80000790]:addiw a0, zero, 1
[0x80000794]:slli a0, a0, 62

[0x800007a0]:addiw a0, zero, 4095
[0x800007a4]:slli a0, a0, 51
[0x800007a8]:addi a0, a0, 4095

[0x800007b4]:addiw a0, zero, 4095
[0x800007b8]:slli a0, a0, 53
[0x800007bc]:addi a0, a0, 4095

[0x800007c8]:addiw a0, zero, 4095
[0x800007cc]:slli a0, a0, 54
[0x800007d0]:addi a0, a0, 4095

[0x800007dc]:addiw a0, zero, 4095
[0x800007e0]:slli a0, a0, 55
[0x800007e4]:addi a0, a0, 4095

[0x800007f0]:addiw a0, zero, 4095
[0x800007f4]:slli a0, a0, 57
[0x800007f8]:addi a0, a0, 4095

[0x80000804]:addiw a0, zero, 4095
[0x80000808]:slli a0, a0, 58
[0x8000080c]:addi a0, a0, 4095

[0x80000818]:addiw a0, zero, 4095
[0x8000081c]:slli a0, a0, 59
[0x80000820]:addi a0, a0, 4095

[0x8000082c]:addiw a0, zero, 4095
[0x80000830]:slli a0, a0, 60
[0x80000834]:addi a0, a0, 4095

[0x80000840]:addiw a0, zero, 4095
[0x80000844]:slli a0, a0, 61
[0x80000848]:addi a0, a0, 4095

[0x80000854]:addiw a0, zero, 4095
[0x80000858]:slli a0, a0, 62
[0x8000085c]:addi a0, a0, 4095

[0x8000086c]:addiw a0, a0, 1365
[0x80000870]:slli a0, a0, 12
[0x80000874]:addi a0, a0, 1365
[0x80000878]:slli a0, a0, 12
[0x8000087c]:addi a0, a0, 1365
[0x80000880]:slli a0, a0, 12
[0x80000884]:addi a0, a0, 1365

[0x80000894]:addiw a0, a0, 2731
[0x80000898]:slli a0, a0, 12
[0x8000089c]:addi a0, a0, 2731
[0x800008a0]:slli a0, a0, 12
[0x800008a4]:addi a0, a0, 2731
[0x800008a8]:slli a0, a0, 12
[0x800008ac]:addi a0, a0, 2730

[0x800008c8]:addiw a0, a0, 4095

[0x80000950]:addiw a0, a0, 2047

[0x80000960]:addiw a0, a0, 4095

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

[0x80000a7c]:addiw a0, zero, 4095
[0x80000a80]:slli a0, a0, 31
[0x80000a84]:addi a0, a0, 4095

[0x80000a90]:addiw a0, zero, 4095
[0x80000a94]:slli a0, a0, 32
[0x80000a98]:addi a0, a0, 4095

[0x80000aa4]:addiw a0, zero, 4095
[0x80000aa8]:slli a0, a0, 33
[0x80000aac]:addi a0, a0, 4095

[0x80000ab8]:addiw a0, zero, 4095
[0x80000abc]:slli a0, a0, 34
[0x80000ac0]:addi a0, a0, 4095

[0x80000acc]:addiw a0, zero, 4095
[0x80000ad0]:slli a0, a0, 35
[0x80000ad4]:addi a0, a0, 4095

[0x80000ae0]:addiw a0, zero, 4095
[0x80000ae4]:slli a0, a0, 36
[0x80000ae8]:addi a0, a0, 4095

[0x80000af4]:addiw a0, zero, 4095
[0x80000af8]:slli a0, a0, 37
[0x80000afc]:addi a0, a0, 4095

[0x80000b08]:addiw a0, zero, 4095
[0x80000b0c]:slli a0, a0, 38
[0x80000b10]:addi a0, a0, 4095

[0x80000b1c]:addiw a0, zero, 4095
[0x80000b20]:slli a0, a0, 39
[0x80000b24]:addi a0, a0, 4095

[0x80000b30]:addiw a0, zero, 4095
[0x80000b34]:slli a0, a0, 41
[0x80000b38]:addi a0, a0, 4095

[0x80000b44]:addiw a0, zero, 4095
[0x80000b48]:slli a0, a0, 42
[0x80000b4c]:addi a0, a0, 4095

[0x80000b58]:addiw a0, zero, 4095
[0x80000b5c]:slli a0, a0, 43
[0x80000b60]:addi a0, a0, 4095

[0x80000b6c]:addiw a0, zero, 4095
[0x80000b70]:slli a0, a0, 44
[0x80000b74]:addi a0, a0, 4095

[0x80000b80]:addiw a0, zero, 4095
[0x80000b84]:slli a0, a0, 45
[0x80000b88]:addi a0, a0, 4095

[0x80000b94]:addiw a0, zero, 4095
[0x80000b98]:slli a0, a0, 46
[0x80000b9c]:addi a0, a0, 4095

[0x80000ba8]:addiw a0, zero, 4095
[0x80000bac]:slli a0, a0, 47
[0x80000bb0]:addi a0, a0, 4095

[0x80000bbc]:addiw a0, zero, 4095
[0x80000bc0]:slli a0, a0, 48
[0x80000bc4]:addi a0, a0, 4095

[0x80000bd0]:addiw a0, zero, 4095
[0x80000bd4]:slli a0, a0, 49
[0x80000bd8]:addi a0, a0, 4095

[0x80000be4]:addiw a0, zero, 4095
[0x80000be8]:slli a0, a0, 50
[0x80000bec]:addi a0, a0, 4095

[0x80000bf8]:addiw a0, zero, 1
[0x80000bfc]:slli a0, a0, 38



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

|s.no|            signature             |                                                                              coverpoints                                                                               |                                 code                                  |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000400|- opcode : addiw<br> - rs1 : x2<br> - rd : x26<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 512<br> - rs1_val == 512<br> |[0x8000039c]:addiw s10, sp, 512<br> [0x800003a0]:sd s10, 0(a2)<br>     |
|   2|[0x80003210]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rs1 == rd<br> - imm_val == 0<br> - rs1_val == -72057594037927937<br>                                                                                  |[0x800003b0]:addiw s4, s4, 0<br> [0x800003b4]:sd s4, 8(a2)<br>         |
|   3|[0x80003218]<br>0x0000000000000000|- rs1 : x28<br> - rd : x0<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -257<br> - rs1_val == 274877906944<br>                                                     |[0x800003c0]:addiw zero, t3, 3839<br> [0x800003c4]:sd zero, 16(a2)<br> |
|   4|[0x80003220]<br>0x0000000000000005|- rs1 : x1<br> - rd : x19<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -1099511627777<br>                                                                         |[0x800003d4]:addiw s3, ra, 6<br> [0x800003d8]:sd s3, 24(a2)<br>        |
|   5|[0x80003228]<br>0xFFFFFFFFFFFFF9A9|- rs1 : x3<br> - rd : x13<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -1366<br> - rs1_val == -257<br>                                                            |[0x800003e0]:addiw a3, gp, 2730<br> [0x800003e4]:sd a3, 32(a2)<br>     |
|   6|[0x80003230]<br>0x0000000000000400|- rs1 : x18<br> - rd : x31<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 1024<br> - rs1_val == -9223372036854775808<br>                                              |[0x800003f0]:addiw t6, s2, 1024<br> [0x800003f4]:sd t6, 40(a2)<br>     |
|   7|[0x80003238]<br>0xFFFFFFFFFFFFFFF7|- rs1 : x17<br> - rd : x4<br> - imm_val == -9<br>                                                                                                                       |[0x800003fc]:addiw tp, a7, 4087<br> [0x80000400]:sd tp, 48(a2)<br>     |
|   8|[0x80003240]<br>0x0000000000000006|- rs1 : x24<br> - rd : x15<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                    |[0x80000410]:addiw a5, s8, 7<br> [0x80000414]:sd a5, 56(a2)<br>        |
|   9|[0x80003248]<br>0xFFFFFFFFFFFFFAAB|- rs1 : x9<br> - rd : x2<br> - rs1_val == 1<br>                                                                                                                         |[0x8000041c]:addiw sp, s1, 2730<br> [0x80000420]:sd sp, 64(a2)<br>     |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFF808|- rs1 : x8<br> - rd : x22<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == 8<br>                                                                   |[0x80000428]:addiw s6, fp, 2048<br> [0x8000042c]:sd s6, 72(a2)<br>     |
|  11|[0x80003258]<br>0x00000000000007FE|- rs1 : x19<br> - rd : x6<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -4503599627370497<br>                                                   |[0x8000043c]:addiw t1, s3, 2047<br> [0x80000440]:sd t1, 80(a2)<br>     |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFFF00|- rs1 : x14<br>                                                                                                                                                         |[0x80000448]:addiw s2, a4, 1<br> [0x8000044c]:sd s2, 88(a2)<br>        |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x15<br> - rd : x8<br> - imm_val == -5<br> - rs1_val == 2<br>                                                                                                    |[0x80000454]:addiw fp, a5, 4091<br> [0x80000458]:sd fp, 96(a2)<br>     |
|  14|[0x80003270]<br>0x0000000000000003|- rs1 : x11<br> - rd : x9<br> - rs1_val == 4<br>                                                                                                                        |[0x80000460]:addiw s1, a1, 4095<br> [0x80000464]:sd s1, 104(a2)<br>    |
|  15|[0x80003278]<br>0x0000000000000009|- rs1 : x13<br> - rd : x17<br> - rs1_val == 16<br>                                                                                                                      |[0x8000046c]:addiw a7, a3, 4089<br> [0x80000470]:sd a7, 112(a2)<br>    |
|  16|[0x80003280]<br>0x000000000000041F|- rs1 : x16<br> - rs1_val == 32<br>                                                                                                                                     |[0x80000478]:addiw s8, a6, 1023<br> [0x8000047c]:sd s8, 120(a2)<br>    |
|  17|[0x80003288]<br>0xFFFFFFFFFFFFFF3F|- rs1 : x26<br> - rd : x27<br> - rs1_val == 64<br>                                                                                                                      |[0x80000484]:addiw s11, s10, 3839<br> [0x80000488]:sd s11, 128(a2)<br> |
|  18|[0x80003290]<br>0x0000000000000082|- rs1 : x25<br> - rd : x29<br> - imm_val == 2<br> - rs1_val == 128<br>                                                                                                  |[0x80000490]:addiw t4, s9, 2<br> [0x80000494]:sd t4, 136(a2)<br>       |
|  19|[0x80003298]<br>0x00000000000000FD|- rs1 : x27<br> - rd : x21<br> - imm_val == -3<br> - rs1_val == 256<br>                                                                                                 |[0x8000049c]:addiw s5, s11, 4093<br> [0x800004a0]:sd s5, 144(a2)<br>   |
|  20|[0x800032a0]<br>0x00000000000003BF|- rs1 : x5<br> - rd : x14<br> - imm_val == -65<br> - rs1_val == 1024<br>                                                                                                |[0x800004a8]:addiw a4, t0, 4031<br> [0x800004ac]:sd a4, 152(a2)<br>    |
|  21|[0x800032a8]<br>0x0000000000000804|- rd : x10<br> - imm_val == 4<br> - rs1_val == 2048<br>                                                                                                                 |[0x800004b8]:addiw a0, s6, 4<br> [0x800004bc]:sd a0, 160(a2)<br>       |
|  22|[0x800032b0]<br>0x0000000000000FF7|- rs1 : x7<br> - rd : x5<br>                                                                                                                                            |[0x800004c4]:addiw t0, t2, 4087<br> [0x800004c8]:sd t0, 168(a2)<br>    |
|  23|[0x800032b8]<br>0x0000000000001FF8|- rs1 : x30<br> - rd : x7<br> - rs1_val == 8192<br>                                                                                                                     |[0x800004d8]:addiw t2, t5, 4088<br> [0x800004dc]:sd t2, 0(sp)<br>      |
|  24|[0x800032c0]<br>0x0000000000004008|- rs1 : x29<br> - imm_val == 8<br> - rs1_val == 16384<br>                                                                                                               |[0x800004e4]:addiw t3, t4, 8<br> [0x800004e8]:sd t3, 8(sp)<br>         |
|  25|[0x800032c8]<br>0x0000000000007FF8|- rs1 : x21<br> - rd : x3<br> - rs1_val == 32768<br>                                                                                                                    |[0x800004f0]:addiw gp, s5, 4088<br> [0x800004f4]:sd gp, 16(sp)<br>     |
|  26|[0x800032d0]<br>0x000000000000FFF6|- rs1 : x10<br> - rd : x16<br> - rs1_val == 65536<br>                                                                                                                   |[0x800004fc]:addiw a6, a0, 4086<br> [0x80000500]:sd a6, 24(sp)<br>     |
|  27|[0x800032d8]<br>0x000000000001FEFF|- rs1 : x4<br> - rd : x12<br> - rs1_val == 131072<br>                                                                                                                   |[0x80000508]:addiw a2, tp, 3839<br> [0x8000050c]:sd a2, 32(sp)<br>     |
|  28|[0x800032e0]<br>0x0000000000040010|- rs1 : x23<br> - imm_val == 16<br> - rs1_val == 262144<br>                                                                                                             |[0x80000514]:addiw ra, s7, 16<br> [0x80000518]:sd ra, 40(sp)<br>       |
|  29|[0x800032e8]<br>0x000000000007FFF9|- rs1 : x6<br> - rd : x11<br> - rs1_val == 524288<br>                                                                                                                   |[0x80000520]:addiw a1, t1, 4089<br> [0x80000524]:sd a1, 48(sp)<br>     |
|  30|[0x800032f0]<br>0x00000000000FFFFE|- rs1 : x12<br> - rd : x30<br> - imm_val == -2<br> - rs1_val == 1048576<br>                                                                                             |[0x8000052c]:addiw t5, a2, 4094<br> [0x80000530]:sd t5, 56(sp)<br>     |
|  31|[0x800032f8]<br>0x0000000000200200|- rs1 : x31<br> - rd : x23<br> - rs1_val == 2097152<br>                                                                                                                 |[0x80000538]:addiw s7, t6, 512<br> [0x8000053c]:sd s7, 64(sp)<br>      |
|  32|[0x80003300]<br>0xFFFFFFFFFFFFFFFC|- rd : x25<br>                                                                                                                                                          |[0x80000548]:addiw s9, zero, 4092<br> [0x8000054c]:sd s9, 72(sp)<br>   |
|  33|[0x80003308]<br>0x00000000007FFFF9|- rs1_val == 8388608<br>                                                                                                                                                |[0x80000554]:addiw a1, a0, 4089<br> [0x80000558]:sd a1, 80(sp)<br>     |
|  34|[0x80003310]<br>0x0000000001000002|- rs1_val == 16777216<br>                                                                                                                                               |[0x80000560]:addiw a1, a0, 2<br> [0x80000564]:sd a1, 88(sp)<br>        |
|  35|[0x80003318]<br>0x00000000020007FF|- rs1_val == 33554432<br>                                                                                                                                               |[0x8000056c]:addiw a1, a0, 2047<br> [0x80000570]:sd a1, 96(sp)<br>     |
|  36|[0x80003320]<br>0x0000000004000003|- rs1_val == 67108864<br>                                                                                                                                               |[0x80000578]:addiw a1, a0, 3<br> [0x8000057c]:sd a1, 104(sp)<br>       |
|  37|[0x80003328]<br>0x0000000008000010|- rs1_val == 134217728<br>                                                                                                                                              |[0x80000584]:addiw a1, a0, 16<br> [0x80000588]:sd a1, 112(sp)<br>      |
|  38|[0x80003330]<br>0x000000000FFFFFFD|- rs1_val == 268435456<br>                                                                                                                                              |[0x80000590]:addiw a1, a0, 4093<br> [0x80000594]:sd a1, 120(sp)<br>    |
|  39|[0x80003338]<br>0x0000000020000008|- rs1_val == 536870912<br>                                                                                                                                              |[0x8000059c]:addiw a1, a0, 8<br> [0x800005a0]:sd a1, 128(sp)<br>       |
|  40|[0x80003340]<br>0x0000000040000040|- imm_val == 64<br> - rs1_val == 1073741824<br>                                                                                                                         |[0x800005a8]:addiw a1, a0, 64<br> [0x800005ac]:sd a1, 136(sp)<br>      |
|  41|[0x80003348]<br>0xFFFFFFFF80000400|- rs1_val == 2147483648<br>                                                                                                                                             |[0x800005b8]:addiw a1, a0, 1024<br> [0x800005bc]:sd a1, 144(sp)<br>    |
|  42|[0x80003350]<br>0xFFFFFFFFFFFFFFDF|- imm_val == -33<br> - rs1_val == 4294967296<br>                                                                                                                        |[0x800005c8]:addiw a1, a0, 4063<br> [0x800005cc]:sd a1, 152(sp)<br>    |
|  43|[0x80003358]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 8589934592<br>                                                                                                                                             |[0x800005d8]:addiw a1, a0, 4092<br> [0x800005dc]:sd a1, 160(sp)<br>    |
|  44|[0x80003360]<br>0x0000000000000007|- rs1_val == 17179869184<br>                                                                                                                                            |[0x800005e8]:addiw a1, a0, 7<br> [0x800005ec]:sd a1, 168(sp)<br>       |
|  45|[0x80003368]<br>0x0000000000000080|- imm_val == 128<br> - rs1_val == 34359738368<br>                                                                                                                       |[0x800005f8]:addiw a1, a0, 128<br> [0x800005fc]:sd a1, 176(sp)<br>     |
|  46|[0x80003370]<br>0x0000000000000100|- imm_val == 256<br> - rs1_val == 68719476736<br>                                                                                                                       |[0x80000608]:addiw a1, a0, 256<br> [0x8000060c]:sd a1, 184(sp)<br>     |
|  47|[0x80003378]<br>0x00000000000007FF|- rs1_val == 137438953472<br>                                                                                                                                           |[0x80000618]:addiw a1, a0, 2047<br> [0x8000061c]:sd a1, 192(sp)<br>    |
|  48|[0x80003380]<br>0xFFFFFFFFFFFFFBFF|- imm_val == -1025<br> - rs1_val == 549755813888<br>                                                                                                                    |[0x80000628]:addiw a1, a0, 3071<br> [0x8000062c]:sd a1, 200(sp)<br>    |
|  49|[0x80003388]<br>0x0000000000000020|- imm_val == 32<br> - rs1_val == 1099511627776<br>                                                                                                                      |[0x80000638]:addiw a1, a0, 32<br> [0x8000063c]:sd a1, 208(sp)<br>      |
|  50|[0x80003390]<br>0x0000000000000080|- rs1_val == 2199023255552<br>                                                                                                                                          |[0x80000648]:addiw a1, a0, 128<br> [0x8000064c]:sd a1, 216(sp)<br>     |
|  51|[0x80003398]<br>0x0000000000000020|- rs1_val == 4398046511104<br>                                                                                                                                          |[0x80000658]:addiw a1, a0, 32<br> [0x8000065c]:sd a1, 224(sp)<br>      |
|  52|[0x800033a0]<br>0x0000000000000004|- rs1_val == 8796093022208<br>                                                                                                                                          |[0x80000668]:addiw a1, a0, 4<br> [0x8000066c]:sd a1, 232(sp)<br>       |
|  53|[0x800033a8]<br>0x0000000000000200|- rs1_val == 17592186044416<br>                                                                                                                                         |[0x80000678]:addiw a1, a0, 512<br> [0x8000067c]:sd a1, 240(sp)<br>     |
|  54|[0x800033b0]<br>0xFFFFFFFFFFFFFF7F|- imm_val == -129<br> - rs1_val == 35184372088832<br>                                                                                                                   |[0x80000688]:addiw a1, a0, 3967<br> [0x8000068c]:sd a1, 248(sp)<br>    |
|  55|[0x800033b8]<br>0xFFFFFFFFFFFFFC00|- rs1_val == 70368744177664<br>                                                                                                                                         |[0x80000698]:addiw a1, a0, 3072<br> [0x8000069c]:sd a1, 256(sp)<br>    |
|  56|[0x800033c0]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == 140737488355328<br>                                                                                                                                        |[0x800006a8]:addiw a1, a0, 3071<br> [0x800006ac]:sd a1, 264(sp)<br>    |
|  57|[0x800033c8]<br>0x0000000000000020|- rs1_val == 281474976710656<br>                                                                                                                                        |[0x800006b8]:addiw a1, a0, 32<br> [0x800006bc]:sd a1, 272(sp)<br>      |
|  58|[0x800033d0]<br>0xFFFFFFFFFFFFF800|- rs1_val == 562949953421312<br>                                                                                                                                        |[0x800006c8]:addiw a1, a0, 2048<br> [0x800006cc]:sd a1, 280(sp)<br>    |
|  59|[0x800033d8]<br>0x0000000000000040|- rs1_val == 1125899906842624<br>                                                                                                                                       |[0x800006d8]:addiw a1, a0, 64<br> [0x800006dc]:sd a1, 288(sp)<br>      |
|  60|[0x800033e0]<br>0xFFFFFFFFFFFFFC00|- rs1_val == 2251799813685248<br>                                                                                                                                       |[0x800006e8]:addiw a1, a0, 3072<br> [0x800006ec]:sd a1, 296(sp)<br>    |
|  61|[0x800033e8]<br>0x0000000000000006|- rs1_val == 4503599627370496<br>                                                                                                                                       |[0x800006f8]:addiw a1, a0, 6<br> [0x800006fc]:sd a1, 304(sp)<br>       |
|  62|[0x800033f0]<br>0x0000000000000555|- imm_val == 1365<br> - rs1_val == 9007199254740992<br>                                                                                                                 |[0x80000708]:addiw a1, a0, 1365<br> [0x8000070c]:sd a1, 312(sp)<br>    |
|  63|[0x800033f8]<br>0x00000000000003FF|- rs1_val == 18014398509481984<br>                                                                                                                                      |[0x80000718]:addiw a1, a0, 1023<br> [0x8000071c]:sd a1, 320(sp)<br>    |
|  64|[0x80003400]<br>0x0000000000000002|- rs1_val == 36028797018963968<br>                                                                                                                                      |[0x80000728]:addiw a1, a0, 2<br> [0x8000072c]:sd a1, 328(sp)<br>       |
|  65|[0x80003408]<br>0xFFFFFFFFFFFFFC00|- rs1_val == 72057594037927936<br>                                                                                                                                      |[0x80000738]:addiw a1, a0, 3072<br> [0x8000073c]:sd a1, 336(sp)<br>    |
|  66|[0x80003410]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == 144115188075855872<br>                                                                                                                                     |[0x80000748]:addiw a1, a0, 4090<br> [0x8000074c]:sd a1, 344(sp)<br>    |
|  67|[0x80003418]<br>0x00000000000003FF|- rs1_val == 288230376151711744<br>                                                                                                                                     |[0x80000758]:addiw a1, a0, 1023<br> [0x8000075c]:sd a1, 352(sp)<br>    |
|  68|[0x80003420]<br>0x0000000000000200|- rs1_val == 576460752303423488<br>                                                                                                                                     |[0x80000768]:addiw a1, a0, 512<br> [0x8000076c]:sd a1, 360(sp)<br>     |
|  69|[0x80003428]<br>0x0000000000000200|- rs1_val == 1152921504606846976<br>                                                                                                                                    |[0x80000778]:addiw a1, a0, 512<br> [0x8000077c]:sd a1, 368(sp)<br>     |
|  70|[0x80003430]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == 2305843009213693952<br>                                                                                                                                    |[0x80000788]:addiw a1, a0, 4091<br> [0x8000078c]:sd a1, 376(sp)<br>    |
|  71|[0x80003438]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == 4611686018427387904<br>                                                                                                                                    |[0x80000798]:addiw a1, a0, 4063<br> [0x8000079c]:sd a1, 384(sp)<br>    |
|  72|[0x80003440]<br>0x000000000000001F|- rs1_val == -2251799813685249<br>                                                                                                                                      |[0x800007ac]:addiw a1, a0, 32<br> [0x800007b0]:sd a1, 392(sp)<br>      |
|  73|[0x80003448]<br>0x0000000000000007|- rs1_val == -9007199254740993<br>                                                                                                                                      |[0x800007c0]:addiw a1, a0, 8<br> [0x800007c4]:sd a1, 400(sp)<br>       |
|  74|[0x80003450]<br>0x0000000000000007|- rs1_val == -18014398509481985<br>                                                                                                                                     |[0x800007d4]:addiw a1, a0, 8<br> [0x800007d8]:sd a1, 408(sp)<br>       |
|  75|[0x80003458]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -36028797018963969<br>                                                                                                                                     |[0x800007e8]:addiw a1, a0, 4093<br> [0x800007ec]:sd a1, 416(sp)<br>    |
|  76|[0x80003460]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -144115188075855873<br>                                                                                                                                    |[0x800007fc]:addiw a1, a0, 4089<br> [0x80000800]:sd a1, 424(sp)<br>    |
|  77|[0x80003468]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -288230376151711745<br>                                                                                                                                    |[0x80000810]:addiw a1, a0, 4092<br> [0x80000814]:sd a1, 432(sp)<br>    |
|  78|[0x80003470]<br>0x000000000000001F|- rs1_val == -576460752303423489<br>                                                                                                                                    |[0x80000824]:addiw a1, a0, 32<br> [0x80000828]:sd a1, 440(sp)<br>      |
|  79|[0x80003478]<br>0xFFFFFFFFFFFFFEFE|- rs1_val == -1152921504606846977<br>                                                                                                                                   |[0x80000838]:addiw a1, a0, 3839<br> [0x8000083c]:sd a1, 448(sp)<br>    |
|  80|[0x80003480]<br>0x00000000000001FF|- rs1_val == -2305843009213693953<br>                                                                                                                                   |[0x8000084c]:addiw a1, a0, 512<br> [0x80000850]:sd a1, 456(sp)<br>     |
|  81|[0x80003488]<br>0x0000000000000002|- rs1_val == -4611686018427387905<br>                                                                                                                                   |[0x80000860]:addiw a1, a0, 3<br> [0x80000864]:sd a1, 464(sp)<br>       |
|  82|[0x80003490]<br>0x0000000055555154|- rs1_val == 6148914691236517205<br>                                                                                                                                    |[0x80000888]:addiw a1, a0, 3071<br> [0x8000088c]:sd a1, 472(sp)<br>    |
|  83|[0x80003498]<br>0xFFFFFFFFAAAAAAB0|- rs1_val == -6148914691236517206<br>                                                                                                                                   |[0x800008b0]:addiw a1, a0, 6<br> [0x800008b4]:sd a1, 480(sp)<br>       |
|  84|[0x800034a0]<br>0x0000000000000FEF|- imm_val == -17<br>                                                                                                                                                    |[0x800008bc]:addiw a1, a0, 4079<br> [0x800008c0]:sd a1, 488(sp)<br>    |
|  85|[0x800034a8]<br>0xFFFFFFFFFFFBFDFE|- imm_val == -513<br> - rs1_val == -262145<br>                                                                                                                          |[0x800008cc]:addiw a1, a0, 3583<br> [0x800008d0]:sd a1, 496(sp)<br>    |
|  86|[0x800034b0]<br>0xFFFFFFFFFFFFF7FE|- rs1_val == -2<br>                                                                                                                                                     |[0x800008d8]:addiw a1, a0, 2048<br> [0x800008dc]:sd a1, 504(sp)<br>    |
|  87|[0x800034b8]<br>0xFFFFFFFFFFFFFEFC|- rs1_val == -3<br>                                                                                                                                                     |[0x800008e4]:addiw a1, a0, 3839<br> [0x800008e8]:sd a1, 512(sp)<br>    |
|  88|[0x800034c0]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -5<br>                                                                                                                                                     |[0x800008f0]:addiw a1, a0, 4093<br> [0x800008f4]:sd a1, 520(sp)<br>    |
|  89|[0x800034c8]<br>0xFFFFFFFFFFFFFFF5|- rs1_val == -9<br>                                                                                                                                                     |[0x800008fc]:addiw a1, a0, 4094<br> [0x80000900]:sd a1, 528(sp)<br>    |
|  90|[0x800034d0]<br>0x00000000000003EE|- rs1_val == -17<br>                                                                                                                                                    |[0x80000908]:addiw a1, a0, 1023<br> [0x8000090c]:sd a1, 536(sp)<br>    |
|  91|[0x800034d8]<br>0xFFFFFFFFFFFFFFDA|- rs1_val == -33<br>                                                                                                                                                    |[0x80000914]:addiw a1, a0, 4091<br> [0x80000918]:sd a1, 544(sp)<br>    |
|  92|[0x800034e0]<br>0xFFFFFFFFFFFFFA69|- rs1_val == -65<br>                                                                                                                                                    |[0x80000920]:addiw a1, a0, 2730<br> [0x80000924]:sd a1, 552(sp)<br>    |
|  93|[0x800034e8]<br>0xFFFFFFFFFFFFFB7F|- rs1_val == -129<br>                                                                                                                                                   |[0x8000092c]:addiw a1, a0, 3072<br> [0x80000930]:sd a1, 560(sp)<br>    |
|  94|[0x800034f0]<br>0xFFFFFFFFFFFFFE03|- rs1_val == -513<br>                                                                                                                                                   |[0x80000938]:addiw a1, a0, 4<br> [0x8000093c]:sd a1, 568(sp)<br>       |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFFFBF7|- rs1_val == -1025<br>                                                                                                                                                  |[0x80000944]:addiw a1, a0, 4088<br> [0x80000948]:sd a1, 576(sp)<br>    |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFF2A9|- rs1_val == -2049<br>                                                                                                                                                  |[0x80000954]:addiw a1, a0, 2730<br> [0x80000958]:sd a1, 584(sp)<br>    |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFEFFC|- rs1_val == -4097<br>                                                                                                                                                  |[0x80000964]:addiw a1, a0, 4093<br> [0x80000968]:sd a1, 592(sp)<br>    |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFDFDE|- rs1_val == -8193<br>                                                                                                                                                  |[0x80000974]:addiw a1, a0, 4063<br> [0x80000978]:sd a1, 600(sp)<br>    |
|  99|[0x80003518]<br>0xFFFFFFFFFFFFC3FF|- rs1_val == -16385<br>                                                                                                                                                 |[0x80000984]:addiw a1, a0, 1024<br> [0x80000988]:sd a1, 608(sp)<br>    |
| 100|[0x80003520]<br>0xFFFFFFFFFFFF807F|- rs1_val == -32769<br>                                                                                                                                                 |[0x80000994]:addiw a1, a0, 128<br> [0x80000998]:sd a1, 616(sp)<br>     |
| 101|[0x80003528]<br>0xFFFFFFFFFFFF0008|- rs1_val == -65537<br>                                                                                                                                                 |[0x800009a4]:addiw a1, a0, 9<br> [0x800009a8]:sd a1, 624(sp)<br>       |
| 102|[0x80003530]<br>0xFFFFFFFFFFFE0006|- rs1_val == -131073<br>                                                                                                                                                |[0x800009b4]:addiw a1, a0, 7<br> [0x800009b8]:sd a1, 632(sp)<br>       |
| 103|[0x80003538]<br>0xFFFFFFFFFFF800FF|- rs1_val == -524289<br>                                                                                                                                                |[0x800009c4]:addiw a1, a0, 256<br> [0x800009c8]:sd a1, 640(sp)<br>     |
| 104|[0x80003540]<br>0xFFFFFFFFFFF001FF|- rs1_val == -1048577<br>                                                                                                                                               |[0x800009d4]:addiw a1, a0, 512<br> [0x800009d8]:sd a1, 648(sp)<br>     |
| 105|[0x80003548]<br>0xFFFFFFFFFFDFFFF8|- rs1_val == -2097153<br>                                                                                                                                               |[0x800009e4]:addiw a1, a0, 4089<br> [0x800009e8]:sd a1, 656(sp)<br>    |
| 106|[0x80003550]<br>0xFFFFFFFFFFBFFDFE|- rs1_val == -4194305<br>                                                                                                                                               |[0x800009f4]:addiw a1, a0, 3583<br> [0x800009f8]:sd a1, 664(sp)<br>    |
| 107|[0x80003558]<br>0xFFFFFFFFFF80007F|- rs1_val == -8388609<br>                                                                                                                                               |[0x80000a04]:addiw a1, a0, 128<br> [0x80000a08]:sd a1, 672(sp)<br>     |
| 108|[0x80003560]<br>0xFFFFFFFFFF000000|- rs1_val == -16777217<br>                                                                                                                                              |[0x80000a14]:addiw a1, a0, 1<br> [0x80000a18]:sd a1, 680(sp)<br>       |
| 109|[0x80003568]<br>0xFFFFFFFFFDFFFFF8|- rs1_val == -33554433<br>                                                                                                                                              |[0x80000a24]:addiw a1, a0, 4089<br> [0x80000a28]:sd a1, 688(sp)<br>    |
| 110|[0x80003570]<br>0xFFFFFFFFFC00007F|- rs1_val == -67108865<br>                                                                                                                                              |[0x80000a34]:addiw a1, a0, 128<br> [0x80000a38]:sd a1, 696(sp)<br>     |
| 111|[0x80003578]<br>0xFFFFFFFFF8000004|- rs1_val == -134217729<br>                                                                                                                                             |[0x80000a44]:addiw a1, a0, 5<br> [0x80000a48]:sd a1, 704(sp)<br>       |
| 112|[0x80003580]<br>0xFFFFFFFFEFFFF7FF|- rs1_val == -268435457<br>                                                                                                                                             |[0x80000a54]:addiw a1, a0, 2048<br> [0x80000a58]:sd a1, 712(sp)<br>    |
| 113|[0x80003588]<br>0xFFFFFFFFDFFFFFEE|- rs1_val == -536870913<br>                                                                                                                                             |[0x80000a64]:addiw a1, a0, 4079<br> [0x80000a68]:sd a1, 720(sp)<br>    |
| 114|[0x80003590]<br>0xFFFFFFFFC0000002|- rs1_val == -1073741825<br>                                                                                                                                            |[0x80000a74]:addiw a1, a0, 3<br> [0x80000a78]:sd a1, 728(sp)<br>       |
| 115|[0x80003598]<br>0x000000007FFFFFFF|- rs1_val == -2147483649<br>                                                                                                                                            |[0x80000a88]:addiw a1, a0, 0<br> [0x80000a8c]:sd a1, 736(sp)<br>       |
| 116|[0x800035a0]<br>0x0000000000000004|- rs1_val == -4294967297<br>                                                                                                                                            |[0x80000a9c]:addiw a1, a0, 5<br> [0x80000aa0]:sd a1, 744(sp)<br>       |
| 117|[0x800035a8]<br>0x0000000000000004|- rs1_val == -8589934593<br>                                                                                                                                            |[0x80000ab0]:addiw a1, a0, 5<br> [0x80000ab4]:sd a1, 752(sp)<br>       |
| 118|[0x800035b0]<br>0xFFFFFFFFFFFFFF7E|- rs1_val == -17179869185<br>                                                                                                                                           |[0x80000ac4]:addiw a1, a0, 3967<br> [0x80000ac8]:sd a1, 760(sp)<br>    |
| 119|[0x800035b8]<br>0x00000000000000FF|- rs1_val == -34359738369<br>                                                                                                                                           |[0x80000ad8]:addiw a1, a0, 256<br> [0x80000adc]:sd a1, 768(sp)<br>     |
| 120|[0x800035c0]<br>0x0000000000000008|- rs1_val == -68719476737<br>                                                                                                                                           |[0x80000aec]:addiw a1, a0, 9<br> [0x80000af0]:sd a1, 776(sp)<br>       |
| 121|[0x800035c8]<br>0x0000000000000001|- rs1_val == -137438953473<br>                                                                                                                                          |[0x80000b00]:addiw a1, a0, 2<br> [0x80000b04]:sd a1, 784(sp)<br>       |
| 122|[0x800035d0]<br>0x0000000000000005|- rs1_val == -274877906945<br>                                                                                                                                          |[0x80000b14]:addiw a1, a0, 6<br> [0x80000b18]:sd a1, 792(sp)<br>       |
| 123|[0x800035d8]<br>0x00000000000000FF|- rs1_val == -549755813889<br>                                                                                                                                          |[0x80000b28]:addiw a1, a0, 256<br> [0x80000b2c]:sd a1, 800(sp)<br>     |
| 124|[0x800035e0]<br>0xFFFFFFFFFFFFFDFE|- rs1_val == -2199023255553<br>                                                                                                                                         |[0x80000b3c]:addiw a1, a0, 3583<br> [0x80000b40]:sd a1, 808(sp)<br>    |
| 125|[0x800035e8]<br>0xFFFFFFFFFFFFFEFE|- rs1_val == -4398046511105<br>                                                                                                                                         |[0x80000b50]:addiw a1, a0, 3839<br> [0x80000b54]:sd a1, 816(sp)<br>    |
| 126|[0x800035f0]<br>0xFFFFFFFFFFFFFAA9|- rs1_val == -8796093022209<br>                                                                                                                                         |[0x80000b64]:addiw a1, a0, 2730<br> [0x80000b68]:sd a1, 824(sp)<br>    |
| 127|[0x800035f8]<br>0x000000000000003F|- rs1_val == -17592186044417<br>                                                                                                                                        |[0x80000b78]:addiw a1, a0, 64<br> [0x80000b7c]:sd a1, 832(sp)<br>      |
| 128|[0x80003600]<br>0x0000000000000001|- rs1_val == -35184372088833<br>                                                                                                                                        |[0x80000b8c]:addiw a1, a0, 2<br> [0x80000b90]:sd a1, 840(sp)<br>       |
| 129|[0x80003608]<br>0x000000000000000F|- rs1_val == -70368744177665<br>                                                                                                                                        |[0x80000ba0]:addiw a1, a0, 16<br> [0x80000ba4]:sd a1, 848(sp)<br>      |
| 130|[0x80003610]<br>0x0000000000000006|- rs1_val == -140737488355329<br>                                                                                                                                       |[0x80000bb4]:addiw a1, a0, 7<br> [0x80000bb8]:sd a1, 856(sp)<br>       |
| 131|[0x80003618]<br>0x0000000000000554|- rs1_val == -281474976710657<br>                                                                                                                                       |[0x80000bc8]:addiw a1, a0, 1365<br> [0x80000bcc]:sd a1, 864(sp)<br>    |
| 132|[0x80003620]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -562949953421313<br>                                                                                                                                       |[0x80000bdc]:addiw a1, a0, 2048<br> [0x80000be0]:sd a1, 872(sp)<br>    |
| 133|[0x80003628]<br>0xFFFFFFFFFFFFFFF5|- rs1_val == -1125899906842625<br>                                                                                                                                      |[0x80000bf0]:addiw a1, a0, 4086<br> [0x80000bf4]:sd a1, 880(sp)<br>    |
| 134|[0x80003638]<br>0x00000000003FFFFC|- rs1_val == 4194304<br>                                                                                                                                                |[0x80000c0c]:addiw a1, a0, 4092<br> [0x80000c10]:sd a1, 896(sp)<br>    |
