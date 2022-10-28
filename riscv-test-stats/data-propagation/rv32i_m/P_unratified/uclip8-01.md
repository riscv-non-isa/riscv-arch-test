
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004b0')]      |
| SIG_REGION                | [('0x80002210', '0x80002380', '92 words')]      |
| COV_LABELS                | uclip8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/uclip8-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 46      |
| STAT1                     | 45      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a0]:UCLIP8 t6, t5, 5
      [0x800004a4]:csrrs t5, vxsat, zero
      [0x800004a8]:sw t6, 184(sp)
 -- Signature Address: 0x80002378 Data: 0x00130E00
 -- Redundant Coverpoints hit by the op
      - opcode : uclip8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 5
      - rs1_b3_val == 247
      - rs1_b0_val == 251






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

|s.no|        signature         |                                                                       coverpoints                                                                        |                                                    code                                                    |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : uclip8<br> - rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - rs1_b0_val == 0<br> - imm_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 4<br> |[0x80000114]:UCLIP8 t6, t6, 0<br> [0x80000118]:csrrs t6, vxsat, zero<br> [0x8000011c]:sw t6, 0(s1)<br>      |
|   2|[0x80002218]<br>0x0E030000|- rs1 : x19<br> - rd : x16<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b1_val == 247<br> - rs1_b0_val == 253<br>                                         |[0x80000128]:UCLIP8 a6, s3, 7<br> [0x8000012c]:csrrs s3, vxsat, zero<br> [0x80000130]:sw a6, 8(s1)<br>      |
|   3|[0x80002220]<br>0x000F040B|- rs1 : x30<br> - rd : x12<br> - imm_val == 6<br> - rs1_b3_val == 191<br> - rs1_b1_val == 4<br>                                                           |[0x8000013c]:UCLIP8 a2, t5, 6<br> [0x80000140]:csrrs t5, vxsat, zero<br> [0x80000144]:sw a2, 16(s1)<br>     |
|   4|[0x80002228]<br>0x0A0C0703|- rs1 : x2<br> - rd : x10<br> - imm_val == 5<br>                                                                                                          |[0x80000150]:UCLIP8 a0, sp, 5<br> [0x80000154]:csrrs sp, vxsat, zero<br> [0x80000158]:sw a0, 24(s1)<br>     |
|   5|[0x80002230]<br>0x06000000|- rs1 : x8<br> - rd : x20<br> - imm_val == 4<br> - rs1_b2_val == 251<br> - rs1_b0_val == 254<br>                                                          |[0x80000164]:UCLIP8 s4, fp, 4<br> [0x80000168]:csrrs fp, vxsat, zero<br> [0x8000016c]:sw s4, 32(s1)<br>     |
|   6|[0x80002238]<br>0x02000000|- rs1 : x28<br> - rd : x7<br> - imm_val == 3<br> - rs1_b3_val == 2<br> - rs1_b2_val == 170<br> - rs1_b1_val == 239<br>                                    |[0x80000178]:UCLIP8 t2, t3, 3<br> [0x8000017c]:csrrs t3, vxsat, zero<br> [0x80000180]:sw t2, 40(s1)<br>     |
|   7|[0x80002240]<br>0x03000303|- rs1 : x4<br> - rd : x19<br> - imm_val == 2<br> - rs1_b2_val == 253<br>                                                                                  |[0x8000018c]:UCLIP8 s3, tp, 2<br> [0x80000190]:csrrs tp, vxsat, zero<br> [0x80000194]:sw s3, 48(s1)<br>     |
|   8|[0x80002248]<br>0x01000001|- rs1 : x25<br> - rd : x14<br> - imm_val == 1<br> - rs1_b3_val == 85<br> - rs1_b2_val == 128<br> - rs1_b1_val == 253<br>                                  |[0x800001a0]:UCLIP8 a4, s9, 1<br> [0x800001a4]:csrrs s9, vxsat, zero<br> [0x800001a8]:sw a4, 56(s1)<br>     |
|   9|[0x80002250]<br>0x00000707|- rs1 : x10<br> - rd : x24<br> - rs1_b3_val == 170<br> - rs1_b2_val == 247<br> - rs1_b1_val == 64<br> - rs1_b0_val == 64<br>                              |[0x800001b4]:UCLIP8 s8, a0, 3<br> [0x800001b8]:csrrs a0, vxsat, zero<br> [0x800001bc]:sw s8, 64(s1)<br>     |
|  10|[0x80002258]<br>0x00000000|- rs1 : x21<br> - rd : x22<br> - rs1_b3_val == 127<br> - rs1_b2_val == 16<br> - rs1_b0_val == 191<br>                                                     |[0x800001c8]:UCLIP8 s6, s5, 0<br> [0x800001cc]:csrrs s5, vxsat, zero<br> [0x800001d0]:sw s6, 72(s1)<br>     |
|  11|[0x80002260]<br>0x00000A3F|- rs1 : x11<br> - rd : x25<br> - rs1_b3_val == 223<br> - rs1_b2_val == 0<br> - rs1_b0_val == 127<br>                                                      |[0x800001dc]:UCLIP8 s9, a1, 6<br> [0x800001e0]:csrrs a1, vxsat, zero<br> [0x800001e4]:sw s9, 80(s1)<br>     |
|  12|[0x80002268]<br>0x0000090F|- rs1 : x6<br> - rd : x15<br> - rs1_b3_val == 239<br> - rs1_b2_val == 239<br> - rs1_b0_val == 16<br>                                                      |[0x800001f0]:UCLIP8 a5, t1, 4<br> [0x800001f4]:csrrs t1, vxsat, zero<br> [0x800001f8]:sw a5, 88(s1)<br>     |
|  13|[0x80002270]<br>0x00000000|- rs1 : x24<br> - rd : x0<br> - rs1_b3_val == 247<br> - rs1_b0_val == 251<br>                                                                             |[0x80000204]:UCLIP8 zero, s8, 5<br> [0x80000208]:csrrs s8, vxsat, zero<br> [0x8000020c]:sw zero, 96(s1)<br> |
|  14|[0x80002278]<br>0x000C0808|- rs1 : x13<br> - rd : x2<br> - rs1_b3_val == 251<br> - rs1_b1_val == 8<br> - rs1_b0_val == 8<br>                                                         |[0x80000218]:UCLIP8 sp, a3, 5<br> [0x8000021c]:csrrs a3, vxsat, zero<br> [0x80000220]:sw sp, 104(s1)<br>    |
|  15|[0x80002280]<br>0x000D0006|- rs1 : x26<br> - rd : x5<br> - rs1_b3_val == 253<br> - rs1_b1_val == 254<br>                                                                             |[0x8000022c]:UCLIP8 t0, s10, 5<br> [0x80000230]:csrrs s10, vxsat, zero<br> [0x80000234]:sw t0, 112(s1)<br>  |
|  16|[0x80002288]<br>0x00000307|- rs1 : x22<br> - rd : x11<br> - rs1_b3_val == 254<br>                                                                                                    |[0x80000240]:UCLIP8 a1, s6, 5<br> [0x80000244]:csrrs s6, vxsat, zero<br> [0x80000248]:sw a1, 120(s1)<br>    |
|  17|[0x80002290]<br>0x00070607|- rs1 : x7<br> - rd : x21<br> - rs1_b3_val == 128<br>                                                                                                     |[0x80000254]:UCLIP8 s5, t2, 3<br> [0x80000258]:csrrs t2, vxsat, zero<br> [0x8000025c]:sw s5, 128(s1)<br>    |
|  18|[0x80002298]<br>0x01010101|- rs1 : x12<br> - rd : x3<br> - rs1_b3_val == 64<br> - rs1_b2_val == 64<br>                                                                               |[0x80000268]:UCLIP8 gp, a2, 1<br> [0x8000026c]:csrrs a2, vxsat, zero<br> [0x80000270]:sw gp, 136(s1)<br>    |
|  19|[0x800022a0]<br>0x01010001|- rs1 : x17<br> - rd : x28<br> - rs1_b3_val == 32<br> - rs1_b2_val == 8<br> - rs1_b1_val == 255<br>                                                       |[0x8000027c]:UCLIP8 t3, a7, 1<br> [0x80000280]:csrrs a7, vxsat, zero<br> [0x80000284]:sw t3, 144(s1)<br>    |
|  20|[0x800022a8]<br>0x10000D20|- rs1 : x15<br> - rd : x30<br> - rs1_b3_val == 16<br> - rs1_b0_val == 32<br>                                                                              |[0x80000290]:UCLIP8 t5, a5, 6<br> [0x80000294]:csrrs a5, vxsat, zero<br> [0x80000298]:sw t5, 152(s1)<br>    |
|  21|[0x800022b0]<br>0x08000D00|- rs1 : x23<br> - rd : x1<br> - rs1_b3_val == 8<br>                                                                                                       |[0x800002a4]:UCLIP8 ra, s7, 5<br> [0x800002a8]:csrrs s7, vxsat, zero<br> [0x800002ac]:sw ra, 160(s1)<br>    |
|  22|[0x800022b8]<br>0x04010004|- rs1 : x14<br> - rd : x18<br> - rs1_b3_val == 4<br> - rs1_b2_val == 1<br> - rs1_b1_val == 191<br> - rs1_b0_val == 4<br>                                  |[0x800002b8]:UCLIP8 s2, a4, 4<br> [0x800002bc]:csrrs a4, vxsat, zero<br> [0x800002c0]:sw s2, 168(s1)<br>    |
|  23|[0x800022c0]<br>0x01080607|- rs1 : x27<br> - rd : x4<br> - rs1_b3_val == 1<br>                                                                                                       |[0x800002d4]:UCLIP8 tp, s11, 4<br> [0x800002d8]:csrrs s11, vxsat, zero<br> [0x800002dc]:sw tp, 0(sp)<br>    |
|  24|[0x800022c8]<br>0x10010213|- rs1 : x29<br> - rd : x17<br> - rs1_b1_val == 2<br>                                                                                                      |[0x800002e8]:UCLIP8 a7, t4, 6<br> [0x800002ec]:csrrs t4, vxsat, zero<br> [0x800002f0]:sw a7, 8(sp)<br>      |
|  25|[0x800022d0]<br>0x09000112|- rs1 : x20<br> - rd : x6<br> - rs1_b1_val == 1<br>                                                                                                       |[0x800002fc]:UCLIP8 t1, s4, 7<br> [0x80000300]:csrrs s4, vxsat, zero<br> [0x80000304]:sw t1, 16(sp)<br>     |
|  26|[0x800022d8]<br>0x0000000C|- rs1 : x1<br> - rd : x26<br> - rs1_b1_val == 0<br>                                                                                                       |[0x80000310]:UCLIP8 s10, ra, 7<br> [0x80000314]:csrrs ra, vxsat, zero<br> [0x80000318]:sw s10, 24(sp)<br>   |
|  27|[0x800022e0]<br>0x00000C00|- rs1 : x18<br> - rd : x27<br> - rs1_b3_val == 255<br> - rs1_b0_val == 170<br>                                                                            |[0x80000324]:UCLIP8 s11, s2, 4<br> [0x80000328]:csrrs s2, vxsat, zero<br> [0x8000032c]:sw s11, 32(sp)<br>   |
|  28|[0x800022e8]<br>0x03030003|- rs1 : x16<br> - rd : x8<br> - rs1_b2_val == 127<br> - rs1_b0_val == 85<br>                                                                              |[0x80000338]:UCLIP8 fp, a6, 2<br> [0x8000033c]:csrrs a6, vxsat, zero<br> [0x80000340]:sw fp, 40(sp)<br>     |
|  29|[0x800022f0]<br>0x01000100|- rs1 : x9<br> - rd : x29<br> - rs1_b1_val == 85<br> - rs1_b0_val == 223<br>                                                                              |[0x8000034c]:UCLIP8 t4, s1, 1<br> [0x80000350]:csrrs s1, vxsat, zero<br> [0x80000354]:sw t4, 48(sp)<br>     |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x0<br> - rd : x9<br>                                                                                                                              |[0x80000360]:UCLIP8 s1, zero, 5<br> [0x80000364]:csrrs zero, vxsat, zero<br> [0x80000368]:sw s1, 56(sp)<br> |
|  31|[0x80002300]<br>0x00000000|- rs1 : x5<br> - rd : x23<br> - rs1_b2_val == 191<br> - rs1_b1_val == 128<br> - rs1_b0_val == 247<br>                                                     |[0x80000374]:UCLIP8 s7, t0, 3<br> [0x80000378]:csrrs t0, vxsat, zero<br> [0x8000037c]:sw s7, 64(sp)<br>     |
|  32|[0x80002308]<br>0x091F0000|- rs1 : x3<br> - rd : x13<br> - rs1_b0_val == 128<br>                                                                                                     |[0x80000388]:UCLIP8 a3, gp, 5<br> [0x8000038c]:csrrs gp, vxsat, zero<br> [0x80000390]:sw a3, 72(sp)<br>     |
|  33|[0x80002310]<br>0x03000300|- rs1_b2_val == 223<br> - rs1_b1_val == 16<br>                                                                                                            |[0x8000039c]:UCLIP8 t6, t5, 2<br> [0x800003a0]:csrrs t5, vxsat, zero<br> [0x800003a4]:sw t6, 80(sp)<br>     |
|  34|[0x80002318]<br>0x07000107|- rs1_b2_val == 254<br>                                                                                                                                   |[0x800003b0]:UCLIP8 t6, t5, 3<br> [0x800003b4]:csrrs t5, vxsat, zero<br> [0x800003b8]:sw t6, 88(sp)<br>     |
|  35|[0x80002320]<br>0x00070607|- rs1_b2_val == 32<br>                                                                                                                                    |[0x800003c4]:UCLIP8 t6, t5, 3<br> [0x800003c8]:csrrs t5, vxsat, zero<br> [0x800003cc]:sw t6, 96(sp)<br>     |
|  36|[0x80002328]<br>0x00000000|- rs1_b2_val == 2<br> - rs1_b1_val == 127<br>                                                                                                             |[0x800003d8]:UCLIP8 t6, t5, 0<br> [0x800003dc]:csrrs t5, vxsat, zero<br> [0x800003e0]:sw t6, 104(sp)<br>    |
|  37|[0x80002330]<br>0x00000000|- rs1_b2_val == 255<br>                                                                                                                                   |[0x800003ec]:UCLIP8 t6, t5, 0<br> [0x800003f0]:csrrs t5, vxsat, zero<br> [0x800003f4]:sw t6, 112(sp)<br>    |
|  38|[0x80002338]<br>0x07000003|- rs1_b1_val == 170<br>                                                                                                                                   |[0x80000400]:UCLIP8 t6, t5, 7<br> [0x80000404]:csrrs t5, vxsat, zero<br> [0x80000408]:sw t6, 120(sp)<br>    |
|  39|[0x80002340]<br>0x01010001|- rs1_b0_val == 2<br>                                                                                                                                     |[0x80000414]:UCLIP8 t6, t5, 1<br> [0x80000418]:csrrs t5, vxsat, zero<br> [0x8000041c]:sw t6, 128(sp)<br>    |
|  40|[0x80002348]<br>0x0B000000|- rs1_b1_val == 223<br> - rs1_b0_val == 239<br>                                                                                                           |[0x80000428]:UCLIP8 t6, t5, 4<br> [0x8000042c]:csrrs t5, vxsat, zero<br> [0x80000430]:sw t6, 136(sp)<br>    |
|  41|[0x80002350]<br>0x11000001|- rs1_b0_val == 1<br>                                                                                                                                     |[0x8000043c]:UCLIP8 t6, t5, 6<br> [0x80000440]:csrrs t5, vxsat, zero<br> [0x80000444]:sw t6, 144(sp)<br>    |
|  42|[0x80002358]<br>0x03030001|- rs1_b1_val == 251<br>                                                                                                                                   |[0x80000450]:UCLIP8 t6, t5, 2<br> [0x80000454]:csrrs t5, vxsat, zero<br> [0x80000458]:sw t6, 152(sp)<br>    |
|  43|[0x80002360]<br>0x01000101|- rs1_b1_val == 32<br>                                                                                                                                    |[0x80000464]:UCLIP8 t6, t5, 1<br> [0x80000468]:csrrs t5, vxsat, zero<br> [0x8000046c]:sw t6, 160(sp)<br>    |
|  44|[0x80002368]<br>0x080F0F0E|- rs1_b2_val == 85<br>                                                                                                                                    |[0x80000478]:UCLIP8 t6, t5, 4<br> [0x8000047c]:csrrs t5, vxsat, zero<br> [0x80000480]:sw t6, 168(sp)<br>    |
|  45|[0x80002370]<br>0x0D000F00|- rs1_b0_val == 255<br>                                                                                                                                   |[0x8000048c]:UCLIP8 t6, t5, 4<br> [0x80000490]:csrrs t5, vxsat, zero<br> [0x80000494]:sw t6, 176(sp)<br>    |
