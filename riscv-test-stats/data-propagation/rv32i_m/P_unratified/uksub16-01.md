
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b70')]      |
| SIG_REGION                | [('0x80002210', '0x800024c0', '172 words')]      |
| COV_LABELS                | uksub16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/uksub16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 172      |
| STAT1                     | 82      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 86     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a5c]:UKSUB16 t6, t5, t4
      [0x80000a60]:csrrs t5, vxsat, zero
      [0x80000a64]:sw t6, 384(ra)
 -- Signature Address: 0x80002478 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 2
      - rs2_h0_val == 65407
      - rs1_h1_val == 0
      - rs1_h0_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b1c]:UKSUB16 t6, t5, t4
      [0x80000b20]:csrrs t5, vxsat, zero
      [0x80000b24]:sw t6, 432(ra)
 -- Signature Address: 0x800024a8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 16384
      - rs2_h0_val == 65534
      - rs1_h1_val == 16384
      - rs1_h0_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b38]:UKSUB16 t6, t5, t4
      [0x80000b3c]:csrrs t5, vxsat, zero
      [0x80000b40]:sw t6, 440(ra)
 -- Signature Address: 0x800024b0 Data: 0xEEFFEEFF
 -- Redundant Coverpoints hit by the op
      - opcode : uksub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 256
      - rs2_h0_val == 4096
      - rs1_h1_val == 61439
      - rs1_h0_val == 65279




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b58]:UKSUB16 t6, t5, t4
      [0x80000b5c]:csrrs t5, vxsat, zero
      [0x80000b60]:sw t6, 448(ra)
 -- Signature Address: 0x800024b8 Data: 0xFFEF0002
 -- Redundant Coverpoints hit by the op
      - opcode : uksub16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 8
      - rs2_h0_val == 16
      - rs1_h1_val == 65527






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : uksub16', 'rs1 : x6', 'rs2 : x6', 'rd : x6', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs2_h0_val == 16', 'rs1_h1_val == 21845', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000118]:UKSUB16 t1, t1, t1
	-[0x8000011c]:csrrs t1, vxsat, zero
	-[0x80000120]:sw t1, 0(t2)
Current Store : [0x80000124] : sw t1, 4(t2) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x17', 'rd : x2', 'rs1 == rs2 != rd', 'rs2_h1_val == 16384', 'rs2_h0_val == 65534', 'rs1_h1_val == 16384', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x80000138]:UKSUB16 sp, a7, a7
	-[0x8000013c]:csrrs a7, vxsat, zero
	-[0x80000140]:sw sp, 8(t2)
Current Store : [0x80000144] : sw a7, 12(t2) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x15', 'rd : x3', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 4', 'rs1_h1_val == 64511']
Last Code Sequence : 
	-[0x80000158]:UKSUB16 gp, s2, a5
	-[0x8000015c]:csrrs s2, vxsat, zero
	-[0x80000160]:sw gp, 16(t2)
Current Store : [0x80000164] : sw s2, 20(t2) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x31', 'rd : x31', 'rs2 == rd != rs1', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 43690', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000178]:UKSUB16 t6, s8, t6
	-[0x8000017c]:csrrs s8, vxsat, zero
	-[0x80000180]:sw t6, 24(t2)
Current Store : [0x80000184] : sw s8, 28(t2) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x19', 'rd : x27', 'rs1 == rd != rs2', 'rs2_h1_val == 32767', 'rs2_h0_val == 16384', 'rs1_h1_val == 32767', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000190]:UKSUB16 s11, s11, s3
	-[0x80000194]:csrrs s11, vxsat, zero
	-[0x80000198]:sw s11, 32(t2)
Current Store : [0x8000019c] : sw s11, 36(t2) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x21', 'rd : x22', 'rs2_h1_val == 49151', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800001b0]:UKSUB16 s6, s10, s5
	-[0x800001b4]:csrrs s10, vxsat, zero
	-[0x800001b8]:sw s6, 40(t2)
Current Store : [0x800001bc] : sw s10, 44(t2) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x8', 'rd : x1', 'rs2_h1_val == 57343', 'rs2_h0_val == 21845', 'rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x800001d0]:UKSUB16 ra, s5, fp
	-[0x800001d4]:csrrs s5, vxsat, zero
	-[0x800001d8]:sw ra, 48(t2)
Current Store : [0x800001dc] : sw s5, 52(t2) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x26', 'rd : x15', 'rs2_h1_val == 61439']
Last Code Sequence : 
	-[0x800001f0]:UKSUB16 a5, a2, s10
	-[0x800001f4]:csrrs a2, vxsat, zero
	-[0x800001f8]:sw a5, 56(t2)
Current Store : [0x800001fc] : sw a2, 60(t2) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x13', 'rd : x30', 'rs2_h1_val == 63487', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80000210]:UKSUB16 t5, t0, a3
	-[0x80000214]:csrrs t0, vxsat, zero
	-[0x80000218]:sw t5, 64(t2)
Current Store : [0x8000021c] : sw t0, 68(t2) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x5', 'rd : x10', 'rs2_h1_val == 64511', 'rs2_h0_val == 4096', 'rs1_h1_val == 32', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x8000022c]:UKSUB16 a0, s1, t0
	-[0x80000230]:csrrs s1, vxsat, zero
	-[0x80000234]:sw a0, 72(t2)
Current Store : [0x80000238] : sw s1, 76(t2) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x22', 'rd : x4', 'rs2_h1_val == 65023', 'rs2_h0_val == 65503', 'rs1_h1_val == 65279', 'rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x8000024c]:UKSUB16 tp, t3, s6
	-[0x80000250]:csrrs t3, vxsat, zero
	-[0x80000254]:sw tp, 80(t2)
Current Store : [0x80000258] : sw t3, 84(t2) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x12', 'rd : x20', 'rs2_h1_val == 65279', 'rs1_h1_val == 512', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x8000026c]:UKSUB16 s4, sp, a2
	-[0x80000270]:csrrs sp, vxsat, zero
	-[0x80000274]:sw s4, 88(t2)
Current Store : [0x80000278] : sw sp, 92(t2) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x25', 'rd : x29', 'rs2_h1_val == 65407', 'rs2_h0_val == 65519', 'rs1_h1_val == 65527']
Last Code Sequence : 
	-[0x8000028c]:UKSUB16 t4, t5, s9
	-[0x80000290]:csrrs t5, vxsat, zero
	-[0x80000294]:sw t4, 96(t2)
Current Store : [0x80000298] : sw t5, 100(t2) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x3', 'rd : x11', 'rs2_h1_val == 65471', 'rs2_h0_val == 1', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x800002ac]:UKSUB16 a1, ra, gp
	-[0x800002b0]:csrrs ra, vxsat, zero
	-[0x800002b4]:sw a1, 104(t2)
Current Store : [0x800002b8] : sw ra, 108(t2) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x7', 'rd : x17', 'rs2_h1_val == 65503', 'rs1_h1_val == 65471']
Last Code Sequence : 
	-[0x800002d0]:UKSUB16 a7, a4, t2
	-[0x800002d4]:csrrs a4, vxsat, zero
	-[0x800002d8]:sw a7, 0(t1)
Current Store : [0x800002dc] : sw a4, 4(t1) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x19', 'rs2_h1_val == 65519', 'rs1_h1_val == 64', 'rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x800002f0]:UKSUB16 s3, s9, tp
	-[0x800002f4]:csrrs s9, vxsat, zero
	-[0x800002f8]:sw s3, 8(t1)
Current Store : [0x800002fc] : sw s9, 12(t1) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x1', 'rd : x16', 'rs1_h0_val == 0', 'rs2_h1_val == 65527', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x8000030c]:UKSUB16 a6, t6, ra
	-[0x80000310]:csrrs t6, vxsat, zero
	-[0x80000314]:sw a6, 16(t1)
Current Store : [0x80000318] : sw t6, 20(t1) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x30', 'rd : x25', 'rs2_h1_val == 65531', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000328]:UKSUB16 s9, t4, t5
	-[0x8000032c]:csrrs t4, vxsat, zero
	-[0x80000330]:sw s9, 24(t1)
Current Store : [0x80000334] : sw t4, 28(t1) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x10', 'rd : x28', 'rs2_h1_val == 65533', 'rs2_h0_val == 256', 'rs1_h1_val == 63487']
Last Code Sequence : 
	-[0x80000348]:UKSUB16 t3, gp, a0
	-[0x8000034c]:csrrs gp, vxsat, zero
	-[0x80000350]:sw t3, 32(t1)
Current Store : [0x80000354] : sw gp, 36(t1) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x24', 'rd : x7', 'rs2_h1_val == 65534', 'rs2_h0_val == 0', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000360]:UKSUB16 t2, a6, s8
	-[0x80000364]:csrrs a6, vxsat, zero
	-[0x80000368]:sw t2, 40(t1)
Current Store : [0x8000036c] : sw a6, 44(t1) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x16', 'rd : x21', 'rs2_h1_val == 32768', 'rs1_h1_val == 32768']
Last Code Sequence : 
	-[0x80000380]:UKSUB16 s5, s3, a6
	-[0x80000384]:csrrs s3, vxsat, zero
	-[0x80000388]:sw s5, 48(t1)
Current Store : [0x8000038c] : sw s3, 52(t1) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x9', 'rd : x5', 'rs2_h1_val == 8192', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000039c]:UKSUB16 t0, a3, s1
	-[0x800003a0]:csrrs a3, vxsat, zero
	-[0x800003a4]:sw t0, 56(t1)
Current Store : [0x800003a8] : sw a3, 60(t1) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x14', 'rd : x24', 'rs2_h1_val == 4096', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x800003b8]:UKSUB16 s8, fp, a4
	-[0x800003bc]:csrrs fp, vxsat, zero
	-[0x800003c0]:sw s8, 64(t1)
Current Store : [0x800003c4] : sw fp, 68(t1) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x2', 'rd : x18', 'rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x800003d8]:UKSUB16 s2, a5, sp
	-[0x800003dc]:csrrs a5, vxsat, zero
	-[0x800003e0]:sw s2, 72(t1)
Current Store : [0x800003e4] : sw a5, 76(t1) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x23', 'rd : x9', 'rs2_h1_val == 1024', 'rs2_h0_val == 65407']
Last Code Sequence : 
	-[0x800003f4]:UKSUB16 s1, a1, s7
	-[0x800003f8]:csrrs a1, vxsat, zero
	-[0x800003fc]:sw s1, 80(t1)
Current Store : [0x80000400] : sw a1, 84(t1) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x8', 'rs2_h1_val == 512', 'rs2_h0_val == 65471']
Last Code Sequence : 
	-[0x80000414]:UKSUB16 fp, tp, t4
	-[0x80000418]:csrrs tp, vxsat, zero
	-[0x8000041c]:sw fp, 88(t1)
Current Store : [0x80000420] : sw tp, 92(t1) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x0', 'rd : x13', 'rs2_h1_val == 0', 'rs1_h1_val == 61439', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000434]:UKSUB16 a3, t2, zero
	-[0x80000438]:csrrs t2, vxsat, zero
	-[0x8000043c]:sw a3, 96(t1)
Current Store : [0x80000440] : sw t2, 100(t1) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x20', 'rd : x0', 'rs2_h1_val == 128', 'rs2_h0_val == 65527', 'rs1_h1_val == 65503']
Last Code Sequence : 
	-[0x80000454]:UKSUB16 zero, a0, s4
	-[0x80000458]:csrrs a0, vxsat, zero
	-[0x8000045c]:sw zero, 104(t1)
Current Store : [0x80000460] : sw a0, 108(t1) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x27', 'rd : x12', 'rs2_h1_val == 64', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x80000470]:UKSUB16 a2, s4, s11
	-[0x80000474]:csrrs s4, vxsat, zero
	-[0x80000478]:sw a2, 112(t1)
Current Store : [0x8000047c] : sw s4, 116(t1) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x28', 'rd : x26', 'rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80000498]:UKSUB16 s10, s7, t3
	-[0x8000049c]:csrrs s7, vxsat, zero
	-[0x800004a0]:sw s10, 0(ra)
Current Store : [0x800004a4] : sw s7, 4(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x23', 'rs2_h1_val == 16', 'rs2_h0_val == 32768']
Last Code Sequence : 
	-[0x800004b4]:UKSUB16 s7, s6, s2
	-[0x800004b8]:csrrs s6, vxsat, zero
	-[0x800004bc]:sw s7, 8(ra)
Current Store : [0x800004c0] : sw s6, 12(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x11', 'rd : x14', 'rs2_h1_val == 8', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800004d4]:UKSUB16 a4, zero, a1
	-[0x800004d8]:csrrs zero, vxsat, zero
	-[0x800004dc]:sw a4, 16(ra)
Current Store : [0x800004e0] : sw zero, 20(ra) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_h0_val == 65531', 'rs1_h1_val == 65023', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x800004f4]:UKSUB16 t6, t5, t4
	-[0x800004f8]:csrrs t5, vxsat, zero
	-[0x800004fc]:sw t6, 24(ra)
Current Store : [0x80000500] : sw t5, 28(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x8000050c]:UKSUB16 t6, t5, t4
	-[0x80000510]:csrrs t5, vxsat, zero
	-[0x80000514]:sw t6, 32(ra)
Current Store : [0x80000518] : sw t5, 36(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 57343', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000528]:UKSUB16 t6, t5, t4
	-[0x8000052c]:csrrs t5, vxsat, zero
	-[0x80000530]:sw t6, 40(ra)
Current Store : [0x80000534] : sw t5, 44(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000544]:UKSUB16 t6, t5, t4
	-[0x80000548]:csrrs t5, vxsat, zero
	-[0x8000054c]:sw t6, 48(ra)
Current Store : [0x80000550] : sw t5, 52(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000564]:UKSUB16 t6, t5, t4
	-[0x80000568]:csrrs t5, vxsat, zero
	-[0x8000056c]:sw t6, 56(ra)
Current Store : [0x80000570] : sw t5, 60(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000584]:UKSUB16 t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 64(ra)
Current Store : [0x80000590] : sw t5, 68(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 43690', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005a4]:UKSUB16 t6, t5, t4
	-[0x800005a8]:csrrs t5, vxsat, zero
	-[0x800005ac]:sw t6, 72(ra)
Current Store : [0x800005b0] : sw t5, 76(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_h1_val == 43690']
Last Code Sequence : 
	-[0x800005c0]:UKSUB16 t6, t5, t4
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 80(ra)
Current Store : [0x800005cc] : sw t5, 84(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800005e0]:UKSUB16 t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 88(ra)
Current Store : [0x800005ec] : sw t5, 92(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_h1_val == 256', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000600]:UKSUB16 t6, t5, t4
	-[0x80000604]:csrrs t5, vxsat, zero
	-[0x80000608]:sw t6, 96(ra)
Current Store : [0x8000060c] : sw t5, 100(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000620]:UKSUB16 t6, t5, t4
	-[0x80000624]:csrrs t5, vxsat, zero
	-[0x80000628]:sw t6, 104(ra)
Current Store : [0x8000062c] : sw t5, 108(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80000640]:UKSUB16 t6, t5, t4
	-[0x80000644]:csrrs t5, vxsat, zero
	-[0x80000648]:sw t6, 112(ra)
Current Store : [0x8000064c] : sw t5, 116(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80000660]:UKSUB16 t6, t5, t4
	-[0x80000664]:csrrs t5, vxsat, zero
	-[0x80000668]:sw t6, 120(ra)
Current Store : [0x8000066c] : sw t5, 124(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h1_val == 65535', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x8000067c]:UKSUB16 t6, t5, t4
	-[0x80000680]:csrrs t5, vxsat, zero
	-[0x80000684]:sw t6, 128(ra)
Current Store : [0x80000688] : sw t5, 132(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x80000698]:UKSUB16 t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 136(ra)
Current Store : [0x800006a4] : sw t5, 140(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x800006b8]:UKSUB16 t6, t5, t4
	-[0x800006bc]:csrrs t5, vxsat, zero
	-[0x800006c0]:sw t6, 144(ra)
Current Store : [0x800006c4] : sw t5, 148(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 49151']
Last Code Sequence : 
	-[0x800006d8]:UKSUB16 t6, t5, t4
	-[0x800006dc]:csrrs t5, vxsat, zero
	-[0x800006e0]:sw t6, 152(ra)
Current Store : [0x800006e4] : sw t5, 156(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == 61439']
Last Code Sequence : 
	-[0x800006f8]:UKSUB16 t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 160(ra)
Current Store : [0x80000704] : sw t5, 164(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 63487', 'rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x80000718]:UKSUB16 t6, t5, t4
	-[0x8000071c]:csrrs t5, vxsat, zero
	-[0x80000720]:sw t6, 168(ra)
Current Store : [0x80000724] : sw t5, 172(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64511']
Last Code Sequence : 
	-[0x80000738]:UKSUB16 t6, t5, t4
	-[0x8000073c]:csrrs t5, vxsat, zero
	-[0x80000740]:sw t6, 176(ra)
Current Store : [0x80000744] : sw t5, 180(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65023']
Last Code Sequence : 
	-[0x80000758]:UKSUB16 t6, t5, t4
	-[0x8000075c]:csrrs t5, vxsat, zero
	-[0x80000760]:sw t6, 184(ra)
Current Store : [0x80000764] : sw t5, 188(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65279', 'rs1_h1_val == 49151']
Last Code Sequence : 
	-[0x80000778]:UKSUB16 t6, t5, t4
	-[0x8000077c]:csrrs t5, vxsat, zero
	-[0x80000780]:sw t6, 192(ra)
Current Store : [0x80000784] : sw t5, 196(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65533']
Last Code Sequence : 
	-[0x80000794]:UKSUB16 t6, t5, t4
	-[0x80000798]:csrrs t5, vxsat, zero
	-[0x8000079c]:sw t6, 200(ra)
Current Store : [0x800007a0] : sw t5, 204(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800007b4]:UKSUB16 t6, t5, t4
	-[0x800007b8]:csrrs t5, vxsat, zero
	-[0x800007bc]:sw t6, 208(ra)
Current Store : [0x800007c0] : sw t5, 212(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x800007d4]:UKSUB16 t6, t5, t4
	-[0x800007d8]:csrrs t5, vxsat, zero
	-[0x800007dc]:sw t6, 216(ra)
Current Store : [0x800007e0] : sw t5, 220(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x800007f4]:UKSUB16 t6, t5, t4
	-[0x800007f8]:csrrs t5, vxsat, zero
	-[0x800007fc]:sw t6, 224(ra)
Current Store : [0x80000800] : sw t5, 228(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80000814]:UKSUB16 t6, t5, t4
	-[0x80000818]:csrrs t5, vxsat, zero
	-[0x8000081c]:sw t6, 232(ra)
Current Store : [0x80000820] : sw t5, 236(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x80000834]:UKSUB16 t6, t5, t4
	-[0x80000838]:csrrs t5, vxsat, zero
	-[0x8000083c]:sw t6, 240(ra)
Current Store : [0x80000840] : sw t5, 244(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x80000854]:UKSUB16 t6, t5, t4
	-[0x80000858]:csrrs t5, vxsat, zero
	-[0x8000085c]:sw t6, 248(ra)
Current Store : [0x80000860] : sw t5, 252(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65535']
Last Code Sequence : 
	-[0x80000874]:UKSUB16 t6, t5, t4
	-[0x80000878]:csrrs t5, vxsat, zero
	-[0x8000087c]:sw t6, 256(ra)
Current Store : [0x80000880] : sw t5, 260(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x80000894]:UKSUB16 t6, t5, t4
	-[0x80000898]:csrrs t5, vxsat, zero
	-[0x8000089c]:sw t6, 264(ra)
Current Store : [0x800008a0] : sw t5, 268(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65407']
Last Code Sequence : 
	-[0x800008b4]:UKSUB16 t6, t5, t4
	-[0x800008b8]:csrrs t5, vxsat, zero
	-[0x800008bc]:sw t6, 272(ra)
Current Store : [0x800008c0] : sw t5, 276(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65519']
Last Code Sequence : 
	-[0x800008d4]:UKSUB16 t6, t5, t4
	-[0x800008d8]:csrrs t5, vxsat, zero
	-[0x800008dc]:sw t6, 280(ra)
Current Store : [0x800008e0] : sw t5, 284(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65531']
Last Code Sequence : 
	-[0x800008f4]:UKSUB16 t6, t5, t4
	-[0x800008f8]:csrrs t5, vxsat, zero
	-[0x800008fc]:sw t6, 288(ra)
Current Store : [0x80000900] : sw t5, 292(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65533', 'rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x80000910]:UKSUB16 t6, t5, t4
	-[0x80000914]:csrrs t5, vxsat, zero
	-[0x80000918]:sw t6, 296(ra)
Current Store : [0x8000091c] : sw t5, 300(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65534']
Last Code Sequence : 
	-[0x80000930]:UKSUB16 t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 304(ra)
Current Store : [0x8000093c] : sw t5, 308(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x8000094c]:UKSUB16 t6, t5, t4
	-[0x80000950]:csrrs t5, vxsat, zero
	-[0x80000954]:sw t6, 312(ra)
Current Store : [0x80000958] : sw t5, 316(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x8000096c]:UKSUB16 t6, t5, t4
	-[0x80000970]:csrrs t5, vxsat, zero
	-[0x80000974]:sw t6, 320(ra)
Current Store : [0x80000978] : sw t5, 324(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x8000098c]:UKSUB16 t6, t5, t4
	-[0x80000990]:csrrs t5, vxsat, zero
	-[0x80000994]:sw t6, 328(ra)
Current Store : [0x80000998] : sw t5, 332(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h1_val == 256']
Last Code Sequence : 
	-[0x800009ac]:UKSUB16 t6, t5, t4
	-[0x800009b0]:csrrs t5, vxsat, zero
	-[0x800009b4]:sw t6, 336(ra)
Current Store : [0x800009b8] : sw t5, 340(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800009c8]:UKSUB16 t6, t5, t4
	-[0x800009cc]:csrrs t5, vxsat, zero
	-[0x800009d0]:sw t6, 344(ra)
Current Store : [0x800009d4] : sw t5, 348(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800009e4]:UKSUB16 t6, t5, t4
	-[0x800009e8]:csrrs t5, vxsat, zero
	-[0x800009ec]:sw t6, 352(ra)
Current Store : [0x800009f0] : sw t5, 356(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000a04]:UKSUB16 t6, t5, t4
	-[0x80000a08]:csrrs t5, vxsat, zero
	-[0x80000a0c]:sw t6, 360(ra)
Current Store : [0x80000a10] : sw t5, 364(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000a20]:UKSUB16 t6, t5, t4
	-[0x80000a24]:csrrs t5, vxsat, zero
	-[0x80000a28]:sw t6, 368(ra)
Current Store : [0x80000a2c] : sw t5, 372(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000a40]:UKSUB16 t6, t5, t4
	-[0x80000a44]:csrrs t5, vxsat, zero
	-[0x80000a48]:sw t6, 376(ra)
Current Store : [0x80000a4c] : sw t5, 380(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['opcode : uksub16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 2', 'rs2_h0_val == 65407', 'rs1_h1_val == 0', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000a5c]:UKSUB16 t6, t5, t4
	-[0x80000a60]:csrrs t5, vxsat, zero
	-[0x80000a64]:sw t6, 384(ra)
Current Store : [0x80000a68] : sw t5, 388(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000a7c]:UKSUB16 t6, t5, t4
	-[0x80000a80]:csrrs t5, vxsat, zero
	-[0x80000a84]:sw t6, 392(ra)
Current Store : [0x80000a88] : sw t5, 396(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x80000a9c]:UKSUB16 t6, t5, t4
	-[0x80000aa0]:csrrs t5, vxsat, zero
	-[0x80000aa4]:sw t6, 400(ra)
Current Store : [0x80000aa8] : sw t5, 404(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65535']
Last Code Sequence : 
	-[0x80000abc]:UKSUB16 t6, t5, t4
	-[0x80000ac0]:csrrs t5, vxsat, zero
	-[0x80000ac4]:sw t6, 408(ra)
Current Store : [0x80000ac8] : sw t5, 412(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000adc]:UKSUB16 t6, t5, t4
	-[0x80000ae0]:csrrs t5, vxsat, zero
	-[0x80000ae4]:sw t6, 416(ra)
Current Store : [0x80000ae8] : sw t5, 420(ra) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000afc]:UKSUB16 t6, t5, t4
	-[0x80000b00]:csrrs t5, vxsat, zero
	-[0x80000b04]:sw t6, 424(ra)
Current Store : [0x80000b08] : sw t5, 428(ra) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['opcode : uksub16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 16384', 'rs2_h0_val == 65534', 'rs1_h1_val == 16384', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000b1c]:UKSUB16 t6, t5, t4
	-[0x80000b20]:csrrs t5, vxsat, zero
	-[0x80000b24]:sw t6, 432(ra)
Current Store : [0x80000b28] : sw t5, 436(ra) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['opcode : uksub16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 256', 'rs2_h0_val == 4096', 'rs1_h1_val == 61439', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000b38]:UKSUB16 t6, t5, t4
	-[0x80000b3c]:csrrs t5, vxsat, zero
	-[0x80000b40]:sw t6, 440(ra)
Current Store : [0x80000b44] : sw t5, 444(ra) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['opcode : uksub16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 8', 'rs2_h0_val == 16', 'rs1_h1_val == 65527']
Last Code Sequence : 
	-[0x80000b58]:UKSUB16 t6, t5, t4
	-[0x80000b5c]:csrrs t5, vxsat, zero
	-[0x80000b60]:sw t6, 448(ra)
Current Store : [0x80000b64] : sw t5, 452(ra) -- Store: [0x800024bc]:0x00000001





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

|s.no|        signature         |                                                                                                                                                             coverpoints                                                                                                                                                              |                                                     code                                                      |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : uksub16<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x6<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 16<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 16<br> |[0x80000118]:UKSUB16 t1, t1, t1<br> [0x8000011c]:csrrs t1, vxsat, zero<br> [0x80000120]:sw t1, 0(t2)<br>       |
|   2|[0x80002218]<br>0x00000000|- rs1 : x17<br> - rs2 : x17<br> - rd : x2<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 65534<br>                                                                                                                                                          |[0x80000138]:UKSUB16 sp, a7, a7<br> [0x8000013c]:csrrs a7, vxsat, zero<br> [0x80000140]:sw sp, 8(t2)<br>       |
|   3|[0x80002220]<br>0xFBFB0000|- rs1 : x18<br> - rs2 : x15<br> - rd : x3<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 4<br> - rs1_h1_val == 64511<br>                                                                                                                      |[0x80000158]:UKSUB16 gp, s2, a5<br> [0x8000015c]:csrrs s2, vxsat, zero<br> [0x80000160]:sw gp, 16(t2)<br>      |
|   4|[0x80002228]<br>0x00000000|- rs1 : x24<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs1_h1_val == 4<br>                                                                                                                                            |[0x80000178]:UKSUB16 t6, s8, t6<br> [0x8000017c]:csrrs s8, vxsat, zero<br> [0x80000180]:sw t6, 24(t2)<br>      |
|   5|[0x80002230]<br>0x00000001|- rs1 : x27<br> - rs2 : x19<br> - rd : x27<br> - rs1 == rd != rs2<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 8192<br>                                                                                                                                                          |[0x80000190]:UKSUB16 s11, s11, s3<br> [0x80000194]:csrrs s11, vxsat, zero<br> [0x80000198]:sw s11, 32(t2)<br>  |
|   6|[0x80002238]<br>0x000001F2|- rs1 : x26<br> - rs2 : x21<br> - rd : x22<br> - rs2_h1_val == 49151<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                      |[0x800001b0]:UKSUB16 s6, s10, s5<br> [0x800001b4]:csrrs s10, vxsat, zero<br> [0x800001b8]:sw s6, 40(t2)<br>    |
|   7|[0x80002240]<br>0x00005555|- rs1 : x21<br> - rs2 : x8<br> - rd : x1<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 21845<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                            |[0x800001d0]:UKSUB16 ra, s5, fp<br> [0x800001d4]:csrrs s5, vxsat, zero<br> [0x800001d8]:sw ra, 48(t2)<br>      |
|   8|[0x80002248]<br>0x00000000|- rs1 : x12<br> - rs2 : x26<br> - rd : x15<br> - rs2_h1_val == 61439<br>                                                                                                                                                                                                                                                              |[0x800001f0]:UKSUB16 a5, a2, s10<br> [0x800001f4]:csrrs a2, vxsat, zero<br> [0x800001f8]:sw a5, 56(t2)<br>     |
|   9|[0x80002250]<br>0x00000002|- rs1 : x5<br> - rs2 : x13<br> - rd : x30<br> - rs2_h1_val == 63487<br> - rs2_h0_val == 8<br>                                                                                                                                                                                                                                         |[0x80000210]:UKSUB16 t5, t0, a3<br> [0x80000214]:csrrs t0, vxsat, zero<br> [0x80000218]:sw t5, 64(t2)<br>      |
|  10|[0x80002258]<br>0x0000EFBF|- rs1 : x9<br> - rs2 : x5<br> - rd : x10<br> - rs2_h1_val == 64511<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 32<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                      |[0x8000022c]:UKSUB16 a0, s1, t0<br> [0x80000230]:csrrs s1, vxsat, zero<br> [0x80000234]:sw a0, 72(t2)<br>      |
|  11|[0x80002260]<br>0x01000000|- rs1 : x28<br> - rs2 : x22<br> - rd : x4<br> - rs2_h1_val == 65023<br> - rs2_h0_val == 65503<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                 |[0x8000024c]:UKSUB16 tp, t3, s6<br> [0x80000250]:csrrs t3, vxsat, zero<br> [0x80000254]:sw tp, 80(t2)<br>      |
|  12|[0x80002268]<br>0x0000FFF3|- rs1 : x2<br> - rs2 : x12<br> - rd : x20<br> - rs2_h1_val == 65279<br> - rs1_h1_val == 512<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                             |[0x8000026c]:UKSUB16 s4, sp, a2<br> [0x80000270]:csrrs sp, vxsat, zero<br> [0x80000274]:sw s4, 88(t2)<br>      |
|  13|[0x80002270]<br>0x00780000|- rs1 : x30<br> - rs2 : x25<br> - rd : x29<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 65519<br> - rs1_h1_val == 65527<br>                                                                                                                                                                                                          |[0x8000028c]:UKSUB16 t4, t5, s9<br> [0x80000290]:csrrs t5, vxsat, zero<br> [0x80000294]:sw t4, 96(t2)<br>      |
|  14|[0x80002278]<br>0x0000FBFE|- rs1 : x1<br> - rs2 : x3<br> - rd : x11<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 1<br> - rs1_h0_val == 64511<br>                                                                                                                                                                                                                |[0x800002ac]:UKSUB16 a1, ra, gp<br> [0x800002b0]:csrrs ra, vxsat, zero<br> [0x800002b4]:sw a1, 104(t2)<br>     |
|  15|[0x80002280]<br>0x00001FF4|- rs1 : x14<br> - rs2 : x7<br> - rd : x17<br> - rs2_h1_val == 65503<br> - rs1_h1_val == 65471<br>                                                                                                                                                                                                                                     |[0x800002d0]:UKSUB16 a7, a4, t2<br> [0x800002d4]:csrrs a4, vxsat, zero<br> [0x800002d8]:sw a7, 0(t1)<br>       |
|  16|[0x80002288]<br>0x0000FF7A|- rs1 : x25<br> - rs2 : x4<br> - rd : x19<br> - rs2_h1_val == 65519<br> - rs1_h1_val == 64<br> - rs1_h0_val == 65407<br>                                                                                                                                                                                                              |[0x800002f0]:UKSUB16 s3, s9, tp<br> [0x800002f4]:csrrs s9, vxsat, zero<br> [0x800002f8]:sw s3, 8(t1)<br>       |
|  17|[0x80002290]<br>0x00000000|- rs1 : x31<br> - rs2 : x1<br> - rd : x16<br> - rs1_h0_val == 0<br> - rs2_h1_val == 65527<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                |[0x8000030c]:UKSUB16 a6, t6, ra<br> [0x80000310]:csrrs t6, vxsat, zero<br> [0x80000314]:sw a6, 16(t1)<br>      |
|  18|[0x80002298]<br>0x00000000|- rs1 : x29<br> - rs2 : x30<br> - rd : x25<br> - rs2_h1_val == 65531<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                      |[0x80000328]:UKSUB16 s9, t4, t5<br> [0x8000032c]:csrrs t4, vxsat, zero<br> [0x80000330]:sw s9, 24(t1)<br>      |
|  19|[0x800022a0]<br>0x0000FE7F|- rs1 : x3<br> - rs2 : x10<br> - rd : x28<br> - rs2_h1_val == 65533<br> - rs2_h0_val == 256<br> - rs1_h1_val == 63487<br>                                                                                                                                                                                                             |[0x80000348]:UKSUB16 t3, gp, a0<br> [0x8000034c]:csrrs gp, vxsat, zero<br> [0x80000350]:sw t3, 32(t1)<br>      |
|  20|[0x800022a8]<br>0x00001000|- rs1 : x16<br> - rs2 : x24<br> - rd : x7<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 0<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                |[0x80000360]:UKSUB16 t2, a6, s8<br> [0x80000364]:csrrs a6, vxsat, zero<br> [0x80000368]:sw t2, 40(t1)<br>      |
|  21|[0x800022b0]<br>0x00000000|- rs1 : x19<br> - rs2 : x16<br> - rd : x21<br> - rs2_h1_val == 32768<br> - rs1_h1_val == 32768<br>                                                                                                                                                                                                                                    |[0x80000380]:UKSUB16 s5, s3, a6<br> [0x80000384]:csrrs s3, vxsat, zero<br> [0x80000388]:sw s5, 48(t1)<br>      |
|  22|[0x800022b8]<br>0x35550020|- rs1 : x13<br> - rs2 : x9<br> - rd : x5<br> - rs2_h1_val == 8192<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                          |[0x8000039c]:UKSUB16 t0, a3, s1<br> [0x800003a0]:csrrs a3, vxsat, zero<br> [0x800003a4]:sw t0, 56(t1)<br>      |
|  23|[0x800022c0]<br>0x0000BFFD|- rs1 : x8<br> - rs2 : x14<br> - rd : x24<br> - rs2_h1_val == 4096<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                                                                      |[0x800003b8]:UKSUB16 s8, fp, a4<br> [0x800003bc]:csrrs fp, vxsat, zero<br> [0x800003c0]:sw s8, 64(t1)<br>      |
|  24|[0x800022c8]<br>0x00000006|- rs1 : x15<br> - rs2 : x2<br> - rd : x18<br> - rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                |[0x800003d8]:UKSUB16 s2, a5, sp<br> [0x800003dc]:csrrs a5, vxsat, zero<br> [0x800003e0]:sw s2, 72(t1)<br>      |
|  25|[0x800022d0]<br>0x00000000|- rs1 : x11<br> - rs2 : x23<br> - rd : x9<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 65407<br>                                                                                                                                                                                                                                      |[0x800003f4]:UKSUB16 s1, a1, s7<br> [0x800003f8]:csrrs a1, vxsat, zero<br> [0x800003fc]:sw s1, 80(t1)<br>      |
|  26|[0x800022d8]<br>0x0000003E|- rs1 : x4<br> - rs2 : x29<br> - rd : x8<br> - rs2_h1_val == 512<br> - rs2_h0_val == 65471<br>                                                                                                                                                                                                                                        |[0x80000414]:UKSUB16 fp, tp, t4<br> [0x80000418]:csrrs tp, vxsat, zero<br> [0x8000041c]:sw fp, 88(t1)<br>      |
|  27|[0x800022e0]<br>0xEFFFFEFF|- rs1 : x7<br> - rs2 : x0<br> - rd : x13<br> - rs2_h1_val == 0<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                |[0x80000434]:UKSUB16 a3, t2, zero<br> [0x80000438]:csrrs t2, vxsat, zero<br> [0x8000043c]:sw a3, 96(t1)<br>    |
|  28|[0x800022e8]<br>0x00000000|- rs1 : x10<br> - rs2 : x20<br> - rd : x0<br> - rs2_h1_val == 128<br> - rs2_h0_val == 65527<br> - rs1_h1_val == 65503<br>                                                                                                                                                                                                             |[0x80000454]:UKSUB16 zero, a0, s4<br> [0x80000458]:csrrs a0, vxsat, zero<br> [0x8000045c]:sw zero, 104(t1)<br> |
|  29|[0x800022f0]<br>0x00000000|- rs1 : x20<br> - rs2 : x27<br> - rd : x12<br> - rs2_h1_val == 64<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                                                                        |[0x80000470]:UKSUB16 a2, s4, s11<br> [0x80000474]:csrrs s4, vxsat, zero<br> [0x80000478]:sw a2, 112(t1)<br>    |
|  30|[0x800022f8]<br>0x0000AA9E|- rs1 : x23<br> - rs2 : x28<br> - rd : x26<br> - rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                 |[0x80000498]:UKSUB16 s10, s7, t3<br> [0x8000049c]:csrrs s7, vxsat, zero<br> [0x800004a0]:sw s10, 0(ra)<br>     |
|  31|[0x80002300]<br>0x00007FFE|- rs1 : x22<br> - rs2 : x18<br> - rd : x23<br> - rs2_h1_val == 16<br> - rs2_h0_val == 32768<br>                                                                                                                                                                                                                                       |[0x800004b4]:UKSUB16 s7, s6, s2<br> [0x800004b8]:csrrs s6, vxsat, zero<br> [0x800004bc]:sw s7, 8(ra)<br>       |
|  32|[0x80002308]<br>0x00000000|- rs1 : x0<br> - rs2 : x11<br> - rd : x14<br> - rs2_h1_val == 8<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                             |[0x800004d4]:UKSUB16 a4, zero, a1<br> [0x800004d8]:csrrs zero, vxsat, zero<br> [0x800004dc]:sw a4, 16(ra)<br>  |
|  33|[0x80002310]<br>0xBDFF0000|- rs2_h0_val == 65531<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                                                                                         |[0x800004f4]:UKSUB16 t6, t5, t4<br> [0x800004f8]:csrrs t5, vxsat, zero<br> [0x800004fc]:sw t6, 24(ra)<br>      |
|  34|[0x80002318]<br>0x55427000|- rs1_h0_val == 32768<br>                                                                                                                                                                                                                                                                                                             |[0x8000050c]:UKSUB16 t6, t5, t4<br> [0x80000510]:csrrs t5, vxsat, zero<br> [0x80000514]:sw t6, 32(ra)<br>      |
|  35|[0x80002320]<br>0xF7BF0000|- rs2_h0_val == 57343<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                   |[0x80000528]:UKSUB16 t6, t5, t4<br> [0x8000052c]:csrrs t5, vxsat, zero<br> [0x80000530]:sw t6, 40(ra)<br>      |
|  36|[0x80002328]<br>0x00000000|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                              |[0x80000544]:UKSUB16 t6, t5, t4<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 48(ra)<br>      |
|  37|[0x80002330]<br>0x00000200|- rs2_h0_val == 512<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                      |[0x80000564]:UKSUB16 t6, t5, t4<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 56(ra)<br>      |
|  38|[0x80002338]<br>0x000000F4|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                               |[0x80000584]:UKSUB16 t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 64(ra)<br>      |
|  39|[0x80002340]<br>0x03FC0000|- rs2_h0_val == 43690<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                      |[0x800005a4]:UKSUB16 t6, t5, t4<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 72(ra)<br>      |
|  40|[0x80002348]<br>0x00000000|- rs1_h1_val == 43690<br>                                                                                                                                                                                                                                                                                                             |[0x800005c0]:UKSUB16 t6, t5, t4<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 80(ra)<br>      |
|  41|[0x80002350]<br>0x00000000|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                 |[0x800005e0]:UKSUB16 t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 88(ra)<br>      |
|  42|[0x80002358]<br>0xFEF70000|- rs2_h1_val == 256<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                         |[0x80000600]:UKSUB16 t6, t5, t4<br> [0x80000604]:csrrs t5, vxsat, zero<br> [0x80000608]:sw t6, 96(ra)<br>      |
|  43|[0x80002360]<br>0x00000000|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                 |[0x80000620]:UKSUB16 t6, t5, t4<br> [0x80000624]:csrrs t5, vxsat, zero<br> [0x80000628]:sw t6, 104(ra)<br>     |
|  44|[0x80002368]<br>0x7FFE0000|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                 |[0x80000640]:UKSUB16 t6, t5, t4<br> [0x80000644]:csrrs t5, vxsat, zero<br> [0x80000648]:sw t6, 112(ra)<br>     |
|  45|[0x80002370]<br>0x00060000|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                 |[0x80000660]:UKSUB16 t6, t5, t4<br> [0x80000664]:csrrs t5, vxsat, zero<br> [0x80000668]:sw t6, 120(ra)<br>     |
|  46|[0x80002378]<br>0x00000000|- rs2_h1_val == 65535<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                                                   |[0x8000067c]:UKSUB16 t6, t5, t4<br> [0x80000680]:csrrs t5, vxsat, zero<br> [0x80000684]:sw t6, 128(ra)<br>     |
|  47|[0x80002380]<br>0x4000FFD1|- rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                                                                             |[0x80000698]:UKSUB16 t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 136(ra)<br>     |
|  48|[0x80002388]<br>0x00002AAB|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                             |[0x800006b8]:UKSUB16 t6, t5, t4<br> [0x800006bc]:csrrs t5, vxsat, zero<br> [0x800006c0]:sw t6, 144(ra)<br>     |
|  49|[0x80002390]<br>0x000A0000|- rs2_h0_val == 49151<br>                                                                                                                                                                                                                                                                                                             |[0x800006d8]:UKSUB16 t6, t5, t4<br> [0x800006dc]:csrrs t5, vxsat, zero<br> [0x800006e0]:sw t6, 152(ra)<br>     |
|  50|[0x80002398]<br>0x00000000|- rs2_h0_val == 61439<br>                                                                                                                                                                                                                                                                                                             |[0x800006f8]:UKSUB16 t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 160(ra)<br>     |
|  51|[0x800023a0]<br>0x000207F8|- rs2_h0_val == 63487<br> - rs1_h0_val == 65527<br>                                                                                                                                                                                                                                                                                   |[0x80000718]:UKSUB16 t6, t5, t4<br> [0x8000071c]:csrrs t5, vxsat, zero<br> [0x80000720]:sw t6, 168(ra)<br>     |
|  52|[0x800023a8]<br>0xFBDF0000|- rs2_h0_val == 64511<br>                                                                                                                                                                                                                                                                                                             |[0x80000738]:UKSUB16 t6, t5, t4<br> [0x8000073c]:csrrs t5, vxsat, zero<br> [0x80000740]:sw t6, 176(ra)<br>     |
|  53|[0x800023b0]<br>0x00000000|- rs2_h0_val == 65023<br>                                                                                                                                                                                                                                                                                                             |[0x80000758]:UKSUB16 t6, t5, t4<br> [0x8000075c]:csrrs t5, vxsat, zero<br> [0x80000760]:sw t6, 184(ra)<br>     |
|  54|[0x800023b8]<br>0xBFEE0080|- rs2_h0_val == 65279<br> - rs1_h1_val == 49151<br>                                                                                                                                                                                                                                                                                   |[0x80000778]:UKSUB16 t6, t5, t4<br> [0x8000077c]:csrrs t5, vxsat, zero<br> [0x80000780]:sw t6, 192(ra)<br>     |
|  55|[0x800023c0]<br>0x003F0000|- rs2_h0_val == 65533<br>                                                                                                                                                                                                                                                                                                             |[0x80000794]:UKSUB16 t6, t5, t4<br> [0x80000798]:csrrs t5, vxsat, zero<br> [0x8000079c]:sw t6, 200(ra)<br>     |
|  56|[0x800023c8]<br>0x00000000|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                              |[0x800007b4]:UKSUB16 t6, t5, t4<br> [0x800007b8]:csrrs t5, vxsat, zero<br> [0x800007bc]:sw t6, 208(ra)<br>     |
|  57|[0x800023d0]<br>0x0000FEFF|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                               |[0x800007d4]:UKSUB16 t6, t5, t4<br> [0x800007d8]:csrrs t5, vxsat, zero<br> [0x800007dc]:sw t6, 216(ra)<br>     |
|  58|[0x800023d8]<br>0x00000000|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                |[0x800007f4]:UKSUB16 t6, t5, t4<br> [0x800007f8]:csrrs t5, vxsat, zero<br> [0x800007fc]:sw t6, 224(ra)<br>     |
|  59|[0x800023e0]<br>0x00000000|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                |[0x80000814]:UKSUB16 t6, t5, t4<br> [0x80000818]:csrrs t5, vxsat, zero<br> [0x8000081c]:sw t6, 232(ra)<br>     |
|  60|[0x800023e8]<br>0x0000DFFB|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                 |[0x80000834]:UKSUB16 t6, t5, t4<br> [0x80000838]:csrrs t5, vxsat, zero<br> [0x8000083c]:sw t6, 240(ra)<br>     |
|  61|[0x800023f0]<br>0x00000005|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                 |[0x80000854]:UKSUB16 t6, t5, t4<br> [0x80000858]:csrrs t5, vxsat, zero<br> [0x8000085c]:sw t6, 248(ra)<br>     |
|  62|[0x800023f8]<br>0x00000000|- rs2_h0_val == 65535<br>                                                                                                                                                                                                                                                                                                             |[0x80000874]:UKSUB16 t6, t5, t4<br> [0x80000878]:csrrs t5, vxsat, zero<br> [0x8000087c]:sw t6, 256(ra)<br>     |
|  63|[0x80002400]<br>0x00000002|- rs1_h1_val == 57343<br>                                                                                                                                                                                                                                                                                                             |[0x80000894]:UKSUB16 t6, t5, t4<br> [0x80000898]:csrrs t5, vxsat, zero<br> [0x8000089c]:sw t6, 264(ra)<br>     |
|  64|[0x80002408]<br>0x00000000|- rs1_h1_val == 65407<br>                                                                                                                                                                                                                                                                                                             |[0x800008b4]:UKSUB16 t6, t5, t4<br> [0x800008b8]:csrrs t5, vxsat, zero<br> [0x800008bc]:sw t6, 272(ra)<br>     |
|  65|[0x80002410]<br>0xFFE50000|- rs1_h1_val == 65519<br>                                                                                                                                                                                                                                                                                                             |[0x800008d4]:UKSUB16 t6, t5, t4<br> [0x800008d8]:csrrs t5, vxsat, zero<br> [0x800008dc]:sw t6, 280(ra)<br>     |
|  66|[0x80002418]<br>0x01FCFFEE|- rs1_h1_val == 65531<br>                                                                                                                                                                                                                                                                                                             |[0x800008f4]:UKSUB16 t6, t5, t4<br> [0x800008f8]:csrrs t5, vxsat, zero<br> [0x800008fc]:sw t6, 288(ra)<br>     |
|  67|[0x80002420]<br>0xFEFD9FFF|- rs1_h1_val == 65533<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                                                                                                                   |[0x80000910]:UKSUB16 t6, t5, t4<br> [0x80000914]:csrrs t5, vxsat, zero<br> [0x80000918]:sw t6, 296(ra)<br>     |
|  68|[0x80002428]<br>0xF7FE0000|- rs1_h1_val == 65534<br>                                                                                                                                                                                                                                                                                                             |[0x80000930]:UKSUB16 t6, t5, t4<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sw t6, 304(ra)<br>     |
|  69|[0x80002430]<br>0x0000CFFF|- rs1_h1_val == 8192<br> - rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                                                    |[0x8000094c]:UKSUB16 t6, t5, t4<br> [0x80000950]:csrrs t5, vxsat, zero<br> [0x80000954]:sw t6, 312(ra)<br>     |
|  70|[0x80002438]<br>0x0FF20017|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                              |[0x8000096c]:UKSUB16 t6, t5, t4<br> [0x80000970]:csrrs t5, vxsat, zero<br> [0x80000974]:sw t6, 320(ra)<br>     |
|  71|[0x80002440]<br>0x00000000|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                              |[0x8000098c]:UKSUB16 t6, t5, t4<br> [0x80000990]:csrrs t5, vxsat, zero<br> [0x80000994]:sw t6, 328(ra)<br>     |
|  72|[0x80002448]<br>0x00C00020|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                               |[0x800009ac]:UKSUB16 t6, t5, t4<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sw t6, 336(ra)<br>     |
|  73|[0x80002450]<br>0x00001FED|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                               |[0x800009c8]:UKSUB16 t6, t5, t4<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sw t6, 344(ra)<br>     |
|  74|[0x80002458]<br>0x00000000|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                |[0x800009e4]:UKSUB16 t6, t5, t4<br> [0x800009e8]:csrrs t5, vxsat, zero<br> [0x800009ec]:sw t6, 352(ra)<br>     |
|  75|[0x80002460]<br>0x0000FFF8|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                 |[0x80000a04]:UKSUB16 t6, t5, t4<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sw t6, 360(ra)<br>     |
|  76|[0x80002468]<br>0x00000000|- rs1_h1_val == 2<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                       |[0x80000a20]:UKSUB16 t6, t5, t4<br> [0x80000a24]:csrrs t5, vxsat, zero<br> [0x80000a28]:sw t6, 368(ra)<br>     |
|  77|[0x80002470]<br>0x00000000|- rs1_h1_val == 1<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                           |[0x80000a40]:UKSUB16 t6, t5, t4<br> [0x80000a44]:csrrs t5, vxsat, zero<br> [0x80000a48]:sw t6, 376(ra)<br>     |
|  78|[0x80002480]<br>0x8AAA7FF3|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                             |[0x80000a7c]:UKSUB16 t6, t5, t4<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sw t6, 392(ra)<br>     |
|  79|[0x80002488]<br>0xFBF9FDFB|- rs1_h0_val == 65023<br>                                                                                                                                                                                                                                                                                                             |[0x80000a9c]:UKSUB16 t6, t5, t4<br> [0x80000aa0]:csrrs t5, vxsat, zero<br> [0x80000aa4]:sw t6, 400(ra)<br>     |
|  80|[0x80002490]<br>0x00800000|- rs1_h1_val == 65535<br>                                                                                                                                                                                                                                                                                                             |[0x80000abc]:UKSUB16 t6, t5, t4<br> [0x80000ac0]:csrrs t5, vxsat, zero<br> [0x80000ac4]:sw t6, 408(ra)<br>     |
|  81|[0x80002498]<br>0x0000FFDD|- rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                                                                             |[0x80000adc]:UKSUB16 t6, t5, t4<br> [0x80000ae0]:csrrs t5, vxsat, zero<br> [0x80000ae4]:sw t6, 416(ra)<br>     |
|  82|[0x800024a0]<br>0x7FFEF7F7|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                              |[0x80000afc]:UKSUB16 t6, t5, t4<br> [0x80000b00]:csrrs t5, vxsat, zero<br> [0x80000b04]:sw t6, 424(ra)<br>     |
