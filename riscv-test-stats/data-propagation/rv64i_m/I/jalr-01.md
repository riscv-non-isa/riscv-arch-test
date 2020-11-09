
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ba0')]      |
| SIG_REGION                | [('0x80003208', '0x80003308', '32 dwords')]      |
| COV_LABELS                | jalr      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/jalr-01.S/jalr-01.S    |
| Total Number of coverpoints| 94     |
| Total Coverpoints Hit     | 94      |
| Total Signature Updates   | 32      |
| STAT1                     | 32      |
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

|s.no|            signature             |                                               coverpoints                                               |                                                                                                                                     code                                                                                                                                     |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000017|- opcode : jalr<br> - rs1 : x28<br> - rd : x28<br> - rs1 == rd<br> - imm_val > 0<br> - imm_val == 16<br> |[0x800003a8]:jalr t3, t3, 16<br> [0x800003bc]:xori t3, t3, 3<br> [0x800003c0]:jal zero, 4<br> [0x800003c4]:auipc a5, 0<br> [0x800003c8]:addi a5, a5, 4052<br> [0x800003cc]:andi a5, a5, 4092<br> [0x800003d0]:sub t3, t3, a5<br> [0x800003d4]:sd t3, 0(a3)<br>                |
|   2|[0x80003210]<br>0x0000000000000017|- rs1 : x11<br> - rd : x4<br> - rs1 != rd<br> - imm_val < 0<br>                                          |[0x800003e8]:jalr tp, a1, 3072<br> [0x800003fc]:xori tp, tp, 3<br> [0x80000400]:jal zero, 4<br> [0x80000404]:auipc a5, 0<br> [0x80000408]:addi a5, a5, 4052<br> [0x8000040c]:andi a5, a5, 4092<br> [0x80000410]:sub tp, tp, a5<br> [0x80000414]:sd tp, 8(a3)<br>              |
|   3|[0x80003218]<br>0x0000000000000017|- rs1 : x23<br> - rd : x11<br> - imm_val == 1<br>                                                        |[0x80000428]:jalr a1, s7, 1<br> [0x8000043c]:xori a1, a1, 3<br> [0x80000440]:jal zero, 4<br> [0x80000444]:auipc a5, 0<br> [0x80000448]:addi a5, a5, 4052<br> [0x8000044c]:andi a5, a5, 4092<br> [0x80000450]:sub a1, a1, a5<br> [0x80000454]:sd a1, 16(a3)<br>                |
|   4|[0x80003220]<br>0x0000000000000017|- rs1 : x18<br> - rd : x7<br> - imm_val == 2<br>                                                         |[0x80000468]:jalr t2, s2, 2<br> [0x8000047c]:xori t2, t2, 3<br> [0x80000480]:jal zero, 4<br> [0x80000484]:auipc a5, 0<br> [0x80000488]:addi a5, a5, 4052<br> [0x8000048c]:andi a5, a5, 4092<br> [0x80000490]:sub t2, t2, a5<br> [0x80000494]:sd t2, 24(a3)<br>                |
|   5|[0x80003228]<br>0x0000000000000017|- rs1 : x27<br> - rd : x16<br> - imm_val == 4<br>                                                        |[0x800004a8]:jalr a6, s11, 4<br> [0x800004bc]:xori a6, a6, 3<br> [0x800004c0]:jal zero, 4<br> [0x800004c4]:auipc a5, 0<br> [0x800004c8]:addi a5, a5, 4052<br> [0x800004cc]:andi a5, a5, 4092<br> [0x800004d0]:sub a6, a6, a5<br> [0x800004d4]:sd a6, 32(a3)<br>               |
|   6|[0x80003230]<br>0x0000000000000017|- rs1 : x8<br> - rd : x29<br> - imm_val == 8<br>                                                         |[0x800004e8]:jalr t4, fp, 8<br> [0x800004fc]:xori t4, t4, 3<br> [0x80000500]:jal zero, 4<br> [0x80000504]:auipc a5, 0<br> [0x80000508]:addi a5, a5, 4052<br> [0x8000050c]:andi a5, a5, 4092<br> [0x80000510]:sub t4, t4, a5<br> [0x80000514]:sd t4, 40(a3)<br>                |
|   7|[0x80003238]<br>0x0000000000000017|- rs1 : x5<br> - rd : x30<br> - imm_val == 32<br>                                                        |[0x80000528]:jalr t5, t0, 32<br> [0x8000053c]:xori t5, t5, 3<br> [0x80000540]:jal zero, 4<br> [0x80000544]:auipc a5, 0<br> [0x80000548]:addi a5, a5, 4052<br> [0x8000054c]:andi a5, a5, 4092<br> [0x80000550]:sub t5, t5, a5<br> [0x80000554]:sd t5, 48(a3)<br>               |
|   8|[0x80003240]<br>0x0000000000000017|- rs1 : x24<br> - rd : x26<br> - imm_val == 64<br>                                                       |[0x80000568]:jalr s10, s8, 64<br> [0x8000057c]:xori s10, s10, 3<br> [0x80000580]:jal zero, 4<br> [0x80000584]:auipc a5, 0<br> [0x80000588]:addi a5, a5, 4052<br> [0x8000058c]:andi a5, a5, 4092<br> [0x80000590]:sub s10, s10, a5<br> [0x80000594]:sd s10, 56(a3)<br>         |
|   9|[0x80003248]<br>0x0000000000000017|- rs1 : x4<br> - rd : x12<br> - imm_val == 128<br>                                                       |[0x800005a8]:jalr a2, tp, 128<br> [0x800005bc]:xori a2, a2, 3<br> [0x800005c0]:jal zero, 4<br> [0x800005c4]:auipc a5, 0<br> [0x800005c8]:addi a5, a5, 4052<br> [0x800005cc]:andi a5, a5, 4092<br> [0x800005d0]:sub a2, a2, a5<br> [0x800005d4]:sd a2, 64(a3)<br>              |
|  10|[0x80003250]<br>0x0000000000000017|- rs1 : x2<br> - rd : x6<br> - imm_val == 256<br>                                                        |[0x800005e8]:jalr t1, sp, 256<br> [0x800005fc]:xori t1, t1, 3<br> [0x80000600]:jal zero, 4<br> [0x80000604]:auipc a5, 0<br> [0x80000608]:addi a5, a5, 4052<br> [0x8000060c]:andi a5, a5, 4092<br> [0x80000610]:sub t1, t1, a5<br> [0x80000614]:sd t1, 72(a3)<br>              |
|  11|[0x80003258]<br>0x0000000000000017|- rs1 : x29<br> - rd : x21<br> - imm_val == 512<br>                                                      |[0x80000628]:jalr s5, t4, 512<br> [0x8000063c]:xori s5, s5, 3<br> [0x80000640]:jal zero, 4<br> [0x80000644]:auipc a5, 0<br> [0x80000648]:addi a5, a5, 4052<br> [0x8000064c]:andi a5, a5, 4092<br> [0x80000650]:sub s5, s5, a5<br> [0x80000654]:sd s5, 80(a3)<br>              |
|  12|[0x80003260]<br>0x0000000000000017|- rs1 : x20<br> - rd : x3<br> - imm_val == 1024<br>                                                      |[0x80000668]:jalr gp, s4, 1024<br> [0x8000067c]:xori gp, gp, 3<br> [0x80000680]:jal zero, 4<br> [0x80000684]:auipc a5, 0<br> [0x80000688]:addi a5, a5, 4052<br> [0x8000068c]:andi a5, a5, 4092<br> [0x80000690]:sub gp, gp, a5<br> [0x80000694]:sd gp, 88(a3)<br>             |
|  13|[0x80003268]<br>0x0000000000000017|- rs1 : x22<br> - rd : x5<br> - imm_val == -2048<br>                                                     |[0x800006a8]:jalr t0, s6, 2048<br> [0x800006bc]:xori t0, t0, 3<br> [0x800006c0]:jal zero, 4<br> [0x800006c4]:auipc a5, 0<br> [0x800006c8]:addi a5, a5, 4052<br> [0x800006cc]:andi a5, a5, 4092<br> [0x800006d0]:sub t0, t0, a5<br> [0x800006d4]:sd t0, 96(a3)<br>             |
|  14|[0x80003270]<br>0x0000000000000017|- rs1 : x21<br> - rd : x19<br> - imm_val == -2<br>                                                       |[0x800006e8]:jalr s3, s5, 4094<br> [0x800006fc]:xori s3, s3, 3<br> [0x80000700]:jal zero, 4<br> [0x80000704]:auipc a5, 0<br> [0x80000708]:addi a5, a5, 4052<br> [0x8000070c]:andi a5, a5, 4092<br> [0x80000710]:sub s3, s3, a5<br> [0x80000714]:sd s3, 104(a3)<br>            |
|  15|[0x80003278]<br>0x0000000000000017|- rs1 : x3<br> - rd : x9<br> - imm_val == -3<br>                                                         |[0x80000728]:jalr s1, gp, 4093<br> [0x8000073c]:xori s1, s1, 3<br> [0x80000740]:jal zero, 4<br> [0x80000744]:auipc a5, 0<br> [0x80000748]:addi a5, a5, 4052<br> [0x8000074c]:andi a5, a5, 4092<br> [0x80000750]:sub s1, s1, a5<br> [0x80000754]:sd s1, 112(a3)<br>            |
|  16|[0x80003280]<br>0x0000000000000017|- rs1 : x17<br> - rd : x2<br> - imm_val == -5<br>                                                        |[0x80000768]:jalr sp, a7, 4091<br> [0x8000077c]:xori sp, sp, 3<br> [0x80000780]:jal zero, 4<br> [0x80000784]:auipc a5, 0<br> [0x80000788]:addi a5, a5, 4052<br> [0x8000078c]:andi a5, a5, 4092<br> [0x80000790]:sub sp, sp, a5<br> [0x80000794]:sd sp, 120(a3)<br>            |
|  17|[0x80003288]<br>0x0000000000000017|- rs1 : x9<br> - rd : x27<br> - imm_val == -9<br>                                                        |[0x800007a8]:jalr s11, s1, 4087<br> [0x800007bc]:xori s11, s11, 3<br> [0x800007c0]:jal zero, 4<br> [0x800007c4]:auipc a5, 0<br> [0x800007c8]:addi a5, a5, 4052<br> [0x800007cc]:andi a5, a5, 4092<br> [0x800007d0]:sub s11, s11, a5<br> [0x800007d4]:sd s11, 128(a3)<br>      |
|  18|[0x80003290]<br>0x0000000000000017|- rs1 : x16<br> - rd : x22<br> - imm_val == -17<br>                                                      |[0x800007e8]:jalr s6, a6, 4079<br> [0x800007fc]:xori s6, s6, 3<br> [0x80000800]:jal zero, 4<br> [0x80000804]:auipc a5, 0<br> [0x80000808]:addi a5, a5, 4052<br> [0x8000080c]:andi a5, a5, 4092<br> [0x80000810]:sub s6, s6, a5<br> [0x80000814]:sd s6, 136(a3)<br>            |
|  19|[0x80003298]<br>0x0000000000000017|- rs1 : x10<br> - rd : x14<br> - imm_val == -33<br>                                                      |[0x80000828]:jalr a4, a0, 4063<br> [0x8000083c]:xori a4, a4, 3<br> [0x80000840]:jal zero, 4<br> [0x80000844]:auipc a5, 0<br> [0x80000848]:addi a5, a5, 4052<br> [0x8000084c]:andi a5, a5, 4092<br> [0x80000850]:sub a4, a4, a5<br> [0x80000854]:sd a4, 144(a3)<br>            |
|  20|[0x800032a0]<br>0x0000000000000017|- rs1 : x1<br> - rd : x18<br> - imm_val == -65<br>                                                       |[0x80000868]:jalr s2, ra, 4031<br> [0x8000087c]:xori s2, s2, 3<br> [0x80000880]:jal zero, 4<br> [0x80000884]:auipc a5, 0<br> [0x80000888]:addi a5, a5, 4052<br> [0x8000088c]:andi a5, a5, 4092<br> [0x80000890]:sub s2, s2, a5<br> [0x80000894]:sd s2, 152(a3)<br>            |
|  21|[0x800032a8]<br>0x0000000000000017|- rs1 : x7<br> - rd : x31<br> - imm_val == -129<br>                                                      |[0x800008a8]:jalr t6, t2, 3967<br> [0x800008bc]:xori t6, t6, 3<br> [0x800008c0]:jal zero, 4<br> [0x800008c4]:auipc gp, 0<br> [0x800008c8]:addi gp, gp, 4052<br> [0x800008cc]:andi gp, gp, 4092<br> [0x800008d0]:sub t6, t6, gp<br> [0x800008d4]:sd t6, 160(a3)<br>            |
|  22|[0x800032b0]<br>0x0000000000000017|- rs1 : x14<br> - rd : x23<br> - imm_val == -257<br>                                                     |[0x800008f0]:jalr s7, a4, 3839<br> [0x80000904]:xori s7, s7, 3<br> [0x80000908]:jal zero, 4<br> [0x8000090c]:auipc gp, 0<br> [0x80000910]:addi gp, gp, 4052<br> [0x80000914]:andi gp, gp, 4092<br> [0x80000918]:sub s7, s7, gp<br> [0x8000091c]:sd s7, 0(sp)<br>              |
|  23|[0x800032b8]<br>0x0000000000000017|- rs1 : x19<br> - rd : x25<br> - imm_val == -513<br>                                                     |[0x80000930]:jalr s9, s3, 3583<br> [0x80000944]:xori s9, s9, 3<br> [0x80000948]:jal zero, 4<br> [0x8000094c]:auipc gp, 0<br> [0x80000950]:addi gp, gp, 4052<br> [0x80000954]:andi gp, gp, 4092<br> [0x80000958]:sub s9, s9, gp<br> [0x8000095c]:sd s9, 8(sp)<br>              |
|  24|[0x800032c0]<br>0x0000000000000017|- rs1 : x6<br> - rd : x20<br> - imm_val == -1025<br>                                                     |[0x80000970]:jalr s4, t1, 3071<br> [0x80000984]:xori s4, s4, 3<br> [0x80000988]:jal zero, 4<br> [0x8000098c]:auipc gp, 0<br> [0x80000990]:addi gp, gp, 4052<br> [0x80000994]:andi gp, gp, 4092<br> [0x80000998]:sub s4, s4, gp<br> [0x8000099c]:sd s4, 16(sp)<br>             |
|  25|[0x800032c8]<br>0x0000000000000017|- rs1 : x30<br> - rd : x15<br> - imm_val == 2047<br>                                                     |[0x800009b0]:jalr a5, t5, 2047<br> [0x800009c4]:xori a5, a5, 3<br> [0x800009c8]:jal zero, 4<br> [0x800009cc]:auipc gp, 0<br> [0x800009d0]:addi gp, gp, 4052<br> [0x800009d4]:andi gp, gp, 4092<br> [0x800009d8]:sub a5, a5, gp<br> [0x800009dc]:sd a5, 24(sp)<br>             |
|  26|[0x800032d0]<br>0x0000000000000017|- rs1 : x15<br> - rd : x13<br> - imm_val == 1365<br>                                                     |[0x800009f0]:jalr a3, a5, 1365<br> [0x80000a04]:xori a3, a3, 3<br> [0x80000a08]:jal zero, 4<br> [0x80000a0c]:auipc gp, 0<br> [0x80000a10]:addi gp, gp, 4052<br> [0x80000a14]:andi gp, gp, 4092<br> [0x80000a18]:sub a3, a3, gp<br> [0x80000a1c]:sd a3, 32(sp)<br>             |
|  27|[0x800032d8]<br>0x0000000000000017|- rs1 : x26<br> - rd : x24<br> - imm_val == -1366<br>                                                    |[0x80000a30]:jalr s8, s10, 2730<br> [0x80000a44]:xori s8, s8, 3<br> [0x80000a48]:jal zero, 4<br> [0x80000a4c]:auipc gp, 0<br> [0x80000a50]:addi gp, gp, 4052<br> [0x80000a54]:andi gp, gp, 4092<br> [0x80000a58]:sub s8, s8, gp<br> [0x80000a5c]:sd s8, 40(sp)<br>            |
|  28|[0x800032e0]<br>0x0000000000000000|- rs1 : x25<br> - rd : x0<br>                                                                            |[0x80000a70]:jalr zero, s9, 2048<br> [0x80000a84]:xori zero, zero, 3<br> [0x80000a88]:jal zero, 4<br> [0x80000a8c]:auipc gp, 0<br> [0x80000a90]:addi gp, gp, 4052<br> [0x80000a94]:andi gp, gp, 4092<br> [0x80000a98]:sub zero, zero, gp<br> [0x80000a9c]:sd zero, 48(sp)<br> |
|  29|[0x800032e8]<br>0x0000000000000017|- rs1 : x13<br> - rd : x17<br>                                                                           |[0x80000ab0]:jalr a7, a3, 2048<br> [0x80000ac4]:xori a7, a7, 3<br> [0x80000ac8]:jal zero, 4<br> [0x80000acc]:auipc gp, 0<br> [0x80000ad0]:addi gp, gp, 4052<br> [0x80000ad4]:andi gp, gp, 4092<br> [0x80000ad8]:sub a7, a7, gp<br> [0x80000adc]:sd a7, 56(sp)<br>             |
|  30|[0x800032f0]<br>0x0000000000000017|- rs1 : x31<br> - rd : x8<br>                                                                            |[0x80000af0]:jalr fp, t6, 2048<br> [0x80000b04]:xori fp, fp, 3<br> [0x80000b08]:jal zero, 4<br> [0x80000b0c]:auipc gp, 0<br> [0x80000b10]:addi gp, gp, 4052<br> [0x80000b14]:andi gp, gp, 4092<br> [0x80000b18]:sub fp, fp, gp<br> [0x80000b1c]:sd fp, 64(sp)<br>             |
|  31|[0x800032f8]<br>0x0000000000000017|- rs1 : x12<br> - rd : x10<br>                                                                           |[0x80000b30]:jalr a0, a2, 2048<br> [0x80000b44]:xori a0, a0, 3<br> [0x80000b48]:jal zero, 4<br> [0x80000b4c]:auipc gp, 0<br> [0x80000b50]:addi gp, gp, 4052<br> [0x80000b54]:andi gp, gp, 4092<br> [0x80000b58]:sub a0, a0, gp<br> [0x80000b5c]:sd a0, 72(sp)<br>             |
|  32|[0x80003300]<br>0x0000000000000017|- rd : x1<br>                                                                                            |[0x80000b70]:jalr ra, s9, 2048<br> [0x80000b84]:xori ra, ra, 3<br> [0x80000b88]:jal zero, 4<br> [0x80000b8c]:auipc gp, 0<br> [0x80000b90]:addi gp, gp, 4052<br> [0x80000b94]:andi gp, gp, 4092<br> [0x80000b98]:sub ra, ra, gp<br> [0x80000b9c]:sd ra, 80(sp)<br>             |
