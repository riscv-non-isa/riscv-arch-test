
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000670')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | uclip32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/uclip32-01.S    |
| Total Number of coverpoints| 172     |
| Total Coverpoints Hit     | 167      |
| Total Signature Updates   | 78      |
| STAT1                     | 77      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000658]:UCLIP32 t6, t5, 19
      [0x8000065c]:csrrs t5, vxsat, zero
      [0x80000660]:sw t6, 432(ra)
 -- Signature Address: 0x80002478 Data: 0x0007FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : uclip32
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 19
      - rs1_w0_val == 67108864






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

|s.no|        signature         |                                                  coverpoints                                                   |                                                     code                                                      |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : uclip32<br> - rs1 : x24<br> - rd : x24<br> - rs1 == rd<br> - rs1_w0_val == 0<br> - imm_val == 22<br> |[0x80000110]:UCLIP32 s8, s8, 22<br> [0x80000114]:csrrs s8, vxsat, zero<br> [0x80000118]:sw s8, 0(t0)<br>       |
|   2|[0x80002218]<br>0x02000000|- rs1 : x31<br> - rd : x19<br> - rs1 != rd<br> - imm_val == 31<br> - rs1_w0_val == 33554432<br>                 |[0x80000120]:UCLIP32 s3, t6, 31<br> [0x80000124]:csrrs t6, vxsat, zero<br> [0x80000128]:sw s3, 8(t0)<br>       |
|   3|[0x80002220]<br>0x00000000|- rs1 : x10<br> - rd : x18<br> - imm_val == 30<br> - rs1_w0_val == 4160749567<br>                               |[0x80000134]:UCLIP32 s2, a0, 30<br> [0x80000138]:csrrs a0, vxsat, zero<br> [0x8000013c]:sw s2, 16(t0)<br>      |
|   4|[0x80002228]<br>0x00000000|- rs1 : x7<br> - rd : x22<br> - imm_val == 29<br> - rs1_w0_val == 4227858431<br>                                |[0x80000148]:UCLIP32 s6, t2, 29<br> [0x8000014c]:csrrs t2, vxsat, zero<br> [0x80000150]:sw s6, 24(t0)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x14<br> - rd : x7<br> - imm_val == 28<br> - rs1_w0_val == 4294959103<br>                                |[0x8000015c]:UCLIP32 t2, a4, 28<br> [0x80000160]:csrrs a4, vxsat, zero<br> [0x80000164]:sw t2, 32(t0)<br>      |
|   6|[0x80002238]<br>0x00000001|- rs1 : x11<br> - rd : x27<br> - imm_val == 27<br> - rs1_w0_val == 1<br>                                        |[0x8000016c]:UCLIP32 s11, a1, 27<br> [0x80000170]:csrrs a1, vxsat, zero<br> [0x80000174]:sw s11, 40(t0)<br>    |
|   7|[0x80002240]<br>0x00000000|- rs1 : x22<br> - rd : x4<br> - imm_val == 26<br> - rs1_w0_val == 4292870143<br>                                |[0x80000180]:UCLIP32 tp, s6, 26<br> [0x80000184]:csrrs s6, vxsat, zero<br> [0x80000188]:sw tp, 48(t0)<br>      |
|   8|[0x80002248]<br>0x00000003|- rs1 : x9<br> - rd : x13<br> - imm_val == 25<br>                                                               |[0x80000190]:UCLIP32 a3, s1, 25<br> [0x80000194]:csrrs s1, vxsat, zero<br> [0x80000198]:sw a3, 56(t0)<br>      |
|   9|[0x80002250]<br>0x00000000|- rs1 : x19<br> - rd : x2<br> - imm_val == 24<br> - rs1_w0_val == 4293918719<br>                                |[0x800001a4]:UCLIP32 sp, s3, 24<br> [0x800001a8]:csrrs s3, vxsat, zero<br> [0x800001ac]:sw sp, 64(t0)<br>      |
|  10|[0x80002258]<br>0x00000020|- rs1 : x6<br> - rd : x15<br> - imm_val == 23<br> - rs1_w0_val == 32<br>                                        |[0x800001b4]:UCLIP32 a5, t1, 23<br> [0x800001b8]:csrrs t1, vxsat, zero<br> [0x800001bc]:sw a5, 72(t0)<br>      |
|  11|[0x80002260]<br>0x00000100|- rs1 : x4<br> - rd : x10<br> - imm_val == 21<br> - rs1_w0_val == 256<br>                                       |[0x800001c4]:UCLIP32 a0, tp, 21<br> [0x800001c8]:csrrs tp, vxsat, zero<br> [0x800001cc]:sw a0, 80(t0)<br>      |
|  12|[0x80002268]<br>0x000FFFFF|- rs1 : x16<br> - rd : x31<br> - imm_val == 20<br> - rs1_w0_val == 134217728<br>                                |[0x800001d4]:UCLIP32 t6, a6, 20<br> [0x800001d8]:csrrs a6, vxsat, zero<br> [0x800001dc]:sw t6, 88(t0)<br>      |
|  13|[0x80002270]<br>0x00000000|- rs1 : x3<br> - rd : x0<br> - imm_val == 19<br> - rs1_w0_val == 67108864<br>                                   |[0x800001e4]:UCLIP32 zero, gp, 19<br> [0x800001e8]:csrrs gp, vxsat, zero<br> [0x800001ec]:sw zero, 96(t0)<br>  |
|  14|[0x80002278]<br>0x0003FFFF|- rs1 : x28<br> - rd : x17<br> - imm_val == 18<br>                                                              |[0x800001f4]:UCLIP32 a7, t3, 18<br> [0x800001f8]:csrrs t3, vxsat, zero<br> [0x800001fc]:sw a7, 104(t0)<br>     |
|  15|[0x80002280]<br>0x00000000|- rs1 : x2<br> - rd : x8<br> - imm_val == 17<br>                                                                |[0x80000208]:UCLIP32 fp, sp, 17<br> [0x8000020c]:csrrs sp, vxsat, zero<br> [0x80000210]:sw fp, 112(t0)<br>     |
|  16|[0x80002288]<br>0x00000000|- rs1 : x0<br> - rd : x6<br> - imm_val == 16<br>                                                                |[0x8000021c]:UCLIP32 t1, zero, 16<br> [0x80000220]:csrrs zero, vxsat, zero<br> [0x80000224]:sw t1, 120(t0)<br> |
|  17|[0x80002290]<br>0x00000000|- rs1 : x21<br> - rd : x28<br> - imm_val == 15<br> - rs1_w0_val == 4294934527<br>                               |[0x80000230]:UCLIP32 t3, s5, 15<br> [0x80000234]:csrrs s5, vxsat, zero<br> [0x80000238]:sw t3, 128(t0)<br>     |
|  18|[0x80002298]<br>0x00000000|- rs1 : x27<br> - rd : x25<br> - imm_val == 14<br> - rs1_w0_val == 4294967167<br>                               |[0x80000240]:UCLIP32 s9, s11, 14<br> [0x80000244]:csrrs s11, vxsat, zero<br> [0x80000248]:sw s9, 136(t0)<br>   |
|  19|[0x800022a0]<br>0x00000000|- rs1 : x20<br> - rd : x1<br> - imm_val == 13<br> - rs1_w0_val == 3221225471<br>                                |[0x80000254]:UCLIP32 ra, s4, 13<br> [0x80000258]:csrrs s4, vxsat, zero<br> [0x8000025c]:sw ra, 144(t0)<br>     |
|  20|[0x800022a8]<br>0x0000000E|- rs1 : x1<br> - rd : x29<br> - imm_val == 12<br>                                                               |[0x80000264]:UCLIP32 t4, ra, 12<br> [0x80000268]:csrrs ra, vxsat, zero<br> [0x8000026c]:sw t4, 152(t0)<br>     |
|  21|[0x800022b0]<br>0x00000000|- rs1 : x12<br> - rd : x16<br> - imm_val == 11<br> - rs1_w0_val == 2863311530<br>                               |[0x80000278]:UCLIP32 a6, a2, 11<br> [0x8000027c]:csrrs a2, vxsat, zero<br> [0x80000280]:sw a6, 160(t0)<br>     |
|  22|[0x800022b8]<br>0x00000000|- rs1 : x15<br> - rd : x11<br> - imm_val == 10<br>                                                              |[0x8000028c]:UCLIP32 a1, a5, 10<br> [0x80000290]:csrrs a5, vxsat, zero<br> [0x80000294]:sw a1, 168(t0)<br>     |
|  23|[0x800022c0]<br>0x000001FF|- rs1 : x30<br> - rd : x20<br> - imm_val == 9<br> - rs1_w0_val == 268435456<br>                                 |[0x8000029c]:UCLIP32 s4, t5, 9<br> [0x800002a0]:csrrs t5, vxsat, zero<br> [0x800002a4]:sw s4, 176(t0)<br>      |
|  24|[0x800022c8]<br>0x00000000|- rs1 : x29<br> - rd : x21<br> - imm_val == 8<br> - rs1_w0_val == 4294705151<br>                                |[0x800002b8]:UCLIP32 s5, t4, 8<br> [0x800002bc]:csrrs t4, vxsat, zero<br> [0x800002c0]:sw s5, 0(ra)<br>        |
|  25|[0x800022d0]<br>0x0000007F|- rs1 : x26<br> - rd : x12<br> - imm_val == 7<br> - rs1_w0_val == 16384<br>                                     |[0x800002c8]:UCLIP32 a2, s10, 7<br> [0x800002cc]:csrrs s10, vxsat, zero<br> [0x800002d0]:sw a2, 8(ra)<br>      |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x17<br> - rd : x23<br> - imm_val == 6<br> - rs1_w0_val == 4294967291<br>                                |[0x800002d8]:UCLIP32 s7, a7, 6<br> [0x800002dc]:csrrs a7, vxsat, zero<br> [0x800002e0]:sw s7, 16(ra)<br>       |
|  27|[0x800022e0]<br>0x00000009|- rs1 : x23<br> - rd : x14<br> - imm_val == 5<br>                                                               |[0x800002e8]:UCLIP32 a4, s7, 5<br> [0x800002ec]:csrrs s7, vxsat, zero<br> [0x800002f0]:sw a4, 24(ra)<br>       |
|  28|[0x800022e8]<br>0x00000000|- rs1 : x25<br> - rd : x26<br> - imm_val == 4<br> - rs1_w0_val == 3758096383<br>                                |[0x800002fc]:UCLIP32 s10, s9, 4<br> [0x80000300]:csrrs s9, vxsat, zero<br> [0x80000304]:sw s10, 32(ra)<br>     |
|  29|[0x800022f0]<br>0x00000000|- rs1 : x8<br> - rd : x30<br> - imm_val == 3<br> - rs1_w0_val == 4294967231<br>                                 |[0x8000030c]:UCLIP32 t5, fp, 3<br> [0x80000310]:csrrs fp, vxsat, zero<br> [0x80000314]:sw t5, 40(ra)<br>       |
|  30|[0x800022f8]<br>0x00000003|- rs1 : x18<br> - rd : x5<br> - imm_val == 2<br>                                                                |[0x8000031c]:UCLIP32 t0, s2, 2<br> [0x80000320]:csrrs s2, vxsat, zero<br> [0x80000324]:sw t0, 48(ra)<br>       |
|  31|[0x80002300]<br>0x00000001|- rs1 : x13<br> - rd : x3<br> - imm_val == 1<br> - rs1_w0_val == 1073741824<br>                                 |[0x8000032c]:UCLIP32 gp, a3, 1<br> [0x80000330]:csrrs a3, vxsat, zero<br> [0x80000334]:sw gp, 56(ra)<br>       |
|  32|[0x80002308]<br>0x00000000|- rs1 : x5<br> - rd : x9<br> - imm_val == 0<br>                                                                 |[0x80000340]:UCLIP32 s1, t0, 0<br> [0x80000344]:csrrs t0, vxsat, zero<br> [0x80000348]:sw s1, 64(ra)<br>       |
|  33|[0x80002310]<br>0x00FFFFFF|- rs1_w0_val == 1431655765<br>                                                                                  |[0x80000354]:UCLIP32 t6, t5, 24<br> [0x80000358]:csrrs t5, vxsat, zero<br> [0x8000035c]:sw t6, 72(ra)<br>      |
|  34|[0x80002318]<br>0x1FFFFFFF|- rs1_w0_val == 2147483647<br>                                                                                  |[0x80000368]:UCLIP32 t6, t5, 29<br> [0x8000036c]:csrrs t5, vxsat, zero<br> [0x80000370]:sw t6, 80(ra)<br>      |
|  35|[0x80002320]<br>0x00000000|- rs1_w0_val == 4026531839<br>                                                                                  |[0x8000037c]:UCLIP32 t6, t5, 12<br> [0x80000380]:csrrs t5, vxsat, zero<br> [0x80000384]:sw t6, 88(ra)<br>      |
|  36|[0x80002328]<br>0x00000000|- rs1_w0_val == 4261412863<br>                                                                                  |[0x80000390]:UCLIP32 t6, t5, 18<br> [0x80000394]:csrrs t5, vxsat, zero<br> [0x80000398]:sw t6, 96(ra)<br>      |
|  37|[0x80002330]<br>0x00000000|- rs1_w0_val == 4278190079<br>                                                                                  |[0x800003a4]:UCLIP32 t6, t5, 16<br> [0x800003a8]:csrrs t5, vxsat, zero<br> [0x800003ac]:sw t6, 104(ra)<br>     |
|  38|[0x80002338]<br>0x00000000|- rs1_w0_val == 4286578687<br>                                                                                  |[0x800003b8]:UCLIP32 t6, t5, 21<br> [0x800003bc]:csrrs t5, vxsat, zero<br> [0x800003c0]:sw t6, 112(ra)<br>     |
|  39|[0x80002340]<br>0x00000000|- rs1_w0_val == 4290772991<br>                                                                                  |[0x800003cc]:UCLIP32 t6, t5, 11<br> [0x800003d0]:csrrs t5, vxsat, zero<br> [0x800003d4]:sw t6, 120(ra)<br>     |
|  40|[0x80002348]<br>0x00000000|- rs1_w0_val == 4294443007<br>                                                                                  |[0x800003e0]:UCLIP32 t6, t5, 18<br> [0x800003e4]:csrrs t5, vxsat, zero<br> [0x800003e8]:sw t6, 128(ra)<br>     |
|  41|[0x80002350]<br>0x00000000|- rs1_w0_val == 4294836223<br>                                                                                  |[0x800003f4]:UCLIP32 t6, t5, 30<br> [0x800003f8]:csrrs t5, vxsat, zero<br> [0x800003fc]:sw t6, 136(ra)<br>     |
|  42|[0x80002358]<br>0x00000000|- rs1_w0_val == 4294901759<br>                                                                                  |[0x80000408]:UCLIP32 t6, t5, 6<br> [0x8000040c]:csrrs t5, vxsat, zero<br> [0x80000410]:sw t6, 144(ra)<br>      |
|  43|[0x80002360]<br>0x00000000|- rs1_w0_val == 4294950911<br>                                                                                  |[0x8000041c]:UCLIP32 t6, t5, 3<br> [0x80000420]:csrrs t5, vxsat, zero<br> [0x80000424]:sw t6, 152(ra)<br>      |
|  44|[0x80002368]<br>0x00000000|- rs1_w0_val == 4294963199<br>                                                                                  |[0x80000430]:UCLIP32 t6, t5, 29<br> [0x80000434]:csrrs t5, vxsat, zero<br> [0x80000438]:sw t6, 160(ra)<br>     |
|  45|[0x80002370]<br>0x00000000|- rs1_w0_val == 4294965247<br>                                                                                  |[0x80000444]:UCLIP32 t6, t5, 6<br> [0x80000448]:csrrs t5, vxsat, zero<br> [0x8000044c]:sw t6, 168(ra)<br>      |
|  46|[0x80002378]<br>0x00000000|- rs1_w0_val == 4294966271<br>                                                                                  |[0x80000454]:UCLIP32 t6, t5, 20<br> [0x80000458]:csrrs t5, vxsat, zero<br> [0x8000045c]:sw t6, 176(ra)<br>     |
|  47|[0x80002380]<br>0x00000000|- rs1_w0_val == 4294967293<br>                                                                                  |[0x80000464]:UCLIP32 t6, t5, 21<br> [0x80000468]:csrrs t5, vxsat, zero<br> [0x8000046c]:sw t6, 184(ra)<br>     |
|  48|[0x80002388]<br>0x00000000|- rs1_w0_val == 4294967294<br>                                                                                  |[0x80000474]:UCLIP32 t6, t5, 7<br> [0x80000478]:csrrs t5, vxsat, zero<br> [0x8000047c]:sw t6, 192(ra)<br>      |
|  49|[0x80002390]<br>0x00000000|- rs1_w0_val == 2147483648<br>                                                                                  |[0x80000484]:UCLIP32 t6, t5, 10<br> [0x80000488]:csrrs t5, vxsat, zero<br> [0x8000048c]:sw t6, 200(ra)<br>     |
|  50|[0x80002398]<br>0x000007FF|- rs1_w0_val == 536870912<br>                                                                                   |[0x80000494]:UCLIP32 t6, t5, 11<br> [0x80000498]:csrrs t5, vxsat, zero<br> [0x8000049c]:sw t6, 208(ra)<br>     |
|  51|[0x800023a0]<br>0x01000000|- rs1_w0_val == 16777216<br>                                                                                    |[0x800004a4]:UCLIP32 t6, t5, 31<br> [0x800004a8]:csrrs t5, vxsat, zero<br> [0x800004ac]:sw t6, 216(ra)<br>     |
|  52|[0x800023a8]<br>0x00003FFF|- rs1_w0_val == 8388608<br>                                                                                     |[0x800004b4]:UCLIP32 t6, t5, 14<br> [0x800004b8]:csrrs t5, vxsat, zero<br> [0x800004bc]:sw t6, 224(ra)<br>     |
|  53|[0x800023b0]<br>0x00000FFF|- rs1_w0_val == 4194304<br>                                                                                     |[0x800004c4]:UCLIP32 t6, t5, 12<br> [0x800004c8]:csrrs t5, vxsat, zero<br> [0x800004cc]:sw t6, 232(ra)<br>     |
|  54|[0x800023b8]<br>0x00007FFF|- rs1_w0_val == 2097152<br>                                                                                     |[0x800004d4]:UCLIP32 t6, t5, 15<br> [0x800004d8]:csrrs t5, vxsat, zero<br> [0x800004dc]:sw t6, 240(ra)<br>     |
|  55|[0x800023c0]<br>0x00100000|- rs1_w0_val == 1048576<br>                                                                                     |[0x800004e4]:UCLIP32 t6, t5, 25<br> [0x800004e8]:csrrs t5, vxsat, zero<br> [0x800004ec]:sw t6, 248(ra)<br>     |
|  56|[0x800023c8]<br>0x0007FFFF|- rs1_w0_val == 524288<br>                                                                                      |[0x800004f4]:UCLIP32 t6, t5, 19<br> [0x800004f8]:csrrs t5, vxsat, zero<br> [0x800004fc]:sw t6, 256(ra)<br>     |
|  57|[0x800023d0]<br>0x00040000|- rs1_w0_val == 262144<br>                                                                                      |[0x80000504]:UCLIP32 t6, t5, 28<br> [0x80000508]:csrrs t5, vxsat, zero<br> [0x8000050c]:sw t6, 264(ra)<br>     |
|  58|[0x800023d8]<br>0x0000001F|- rs1_w0_val == 131072<br>                                                                                      |[0x80000514]:UCLIP32 t6, t5, 5<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 272(ra)<br>      |
|  59|[0x800023e0]<br>0x00010000|- rs1_w0_val == 65536<br>                                                                                       |[0x80000524]:UCLIP32 t6, t5, 19<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 280(ra)<br>     |
|  60|[0x800023e8]<br>0x000001FF|- rs1_w0_val == 32768<br>                                                                                       |[0x80000534]:UCLIP32 t6, t5, 9<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 288(ra)<br>      |
|  61|[0x800023f0]<br>0x00002000|- rs1_w0_val == 8192<br>                                                                                        |[0x80000544]:UCLIP32 t6, t5, 28<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 296(ra)<br>     |
|  62|[0x800023f8]<br>0x00000001|- rs1_w0_val == 4096<br>                                                                                        |[0x80000554]:UCLIP32 t6, t5, 1<br> [0x80000558]:csrrs t5, vxsat, zero<br> [0x8000055c]:sw t6, 304(ra)<br>      |
|  63|[0x80002400]<br>0x00000004|- rs1_w0_val == 4<br>                                                                                           |[0x80000564]:UCLIP32 t6, t5, 12<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 312(ra)<br>     |
|  64|[0x80002408]<br>0x00000200|- rs1_w0_val == 512<br>                                                                                         |[0x80000574]:UCLIP32 t6, t5, 14<br> [0x80000578]:csrrs t5, vxsat, zero<br> [0x8000057c]:sw t6, 320(ra)<br>     |
|  65|[0x80002410]<br>0x00000002|- rs1_w0_val == 2<br>                                                                                           |[0x80000584]:UCLIP32 t6, t5, 24<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 328(ra)<br>     |
|  66|[0x80002418]<br>0x00000000|- rs1_w0_val == 4294967295<br>                                                                                  |[0x80000594]:UCLIP32 t6, t5, 30<br> [0x80000598]:csrrs t5, vxsat, zero<br> [0x8000059c]:sw t6, 336(ra)<br>     |
|  67|[0x80002420]<br>0x00000000|- rs1_w0_val == 4294967287<br>                                                                                  |[0x800005a4]:UCLIP32 t6, t5, 26<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 344(ra)<br>     |
|  68|[0x80002428]<br>0x00000010|- rs1_w0_val == 16<br>                                                                                          |[0x800005b4]:UCLIP32 t6, t5, 5<br> [0x800005b8]:csrrs t5, vxsat, zero<br> [0x800005bc]:sw t6, 352(ra)<br>      |
|  69|[0x80002430]<br>0x00000800|- rs1_w0_val == 2048<br>                                                                                        |[0x800005c8]:UCLIP32 t6, t5, 26<br> [0x800005cc]:csrrs t5, vxsat, zero<br> [0x800005d0]:sw t6, 360(ra)<br>     |
|  70|[0x80002438]<br>0x00000400|- rs1_w0_val == 1024<br>                                                                                        |[0x800005d8]:UCLIP32 t6, t5, 23<br> [0x800005dc]:csrrs t5, vxsat, zero<br> [0x800005e0]:sw t6, 368(ra)<br>     |
|  71|[0x80002440]<br>0x00000000|- rs1_w0_val == 4294966783<br>                                                                                  |[0x800005e8]:UCLIP32 t6, t5, 4<br> [0x800005ec]:csrrs t5, vxsat, zero<br> [0x800005f0]:sw t6, 376(ra)<br>      |
|  72|[0x80002448]<br>0x00000000|- rs1_w0_val == 4294967039<br>                                                                                  |[0x800005f8]:UCLIP32 t6, t5, 13<br> [0x800005fc]:csrrs t5, vxsat, zero<br> [0x80000600]:sw t6, 384(ra)<br>     |
|  73|[0x80002450]<br>0x00000080|- rs1_w0_val == 128<br>                                                                                         |[0x80000608]:UCLIP32 t6, t5, 13<br> [0x8000060c]:csrrs t5, vxsat, zero<br> [0x80000610]:sw t6, 392(ra)<br>     |
|  74|[0x80002458]<br>0x00000007|- rs1_w0_val == 64<br>                                                                                          |[0x80000618]:UCLIP32 t6, t5, 3<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 400(ra)<br>      |
|  75|[0x80002460]<br>0x00000000|- rs1_w0_val == 4294967263<br>                                                                                  |[0x80000628]:UCLIP32 t6, t5, 1<br> [0x8000062c]:csrrs t5, vxsat, zero<br> [0x80000630]:sw t6, 408(ra)<br>      |
|  76|[0x80002468]<br>0x00000000|- rs1_w0_val == 4294967279<br>                                                                                  |[0x80000638]:UCLIP32 t6, t5, 9<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 416(ra)<br>      |
|  77|[0x80002470]<br>0x00000008|- rs1_w0_val == 8<br>                                                                                           |[0x80000648]:UCLIP32 t6, t5, 8<br> [0x8000064c]:csrrs t5, vxsat, zero<br> [0x80000650]:sw t6, 424(ra)<br>      |
