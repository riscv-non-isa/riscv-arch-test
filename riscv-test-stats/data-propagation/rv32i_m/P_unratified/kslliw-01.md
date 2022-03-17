
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000690')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | kslliw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kslliw-01.S    |
| Total Number of coverpoints| 172     |
| Total Coverpoints Hit     | 167      |
| Total Signature Updates   | 80      |
| STAT1                     | 78      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000598]:KSLLIW t6, t5, 15
      [0x8000059c]:csrrs t5, vxsat, zero
      [0x800005a0]:sw t6, 328(sp)
 -- Signature Address: 0x80002418 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslliw
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 15
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000668]:KSLLIW t6, t5, 10
      [0x8000066c]:csrrs t5, vxsat, zero
      [0x80000670]:sw t6, 432(sp)
 -- Signature Address: 0x80002480 Data: 0x01000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslliw
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 10
      - rs1_w0_val == 16384






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

|s.no|        signature         |                                                       coverpoints                                                       |                                                     code                                                     |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : kslliw<br> - rs1 : x23<br> - rd : x23<br> - rs1 == rd<br> - rs1_w0_val == -2147483648<br> - imm_val == 14<br> |[0x80000110]:KSLLIW s7, s7, 14<br> [0x80000114]:csrrs s7, vxsat, zero<br> [0x80000118]:sw s7, 0(a1)<br>       |
|   2|[0x80002218]<br>0x80000000|- rs1 : x27<br> - rd : x22<br> - rs1 != rd<br> - imm_val == 31<br> - rs1_w0_val == -134217729<br>                        |[0x80000124]:KSLLIW s6, s11, 31<br> [0x80000128]:csrrs s11, vxsat, zero<br> [0x8000012c]:sw s6, 8(a1)<br>     |
|   3|[0x80002220]<br>0x80000000|- rs1 : x26<br> - rd : x27<br> - imm_val == 30<br> - rs1_w0_val == -33554433<br>                                         |[0x80000138]:KSLLIW s11, s10, 30<br> [0x8000013c]:csrrs s10, vxsat, zero<br> [0x80000140]:sw s11, 16(a1)<br>  |
|   4|[0x80002228]<br>0x7FFFFFFF|- rs1 : x21<br> - rd : x28<br> - imm_val == 29<br> - rs1_w0_val == 2147483647<br>                                        |[0x8000014c]:KSLLIW t3, s5, 29<br> [0x80000150]:csrrs s5, vxsat, zero<br> [0x80000154]:sw t3, 24(a1)<br>      |
|   5|[0x80002230]<br>0x7FFFFFFF|- rs1 : x31<br> - rd : x1<br> - imm_val == 28<br> - rs1_w0_val == 16<br>                                                 |[0x8000015c]:KSLLIW ra, t6, 28<br> [0x80000160]:csrrs t6, vxsat, zero<br> [0x80000164]:sw ra, 32(a1)<br>      |
|   6|[0x80002238]<br>0x80000000|- rs1 : x16<br> - rd : x4<br> - imm_val == 27<br> - rs1_w0_val == -1431655766<br>                                        |[0x80000170]:KSLLIW tp, a6, 27<br> [0x80000174]:csrrs a6, vxsat, zero<br> [0x80000178]:sw tp, 40(a1)<br>      |
|   7|[0x80002240]<br>0x80000000|- rs1 : x19<br> - rd : x25<br> - imm_val == 26<br> - rs1_w0_val == -2049<br>                                             |[0x80000184]:KSLLIW s9, s3, 26<br> [0x80000188]:csrrs s3, vxsat, zero<br> [0x8000018c]:sw s9, 48(a1)<br>      |
|   8|[0x80002248]<br>0x80000000|- rs1 : x9<br> - rd : x2<br> - imm_val == 25<br>                                                                         |[0x80000198]:KSLLIW sp, s1, 25<br> [0x8000019c]:csrrs s1, vxsat, zero<br> [0x800001a0]:sw sp, 56(a1)<br>      |
|   9|[0x80002250]<br>0x7FFFFFFF|- rs1 : x25<br> - rd : x31<br> - imm_val == 24<br> - rs1_w0_val == 65536<br>                                             |[0x800001a8]:KSLLIW t6, s9, 24<br> [0x800001ac]:csrrs s9, vxsat, zero<br> [0x800001b0]:sw t6, 64(a1)<br>      |
|  10|[0x80002258]<br>0x80000000|- rs1 : x15<br> - rd : x26<br> - imm_val == 23<br> - rs1_w0_val == -8193<br>                                             |[0x800001bc]:KSLLIW s10, a5, 23<br> [0x800001c0]:csrrs a5, vxsat, zero<br> [0x800001c4]:sw s10, 72(a1)<br>    |
|  11|[0x80002260]<br>0xFE800000|- rs1 : x8<br> - rd : x12<br> - imm_val == 22<br>                                                                        |[0x800001cc]:KSLLIW a2, fp, 22<br> [0x800001d0]:csrrs fp, vxsat, zero<br> [0x800001d4]:sw a2, 80(a1)<br>      |
|  12|[0x80002268]<br>0x7FFFFFFF|- rs1 : x2<br> - rd : x30<br> - imm_val == 21<br> - rs1_w0_val == 67108864<br>                                           |[0x800001dc]:KSLLIW t5, sp, 21<br> [0x800001e0]:csrrs sp, vxsat, zero<br> [0x800001e4]:sw t5, 88(a1)<br>      |
|  13|[0x80002270]<br>0x7FFFFFFF|- rs1 : x22<br> - rd : x13<br> - imm_val == 20<br> - rs1_w0_val == 4096<br>                                              |[0x800001ec]:KSLLIW a3, s6, 20<br> [0x800001f0]:csrrs s6, vxsat, zero<br> [0x800001f4]:sw a3, 96(a1)<br>      |
|  14|[0x80002278]<br>0x00180000|- rs1 : x3<br> - rd : x14<br> - imm_val == 19<br>                                                                        |[0x800001fc]:KSLLIW a4, gp, 19<br> [0x80000200]:csrrs gp, vxsat, zero<br> [0x80000204]:sw a4, 104(a1)<br>     |
|  15|[0x80002280]<br>0x00180000|- rs1 : x10<br> - rd : x24<br> - imm_val == 18<br>                                                                       |[0x8000020c]:KSLLIW s8, a0, 18<br> [0x80000210]:csrrs a0, vxsat, zero<br> [0x80000214]:sw s8, 112(a1)<br>     |
|  16|[0x80002288]<br>0xFF7E0000|- rs1 : x17<br> - rd : x3<br> - imm_val == 17<br> - rs1_w0_val == -65<br>                                                |[0x8000021c]:KSLLIW gp, a7, 17<br> [0x80000220]:csrrs a7, vxsat, zero<br> [0x80000224]:sw gp, 120(a1)<br>     |
|  17|[0x80002290]<br>0x7FFFFFFF|- rs1 : x14<br> - rd : x6<br> - imm_val == 16<br>                                                                        |[0x80000230]:KSLLIW t1, a4, 16<br> [0x80000234]:csrrs a4, vxsat, zero<br> [0x80000238]:sw t1, 128(a1)<br>     |
|  18|[0x80002298]<br>0x00200000|- rs1 : x12<br> - rd : x5<br> - imm_val == 15<br> - rs1_w0_val == 64<br>                                                 |[0x80000240]:KSLLIW t0, a2, 15<br> [0x80000244]:csrrs a2, vxsat, zero<br> [0x80000248]:sw t0, 136(a1)<br>     |
|  19|[0x800022a0]<br>0x80000000|- rs1 : x6<br> - rd : x17<br> - imm_val == 13<br> - rs1_w0_val == -262145<br>                                            |[0x80000254]:KSLLIW a7, t1, 13<br> [0x80000258]:csrrs t1, vxsat, zero<br> [0x8000025c]:sw a7, 144(a1)<br>     |
|  20|[0x800022a8]<br>0x7FFFFFFF|- rs1 : x18<br> - rd : x9<br> - imm_val == 12<br> - rs1_w0_val == 1048576<br>                                            |[0x80000264]:KSLLIW s1, s2, 12<br> [0x80000268]:csrrs s2, vxsat, zero<br> [0x8000026c]:sw s1, 152(a1)<br>     |
|  21|[0x800022b0]<br>0x7FFFFFFF|- rs1 : x30<br> - rd : x15<br> - imm_val == 11<br> - rs1_w0_val == 1431655765<br>                                        |[0x80000278]:KSLLIW a5, t5, 11<br> [0x8000027c]:csrrs t5, vxsat, zero<br> [0x80000280]:sw a5, 160(a1)<br>     |
|  22|[0x800022b8]<br>0x00000000|- rs1 : x13<br> - rd : x0<br> - imm_val == 10<br> - rs1_w0_val == 16384<br>                                              |[0x80000288]:KSLLIW zero, a3, 10<br> [0x8000028c]:csrrs a3, vxsat, zero<br> [0x80000290]:sw zero, 168(a1)<br> |
|  23|[0x800022c0]<br>0x00008000|- rs1 : x28<br> - rd : x8<br> - imm_val == 9<br>                                                                         |[0x80000298]:KSLLIW fp, t3, 9<br> [0x8000029c]:csrrs t3, vxsat, zero<br> [0x800002a0]:sw fp, 176(a1)<br>      |
|  24|[0x800022c8]<br>0x40000000|- rs1 : x24<br> - rd : x7<br> - imm_val == 8<br> - rs1_w0_val == 4194304<br>                                             |[0x800002a8]:KSLLIW t2, s8, 8<br> [0x800002ac]:csrrs s8, vxsat, zero<br> [0x800002b0]:sw t2, 184(a1)<br>      |
|  25|[0x800022d0]<br>0xFFFFBF80|- rs1 : x20<br> - rd : x10<br> - imm_val == 7<br> - rs1_w0_val == -129<br>                                               |[0x800002c0]:KSLLIW a0, s4, 7<br> [0x800002c4]:csrrs s4, vxsat, zero<br> [0x800002c8]:sw a0, 0(sp)<br>        |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x0<br> - rd : x11<br> - imm_val == 6<br> - rs1_w0_val == 0<br>                                                   |[0x800002d4]:KSLLIW a1, zero, 6<br> [0x800002d8]:csrrs zero, vxsat, zero<br> [0x800002dc]:sw a1, 8(sp)<br>    |
|  27|[0x800022e0]<br>0x02000000|- rs1 : x11<br> - rd : x20<br> - imm_val == 5<br>                                                                        |[0x800002e4]:KSLLIW s4, a1, 5<br> [0x800002e8]:csrrs a1, vxsat, zero<br> [0x800002ec]:sw s4, 16(sp)<br>       |
|  28|[0x800022e8]<br>0x01000000|- rs1 : x4<br> - rd : x21<br> - imm_val == 4<br>                                                                         |[0x800002f4]:KSLLIW s5, tp, 4<br> [0x800002f8]:csrrs tp, vxsat, zero<br> [0x800002fc]:sw s5, 24(sp)<br>       |
|  29|[0x800022f0]<br>0x80000000|- rs1 : x5<br> - rd : x19<br> - imm_val == 3<br>                                                                         |[0x80000308]:KSLLIW s3, t0, 3<br> [0x8000030c]:csrrs t0, vxsat, zero<br> [0x80000310]:sw s3, 32(sp)<br>       |
|  30|[0x800022f8]<br>0x00010000|- rs1 : x29<br> - rd : x16<br> - imm_val == 2<br>                                                                        |[0x80000318]:KSLLIW a6, t4, 2<br> [0x8000031c]:csrrs t4, vxsat, zero<br> [0x80000320]:sw a6, 40(sp)<br>       |
|  31|[0x80002300]<br>0xFFFDFFFE|- rs1 : x7<br> - rd : x29<br> - imm_val == 1<br> - rs1_w0_val == -65537<br>                                              |[0x8000032c]:KSLLIW t4, t2, 1<br> [0x80000330]:csrrs t2, vxsat, zero<br> [0x80000334]:sw t4, 48(sp)<br>       |
|  32|[0x80002308]<br>0xFFDFFFFF|- rs1 : x1<br> - rd : x18<br> - imm_val == 0<br> - rs1_w0_val == -2097153<br>                                            |[0x80000340]:KSLLIW s2, ra, 0<br> [0x80000344]:csrrs ra, vxsat, zero<br> [0x80000348]:sw s2, 56(sp)<br>       |
|  33|[0x80002310]<br>0x80000000|- rs1_w0_val == -1073741825<br>                                                                                          |[0x80000354]:KSLLIW t6, t5, 23<br> [0x80000358]:csrrs t5, vxsat, zero<br> [0x8000035c]:sw t6, 64(sp)<br>      |
|  34|[0x80002318]<br>0x80000000|- rs1_w0_val == -536870913<br>                                                                                           |[0x80000368]:KSLLIW t6, t5, 9<br> [0x8000036c]:csrrs t5, vxsat, zero<br> [0x80000370]:sw t6, 72(sp)<br>       |
|  35|[0x80002320]<br>0x80000000|- rs1_w0_val == -268435457<br>                                                                                           |[0x8000037c]:KSLLIW t6, t5, 13<br> [0x80000380]:csrrs t5, vxsat, zero<br> [0x80000384]:sw t6, 80(sp)<br>      |
|  36|[0x80002328]<br>0xF7FFFFFE|- rs1_w0_val == -67108865<br>                                                                                            |[0x80000390]:KSLLIW t6, t5, 1<br> [0x80000394]:csrrs t5, vxsat, zero<br> [0x80000398]:sw t6, 88(sp)<br>       |
|  37|[0x80002330]<br>0x80000000|- rs1_w0_val == -16777217<br>                                                                                            |[0x800003a4]:KSLLIW t6, t5, 26<br> [0x800003a8]:csrrs t5, vxsat, zero<br> [0x800003ac]:sw t6, 96(sp)<br>      |
|  38|[0x80002338]<br>0x80000000|- rs1_w0_val == -8388609<br>                                                                                             |[0x800003b8]:KSLLIW t6, t5, 22<br> [0x800003bc]:csrrs t5, vxsat, zero<br> [0x800003c0]:sw t6, 104(sp)<br>     |
|  39|[0x80002340]<br>0x80000000|- rs1_w0_val == -4194305<br>                                                                                             |[0x800003cc]:KSLLIW t6, t5, 16<br> [0x800003d0]:csrrs t5, vxsat, zero<br> [0x800003d4]:sw t6, 112(sp)<br>     |
|  40|[0x80002348]<br>0x80000000|- rs1_w0_val == -1048577<br>                                                                                             |[0x800003e0]:KSLLIW t6, t5, 22<br> [0x800003e4]:csrrs t5, vxsat, zero<br> [0x800003e8]:sw t6, 120(sp)<br>     |
|  41|[0x80002350]<br>0x80000000|- rs1_w0_val == -524289<br>                                                                                              |[0x800003f4]:KSLLIW t6, t5, 14<br> [0x800003f8]:csrrs t5, vxsat, zero<br> [0x800003fc]:sw t6, 128(sp)<br>     |
|  42|[0x80002358]<br>0x80000000|- rs1_w0_val == -131073<br>                                                                                              |[0x80000408]:KSLLIW t6, t5, 27<br> [0x8000040c]:csrrs t5, vxsat, zero<br> [0x80000410]:sw t6, 136(sp)<br>     |
|  43|[0x80002360]<br>0x80000000|- rs1_w0_val == -32769<br>                                                                                               |[0x8000041c]:KSLLIW t6, t5, 30<br> [0x80000420]:csrrs t5, vxsat, zero<br> [0x80000424]:sw t6, 144(sp)<br>     |
|  44|[0x80002368]<br>0x80000000|- rs1_w0_val == -16385<br>                                                                                               |[0x80000430]:KSLLIW t6, t5, 29<br> [0x80000434]:csrrs t5, vxsat, zero<br> [0x80000438]:sw t6, 152(sp)<br>     |
|  45|[0x80002370]<br>0xFFDFFE00|- rs1_w0_val == -4097<br>                                                                                                |[0x80000444]:KSLLIW t6, t5, 9<br> [0x80000448]:csrrs t5, vxsat, zero<br> [0x8000044c]:sw t6, 160(sp)<br>      |
|  46|[0x80002378]<br>0xFBFF0000|- rs1_w0_val == -1025<br>                                                                                                |[0x80000454]:KSLLIW t6, t5, 16<br> [0x80000458]:csrrs t5, vxsat, zero<br> [0x8000045c]:sw t6, 168(sp)<br>     |
|  47|[0x80002380]<br>0x80000000|- rs1_w0_val == -513<br>                                                                                                 |[0x80000464]:KSLLIW t6, t5, 29<br> [0x80000468]:csrrs t5, vxsat, zero<br> [0x8000046c]:sw t6, 176(sp)<br>     |
|  48|[0x80002388]<br>0xFFEC0000|- rs1_w0_val == -5<br>                                                                                                   |[0x80000474]:KSLLIW t6, t5, 18<br> [0x80000478]:csrrs t5, vxsat, zero<br> [0x8000047c]:sw t6, 184(sp)<br>     |
|  49|[0x80002390]<br>0xD0000000|- rs1_w0_val == -3<br>                                                                                                   |[0x80000484]:KSLLIW t6, t5, 28<br> [0x80000488]:csrrs t5, vxsat, zero<br> [0x8000048c]:sw t6, 192(sp)<br>     |
|  50|[0x80002398]<br>0xFFE00000|- rs1_w0_val == -2<br>                                                                                                   |[0x80000494]:KSLLIW t6, t5, 20<br> [0x80000498]:csrrs t5, vxsat, zero<br> [0x8000049c]:sw t6, 200(sp)<br>     |
|  51|[0x800023a0]<br>0x7FFFFFFF|- rs1_w0_val == 1073741824<br>                                                                                           |[0x800004a4]:KSLLIW t6, t5, 6<br> [0x800004a8]:csrrs t5, vxsat, zero<br> [0x800004ac]:sw t6, 208(sp)<br>      |
|  52|[0x800023a8]<br>0x7FFFFFFF|- rs1_w0_val == 536870912<br>                                                                                            |[0x800004b4]:KSLLIW t6, t5, 22<br> [0x800004b8]:csrrs t5, vxsat, zero<br> [0x800004bc]:sw t6, 216(sp)<br>     |
|  53|[0x800023b0]<br>0x7FFFFFFF|- rs1_w0_val == 268435456<br>                                                                                            |[0x800004c4]:KSLLIW t6, t5, 9<br> [0x800004c8]:csrrs t5, vxsat, zero<br> [0x800004cc]:sw t6, 224(sp)<br>      |
|  54|[0x800023b8]<br>0x7FFFFFFF|- rs1_w0_val == 134217728<br>                                                                                            |[0x800004d4]:KSLLIW t6, t5, 21<br> [0x800004d8]:csrrs t5, vxsat, zero<br> [0x800004dc]:sw t6, 232(sp)<br>     |
|  55|[0x800023c0]<br>0x02000000|- rs1_w0_val == 33554432<br>                                                                                             |[0x800004e4]:KSLLIW t6, t5, 0<br> [0x800004e8]:csrrs t5, vxsat, zero<br> [0x800004ec]:sw t6, 240(sp)<br>      |
|  56|[0x800023c8]<br>0x7FFFFFFF|- rs1_w0_val == 16777216<br>                                                                                             |[0x800004f4]:KSLLIW t6, t5, 28<br> [0x800004f8]:csrrs t5, vxsat, zero<br> [0x800004fc]:sw t6, 248(sp)<br>     |
|  57|[0x800023d0]<br>0x7FFFFFFF|- rs1_w0_val == 8388608<br>                                                                                              |[0x80000504]:KSLLIW t6, t5, 12<br> [0x80000508]:csrrs t5, vxsat, zero<br> [0x8000050c]:sw t6, 256(sp)<br>     |
|  58|[0x800023d8]<br>0x00200000|- rs1_w0_val == 2097152<br>                                                                                              |[0x80000514]:KSLLIW t6, t5, 0<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 264(sp)<br>      |
|  59|[0x800023e0]<br>0x00200000|- rs1_w0_val == 524288<br>                                                                                               |[0x80000524]:KSLLIW t6, t5, 2<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 272(sp)<br>      |
|  60|[0x800023e8]<br>0x20000000|- rs1_w0_val == 262144<br>                                                                                               |[0x80000534]:KSLLIW t6, t5, 11<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 280(sp)<br>     |
|  61|[0x800023f0]<br>0x04000000|- rs1_w0_val == 32768<br>                                                                                                |[0x80000544]:KSLLIW t6, t5, 11<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 288(sp)<br>     |
|  62|[0x800023f8]<br>0x00020000|- rs1_w0_val == 8192<br>                                                                                                 |[0x80000554]:KSLLIW t6, t5, 4<br> [0x80000558]:csrrs t5, vxsat, zero<br> [0x8000055c]:sw t6, 296(sp)<br>      |
|  63|[0x80002400]<br>0x00008000|- rs1_w0_val == 2048<br>                                                                                                 |[0x80000568]:KSLLIW t6, t5, 4<br> [0x8000056c]:csrrs t5, vxsat, zero<br> [0x80000570]:sw t6, 304(sp)<br>      |
|  64|[0x80002408]<br>0x20000000|- rs1_w0_val == 2<br>                                                                                                    |[0x80000578]:KSLLIW t6, t5, 28<br> [0x8000057c]:csrrs t5, vxsat, zero<br> [0x80000580]:sw t6, 312(sp)<br>     |
|  65|[0x80002410]<br>0x7FFFFFFF|- rs1_w0_val == 1<br>                                                                                                    |[0x80000588]:KSLLIW t6, t5, 31<br> [0x8000058c]:csrrs t5, vxsat, zero<br> [0x80000590]:sw t6, 320(sp)<br>     |
|  66|[0x80002420]<br>0xFFF00000|- rs1_w0_val == -1<br>                                                                                                   |[0x800005a8]:KSLLIW t6, t5, 20<br> [0x800005ac]:csrrs t5, vxsat, zero<br> [0x800005b0]:sw t6, 336(sp)<br>     |
|  67|[0x80002428]<br>0x80000000|- rs1_w0_val == -257<br>                                                                                                 |[0x800005b8]:KSLLIW t6, t5, 30<br> [0x800005bc]:csrrs t5, vxsat, zero<br> [0x800005c0]:sw t6, 344(sp)<br>     |
|  68|[0x80002430]<br>0x00001000|- rs1_w0_val == 8<br>                                                                                                    |[0x800005c8]:KSLLIW t6, t5, 9<br> [0x800005cc]:csrrs t5, vxsat, zero<br> [0x800005d0]:sw t6, 352(sp)<br>      |
|  69|[0x80002438]<br>0xFFFDC000|- rs1_w0_val == -9<br>                                                                                                   |[0x800005d8]:KSLLIW t6, t5, 14<br> [0x800005dc]:csrrs t5, vxsat, zero<br> [0x800005e0]:sw t6, 360(sp)<br>     |
|  70|[0x80002440]<br>0x00002000|- rs1_w0_val == 1024<br>                                                                                                 |[0x800005e8]:KSLLIW t6, t5, 3<br> [0x800005ec]:csrrs t5, vxsat, zero<br> [0x800005f0]:sw t6, 368(sp)<br>      |
|  71|[0x80002448]<br>0x00800000|- rs1_w0_val == 512<br>                                                                                                  |[0x800005f8]:KSLLIW t6, t5, 14<br> [0x800005fc]:csrrs t5, vxsat, zero<br> [0x80000600]:sw t6, 376(sp)<br>     |
|  72|[0x80002450]<br>0x7FFFFFFF|- rs1_w0_val == 256<br>                                                                                                  |[0x80000608]:KSLLIW t6, t5, 25<br> [0x8000060c]:csrrs t5, vxsat, zero<br> [0x80000610]:sw t6, 384(sp)<br>     |
|  73|[0x80002458]<br>0x00001000|- rs1_w0_val == 128<br>                                                                                                  |[0x80000618]:KSLLIW t6, t5, 5<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 392(sp)<br>      |
|  74|[0x80002460]<br>0x00000020|- rs1_w0_val == 32<br>                                                                                                   |[0x80000628]:KSLLIW t6, t5, 0<br> [0x8000062c]:csrrs t5, vxsat, zero<br> [0x80000630]:sw t6, 400(sp)<br>      |
|  75|[0x80002468]<br>0xBE000000|- rs1_w0_val == -33<br>                                                                                                  |[0x80000638]:KSLLIW t6, t5, 25<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 408(sp)<br>     |
|  76|[0x80002470]<br>0xFFFFFBC0|- rs1_w0_val == -17<br>                                                                                                  |[0x80000648]:KSLLIW t6, t5, 6<br> [0x8000064c]:csrrs t5, vxsat, zero<br> [0x80000650]:sw t6, 416(sp)<br>      |
|  77|[0x80002478]<br>0x00002000|- rs1_w0_val == 4<br>                                                                                                    |[0x80000658]:KSLLIW t6, t5, 11<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 424(sp)<br>     |
|  78|[0x80002488]<br>0x00800000|- rs1_w0_val == 131072<br>                                                                                               |[0x80000678]:KSLLIW t6, t5, 6<br> [0x8000067c]:csrrs t5, vxsat, zero<br> [0x80000680]:sw t6, 440(sp)<br>      |
