
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000650')]      |
| SIG_REGION                | [('0x80002204', '0x80002304', '64 words')]      |
| COV_LABELS                | fsw-align      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/fsw-align-01.S/ref.S    |
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
Last Coverpoint : ['opcode : fsw', 'rs1 : x9', 'rs2 : f28', 'ea_align == 0 and (imm_val % 4) == 0', 'imm_val < 0']
Last Code Sequence : 
	-[0x80000128]:fsw ft8, 4092(s1)
Current Store : [0x80000138] : sw a7, 0(a5) -- Store: [0x80002204]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : f5', 'ea_align == 0 and (imm_val % 4) == 1', 'imm_val > 0']
Last Code Sequence : 
	-[0x80000150]:fsw ft5, 1(s8)
Current Store : [0x80000160] : sw a7, 8(a5) -- Store: [0x8000220c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : f2', 'ea_align == 0 and (imm_val % 4) == 2']
Last Code Sequence : 
	-[0x80000178]:fsw ft2, 2730(a0)
Current Store : [0x80000188] : sw a7, 16(a5) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : f16', 'ea_align == 0 and (imm_val % 4) == 3']
Last Code Sequence : 
	-[0x800001a0]:fsw fa6, 3071(s7)
Current Store : [0x800001b0] : sw a7, 24(a5) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : f20', 'imm_val == 0']
Last Code Sequence : 
	-[0x800001c8]:fsw fs4, 0(t3)
Current Store : [0x800001d8] : sw a7, 32(a5) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : f1']
Last Code Sequence : 
	-[0x800001f0]:fsw ft1, 2048(t5)
Current Store : [0x80000200] : sw a7, 40(a5) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : f23']
Last Code Sequence : 
	-[0x80000218]:fsw fs7, 2048(t0)
Current Store : [0x80000228] : sw a7, 48(a5) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : f15']
Last Code Sequence : 
	-[0x80000240]:fsw fa5, 2048(s2)
Current Store : [0x80000250] : sw a7, 56(a5) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : f0']
Last Code Sequence : 
	-[0x80000268]:fsw ft0, 2048(fp)
Current Store : [0x80000278] : sw a7, 64(a5) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : f14']
Last Code Sequence : 
	-[0x80000290]:fsw fa4, 2048(a1)
Current Store : [0x800002a0] : sw a7, 72(a5) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : f26']
Last Code Sequence : 
	-[0x800002c0]:fsw fs10, 2048(a7)
Current Store : [0x800002d0] : sw s5, 0(s3) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : f25']
Last Code Sequence : 
	-[0x800002f0]:fsw fs9, 2048(t1)
Current Store : [0x80000300] : sw a7, 0(a5) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : f12']
Last Code Sequence : 
	-[0x80000318]:fsw fa2, 2048(tp)
Current Store : [0x80000328] : sw a7, 8(a5) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : f11']
Last Code Sequence : 
	-[0x80000340]:fsw fa1, 2048(t2)
Current Store : [0x80000350] : sw a7, 16(a5) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : f7']
Last Code Sequence : 
	-[0x80000368]:fsw ft7, 2048(s4)
Current Store : [0x80000378] : sw a7, 24(a5) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : f13']
Last Code Sequence : 
	-[0x80000390]:fsw fa3, 2048(ra)
Current Store : [0x800003a0] : sw a7, 32(a5) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : f29']
Last Code Sequence : 
	-[0x800003b8]:fsw ft9, 2048(gp)
Current Store : [0x800003c8] : sw a7, 40(a5) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : f18']
Last Code Sequence : 
	-[0x800003e0]:fsw fs2, 2048(s9)
Current Store : [0x800003f0] : sw a7, 48(a5) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : f8']
Last Code Sequence : 
	-[0x80000408]:fsw fs0, 2048(s10)
Current Store : [0x80000418] : sw a7, 56(a5) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : f31']
Last Code Sequence : 
	-[0x80000430]:fsw ft11, 2048(t6)
Current Store : [0x80000440] : sw a7, 64(a5) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : f27']
Last Code Sequence : 
	-[0x80000458]:fsw fs11, 2048(t4)
Current Store : [0x80000468] : sw a7, 72(a5) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : f10']
Last Code Sequence : 
	-[0x80000480]:fsw fa0, 2048(s3)
Current Store : [0x80000490] : sw a7, 80(a5) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : f4']
Last Code Sequence : 
	-[0x800004a8]:fsw ft4, 2048(a4)
Current Store : [0x800004b8] : sw a7, 88(a5) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : f9']
Last Code Sequence : 
	-[0x800004d0]:fsw fs1, 2048(s11)
Current Store : [0x800004e0] : sw a7, 96(a5) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : f24']
Last Code Sequence : 
	-[0x800004f8]:fsw fs8, 2048(s6)
Current Store : [0x80000508] : sw a7, 104(a5) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : f17']
Last Code Sequence : 
	-[0x80000520]:fsw fa7, 2048(a3)
Current Store : [0x80000530] : sw a7, 112(a5) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : f6']
Last Code Sequence : 
	-[0x80000550]:fsw ft6, 2048(a5)
Current Store : [0x80000560] : sw s5, 0(s3) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : f21']
Last Code Sequence : 
	-[0x80000580]:fsw fs5, 2048(s5)
Current Store : [0x80000590] : sw a7, 0(a5) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : f3']
Last Code Sequence : 
	-[0x800005a8]:fsw ft3, 2048(a2)
Current Store : [0x800005b8] : sw a7, 8(a5) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : f19']
Last Code Sequence : 
	-[0x800005d8]:fsw fs3, 2048(a6)
Current Store : [0x800005e8] : sw s5, 0(s3) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : f30']
Last Code Sequence : 
	-[0x80000608]:fsw ft10, 2048(sp)
Current Store : [0x80000618] : sw a7, 0(a5) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs2 : f22']
Last Code Sequence : 
	-[0x80000630]:fsw fs6, 2048(s11)
Current Store : [0x80000640] : sw a7, 8(a5) -- Store: [0x800022fc]:0x00000000





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

|s.no|        signature         |                                                  coverpoints                                                  |                code                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------|------------------------------------|
|   1|[0x80002204]<br>0xDDB7D5BF|- opcode : fsw<br> - rs1 : x9<br> - rs2 : f28<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val < 0<br> |[0x80000128]:fsw ft8, 4092(s1)<br>  |
|   2|[0x8000220c]<br>0x800000F8|- rs1 : x24<br> - rs2 : f5<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val > 0<br>                    |[0x80000150]:fsw ft5, 1(s8)<br>     |
|   3|[0x80002214]<br>0x00006000|- rs1 : x10<br> - rs2 : f2<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                      |[0x80000178]:fsw ft2, 2730(a0)<br>  |
|   4|[0x8000221c]<br>0x7D5BFDDB|- rs1 : x23<br> - rs2 : f16<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                     |[0x800001a0]:fsw fa6, 3071(s7)<br>  |
|   5|[0x80002224]<br>0xB7D5BFDD|- rs1 : x28<br> - rs2 : f20<br> - imm_val == 0<br>                                                             |[0x800001c8]:fsw fs4, 0(t3)<br>     |
|   6|[0x8000222c]<br>0xFEEDBEAD|- rs1 : x30<br> - rs2 : f1<br>                                                                                 |[0x800001f0]:fsw ft1, 2048(t5)<br>  |
|   7|[0x80002234]<br>0x8000261D|- rs1 : x5<br> - rs2 : f23<br>                                                                                 |[0x80000218]:fsw fs7, 2048(t0)<br>  |
|   8|[0x8000223c]<br>0x80002204|- rs1 : x18<br> - rs2 : f15<br>                                                                                |[0x80000240]:fsw fa5, 2048(s2)<br>  |
|   9|[0x80002244]<br>0x00000000|- rs1 : x8<br> - rs2 : f0<br>                                                                                  |[0x80000268]:fsw ft0, 2048(fp)<br>  |
|  10|[0x8000224c]<br>0xF56FF76D|- rs1 : x11<br> - rs2 : f14<br>                                                                                |[0x80000290]:fsw fa4, 2048(a1)<br>  |
|  11|[0x80002254]<br>0x76DF56FF|- rs1 : x17<br> - rs2 : f26<br>                                                                                |[0x800002c0]:fsw fs10, 2048(a7)<br> |
|  12|[0x8000225c]<br>0xEDBEADFE|- rs1 : x6<br> - rs2 : f25<br>                                                                                 |[0x800002f0]:fsw fs9, 2048(t1)<br>  |
|  13|[0x80002264]<br>0xD5BFDDB7|- rs1 : x4<br> - rs2 : f12<br>                                                                                 |[0x80000318]:fsw fa2, 2048(tp)<br>  |
|  14|[0x8000226c]<br>0x80002A4C|- rs1 : x7<br> - rs2 : f11<br>                                                                                 |[0x80000340]:fsw fa1, 2048(t2)<br>  |
|  15|[0x80002274]<br>0x80002A6C|- rs1 : x20<br> - rs2 : f7<br>                                                                                 |[0x80000368]:fsw ft7, 2048(s4)<br>  |
|  16|[0x8000227c]<br>0xEADFEEDB|- rs1 : x1<br> - rs2 : f13<br>                                                                                 |[0x80000390]:fsw fa3, 2048(ra)<br>  |
|  17|[0x80002284]<br>0xEEDBEADF|- rs1 : x3<br> - rs2 : f29<br>                                                                                 |[0x800003b8]:fsw ft9, 2048(gp)<br>  |
|  18|[0x8000228c]<br>0xFFFFF800|- rs1 : x25<br> - rs2 : f18<br>                                                                                |[0x800003e0]:fsw fs2, 2048(s9)<br>  |
|  19|[0x80002294]<br>0x80002A44|- rs1 : x26<br> - rs2 : f8<br>                                                                                 |[0x80000408]:fsw fs0, 2048(s10)<br> |
|  20|[0x8000229c]<br>0x80002A9C|- rs1 : x31<br> - rs2 : f31<br>                                                                                |[0x80000430]:fsw ft11, 2048(t6)<br> |
|  21|[0x800022a4]<br>0xBB6FAB7F|- rs1 : x29<br> - rs2 : f27<br>                                                                                |[0x80000458]:fsw fs11, 2048(t4)<br> |
|  22|[0x800022ac]<br>0x8000276A|- rs1 : x19<br> - rs2 : f10<br>                                                                                |[0x80000480]:fsw fa0, 2048(s3)<br>  |
|  23|[0x800022b4]<br>0x80002A64|- rs1 : x14<br> - rs2 : f4<br>                                                                                 |[0x800004a8]:fsw ft4, 2048(a4)<br>  |
|  24|[0x800022bc]<br>0x80002208|- rs1 : x27<br> - rs2 : f9<br>                                                                                 |[0x800004d0]:fsw fs1, 2048(s11)<br> |
|  25|[0x800022c4]<br>0x8000220B|- rs1 : x22<br> - rs2 : f24<br>                                                                                |[0x800004f8]:fsw fs8, 2048(s6)<br>  |
|  26|[0x800022cc]<br>0x80000000|- rs1 : x13<br> - rs2 : f17<br>                                                                                |[0x80000520]:fsw fa7, 2048(a3)<br>  |
|  27|[0x800022d4]<br>0x80002A5C|- rs1 : x15<br> - rs2 : f6<br>                                                                                 |[0x80000550]:fsw ft6, 2048(a5)<br>  |
|  28|[0x800022dc]<br>0x80002ADC|- rs1 : x21<br> - rs2 : f21<br>                                                                                |[0x80000580]:fsw fs5, 2048(s5)<br>  |
|  29|[0x800022e4]<br>0x80002A84|- rs1 : x12<br> - rs2 : f3<br>                                                                                 |[0x800005a8]:fsw ft3, 2048(a2)<br>  |
|  30|[0x800022ec]<br>0x800022EC|- rs1 : x16<br> - rs2 : f19<br>                                                                                |[0x800005d8]:fsw fs3, 2048(a6)<br>  |
|  31|[0x800022f4]<br>0x80002A2C|- rs1 : x2<br> - rs2 : f30<br>                                                                                 |[0x80000608]:fsw ft10, 2048(sp)<br> |
|  32|[0x800022fc]<br>0x80002AC4|- rs2 : f22<br>                                                                                                |[0x80000630]:fsw fs6, 2048(s11)<br> |
