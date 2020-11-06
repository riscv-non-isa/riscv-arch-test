
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000be0')]      |
| SIG_REGION                | [('0x80003208', '0x80003310', '33 dwords')]      |
| COV_LABELS                | jalr      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/jalr-01.S/jalr-01.S    |
| Total Number of coverpoints| 94     |
| Total Coverpoints Hit     | 94      |
| Total Signature Updates   | 33      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bb0]:jalr a1, a0, 1024
      [0x80000bc4]:xori a1, a1, 3
      [0x80000bc8]:jal zero, 4
      [0x80000bcc]:auipc t1, 0
      [0x80000bd0]:addi t1, t1, 4052
      [0x80000bd4]:andi t1, t1, 4092
      [0x80000bd8]:sub a1, a1, t1
      [0x80000bdc]:sd a1, 64(tp)
 -- Signature Address: 0x80003308 Data: 0x0000000000000017
 -- Redundant Coverpoints hit by the op
      - opcode : jalr
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val > 0
      - imm_val == 1024






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

|s.no|            signature             |                                    coverpoints                                    |                                                                                                                                     code                                                                                                                                     |
|---:|----------------------------------|-----------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000017|- opcode : jalr<br> - rs1 : x4<br> - rd : x4<br> - rs1 == rd<br> - imm_val > 0<br> |[0x800003a8]:jalr tp, tp, 5<br> [0x800003bc]:xori tp, tp, 3<br> [0x800003c0]:jal zero, 4<br> [0x800003c4]:auipc a3, 0<br> [0x800003c8]:addi a3, a3, 4052<br> [0x800003cc]:andi a3, a3, 4092<br> [0x800003d0]:sub tp, tp, a3<br> [0x800003d4]:sd tp, 0(sp)<br>                 |
|   2|[0x80003210]<br>0x0000000000000017|- rs1 : x25<br> - rd : x20<br> - rs1 != rd<br> - imm_val < 0<br>                   |[0x800003e8]:jalr s4, s9, 4089<br> [0x800003fc]:xori s4, s4, 3<br> [0x80000400]:jal zero, 4<br> [0x80000404]:auipc a3, 0<br> [0x80000408]:addi a3, a3, 4052<br> [0x8000040c]:andi a3, a3, 4092<br> [0x80000410]:sub s4, s4, a3<br> [0x80000414]:sd s4, 8(sp)<br>              |
|   3|[0x80003218]<br>0x0000000000000017|- rs1 : x18<br> - rd : x31<br> - imm_val == 1<br>                                  |[0x80000428]:jalr t6, s2, 1<br> [0x8000043c]:xori t6, t6, 3<br> [0x80000440]:jal zero, 4<br> [0x80000444]:auipc a3, 0<br> [0x80000448]:addi a3, a3, 4052<br> [0x8000044c]:andi a3, a3, 4092<br> [0x80000450]:sub t6, t6, a3<br> [0x80000454]:sd t6, 16(sp)<br>                |
|   4|[0x80003220]<br>0x0000000000000017|- rs1 : x21<br> - rd : x24<br> - imm_val == 2<br>                                  |[0x80000468]:jalr s8, s5, 2<br> [0x8000047c]:xori s8, s8, 3<br> [0x80000480]:jal zero, 4<br> [0x80000484]:auipc a3, 0<br> [0x80000488]:addi a3, a3, 4052<br> [0x8000048c]:andi a3, a3, 4092<br> [0x80000490]:sub s8, s8, a3<br> [0x80000494]:sd s8, 24(sp)<br>                |
|   5|[0x80003228]<br>0x0000000000000017|- rs1 : x27<br> - rd : x8<br> - imm_val == 4<br>                                   |[0x800004a8]:jalr fp, s11, 4<br> [0x800004bc]:xori fp, fp, 3<br> [0x800004c0]:jal zero, 4<br> [0x800004c4]:auipc a3, 0<br> [0x800004c8]:addi a3, a3, 4052<br> [0x800004cc]:andi a3, a3, 4092<br> [0x800004d0]:sub fp, fp, a3<br> [0x800004d4]:sd fp, 32(sp)<br>               |
|   6|[0x80003230]<br>0x0000000000000017|- rs1 : x7<br> - rd : x16<br> - imm_val == 8<br>                                   |[0x800004e8]:jalr a6, t2, 8<br> [0x800004fc]:xori a6, a6, 3<br> [0x80000500]:jal zero, 4<br> [0x80000504]:auipc a3, 0<br> [0x80000508]:addi a3, a3, 4052<br> [0x8000050c]:andi a3, a3, 4092<br> [0x80000510]:sub a6, a6, a3<br> [0x80000514]:sd a6, 40(sp)<br>                |
|   7|[0x80003238]<br>0x0000000000000017|- rs1 : x30<br> - rd : x12<br> - imm_val == 16<br>                                 |[0x80000528]:jalr a2, t5, 16<br> [0x8000053c]:xori a2, a2, 3<br> [0x80000540]:jal zero, 4<br> [0x80000544]:auipc a3, 0<br> [0x80000548]:addi a3, a3, 4052<br> [0x8000054c]:andi a3, a3, 4092<br> [0x80000550]:sub a2, a2, a3<br> [0x80000554]:sd a2, 48(sp)<br>               |
|   8|[0x80003240]<br>0x0000000000000017|- rs1 : x16<br> - rd : x5<br> - imm_val == 32<br>                                  |[0x80000568]:jalr t0, a6, 32<br> [0x8000057c]:xori t0, t0, 3<br> [0x80000580]:jal zero, 4<br> [0x80000584]:auipc a3, 0<br> [0x80000588]:addi a3, a3, 4052<br> [0x8000058c]:andi a3, a3, 4092<br> [0x80000590]:sub t0, t0, a3<br> [0x80000594]:sd t0, 56(sp)<br>               |
|   9|[0x80003248]<br>0x0000000000000017|- rs1 : x14<br> - rd : x17<br> - imm_val == 64<br>                                 |[0x800005a8]:jalr a7, a4, 64<br> [0x800005bc]:xori a7, a7, 3<br> [0x800005c0]:jal zero, 4<br> [0x800005c4]:auipc a3, 0<br> [0x800005c8]:addi a3, a3, 4052<br> [0x800005cc]:andi a3, a3, 4092<br> [0x800005d0]:sub a7, a7, a3<br> [0x800005d4]:sd a7, 64(sp)<br>               |
|  10|[0x80003250]<br>0x0000000000000017|- rs1 : x22<br> - rd : x21<br> - imm_val == 128<br>                                |[0x800005e8]:jalr s5, s6, 128<br> [0x800005fc]:xori s5, s5, 3<br> [0x80000600]:jal zero, 4<br> [0x80000604]:auipc a3, 0<br> [0x80000608]:addi a3, a3, 4052<br> [0x8000060c]:andi a3, a3, 4092<br> [0x80000610]:sub s5, s5, a3<br> [0x80000614]:sd s5, 72(sp)<br>              |
|  11|[0x80003258]<br>0x0000000000000017|- rs1 : x15<br> - rd : x11<br> - imm_val == 256<br>                                |[0x80000628]:jalr a1, a5, 256<br> [0x8000063c]:xori a1, a1, 3<br> [0x80000640]:jal zero, 4<br> [0x80000644]:auipc a3, 0<br> [0x80000648]:addi a3, a3, 4052<br> [0x8000064c]:andi a3, a3, 4092<br> [0x80000650]:sub a1, a1, a3<br> [0x80000654]:sd a1, 80(sp)<br>              |
|  12|[0x80003260]<br>0x0000000000000017|- rs1 : x3<br> - rd : x23<br> - imm_val == 512<br>                                 |[0x80000668]:jalr s7, gp, 512<br> [0x8000067c]:xori s7, s7, 3<br> [0x80000680]:jal zero, 4<br> [0x80000684]:auipc a3, 0<br> [0x80000688]:addi a3, a3, 4052<br> [0x8000068c]:andi a3, a3, 4092<br> [0x80000690]:sub s7, s7, a3<br> [0x80000694]:sd s7, 88(sp)<br>              |
|  13|[0x80003268]<br>0x0000000000000000|- rs1 : x6<br> - rd : x0<br> - imm_val == 1024<br>                                 |[0x800006a8]:jalr zero, t1, 1024<br> [0x800006bc]:xori zero, zero, 3<br> [0x800006c0]:jal zero, 4<br> [0x800006c4]:auipc a3, 0<br> [0x800006c8]:addi a3, a3, 4052<br> [0x800006cc]:andi a3, a3, 4092<br> [0x800006d0]:sub zero, zero, a3<br> [0x800006d4]:sd zero, 96(sp)<br> |
|  14|[0x80003270]<br>0x0000000000000017|- rs1 : x17<br> - rd : x6<br> - imm_val == -2048<br>                               |[0x800006e8]:jalr t1, a7, 2048<br> [0x800006fc]:xori t1, t1, 3<br> [0x80000700]:jal zero, 4<br> [0x80000704]:auipc a3, 0<br> [0x80000708]:addi a3, a3, 4052<br> [0x8000070c]:andi a3, a3, 4092<br> [0x80000710]:sub t1, t1, a3<br> [0x80000714]:sd t1, 104(sp)<br>            |
|  15|[0x80003278]<br>0x0000000000000017|- rs1 : x26<br> - rd : x1<br> - imm_val == -2<br>                                  |[0x80000728]:jalr ra, s10, 4094<br> [0x8000073c]:xori ra, ra, 3<br> [0x80000740]:jal zero, 4<br> [0x80000744]:auipc a3, 0<br> [0x80000748]:addi a3, a3, 4052<br> [0x8000074c]:andi a3, a3, 4092<br> [0x80000750]:sub ra, ra, a3<br> [0x80000754]:sd ra, 112(sp)<br>           |
|  16|[0x80003280]<br>0x0000000000000017|- rs1 : x11<br> - rd : x10<br> - imm_val == -3<br>                                 |[0x80000768]:jalr a0, a1, 4093<br> [0x8000077c]:xori a0, a0, 3<br> [0x80000780]:jal zero, 4<br> [0x80000784]:auipc a3, 0<br> [0x80000788]:addi a3, a3, 4052<br> [0x8000078c]:andi a3, a3, 4092<br> [0x80000790]:sub a0, a0, a3<br> [0x80000794]:sd a0, 120(sp)<br>            |
|  17|[0x80003288]<br>0x0000000000000017|- rs1 : x1<br> - rd : x15<br> - imm_val == -5<br>                                  |[0x800007a8]:jalr a5, ra, 4091<br> [0x800007bc]:xori a5, a5, 3<br> [0x800007c0]:jal zero, 4<br> [0x800007c4]:auipc a3, 0<br> [0x800007c8]:addi a3, a3, 4052<br> [0x800007cc]:andi a3, a3, 4092<br> [0x800007d0]:sub a5, a5, a3<br> [0x800007d4]:sd a5, 128(sp)<br>            |
|  18|[0x80003290]<br>0x0000000000000017|- rs1 : x10<br> - rd : x9<br> - imm_val == -9<br>                                  |[0x800007e8]:jalr s1, a0, 4087<br> [0x800007fc]:xori s1, s1, 3<br> [0x80000800]:jal zero, 4<br> [0x80000804]:auipc a3, 0<br> [0x80000808]:addi a3, a3, 4052<br> [0x8000080c]:andi a3, a3, 4092<br> [0x80000810]:sub s1, s1, a3<br> [0x80000814]:sd s1, 136(sp)<br>            |
|  19|[0x80003298]<br>0x0000000000000017|- rs1 : x19<br> - rd : x26<br> - imm_val == -17<br>                                |[0x80000828]:jalr s10, s3, 4079<br> [0x8000083c]:xori s10, s10, 3<br> [0x80000840]:jal zero, 4<br> [0x80000844]:auipc a3, 0<br> [0x80000848]:addi a3, a3, 4052<br> [0x8000084c]:andi a3, a3, 4092<br> [0x80000850]:sub s10, s10, a3<br> [0x80000854]:sd s10, 144(sp)<br>      |
|  20|[0x800032a0]<br>0x0000000000000017|- rs1 : x24<br> - rd : x25<br> - imm_val == -33<br>                                |[0x80000868]:jalr s9, s8, 4063<br> [0x8000087c]:xori s9, s9, 3<br> [0x80000880]:jal zero, 4<br> [0x80000884]:auipc t1, 0<br> [0x80000888]:addi t1, t1, 4052<br> [0x8000088c]:andi t1, t1, 4092<br> [0x80000890]:sub s9, s9, t1<br> [0x80000894]:sd s9, 152(sp)<br>            |
|  21|[0x800032a8]<br>0x0000000000000017|- rs1 : x9<br> - rd : x18<br> - imm_val == -65<br>                                 |[0x800008a8]:jalr s2, s1, 4031<br> [0x800008bc]:xori s2, s2, 3<br> [0x800008c0]:jal zero, 4<br> [0x800008c4]:auipc t1, 0<br> [0x800008c8]:addi t1, t1, 4052<br> [0x800008cc]:andi t1, t1, 4092<br> [0x800008d0]:sub s2, s2, t1<br> [0x800008d4]:sd s2, 160(sp)<br>            |
|  22|[0x800032b0]<br>0x0000000000000017|- rs1 : x20<br> - rd : x7<br> - imm_val == -129<br>                                |[0x800008e8]:jalr t2, s4, 3967<br> [0x800008fc]:xori t2, t2, 3<br> [0x80000900]:jal zero, 4<br> [0x80000904]:auipc t1, 0<br> [0x80000908]:addi t1, t1, 4052<br> [0x8000090c]:andi t1, t1, 4092<br> [0x80000910]:sub t2, t2, t1<br> [0x80000914]:sd t2, 168(sp)<br>            |
|  23|[0x800032b8]<br>0x0000000000000017|- rs1 : x23<br> - rd : x27<br> - imm_val == -257<br>                               |[0x80000928]:jalr s11, s7, 3839<br> [0x8000093c]:xori s11, s11, 3<br> [0x80000940]:jal zero, 4<br> [0x80000944]:auipc t1, 0<br> [0x80000948]:addi t1, t1, 4052<br> [0x8000094c]:andi t1, t1, 4092<br> [0x80000950]:sub s11, s11, t1<br> [0x80000954]:sd s11, 176(sp)<br>      |
|  24|[0x800032c0]<br>0x0000000000000017|- rs1 : x29<br> - rd : x30<br> - imm_val == -513<br>                               |[0x80000968]:jalr t5, t4, 3583<br> [0x8000097c]:xori t5, t5, 3<br> [0x80000980]:jal zero, 4<br> [0x80000984]:auipc t1, 0<br> [0x80000988]:addi t1, t1, 4052<br> [0x8000098c]:andi t1, t1, 4092<br> [0x80000990]:sub t5, t5, t1<br> [0x80000994]:sd t5, 184(sp)<br>            |
|  25|[0x800032c8]<br>0x0000000000000017|- rs1 : x8<br> - rd : x29<br> - imm_val == -1025<br>                               |[0x800009b0]:jalr t4, fp, 3071<br> [0x800009c4]:xori t4, t4, 3<br> [0x800009c8]:jal zero, 4<br> [0x800009cc]:auipc t1, 0<br> [0x800009d0]:addi t1, t1, 4052<br> [0x800009d4]:andi t1, t1, 4092<br> [0x800009d8]:sub t4, t4, t1<br> [0x800009dc]:sd t4, 0(tp)<br>              |
|  26|[0x800032d0]<br>0x0000000000000017|- rs1 : x5<br> - rd : x13<br> - imm_val == 2047<br>                                |[0x800009f0]:jalr a3, t0, 2047<br> [0x80000a04]:xori a3, a3, 3<br> [0x80000a08]:jal zero, 4<br> [0x80000a0c]:auipc t1, 0<br> [0x80000a10]:addi t1, t1, 4052<br> [0x80000a14]:andi t1, t1, 4092<br> [0x80000a18]:sub a3, a3, t1<br> [0x80000a1c]:sd a3, 8(tp)<br>              |
|  27|[0x800032d8]<br>0x0000000000000017|- rs1 : x2<br> - rd : x22<br> - imm_val == 1365<br>                                |[0x80000a30]:jalr s6, sp, 1365<br> [0x80000a44]:xori s6, s6, 3<br> [0x80000a48]:jal zero, 4<br> [0x80000a4c]:auipc t1, 0<br> [0x80000a50]:addi t1, t1, 4052<br> [0x80000a54]:andi t1, t1, 4092<br> [0x80000a58]:sub s6, s6, t1<br> [0x80000a5c]:sd s6, 16(tp)<br>             |
|  28|[0x800032e0]<br>0x0000000000000017|- rs1 : x28<br> - rd : x14<br> - imm_val == -1366<br>                              |[0x80000a70]:jalr a4, t3, 2730<br> [0x80000a84]:xori a4, a4, 3<br> [0x80000a88]:jal zero, 4<br> [0x80000a8c]:auipc t1, 0<br> [0x80000a90]:addi t1, t1, 4052<br> [0x80000a94]:andi t1, t1, 4092<br> [0x80000a98]:sub a4, a4, t1<br> [0x80000a9c]:sd a4, 24(tp)<br>             |
|  29|[0x800032e8]<br>0x0000000000000017|- rs1 : x13<br> - rd : x2<br>                                                      |[0x80000ab0]:jalr sp, a3, 2048<br> [0x80000ac4]:xori sp, sp, 3<br> [0x80000ac8]:jal zero, 4<br> [0x80000acc]:auipc t1, 0<br> [0x80000ad0]:addi t1, t1, 4052<br> [0x80000ad4]:andi t1, t1, 4092<br> [0x80000ad8]:sub sp, sp, t1<br> [0x80000adc]:sd sp, 32(tp)<br>             |
|  30|[0x800032f0]<br>0x0000000000000017|- rs1 : x31<br> - rd : x28<br>                                                     |[0x80000af0]:jalr t3, t6, 2048<br> [0x80000b04]:xori t3, t3, 3<br> [0x80000b08]:jal zero, 4<br> [0x80000b0c]:auipc t1, 0<br> [0x80000b10]:addi t1, t1, 4052<br> [0x80000b14]:andi t1, t1, 4092<br> [0x80000b18]:sub t3, t3, t1<br> [0x80000b1c]:sd t3, 40(tp)<br>             |
|  31|[0x800032f8]<br>0x0000000000000017|- rs1 : x12<br> - rd : x19<br>                                                     |[0x80000b30]:jalr s3, a2, 2048<br> [0x80000b44]:xori s3, s3, 3<br> [0x80000b48]:jal zero, 4<br> [0x80000b4c]:auipc t1, 0<br> [0x80000b50]:addi t1, t1, 4052<br> [0x80000b54]:andi t1, t1, 4092<br> [0x80000b58]:sub s3, s3, t1<br> [0x80000b5c]:sd s3, 48(tp)<br>             |
|  32|[0x80003300]<br>0x0000000000000017|- rd : x3<br>                                                                      |[0x80000b70]:jalr gp, ra, 2048<br> [0x80000b84]:xori gp, gp, 3<br> [0x80000b88]:jal zero, 4<br> [0x80000b8c]:auipc t1, 0<br> [0x80000b90]:addi t1, t1, 4052<br> [0x80000b94]:andi t1, t1, 4092<br> [0x80000b98]:sub gp, gp, t1<br> [0x80000b9c]:sd gp, 56(tp)<br>             |
