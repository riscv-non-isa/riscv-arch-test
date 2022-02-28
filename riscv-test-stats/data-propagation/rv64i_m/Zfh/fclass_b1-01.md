
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800000f8', '0x80000460')]      |
| SIG_REGION                | [('0x80002204', '0x80002414', '66 dwords')]      |
| COV_LABELS                | fclass_b1      |
| TEST_NAME                 | /home/zeusprime/riscv-project/riscof_zfh_env/tests/riscof_work/fclass_b1-01.S/ref.S    |
| Total Number of coverpoints| 93     |
| Total Coverpoints Hit     | 89      |
| Total Signature Updates   | 66      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 33     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000450]:fclass.h t6, ft11
      [0x80000454]:csrrs a7, fflags, zero
      [0x80000458]:sh t6, 180(a5)
 -- Signature Address: 0x80002398 Data: 0x0000000000000001
 -- Redundant Coverpoints hit by the op
      - opcode : fclass.h
      - rd : x31
      - rs1 : f31
      - fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 1  #nosat






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fclass.h', 'rd : x2', 'rs1 : f3', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000120]:fclass.h sp, ft3
	-[0x80000124]:csrrs a7, fflags, zero
	-[0x80000128]:sh sp, 0(a5)
Current Store : [0x8000012c] : sh a7, 2(a5) -- Store: [0x80002206]:0x0000000000000000




Last Coverpoint : ['rd : x10', 'rs1 : f13', 'fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000138]:fclass.h a0, fa3
	-[0x8000013c]:csrrs a7, fflags, zero
	-[0x80000140]:sh a0, 10(a5)
Current Store : [0x80000144] : sh a7, 12(a5) -- Store: [0x80002210]:0x0000000000000000




Last Coverpoint : ['rd : x11', 'rs1 : f20', 'fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000150]:fclass.h a1, fs4
	-[0x80000154]:csrrs a7, fflags, zero
	-[0x80000158]:sh a1, 20(a5)
Current Store : [0x8000015c] : sh a7, 22(a5) -- Store: [0x8000221a]:0x0000000000000000




Last Coverpoint : ['rd : x27', 'rs1 : f24', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000168]:fclass.h s11, fs8
	-[0x8000016c]:csrrs a7, fflags, zero
	-[0x80000170]:sh s11, 30(a5)
Current Store : [0x80000174] : sh a7, 32(a5) -- Store: [0x80002224]:0x0000000000000000




Last Coverpoint : ['rd : x17', 'rs1 : f22', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000018c]:fclass.h a7, fs6
	-[0x80000190]:csrrs s5, fflags, zero
	-[0x80000194]:sh a7, 0(s3)
Current Store : [0x80000198] : sh s5, 2(s3) -- Store: [0x80002246]:0x0000000000000000




Last Coverpoint : ['rd : x15', 'rs1 : f7', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800001a4]:fclass.h a5, ft7
	-[0x800001a8]:csrrs s5, fflags, zero
	-[0x800001ac]:sh a5, 10(s3)
Current Store : [0x800001b0] : sh s5, 12(s3) -- Store: [0x80002250]:0x0000000000000000




Last Coverpoint : ['rd : x4', 'rs1 : f5', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800001c8]:fclass.h tp, ft5
	-[0x800001cc]:csrrs a7, fflags, zero
	-[0x800001d0]:sh tp, 0(a5)
Current Store : [0x800001d4] : sh a7, 2(a5) -- Store: [0x80002266]:0x0000000000000000




Last Coverpoint : ['rd : x3', 'rs1 : f8', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800001e0]:fclass.h gp, fs0
	-[0x800001e4]:csrrs a7, fflags, zero
	-[0x800001e8]:sh gp, 10(a5)
Current Store : [0x800001ec] : sh a7, 12(a5) -- Store: [0x80002270]:0x0000000000000000




Last Coverpoint : ['rd : x5', 'rs1 : f30', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800001f8]:fclass.h t0, ft10
	-[0x800001fc]:csrrs a7, fflags, zero
	-[0x80000200]:sh t0, 20(a5)
Current Store : [0x80000204] : sh a7, 22(a5) -- Store: [0x8000227a]:0x0000000000000000




Last Coverpoint : ['rd : x0', 'rs1 : f1', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000210]:fclass.h zero, ft1
	-[0x80000214]:csrrs a7, fflags, zero
	-[0x80000218]:sh zero, 30(a5)
Current Store : [0x8000021c] : sh a7, 32(a5) -- Store: [0x80002284]:0x0000000000000000




Last Coverpoint : ['rd : x30', 'rs1 : f21', 'fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000228]:fclass.h t5, fs5
	-[0x8000022c]:csrrs a7, fflags, zero
	-[0x80000230]:sh t5, 40(a5)
Current Store : [0x80000234] : sh a7, 42(a5) -- Store: [0x8000228e]:0x0000000000000000




Last Coverpoint : ['rd : x28', 'rs1 : f17', 'fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000240]:fclass.h t3, fa7
	-[0x80000244]:csrrs a7, fflags, zero
	-[0x80000248]:sh t3, 50(a5)
Current Store : [0x8000024c] : sh a7, 52(a5) -- Store: [0x80002298]:0x0000000000000000




Last Coverpoint : ['rd : x21', 'rs1 : f14', 'fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000258]:fclass.h s5, fa4
	-[0x8000025c]:csrrs a7, fflags, zero
	-[0x80000260]:sh s5, 60(a5)
Current Store : [0x80000264] : sh a7, 62(a5) -- Store: [0x800022a2]:0x0000000000000000




Last Coverpoint : ['rd : x16', 'rs1 : f10', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x8000027c]:fclass.h a6, fa0
	-[0x80000280]:csrrs s5, fflags, zero
	-[0x80000284]:sh a6, 0(s3)
Current Store : [0x80000288] : sh s5, 2(s3) -- Store: [0x800022d6]:0x0000000000000000




Last Coverpoint : ['rd : x26', 'rs1 : f19', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002a0]:fclass.h s10, fs3
	-[0x800002a4]:csrrs a7, fflags, zero
	-[0x800002a8]:sh s10, 0(a5)
Current Store : [0x800002ac] : sh a7, 2(a5) -- Store: [0x800022e6]:0x0000000000000000




Last Coverpoint : ['rd : x13', 'rs1 : f26', 'fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002b8]:fclass.h a3, fs10
	-[0x800002bc]:csrrs a7, fflags, zero
	-[0x800002c0]:sh a3, 10(a5)
Current Store : [0x800002c4] : sh a7, 12(a5) -- Store: [0x800022f0]:0x0000000000000000




Last Coverpoint : ['rd : x31', 'rs1 : f12', 'fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002d0]:fclass.h t6, fa2
	-[0x800002d4]:csrrs a7, fflags, zero
	-[0x800002d8]:sh t6, 20(a5)
Current Store : [0x800002dc] : sh a7, 22(a5) -- Store: [0x800022fa]:0x0000000000000000




Last Coverpoint : ['rd : x19', 'rs1 : f11', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x800002e8]:fclass.h s3, fa1
	-[0x800002ec]:csrrs a7, fflags, zero
	-[0x800002f0]:sh s3, 30(a5)
Current Store : [0x800002f4] : sh a7, 32(a5) -- Store: [0x80002304]:0x0000000000000000




Last Coverpoint : ['rd : x1', 'rs1 : f9', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000300]:fclass.h ra, fs1
	-[0x80000304]:csrrs a7, fflags, zero
	-[0x80000308]:sh ra, 40(a5)
Current Store : [0x8000030c] : sh a7, 42(a5) -- Store: [0x8000230e]:0x0000000000000000




Last Coverpoint : ['rd : x14', 'rs1 : f6', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000318]:fclass.h a4, ft6
	-[0x8000031c]:csrrs a7, fflags, zero
	-[0x80000320]:sh a4, 50(a5)
Current Store : [0x80000324] : sh a7, 52(a5) -- Store: [0x80002318]:0x0000000000000000




Last Coverpoint : ['rd : x29', 'rs1 : f2', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000330]:fclass.h t4, ft2
	-[0x80000334]:csrrs a7, fflags, zero
	-[0x80000338]:sh t4, 60(a5)
Current Store : [0x8000033c] : sh a7, 62(a5) -- Store: [0x80002322]:0x0000000000000000




Last Coverpoint : ['rd : x24', 'rs1 : f28', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000348]:fclass.h s8, ft8
	-[0x8000034c]:csrrs a7, fflags, zero
	-[0x80000350]:sh s8, 70(a5)
Current Store : [0x80000354] : sh a7, 72(a5) -- Store: [0x8000232c]:0x0000000000000000




Last Coverpoint : ['rd : x9', 'rs1 : f16', 'fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000360]:fclass.h s1, fa6
	-[0x80000364]:csrrs a7, fflags, zero
	-[0x80000368]:sh s1, 80(a5)
Current Store : [0x8000036c] : sh a7, 82(a5) -- Store: [0x80002336]:0x0000000000000000




Last Coverpoint : ['rd : x6', 'rs1 : f27', 'fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000378]:fclass.h t1, fs11
	-[0x8000037c]:csrrs a7, fflags, zero
	-[0x80000380]:sh t1, 90(a5)
Current Store : [0x80000384] : sh a7, 92(a5) -- Store: [0x80002340]:0x0000000000000000




Last Coverpoint : ['rd : x18', 'rs1 : f31']
Last Code Sequence : 
	-[0x80000390]:fclass.h s2, ft11
	-[0x80000394]:csrrs a7, fflags, zero
	-[0x80000398]:sh s2, 100(a5)
Current Store : [0x8000039c] : sh a7, 102(a5) -- Store: [0x8000234a]:0x0000000000000000




Last Coverpoint : ['rd : x22', 'rs1 : f29']
Last Code Sequence : 
	-[0x800003a8]:fclass.h s6, ft9
	-[0x800003ac]:csrrs a7, fflags, zero
	-[0x800003b0]:sh s6, 110(a5)
Current Store : [0x800003b4] : sh a7, 112(a5) -- Store: [0x80002354]:0x0000000000000000




Last Coverpoint : ['rd : x12', 'rs1 : f25']
Last Code Sequence : 
	-[0x800003c0]:fclass.h a2, fs9
	-[0x800003c4]:csrrs a7, fflags, zero
	-[0x800003c8]:sh a2, 120(a5)
Current Store : [0x800003cc] : sh a7, 122(a5) -- Store: [0x8000235e]:0x0000000000000000




Last Coverpoint : ['rd : x8', 'rs1 : f4']
Last Code Sequence : 
	-[0x800003d8]:fclass.h fp, ft4
	-[0x800003dc]:csrrs a7, fflags, zero
	-[0x800003e0]:sh fp, 130(a5)
Current Store : [0x800003e4] : sh a7, 132(a5) -- Store: [0x80002368]:0x0000000000000000




Last Coverpoint : ['rd : x7', 'rs1 : f0']
Last Code Sequence : 
	-[0x800003f0]:fclass.h t2, ft0
	-[0x800003f4]:csrrs a7, fflags, zero
	-[0x800003f8]:sh t2, 140(a5)
Current Store : [0x800003fc] : sh a7, 142(a5) -- Store: [0x80002372]:0x0000000000000000




Last Coverpoint : ['rd : x20', 'rs1 : f18']
Last Code Sequence : 
	-[0x80000408]:fclass.h s4, fs2
	-[0x8000040c]:csrrs a7, fflags, zero
	-[0x80000410]:sh s4, 150(a5)
Current Store : [0x80000414] : sh a7, 152(a5) -- Store: [0x8000237c]:0x0000000000000000




Last Coverpoint : ['rd : x23', 'rs1 : f23']
Last Code Sequence : 
	-[0x80000420]:fclass.h s7, fs7
	-[0x80000424]:csrrs a7, fflags, zero
	-[0x80000428]:sh s7, 160(a5)
Current Store : [0x8000042c] : sh a7, 162(a5) -- Store: [0x80002386]:0x0000000000000000




Last Coverpoint : ['rd : x25', 'rs1 : f15']
Last Code Sequence : 
	-[0x80000438]:fclass.h s9, fa5
	-[0x8000043c]:csrrs a7, fflags, zero
	-[0x80000440]:sh s9, 170(a5)
Current Store : [0x80000444] : sh a7, 172(a5) -- Store: [0x80002390]:0x0000000000000000




Last Coverpoint : ['opcode : fclass.h', 'rd : x31', 'rs1 : f31', 'fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 1  #nosat']
Last Code Sequence : 
	-[0x80000450]:fclass.h t6, ft11
	-[0x80000454]:csrrs a7, fflags, zero
	-[0x80000458]:sh t6, 180(a5)
Current Store : [0x8000045c] : sh a7, 182(a5) -- Store: [0x8000239a]:0x0000000000000000





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

|s.no|            signature             |                                                         coverpoints                                                         |                                                    code                                                     |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x0000000000000010|- opcode : fclass.h<br> - rd : x2<br> - rs1 : f3<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 1  #nosat<br> |[0x80000120]:fclass.h sp, ft3<br> [0x80000124]:csrrs a7, fflags, zero<br> [0x80000128]:sh sp, 0(a5)<br>      |
|   2|[0x8000220e]<br>0x0000000000000002|- rd : x10<br> - rs1 : f13<br> - fs1 == 1 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 1  #nosat<br>                       |[0x80000138]:fclass.h a0, fa3<br> [0x8000013c]:csrrs a7, fflags, zero<br> [0x80000140]:sh a0, 10(a5)<br>     |
|   3|[0x80002218]<br>0x0000000000000040|- rd : x11<br> - rs1 : f20<br> - fs1 == 0 and fe1 == 0x0f and fm1 == 0x000 and rm_val == 1  #nosat<br>                       |[0x80000150]:fclass.h a1, fs4<br> [0x80000154]:csrrs a7, fflags, zero<br> [0x80000158]:sh a1, 20(a5)<br>     |
|   4|[0x80002222]<br>0x0000000000000100|- rd : x27<br> - rs1 : f24<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x155 and rm_val == 1  #nosat<br>                       |[0x80000168]:fclass.h s11, fs8<br> [0x8000016c]:csrrs a7, fflags, zero<br> [0x80000170]:sh s11, 30(a5)<br>   |
|   5|[0x80002244]<br>0x0000000000000100|- rd : x17<br> - rs1 : f22<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x001 and rm_val == 1  #nosat<br>                       |[0x8000018c]:fclass.h a7, fs6<br> [0x80000190]:csrrs s5, fflags, zero<br> [0x80000194]:sh a7, 0(s3)<br>      |
|   6|[0x8000224e]<br>0x0000000000000200|- rd : x15<br> - rs1 : f7<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x255 and rm_val == 1  #nosat<br>                        |[0x800001a4]:fclass.h a5, ft7<br> [0x800001a8]:csrrs s5, fflags, zero<br> [0x800001ac]:sh a5, 10(s3)<br>     |
|   7|[0x80002264]<br>0x0000000000000200|- rd : x4<br> - rs1 : f5<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x201 and rm_val == 1  #nosat<br>                         |[0x800001c8]:fclass.h tp, ft5<br> [0x800001cc]:csrrs a7, fflags, zero<br> [0x800001d0]:sh tp, 0(a5)<br>      |
|   8|[0x8000226e]<br>0x0000000000000200|- rd : x3<br> - rs1 : f8<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 1  #nosat<br>                         |[0x800001e0]:fclass.h gp, fs0<br> [0x800001e4]:csrrs a7, fflags, zero<br> [0x800001e8]:sh gp, 10(a5)<br>     |
|   9|[0x80002278]<br>0x0000000000000200|- rd : x5<br> - rs1 : f30<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x200 and rm_val == 1  #nosat<br>                        |[0x800001f8]:fclass.h t0, ft10<br> [0x800001fc]:csrrs a7, fflags, zero<br> [0x80000200]:sh t0, 20(a5)<br>    |
|  10|[0x80002282]<br>0x0000000000000000|- rd : x0<br> - rs1 : f1<br> - fs1 == 1 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 1  #nosat<br>                         |[0x80000210]:fclass.h zero, ft1<br> [0x80000214]:csrrs a7, fflags, zero<br> [0x80000218]:sh zero, 30(a5)<br> |
|  11|[0x8000228c]<br>0x0000000000000080|- rd : x30<br> - rs1 : f21<br> - fs1 == 0 and fe1 == 0x1f and fm1 == 0x000 and rm_val == 1  #nosat<br>                       |[0x80000228]:fclass.h t5, fs5<br> [0x8000022c]:csrrs a7, fflags, zero<br> [0x80000230]:sh t5, 40(a5)<br>     |
|  12|[0x80002296]<br>0x0000000000000002|- rd : x28<br> - rs1 : f17<br> - fs1 == 1 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 1  #nosat<br>                       |[0x80000240]:fclass.h t3, fa7<br> [0x80000244]:csrrs a7, fflags, zero<br> [0x80000248]:sh t3, 50(a5)<br>     |
|  13|[0x800022a0]<br>0x0000000000000040|- rd : x21<br> - rs1 : f14<br> - fs1 == 0 and fe1 == 0x1e and fm1 == 0x3ff and rm_val == 1  #nosat<br>                       |[0x80000258]:fclass.h s5, fa4<br> [0x8000025c]:csrrs a7, fflags, zero<br> [0x80000260]:sh s5, 60(a5)<br>     |
|  14|[0x800022d4]<br>0x0000000000000002|- rd : x16<br> - rs1 : f10<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x055 and rm_val == 1  #nosat<br>                       |[0x8000027c]:fclass.h a6, fa0<br> [0x80000280]:csrrs s5, fflags, zero<br> [0x80000284]:sh a6, 0(s3)<br>      |
|  15|[0x800022e4]<br>0x0000000000000040|- rd : x26<br> - rs1 : f19<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x001 and rm_val == 1  #nosat<br>                       |[0x800002a0]:fclass.h s10, fs3<br> [0x800002a4]:csrrs a7, fflags, zero<br> [0x800002a8]:sh s10, 0(a5)<br>    |
|  16|[0x800022ee]<br>0x0000000000000002|- rd : x13<br> - rs1 : f26<br> - fs1 == 1 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 1  #nosat<br>                       |[0x800002b8]:fclass.h a3, fs10<br> [0x800002bc]:csrrs a7, fflags, zero<br> [0x800002c0]:sh a3, 10(a5)<br>    |
|  17|[0x800022f8]<br>0x0000000000000040|- rd : x31<br> - rs1 : f12<br> - fs1 == 0 and fe1 == 0x01 and fm1 == 0x000 and rm_val == 1  #nosat<br>                       |[0x800002d0]:fclass.h t6, fa2<br> [0x800002d4]:csrrs a7, fflags, zero<br> [0x800002d8]:sh t6, 20(a5)<br>     |
|  18|[0x80002302]<br>0x0000000000000004|- rd : x19<br> - rs1 : f11<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 1  #nosat<br>                       |[0x800002e8]:fclass.h s3, fa1<br> [0x800002ec]:csrrs a7, fflags, zero<br> [0x800002f0]:sh s3, 30(a5)<br>     |
|  19|[0x8000230c]<br>0x0000000000000020|- rd : x1<br> - rs1 : f9<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x3ff and rm_val == 1  #nosat<br>                         |[0x80000300]:fclass.h ra, fs1<br> [0x80000304]:csrrs a7, fflags, zero<br> [0x80000308]:sh ra, 40(a5)<br>     |
|  20|[0x80002316]<br>0x0000000000000004|- rd : x14<br> - rs1 : f6<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x3fe and rm_val == 1  #nosat<br>                        |[0x80000318]:fclass.h a4, ft6<br> [0x8000031c]:csrrs a7, fflags, zero<br> [0x80000320]:sh a4, 50(a5)<br>     |
|  21|[0x80002320]<br>0x0000000000000020|- rd : x29<br> - rs1 : f2<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x002 and rm_val == 1  #nosat<br>                        |[0x80000330]:fclass.h t4, ft2<br> [0x80000334]:csrrs a7, fflags, zero<br> [0x80000338]:sh t4, 60(a5)<br>     |
|  22|[0x8000232a]<br>0x0000000000000004|- rd : x24<br> - rs1 : f28<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 1  #nosat<br>                       |[0x80000348]:fclass.h s8, ft8<br> [0x8000034c]:csrrs a7, fflags, zero<br> [0x80000350]:sh s8, 70(a5)<br>     |
|  23|[0x80002334]<br>0x0000000000000020|- rd : x9<br> - rs1 : f16<br> - fs1 == 0 and fe1 == 0x00 and fm1 == 0x001 and rm_val == 1  #nosat<br>                        |[0x80000360]:fclass.h s1, fa6<br> [0x80000364]:csrrs a7, fflags, zero<br> [0x80000368]:sh s1, 80(a5)<br>     |
|  24|[0x8000233e]<br>0x0000000000000008|- rd : x6<br> - rs1 : f27<br> - fs1 == 1 and fe1 == 0x00 and fm1 == 0x000 and rm_val == 1  #nosat<br>                        |[0x80000378]:fclass.h t1, fs11<br> [0x8000037c]:csrrs a7, fflags, zero<br> [0x80000380]:sh t1, 90(a5)<br>    |
|  25|[0x80002348]<br>0x0000000000000010|- rd : x18<br> - rs1 : f31<br>                                                                                               |[0x80000390]:fclass.h s2, ft11<br> [0x80000394]:csrrs a7, fflags, zero<br> [0x80000398]:sh s2, 100(a5)<br>   |
|  26|[0x80002352]<br>0x0000000000000010|- rd : x22<br> - rs1 : f29<br>                                                                                               |[0x800003a8]:fclass.h s6, ft9<br> [0x800003ac]:csrrs a7, fflags, zero<br> [0x800003b0]:sh s6, 110(a5)<br>    |
|  27|[0x8000235c]<br>0x0000000000000010|- rd : x12<br> - rs1 : f25<br>                                                                                               |[0x800003c0]:fclass.h a2, fs9<br> [0x800003c4]:csrrs a7, fflags, zero<br> [0x800003c8]:sh a2, 120(a5)<br>    |
|  28|[0x80002366]<br>0x0000000000000010|- rd : x8<br> - rs1 : f4<br>                                                                                                 |[0x800003d8]:fclass.h fp, ft4<br> [0x800003dc]:csrrs a7, fflags, zero<br> [0x800003e0]:sh fp, 130(a5)<br>    |
|  29|[0x80002370]<br>0x0000000000000010|- rd : x7<br> - rs1 : f0<br>                                                                                                 |[0x800003f0]:fclass.h t2, ft0<br> [0x800003f4]:csrrs a7, fflags, zero<br> [0x800003f8]:sh t2, 140(a5)<br>    |
|  30|[0x8000237a]<br>0x0000000000000010|- rd : x20<br> - rs1 : f18<br>                                                                                               |[0x80000408]:fclass.h s4, fs2<br> [0x8000040c]:csrrs a7, fflags, zero<br> [0x80000410]:sh s4, 150(a5)<br>    |
|  31|[0x80002384]<br>0x0000000000000010|- rd : x23<br> - rs1 : f23<br>                                                                                               |[0x80000420]:fclass.h s7, fs7<br> [0x80000424]:csrrs a7, fflags, zero<br> [0x80000428]:sh s7, 160(a5)<br>    |
|  32|[0x8000238e]<br>0x0000000000000010|- rd : x25<br> - rs1 : f15<br>                                                                                               |[0x80000438]:fclass.h s9, fa5<br> [0x8000043c]:csrrs a7, fflags, zero<br> [0x80000440]:sh s9, 170(a5)<br>    |
