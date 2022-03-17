
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b10')]      |
| SIG_REGION                | [('0x80002210', '0x800024a0', '164 words')]      |
| COV_LABELS                | ukaddh      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ukaddh-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 164      |
| STAT1                     | 80      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 82     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a9c]:UKADDH t6, t5, t4
      [0x80000aa0]:csrrs t5, vxsat, zero
      [0x80000aa4]:sw t6, 360(ra)
 -- Signature Address: 0x80002480 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukaddh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 65534
      - rs2_h0_val == 16
      - rs1_h1_val == 65534
      - rs1_h0_val == 61439




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000abc]:UKADDH t6, t5, t4
      [0x80000ac0]:csrrs t5, vxsat, zero
      [0x80000ac4]:sw t6, 368(ra)
 -- Signature Address: 0x80002488 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukaddh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 4096
      - rs2_h0_val == 65471
      - rs1_h1_val == 65023
      - rs1_h0_val == 65531






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukaddh', 'rs1 : x2', 'rs2 : x2', 'rd : x2', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 65407', 'rs2_h0_val == 65534', 'rs1_h1_val == 65407', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x80000118]:UKADDH sp, sp, sp
	-[0x8000011c]:csrrs sp, vxsat, zero
	-[0x80000120]:sw sp, 0(t2)
Current Store : [0x80000124] : sw sp, 4(t2) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x26', 'rd : x14', 'rs1 == rs2 != rd', 'rs2_h1_val == 65534', 'rs2_h0_val == 16', 'rs1_h1_val == 65534', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000138]:UKADDH a4, s10, s10
	-[0x8000013c]:csrrs s10, vxsat, zero
	-[0x80000140]:sw a4, 8(t2)
Current Store : [0x80000144] : sw s10, 12(t2) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x9', 'rd : x22', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 512', 'rs2_h0_val == 65527', 'rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x80000158]:UKADDH s6, a5, s1
	-[0x8000015c]:csrrs a5, vxsat, zero
	-[0x80000160]:sw s6, 16(t2)
Current Store : [0x80000164] : sw a5, 20(t2) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x1', 'rd : x1', 'rs2 == rd != rs1', 'rs2_h1_val == 43690', 'rs2_h0_val == 0', 'rs1_h1_val == 63487', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000170]:UKADDH ra, t3, ra
	-[0x80000174]:csrrs t3, vxsat, zero
	-[0x80000178]:sw ra, 24(t2)
Current Store : [0x8000017c] : sw t3, 28(t2) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x28', 'rd : x18', 'rs1 == rd != rs2', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x80000190]:UKADDH s2, s2, t3
	-[0x80000194]:csrrs s2, vxsat, zero
	-[0x80000198]:sw s2, 32(t2)
Current Store : [0x8000019c] : sw s2, 36(t2) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x29', 'rd : x20', 'rs2_h1_val == 32767', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x800001b0]:UKADDH s4, a7, t4
	-[0x800001b4]:csrrs a7, vxsat, zero
	-[0x800001b8]:sw s4, 40(t2)
Current Store : [0x800001bc] : sw a7, 44(t2) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x18', 'rd : x3', 'rs2_h1_val == 49151', 'rs2_h0_val == 512', 'rs1_h1_val == 65531', 'rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x800001d0]:UKADDH gp, t6, s2
	-[0x800001d4]:csrrs t6, vxsat, zero
	-[0x800001d8]:sw gp, 48(t2)
Current Store : [0x800001dc] : sw t6, 52(t2) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x30', 'rd : x31', 'rs2_h1_val == 57343', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800001f0]:UKADDH t6, ra, t5
	-[0x800001f4]:csrrs ra, vxsat, zero
	-[0x800001f8]:sw t6, 56(t2)
Current Store : [0x800001fc] : sw ra, 60(t2) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x24', 'rd : x6', 'rs2_h1_val == 61439', 'rs1_h1_val == 256', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000020c]:UKADDH t1, t5, s8
	-[0x80000210]:csrrs t5, vxsat, zero
	-[0x80000214]:sw t1, 64(t2)
Current Store : [0x80000218] : sw t5, 68(t2) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rd : x27', 'rs2_h1_val == 63487', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000022c]:UKADDH s11, s3, tp
	-[0x80000230]:csrrs s3, vxsat, zero
	-[0x80000234]:sw s11, 72(t2)
Current Store : [0x80000238] : sw s3, 76(t2) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x11', 'rd : x25', 'rs2_h1_val == 64511']
Last Code Sequence : 
	-[0x8000024c]:UKADDH s9, s6, a1
	-[0x80000250]:csrrs s6, vxsat, zero
	-[0x80000254]:sw s9, 80(t2)
Current Store : [0x80000258] : sw s6, 84(t2) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x22', 'rd : x17', 'rs2_h1_val == 65023', 'rs2_h0_val == 2048', 'rs1_h1_val == 8', 'rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x8000026c]:UKADDH a7, s1, s6
	-[0x80000270]:csrrs s1, vxsat, zero
	-[0x80000274]:sw a7, 88(t2)
Current Store : [0x80000278] : sw s1, 92(t2) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x31', 'rd : x24', 'rs2_h1_val == 65279', 'rs1_h1_val == 65527']
Last Code Sequence : 
	-[0x8000028c]:UKADDH s8, s9, t6
	-[0x80000290]:csrrs s9, vxsat, zero
	-[0x80000294]:sw s8, 96(t2)
Current Store : [0x80000298] : sw s9, 100(t2) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x12', 'rd : x4', 'rs2_h1_val == 65471', 'rs2_h0_val == 43690', 'rs1_h1_val == 43690', 'rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x800002ac]:UKADDH tp, a3, a2
	-[0x800002b0]:csrrs a3, vxsat, zero
	-[0x800002b4]:sw tp, 104(t2)
Current Store : [0x800002b8] : sw a3, 108(t2) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x23', 'rd : x8', 'rs2_h1_val == 65503', 'rs2_h0_val == 65519', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800002cc]:UKADDH fp, t0, s7
	-[0x800002d0]:csrrs t0, vxsat, zero
	-[0x800002d4]:sw fp, 112(t2)
Current Store : [0x800002d8] : sw t0, 116(t2) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x20', 'rd : x30', 'rs2_h1_val == 65519', 'rs2_h0_val == 61439']
Last Code Sequence : 
	-[0x800002f0]:UKADDH t5, a2, s4
	-[0x800002f4]:csrrs a2, vxsat, zero
	-[0x800002f8]:sw t5, 0(ra)
Current Store : [0x800002fc] : sw a2, 4(ra) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x13', 'rd : x23', 'rs2_h1_val == 65527', 'rs2_h0_val == 32768', 'rs1_h1_val == 16', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x8000030c]:UKADDH s7, gp, a3
	-[0x80000310]:csrrs gp, vxsat, zero
	-[0x80000314]:sw s7, 8(ra)
Current Store : [0x80000318] : sw gp, 12(ra) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x5', 'rd : x26', 'rs2_h1_val == 65531', 'rs2_h0_val == 65531']
Last Code Sequence : 
	-[0x8000032c]:UKADDH s10, a0, t0
	-[0x80000330]:csrrs a0, vxsat, zero
	-[0x80000334]:sw s10, 16(ra)
Current Store : [0x80000338] : sw a0, 20(ra) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x27', 'rd : x28', 'rs2_h1_val == 65533', 'rs2_h0_val == 63487', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x8000034c]:UKADDH t3, tp, s11
	-[0x80000350]:csrrs tp, vxsat, zero
	-[0x80000354]:sw t3, 24(ra)
Current Store : [0x80000358] : sw tp, 28(ra) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x8', 'rd : x29', 'rs2_h1_val == 32768', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x8000036c]:UKADDH t4, a4, fp
	-[0x80000370]:csrrs a4, vxsat, zero
	-[0x80000374]:sw t4, 32(ra)
Current Store : [0x80000378] : sw a4, 36(ra) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x17', 'rd : x11', 'rs2_h1_val == 16384', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000388]:UKADDH a1, t1, a7
	-[0x8000038c]:csrrs t1, vxsat, zero
	-[0x80000390]:sw a1, 40(ra)
Current Store : [0x80000394] : sw t1, 44(ra) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x7', 'rd : x21', 'rs2_h1_val == 8192', 'rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x800003a4]:UKADDH s5, s11, t2
	-[0x800003a8]:csrrs s11, vxsat, zero
	-[0x800003ac]:sw s5, 48(ra)
Current Store : [0x800003b0] : sw s11, 52(ra) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x14', 'rd : x0', 'rs2_h1_val == 4096', 'rs2_h0_val == 65471', 'rs1_h1_val == 65023', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x800003c4]:UKADDH zero, s5, a4
	-[0x800003c8]:csrrs s5, vxsat, zero
	-[0x800003cc]:sw zero, 56(ra)
Current Store : [0x800003d0] : sw s5, 60(ra) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x16', 'rd : x5', 'rs2_h1_val == 2048', 'rs2_h0_val == 65535', 'rs1_h1_val == 2048', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800003e4]:UKADDH t0, s4, a6
	-[0x800003e8]:csrrs s4, vxsat, zero
	-[0x800003ec]:sw t0, 64(ra)
Current Store : [0x800003f0] : sw s4, 68(ra) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x19', 'rd : x16', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x80000404]:UKADDH a6, s8, s3
	-[0x80000408]:csrrs s8, vxsat, zero
	-[0x8000040c]:sw a6, 72(ra)
Current Store : [0x80000410] : sw s8, 76(ra) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x10', 'rd : x19', 'rs2_h1_val == 256', 'rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x80000424]:UKADDH s3, a1, a0
	-[0x80000428]:csrrs a1, vxsat, zero
	-[0x8000042c]:sw s3, 80(ra)
Current Store : [0x80000430] : sw a1, 84(ra) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x6', 'rd : x10', 'rs2_h1_val == 128']
Last Code Sequence : 
	-[0x80000444]:UKADDH a0, t4, t1
	-[0x80000448]:csrrs t4, vxsat, zero
	-[0x8000044c]:sw a0, 88(ra)
Current Store : [0x80000450] : sw t4, 92(ra) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x25', 'rd : x15', 'rs2_h1_val == 64', 'rs2_h0_val == 65023']
Last Code Sequence : 
	-[0x80000464]:UKADDH a5, s7, s9
	-[0x80000468]:csrrs s7, vxsat, zero
	-[0x8000046c]:sw a5, 96(ra)
Current Store : [0x80000470] : sw s7, 100(ra) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x15', 'rd : x9', 'rs2_h1_val == 32', 'rs1_h1_val == 64511', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000480]:UKADDH s1, fp, a5
	-[0x80000484]:csrrs fp, vxsat, zero
	-[0x80000488]:sw s1, 104(ra)
Current Store : [0x8000048c] : sw fp, 108(ra) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x3', 'rd : x12', 'rs2_h1_val == 16', 'rs2_h0_val == 1']
Last Code Sequence : 
	-[0x800004a0]:UKADDH a2, t2, gp
	-[0x800004a4]:csrrs t2, vxsat, zero
	-[0x800004a8]:sw a2, 112(ra)
Current Store : [0x800004ac] : sw t2, 116(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x21', 'rd : x13', 'rs1_h0_val == 0', 'rs2_h1_val == 8', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800004c0]:UKADDH a3, zero, s5
	-[0x800004c4]:csrrs zero, vxsat, zero
	-[0x800004c8]:sw a3, 120(ra)
Current Store : [0x800004cc] : sw zero, 124(ra) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x0', 'rd : x7', 'rs2_h1_val == 0', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x800004dc]:UKADDH t2, a6, zero
	-[0x800004e0]:csrrs a6, vxsat, zero
	-[0x800004e4]:sw t2, 128(ra)
Current Store : [0x800004e8] : sw a6, 132(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x800004fc]:UKADDH t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 136(ra)
Current Store : [0x80000508] : sw t5, 140(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32768']
Last Code Sequence : 
	-[0x80000524]:UKADDH t6, t5, t4
	-[0x80000528]:csrrs t5, vxsat, zero
	-[0x8000052c]:sw t6, 0(ra)
Current Store : [0x80000530] : sw t5, 4(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000540]:UKADDH t6, t5, t4
	-[0x80000544]:csrrs t5, vxsat, zero
	-[0x80000548]:sw t6, 8(ra)
Current Store : [0x8000054c] : sw t5, 12(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000055c]:UKADDH t6, t5, t4
	-[0x80000560]:csrrs t5, vxsat, zero
	-[0x80000564]:sw t6, 16(ra)
Current Store : [0x80000568] : sw t5, 20(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4096', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x8000057c]:UKADDH t6, t5, t4
	-[0x80000580]:csrrs t5, vxsat, zero
	-[0x80000584]:sw t6, 24(ra)
Current Store : [0x80000588] : sw t5, 28(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_h0_val == 128']
Last Code Sequence : 
	-[0x8000059c]:UKADDH t6, t5, t4
	-[0x800005a0]:csrrs t5, vxsat, zero
	-[0x800005a4]:sw t6, 32(ra)
Current Store : [0x800005a8] : sw t5, 36(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == 65535']
Last Code Sequence : 
	-[0x800005bc]:UKADDH t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 40(ra)
Current Store : [0x800005c8] : sw t5, 44(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800005dc]:UKADDH t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 48(ra)
Current Store : [0x800005e8] : sw t5, 52(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65471', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800005fc]:UKADDH t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 56(ra)
Current Store : [0x80000608] : sw t5, 60(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_h1_val == 21845', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x80000618]:UKADDH t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 64(ra)
Current Store : [0x80000624] : sw t5, 68(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80000634]:UKADDH t6, t5, t4
	-[0x80000638]:csrrs t5, vxsat, zero
	-[0x8000063c]:sw t6, 72(ra)
Current Store : [0x80000640] : sw t5, 76(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1']
Last Code Sequence : 
	-[0x80000654]:UKADDH t6, t5, t4
	-[0x80000658]:csrrs t5, vxsat, zero
	-[0x8000065c]:sw t6, 80(ra)
Current Store : [0x80000660] : sw t5, 84(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 65535']
Last Code Sequence : 
	-[0x80000670]:UKADDH t6, t5, t4
	-[0x80000674]:csrrs t5, vxsat, zero
	-[0x80000678]:sw t6, 88(ra)
Current Store : [0x8000067c] : sw t5, 92(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000690]:UKADDH t6, t5, t4
	-[0x80000694]:csrrs t5, vxsat, zero
	-[0x80000698]:sw t6, 96(ra)
Current Store : [0x8000069c] : sw t5, 100(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h1_val == 49151']
Last Code Sequence : 
	-[0x800006b0]:UKADDH t6, t5, t4
	-[0x800006b4]:csrrs t5, vxsat, zero
	-[0x800006b8]:sw t6, 104(ra)
Current Store : [0x800006bc] : sw t5, 108(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x800006d0]:UKADDH t6, t5, t4
	-[0x800006d4]:csrrs t5, vxsat, zero
	-[0x800006d8]:sw t6, 112(ra)
Current Store : [0x800006dc] : sw t5, 116(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 49151']
Last Code Sequence : 
	-[0x800006f0]:UKADDH t6, t5, t4
	-[0x800006f4]:csrrs t5, vxsat, zero
	-[0x800006f8]:sw t6, 120(ra)
Current Store : [0x800006fc] : sw t5, 124(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == 57343']
Last Code Sequence : 
	-[0x8000070c]:UKADDH t6, t5, t4
	-[0x80000710]:csrrs t5, vxsat, zero
	-[0x80000714]:sw t6, 128(ra)
Current Store : [0x80000718] : sw t5, 132(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x8000072c]:UKADDH t6, t5, t4
	-[0x80000730]:csrrs t5, vxsat, zero
	-[0x80000734]:sw t6, 136(ra)
Current Store : [0x80000738] : sw t5, 140(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x8000074c]:UKADDH t6, t5, t4
	-[0x80000750]:csrrs t5, vxsat, zero
	-[0x80000754]:sw t6, 144(ra)
Current Store : [0x80000758] : sw t5, 148(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x8000076c]:UKADDH t6, t5, t4
	-[0x80000770]:csrrs t5, vxsat, zero
	-[0x80000774]:sw t6, 152(ra)
Current Store : [0x80000778] : sw t5, 156(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x8000078c]:UKADDH t6, t5, t4
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sw t6, 160(ra)
Current Store : [0x80000798] : sw t5, 164(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x800007ac]:UKADDH t6, t5, t4
	-[0x800007b0]:csrrs t5, vxsat, zero
	-[0x800007b4]:sw t6, 168(ra)
Current Store : [0x800007b8] : sw t5, 172(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800007cc]:UKADDH t6, t5, t4
	-[0x800007d0]:csrrs t5, vxsat, zero
	-[0x800007d4]:sw t6, 176(ra)
Current Store : [0x800007d8] : sw t5, 180(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 61439']
Last Code Sequence : 
	-[0x800007ec]:UKADDH t6, t5, t4
	-[0x800007f0]:csrrs t5, vxsat, zero
	-[0x800007f4]:sw t6, 184(ra)
Current Store : [0x800007f8] : sw t5, 188(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65279', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x8000080c]:UKADDH t6, t5, t4
	-[0x80000810]:csrrs t5, vxsat, zero
	-[0x80000814]:sw t6, 192(ra)
Current Store : [0x80000818] : sw t5, 196(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65503']
Last Code Sequence : 
	-[0x8000082c]:UKADDH t6, t5, t4
	-[0x80000830]:csrrs t5, vxsat, zero
	-[0x80000834]:sw t6, 200(ra)
Current Store : [0x80000838] : sw t5, 204(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65519']
Last Code Sequence : 
	-[0x80000848]:UKADDH t6, t5, t4
	-[0x8000084c]:csrrs t5, vxsat, zero
	-[0x80000850]:sw t6, 208(ra)
Current Store : [0x80000854] : sw t5, 212(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65533', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000868]:UKADDH t6, t5, t4
	-[0x8000086c]:csrrs t5, vxsat, zero
	-[0x80000870]:sw t6, 216(ra)
Current Store : [0x80000874] : sw t5, 220(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000888]:UKADDH t6, t5, t4
	-[0x8000088c]:csrrs t5, vxsat, zero
	-[0x80000890]:sw t6, 224(ra)
Current Store : [0x80000894] : sw t5, 228(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x800008a8]:UKADDH t6, t5, t4
	-[0x800008ac]:csrrs t5, vxsat, zero
	-[0x800008b0]:sw t6, 232(ra)
Current Store : [0x800008b4] : sw t5, 236(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800008c8]:UKADDH t6, t5, t4
	-[0x800008cc]:csrrs t5, vxsat, zero
	-[0x800008d0]:sw t6, 240(ra)
Current Store : [0x800008d4] : sw t5, 244(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x800008e8]:UKADDH t6, t5, t4
	-[0x800008ec]:csrrs t5, vxsat, zero
	-[0x800008f0]:sw t6, 248(ra)
Current Store : [0x800008f4] : sw t5, 252(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65279', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000908]:UKADDH t6, t5, t4
	-[0x8000090c]:csrrs t5, vxsat, zero
	-[0x80000910]:sw t6, 256(ra)
Current Store : [0x80000914] : sw t5, 260(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000928]:UKADDH t6, t5, t4
	-[0x8000092c]:csrrs t5, vxsat, zero
	-[0x80000930]:sw t6, 264(ra)
Current Store : [0x80000934] : sw t5, 268(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64511', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000948]:UKADDH t6, t5, t4
	-[0x8000094c]:csrrs t5, vxsat, zero
	-[0x80000950]:sw t6, 272(ra)
Current Store : [0x80000954] : sw t5, 276(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000968]:UKADDH t6, t5, t4
	-[0x8000096c]:csrrs t5, vxsat, zero
	-[0x80000970]:sw t6, 280(ra)
Current Store : [0x80000974] : sw t5, 284(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65407']
Last Code Sequence : 
	-[0x80000988]:UKADDH t6, t5, t4
	-[0x8000098c]:csrrs t5, vxsat, zero
	-[0x80000990]:sw t6, 288(ra)
Current Store : [0x80000994] : sw t5, 292(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800009a8]:UKADDH t6, t5, t4
	-[0x800009ac]:csrrs t5, vxsat, zero
	-[0x800009b0]:sw t6, 296(ra)
Current Store : [0x800009b4] : sw t5, 300(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65503']
Last Code Sequence : 
	-[0x800009c8]:UKADDH t6, t5, t4
	-[0x800009cc]:csrrs t5, vxsat, zero
	-[0x800009d0]:sw t6, 304(ra)
Current Store : [0x800009d4] : sw t5, 308(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x800009e8]:UKADDH t6, t5, t4
	-[0x800009ec]:csrrs t5, vxsat, zero
	-[0x800009f0]:sw t6, 312(ra)
Current Store : [0x800009f4] : sw t5, 316(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65533']
Last Code Sequence : 
	-[0x80000a08]:UKADDH t6, t5, t4
	-[0x80000a0c]:csrrs t5, vxsat, zero
	-[0x80000a10]:sw t6, 320(ra)
Current Store : [0x80000a14] : sw t5, 324(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x80000a28]:UKADDH t6, t5, t4
	-[0x80000a2c]:csrrs t5, vxsat, zero
	-[0x80000a30]:sw t6, 328(ra)
Current Store : [0x80000a34] : sw t5, 332(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x80000a44]:UKADDH t6, t5, t4
	-[0x80000a48]:csrrs t5, vxsat, zero
	-[0x80000a4c]:sw t6, 336(ra)
Current Store : [0x80000a50] : sw t5, 340(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80000a60]:UKADDH t6, t5, t4
	-[0x80000a64]:csrrs t5, vxsat, zero
	-[0x80000a68]:sw t6, 344(ra)
Current Store : [0x80000a6c] : sw t5, 348(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000a7c]:UKADDH t6, t5, t4
	-[0x80000a80]:csrrs t5, vxsat, zero
	-[0x80000a84]:sw t6, 352(ra)
Current Store : [0x80000a88] : sw t5, 356(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['opcode : ukaddh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 65534', 'rs2_h0_val == 16', 'rs1_h1_val == 65534', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x80000a9c]:UKADDH t6, t5, t4
	-[0x80000aa0]:csrrs t5, vxsat, zero
	-[0x80000aa4]:sw t6, 360(ra)
Current Store : [0x80000aa8] : sw t5, 364(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['opcode : ukaddh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 4096', 'rs2_h0_val == 65471', 'rs1_h1_val == 65023', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x80000abc]:UKADDH t6, t5, t4
	-[0x80000ac0]:csrrs t5, vxsat, zero
	-[0x80000ac4]:sw t6, 368(ra)
Current Store : [0x80000ac8] : sw t5, 372(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16384', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000adc]:UKADDH t6, t5, t4
	-[0x80000ae0]:csrrs t5, vxsat, zero
	-[0x80000ae4]:sw t6, 376(ra)
Current Store : [0x80000ae8] : sw t5, 380(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x80000af8]:UKADDH t6, t5, t4
	-[0x80000afc]:csrrs t5, vxsat, zero
	-[0x80000b00]:sw t6, 384(ra)
Current Store : [0x80000b04] : sw t5, 388(ra) -- Store: [0x8000249c]:0x00000001





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

|s.no|        signature         |                                                                                                                                                                coverpoints                                                                                                                                                                |                                                     code                                                     |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000001|- opcode : ukaddh<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 65407<br> - rs1_h0_val == 65534<br> |[0x80000118]:UKADDH sp, sp, sp<br> [0x8000011c]:csrrs sp, vxsat, zero<br> [0x80000120]:sw sp, 0(t2)<br>       |
|   2|[0x80002218]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x26<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 16<br> - rs1_h1_val == 65534<br> - rs1_h0_val == 16<br>                                                                                                                                                                    |[0x80000138]:UKADDH a4, s10, s10<br> [0x8000013c]:csrrs s10, vxsat, zero<br> [0x80000140]:sw a4, 8(t2)<br>    |
|   3|[0x80002220]<br>0xFFFFFFFF|- rs1 : x15<br> - rs2 : x9<br> - rd : x22<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 512<br> - rs2_h0_val == 65527<br> - rs1_h0_val == 65527<br>                                                                                               |[0x80000158]:UKADDH s6, a5, s1<br> [0x8000015c]:csrrs a5, vxsat, zero<br> [0x80000160]:sw s6, 16(t2)<br>      |
|   4|[0x80002228]<br>0xFFFFFFFF|- rs1 : x28<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 0<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 4096<br>                                                                                                                                                                     |[0x80000170]:UKADDH ra, t3, ra<br> [0x80000174]:csrrs t3, vxsat, zero<br> [0x80000178]:sw ra, 24(t2)<br>      |
|   5|[0x80002230]<br>0x00000001|- rs1 : x18<br> - rs2 : x28<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br>                                                                                                                                                                       |[0x80000190]:UKADDH s2, s2, t3<br> [0x80000194]:csrrs s2, vxsat, zero<br> [0x80000198]:sw s2, 32(t2)<br>      |
|   6|[0x80002238]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x29<br> - rd : x20<br> - rs2_h1_val == 32767<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                                         |[0x800001b0]:UKADDH s4, a7, t4<br> [0x800001b4]:csrrs a7, vxsat, zero<br> [0x800001b8]:sw s4, 40(t2)<br>      |
|   7|[0x80002240]<br>0xFFFFFFFF|- rs1 : x31<br> - rs2 : x18<br> - rd : x3<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 512<br> - rs1_h1_val == 65531<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                        |[0x800001d0]:UKADDH gp, t6, s2<br> [0x800001d4]:csrrs t6, vxsat, zero<br> [0x800001d8]:sw gp, 48(t2)<br>      |
|   8|[0x80002248]<br>0xFFFFFFFF|- rs1 : x1<br> - rs2 : x30<br> - rd : x31<br> - rs2_h1_val == 57343<br> - rs1_h1_val == 512<br>                                                                                                                                                                                                                                            |[0x800001f0]:UKADDH t6, ra, t5<br> [0x800001f4]:csrrs ra, vxsat, zero<br> [0x800001f8]:sw t6, 56(t2)<br>      |
|   9|[0x80002250]<br>0xFFFFFFFF|- rs1 : x30<br> - rs2 : x24<br> - rd : x6<br> - rs2_h1_val == 61439<br> - rs1_h1_val == 256<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                      |[0x8000020c]:UKADDH t1, t5, s8<br> [0x80000210]:csrrs t5, vxsat, zero<br> [0x80000214]:sw t1, 64(t2)<br>      |
|  10|[0x80002258]<br>0xFFFFFFFF|- rs1 : x19<br> - rs2 : x4<br> - rd : x27<br> - rs2_h1_val == 63487<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                             |[0x8000022c]:UKADDH s11, s3, tp<br> [0x80000230]:csrrs s3, vxsat, zero<br> [0x80000234]:sw s11, 72(t2)<br>    |
|  11|[0x80002260]<br>0xFFFFFFFF|- rs1 : x22<br> - rs2 : x11<br> - rd : x25<br> - rs2_h1_val == 64511<br>                                                                                                                                                                                                                                                                   |[0x8000024c]:UKADDH s9, s6, a1<br> [0x80000250]:csrrs s6, vxsat, zero<br> [0x80000254]:sw s9, 80(t2)<br>      |
|  12|[0x80002268]<br>0xFFFFFFFF|- rs1 : x9<br> - rs2 : x22<br> - rd : x17<br> - rs2_h1_val == 65023<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 8<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                           |[0x8000026c]:UKADDH a7, s1, s6<br> [0x80000270]:csrrs s1, vxsat, zero<br> [0x80000274]:sw a7, 88(t2)<br>      |
|  13|[0x80002270]<br>0xFFFFFFFF|- rs1 : x25<br> - rs2 : x31<br> - rd : x24<br> - rs2_h1_val == 65279<br> - rs1_h1_val == 65527<br>                                                                                                                                                                                                                                         |[0x8000028c]:UKADDH s8, s9, t6<br> [0x80000290]:csrrs s9, vxsat, zero<br> [0x80000294]:sw s8, 96(t2)<br>      |
|  14|[0x80002278]<br>0xFFFFFFFF|- rs1 : x13<br> - rs2 : x12<br> - rd : x4<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 43690<br> - rs1_h1_val == 43690<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                      |[0x800002ac]:UKADDH tp, a3, a2<br> [0x800002b0]:csrrs a3, vxsat, zero<br> [0x800002b4]:sw tp, 104(t2)<br>     |
|  15|[0x80002280]<br>0xFFFFFFFF|- rs1 : x5<br> - rs2 : x23<br> - rd : x8<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 65519<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                     |[0x800002cc]:UKADDH fp, t0, s7<br> [0x800002d0]:csrrs t0, vxsat, zero<br> [0x800002d4]:sw fp, 112(t2)<br>     |
|  16|[0x80002288]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x20<br> - rd : x30<br> - rs2_h1_val == 65519<br> - rs2_h0_val == 61439<br>                                                                                                                                                                                                                                         |[0x800002f0]:UKADDH t5, a2, s4<br> [0x800002f4]:csrrs a2, vxsat, zero<br> [0x800002f8]:sw t5, 0(ra)<br>       |
|  17|[0x80002290]<br>0xFFFFFFFF|- rs1 : x3<br> - rs2 : x13<br> - rd : x23<br> - rs2_h1_val == 65527<br> - rs2_h0_val == 32768<br> - rs1_h1_val == 16<br> - rs1_h0_val == 64511<br>                                                                                                                                                                                         |[0x8000030c]:UKADDH s7, gp, a3<br> [0x80000310]:csrrs gp, vxsat, zero<br> [0x80000314]:sw s7, 8(ra)<br>       |
|  18|[0x80002298]<br>0xFFFFFFFF|- rs1 : x10<br> - rs2 : x5<br> - rd : x26<br> - rs2_h1_val == 65531<br> - rs2_h0_val == 65531<br>                                                                                                                                                                                                                                          |[0x8000032c]:UKADDH s10, a0, t0<br> [0x80000330]:csrrs a0, vxsat, zero<br> [0x80000334]:sw s10, 16(ra)<br>    |
|  19|[0x800022a0]<br>0xFFFFFFFF|- rs1 : x4<br> - rs2 : x27<br> - rd : x28<br> - rs2_h1_val == 65533<br> - rs2_h0_val == 63487<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                  |[0x8000034c]:UKADDH t3, tp, s11<br> [0x80000350]:csrrs tp, vxsat, zero<br> [0x80000354]:sw t3, 24(ra)<br>     |
|  20|[0x800022a8]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x8<br> - rd : x29<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                            |[0x8000036c]:UKADDH t4, a4, fp<br> [0x80000370]:csrrs a4, vxsat, zero<br> [0x80000374]:sw t4, 32(ra)<br>      |
|  21|[0x800022b0]<br>0xFFFFFFFF|- rs1 : x6<br> - rs2 : x17<br> - rd : x11<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 16384<br>                                                                                                                                                                                                                                          |[0x80000388]:UKADDH a1, t1, a7<br> [0x8000038c]:csrrs t1, vxsat, zero<br> [0x80000390]:sw a1, 40(ra)<br>      |
|  22|[0x800022b8]<br>0xFFFFFFFF|- rs1 : x27<br> - rs2 : x7<br> - rd : x21<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 57343<br>                                                                                                                                                                                                                                           |[0x800003a4]:UKADDH s5, s11, t2<br> [0x800003a8]:csrrs s11, vxsat, zero<br> [0x800003ac]:sw s5, 48(ra)<br>    |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x21<br> - rs2 : x14<br> - rd : x0<br> - rs2_h1_val == 4096<br> - rs2_h0_val == 65471<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                       |[0x800003c4]:UKADDH zero, s5, a4<br> [0x800003c8]:csrrs s5, vxsat, zero<br> [0x800003cc]:sw zero, 56(ra)<br>  |
|  24|[0x800022c8]<br>0xFFFFFFFF|- rs1 : x20<br> - rs2 : x16<br> - rd : x5<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 65535<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 64<br>                                                                                                                                                                                           |[0x800003e4]:UKADDH t0, s4, a6<br> [0x800003e8]:csrrs s4, vxsat, zero<br> [0x800003ec]:sw t0, 64(ra)<br>      |
|  25|[0x800022d0]<br>0xFFFFFFFF|- rs1 : x24<br> - rs2 : x19<br> - rd : x16<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                    |[0x80000404]:UKADDH a6, s8, s3<br> [0x80000408]:csrrs s8, vxsat, zero<br> [0x8000040c]:sw a6, 72(ra)<br>      |
|  26|[0x800022d8]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x10<br> - rd : x19<br> - rs2_h1_val == 256<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                                                                           |[0x80000424]:UKADDH s3, a1, a0<br> [0x80000428]:csrrs a1, vxsat, zero<br> [0x8000042c]:sw s3, 80(ra)<br>      |
|  27|[0x800022e0]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x6<br> - rd : x10<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                      |[0x80000444]:UKADDH a0, t4, t1<br> [0x80000448]:csrrs t4, vxsat, zero<br> [0x8000044c]:sw a0, 88(ra)<br>      |
|  28|[0x800022e8]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x25<br> - rd : x15<br> - rs2_h1_val == 64<br> - rs2_h0_val == 65023<br>                                                                                                                                                                                                                                            |[0x80000464]:UKADDH a5, s7, s9<br> [0x80000468]:csrrs s7, vxsat, zero<br> [0x8000046c]:sw a5, 96(ra)<br>      |
|  29|[0x800022f0]<br>0xFFFFFFFF|- rs1 : x8<br> - rs2 : x15<br> - rd : x9<br> - rs2_h1_val == 32<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                     |[0x80000480]:UKADDH s1, fp, a5<br> [0x80000484]:csrrs fp, vxsat, zero<br> [0x80000488]:sw s1, 104(ra)<br>     |
|  30|[0x800022f8]<br>0xFFFFFFFF|- rs1 : x7<br> - rs2 : x3<br> - rd : x12<br> - rs2_h1_val == 16<br> - rs2_h0_val == 1<br>                                                                                                                                                                                                                                                  |[0x800004a0]:UKADDH a2, t2, gp<br> [0x800004a4]:csrrs t2, vxsat, zero<br> [0x800004a8]:sw a2, 112(ra)<br>     |
|  31|[0x80002300]<br>0xFFFFFFFF|- rs1 : x0<br> - rs2 : x21<br> - rd : x13<br> - rs1_h0_val == 0<br> - rs2_h1_val == 8<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                            |[0x800004c0]:UKADDH a3, zero, s5<br> [0x800004c4]:csrrs zero, vxsat, zero<br> [0x800004c8]:sw a3, 120(ra)<br> |
|  32|[0x80002308]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x0<br> - rd : x7<br> - rs2_h1_val == 0<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                                                                               |[0x800004dc]:UKADDH t2, a6, zero<br> [0x800004e0]:csrrs a6, vxsat, zero<br> [0x800004e4]:sw t2, 128(ra)<br>   |
|  33|[0x80002310]<br>0xFFFFFFFF|- rs1_h0_val == 65533<br>                                                                                                                                                                                                                                                                                                                  |[0x800004fc]:UKADDH t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 136(ra)<br>     |
|  34|[0x80002318]<br>0xFFFFFFFF|- rs1_h1_val == 32768<br>                                                                                                                                                                                                                                                                                                                  |[0x80000524]:UKADDH t6, t5, t4<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 0(ra)<br>       |
|  35|[0x80002320]<br>0xFFFFFFFF|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                  |[0x80000540]:UKADDH t6, t5, t4<br> [0x80000544]:csrrs t5, vxsat, zero<br> [0x80000548]:sw t6, 8(ra)<br>       |
|  36|[0x80002328]<br>0xFFFFFFFF|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                   |[0x8000055c]:UKADDH t6, t5, t4<br> [0x80000560]:csrrs t5, vxsat, zero<br> [0x80000564]:sw t6, 16(ra)<br>      |
|  37|[0x80002330]<br>0xFFFFFFFF|- rs1_h1_val == 4096<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                          |[0x8000057c]:UKADDH t6, t5, t4<br> [0x80000580]:csrrs t5, vxsat, zero<br> [0x80000584]:sw t6, 24(ra)<br>      |
|  38|[0x80002338]<br>0xFFFFFFFF|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                    |[0x8000059c]:UKADDH t6, t5, t4<br> [0x800005a0]:csrrs t5, vxsat, zero<br> [0x800005a4]:sw t6, 32(ra)<br>      |
|  39|[0x80002340]<br>0xFFFFFFFF|- rs2_h0_val == 8<br> - rs1_h1_val == 65535<br>                                                                                                                                                                                                                                                                                            |[0x800005bc]:UKADDH t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 40(ra)<br>      |
|  40|[0x80002348]<br>0xFFFFFFFF|- rs2_h0_val == 32<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                               |[0x800005dc]:UKADDH t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 48(ra)<br>      |
|  41|[0x80002350]<br>0xFFFFFFFF|- rs1_h1_val == 65471<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                            |[0x800005fc]:UKADDH t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 56(ra)<br>      |
|  42|[0x80002358]<br>0xFFFFFFFF|- rs1_h1_val == 21845<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                                                                                                        |[0x80000618]:UKADDH t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 64(ra)<br>      |
|  43|[0x80002360]<br>0xFFFFFFFF|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                      |[0x80000634]:UKADDH t6, t5, t4<br> [0x80000638]:csrrs t5, vxsat, zero<br> [0x8000063c]:sw t6, 72(ra)<br>      |
|  44|[0x80002368]<br>0xFFFFFFFF|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                      |[0x80000654]:UKADDH t6, t5, t4<br> [0x80000658]:csrrs t5, vxsat, zero<br> [0x8000065c]:sw t6, 80(ra)<br>      |
|  45|[0x80002370]<br>0xFFFFFFFF|- rs2_h1_val == 65535<br>                                                                                                                                                                                                                                                                                                                  |[0x80000670]:UKADDH t6, t5, t4<br> [0x80000674]:csrrs t5, vxsat, zero<br> [0x80000678]:sw t6, 88(ra)<br>      |
|  46|[0x80002378]<br>0xFFFFFFFF|- rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                      |[0x80000690]:UKADDH t6, t5, t4<br> [0x80000694]:csrrs t5, vxsat, zero<br> [0x80000698]:sw t6, 96(ra)<br>      |
|  47|[0x80002380]<br>0xFFFFFFFF|- rs2_h0_val == 21845<br> - rs1_h1_val == 49151<br>                                                                                                                                                                                                                                                                                        |[0x800006b0]:UKADDH t6, t5, t4<br> [0x800006b4]:csrrs t5, vxsat, zero<br> [0x800006b8]:sw t6, 104(ra)<br>     |
|  48|[0x80002388]<br>0xFFFFFFFF|- rs2_h0_val == 32767<br> - rs1_h0_val == 61439<br>                                                                                                                                                                                                                                                                                        |[0x800006d0]:UKADDH t6, t5, t4<br> [0x800006d4]:csrrs t5, vxsat, zero<br> [0x800006d8]:sw t6, 112(ra)<br>     |
|  49|[0x80002390]<br>0xFFFFFFFF|- rs2_h0_val == 49151<br>                                                                                                                                                                                                                                                                                                                  |[0x800006f0]:UKADDH t6, t5, t4<br> [0x800006f4]:csrrs t5, vxsat, zero<br> [0x800006f8]:sw t6, 120(ra)<br>     |
|  50|[0x80002398]<br>0xFFFFFFFF|- rs2_h0_val == 57343<br>                                                                                                                                                                                                                                                                                                                  |[0x8000070c]:UKADDH t6, t5, t4<br> [0x80000710]:csrrs t5, vxsat, zero<br> [0x80000714]:sw t6, 128(ra)<br>     |
|  51|[0x800023a0]<br>0xFFFFFFFF|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                   |[0x8000072c]:UKADDH t6, t5, t4<br> [0x80000730]:csrrs t5, vxsat, zero<br> [0x80000734]:sw t6, 136(ra)<br>     |
|  52|[0x800023a8]<br>0xFFFFFFFF|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                    |[0x8000074c]:UKADDH t6, t5, t4<br> [0x80000750]:csrrs t5, vxsat, zero<br> [0x80000754]:sw t6, 144(ra)<br>     |
|  53|[0x800023b0]<br>0xFFFFFFFF|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                     |[0x8000076c]:UKADDH t6, t5, t4<br> [0x80000770]:csrrs t5, vxsat, zero<br> [0x80000774]:sw t6, 152(ra)<br>     |
|  54|[0x800023b8]<br>0xFFFFFFFF|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                      |[0x8000078c]:UKADDH t6, t5, t4<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sw t6, 160(ra)<br>     |
|  55|[0x800023c0]<br>0xFFFFFFFF|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                      |[0x800007ac]:UKADDH t6, t5, t4<br> [0x800007b0]:csrrs t5, vxsat, zero<br> [0x800007b4]:sw t6, 168(ra)<br>     |
|  56|[0x800023c8]<br>0xFFFFFFFF|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                  |[0x800007cc]:UKADDH t6, t5, t4<br> [0x800007d0]:csrrs t5, vxsat, zero<br> [0x800007d4]:sw t6, 176(ra)<br>     |
|  57|[0x800023d0]<br>0xFFFFFFFF|- rs1_h1_val == 61439<br>                                                                                                                                                                                                                                                                                                                  |[0x800007ec]:UKADDH t6, t5, t4<br> [0x800007f0]:csrrs t5, vxsat, zero<br> [0x800007f4]:sw t6, 184(ra)<br>     |
|  58|[0x800023d8]<br>0xFFFFFFFF|- rs1_h1_val == 65279<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                                                                                                                        |[0x8000080c]:UKADDH t6, t5, t4<br> [0x80000810]:csrrs t5, vxsat, zero<br> [0x80000814]:sw t6, 192(ra)<br>     |
|  59|[0x800023e0]<br>0xFFFFFFFF|- rs1_h1_val == 65503<br>                                                                                                                                                                                                                                                                                                                  |[0x8000082c]:UKADDH t6, t5, t4<br> [0x80000830]:csrrs t5, vxsat, zero<br> [0x80000834]:sw t6, 200(ra)<br>     |
|  60|[0x800023e8]<br>0xFFFFFFFF|- rs1_h1_val == 65519<br>                                                                                                                                                                                                                                                                                                                  |[0x80000848]:UKADDH t6, t5, t4<br> [0x8000084c]:csrrs t5, vxsat, zero<br> [0x80000850]:sw t6, 208(ra)<br>     |
|  61|[0x800023f0]<br>0xFFFFFFFF|- rs1_h1_val == 65533<br> - rs1_h0_val == 65519<br>                                                                                                                                                                                                                                                                                        |[0x80000868]:UKADDH t6, t5, t4<br> [0x8000086c]:csrrs t5, vxsat, zero<br> [0x80000870]:sw t6, 216(ra)<br>     |
|  62|[0x800023f8]<br>0xFFFFFFFF|- rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                   |[0x80000888]:UKADDH t6, t5, t4<br> [0x8000088c]:csrrs t5, vxsat, zero<br> [0x80000890]:sw t6, 224(ra)<br>     |
|  63|[0x80002400]<br>0xFFFFFFFF|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                   |[0x800008a8]:UKADDH t6, t5, t4<br> [0x800008ac]:csrrs t5, vxsat, zero<br> [0x800008b0]:sw t6, 232(ra)<br>     |
|  64|[0x80002408]<br>0xFFFFFFFF|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                    |[0x800008c8]:UKADDH t6, t5, t4<br> [0x800008cc]:csrrs t5, vxsat, zero<br> [0x800008d0]:sw t6, 240(ra)<br>     |
|  65|[0x80002410]<br>0xFFFFFFFF|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                     |[0x800008e8]:UKADDH t6, t5, t4<br> [0x800008ec]:csrrs t5, vxsat, zero<br> [0x800008f0]:sw t6, 248(ra)<br>     |
|  66|[0x80002418]<br>0xFFFFFFFF|- rs2_h0_val == 65279<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                           |[0x80000908]:UKADDH t6, t5, t4<br> [0x8000090c]:csrrs t5, vxsat, zero<br> [0x80000910]:sw t6, 256(ra)<br>     |
|  67|[0x80002420]<br>0xFFFFFFFF|- rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                      |[0x80000928]:UKADDH t6, t5, t4<br> [0x8000092c]:csrrs t5, vxsat, zero<br> [0x80000930]:sw t6, 264(ra)<br>     |
|  68|[0x80002428]<br>0xFFFFFFFF|- rs2_h0_val == 64511<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                                                                                                                        |[0x80000948]:UKADDH t6, t5, t4<br> [0x8000094c]:csrrs t5, vxsat, zero<br> [0x80000950]:sw t6, 272(ra)<br>     |
|  69|[0x80002430]<br>0xFFFFFFFF|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                  |[0x80000968]:UKADDH t6, t5, t4<br> [0x8000096c]:csrrs t5, vxsat, zero<br> [0x80000970]:sw t6, 280(ra)<br>     |
|  70|[0x80002438]<br>0xFFFFFFFF|- rs2_h0_val == 65407<br>                                                                                                                                                                                                                                                                                                                  |[0x80000988]:UKADDH t6, t5, t4<br> [0x8000098c]:csrrs t5, vxsat, zero<br> [0x80000990]:sw t6, 288(ra)<br>     |
|  71|[0x80002440]<br>0xFFFFFFFF|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                  |[0x800009a8]:UKADDH t6, t5, t4<br> [0x800009ac]:csrrs t5, vxsat, zero<br> [0x800009b0]:sw t6, 296(ra)<br>     |
|  72|[0x80002448]<br>0xFFFFFFFF|- rs2_h0_val == 65503<br>                                                                                                                                                                                                                                                                                                                  |[0x800009c8]:UKADDH t6, t5, t4<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sw t6, 304(ra)<br>     |
|  73|[0x80002450]<br>0xFFFFFFFF|- rs1_h0_val == 57343<br>                                                                                                                                                                                                                                                                                                                  |[0x800009e8]:UKADDH t6, t5, t4<br> [0x800009ec]:csrrs t5, vxsat, zero<br> [0x800009f0]:sw t6, 312(ra)<br>     |
|  74|[0x80002458]<br>0xFFFFFFFF|- rs2_h0_val == 65533<br>                                                                                                                                                                                                                                                                                                                  |[0x80000a08]:UKADDH t6, t5, t4<br> [0x80000a0c]:csrrs t5, vxsat, zero<br> [0x80000a10]:sw t6, 320(ra)<br>     |
|  75|[0x80002460]<br>0xFFFFFFFF|- rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                                                                  |[0x80000a28]:UKADDH t6, t5, t4<br> [0x80000a2c]:csrrs t5, vxsat, zero<br> [0x80000a30]:sw t6, 328(ra)<br>     |
|  76|[0x80002468]<br>0xFFFFFFFF|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                   |[0x80000a44]:UKADDH t6, t5, t4<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sw t6, 336(ra)<br>     |
|  77|[0x80002470]<br>0xFFFFFFFF|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                   |[0x80000a60]:UKADDH t6, t5, t4<br> [0x80000a64]:csrrs t5, vxsat, zero<br> [0x80000a68]:sw t6, 344(ra)<br>     |
|  78|[0x80002478]<br>0xFFFFFFFF|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                      |[0x80000a7c]:UKADDH t6, t5, t4<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sw t6, 352(ra)<br>     |
|  79|[0x80002490]<br>0xFFFFFFFF|- rs1_h1_val == 16384<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                          |[0x80000adc]:UKADDH t6, t5, t4<br> [0x80000ae0]:csrrs t5, vxsat, zero<br> [0x80000ae4]:sw t6, 376(ra)<br>     |
|  80|[0x80002498]<br>0xFFFFFFFF|- rs2_h1_val == 4<br>                                                                                                                                                                                                                                                                                                                      |[0x80000af8]:UKADDH t6, t5, t4<br> [0x80000afc]:csrrs t5, vxsat, zero<br> [0x80000b00]:sw t6, 384(ra)<br>     |
