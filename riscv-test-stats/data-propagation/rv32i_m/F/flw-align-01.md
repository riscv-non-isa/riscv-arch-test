
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000530')]      |
| SIG_REGION                | [('0x80002204', '0x80002304', '64 words')]      |
| COV_LABELS                | flw-align      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/flw-align-01.S/ref.S    |
| Total Number of coverpoints| 75     |
| Total Coverpoints Hit     | 71      |
| Total Signature Updates   | 64      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 32     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : flw', 'rs1 : x26', 'rd : f18', 'ea_align == 0 and (imm_val % 4) == 0', 'imm_val > 0']
Last Code Sequence : 
	-[0x80000118]:flw fs2, 512(s10)
	-[0x8000011c]:addi zero, zero, 0
	-[0x80000120]:addi zero, zero, 0
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:fsw fs2, 0(a5)
Current Store : [0x8000012c] : sw a7, 4(a5) -- Store: [0x80002208]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rd : f28', 'ea_align == 0 and (imm_val % 4) == 1', 'imm_val < 0']
Last Code Sequence : 
	-[0x80000138]:flw ft8, 4093(tp)
	-[0x8000013c]:addi zero, zero, 0
	-[0x80000140]:addi zero, zero, 0
	-[0x80000144]:csrrs a7, fflags, zero
	-[0x80000148]:fsw ft8, 8(a5)
Current Store : [0x8000014c] : sw a7, 12(a5) -- Store: [0x80002210]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rd : f21', 'ea_align == 0 and (imm_val % 4) == 2']
Last Code Sequence : 
	-[0x80000158]:flw fs5, 4086(fp)
	-[0x8000015c]:addi zero, zero, 0
	-[0x80000160]:addi zero, zero, 0
	-[0x80000164]:csrrs a7, fflags, zero
	-[0x80000168]:fsw fs5, 16(a5)
Current Store : [0x8000016c] : sw a7, 20(a5) -- Store: [0x80002218]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rd : f12', 'ea_align == 0 and (imm_val % 4) == 3']
Last Code Sequence : 
	-[0x80000178]:flw fa2, 3583(t5)
	-[0x8000017c]:addi zero, zero, 0
	-[0x80000180]:addi zero, zero, 0
	-[0x80000184]:csrrs a7, fflags, zero
	-[0x80000188]:fsw fa2, 24(a5)
Current Store : [0x8000018c] : sw a7, 28(a5) -- Store: [0x80002220]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rd : f29', 'imm_val == 0']
Last Code Sequence : 
	-[0x80000198]:flw ft9, 0(s2)
	-[0x8000019c]:addi zero, zero, 0
	-[0x800001a0]:addi zero, zero, 0
	-[0x800001a4]:csrrs a7, fflags, zero
	-[0x800001a8]:fsw ft9, 32(a5)
Current Store : [0x800001ac] : sw a7, 36(a5) -- Store: [0x80002228]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rd : f14']
Last Code Sequence : 
	-[0x800001b8]:flw fa4, 2048(ra)
	-[0x800001bc]:addi zero, zero, 0
	-[0x800001c0]:addi zero, zero, 0
	-[0x800001c4]:csrrs a7, fflags, zero
	-[0x800001c8]:fsw fa4, 40(a5)
Current Store : [0x800001cc] : sw a7, 44(a5) -- Store: [0x80002230]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rd : f30']
Last Code Sequence : 
	-[0x800001d8]:flw ft10, 2048(sp)
	-[0x800001dc]:addi zero, zero, 0
	-[0x800001e0]:addi zero, zero, 0
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:fsw ft10, 48(a5)
Current Store : [0x800001ec] : sw a7, 52(a5) -- Store: [0x80002238]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rd : f9']
Last Code Sequence : 
	-[0x80000200]:flw fs1, 2048(a5)
	-[0x80000204]:addi zero, zero, 0
	-[0x80000208]:addi zero, zero, 0
	-[0x8000020c]:csrrs s5, fflags, zero
	-[0x80000210]:fsw fs1, 0(s3)
Current Store : [0x80000214] : sw s5, 4(s3) -- Store: [0x80002240]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rd : f15']
Last Code Sequence : 
	-[0x80000228]:flw fa5, 2048(t6)
	-[0x8000022c]:addi zero, zero, 0
	-[0x80000230]:addi zero, zero, 0
	-[0x80000234]:csrrs a7, fflags, zero
	-[0x80000238]:fsw fa5, 0(a5)
Current Store : [0x8000023c] : sw a7, 4(a5) -- Store: [0x80002248]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rd : f5']
Last Code Sequence : 
	-[0x80000248]:flw ft5, 2048(a3)
	-[0x8000024c]:addi zero, zero, 0
	-[0x80000250]:addi zero, zero, 0
	-[0x80000254]:csrrs a7, fflags, zero
	-[0x80000258]:fsw ft5, 8(a5)
Current Store : [0x8000025c] : sw a7, 12(a5) -- Store: [0x80002250]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rd : f7']
Last Code Sequence : 
	-[0x80000268]:flw ft7, 2048(gp)
	-[0x8000026c]:addi zero, zero, 0
	-[0x80000270]:addi zero, zero, 0
	-[0x80000274]:csrrs a7, fflags, zero
	-[0x80000278]:fsw ft7, 16(a5)
Current Store : [0x8000027c] : sw a7, 20(a5) -- Store: [0x80002258]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rd : f31']
Last Code Sequence : 
	-[0x80000288]:flw ft11, 2048(t1)
	-[0x8000028c]:addi zero, zero, 0
	-[0x80000290]:addi zero, zero, 0
	-[0x80000294]:csrrs a7, fflags, zero
	-[0x80000298]:fsw ft11, 24(a5)
Current Store : [0x8000029c] : sw a7, 28(a5) -- Store: [0x80002260]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rd : f24']
Last Code Sequence : 
	-[0x800002b0]:flw fs8, 2048(a6)
	-[0x800002b4]:addi zero, zero, 0
	-[0x800002b8]:addi zero, zero, 0
	-[0x800002bc]:csrrs s5, fflags, zero
	-[0x800002c0]:fsw fs8, 0(s3)
Current Store : [0x800002c4] : sw s5, 4(s3) -- Store: [0x80002268]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rd : f26']
Last Code Sequence : 
	-[0x800002d0]:flw fs10, 2048(a7)
	-[0x800002d4]:addi zero, zero, 0
	-[0x800002d8]:addi zero, zero, 0
	-[0x800002dc]:csrrs s5, fflags, zero
	-[0x800002e0]:fsw fs10, 8(s3)
Current Store : [0x800002e4] : sw s5, 12(s3) -- Store: [0x80002270]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rd : f0']
Last Code Sequence : 
	-[0x800002f8]:flw ft0, 2048(t3)
	-[0x800002fc]:addi zero, zero, 0
	-[0x80000300]:addi zero, zero, 0
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:fsw ft0, 0(a5)
Current Store : [0x8000030c] : sw a7, 4(a5) -- Store: [0x80002278]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rd : f13']
Last Code Sequence : 
	-[0x80000318]:flw fa3, 2048(s7)
	-[0x8000031c]:addi zero, zero, 0
	-[0x80000320]:addi zero, zero, 0
	-[0x80000324]:csrrs a7, fflags, zero
	-[0x80000328]:fsw fa3, 8(a5)
Current Store : [0x8000032c] : sw a7, 12(a5) -- Store: [0x80002280]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rd : f10']
Last Code Sequence : 
	-[0x80000338]:flw fa0, 2048(t2)
	-[0x8000033c]:addi zero, zero, 0
	-[0x80000340]:addi zero, zero, 0
	-[0x80000344]:csrrs a7, fflags, zero
	-[0x80000348]:fsw fa0, 16(a5)
Current Store : [0x8000034c] : sw a7, 20(a5) -- Store: [0x80002288]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rd : f11']
Last Code Sequence : 
	-[0x80000358]:flw fa1, 2048(a0)
	-[0x8000035c]:addi zero, zero, 0
	-[0x80000360]:addi zero, zero, 0
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:fsw fa1, 24(a5)
Current Store : [0x8000036c] : sw a7, 28(a5) -- Store: [0x80002290]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rd : f6']
Last Code Sequence : 
	-[0x80000378]:flw ft6, 2048(s9)
	-[0x8000037c]:addi zero, zero, 0
	-[0x80000380]:addi zero, zero, 0
	-[0x80000384]:csrrs a7, fflags, zero
	-[0x80000388]:fsw ft6, 32(a5)
Current Store : [0x8000038c] : sw a7, 36(a5) -- Store: [0x80002298]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rd : f20']
Last Code Sequence : 
	-[0x80000398]:flw fs4, 2048(s5)
	-[0x8000039c]:addi zero, zero, 0
	-[0x800003a0]:addi zero, zero, 0
	-[0x800003a4]:csrrs a7, fflags, zero
	-[0x800003a8]:fsw fs4, 40(a5)
Current Store : [0x800003ac] : sw a7, 44(a5) -- Store: [0x800022a0]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rd : f17']
Last Code Sequence : 
	-[0x800003b8]:flw fa7, 2048(a1)
	-[0x800003bc]:addi zero, zero, 0
	-[0x800003c0]:addi zero, zero, 0
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:fsw fa7, 48(a5)
Current Store : [0x800003cc] : sw a7, 52(a5) -- Store: [0x800022a8]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rd : f23']
Last Code Sequence : 
	-[0x800003d8]:flw fs7, 2048(s11)
	-[0x800003dc]:addi zero, zero, 0
	-[0x800003e0]:addi zero, zero, 0
	-[0x800003e4]:csrrs a7, fflags, zero
	-[0x800003e8]:fsw fs7, 56(a5)
Current Store : [0x800003ec] : sw a7, 60(a5) -- Store: [0x800022b0]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rd : f19']
Last Code Sequence : 
	-[0x800003f8]:flw fs3, 2048(a2)
	-[0x800003fc]:addi zero, zero, 0
	-[0x80000400]:addi zero, zero, 0
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsw fs3, 64(a5)
Current Store : [0x8000040c] : sw a7, 68(a5) -- Store: [0x800022b8]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rd : f22']
Last Code Sequence : 
	-[0x80000418]:flw fs6, 2048(s6)
	-[0x8000041c]:addi zero, zero, 0
	-[0x80000420]:addi zero, zero, 0
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:fsw fs6, 72(a5)
Current Store : [0x8000042c] : sw a7, 76(a5) -- Store: [0x800022c0]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rd : f8']
Last Code Sequence : 
	-[0x80000438]:flw fs0, 2048(s8)
	-[0x8000043c]:addi zero, zero, 0
	-[0x80000440]:addi zero, zero, 0
	-[0x80000444]:csrrs a7, fflags, zero
	-[0x80000448]:fsw fs0, 80(a5)
Current Store : [0x8000044c] : sw a7, 84(a5) -- Store: [0x800022c8]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rd : f27']
Last Code Sequence : 
	-[0x80000458]:flw fs11, 2048(s1)
	-[0x8000045c]:addi zero, zero, 0
	-[0x80000460]:addi zero, zero, 0
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsw fs11, 88(a5)
Current Store : [0x8000046c] : sw a7, 92(a5) -- Store: [0x800022d0]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rd : f25']
Last Code Sequence : 
	-[0x80000478]:flw fs9, 2048(t4)
	-[0x8000047c]:addi zero, zero, 0
	-[0x80000480]:addi zero, zero, 0
	-[0x80000484]:csrrs a7, fflags, zero
	-[0x80000488]:fsw fs9, 96(a5)
Current Store : [0x8000048c] : sw a7, 100(a5) -- Store: [0x800022d8]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rd : f1']
Last Code Sequence : 
	-[0x80000498]:flw ft1, 2048(s4)
	-[0x8000049c]:addi zero, zero, 0
	-[0x800004a0]:addi zero, zero, 0
	-[0x800004a4]:csrrs a7, fflags, zero
	-[0x800004a8]:fsw ft1, 104(a5)
Current Store : [0x800004ac] : sw a7, 108(a5) -- Store: [0x800022e0]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rd : f4']
Last Code Sequence : 
	-[0x800004b8]:flw ft4, 2048(t0)
	-[0x800004bc]:addi zero, zero, 0
	-[0x800004c0]:addi zero, zero, 0
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsw ft4, 112(a5)
Current Store : [0x800004cc] : sw a7, 116(a5) -- Store: [0x800022e8]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rd : f3']
Last Code Sequence : 
	-[0x800004d8]:flw ft3, 2048(a4)
	-[0x800004dc]:addi zero, zero, 0
	-[0x800004e0]:addi zero, zero, 0
	-[0x800004e4]:csrrs a7, fflags, zero
	-[0x800004e8]:fsw ft3, 120(a5)
Current Store : [0x800004ec] : sw a7, 124(a5) -- Store: [0x800022f0]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rd : f16']
Last Code Sequence : 
	-[0x800004f8]:flw fa6, 2048(s3)
	-[0x800004fc]:addi zero, zero, 0
	-[0x80000500]:addi zero, zero, 0
	-[0x80000504]:csrrs a7, fflags, zero
	-[0x80000508]:fsw fa6, 128(a5)
Current Store : [0x8000050c] : sw a7, 132(a5) -- Store: [0x800022f8]:0x00000000




Last Coverpoint : ['rd : f2']
Last Code Sequence : 
	-[0x80000518]:flw ft2, 2048(a2)
	-[0x8000051c]:addi zero, zero, 0
	-[0x80000520]:addi zero, zero, 0
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsw ft2, 136(a5)
Current Store : [0x8000052c] : sw a7, 140(a5) -- Store: [0x80002300]:0x00000000





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

|s.no|        signature         |                                                  coverpoints                                                  |                                                                                         code                                                                                         |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xDF56FF76|- opcode : flw<br> - rs1 : x26<br> - rd : f18<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x80000118]:flw fs2, 512(s10)<br> [0x8000011c]:addi zero, zero, 0<br> [0x80000120]:addi zero, zero, 0<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:fsw fs2, 0(a5)<br>    |
|   2|[0x8000220c]<br>0xDDB7D5BF|- rs1 : x4<br> - rd : f28<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val < 0<br>                     |[0x80000138]:flw ft8, 4093(tp)<br> [0x8000013c]:addi zero, zero, 0<br> [0x80000140]:addi zero, zero, 0<br> [0x80000144]:csrrs a7, fflags, zero<br> [0x80000148]:fsw ft8, 8(a5)<br>    |
|   3|[0x80002214]<br>0xDBEADFEE|- rs1 : x8<br> - rd : f21<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                       |[0x80000158]:flw fs5, 4086(fp)<br> [0x8000015c]:addi zero, zero, 0<br> [0x80000160]:addi zero, zero, 0<br> [0x80000164]:csrrs a7, fflags, zero<br> [0x80000168]:fsw fs5, 16(a5)<br>   |
|   4|[0x8000221c]<br>0xD5BFDDB7|- rs1 : x30<br> - rd : f12<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                      |[0x80000178]:flw fa2, 3583(t5)<br> [0x8000017c]:addi zero, zero, 0<br> [0x80000180]:addi zero, zero, 0<br> [0x80000184]:csrrs a7, fflags, zero<br> [0x80000188]:fsw fa2, 24(a5)<br>   |
|   5|[0x80002224]<br>0xEEDBEADF|- rs1 : x18<br> - rd : f29<br> - imm_val == 0<br>                                                              |[0x80000198]:flw ft9, 0(s2)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br> [0x800001a4]:csrrs a7, fflags, zero<br> [0x800001a8]:fsw ft9, 32(a5)<br>      |
|   6|[0x8000222c]<br>0xF56FF76D|- rs1 : x1<br> - rd : f14<br>                                                                                  |[0x800001b8]:flw fa4, 2048(ra)<br> [0x800001bc]:addi zero, zero, 0<br> [0x800001c0]:addi zero, zero, 0<br> [0x800001c4]:csrrs a7, fflags, zero<br> [0x800001c8]:fsw fa4, 40(a5)<br>   |
|   7|[0x80002234]<br>0x80002201|- rs1 : x2<br> - rd : f30<br>                                                                                  |[0x800001d8]:flw ft10, 2048(sp)<br> [0x800001dc]:addi zero, zero, 0<br> [0x800001e0]:addi zero, zero, 0<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:fsw ft10, 48(a5)<br> |
|   8|[0x8000223c]<br>0xADFEEDBE|- rs1 : x15<br> - rd : f9<br>                                                                                  |[0x80000200]:flw fs1, 2048(a5)<br> [0x80000204]:addi zero, zero, 0<br> [0x80000208]:addi zero, zero, 0<br> [0x8000020c]:csrrs s5, fflags, zero<br> [0x80000210]:fsw fs1, 0(s3)<br>    |
|   9|[0x80002244]<br>0x80002244|- rs1 : x31<br> - rd : f15<br>                                                                                 |[0x80000228]:flw fa5, 2048(t6)<br> [0x8000022c]:addi zero, zero, 0<br> [0x80000230]:addi zero, zero, 0<br> [0x80000234]:csrrs a7, fflags, zero<br> [0x80000238]:fsw fa5, 0(a5)<br>    |
|  10|[0x8000224c]<br>0x800000F8|- rs1 : x13<br> - rd : f5<br>                                                                                  |[0x80000248]:flw ft5, 2048(a3)<br> [0x8000024c]:addi zero, zero, 0<br> [0x80000250]:addi zero, zero, 0<br> [0x80000254]:csrrs a7, fflags, zero<br> [0x80000258]:fsw ft5, 8(a5)<br>    |
|  11|[0x80002254]<br>0xB7FBB6FA|- rs1 : x3<br> - rd : f7<br>                                                                                   |[0x80000268]:flw ft7, 2048(gp)<br> [0x8000026c]:addi zero, zero, 0<br> [0x80000270]:addi zero, zero, 0<br> [0x80000274]:csrrs a7, fflags, zero<br> [0x80000278]:fsw ft7, 16(a5)<br>   |
|  12|[0x8000225c]<br>0x80002800|- rs1 : x6<br> - rd : f31<br>                                                                                  |[0x80000288]:flw ft11, 2048(t1)<br> [0x8000028c]:addi zero, zero, 0<br> [0x80000290]:addi zero, zero, 0<br> [0x80000294]:csrrs a7, fflags, zero<br> [0x80000298]:fsw ft11, 24(a5)<br> |
|  13|[0x80002264]<br>0xDB7D5BFD|- rs1 : x16<br> - rd : f24<br>                                                                                 |[0x800002b0]:flw fs8, 2048(a6)<br> [0x800002b4]:addi zero, zero, 0<br> [0x800002b8]:addi zero, zero, 0<br> [0x800002bc]:csrrs s5, fflags, zero<br> [0x800002c0]:fsw fs8, 0(s3)<br>    |
|  14|[0x8000226c]<br>0x80001E00|- rs1 : x17<br> - rd : f26<br>                                                                                 |[0x800002d0]:flw fs10, 2048(a7)<br> [0x800002d4]:addi zero, zero, 0<br> [0x800002d8]:addi zero, zero, 0<br> [0x800002dc]:csrrs s5, fflags, zero<br> [0x800002e0]:fsw fs10, 8(s3)<br>  |
|  15|[0x80002274]<br>0x00000000|- rs1 : x28<br> - rd : f0<br>                                                                                  |[0x800002f8]:flw ft0, 2048(t3)<br> [0x800002fc]:addi zero, zero, 0<br> [0x80000300]:addi zero, zero, 0<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:fsw ft0, 0(a5)<br>    |
|  16|[0x8000227c]<br>0x80002800|- rs1 : x23<br> - rd : f13<br>                                                                                 |[0x80000318]:flw fa3, 2048(s7)<br> [0x8000031c]:addi zero, zero, 0<br> [0x80000320]:addi zero, zero, 0<br> [0x80000324]:csrrs a7, fflags, zero<br> [0x80000328]:fsw fa3, 8(a5)<br>    |
|  17|[0x80002284]<br>0x56FF76DF|- rs1 : x7<br> - rd : f10<br>                                                                                  |[0x80000338]:flw fa0, 2048(t2)<br> [0x8000033c]:addi zero, zero, 0<br> [0x80000340]:addi zero, zero, 0<br> [0x80000344]:csrrs a7, fflags, zero<br> [0x80000348]:fsw fa0, 16(a5)<br>   |
|  18|[0x8000228c]<br>0xAB7FBB6F|- rs1 : x10<br> - rd : f11<br>                                                                                 |[0x80000358]:flw fa1, 2048(a0)<br> [0x8000035c]:addi zero, zero, 0<br> [0x80000360]:addi zero, zero, 0<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:fsw fa1, 24(a5)<br>   |
|  19|[0x80002294]<br>0x80002800|- rs1 : x25<br> - rd : f6<br>                                                                                  |[0x80000378]:flw ft6, 2048(s9)<br> [0x8000037c]:addi zero, zero, 0<br> [0x80000380]:addi zero, zero, 0<br> [0x80000384]:csrrs a7, fflags, zero<br> [0x80000388]:fsw ft6, 32(a5)<br>   |
|  20|[0x8000229c]<br>0xB7D5BFDD|- rs1 : x21<br> - rd : f20<br>                                                                                 |[0x80000398]:flw fs4, 2048(s5)<br> [0x8000039c]:addi zero, zero, 0<br> [0x800003a0]:addi zero, zero, 0<br> [0x800003a4]:csrrs a7, fflags, zero<br> [0x800003a8]:fsw fs4, 40(a5)<br>   |
|  21|[0x800022a4]<br>0x00000000|- rs1 : x11<br> - rd : f17<br>                                                                                 |[0x800003b8]:flw fa7, 2048(a1)<br> [0x800003bc]:addi zero, zero, 0<br> [0x800003c0]:addi zero, zero, 0<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:fsw fa7, 48(a5)<br>   |
|  22|[0x800022ac]<br>0x80002800|- rs1 : x27<br> - rd : f23<br>                                                                                 |[0x800003d8]:flw fs7, 2048(s11)<br> [0x800003dc]:addi zero, zero, 0<br> [0x800003e0]:addi zero, zero, 0<br> [0x800003e4]:csrrs a7, fflags, zero<br> [0x800003e8]:fsw fs7, 56(a5)<br>  |
|  23|[0x800022b4]<br>0x80002264|- rs1 : x12<br> - rd : f19<br>                                                                                 |[0x800003f8]:flw fs3, 2048(a2)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi zero, zero, 0<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsw fs3, 64(a5)<br>   |
|  24|[0x800022bc]<br>0x80002800|- rs1 : x22<br> - rd : f22<br>                                                                                 |[0x80000418]:flw fs6, 2048(s6)<br> [0x8000041c]:addi zero, zero, 0<br> [0x80000420]:addi zero, zero, 0<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:fsw fs6, 72(a5)<br>   |
|  25|[0x800022c4]<br>0x8000200A|- rs1 : x24<br> - rd : f8<br>                                                                                  |[0x80000438]:flw fs0, 2048(s8)<br> [0x8000043c]:addi zero, zero, 0<br> [0x80000440]:addi zero, zero, 0<br> [0x80000444]:csrrs a7, fflags, zero<br> [0x80000448]:fsw fs0, 80(a5)<br>   |
|  26|[0x800022cc]<br>0x80002800|- rs1 : x9<br> - rd : f27<br>                                                                                  |[0x80000458]:flw fs11, 2048(s1)<br> [0x8000045c]:addi zero, zero, 0<br> [0x80000460]:addi zero, zero, 0<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsw fs11, 88(a5)<br> |
|  27|[0x800022d4]<br>0x80002800|- rs1 : x29<br> - rd : f25<br>                                                                                 |[0x80000478]:flw fs9, 2048(t4)<br> [0x8000047c]:addi zero, zero, 0<br> [0x80000480]:addi zero, zero, 0<br> [0x80000484]:csrrs a7, fflags, zero<br> [0x80000488]:fsw fs9, 96(a5)<br>   |
|  28|[0x800022dc]<br>0x80002800|- rs1 : x20<br> - rd : f1<br>                                                                                  |[0x80000498]:flw ft1, 2048(s4)<br> [0x8000049c]:addi zero, zero, 0<br> [0x800004a0]:addi zero, zero, 0<br> [0x800004a4]:csrrs a7, fflags, zero<br> [0x800004a8]:fsw ft1, 104(a5)<br>  |
|  29|[0x800022e4]<br>0x80002003|- rs1 : x5<br> - rd : f4<br>                                                                                   |[0x800004b8]:flw ft4, 2048(t0)<br> [0x800004bc]:addi zero, zero, 0<br> [0x800004c0]:addi zero, zero, 0<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsw ft4, 112(a5)<br>  |
|  30|[0x800022ec]<br>0x80002800|- rs1 : x14<br> - rd : f3<br>                                                                                  |[0x800004d8]:flw ft3, 2048(a4)<br> [0x800004dc]:addi zero, zero, 0<br> [0x800004e0]:addi zero, zero, 0<br> [0x800004e4]:csrrs a7, fflags, zero<br> [0x800004e8]:fsw ft3, 120(a5)<br>  |
|  31|[0x800022f4]<br>0x80002800|- rs1 : x19<br> - rd : f16<br>                                                                                 |[0x800004f8]:flw fa6, 2048(s3)<br> [0x800004fc]:addi zero, zero, 0<br> [0x80000500]:addi zero, zero, 0<br> [0x80000504]:csrrs a7, fflags, zero<br> [0x80000508]:fsw fa6, 128(a5)<br>  |
|  32|[0x800022fc]<br>0x80002800|- rd : f2<br>                                                                                                  |[0x80000518]:flw ft2, 2048(a2)<br> [0x8000051c]:addi zero, zero, 0<br> [0x80000520]:addi zero, zero, 0<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsw ft2, 136(a5)<br>  |
