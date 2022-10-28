
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b00')]      |
| SIG_REGION                | [('0x80002210', '0x800024a0', '164 words')]      |
| COV_LABELS                | ukcrsa16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ukcrsa16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 162      |
| STAT1                     | 77      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 81     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a10]:UKCRSA16 t6, t5, t4
      [0x80000a14]:csrrs t5, vxsat, zero
      [0x80000a18]:sw t6, 336(ra)
 -- Signature Address: 0x80002458 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 65279
      - rs2_h0_val == 65407
      - rs1_h1_val == 1
      - rs1_h0_val == 65279




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aa4]:UKCRSA16 t6, t5, t4
      [0x80000aa8]:csrrs t5, vxsat, zero
      [0x80000aac]:sw t6, 376(ra)
 -- Signature Address: 0x80002480 Data: 0x0000E00D
 -- Redundant Coverpoints hit by the op
      - opcode : ukcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 57343
      - rs2_h0_val == 65279
      - rs1_h1_val == 57343




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ac4]:UKCRSA16 t6, t5, t4
      [0x80000ac8]:csrrs t5, vxsat, zero
      [0x80000acc]:sw t6, 384(ra)
 -- Signature Address: 0x80002488 Data: 0x00005755
 -- Redundant Coverpoints hit by the op
      - opcode : ukcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 21845
      - rs2_h0_val == 49151
      - rs1_h0_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ae4]:UKCRSA16 t6, t5, t4
      [0x80000ae8]:csrrs t5, vxsat, zero
      [0x80000aec]:sw t6, 392(ra)
 -- Signature Address: 0x80002490 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 16
      - rs1_h0_val == 65533






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukcrsa16', 'rs1 : x28', 'rs2 : x28', 'rd : x28', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 1', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000118]:UKCRSA16 t3, t3, t3
	-[0x8000011c]:csrrs t3, vxsat, zero
	-[0x80000120]:sw t3, 0(s4)
Current Store : [0x80000124] : sw t3, 4(s4) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x6', 'rd : x9', 'rs1 == rs2 != rd', 'rs2_h1_val == 57343', 'rs2_h0_val == 65279', 'rs1_h1_val == 57343', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000138]:UKCRSA16 s1, t1, t1
	-[0x8000013c]:csrrs t1, vxsat, zero
	-[0x80000140]:sw s1, 8(s4)
Current Store : [0x80000144] : sw t1, 12(s4) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x18', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 65519', 'rs2_h0_val == 65535', 'rs1_h1_val == 65527', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x80000158]:UKCRSA16 t6, s11, s2
	-[0x8000015c]:csrrs s11, vxsat, zero
	-[0x80000160]:sw t6, 16(s4)
Current Store : [0x80000164] : sw s11, 20(s4) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x19', 'rd : x19', 'rs2 == rd != rs1', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 43690', 'rs2_h0_val == 16', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x80000178]:UKCRSA16 s3, a5, s3
	-[0x8000017c]:csrrs a5, vxsat, zero
	-[0x80000180]:sw s3, 24(s4)
Current Store : [0x80000184] : sw a5, 28(s4) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x21', 'rd : x0', 'rs1 == rd != rs2', 'rs1_h0_val == 0', 'rs2_h1_val == 21845', 'rs2_h0_val == 49151', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000198]:UKCRSA16 zero, zero, s5
	-[0x8000019c]:csrrs zero, vxsat, zero
	-[0x800001a0]:sw zero, 32(s4)
Current Store : [0x800001a4] : sw zero, 36(s4) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x25', 'rd : x14', 'rs2_h1_val == 32767', 'rs2_h0_val == 43690', 'rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x800001b8]:UKCRSA16 a4, s5, s9
	-[0x800001bc]:csrrs s5, vxsat, zero
	-[0x800001c0]:sw a4, 40(s4)
Current Store : [0x800001c4] : sw s5, 44(s4) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x17', 'rd : x10', 'rs2_h1_val == 49151', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800001d4]:UKCRSA16 a0, a3, a7
	-[0x800001d8]:csrrs a3, vxsat, zero
	-[0x800001dc]:sw a0, 48(s4)
Current Store : [0x800001e0] : sw a3, 52(s4) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x8', 'rd : x24', 'rs2_h1_val == 61439', 'rs2_h0_val == 2048', 'rs1_h1_val == 63487']
Last Code Sequence : 
	-[0x800001f4]:UKCRSA16 s8, tp, fp
	-[0x800001f8]:csrrs tp, vxsat, zero
	-[0x800001fc]:sw s8, 56(s4)
Current Store : [0x80000200] : sw tp, 60(s4) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x22', 'rd : x16', 'rs2_h1_val == 63487', 'rs2_h0_val == 4096', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x8000020c]:UKCRSA16 a6, a7, s6
	-[0x80000210]:csrrs a7, vxsat, zero
	-[0x80000214]:sw a6, 64(s4)
Current Store : [0x80000218] : sw a7, 68(s4) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x31', 'rd : x23', 'rs2_h1_val == 64511', 'rs1_h1_val == 49151']
Last Code Sequence : 
	-[0x8000022c]:UKCRSA16 s7, s3, t6
	-[0x80000230]:csrrs s3, vxsat, zero
	-[0x80000234]:sw s7, 72(s4)
Current Store : [0x80000238] : sw s3, 76(s4) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rd : x1', 'rs2_h1_val == 65023', 'rs2_h0_val == 4', 'rs1_h1_val == 65535', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000248]:UKCRSA16 ra, t0, t2
	-[0x8000024c]:csrrs t0, vxsat, zero
	-[0x80000250]:sw ra, 80(s4)
Current Store : [0x80000254] : sw t0, 84(s4) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x5', 'rd : x8', 'rs2_h1_val == 65279', 'rs2_h0_val == 65471', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x80000268]:UKCRSA16 fp, s2, t0
	-[0x8000026c]:csrrs s2, vxsat, zero
	-[0x80000270]:sw fp, 88(s4)
Current Store : [0x80000274] : sw s2, 92(s4) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x2', 'rd : x11', 'rs2_h1_val == 65407']
Last Code Sequence : 
	-[0x80000284]:UKCRSA16 a1, t6, sp
	-[0x80000288]:csrrs t6, vxsat, zero
	-[0x8000028c]:sw a1, 96(s4)
Current Store : [0x80000290] : sw t6, 100(s4) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x11', 'rd : x4', 'rs2_h1_val == 65471', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800002a4]:UKCRSA16 tp, a2, a1
	-[0x800002a8]:csrrs a2, vxsat, zero
	-[0x800002ac]:sw tp, 104(s4)
Current Store : [0x800002b0] : sw a2, 108(s4) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x12', 'rd : x3', 'rs2_h1_val == 65503', 'rs1_h1_val == 43690']
Last Code Sequence : 
	-[0x800002c0]:UKCRSA16 gp, t2, a2
	-[0x800002c4]:csrrs t2, vxsat, zero
	-[0x800002c8]:sw gp, 112(s4)
Current Store : [0x800002cc] : sw t2, 116(s4) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x1', 'rd : x21', 'rs2_h1_val == 65527', 'rs2_h0_val == 1024', 'rs1_h1_val == 16', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x800002e4]:UKCRSA16 s5, fp, ra
	-[0x800002e8]:csrrs fp, vxsat, zero
	-[0x800002ec]:sw s5, 0(a1)
Current Store : [0x800002f0] : sw fp, 4(a1) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x9', 'rd : x22', 'rs2_h1_val == 65531']
Last Code Sequence : 
	-[0x80000304]:UKCRSA16 s6, a0, s1
	-[0x80000308]:csrrs a0, vxsat, zero
	-[0x8000030c]:sw s6, 8(a1)
Current Store : [0x80000310] : sw a0, 12(a1) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x27', 'rd : x12', 'rs2_h1_val == 65533', 'rs1_h1_val == 65279', 'rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x80000324]:UKCRSA16 a2, t5, s11
	-[0x80000328]:csrrs t5, vxsat, zero
	-[0x8000032c]:sw a2, 16(a1)
Current Store : [0x80000330] : sw t5, 20(a1) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x14', 'rd : x25', 'rs2_h1_val == 65534', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x80000344]:UKCRSA16 s9, s4, a4
	-[0x80000348]:csrrs s4, vxsat, zero
	-[0x8000034c]:sw s9, 24(a1)
Current Store : [0x80000350] : sw s4, 28(a1) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x13', 'rd : x2', 'rs2_h1_val == 32768', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000364]:UKCRSA16 sp, s7, a3
	-[0x80000368]:csrrs s7, vxsat, zero
	-[0x8000036c]:sw sp, 32(a1)
Current Store : [0x80000370] : sw s7, 36(a1) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x10', 'rd : x15', 'rs2_h1_val == 16384', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000380]:UKCRSA16 a5, s1, a0
	-[0x80000384]:csrrs s1, vxsat, zero
	-[0x80000388]:sw a5, 40(a1)
Current Store : [0x8000038c] : sw s1, 44(a1) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x23', 'rd : x29', 'rs2_h1_val == 8192', 'rs1_h1_val == 2048', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800003a0]:UKCRSA16 t4, s6, s7
	-[0x800003a4]:csrrs s6, vxsat, zero
	-[0x800003a8]:sw t4, 48(a1)
Current Store : [0x800003ac] : sw s6, 52(a1) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x26', 'rd : x17', 'rs2_h1_val == 4096', 'rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x800003c0]:UKCRSA16 a7, gp, s10
	-[0x800003c4]:csrrs gp, vxsat, zero
	-[0x800003c8]:sw a7, 56(a1)
Current Store : [0x800003cc] : sw gp, 60(a1) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x20', 'rd : x13', 'rs2_h1_val == 2048', 'rs2_h0_val == 63487', 'rs1_h1_val == 61439']
Last Code Sequence : 
	-[0x800003e0]:UKCRSA16 a3, t4, s4
	-[0x800003e4]:csrrs t4, vxsat, zero
	-[0x800003e8]:sw a3, 64(a1)
Current Store : [0x800003ec] : sw t4, 68(a1) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x4', 'rd : x27', 'rs2_h1_val == 1024', 'rs2_h0_val == 65533', 'rs1_h1_val == 128', 'rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x80000400]:UKCRSA16 s11, s9, tp
	-[0x80000404]:csrrs s9, vxsat, zero
	-[0x80000408]:sw s11, 72(a1)
Current Store : [0x8000040c] : sw s9, 76(a1) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x3', 'rd : x6', 'rs2_h1_val == 512', 'rs2_h0_val == 65503', 'rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x80000420]:UKCRSA16 t1, a4, gp
	-[0x80000424]:csrrs a4, vxsat, zero
	-[0x80000428]:sw t1, 80(a1)
Current Store : [0x8000042c] : sw a4, 84(a1) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x29', 'rd : x18', 'rs2_h1_val == 256', 'rs2_h0_val == 32', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000440]:UKCRSA16 s2, a6, t4
	-[0x80000444]:csrrs a6, vxsat, zero
	-[0x80000448]:sw s2, 88(a1)
Current Store : [0x8000044c] : sw a6, 92(a1) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x15', 'rd : x26', 'rs2_h1_val == 128', 'rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x80000460]:UKCRSA16 s10, ra, a5
	-[0x80000464]:csrrs ra, vxsat, zero
	-[0x80000468]:sw s10, 96(a1)
Current Store : [0x8000046c] : sw ra, 100(a1) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x24', 'rd : x20', 'rs2_h1_val == 64', 'rs1_h1_val == 4', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x80000480]:UKCRSA16 s4, sp, s8
	-[0x80000484]:csrrs sp, vxsat, zero
	-[0x80000488]:sw s4, 104(a1)
Current Store : [0x8000048c] : sw sp, 108(a1) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x16', 'rd : x5', 'rs2_h1_val == 32', 'rs2_h0_val == 32768']
Last Code Sequence : 
	-[0x8000049c]:UKCRSA16 t0, s10, a6
	-[0x800004a0]:csrrs s10, vxsat, zero
	-[0x800004a4]:sw t0, 112(a1)
Current Store : [0x800004a8] : sw s10, 116(a1) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x30', 'rd : x7', 'rs2_h1_val == 16', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x800004bc]:UKCRSA16 t2, s8, t5
	-[0x800004c0]:csrrs s8, vxsat, zero
	-[0x800004c4]:sw t2, 120(a1)
Current Store : [0x800004c8] : sw s8, 124(a1) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x0', 'rd : x30', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x800004e4]:UKCRSA16 t5, a1, zero
	-[0x800004e8]:csrrs a1, vxsat, zero
	-[0x800004ec]:sw t5, 0(ra)
Current Store : [0x800004f0] : sw a1, 4(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 57343', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000500]:UKCRSA16 t6, t5, t4
	-[0x80000504]:csrrs t5, vxsat, zero
	-[0x80000508]:sw t6, 8(ra)
Current Store : [0x8000050c] : sw t5, 12(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000520]:UKCRSA16 t6, t5, t4
	-[0x80000524]:csrrs t5, vxsat, zero
	-[0x80000528]:sw t6, 16(ra)
Current Store : [0x8000052c] : sw t5, 20(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000540]:UKCRSA16 t6, t5, t4
	-[0x80000544]:csrrs t5, vxsat, zero
	-[0x80000548]:sw t6, 24(ra)
Current Store : [0x8000054c] : sw t5, 28(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000055c]:UKCRSA16 t6, t5, t4
	-[0x80000560]:csrrs t5, vxsat, zero
	-[0x80000564]:sw t6, 32(ra)
Current Store : [0x80000568] : sw t5, 36(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x8000057c]:UKCRSA16 t6, t5, t4
	-[0x80000580]:csrrs t5, vxsat, zero
	-[0x80000584]:sw t6, 40(ra)
Current Store : [0x80000588] : sw t5, 44(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64511', 'rs1_h1_val == 1024', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000059c]:UKCRSA16 t6, t5, t4
	-[0x800005a0]:csrrs t5, vxsat, zero
	-[0x800005a4]:sw t6, 48(ra)
Current Store : [0x800005a8] : sw t5, 52(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800005bc]:UKCRSA16 t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 56(ra)
Current Store : [0x800005c8] : sw t5, 60(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800005dc]:UKCRSA16 t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 64(ra)
Current Store : [0x800005e8] : sw t5, 68(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h1_val == 2', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800005fc]:UKCRSA16 t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 72(ra)
Current Store : [0x80000608] : sw t5, 76(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000618]:UKCRSA16 t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 80(ra)
Current Store : [0x80000624] : sw t5, 84(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000638]:UKCRSA16 t6, t5, t4
	-[0x8000063c]:csrrs t5, vxsat, zero
	-[0x80000640]:sw t6, 88(ra)
Current Store : [0x80000644] : sw t5, 92(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs1_h1_val == 65519']
Last Code Sequence : 
	-[0x80000658]:UKCRSA16 t6, t5, t4
	-[0x8000065c]:csrrs t5, vxsat, zero
	-[0x80000660]:sw t6, 96(ra)
Current Store : [0x80000664] : sw t5, 100(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x80000678]:UKCRSA16 t6, t5, t4
	-[0x8000067c]:csrrs t5, vxsat, zero
	-[0x80000680]:sw t6, 104(ra)
Current Store : [0x80000684] : sw t5, 108(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x80000698]:UKCRSA16 t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 112(ra)
Current Store : [0x800006a4] : sw t5, 116(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 65535', 'rs1_h1_val == 65533']
Last Code Sequence : 
	-[0x800006b8]:UKCRSA16 t6, t5, t4
	-[0x800006bc]:csrrs t5, vxsat, zero
	-[0x800006c0]:sw t6, 120(ra)
Current Store : [0x800006c4] : sw t5, 124(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x800006d8]:UKCRSA16 t6, t5, t4
	-[0x800006dc]:csrrs t5, vxsat, zero
	-[0x800006e0]:sw t6, 128(ra)
Current Store : [0x800006e4] : sw t5, 132(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x800006f8]:UKCRSA16 t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 136(ra)
Current Store : [0x80000704] : sw t5, 140(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == 61439']
Last Code Sequence : 
	-[0x80000718]:UKCRSA16 t6, t5, t4
	-[0x8000071c]:csrrs t5, vxsat, zero
	-[0x80000720]:sw t6, 144(ra)
Current Store : [0x80000724] : sw t5, 148(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65023']
Last Code Sequence : 
	-[0x80000738]:UKCRSA16 t6, t5, t4
	-[0x8000073c]:csrrs t5, vxsat, zero
	-[0x80000740]:sw t6, 152(ra)
Current Store : [0x80000744] : sw t5, 156(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65407', 'rs1_h1_val == 65023']
Last Code Sequence : 
	-[0x80000754]:UKCRSA16 t6, t5, t4
	-[0x80000758]:csrrs t5, vxsat, zero
	-[0x8000075c]:sw t6, 160(ra)
Current Store : [0x80000760] : sw t5, 164(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80000774]:UKCRSA16 t6, t5, t4
	-[0x80000778]:csrrs t5, vxsat, zero
	-[0x8000077c]:sw t6, 168(ra)
Current Store : [0x80000780] : sw t5, 172(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000794]:UKCRSA16 t6, t5, t4
	-[0x80000798]:csrrs t5, vxsat, zero
	-[0x8000079c]:sw t6, 176(ra)
Current Store : [0x800007a0] : sw t5, 180(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x800007b4]:UKCRSA16 t6, t5, t4
	-[0x800007b8]:csrrs t5, vxsat, zero
	-[0x800007bc]:sw t6, 184(ra)
Current Store : [0x800007c0] : sw t5, 188(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800007d4]:UKCRSA16 t6, t5, t4
	-[0x800007d8]:csrrs t5, vxsat, zero
	-[0x800007dc]:sw t6, 192(ra)
Current Store : [0x800007e0] : sw t5, 196(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800007f4]:UKCRSA16 t6, t5, t4
	-[0x800007f8]:csrrs t5, vxsat, zero
	-[0x800007fc]:sw t6, 200(ra)
Current Store : [0x80000800] : sw t5, 204(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65503']
Last Code Sequence : 
	-[0x80000810]:UKCRSA16 t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 208(ra)
Current Store : [0x8000081c] : sw t5, 212(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64511']
Last Code Sequence : 
	-[0x80000830]:UKCRSA16 t6, t5, t4
	-[0x80000834]:csrrs t5, vxsat, zero
	-[0x80000838]:sw t6, 216(ra)
Current Store : [0x8000083c] : sw t5, 220(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65407']
Last Code Sequence : 
	-[0x80000850]:UKCRSA16 t6, t5, t4
	-[0x80000854]:csrrs t5, vxsat, zero
	-[0x80000858]:sw t6, 224(ra)
Current Store : [0x8000085c] : sw t5, 228(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65471']
Last Code Sequence : 
	-[0x80000870]:UKCRSA16 t6, t5, t4
	-[0x80000874]:csrrs t5, vxsat, zero
	-[0x80000878]:sw t6, 232(ra)
Current Store : [0x8000087c] : sw t5, 236(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65531']
Last Code Sequence : 
	-[0x80000890]:UKCRSA16 t6, t5, t4
	-[0x80000894]:csrrs t5, vxsat, zero
	-[0x80000898]:sw t6, 240(ra)
Current Store : [0x8000089c] : sw t5, 244(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65531']
Last Code Sequence : 
	-[0x800008b0]:UKCRSA16 t6, t5, t4
	-[0x800008b4]:csrrs t5, vxsat, zero
	-[0x800008b8]:sw t6, 248(ra)
Current Store : [0x800008bc] : sw t5, 252(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x800008d0]:UKCRSA16 t6, t5, t4
	-[0x800008d4]:csrrs t5, vxsat, zero
	-[0x800008d8]:sw t6, 256(ra)
Current Store : [0x800008dc] : sw t5, 260(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800008f0]:UKCRSA16 t6, t5, t4
	-[0x800008f4]:csrrs t5, vxsat, zero
	-[0x800008f8]:sw t6, 264(ra)
Current Store : [0x800008fc] : sw t5, 268(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000910]:UKCRSA16 t6, t5, t4
	-[0x80000914]:csrrs t5, vxsat, zero
	-[0x80000918]:sw t6, 272(ra)
Current Store : [0x8000091c] : sw t5, 276(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000930]:UKCRSA16 t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 280(ra)
Current Store : [0x8000093c] : sw t5, 284(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65534']
Last Code Sequence : 
	-[0x80000950]:UKCRSA16 t6, t5, t4
	-[0x80000954]:csrrs t5, vxsat, zero
	-[0x80000958]:sw t6, 288(ra)
Current Store : [0x8000095c] : sw t5, 292(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000970]:UKCRSA16 t6, t5, t4
	-[0x80000974]:csrrs t5, vxsat, zero
	-[0x80000978]:sw t6, 296(ra)
Current Store : [0x8000097c] : sw t5, 300(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65519']
Last Code Sequence : 
	-[0x80000990]:UKCRSA16 t6, t5, t4
	-[0x80000994]:csrrs t5, vxsat, zero
	-[0x80000998]:sw t6, 304(ra)
Current Store : [0x8000099c] : sw t5, 308(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x800009b0]:UKCRSA16 t6, t5, t4
	-[0x800009b4]:csrrs t5, vxsat, zero
	-[0x800009b8]:sw t6, 312(ra)
Current Store : [0x800009bc] : sw t5, 316(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65527']
Last Code Sequence : 
	-[0x800009d0]:UKCRSA16 t6, t5, t4
	-[0x800009d4]:csrrs t5, vxsat, zero
	-[0x800009d8]:sw t6, 320(ra)
Current Store : [0x800009dc] : sw t5, 324(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x800009f0]:UKCRSA16 t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 328(ra)
Current Store : [0x800009fc] : sw t5, 332(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['opcode : ukcrsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 65279', 'rs2_h0_val == 65407', 'rs1_h1_val == 1', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000a10]:UKCRSA16 t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 336(ra)
Current Store : [0x80000a1c] : sw t5, 340(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000a2c]:UKCRSA16 t6, t5, t4
	-[0x80000a30]:csrrs t5, vxsat, zero
	-[0x80000a34]:sw t6, 344(ra)
Current Store : [0x80000a38] : sw t5, 348(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x80000a48]:UKCRSA16 t6, t5, t4
	-[0x80000a4c]:csrrs t5, vxsat, zero
	-[0x80000a50]:sw t6, 352(ra)
Current Store : [0x80000a54] : sw t5, 356(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65534']
Last Code Sequence : 
	-[0x80000a64]:UKCRSA16 t6, t5, t4
	-[0x80000a68]:csrrs t5, vxsat, zero
	-[0x80000a6c]:sw t6, 360(ra)
Current Store : [0x80000a70] : sw t5, 364(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32768']
Last Code Sequence : 
	-[0x80000a84]:UKCRSA16 t6, t5, t4
	-[0x80000a88]:csrrs t5, vxsat, zero
	-[0x80000a8c]:sw t6, 368(ra)
Current Store : [0x80000a90] : sw t5, 372(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['opcode : ukcrsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 57343', 'rs2_h0_val == 65279', 'rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x80000aa4]:UKCRSA16 t6, t5, t4
	-[0x80000aa8]:csrrs t5, vxsat, zero
	-[0x80000aac]:sw t6, 376(ra)
Current Store : [0x80000ab0] : sw t5, 380(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['opcode : ukcrsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs2_h0_val == 49151', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000ac4]:UKCRSA16 t6, t5, t4
	-[0x80000ac8]:csrrs t5, vxsat, zero
	-[0x80000acc]:sw t6, 384(ra)
Current Store : [0x80000ad0] : sw t5, 388(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['opcode : ukcrsa16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 16', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x80000ae4]:UKCRSA16 t6, t5, t4
	-[0x80000ae8]:csrrs t5, vxsat, zero
	-[0x80000aec]:sw t6, 392(ra)
Current Store : [0x80000af0] : sw t5, 396(ra) -- Store: [0x80002494]:0x00000001





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

|s.no|        signature         |                                                                                                                                    coverpoints                                                                                                                                     |                                                       code                                                        |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : ukcrsa16<br> - rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 1<br> - rs1_h1_val == 1<br> |[0x80000118]:UKCRSA16 t3, t3, t3<br> [0x8000011c]:csrrs t3, vxsat, zero<br> [0x80000120]:sw t3, 0(s4)<br>          |
|   2|[0x80002218]<br>0x0000FFFF|- rs1 : x6<br> - rs2 : x6<br> - rd : x9<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 65279<br> - rs1_h1_val == 57343<br> - rs1_h0_val == 65279<br>                                                                                                          |[0x80000138]:UKCRSA16 s1, t1, t1<br> [0x8000013c]:csrrs t1, vxsat, zero<br> [0x80000140]:sw s1, 8(s4)<br>          |
|   3|[0x80002220]<br>0x0000FFFF|- rs1 : x27<br> - rs2 : x18<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 65519<br> - rs2_h0_val == 65535<br> - rs1_h1_val == 65527<br> - rs1_h0_val == 65535<br>           |[0x80000158]:UKCRSA16 t6, s11, s2<br> [0x8000015c]:csrrs s11, vxsat, zero<br> [0x80000160]:sw t6, 16(s4)<br>       |
|   4|[0x80002228]<br>0x0000FFFF|- rs1 : x15<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 16<br> - rs1_h0_val == 65531<br>                                                               |[0x80000178]:UKCRSA16 s3, a5, s3<br> [0x8000017c]:csrrs a5, vxsat, zero<br> [0x80000180]:sw s3, 24(s4)<br>         |
|   5|[0x80002230]<br>0x00000000|- rs1 : x0<br> - rs2 : x21<br> - rd : x0<br> - rs1 == rd != rs2<br> - rs1_h0_val == 0<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 49151<br> - rs1_h1_val == 0<br>                                                                                                                 |[0x80000198]:UKCRSA16 zero, zero, s5<br> [0x8000019c]:csrrs zero, vxsat, zero<br> [0x800001a0]:sw zero, 32(s4)<br> |
|   6|[0x80002238]<br>0x0000FFFF|- rs1 : x21<br> - rs2 : x25<br> - rd : x14<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 43690<br> - rs1_h0_val == 65407<br>                                                                                                                                                        |[0x800001b8]:UKCRSA16 a4, s5, s9<br> [0x800001bc]:csrrs s5, vxsat, zero<br> [0x800001c0]:sw a4, 40(s4)<br>         |
|   7|[0x80002240]<br>0x0000FFFF|- rs1 : x13<br> - rs2 : x17<br> - rd : x10<br> - rs2_h1_val == 49151<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                  |[0x800001d4]:UKCRSA16 a0, a3, a7<br> [0x800001d8]:csrrs a3, vxsat, zero<br> [0x800001dc]:sw a0, 48(s4)<br>         |
|   8|[0x80002248]<br>0xEFFFFFFF|- rs1 : x4<br> - rs2 : x8<br> - rd : x24<br> - rs2_h1_val == 61439<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 63487<br>                                                                                                                                                           |[0x800001f4]:UKCRSA16 s8, tp, fp<br> [0x800001f8]:csrrs tp, vxsat, zero<br> [0x800001fc]:sw s8, 56(s4)<br>         |
|   9|[0x80002250]<br>0x0000FFFF|- rs1 : x17<br> - rs2 : x22<br> - rd : x16<br> - rs2_h1_val == 63487<br> - rs2_h0_val == 4096<br> - rs1_h1_val == 256<br>                                                                                                                                                           |[0x8000020c]:UKCRSA16 a6, a7, s6<br> [0x80000210]:csrrs a7, vxsat, zero<br> [0x80000214]:sw a6, 64(s4)<br>         |
|  10|[0x80002258]<br>0xBFEDFC10|- rs1 : x19<br> - rs2 : x31<br> - rd : x23<br> - rs2_h1_val == 64511<br> - rs1_h1_val == 49151<br>                                                                                                                                                                                  |[0x8000022c]:UKCRSA16 s7, s3, t6<br> [0x80000230]:csrrs s3, vxsat, zero<br> [0x80000234]:sw s7, 72(s4)<br>         |
|  11|[0x80002260]<br>0xFFFBFFFF|- rs1 : x5<br> - rs2 : x7<br> - rd : x1<br> - rs2_h1_val == 65023<br> - rs2_h0_val == 4<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 8192<br>                                                                                                                                      |[0x80000248]:UKCRSA16 ra, t0, t2<br> [0x8000024c]:csrrs t0, vxsat, zero<br> [0x80000250]:sw ra, 80(s4)<br>         |
|  12|[0x80002268]<br>0x0000FFFF|- rs1 : x18<br> - rs2 : x5<br> - rd : x8<br> - rs2_h1_val == 65279<br> - rs2_h0_val == 65471<br> - rs1_h0_val == 65471<br>                                                                                                                                                          |[0x80000268]:UKCRSA16 fp, s2, t0<br> [0x8000026c]:csrrs s2, vxsat, zero<br> [0x80000270]:sw fp, 88(s4)<br>         |
|  13|[0x80002270]<br>0x0000FFFF|- rs1 : x31<br> - rs2 : x2<br> - rd : x11<br> - rs2_h1_val == 65407<br>                                                                                                                                                                                                             |[0x80000284]:UKCRSA16 a1, t6, sp<br> [0x80000288]:csrrs t6, vxsat, zero<br> [0x8000028c]:sw a1, 96(s4)<br>         |
|  14|[0x80002278]<br>0x000EFFFF|- rs1 : x12<br> - rs2 : x11<br> - rd : x4<br> - rs2_h1_val == 65471<br> - rs1_h0_val == 512<br>                                                                                                                                                                                     |[0x800002a4]:UKCRSA16 tp, a2, a1<br> [0x800002a8]:csrrs a2, vxsat, zero<br> [0x800002ac]:sw tp, 104(s4)<br>        |
|  15|[0x80002280]<br>0xAAA5FFFF|- rs1 : x7<br> - rs2 : x12<br> - rd : x3<br> - rs2_h1_val == 65503<br> - rs1_h1_val == 43690<br>                                                                                                                                                                                    |[0x800002c0]:UKCRSA16 gp, t2, a2<br> [0x800002c4]:csrrs t2, vxsat, zero<br> [0x800002c8]:sw gp, 112(s4)<br>        |
|  16|[0x80002288]<br>0x0000FFFF|- rs1 : x8<br> - rs2 : x1<br> - rd : x21<br> - rs2_h1_val == 65527<br> - rs2_h0_val == 1024<br> - rs1_h1_val == 16<br> - rs1_h0_val == 32768<br>                                                                                                                                    |[0x800002e4]:UKCRSA16 s5, fp, ra<br> [0x800002e8]:csrrs fp, vxsat, zero<br> [0x800002ec]:sw s5, 0(a1)<br>          |
|  17|[0x80002290]<br>0x0000FFFF|- rs1 : x10<br> - rs2 : x9<br> - rd : x22<br> - rs2_h1_val == 65531<br>                                                                                                                                                                                                             |[0x80000304]:UKCRSA16 s6, a0, s1<br> [0x80000308]:csrrs a0, vxsat, zero<br> [0x8000030c]:sw s6, 8(a1)<br>          |
|  18|[0x80002298]<br>0xFEECFFFF|- rs1 : x30<br> - rs2 : x27<br> - rd : x12<br> - rs2_h1_val == 65533<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 65503<br>                                                                                                                                                        |[0x80000324]:UKCRSA16 a2, t5, s11<br> [0x80000328]:csrrs t5, vxsat, zero<br> [0x8000032c]:sw a2, 16(a1)<br>        |
|  19|[0x800022a0]<br>0x000DFFFF|- rs1 : x20<br> - rs2 : x14<br> - rd : x25<br> - rs2_h1_val == 65534<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                  |[0x80000344]:UKCRSA16 s9, s4, a4<br> [0x80000348]:csrrs s4, vxsat, zero<br> [0x8000034c]:sw s9, 24(a1)<br>         |
|  20|[0x800022a8]<br>0x0004FFFF|- rs1 : x23<br> - rs2 : x13<br> - rd : x2<br> - rs2_h1_val == 32768<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                   |[0x80000364]:UKCRSA16 sp, s7, a3<br> [0x80000368]:csrrs s7, vxsat, zero<br> [0x8000036c]:sw sp, 32(a1)<br>         |
|  21|[0x800022b0]<br>0x00008000|- rs1 : x9<br> - rs2 : x10<br> - rd : x15<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                   |[0x80000380]:UKCRSA16 a5, s1, a0<br> [0x80000384]:csrrs s1, vxsat, zero<br> [0x80000388]:sw a5, 40(a1)<br>         |
|  22|[0x800022b8]<br>0x07F72100|- rs1 : x22<br> - rs2 : x23<br> - rd : x29<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 256<br>                                                                                                                                                            |[0x800003a0]:UKCRSA16 t4, s6, s7<br> [0x800003a4]:csrrs s6, vxsat, zero<br> [0x800003a8]:sw t4, 48(a1)<br>         |
|  23|[0x800022c0]<br>0x0000EFFF|- rs1 : x3<br> - rs2 : x26<br> - rd : x17<br> - rs2_h1_val == 4096<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                    |[0x800003c0]:UKCRSA16 a7, gp, s10<br> [0x800003c4]:csrrs gp, vxsat, zero<br> [0x800003c8]:sw a7, 56(a1)<br>        |
|  24|[0x800022c8]<br>0x00000812|- rs1 : x29<br> - rs2 : x20<br> - rd : x13<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 63487<br> - rs1_h1_val == 61439<br>                                                                                                                                                         |[0x800003e0]:UKCRSA16 a3, t4, s4<br> [0x800003e4]:csrrs t4, vxsat, zero<br> [0x800003e8]:sw a3, 64(a1)<br>         |
|  25|[0x800022d0]<br>0x0000FFFF|- rs1 : x25<br> - rs2 : x4<br> - rd : x27<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 65533<br> - rs1_h1_val == 128<br> - rs1_h0_val == 65527<br>                                                                                                                                  |[0x80000400]:UKCRSA16 s11, s9, tp<br> [0x80000404]:csrrs s9, vxsat, zero<br> [0x80000408]:sw s11, 72(a1)<br>       |
|  26|[0x800022d8]<br>0x0000C1FF|- rs1 : x14<br> - rs2 : x3<br> - rd : x6<br> - rs2_h1_val == 512<br> - rs2_h0_val == 65503<br> - rs1_h0_val == 49151<br>                                                                                                                                                            |[0x80000420]:UKCRSA16 t1, a4, gp<br> [0x80000424]:csrrs a4, vxsat, zero<br> [0x80000428]:sw t1, 80(a1)<br>         |
|  27|[0x800022e0]<br>0x0000E0FF|- rs1 : x16<br> - rs2 : x29<br> - rd : x18<br> - rs2_h1_val == 256<br> - rs2_h0_val == 32<br> - rs1_h1_val == 8<br>                                                                                                                                                                 |[0x80000440]:UKCRSA16 s2, a6, t4<br> [0x80000444]:csrrs a6, vxsat, zero<br> [0x80000448]:sw s2, 88(a1)<br>         |
|  28|[0x800022e8]<br>0x000DFE7F|- rs1 : x1<br> - rs2 : x15<br> - rd : x26<br> - rs2_h1_val == 128<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                     |[0x80000460]:UKCRSA16 s10, ra, a5<br> [0x80000464]:csrrs ra, vxsat, zero<br> [0x80000468]:sw s10, 96(a1)<br>       |
|  29|[0x800022f0]<br>0x0000FFFF|- rs1 : x2<br> - rs2 : x24<br> - rd : x20<br> - rs2_h1_val == 64<br> - rs1_h1_val == 4<br> - rs1_h0_val == 65534<br>                                                                                                                                                                |[0x80000480]:UKCRSA16 s4, sp, s8<br> [0x80000484]:csrrs sp, vxsat, zero<br> [0x80000488]:sw s4, 104(a1)<br>        |
|  30|[0x800022f8]<br>0x7EFFFFFF|- rs1 : x26<br> - rs2 : x16<br> - rd : x5<br> - rs2_h1_val == 32<br> - rs2_h0_val == 32768<br>                                                                                                                                                                                      |[0x8000049c]:UKCRSA16 t0, s10, a6<br> [0x800004a0]:csrrs s10, vxsat, zero<br> [0x800004a4]:sw t0, 112(a1)<br>      |
|  31|[0x80002300]<br>0x0000FF8F|- rs1 : x24<br> - rs2 : x30<br> - rd : x7<br> - rs2_h1_val == 16<br> - rs2_h0_val == 128<br>                                                                                                                                                                                        |[0x800004bc]:UKCRSA16 t2, s8, t5<br> [0x800004c0]:csrrs s8, vxsat, zero<br> [0x800004c4]:sw t2, 120(a1)<br>        |
|  32|[0x80002308]<br>0x0006FFFD|- rs1 : x11<br> - rs2 : x0<br> - rd : x30<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == 65533<br>                                                                                                                                                                 |[0x800004e4]:UKCRSA16 t5, a1, zero<br> [0x800004e8]:csrrs a1, vxsat, zero<br> [0x800004ec]:sw t5, 0(ra)<br>        |
|  33|[0x80002310]<br>0x00001000|- rs2_h0_val == 57343<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                  |[0x80000500]:UKCRSA16 t6, t5, t4<br> [0x80000504]:csrrs t5, vxsat, zero<br> [0x80000508]:sw t6, 8(ra)<br>          |
|  34|[0x80002318]<br>0x0000FFFF|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                            |[0x80000520]:UKCRSA16 t6, t5, t4<br> [0x80000524]:csrrs t5, vxsat, zero<br> [0x80000528]:sw t6, 16(ra)<br>         |
|  35|[0x80002320]<br>0x00000600|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                            |[0x80000540]:UKCRSA16 t6, t5, t4<br> [0x80000544]:csrrs t5, vxsat, zero<br> [0x80000548]:sw t6, 24(ra)<br>         |
|  36|[0x80002328]<br>0x0000FF7F|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                             |[0x8000055c]:UKCRSA16 t6, t5, t4<br> [0x80000560]:csrrs t5, vxsat, zero<br> [0x80000564]:sw t6, 32(ra)<br>         |
|  37|[0x80002330]<br>0x40000240|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                              |[0x8000057c]:UKCRSA16 t6, t5, t4<br> [0x80000580]:csrrs t5, vxsat, zero<br> [0x80000584]:sw t6, 40(ra)<br>         |
|  38|[0x80002338]<br>0x000000A0|- rs2_h0_val == 64511<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                           |[0x8000059c]:UKCRSA16 t6, t5, t4<br> [0x800005a0]:csrrs t5, vxsat, zero<br> [0x800005a4]:sw t6, 48(ra)<br>         |
|  39|[0x80002340]<br>0x00002010|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                              |[0x800005bc]:UKCRSA16 t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 56(ra)<br>         |
|  40|[0x80002348]<br>0xFE7FFF87|- rs1_h0_val == 8<br>                                                                                                                                                                                                                                                               |[0x800005dc]:UKCRSA16 t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 64(ra)<br>         |
|  41|[0x80002350]<br>0x0000000D|- rs2_h0_val == 64<br> - rs1_h1_val == 2<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                  |[0x800005fc]:UKCRSA16 t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 72(ra)<br>         |
|  42|[0x80002358]<br>0xEFFF1002|- rs1_h0_val == 2<br>                                                                                                                                                                                                                                                               |[0x80000618]:UKCRSA16 t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 80(ra)<br>         |
|  43|[0x80002360]<br>0x00000010|- rs1_h1_val == 32<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                        |[0x80000638]:UKCRSA16 t6, t5, t4<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 88(ra)<br>         |
|  44|[0x80002368]<br>0xFFDC0017|- rs2_h1_val == 8<br> - rs1_h1_val == 65519<br>                                                                                                                                                                                                                                     |[0x80000658]:UKCRSA16 t6, t5, t4<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 96(ra)<br>         |
|  45|[0x80002370]<br>0x00000084|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                               |[0x80000678]:UKCRSA16 t6, t5, t4<br> [0x8000067c]:csrrs t5, vxsat, zero<br> [0x80000680]:sw t6, 104(ra)<br>        |
|  46|[0x80002378]<br>0xFFEAAAAC|- rs2_h1_val == 2<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                                     |[0x80000698]:UKCRSA16 t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 112(ra)<br>        |
|  47|[0x80002380]<br>0xFBFDFFFF|- rs2_h1_val == 65535<br> - rs1_h1_val == 65533<br>                                                                                                                                                                                                                                 |[0x800006b8]:UKCRSA16 t6, t5, t4<br> [0x800006bc]:csrrs t5, vxsat, zero<br> [0x800006c0]:sw t6, 120(ra)<br>        |
|  48|[0x80002388]<br>0x00004004|- rs2_h0_val == 21845<br>                                                                                                                                                                                                                                                           |[0x800006d8]:UKCRSA16 t6, t5, t4<br> [0x800006dc]:csrrs t5, vxsat, zero<br> [0x800006e0]:sw t6, 128(ra)<br>        |
|  49|[0x80002390]<br>0x0000FFFF|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                           |[0x800006f8]:UKCRSA16 t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 136(ra)<br>        |
|  50|[0x80002398]<br>0x0000FFFF|- rs2_h0_val == 61439<br>                                                                                                                                                                                                                                                           |[0x80000718]:UKCRSA16 t6, t5, t4<br> [0x8000071c]:csrrs t5, vxsat, zero<br> [0x80000720]:sw t6, 144(ra)<br>        |
|  51|[0x800023a0]<br>0x0000002D|- rs2_h0_val == 65023<br>                                                                                                                                                                                                                                                           |[0x80000738]:UKCRSA16 t6, t5, t4<br> [0x8000073c]:csrrs t5, vxsat, zero<br> [0x80000740]:sw t6, 152(ra)<br>        |
|  52|[0x800023a8]<br>0x00008020|- rs2_h0_val == 65407<br> - rs1_h1_val == 65023<br>                                                                                                                                                                                                                                 |[0x80000754]:UKCRSA16 t6, t5, t4<br> [0x80000758]:csrrs t5, vxsat, zero<br> [0x8000075c]:sw t6, 160(ra)<br>        |
|  53|[0x800023b0]<br>0x0600001B|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                             |[0x80000774]:UKCRSA16 t6, t5, t4<br> [0x80000778]:csrrs t5, vxsat, zero<br> [0x8000077c]:sw t6, 168(ra)<br>        |
|  54|[0x800023b8]<br>0xFEF7FFFE|- rs2_h0_val == 256<br>                                                                                                                                                                                                                                                             |[0x80000794]:UKCRSA16 t6, t5, t4<br> [0x80000798]:csrrs t5, vxsat, zero<br> [0x8000079c]:sw t6, 176(ra)<br>        |
|  55|[0x800023c0]<br>0x554D0015|- rs2_h0_val == 8<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                     |[0x800007b4]:UKCRSA16 t6, t5, t4<br> [0x800007b8]:csrrs t5, vxsat, zero<br> [0x800007bc]:sw t6, 184(ra)<br>        |
|  56|[0x800023c8]<br>0x3FFE001A|- rs2_h0_val == 2<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                     |[0x800007d4]:UKCRSA16 t6, t5, t4<br> [0x800007d8]:csrrs t5, vxsat, zero<br> [0x800007dc]:sw t6, 192(ra)<br>        |
|  57|[0x800023d0]<br>0x003FFFFF|- rs2_h0_val == 1<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                        |[0x800007f4]:UKCRSA16 t6, t5, t4<br> [0x800007f8]:csrrs t5, vxsat, zero<br> [0x800007fc]:sw t6, 200(ra)<br>        |
|  58|[0x800023d8]<br>0xFFDF0009|- rs1_h1_val == 65503<br>                                                                                                                                                                                                                                                           |[0x80000810]:UKCRSA16 t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 208(ra)<br>        |
|  59|[0x800023e0]<br>0xFBFD0016|- rs1_h1_val == 64511<br>                                                                                                                                                                                                                                                           |[0x80000830]:UKCRSA16 t6, t5, t4<br> [0x80000834]:csrrs t5, vxsat, zero<br> [0x80000838]:sw t6, 216(ra)<br>        |
|  60|[0x800023e8]<br>0x0000FC06|- rs1_h1_val == 65407<br>                                                                                                                                                                                                                                                           |[0x80000850]:UKCRSA16 t6, t5, t4<br> [0x80000854]:csrrs t5, vxsat, zero<br> [0x80000858]:sw t6, 224(ra)<br>        |
|  61|[0x800023f0]<br>0x00400403|- rs1_h1_val == 65471<br>                                                                                                                                                                                                                                                           |[0x80000870]:UKCRSA16 t6, t5, t4<br> [0x80000874]:csrrs t5, vxsat, zero<br> [0x80000878]:sw t6, 232(ra)<br>        |
|  62|[0x800023f8]<br>0x0000FC03|- rs2_h0_val == 65531<br>                                                                                                                                                                                                                                                           |[0x80000890]:UKCRSA16 t6, t5, t4<br> [0x80000894]:csrrs t5, vxsat, zero<br> [0x80000898]:sw t6, 240(ra)<br>        |
|  63|[0x80002400]<br>0xFF7B0409|- rs1_h1_val == 65531<br>                                                                                                                                                                                                                                                           |[0x800008b0]:UKCRSA16 t6, t5, t4<br> [0x800008b4]:csrrs t5, vxsat, zero<br> [0x800008b8]:sw t6, 248(ra)<br>        |
|  64|[0x80002408]<br>0x0000000C|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                            |[0x800008d0]:UKCRSA16 t6, t5, t4<br> [0x800008d4]:csrrs t5, vxsat, zero<br> [0x800008d8]:sw t6, 256(ra)<br>        |
|  65|[0x80002410]<br>0x00000060|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                            |[0x800008f0]:UKCRSA16 t6, t5, t4<br> [0x800008f4]:csrrs t5, vxsat, zero<br> [0x800008f8]:sw t6, 264(ra)<br>        |
|  66|[0x80002418]<br>0xFFF6FFF0|- rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                           |[0x80000910]:UKCRSA16 t6, t5, t4<br> [0x80000914]:csrrs t5, vxsat, zero<br> [0x80000918]:sw t6, 272(ra)<br>        |
|  67|[0x80002420]<br>0x0000FFFF|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                             |[0x80000930]:UKCRSA16 t6, t5, t4<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sw t6, 280(ra)<br>        |
|  68|[0x80002428]<br>0x0000FE0F|- rs2_h0_val == 65534<br>                                                                                                                                                                                                                                                           |[0x80000950]:UKCRSA16 t6, t5, t4<br> [0x80000954]:csrrs t5, vxsat, zero<br> [0x80000958]:sw t6, 288(ra)<br>        |
|  69|[0x80002430]<br>0xDFFBFFFF|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                           |[0x80000970]:UKCRSA16 t6, t5, t4<br> [0x80000974]:csrrs t5, vxsat, zero<br> [0x80000978]:sw t6, 296(ra)<br>        |
|  70|[0x80002438]<br>0x0000FE09|- rs2_h0_val == 65519<br>                                                                                                                                                                                                                                                           |[0x80000990]:UKCRSA16 t6, t5, t4<br> [0x80000994]:csrrs t5, vxsat, zero<br> [0x80000998]:sw t6, 304(ra)<br>        |
|  71|[0x80002440]<br>0xFFEAF012|- rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                           |[0x800009b0]:UKCRSA16 t6, t5, t4<br> [0x800009b4]:csrrs t5, vxsat, zero<br> [0x800009b8]:sw t6, 312(ra)<br>        |
|  72|[0x80002448]<br>0x0000FFFF|- rs2_h0_val == 65527<br>                                                                                                                                                                                                                                                           |[0x800009d0]:UKCRSA16 t6, t5, t4<br> [0x800009d4]:csrrs t5, vxsat, zero<br> [0x800009d8]:sw t6, 320(ra)<br>        |
|  73|[0x80002450]<br>0x0000FC04|- rs1_h0_val == 64511<br>                                                                                                                                                                                                                                                           |[0x800009f0]:UKCRSA16 t6, t5, t4<br> [0x800009f4]:csrrs t5, vxsat, zero<br> [0x800009f8]:sw t6, 328(ra)<br>        |
|  74|[0x80002460]<br>0x0000FFFF|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                           |[0x80000a2c]:UKCRSA16 t6, t5, t4<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sw t6, 344(ra)<br>        |
|  75|[0x80002468]<br>0x5FFF0021|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                            |[0x80000a48]:UKCRSA16 t6, t5, t4<br> [0x80000a4c]:csrrs t5, vxsat, zero<br> [0x80000a50]:sw t6, 352(ra)<br>        |
|  76|[0x80002470]<br>0xFFED0040|- rs1_h1_val == 65534<br>                                                                                                                                                                                                                                                           |[0x80000a64]:UKCRSA16 t6, t5, t4<br> [0x80000a68]:csrrs t5, vxsat, zero<br> [0x80000a6c]:sw t6, 360(ra)<br>        |
|  77|[0x80002478]<br>0x7FFE0016|- rs1_h1_val == 32768<br>                                                                                                                                                                                                                                                           |[0x80000a84]:UKCRSA16 t6, t5, t4<br> [0x80000a88]:csrrs t5, vxsat, zero<br> [0x80000a8c]:sw t6, 368(ra)<br>        |
