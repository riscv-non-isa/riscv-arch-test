
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
| SIG_REGION                | [('0x80002010', '0x80002120', '34 dwords')]      |
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
      [0x80000bb0]:jalr a1, a0, 3071
      [0x80000bc4]:xori a1, a1, 3
      [0x80000bc8]:jal zero, 4
      [0x80000bcc]:auipc t2, 0
      [0x80000bd0]:addi t2, t2, 4052
      [0x80000bd4]:andi t2, t2, 4092
      [0x80000bd8]:sub a1, a1, t2
      [0x80000bdc]:sd a1, 112(t1)
 -- Signature Address: 0x80002110 Data: 0x0000000000000017
 -- Redundant Coverpoints hit by the op
      - opcode : jalr
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val < 0
      - imm_val == -1025






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

|s.no|            signature             |                                     coverpoints                                     |                                                                                                                                     code                                                                                                                                     |
|---:|----------------------------------|-------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000000000000017|- opcode : jalr<br> - rs1 : x25<br> - rd : x25<br> - rs1 == rd<br> - imm_val > 0<br> |[0x800003a8]:jalr s9, s9, 7<br> [0x800003bc]:xori s9, s9, 3<br> [0x800003c0]:jal zero, 4<br> [0x800003c4]:auipc fp, 0<br> [0x800003c8]:addi fp, fp, 4052<br> [0x800003cc]:andi fp, fp, 4092<br> [0x800003d0]:sub s9, s9, fp<br> [0x800003d4]:sd s9, 0(tp)<br>                 |
|   2|[0x80002018]<br>0x0000000000000017|- rs1 : x19<br> - rd : x7<br> - rs1 != rd<br> - imm_val < 0<br>                      |[0x800003e8]:jalr t2, s3, 4086<br> [0x800003fc]:xori t2, t2, 3<br> [0x80000400]:jal zero, 4<br> [0x80000404]:auipc fp, 0<br> [0x80000408]:addi fp, fp, 4052<br> [0x8000040c]:andi fp, fp, 4092<br> [0x80000410]:sub t2, t2, fp<br> [0x80000414]:sd t2, 8(tp)<br>              |
|   3|[0x80002020]<br>0x0000000000000017|- rs1 : x2<br> - rd : x21<br> - imm_val == 1<br>                                     |[0x80000428]:jalr s5, sp, 1<br> [0x8000043c]:xori s5, s5, 3<br> [0x80000440]:jal zero, 4<br> [0x80000444]:auipc fp, 0<br> [0x80000448]:addi fp, fp, 4052<br> [0x8000044c]:andi fp, fp, 4092<br> [0x80000450]:sub s5, s5, fp<br> [0x80000454]:sd s5, 16(tp)<br>                |
|   4|[0x80002028]<br>0x0000000000000017|- rs1 : x30<br> - rd : x23<br> - imm_val == 2<br>                                    |[0x80000468]:jalr s7, t5, 2<br> [0x8000047c]:xori s7, s7, 3<br> [0x80000480]:jal zero, 4<br> [0x80000484]:auipc fp, 0<br> [0x80000488]:addi fp, fp, 4052<br> [0x8000048c]:andi fp, fp, 4092<br> [0x80000490]:sub s7, s7, fp<br> [0x80000494]:sd s7, 24(tp)<br>                |
|   5|[0x80002030]<br>0x0000000000000017|- rs1 : x7<br> - rd : x9<br> - imm_val == 4<br>                                      |[0x800004a8]:jalr s1, t2, 4<br> [0x800004bc]:xori s1, s1, 3<br> [0x800004c0]:jal zero, 4<br> [0x800004c4]:auipc fp, 0<br> [0x800004c8]:addi fp, fp, 4052<br> [0x800004cc]:andi fp, fp, 4092<br> [0x800004d0]:sub s1, s1, fp<br> [0x800004d4]:sd s1, 32(tp)<br>                |
|   6|[0x80002038]<br>0x0000000000000017|- rs1 : x14<br> - rd : x24<br> - imm_val == 8<br>                                    |[0x800004e8]:jalr s8, a4, 8<br> [0x800004fc]:xori s8, s8, 3<br> [0x80000500]:jal zero, 4<br> [0x80000504]:auipc fp, 0<br> [0x80000508]:addi fp, fp, 4052<br> [0x8000050c]:andi fp, fp, 4092<br> [0x80000510]:sub s8, s8, fp<br> [0x80000514]:sd s8, 40(tp)<br>                |
|   7|[0x80002040]<br>0x0000000000000017|- rs1 : x15<br> - rd : x3<br> - imm_val == 16<br>                                    |[0x80000528]:jalr gp, a5, 16<br> [0x8000053c]:xori gp, gp, 3<br> [0x80000540]:jal zero, 4<br> [0x80000544]:auipc fp, 0<br> [0x80000548]:addi fp, fp, 4052<br> [0x8000054c]:andi fp, fp, 4092<br> [0x80000550]:sub gp, gp, fp<br> [0x80000554]:sd gp, 48(tp)<br>               |
|   8|[0x80002048]<br>0x0000000000000017|- rs1 : x11<br> - rd : x30<br> - imm_val == 32<br>                                   |[0x80000568]:jalr t5, a1, 32<br> [0x8000057c]:xori t5, t5, 3<br> [0x80000580]:jal zero, 4<br> [0x80000584]:auipc fp, 0<br> [0x80000588]:addi fp, fp, 4052<br> [0x8000058c]:andi fp, fp, 4092<br> [0x80000590]:sub t5, t5, fp<br> [0x80000594]:sd t5, 56(tp)<br>               |
|   9|[0x80002050]<br>0x0000000000000017|- rs1 : x29<br> - rd : x31<br> - imm_val == 64<br>                                   |[0x800005a8]:jalr t6, t4, 64<br> [0x800005bc]:xori t6, t6, 3<br> [0x800005c0]:jal zero, 4<br> [0x800005c4]:auipc fp, 0<br> [0x800005c8]:addi fp, fp, 4052<br> [0x800005cc]:andi fp, fp, 4092<br> [0x800005d0]:sub t6, t6, fp<br> [0x800005d4]:sd t6, 64(tp)<br>               |
|  10|[0x80002058]<br>0x0000000000000017|- rs1 : x5<br> - rd : x16<br> - imm_val == 128<br>                                   |[0x800005e8]:jalr a6, t0, 128<br> [0x800005fc]:xori a6, a6, 3<br> [0x80000600]:jal zero, 4<br> [0x80000604]:auipc fp, 0<br> [0x80000608]:addi fp, fp, 4052<br> [0x8000060c]:andi fp, fp, 4092<br> [0x80000610]:sub a6, a6, fp<br> [0x80000614]:sd a6, 72(tp)<br>              |
|  11|[0x80002060]<br>0x0000000000000017|- rs1 : x28<br> - rd : x29<br> - imm_val == 256<br>                                  |[0x80000628]:jalr t4, t3, 256<br> [0x8000063c]:xori t4, t4, 3<br> [0x80000640]:jal zero, 4<br> [0x80000644]:auipc fp, 0<br> [0x80000648]:addi fp, fp, 4052<br> [0x8000064c]:andi fp, fp, 4092<br> [0x80000650]:sub t4, t4, fp<br> [0x80000654]:sd t4, 80(tp)<br>              |
|  12|[0x80002068]<br>0x0000000000000017|- rs1 : x12<br> - rd : x20<br> - imm_val == 512<br>                                  |[0x80000668]:jalr s4, a2, 512<br> [0x8000067c]:xori s4, s4, 3<br> [0x80000680]:jal zero, 4<br> [0x80000684]:auipc fp, 0<br> [0x80000688]:addi fp, fp, 4052<br> [0x8000068c]:andi fp, fp, 4092<br> [0x80000690]:sub s4, s4, fp<br> [0x80000694]:sd s4, 88(tp)<br>              |
|  13|[0x80002070]<br>0x0000000000000017|- rs1 : x9<br> - rd : x22<br> - imm_val == 1024<br>                                  |[0x800006a8]:jalr s6, s1, 1024<br> [0x800006bc]:xori s6, s6, 3<br> [0x800006c0]:jal zero, 4<br> [0x800006c4]:auipc fp, 0<br> [0x800006c8]:addi fp, fp, 4052<br> [0x800006cc]:andi fp, fp, 4092<br> [0x800006d0]:sub s6, s6, fp<br> [0x800006d4]:sd s6, 96(tp)<br>             |
|  14|[0x80002078]<br>0x0000000000000017|- rs1 : x13<br> - rd : x6<br> - imm_val == -2048<br>                                 |[0x800006e8]:jalr t1, a3, 2048<br> [0x800006fc]:xori t1, t1, 3<br> [0x80000700]:jal zero, 4<br> [0x80000704]:auipc fp, 0<br> [0x80000708]:addi fp, fp, 4052<br> [0x8000070c]:andi fp, fp, 4092<br> [0x80000710]:sub t1, t1, fp<br> [0x80000714]:sd t1, 104(tp)<br>            |
|  15|[0x80002080]<br>0x0000000000000017|- rs1 : x27<br> - rd : x19<br> - imm_val == -2<br>                                   |[0x80000728]:jalr s3, s11, 4094<br> [0x8000073c]:xori s3, s3, 3<br> [0x80000740]:jal zero, 4<br> [0x80000744]:auipc fp, 0<br> [0x80000748]:addi fp, fp, 4052<br> [0x8000074c]:andi fp, fp, 4092<br> [0x80000750]:sub s3, s3, fp<br> [0x80000754]:sd s3, 112(tp)<br>           |
|  16|[0x80002088]<br>0x0000000000000017|- rs1 : x6<br> - rd : x17<br> - imm_val == -3<br>                                    |[0x80000768]:jalr a7, t1, 4093<br> [0x8000077c]:xori a7, a7, 3<br> [0x80000780]:jal zero, 4<br> [0x80000784]:auipc fp, 0<br> [0x80000788]:addi fp, fp, 4052<br> [0x8000078c]:andi fp, fp, 4092<br> [0x80000790]:sub a7, a7, fp<br> [0x80000794]:sd a7, 120(tp)<br>            |
|  17|[0x80002090]<br>0x0000000000000017|- rs1 : x1<br> - rd : x26<br> - imm_val == -5<br>                                    |[0x800007a8]:jalr s10, ra, 4091<br> [0x800007bc]:xori s10, s10, 3<br> [0x800007c0]:jal zero, 4<br> [0x800007c4]:auipc fp, 0<br> [0x800007c8]:addi fp, fp, 4052<br> [0x800007cc]:andi fp, fp, 4092<br> [0x800007d0]:sub s10, s10, fp<br> [0x800007d4]:sd s10, 128(tp)<br>      |
|  18|[0x80002098]<br>0x0000000000000017|- rs1 : x10<br> - rd : x8<br> - imm_val == -9<br>                                    |[0x800007e8]:jalr fp, a0, 4087<br> [0x800007fc]:xori fp, fp, 3<br> [0x80000800]:jal zero, 4<br> [0x80000804]:auipc t2, 0<br> [0x80000808]:addi t2, t2, 4052<br> [0x8000080c]:andi t2, t2, 4092<br> [0x80000810]:sub fp, fp, t2<br> [0x80000814]:sd fp, 136(tp)<br>            |
|  19|[0x800020a0]<br>0x0000000000000017|- rs1 : x23<br> - rd : x13<br> - imm_val == -17<br>                                  |[0x80000830]:jalr a3, s7, 4079<br> [0x80000844]:xori a3, a3, 3<br> [0x80000848]:jal zero, 4<br> [0x8000084c]:auipc t2, 0<br> [0x80000850]:addi t2, t2, 4052<br> [0x80000854]:andi t2, t2, 4092<br> [0x80000858]:sub a3, a3, t2<br> [0x8000085c]:sd a3, 0(t1)<br>              |
|  20|[0x800020a8]<br>0x0000000000000017|- rs1 : x22<br> - rd : x15<br> - imm_val == -33<br>                                  |[0x80000870]:jalr a5, s6, 4063<br> [0x80000884]:xori a5, a5, 3<br> [0x80000888]:jal zero, 4<br> [0x8000088c]:auipc t2, 0<br> [0x80000890]:addi t2, t2, 4052<br> [0x80000894]:andi t2, t2, 4092<br> [0x80000898]:sub a5, a5, t2<br> [0x8000089c]:sd a5, 8(t1)<br>              |
|  21|[0x800020b0]<br>0x0000000000000017|- rs1 : x3<br> - rd : x11<br> - imm_val == -65<br>                                   |[0x800008b0]:jalr a1, gp, 4031<br> [0x800008c4]:xori a1, a1, 3<br> [0x800008c8]:jal zero, 4<br> [0x800008cc]:auipc t2, 0<br> [0x800008d0]:addi t2, t2, 4052<br> [0x800008d4]:andi t2, t2, 4092<br> [0x800008d8]:sub a1, a1, t2<br> [0x800008dc]:sd a1, 16(t1)<br>             |
|  22|[0x800020b8]<br>0x0000000000000017|- rs1 : x31<br> - rd : x28<br> - imm_val == -129<br>                                 |[0x800008f0]:jalr t3, t6, 3967<br> [0x80000904]:xori t3, t3, 3<br> [0x80000908]:jal zero, 4<br> [0x8000090c]:auipc t2, 0<br> [0x80000910]:addi t2, t2, 4052<br> [0x80000914]:andi t2, t2, 4092<br> [0x80000918]:sub t3, t3, t2<br> [0x8000091c]:sd t3, 24(t1)<br>             |
|  23|[0x800020c0]<br>0x0000000000000017|- rs1 : x24<br> - rd : x14<br> - imm_val == -257<br>                                 |[0x80000930]:jalr a4, s8, 3839<br> [0x80000944]:xori a4, a4, 3<br> [0x80000948]:jal zero, 4<br> [0x8000094c]:auipc t2, 0<br> [0x80000950]:addi t2, t2, 4052<br> [0x80000954]:andi t2, t2, 4092<br> [0x80000958]:sub a4, a4, t2<br> [0x8000095c]:sd a4, 32(t1)<br>             |
|  24|[0x800020c8]<br>0x0000000000000017|- rs1 : x21<br> - rd : x12<br> - imm_val == -513<br>                                 |[0x80000970]:jalr a2, s5, 3583<br> [0x80000984]:xori a2, a2, 3<br> [0x80000988]:jal zero, 4<br> [0x8000098c]:auipc t2, 0<br> [0x80000990]:addi t2, t2, 4052<br> [0x80000994]:andi t2, t2, 4092<br> [0x80000998]:sub a2, a2, t2<br> [0x8000099c]:sd a2, 40(t1)<br>             |
|  25|[0x800020d0]<br>0x0000000000000000|- rs1 : x4<br> - rd : x0<br> - imm_val == -1025<br>                                  |[0x800009b0]:jalr zero, tp, 3071<br> [0x800009c4]:xori zero, zero, 3<br> [0x800009c8]:jal zero, 4<br> [0x800009cc]:auipc t2, 0<br> [0x800009d0]:addi t2, t2, 4052<br> [0x800009d4]:andi t2, t2, 4092<br> [0x800009d8]:sub zero, zero, t2<br> [0x800009dc]:sd zero, 48(t1)<br> |
|  26|[0x800020d8]<br>0x0000000000000017|- rs1 : x8<br> - rd : x4<br> - imm_val == 2047<br>                                   |[0x800009f0]:jalr tp, fp, 2047<br> [0x80000a04]:xori tp, tp, 3<br> [0x80000a08]:jal zero, 4<br> [0x80000a0c]:auipc t2, 0<br> [0x80000a10]:addi t2, t2, 4052<br> [0x80000a14]:andi t2, t2, 4092<br> [0x80000a18]:sub tp, tp, t2<br> [0x80000a1c]:sd tp, 56(t1)<br>             |
|  27|[0x800020e0]<br>0x0000000000000017|- rs1 : x20<br> - rd : x18<br> - imm_val == 1365<br>                                 |[0x80000a30]:jalr s2, s4, 1365<br> [0x80000a44]:xori s2, s2, 3<br> [0x80000a48]:jal zero, 4<br> [0x80000a4c]:auipc t2, 0<br> [0x80000a50]:addi t2, t2, 4052<br> [0x80000a54]:andi t2, t2, 4092<br> [0x80000a58]:sub s2, s2, t2<br> [0x80000a5c]:sd s2, 64(t1)<br>             |
|  28|[0x800020e8]<br>0x0000000000000017|- rs1 : x18<br> - rd : x2<br> - imm_val == -1366<br>                                 |[0x80000a70]:jalr sp, s2, 2730<br> [0x80000a84]:xori sp, sp, 3<br> [0x80000a88]:jal zero, 4<br> [0x80000a8c]:auipc t2, 0<br> [0x80000a90]:addi t2, t2, 4052<br> [0x80000a94]:andi t2, t2, 4092<br> [0x80000a98]:sub sp, sp, t2<br> [0x80000a9c]:sd sp, 72(t1)<br>             |
|  29|[0x800020f0]<br>0x0000000000000017|- rs1 : x17<br> - rd : x5<br>                                                        |[0x80000ab0]:jalr t0, a7, 2048<br> [0x80000ac4]:xori t0, t0, 3<br> [0x80000ac8]:jal zero, 4<br> [0x80000acc]:auipc t2, 0<br> [0x80000ad0]:addi t2, t2, 4052<br> [0x80000ad4]:andi t2, t2, 4092<br> [0x80000ad8]:sub t0, t0, t2<br> [0x80000adc]:sd t0, 80(t1)<br>             |
|  30|[0x800020f8]<br>0x0000000000000017|- rs1 : x16<br> - rd : x27<br>                                                       |[0x80000af0]:jalr s11, a6, 2048<br> [0x80000b04]:xori s11, s11, 3<br> [0x80000b08]:jal zero, 4<br> [0x80000b0c]:auipc t2, 0<br> [0x80000b10]:addi t2, t2, 4052<br> [0x80000b14]:andi t2, t2, 4092<br> [0x80000b18]:sub s11, s11, t2<br> [0x80000b1c]:sd s11, 88(t1)<br>       |
|  31|[0x80002100]<br>0x0000000000000017|- rs1 : x26<br> - rd : x1<br>                                                        |[0x80000b30]:jalr ra, s10, 2048<br> [0x80000b44]:xori ra, ra, 3<br> [0x80000b48]:jal zero, 4<br> [0x80000b4c]:auipc t2, 0<br> [0x80000b50]:addi t2, t2, 4052<br> [0x80000b54]:andi t2, t2, 4092<br> [0x80000b58]:sub ra, ra, t2<br> [0x80000b5c]:sd ra, 96(t1)<br>            |
|  32|[0x80002108]<br>0x0000000000000017|- rd : x10<br>                                                                       |[0x80000b70]:jalr a0, s8, 2048<br> [0x80000b84]:xori a0, a0, 3<br> [0x80000b88]:jal zero, 4<br> [0x80000b8c]:auipc t2, 0<br> [0x80000b90]:addi t2, t2, 4052<br> [0x80000b94]:andi t2, t2, 4092<br> [0x80000b98]:sub a0, a0, t2<br> [0x80000b9c]:sd a0, 104(t1)<br>            |
