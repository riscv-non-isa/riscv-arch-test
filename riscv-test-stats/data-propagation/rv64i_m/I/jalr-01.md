
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
| SIG_REGION                | [('0x80002208', '0x80002310', '33 dwords')]      |
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
      [0x80000bb0]:jalr a1, a0, 4031
      [0x80000bc4]:xori a1, a1, 3
      [0x80000bc8]:jal zero, 4
      [0x80000bcc]:auipc a6, 0
      [0x80000bd0]:addi a6, a6, 4052
      [0x80000bd4]:andi a6, a6, 4092
      [0x80000bd8]:sub a1, a1, a6
      [0x80000bdc]:sd a1, 112(sp)
 -- Signature Address: 0x80002308 Data: 0x0000000000000017
 -- Redundant Coverpoints hit by the op
      - opcode : jalr
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val < 0
      - imm_val == -65






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

|s.no|            signature             |                                               coverpoints                                                |                                                                                                                                    code                                                                                                                                     |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002208]<br>0x0000000000000017|- opcode : jalr<br> - rs1 : x16<br> - rd : x16<br> - rs1 == rd<br> - imm_val > 0<br> - imm_val == 256<br> |[0x800003a8]:jalr a6, a6, 256<br> [0x800003bc]:xori a6, a6, 3<br> [0x800003c0]:jal zero, 4<br> [0x800003c4]:auipc t1, 0<br> [0x800003c8]:addi t1, t1, 4052<br> [0x800003cc]:andi t1, t1, 4092<br> [0x800003d0]:sub a6, a6, t1<br> [0x800003d4]:sd a6, 0(t0)<br>              |
|   2|[0x80002210]<br>0x0000000000000017|- rs1 : x30<br> - rd : x25<br> - rs1 != rd<br> - imm_val < 0<br> - imm_val == -2048<br>                   |[0x800003e8]:jalr s9, t5, 2048<br> [0x800003fc]:xori s9, s9, 3<br> [0x80000400]:jal zero, 4<br> [0x80000404]:auipc t1, 0<br> [0x80000408]:addi t1, t1, 4052<br> [0x8000040c]:andi t1, t1, 4092<br> [0x80000410]:sub s9, s9, t1<br> [0x80000414]:sd s9, 8(t0)<br>             |
|   3|[0x80002218]<br>0x0000000000000017|- rs1 : x2<br> - rd : x3<br> - imm_val == 1<br>                                                           |[0x80000428]:jalr gp, sp, 1<br> [0x8000043c]:xori gp, gp, 3<br> [0x80000440]:jal zero, 4<br> [0x80000444]:auipc t1, 0<br> [0x80000448]:addi t1, t1, 4052<br> [0x8000044c]:andi t1, t1, 4092<br> [0x80000450]:sub gp, gp, t1<br> [0x80000454]:sd gp, 16(t0)<br>               |
|   4|[0x80002220]<br>0x0000000000000017|- rs1 : x19<br> - rd : x22<br> - imm_val == 2<br>                                                         |[0x80000468]:jalr s6, s3, 2<br> [0x8000047c]:xori s6, s6, 3<br> [0x80000480]:jal zero, 4<br> [0x80000484]:auipc t1, 0<br> [0x80000488]:addi t1, t1, 4052<br> [0x8000048c]:andi t1, t1, 4092<br> [0x80000490]:sub s6, s6, t1<br> [0x80000494]:sd s6, 24(t0)<br>               |
|   5|[0x80002228]<br>0x0000000000000017|- rs1 : x9<br> - rd : x23<br> - imm_val == 4<br>                                                          |[0x800004a8]:jalr s7, s1, 4<br> [0x800004bc]:xori s7, s7, 3<br> [0x800004c0]:jal zero, 4<br> [0x800004c4]:auipc t1, 0<br> [0x800004c8]:addi t1, t1, 4052<br> [0x800004cc]:andi t1, t1, 4092<br> [0x800004d0]:sub s7, s7, t1<br> [0x800004d4]:sd s7, 32(t0)<br>               |
|   6|[0x80002230]<br>0x0000000000000017|- rs1 : x10<br> - rd : x1<br> - imm_val == 8<br>                                                          |[0x800004e8]:jalr ra, a0, 8<br> [0x800004fc]:xori ra, ra, 3<br> [0x80000500]:jal zero, 4<br> [0x80000504]:auipc t1, 0<br> [0x80000508]:addi t1, t1, 4052<br> [0x8000050c]:andi t1, t1, 4092<br> [0x80000510]:sub ra, ra, t1<br> [0x80000514]:sd ra, 40(t0)<br>               |
|   7|[0x80002238]<br>0x0000000000000017|- rs1 : x18<br> - rd : x20<br> - imm_val == 16<br>                                                        |[0x80000528]:jalr s4, s2, 16<br> [0x8000053c]:xori s4, s4, 3<br> [0x80000540]:jal zero, 4<br> [0x80000544]:auipc t1, 0<br> [0x80000548]:addi t1, t1, 4052<br> [0x8000054c]:andi t1, t1, 4092<br> [0x80000550]:sub s4, s4, t1<br> [0x80000554]:sd s4, 48(t0)<br>              |
|   8|[0x80002240]<br>0x0000000000000017|- rs1 : x20<br> - rd : x26<br> - imm_val == 32<br>                                                        |[0x80000568]:jalr s10, s4, 32<br> [0x8000057c]:xori s10, s10, 3<br> [0x80000580]:jal zero, 4<br> [0x80000584]:auipc t1, 0<br> [0x80000588]:addi t1, t1, 4052<br> [0x8000058c]:andi t1, t1, 4092<br> [0x80000590]:sub s10, s10, t1<br> [0x80000594]:sd s10, 56(t0)<br>        |
|   9|[0x80002248]<br>0x0000000000000017|- rs1 : x4<br> - rd : x31<br> - imm_val == 64<br>                                                         |[0x800005a8]:jalr t6, tp, 64<br> [0x800005bc]:xori t6, t6, 3<br> [0x800005c0]:jal zero, 4<br> [0x800005c4]:auipc t1, 0<br> [0x800005c8]:addi t1, t1, 4052<br> [0x800005cc]:andi t1, t1, 4092<br> [0x800005d0]:sub t6, t6, t1<br> [0x800005d4]:sd t6, 64(t0)<br>              |
|  10|[0x80002250]<br>0x0000000000000017|- rs1 : x22<br> - rd : x27<br> - imm_val == 128<br>                                                       |[0x800005e8]:jalr s11, s6, 128<br> [0x800005fc]:xori s11, s11, 3<br> [0x80000600]:jal zero, 4<br> [0x80000604]:auipc t1, 0<br> [0x80000608]:addi t1, t1, 4052<br> [0x8000060c]:andi t1, t1, 4092<br> [0x80000610]:sub s11, s11, t1<br> [0x80000614]:sd s11, 72(t0)<br>       |
|  11|[0x80002258]<br>0x0000000000000017|- rs1 : x14<br> - rd : x29<br> - imm_val == 512<br>                                                       |[0x80000628]:jalr t4, a4, 512<br> [0x8000063c]:xori t4, t4, 3<br> [0x80000640]:jal zero, 4<br> [0x80000644]:auipc t1, 0<br> [0x80000648]:addi t1, t1, 4052<br> [0x8000064c]:andi t1, t1, 4092<br> [0x80000650]:sub t4, t4, t1<br> [0x80000654]:sd t4, 80(t0)<br>             |
|  12|[0x80002260]<br>0x0000000000000017|- rs1 : x29<br> - rd : x24<br> - imm_val == 1024<br>                                                      |[0x80000668]:jalr s8, t4, 1024<br> [0x8000067c]:xori s8, s8, 3<br> [0x80000680]:jal zero, 4<br> [0x80000684]:auipc t1, 0<br> [0x80000688]:addi t1, t1, 4052<br> [0x8000068c]:andi t1, t1, 4092<br> [0x80000690]:sub s8, s8, t1<br> [0x80000694]:sd s8, 88(t0)<br>            |
|  13|[0x80002268]<br>0x0000000000000017|- rs1 : x7<br> - rd : x8<br> - imm_val == -2<br>                                                          |[0x800006a8]:jalr fp, t2, 4094<br> [0x800006bc]:xori fp, fp, 3<br> [0x800006c0]:jal zero, 4<br> [0x800006c4]:auipc t1, 0<br> [0x800006c8]:addi t1, t1, 4052<br> [0x800006cc]:andi t1, t1, 4092<br> [0x800006d0]:sub fp, fp, t1<br> [0x800006d4]:sd fp, 96(t0)<br>            |
|  14|[0x80002270]<br>0x0000000000000017|- rs1 : x15<br> - rd : x2<br> - imm_val == -3<br>                                                         |[0x800006e8]:jalr sp, a5, 4093<br> [0x800006fc]:xori sp, sp, 3<br> [0x80000700]:jal zero, 4<br> [0x80000704]:auipc t1, 0<br> [0x80000708]:addi t1, t1, 4052<br> [0x8000070c]:andi t1, t1, 4092<br> [0x80000710]:sub sp, sp, t1<br> [0x80000714]:sd sp, 104(t0)<br>           |
|  15|[0x80002278]<br>0x0000000000000017|- rs1 : x23<br> - rd : x10<br> - imm_val == -5<br>                                                        |[0x80000728]:jalr a0, s7, 4091<br> [0x8000073c]:xori a0, a0, 3<br> [0x80000740]:jal zero, 4<br> [0x80000744]:auipc t1, 0<br> [0x80000748]:addi t1, t1, 4052<br> [0x8000074c]:andi t1, t1, 4092<br> [0x80000750]:sub a0, a0, t1<br> [0x80000754]:sd a0, 112(t0)<br>           |
|  16|[0x80002280]<br>0x0000000000000017|- rs1 : x31<br> - rd : x12<br> - imm_val == -9<br>                                                        |[0x80000768]:jalr a2, t6, 4087<br> [0x8000077c]:xori a2, a2, 3<br> [0x80000780]:jal zero, 4<br> [0x80000784]:auipc t1, 0<br> [0x80000788]:addi t1, t1, 4052<br> [0x8000078c]:andi t1, t1, 4092<br> [0x80000790]:sub a2, a2, t1<br> [0x80000794]:sd a2, 120(t0)<br>           |
|  17|[0x80002288]<br>0x0000000000000017|- rs1 : x11<br> - rd : x21<br> - imm_val == -17<br>                                                       |[0x800007a8]:jalr s5, a1, 4079<br> [0x800007bc]:xori s5, s5, 3<br> [0x800007c0]:jal zero, 4<br> [0x800007c4]:auipc t1, 0<br> [0x800007c8]:addi t1, t1, 4052<br> [0x800007cc]:andi t1, t1, 4092<br> [0x800007d0]:sub s5, s5, t1<br> [0x800007d4]:sd s5, 128(t0)<br>           |
|  18|[0x80002290]<br>0x0000000000000017|- rs1 : x28<br> - rd : x17<br> - imm_val == -33<br>                                                       |[0x800007e8]:jalr a7, t3, 4063<br> [0x800007fc]:xori a7, a7, 3<br> [0x80000800]:jal zero, 4<br> [0x80000804]:auipc t1, 0<br> [0x80000808]:addi t1, t1, 4052<br> [0x8000080c]:andi t1, t1, 4092<br> [0x80000810]:sub a7, a7, t1<br> [0x80000814]:sd a7, 136(t0)<br>           |
|  19|[0x80002298]<br>0x0000000000000000|- rs1 : x6<br> - rd : x0<br> - imm_val == -65<br>                                                         |[0x80000830]:jalr zero, t1, 4031<br> [0x80000844]:xori zero, zero, 3<br> [0x80000848]:jal zero, 4<br> [0x8000084c]:auipc a6, 0<br> [0x80000850]:addi a6, a6, 4052<br> [0x80000854]:andi a6, a6, 4092<br> [0x80000858]:sub zero, zero, a6<br> [0x8000085c]:sd zero, 0(sp)<br> |
|  20|[0x800022a0]<br>0x0000000000000017|- rs1 : x25<br> - rd : x9<br> - imm_val == -129<br>                                                       |[0x80000870]:jalr s1, s9, 3967<br> [0x80000884]:xori s1, s1, 3<br> [0x80000888]:jal zero, 4<br> [0x8000088c]:auipc a6, 0<br> [0x80000890]:addi a6, a6, 4052<br> [0x80000894]:andi a6, a6, 4092<br> [0x80000898]:sub s1, s1, a6<br> [0x8000089c]:sd s1, 8(sp)<br>             |
|  21|[0x800022a8]<br>0x0000000000000017|- rs1 : x1<br> - rd : x11<br> - imm_val == -257<br>                                                       |[0x800008b0]:jalr a1, ra, 3839<br> [0x800008c4]:xori a1, a1, 3<br> [0x800008c8]:jal zero, 4<br> [0x800008cc]:auipc a6, 0<br> [0x800008d0]:addi a6, a6, 4052<br> [0x800008d4]:andi a6, a6, 4092<br> [0x800008d8]:sub a1, a1, a6<br> [0x800008dc]:sd a1, 16(sp)<br>            |
|  22|[0x800022b0]<br>0x0000000000000017|- rs1 : x26<br> - rd : x14<br> - imm_val == -513<br>                                                      |[0x800008f0]:jalr a4, s10, 3583<br> [0x80000904]:xori a4, a4, 3<br> [0x80000908]:jal zero, 4<br> [0x8000090c]:auipc a6, 0<br> [0x80000910]:addi a6, a6, 4052<br> [0x80000914]:andi a6, a6, 4092<br> [0x80000918]:sub a4, a4, a6<br> [0x8000091c]:sd a4, 24(sp)<br>           |
|  23|[0x800022b8]<br>0x0000000000000017|- rs1 : x13<br> - rd : x15<br> - imm_val == -1025<br>                                                     |[0x80000930]:jalr a5, a3, 3071<br> [0x80000944]:xori a5, a5, 3<br> [0x80000948]:jal zero, 4<br> [0x8000094c]:auipc a6, 0<br> [0x80000950]:addi a6, a6, 4052<br> [0x80000954]:andi a6, a6, 4092<br> [0x80000958]:sub a5, a5, a6<br> [0x8000095c]:sd a5, 32(sp)<br>            |
|  24|[0x800022c0]<br>0x0000000000000017|- rs1 : x3<br> - rd : x19<br> - imm_val == 2047<br>                                                       |[0x80000970]:jalr s3, gp, 2047<br> [0x80000984]:xori s3, s3, 3<br> [0x80000988]:jal zero, 4<br> [0x8000098c]:auipc a6, 0<br> [0x80000990]:addi a6, a6, 4052<br> [0x80000994]:andi a6, a6, 4092<br> [0x80000998]:sub s3, s3, a6<br> [0x8000099c]:sd s3, 40(sp)<br>            |
|  25|[0x800022c8]<br>0x0000000000000017|- rs1 : x24<br> - rd : x28<br> - imm_val == 1365<br>                                                      |[0x800009b0]:jalr t3, s8, 1365<br> [0x800009c4]:xori t3, t3, 3<br> [0x800009c8]:jal zero, 4<br> [0x800009cc]:auipc a6, 0<br> [0x800009d0]:addi a6, a6, 4052<br> [0x800009d4]:andi a6, a6, 4092<br> [0x800009d8]:sub t3, t3, a6<br> [0x800009dc]:sd t3, 48(sp)<br>            |
|  26|[0x800022d0]<br>0x0000000000000017|- rs1 : x5<br> - rd : x6<br> - imm_val == -1366<br>                                                       |[0x800009f0]:jalr t1, t0, 2730<br> [0x80000a04]:xori t1, t1, 3<br> [0x80000a08]:jal zero, 4<br> [0x80000a0c]:auipc a6, 0<br> [0x80000a10]:addi a6, a6, 4052<br> [0x80000a14]:andi a6, a6, 4092<br> [0x80000a18]:sub t1, t1, a6<br> [0x80000a1c]:sd t1, 56(sp)<br>            |
|  27|[0x800022d8]<br>0x0000000000000017|- rs1 : x27<br> - rd : x13<br>                                                                            |[0x80000a30]:jalr a3, s11, 2048<br> [0x80000a44]:xori a3, a3, 3<br> [0x80000a48]:jal zero, 4<br> [0x80000a4c]:auipc a6, 0<br> [0x80000a50]:addi a6, a6, 4052<br> [0x80000a54]:andi a6, a6, 4092<br> [0x80000a58]:sub a3, a3, a6<br> [0x80000a5c]:sd a3, 64(sp)<br>           |
|  28|[0x800022e0]<br>0x0000000000000017|- rs1 : x12<br> - rd : x4<br>                                                                             |[0x80000a70]:jalr tp, a2, 2048<br> [0x80000a84]:xori tp, tp, 3<br> [0x80000a88]:jal zero, 4<br> [0x80000a8c]:auipc a6, 0<br> [0x80000a90]:addi a6, a6, 4052<br> [0x80000a94]:andi a6, a6, 4092<br> [0x80000a98]:sub tp, tp, a6<br> [0x80000a9c]:sd tp, 72(sp)<br>            |
|  29|[0x800022e8]<br>0x0000000000000017|- rs1 : x8<br> - rd : x30<br>                                                                             |[0x80000ab0]:jalr t5, fp, 2048<br> [0x80000ac4]:xori t5, t5, 3<br> [0x80000ac8]:jal zero, 4<br> [0x80000acc]:auipc a6, 0<br> [0x80000ad0]:addi a6, a6, 4052<br> [0x80000ad4]:andi a6, a6, 4092<br> [0x80000ad8]:sub t5, t5, a6<br> [0x80000adc]:sd t5, 80(sp)<br>            |
|  30|[0x800022f0]<br>0x0000000000000017|- rs1 : x17<br> - rd : x7<br>                                                                             |[0x80000af0]:jalr t2, a7, 2048<br> [0x80000b04]:xori t2, t2, 3<br> [0x80000b08]:jal zero, 4<br> [0x80000b0c]:auipc a6, 0<br> [0x80000b10]:addi a6, a6, 4052<br> [0x80000b14]:andi a6, a6, 4092<br> [0x80000b18]:sub t2, t2, a6<br> [0x80000b1c]:sd t2, 88(sp)<br>            |
|  31|[0x800022f8]<br>0x0000000000000017|- rs1 : x21<br> - rd : x18<br>                                                                            |[0x80000b30]:jalr s2, s5, 2048<br> [0x80000b44]:xori s2, s2, 3<br> [0x80000b48]:jal zero, 4<br> [0x80000b4c]:auipc a6, 0<br> [0x80000b50]:addi a6, a6, 4052<br> [0x80000b54]:andi a6, a6, 4092<br> [0x80000b58]:sub s2, s2, a6<br> [0x80000b5c]:sd s2, 96(sp)<br>            |
|  32|[0x80002300]<br>0x0000000000000017|- rd : x5<br>                                                                                             |[0x80000b70]:jalr t0, gp, 2048<br> [0x80000b84]:xori t0, t0, 3<br> [0x80000b88]:jal zero, 4<br> [0x80000b8c]:auipc a6, 0<br> [0x80000b90]:addi a6, a6, 4052<br> [0x80000b94]:andi a6, a6, 4092<br> [0x80000b98]:sub t0, t0, a6<br> [0x80000b9c]:sd t0, 104(sp)<br>           |
