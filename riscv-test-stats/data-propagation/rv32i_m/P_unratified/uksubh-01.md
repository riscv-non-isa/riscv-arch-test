
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a60')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | uksubh      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/uksubh-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 154      |
| STAT1                     | 74      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 77     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000678]:UKSUBH t6, t5, t4
      [0x8000067c]:csrrs t5, vxsat, zero
      [0x80000680]:sw t6, 216(ra)
 -- Signature Address: 0x80002370 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : uksubh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 65279
      - rs1_h1_val == 256




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a10]:UKSUBH t6, t5, t4
      [0x80000a14]:csrrs t5, vxsat, zero
      [0x80000a18]:sw t6, 456(ra)
 -- Signature Address: 0x80002460 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksubh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h1_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a30]:UKSUBH t6, t5, t4
      [0x80000a34]:csrrs t5, vxsat, zero
      [0x80000a38]:sw t6, 464(ra)
 -- Signature Address: 0x80002468 Data: 0xFFFFEBFF
 -- Redundant Coverpoints hit by the op
      - opcode : uksubh
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h0_val == 1024
      - rs1_h0_val == 61439






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : uksubh', 'rs1 : x1', 'rs2 : x1', 'rd : x1', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 21845', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000118]:UKSUBH ra, ra, ra
	-[0x8000011c]:csrrs ra, vxsat, zero
	-[0x80000120]:sw ra, 0(sp)
Current Store : [0x80000124] : sw ra, 4(sp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x9', 'rd : x18', 'rs1 == rs2 != rd', 'rs2_h0_val == 1024', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000138]:UKSUBH s2, s1, s1
	-[0x8000013c]:csrrs s1, vxsat, zero
	-[0x80000140]:sw s2, 8(sp)
Current Store : [0x80000144] : sw s1, 12(sp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x16', 'rd : x28', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 65535', 'rs2_h0_val == 65519', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x80000154]:UKSUBH t3, a0, a6
	-[0x80000158]:csrrs a0, vxsat, zero
	-[0x8000015c]:sw t3, 16(sp)
Current Store : [0x80000160] : sw a0, 20(sp) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x0', 'rd : x0', 'rs2 == rd != rs1', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h1_val == 65519', 'rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x80000174]:UKSUBH zero, s8, zero
	-[0x80000178]:csrrs s8, vxsat, zero
	-[0x8000017c]:sw zero, 24(sp)
Current Store : [0x80000180] : sw s8, 28(sp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x12', 'rd : x7', 'rs1 == rd != rs2', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 32767', 'rs2_h0_val == 65279']
Last Code Sequence : 
	-[0x80000194]:UKSUBH t2, t2, a2
	-[0x80000198]:csrrs t2, vxsat, zero
	-[0x8000019c]:sw t2, 32(sp)
Current Store : [0x800001a0] : sw t2, 36(sp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x31', 'rd : x13', 'rs2_h1_val == 49151', 'rs2_h0_val == 1', 'rs1_h1_val == 65527']
Last Code Sequence : 
	-[0x800001b4]:UKSUBH a3, a6, t6
	-[0x800001b8]:csrrs a6, vxsat, zero
	-[0x800001bc]:sw a3, 40(sp)
Current Store : [0x800001c0] : sw a6, 44(sp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x19', 'rd : x8', 'rs2_h1_val == 57343', 'rs2_h0_val == 512', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x800001d0]:UKSUBH fp, t3, s3
	-[0x800001d4]:csrrs t3, vxsat, zero
	-[0x800001d8]:sw fp, 48(sp)
Current Store : [0x800001dc] : sw t3, 52(sp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x30', 'rd : x27', 'rs2_h1_val == 61439', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x800001f0]:UKSUBH s11, s3, t5
	-[0x800001f4]:csrrs s3, vxsat, zero
	-[0x800001f8]:sw s11, 56(sp)
Current Store : [0x800001fc] : sw s3, 60(sp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x10', 'rd : x15', 'rs2_h1_val == 63487', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000210]:UKSUBH a5, s5, a0
	-[0x80000214]:csrrs s5, vxsat, zero
	-[0x80000218]:sw a5, 64(sp)
Current Store : [0x8000021c] : sw s5, 68(sp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x28', 'rd : x17', 'rs2_h1_val == 64511', 'rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x80000230]:UKSUBH a7, s11, t3
	-[0x80000234]:csrrs s11, vxsat, zero
	-[0x80000238]:sw a7, 72(sp)
Current Store : [0x8000023c] : sw s11, 76(sp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x22', 'rd : x30', 'rs2_h1_val == 65023', 'rs1_h1_val == 0', 'rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x80000250]:UKSUBH t5, a7, s6
	-[0x80000254]:csrrs a7, vxsat, zero
	-[0x80000258]:sw t5, 80(sp)
Current Store : [0x8000025c] : sw a7, 84(sp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x25', 'rd : x3', 'rs2_h1_val == 65279', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x80000270]:UKSUBH gp, fp, s9
	-[0x80000274]:csrrs fp, vxsat, zero
	-[0x80000278]:sw gp, 88(sp)
Current Store : [0x8000027c] : sw fp, 92(sp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x21', 'rd : x14', 'rs2_h1_val == 65407', 'rs2_h0_val == 65534', 'rs1_h1_val == 65279']
Last Code Sequence : 
	-[0x80000290]:UKSUBH a4, s2, s5
	-[0x80000294]:csrrs s2, vxsat, zero
	-[0x80000298]:sw a4, 96(sp)
Current Store : [0x8000029c] : sw s2, 100(sp) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x14', 'rd : x9', 'rs2_h1_val == 65471', 'rs1_h1_val == 256', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x800002b0]:UKSUBH s1, s9, a4
	-[0x800002b4]:csrrs s9, vxsat, zero
	-[0x800002b8]:sw s1, 104(sp)
Current Store : [0x800002bc] : sw s9, 108(sp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x20', 'rd : x10', 'rs2_h1_val == 65503', 'rs2_h0_val == 64511', 'rs1_h1_val == 65535', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800002d0]:UKSUBH a0, a1, s4
	-[0x800002d4]:csrrs a1, vxsat, zero
	-[0x800002d8]:sw a0, 112(sp)
Current Store : [0x800002dc] : sw a1, 116(sp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x6', 'rd : x11', 'rs2_h1_val == 65519', 'rs2_h0_val == 65531']
Last Code Sequence : 
	-[0x800002f0]:UKSUBH a1, s10, t1
	-[0x800002f4]:csrrs s10, vxsat, zero
	-[0x800002f8]:sw a1, 120(sp)
Current Store : [0x800002fc] : sw s10, 124(sp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x8', 'rd : x5', 'rs2_h1_val == 65527', 'rs2_h0_val == 43690', 'rs1_h1_val == 65023']
Last Code Sequence : 
	-[0x80000310]:UKSUBH t0, s4, fp
	-[0x80000314]:csrrs s4, vxsat, zero
	-[0x80000318]:sw t0, 128(sp)
Current Store : [0x8000031c] : sw s4, 132(sp) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x31', 'rs2_h1_val == 65531', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000338]:UKSUBH t6, s6, s8
	-[0x8000033c]:csrrs s6, vxsat, zero
	-[0x80000340]:sw t6, 0(ra)
Current Store : [0x80000344] : sw s6, 4(ra) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x3', 'rd : x20', 'rs2_h1_val == 65533', 'rs2_h0_val == 128', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000358]:UKSUBH s4, a3, gp
	-[0x8000035c]:csrrs a3, vxsat, zero
	-[0x80000360]:sw s4, 8(ra)
Current Store : [0x80000364] : sw a3, 12(ra) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x23', 'rd : x22', 'rs2_h1_val == 65534', 'rs2_h0_val == 63487', 'rs1_h1_val == 1', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000378]:UKSUBH s6, a2, s7
	-[0x8000037c]:csrrs a2, vxsat, zero
	-[0x80000380]:sw s6, 16(ra)
Current Store : [0x80000384] : sw a2, 20(ra) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x26', 'rd : x25', 'rs2_h1_val == 32768', 'rs2_h0_val == 65503', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000398]:UKSUBH s9, t4, s10
	-[0x8000039c]:csrrs t4, vxsat, zero
	-[0x800003a0]:sw s9, 24(ra)
Current Store : [0x800003a4] : sw t4, 28(ra) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x27', 'rd : x23', 'rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x800003b4]:UKSUBH s7, a5, s11
	-[0x800003b8]:csrrs a5, vxsat, zero
	-[0x800003bc]:sw s7, 32(ra)
Current Store : [0x800003c0] : sw a5, 36(ra) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x4', 'rd : x16', 'rs2_h1_val == 8192', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x800003d4]:UKSUBH a6, gp, tp
	-[0x800003d8]:csrrs gp, vxsat, zero
	-[0x800003dc]:sw a6, 40(ra)
Current Store : [0x800003e0] : sw gp, 44(ra) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x29', 'rd : x6', 'rs1_h0_val == 0', 'rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x800003f4]:UKSUBH t1, zero, t4
	-[0x800003f8]:csrrs zero, vxsat, zero
	-[0x800003fc]:sw t1, 48(ra)
Current Store : [0x80000400] : sw zero, 52(ra) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x18', 'rd : x29', 'rs2_h1_val == 2048', 'rs2_h0_val == 4096', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000410]:UKSUBH t4, t5, s2
	-[0x80000414]:csrrs t5, vxsat, zero
	-[0x80000418]:sw t4, 56(ra)
Current Store : [0x8000041c] : sw t5, 60(ra) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x5', 'rd : x4', 'rs2_h1_val == 1024', 'rs2_h0_val == 32767', 'rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x8000042c]:UKSUBH tp, sp, t0
	-[0x80000430]:csrrs sp, vxsat, zero
	-[0x80000434]:sw tp, 64(ra)
Current Store : [0x80000438] : sw sp, 68(ra) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x13', 'rd : x19', 'rs2_h1_val == 512', 'rs2_h0_val == 65023', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000044c]:UKSUBH s3, t1, a3
	-[0x80000450]:csrrs t1, vxsat, zero
	-[0x80000454]:sw s3, 72(ra)
Current Store : [0x80000458] : sw t1, 76(ra) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x15', 'rd : x2', 'rs2_h1_val == 256', 'rs2_h0_val == 4']
Last Code Sequence : 
	-[0x8000046c]:UKSUBH sp, tp, a5
	-[0x80000470]:csrrs tp, vxsat, zero
	-[0x80000474]:sw sp, 80(ra)
Current Store : [0x80000478] : sw tp, 84(ra) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x2', 'rd : x12', 'rs2_h1_val == 128', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000488]:UKSUBH a2, a4, sp
	-[0x8000048c]:csrrs a4, vxsat, zero
	-[0x80000490]:sw a2, 88(ra)
Current Store : [0x80000494] : sw a4, 92(ra) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x7', 'rd : x26', 'rs2_h1_val == 64', 'rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x800004a8]:UKSUBH s10, s7, t2
	-[0x800004ac]:csrrs s7, vxsat, zero
	-[0x800004b0]:sw s10, 96(ra)
Current Store : [0x800004b4] : sw s7, 100(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x17', 'rd : x24', 'rs2_h1_val == 32', 'rs2_h0_val == 64', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800004c4]:UKSUBH s8, t6, a7
	-[0x800004c8]:csrrs t6, vxsat, zero
	-[0x800004cc]:sw s8, 104(ra)
Current Store : [0x800004d0] : sw t6, 108(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x11', 'rd : x21', 'rs2_h1_val == 16', 'rs1_h1_val == 63487']
Last Code Sequence : 
	-[0x800004e4]:UKSUBH s5, t0, a1
	-[0x800004e8]:csrrs t0, vxsat, zero
	-[0x800004ec]:sw s5, 112(ra)
Current Store : [0x800004f0] : sw t0, 116(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65531', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000500]:UKSUBH t6, t5, t4
	-[0x80000504]:csrrs t5, vxsat, zero
	-[0x80000508]:sw t6, 120(ra)
Current Store : [0x8000050c] : sw t5, 124(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65471']
Last Code Sequence : 
	-[0x80000520]:UKSUBH t6, t5, t4
	-[0x80000524]:csrrs t5, vxsat, zero
	-[0x80000528]:sw t6, 128(ra)
Current Store : [0x8000052c] : sw t5, 132(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32768', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000540]:UKSUBH t6, t5, t4
	-[0x80000544]:csrrs t5, vxsat, zero
	-[0x80000548]:sw t6, 136(ra)
Current Store : [0x8000054c] : sw t5, 140(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_h1_val == 49151', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000560]:UKSUBH t6, t5, t4
	-[0x80000564]:csrrs t5, vxsat, zero
	-[0x80000568]:sw t6, 144(ra)
Current Store : [0x8000056c] : sw t5, 148(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000580]:UKSUBH t6, t5, t4
	-[0x80000584]:csrrs t5, vxsat, zero
	-[0x80000588]:sw t6, 152(ra)
Current Store : [0x8000058c] : sw t5, 156(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800005a0]:UKSUBH t6, t5, t4
	-[0x800005a4]:csrrs t5, vxsat, zero
	-[0x800005a8]:sw t6, 160(ra)
Current Store : [0x800005ac] : sw t5, 164(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800005c0]:UKSUBH t6, t5, t4
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 168(ra)
Current Store : [0x800005cc] : sw t5, 172(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8192', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800005dc]:UKSUBH t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 176(ra)
Current Store : [0x800005e8] : sw t5, 180(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x800005fc]:UKSUBH t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 184(ra)
Current Store : [0x80000608] : sw t5, 188(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == 16']
Last Code Sequence : 
	-[0x8000061c]:UKSUBH t6, t5, t4
	-[0x80000620]:csrrs t5, vxsat, zero
	-[0x80000624]:sw t6, 192(ra)
Current Store : [0x80000628] : sw t5, 196(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 4', 'rs2_h0_val == 65407', 'rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x8000063c]:UKSUBH t6, t5, t4
	-[0x80000640]:csrrs t5, vxsat, zero
	-[0x80000644]:sw t6, 200(ra)
Current Store : [0x80000648] : sw t5, 204(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2']
Last Code Sequence : 
	-[0x80000658]:UKSUBH t6, t5, t4
	-[0x8000065c]:csrrs t5, vxsat, zero
	-[0x80000660]:sw t6, 208(ra)
Current Store : [0x80000664] : sw t5, 212(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['opcode : uksubh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 0', 'rs2_h0_val == 65279', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000678]:UKSUBH t6, t5, t4
	-[0x8000067c]:csrrs t5, vxsat, zero
	-[0x80000680]:sw t6, 216(ra)
Current Store : [0x80000684] : sw t5, 220(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h1_val == 61439']
Last Code Sequence : 
	-[0x80000698]:UKSUBH t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 224(ra)
Current Store : [0x800006a4] : sw t5, 228(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 49151', 'rs1_h1_val == 65533']
Last Code Sequence : 
	-[0x800006b8]:UKSUBH t6, t5, t4
	-[0x800006bc]:csrrs t5, vxsat, zero
	-[0x800006c0]:sw t6, 232(ra)
Current Store : [0x800006c4] : sw t5, 236(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h0_val == 57343']
Last Code Sequence : 
	-[0x800006d4]:UKSUBH t6, t5, t4
	-[0x800006d8]:csrrs t5, vxsat, zero
	-[0x800006dc]:sw t6, 240(ra)
Current Store : [0x800006e0] : sw t5, 244(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 61439', 'rs1_h1_val == 43690']
Last Code Sequence : 
	-[0x800006f4]:UKSUBH t6, t5, t4
	-[0x800006f8]:csrrs t5, vxsat, zero
	-[0x800006fc]:sw t6, 248(ra)
Current Store : [0x80000700] : sw t5, 252(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65471', 'rs1_h1_val == 65534']
Last Code Sequence : 
	-[0x80000714]:UKSUBH t6, t5, t4
	-[0x80000718]:csrrs t5, vxsat, zero
	-[0x8000071c]:sw t6, 256(ra)
Current Store : [0x80000720] : sw t5, 260(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65527']
Last Code Sequence : 
	-[0x80000730]:UKSUBH t6, t5, t4
	-[0x80000734]:csrrs t5, vxsat, zero
	-[0x80000738]:sw t6, 264(ra)
Current Store : [0x8000073c] : sw t5, 268(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000750]:UKSUBH t6, t5, t4
	-[0x80000754]:csrrs t5, vxsat, zero
	-[0x80000758]:sw t6, 272(ra)
Current Store : [0x8000075c] : sw t5, 276(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x80000770]:UKSUBH t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 280(ra)
Current Store : [0x8000077c] : sw t5, 284(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80000790]:UKSUBH t6, t5, t4
	-[0x80000794]:csrrs t5, vxsat, zero
	-[0x80000798]:sw t6, 288(ra)
Current Store : [0x8000079c] : sw t5, 292(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h1_val == 64511']
Last Code Sequence : 
	-[0x800007b0]:UKSUBH t6, t5, t4
	-[0x800007b4]:csrrs t5, vxsat, zero
	-[0x800007b8]:sw t6, 296(ra)
Current Store : [0x800007bc] : sw t5, 300(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65535']
Last Code Sequence : 
	-[0x800007cc]:UKSUBH t6, t5, t4
	-[0x800007d0]:csrrs t5, vxsat, zero
	-[0x800007d4]:sw t6, 304(ra)
Current Store : [0x800007d8] : sw t5, 308(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800007ec]:UKSUBH t6, t5, t4
	-[0x800007f0]:csrrs t5, vxsat, zero
	-[0x800007f4]:sw t6, 312(ra)
Current Store : [0x800007f8] : sw t5, 316(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000808]:UKSUBH t6, t5, t4
	-[0x8000080c]:csrrs t5, vxsat, zero
	-[0x80000810]:sw t6, 320(ra)
Current Store : [0x80000814] : sw t5, 324(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65407', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x80000828]:UKSUBH t6, t5, t4
	-[0x8000082c]:csrrs t5, vxsat, zero
	-[0x80000830]:sw t6, 328(ra)
Current Store : [0x80000834] : sw t5, 332(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65503']
Last Code Sequence : 
	-[0x80000848]:UKSUBH t6, t5, t4
	-[0x8000084c]:csrrs t5, vxsat, zero
	-[0x80000850]:sw t6, 336(ra)
Current Store : [0x80000854] : sw t5, 340(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_h0_val == 65533']
Last Code Sequence : 
	-[0x80000868]:UKSUBH t6, t5, t4
	-[0x8000086c]:csrrs t5, vxsat, zero
	-[0x80000870]:sw t6, 344(ra)
Current Store : [0x80000874] : sw t5, 348(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000884]:UKSUBH t6, t5, t4
	-[0x80000888]:csrrs t5, vxsat, zero
	-[0x8000088c]:sw t6, 352(ra)
Current Store : [0x80000890] : sw t5, 356(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800008a4]:UKSUBH t6, t5, t4
	-[0x800008a8]:csrrs t5, vxsat, zero
	-[0x800008ac]:sw t6, 360(ra)
Current Store : [0x800008b0] : sw t5, 364(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800008bc]:UKSUBH t6, t5, t4
	-[0x800008c0]:csrrs t5, vxsat, zero
	-[0x800008c4]:sw t6, 368(ra)
Current Store : [0x800008c8] : sw t5, 372(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1024', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x800008dc]:UKSUBH t6, t5, t4
	-[0x800008e0]:csrrs t5, vxsat, zero
	-[0x800008e4]:sw t6, 376(ra)
Current Store : [0x800008e8] : sw t5, 380(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 128', 'rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x800008f8]:UKSUBH t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 384(ra)
Current Store : [0x80000904] : sw t5, 388(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000918]:UKSUBH t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 392(ra)
Current Store : [0x80000924] : sw t5, 396(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000938]:UKSUBH t6, t5, t4
	-[0x8000093c]:csrrs t5, vxsat, zero
	-[0x80000940]:sw t6, 400(ra)
Current Store : [0x80000944] : sw t5, 404(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000958]:UKSUBH t6, t5, t4
	-[0x8000095c]:csrrs t5, vxsat, zero
	-[0x80000960]:sw t6, 408(ra)
Current Store : [0x80000964] : sw t5, 412(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x80000978]:UKSUBH t6, t5, t4
	-[0x8000097c]:csrrs t5, vxsat, zero
	-[0x80000980]:sw t6, 416(ra)
Current Store : [0x80000984] : sw t5, 420(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32768']
Last Code Sequence : 
	-[0x80000994]:UKSUBH t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 424(ra)
Current Store : [0x800009a0] : sw t5, 428(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4', 'rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x800009b4]:UKSUBH t6, t5, t4
	-[0x800009b8]:csrrs t5, vxsat, zero
	-[0x800009bc]:sw t6, 432(ra)
Current Store : [0x800009c0] : sw t5, 436(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x800009d4]:UKSUBH t6, t5, t4
	-[0x800009d8]:csrrs t5, vxsat, zero
	-[0x800009dc]:sw t6, 440(ra)
Current Store : [0x800009e0] : sw t5, 444(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x800009f4]:UKSUBH t6, t5, t4
	-[0x800009f8]:csrrs t5, vxsat, zero
	-[0x800009fc]:sw t6, 448(ra)
Current Store : [0x80000a00] : sw t5, 452(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['opcode : uksubh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == 0', 'rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x80000a10]:UKSUBH t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 456(ra)
Current Store : [0x80000a1c] : sw t5, 460(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['opcode : uksubh', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h0_val == 1024', 'rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x80000a30]:UKSUBH t6, t5, t4
	-[0x80000a34]:csrrs t5, vxsat, zero
	-[0x80000a38]:sw t6, 464(ra)
Current Store : [0x80000a3c] : sw t5, 468(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 43690']
Last Code Sequence : 
	-[0x80000a4c]:UKSUBH t6, t5, t4
	-[0x80000a50]:csrrs t5, vxsat, zero
	-[0x80000a54]:sw t6, 472(ra)
Current Store : [0x80000a58] : sw t5, 476(ra) -- Store: [0x80002474]:0x00000001





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

|s.no|        signature         |                                                                                                                                      coverpoints                                                                                                                                      |                                                     code                                                      |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : uksubh<br> - rs1 : x1<br> - rs2 : x1<br> - rd : x1<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 21845<br> |[0x80000118]:UKSUBH ra, ra, ra<br> [0x8000011c]:csrrs ra, vxsat, zero<br> [0x80000120]:sw ra, 0(sp)<br>        |
|   2|[0x80002218]<br>0x00000000|- rs1 : x9<br> - rs2 : x9<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs2_h0_val == 1024<br> - rs1_h0_val == 1024<br>                                                                                                                                                                  |[0x80000138]:UKSUBH s2, s1, s1<br> [0x8000013c]:csrrs s1, vxsat, zero<br> [0x80000140]:sw s2, 8(sp)<br>        |
|   3|[0x80002220]<br>0x00000000|- rs1 : x10<br> - rs2 : x16<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 65535<br> - rs2_h0_val == 65519<br> - rs1_h0_val == 65519<br>                                        |[0x80000154]:UKSUBH t3, a0, a6<br> [0x80000158]:csrrs a0, vxsat, zero<br> [0x8000015c]:sw t3, 16(sp)<br>       |
|   4|[0x80002228]<br>0x00000000|- rs1 : x24<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 65533<br>                                                                                                                    |[0x80000174]:UKSUBH zero, s8, zero<br> [0x80000178]:csrrs s8, vxsat, zero<br> [0x8000017c]:sw zero, 24(sp)<br> |
|   5|[0x80002230]<br>0x00000001|- rs1 : x7<br> - rs2 : x12<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 65279<br>                                                                                           |[0x80000194]:UKSUBH t2, t2, a2<br> [0x80000198]:csrrs t2, vxsat, zero<br> [0x8000019c]:sw t2, 32(sp)<br>       |
|   6|[0x80002238]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x31<br> - rd : x13<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 1<br> - rs1_h1_val == 65527<br>                                                                                                                                                               |[0x800001b4]:UKSUBH a3, a6, t6<br> [0x800001b8]:csrrs a6, vxsat, zero<br> [0x800001bc]:sw a3, 40(sp)<br>       |
|   7|[0x80002240]<br>0x00000000|- rs1 : x28<br> - rs2 : x19<br> - rd : x8<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 512<br> - rs1_h0_val == 4096<br>                                                                                                                                                               |[0x800001d0]:UKSUBH fp, t3, s3<br> [0x800001d4]:csrrs t3, vxsat, zero<br> [0x800001d8]:sw fp, 48(sp)<br>       |
|   8|[0x80002248]<br>0x00000000|- rs1 : x19<br> - rs2 : x30<br> - rd : x27<br> - rs2_h1_val == 61439<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                     |[0x800001f0]:UKSUBH s11, s3, t5<br> [0x800001f4]:csrrs s3, vxsat, zero<br> [0x800001f8]:sw s11, 56(sp)<br>     |
|   9|[0x80002250]<br>0x00000000|- rs1 : x21<br> - rs2 : x10<br> - rd : x15<br> - rs2_h1_val == 63487<br> - rs1_h1_val == 8<br>                                                                                                                                                                                         |[0x80000210]:UKSUBH a5, s5, a0<br> [0x80000214]:csrrs s5, vxsat, zero<br> [0x80000218]:sw a5, 64(sp)<br>       |
|  10|[0x80002258]<br>0x00000000|- rs1 : x27<br> - rs2 : x28<br> - rd : x17<br> - rs2_h1_val == 64511<br> - rs1_h1_val == 57343<br>                                                                                                                                                                                     |[0x80000230]:UKSUBH a7, s11, t3<br> [0x80000234]:csrrs s11, vxsat, zero<br> [0x80000238]:sw a7, 72(sp)<br>     |
|  11|[0x80002260]<br>0x00000000|- rs1 : x17<br> - rs2 : x22<br> - rd : x30<br> - rs2_h1_val == 65023<br> - rs1_h1_val == 0<br> - rs1_h0_val == 43690<br>                                                                                                                                                               |[0x80000250]:UKSUBH t5, a7, s6<br> [0x80000254]:csrrs a7, vxsat, zero<br> [0x80000258]:sw t5, 80(sp)<br>       |
|  12|[0x80002268]<br>0x00000000|- rs1 : x8<br> - rs2 : x25<br> - rd : x3<br> - rs2_h1_val == 65279<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                       |[0x80000270]:UKSUBH gp, fp, s9<br> [0x80000274]:csrrs fp, vxsat, zero<br> [0x80000278]:sw gp, 88(sp)<br>       |
|  13|[0x80002270]<br>0x00000000|- rs1 : x18<br> - rs2 : x21<br> - rd : x14<br> - rs2_h1_val == 65407<br> - rs2_h0_val == 65534<br> - rs1_h1_val == 65279<br>                                                                                                                                                           |[0x80000290]:UKSUBH a4, s2, s5<br> [0x80000294]:csrrs s2, vxsat, zero<br> [0x80000298]:sw a4, 96(sp)<br>       |
|  14|[0x80002278]<br>0x00000000|- rs1 : x25<br> - rs2 : x14<br> - rd : x9<br> - rs2_h1_val == 65471<br> - rs1_h1_val == 256<br> - rs1_h0_val == 64511<br>                                                                                                                                                              |[0x800002b0]:UKSUBH s1, s9, a4<br> [0x800002b4]:csrrs s9, vxsat, zero<br> [0x800002b8]:sw s1, 104(sp)<br>      |
|  15|[0x80002280]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x20<br> - rd : x10<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 64511<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 128<br>                                                                                                                                   |[0x800002d0]:UKSUBH a0, a1, s4<br> [0x800002d4]:csrrs a1, vxsat, zero<br> [0x800002d8]:sw a0, 112(sp)<br>      |
|  16|[0x80002288]<br>0x00000000|- rs1 : x26<br> - rs2 : x6<br> - rd : x11<br> - rs2_h1_val == 65519<br> - rs2_h0_val == 65531<br>                                                                                                                                                                                      |[0x800002f0]:UKSUBH a1, s10, t1<br> [0x800002f4]:csrrs s10, vxsat, zero<br> [0x800002f8]:sw a1, 120(sp)<br>    |
|  17|[0x80002290]<br>0x00000000|- rs1 : x20<br> - rs2 : x8<br> - rd : x5<br> - rs2_h1_val == 65527<br> - rs2_h0_val == 43690<br> - rs1_h1_val == 65023<br>                                                                                                                                                             |[0x80000310]:UKSUBH t0, s4, fp<br> [0x80000314]:csrrs s4, vxsat, zero<br> [0x80000318]:sw t0, 128(sp)<br>      |
|  18|[0x80002298]<br>0x00000000|- rs1 : x22<br> - rs2 : x24<br> - rd : x31<br> - rs2_h1_val == 65531<br> - rs1_h1_val == 16<br>                                                                                                                                                                                        |[0x80000338]:UKSUBH t6, s6, s8<br> [0x8000033c]:csrrs s6, vxsat, zero<br> [0x80000340]:sw t6, 0(ra)<br>        |
|  19|[0x800022a0]<br>0x00000000|- rs1 : x13<br> - rs2 : x3<br> - rd : x20<br> - rs2_h1_val == 65533<br> - rs2_h0_val == 128<br> - rs1_h0_val == 1<br>                                                                                                                                                                  |[0x80000358]:UKSUBH s4, a3, gp<br> [0x8000035c]:csrrs a3, vxsat, zero<br> [0x80000360]:sw s4, 8(ra)<br>        |
|  20|[0x800022a8]<br>0x00000000|- rs1 : x12<br> - rs2 : x23<br> - rd : x22<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 63487<br> - rs1_h1_val == 1<br> - rs1_h0_val == 2<br>                                                                                                                                         |[0x80000378]:UKSUBH s6, a2, s7<br> [0x8000037c]:csrrs a2, vxsat, zero<br> [0x80000380]:sw s6, 16(ra)<br>       |
|  21|[0x800022b0]<br>0x00000000|- rs1 : x29<br> - rs2 : x26<br> - rd : x25<br> - rs2_h1_val == 32768<br> - rs2_h0_val == 65503<br> - rs1_h1_val == 64<br>                                                                                                                                                              |[0x80000398]:UKSUBH s9, t4, s10<br> [0x8000039c]:csrrs t4, vxsat, zero<br> [0x800003a0]:sw s9, 24(ra)<br>      |
|  22|[0x800022b8]<br>0x00000000|- rs1 : x15<br> - rs2 : x27<br> - rd : x23<br> - rs2_h1_val == 16384<br>                                                                                                                                                                                                               |[0x800003b4]:UKSUBH s7, a5, s11<br> [0x800003b8]:csrrs a5, vxsat, zero<br> [0x800003bc]:sw s7, 32(ra)<br>      |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x3<br> - rs2 : x4<br> - rd : x16<br> - rs2_h1_val == 8192<br> - rs1_h1_val == 2<br>                                                                                                                                                                                            |[0x800003d4]:UKSUBH a6, gp, tp<br> [0x800003d8]:csrrs gp, vxsat, zero<br> [0x800003dc]:sw a6, 40(ra)<br>       |
|  24|[0x800022c8]<br>0x00000000|- rs1 : x0<br> - rs2 : x29<br> - rd : x6<br> - rs1_h0_val == 0<br> - rs2_h1_val == 4096<br>                                                                                                                                                                                            |[0x800003f4]:UKSUBH t1, zero, t4<br> [0x800003f8]:csrrs zero, vxsat, zero<br> [0x800003fc]:sw t1, 48(ra)<br>   |
|  25|[0x800022d0]<br>0x00000000|- rs1 : x30<br> - rs2 : x18<br> - rd : x29<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 4096<br> - rs1_h0_val == 8<br>                                                                                                                                                                 |[0x80000410]:UKSUBH t4, t5, s2<br> [0x80000414]:csrrs t5, vxsat, zero<br> [0x80000418]:sw t4, 56(ra)<br>       |
|  26|[0x800022d8]<br>0xFFFFFFFF|- rs1 : x2<br> - rs2 : x5<br> - rd : x4<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 32767<br> - rs1_h0_val == 32768<br>                                                                                                                                                               |[0x8000042c]:UKSUBH tp, sp, t0<br> [0x80000430]:csrrs sp, vxsat, zero<br> [0x80000434]:sw tp, 64(ra)<br>       |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x6<br> - rs2 : x13<br> - rd : x19<br> - rs2_h1_val == 512<br> - rs2_h0_val == 65023<br> - rs1_h0_val == 2048<br>                                                                                                                                                               |[0x8000044c]:UKSUBH s3, t1, a3<br> [0x80000450]:csrrs t1, vxsat, zero<br> [0x80000454]:sw s3, 72(ra)<br>       |
|  28|[0x800022e8]<br>0x00000000|- rs1 : x4<br> - rs2 : x15<br> - rd : x2<br> - rs2_h1_val == 256<br> - rs2_h0_val == 4<br>                                                                                                                                                                                             |[0x8000046c]:UKSUBH sp, tp, a5<br> [0x80000470]:csrrs tp, vxsat, zero<br> [0x80000474]:sw sp, 80(ra)<br>       |
|  29|[0x800022f0]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x2<br> - rd : x12<br> - rs2_h1_val == 128<br> - rs1_h1_val == 512<br>                                                                                                                                                                                          |[0x80000488]:UKSUBH a2, a4, sp<br> [0x8000048c]:csrrs a4, vxsat, zero<br> [0x80000490]:sw a2, 88(ra)<br>       |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x23<br> - rs2 : x7<br> - rd : x26<br> - rs2_h1_val == 64<br> - rs1_h0_val == 65279<br>                                                                                                                                                                                         |[0x800004a8]:UKSUBH s10, s7, t2<br> [0x800004ac]:csrrs s7, vxsat, zero<br> [0x800004b0]:sw s10, 96(ra)<br>     |
|  31|[0x80002300]<br>0xFFFFFFFF|- rs1 : x31<br> - rs2 : x17<br> - rd : x24<br> - rs2_h1_val == 32<br> - rs2_h0_val == 64<br> - rs1_h0_val == 8192<br>                                                                                                                                                                  |[0x800004c4]:UKSUBH s8, t6, a7<br> [0x800004c8]:csrrs t6, vxsat, zero<br> [0x800004cc]:sw s8, 104(ra)<br>      |
|  32|[0x80002308]<br>0xFFFFFFFF|- rs1 : x5<br> - rs2 : x11<br> - rd : x21<br> - rs2_h1_val == 16<br> - rs1_h1_val == 63487<br>                                                                                                                                                                                         |[0x800004e4]:UKSUBH s5, t0, a1<br> [0x800004e8]:csrrs t0, vxsat, zero<br> [0x800004ec]:sw s5, 112(ra)<br>      |
|  33|[0x80002310]<br>0xFFFFFFFF|- rs1_h1_val == 65531<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                    |[0x80000500]:UKSUBH t6, t5, t4<br> [0x80000504]:csrrs t5, vxsat, zero<br> [0x80000508]:sw t6, 120(ra)<br>      |
|  34|[0x80002318]<br>0xFFFFFFFF|- rs1_h1_val == 65471<br>                                                                                                                                                                                                                                                              |[0x80000520]:UKSUBH t6, t5, t4<br> [0x80000524]:csrrs t5, vxsat, zero<br> [0x80000528]:sw t6, 128(ra)<br>      |
|  35|[0x80002320]<br>0xFFFFFFFF|- rs1_h1_val == 32768<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                      |[0x80000540]:UKSUBH t6, t5, t4<br> [0x80000544]:csrrs t5, vxsat, zero<br> [0x80000548]:sw t6, 136(ra)<br>      |
|  36|[0x80002328]<br>0xFFFFFFFF|- rs1_h1_val == 49151<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                      |[0x80000560]:UKSUBH t6, t5, t4<br> [0x80000564]:csrrs t5, vxsat, zero<br> [0x80000568]:sw t6, 144(ra)<br>      |
|  37|[0x80002330]<br>0x00000000|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                 |[0x80000580]:UKSUBH t6, t5, t4<br> [0x80000584]:csrrs t5, vxsat, zero<br> [0x80000588]:sw t6, 152(ra)<br>      |
|  38|[0x80002338]<br>0x00000000|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                 |[0x800005a0]:UKSUBH t6, t5, t4<br> [0x800005a4]:csrrs t5, vxsat, zero<br> [0x800005a8]:sw t6, 160(ra)<br>      |
|  39|[0x80002340]<br>0x00000000|- rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                 |[0x800005c0]:UKSUBH t6, t5, t4<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 168(ra)<br>      |
|  40|[0x80002348]<br>0x00000000|- rs2_h0_val == 8192<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                         |[0x800005dc]:UKSUBH t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 176(ra)<br>      |
|  41|[0x80002350]<br>0xFFFFFFFF|- rs2_h1_val == 1<br> - rs1_h0_val == 65535<br>                                                                                                                                                                                                                                        |[0x800005fc]:UKSUBH t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 184(ra)<br>      |
|  42|[0x80002358]<br>0x00000000|- rs2_h1_val == 8<br> - rs2_h0_val == 16<br>                                                                                                                                                                                                                                           |[0x8000061c]:UKSUBH t6, t5, t4<br> [0x80000620]:csrrs t5, vxsat, zero<br> [0x80000624]:sw t6, 192(ra)<br>      |
|  43|[0x80002360]<br>0x00000000|- rs2_h1_val == 4<br> - rs2_h0_val == 65407<br> - rs1_h0_val == 63487<br>                                                                                                                                                                                                              |[0x8000063c]:UKSUBH t6, t5, t4<br> [0x80000640]:csrrs t5, vxsat, zero<br> [0x80000644]:sw t6, 200(ra)<br>      |
|  44|[0x80002368]<br>0xFFFFFFFF|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                  |[0x80000658]:UKSUBH t6, t5, t4<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 208(ra)<br>      |
|  45|[0x80002378]<br>0xFFFFFFFF|- rs2_h0_val == 21845<br> - rs1_h1_val == 61439<br>                                                                                                                                                                                                                                    |[0x80000698]:UKSUBH t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 224(ra)<br>      |
|  46|[0x80002380]<br>0xFFFFFFFF|- rs2_h0_val == 49151<br> - rs1_h1_val == 65533<br>                                                                                                                                                                                                                                    |[0x800006b8]:UKSUBH t6, t5, t4<br> [0x800006bc]:csrrs t5, vxsat, zero<br> [0x800006c0]:sw t6, 232(ra)<br>      |
|  47|[0x80002388]<br>0xFFFFFFFF|- rs2_h0_val == 57343<br>                                                                                                                                                                                                                                                              |[0x800006d4]:UKSUBH t6, t5, t4<br> [0x800006d8]:csrrs t5, vxsat, zero<br> [0x800006dc]:sw t6, 240(ra)<br>      |
|  48|[0x80002390]<br>0xFFFFFFFF|- rs2_h0_val == 61439<br> - rs1_h1_val == 43690<br>                                                                                                                                                                                                                                    |[0x800006f4]:UKSUBH t6, t5, t4<br> [0x800006f8]:csrrs t5, vxsat, zero<br> [0x800006fc]:sw t6, 248(ra)<br>      |
|  49|[0x80002398]<br>0xFFFFFFFF|- rs2_h0_val == 65471<br> - rs1_h1_val == 65534<br>                                                                                                                                                                                                                                    |[0x80000714]:UKSUBH t6, t5, t4<br> [0x80000718]:csrrs t5, vxsat, zero<br> [0x8000071c]:sw t6, 256(ra)<br>      |
|  50|[0x800023a0]<br>0xFFFFFFFF|- rs2_h0_val == 65527<br>                                                                                                                                                                                                                                                              |[0x80000730]:UKSUBH t6, t5, t4<br> [0x80000734]:csrrs t5, vxsat, zero<br> [0x80000738]:sw t6, 264(ra)<br>      |
|  51|[0x800023a8]<br>0x00000000|- rs2_h0_val == 256<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                       |[0x80000750]:UKSUBH t6, t5, t4<br> [0x80000754]:csrrs t5, vxsat, zero<br> [0x80000758]:sw t6, 272(ra)<br>      |
|  52|[0x800023b0]<br>0x00000000|- rs2_h0_val == 32<br> - rs1_h0_val == 49151<br>                                                                                                                                                                                                                                       |[0x80000770]:UKSUBH t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 280(ra)<br>      |
|  53|[0x800023b8]<br>0x00000000|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                  |[0x80000790]:UKSUBH t6, t5, t4<br> [0x80000794]:csrrs t5, vxsat, zero<br> [0x80000798]:sw t6, 288(ra)<br>      |
|  54|[0x800023c0]<br>0x00000000|- rs2_h0_val == 2<br> - rs1_h1_val == 64511<br>                                                                                                                                                                                                                                        |[0x800007b0]:UKSUBH t6, t5, t4<br> [0x800007b4]:csrrs t5, vxsat, zero<br> [0x800007b8]:sw t6, 296(ra)<br>      |
|  55|[0x800023c8]<br>0x00000000|- rs2_h0_val == 65535<br>                                                                                                                                                                                                                                                              |[0x800007cc]:UKSUBH t6, t5, t4<br> [0x800007d0]:csrrs t5, vxsat, zero<br> [0x800007d4]:sw t6, 304(ra)<br>      |
|  56|[0x800023d0]<br>0x00000000|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                              |[0x800007ec]:UKSUBH t6, t5, t4<br> [0x800007f0]:csrrs t5, vxsat, zero<br> [0x800007f4]:sw t6, 312(ra)<br>      |
|  57|[0x800023d8]<br>0x00000000|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                              |[0x80000808]:UKSUBH t6, t5, t4<br> [0x8000080c]:csrrs t5, vxsat, zero<br> [0x80000810]:sw t6, 320(ra)<br>      |
|  58|[0x800023e0]<br>0x00000000|- rs1_h1_val == 65407<br> - rs1_h0_val == 65471<br>                                                                                                                                                                                                                                    |[0x80000828]:UKSUBH t6, t5, t4<br> [0x8000082c]:csrrs t5, vxsat, zero<br> [0x80000830]:sw t6, 328(ra)<br>      |
|  59|[0x800023e8]<br>0xFFFFFFFF|- rs1_h1_val == 65503<br>                                                                                                                                                                                                                                                              |[0x80000848]:UKSUBH t6, t5, t4<br> [0x8000084c]:csrrs t5, vxsat, zero<br> [0x80000850]:sw t6, 336(ra)<br>      |
|  60|[0x800023f0]<br>0x00000000|- rs2_h0_val == 65533<br>                                                                                                                                                                                                                                                              |[0x80000868]:UKSUBH t6, t5, t4<br> [0x8000086c]:csrrs t5, vxsat, zero<br> [0x80000870]:sw t6, 344(ra)<br>      |
|  61|[0x800023f8]<br>0x00000000|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                              |[0x80000884]:UKSUBH t6, t5, t4<br> [0x80000888]:csrrs t5, vxsat, zero<br> [0x8000088c]:sw t6, 352(ra)<br>      |
|  62|[0x80002400]<br>0xFFFFFFFF|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                               |[0x800008a4]:UKSUBH t6, t5, t4<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sw t6, 360(ra)<br>      |
|  63|[0x80002408]<br>0xFFFFFFFF|- rs2_h0_val == 16384<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                     |[0x800008bc]:UKSUBH t6, t5, t4<br> [0x800008c0]:csrrs t5, vxsat, zero<br> [0x800008c4]:sw t6, 368(ra)<br>      |
|  64|[0x80002410]<br>0xFFFFFFFF|- rs1_h1_val == 1024<br> - rs1_h0_val == 61439<br>                                                                                                                                                                                                                                     |[0x800008dc]:UKSUBH t6, t5, t4<br> [0x800008e0]:csrrs t5, vxsat, zero<br> [0x800008e4]:sw t6, 376(ra)<br>      |
|  65|[0x80002418]<br>0xFFFFFFFF|- rs1_h1_val == 128<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                                                                      |[0x800008f8]:UKSUBH t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 384(ra)<br>      |
|  66|[0x80002420]<br>0xFFFFFFFF|- rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                 |[0x80000918]:UKSUBH t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 392(ra)<br>      |
|  67|[0x80002428]<br>0xFFFFFFFF|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                              |[0x80000938]:UKSUBH t6, t5, t4<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sw t6, 400(ra)<br>      |
|  68|[0x80002430]<br>0xFFFFFFFF|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                               |[0x80000958]:UKSUBH t6, t5, t4<br> [0x8000095c]:csrrs t5, vxsat, zero<br> [0x80000960]:sw t6, 408(ra)<br>      |
|  69|[0x80002438]<br>0x00000000|- rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                              |[0x80000978]:UKSUBH t6, t5, t4<br> [0x8000097c]:csrrs t5, vxsat, zero<br> [0x80000980]:sw t6, 416(ra)<br>      |
|  70|[0x80002440]<br>0xFFFFFFFF|- rs2_h0_val == 32768<br>                                                                                                                                                                                                                                                              |[0x80000994]:UKSUBH t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 424(ra)<br>      |
|  71|[0x80002448]<br>0x00000000|- rs1_h1_val == 4<br> - rs1_h0_val == 57343<br>                                                                                                                                                                                                                                        |[0x800009b4]:UKSUBH t6, t5, t4<br> [0x800009b8]:csrrs t5, vxsat, zero<br> [0x800009bc]:sw t6, 432(ra)<br>      |
|  72|[0x80002450]<br>0x00000000|- rs1_h0_val == 65503<br>                                                                                                                                                                                                                                                              |[0x800009d4]:UKSUBH t6, t5, t4<br> [0x800009d8]:csrrs t5, vxsat, zero<br> [0x800009dc]:sw t6, 440(ra)<br>      |
|  73|[0x80002458]<br>0x00000000|- rs1_h0_val == 65527<br>                                                                                                                                                                                                                                                              |[0x800009f4]:UKSUBH t6, t5, t4<br> [0x800009f8]:csrrs t5, vxsat, zero<br> [0x800009fc]:sw t6, 448(ra)<br>      |
|  74|[0x80002470]<br>0xFFFFFFFF|- rs2_h1_val == 43690<br>                                                                                                                                                                                                                                                              |[0x80000a4c]:UKSUBH t6, t5, t4<br> [0x80000a50]:csrrs t5, vxsat, zero<br> [0x80000a54]:sw t6, 472(ra)<br>      |
