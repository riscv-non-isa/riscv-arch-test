
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a80')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | kdmatt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kdmatt-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 156      |
| STAT1                     | 75      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 78     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000638]:KDMATT t6, t5, t4
      [0x8000063c]:csrrs t5, vxsat, zero
      [0x80000640]:sw t6, 104(ra)
 -- Signature Address: 0x80002360 Data: 0x020F6FC1
 -- Redundant Coverpoints hit by the op
      - opcode : kdmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h0_val == -4097
      - rs1_h1_val == -65
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000724]:KDMATT t6, t5, t4
      [0x80000728]:csrrs t5, vxsat, zero
      [0x8000072c]:sw t6, 168(ra)
 -- Signature Address: 0x800023a0 Data: 0x01CF6743
 -- Redundant Coverpoints hit by the op
      - opcode : kdmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 4096
      - rs1_h1_val == -1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a70]:KDMATT t6, t5, t4
      [0x80000a74]:csrrs t5, vxsat, zero
      [0x80000a78]:sw t6, 384(ra)
 -- Signature Address: 0x80002478 Data: 0x0F248795
 -- Redundant Coverpoints hit by the op
      - opcode : kdmatt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -9
      - rs2_h0_val == -1025
      - rs1_h1_val == 1024
      - rs1_h0_val == 16384






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmatt', 'rs1 : x2', 'rs2 : x2', 'rd : x2', 'rs1 == rs2 == rd', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 512', 'rs2_h0_val == 1', 'rs1_h1_val == 512', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000118]:KDMATT sp, sp, sp
	-[0x8000011c]:csrrs sp, vxsat, zero
	-[0x80000120]:sw sp, 0(tp)
Current Store : [0x80000124] : sw sp, 4(tp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x1', 'rd : x25', 'rs1 == rs2 != rd', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h1_val == -21846', 'rs2_h0_val == -17', 'rs1_h1_val == -21846', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000138]:KDMATT s9, ra, ra
	-[0x8000013c]:csrrs ra, vxsat, zero
	-[0x80000140]:sw s9, 8(tp)
Current Store : [0x80000144] : sw ra, 12(tp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x10', 'rd : x14', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h0_val == -3', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000154]:KDMATT a4, t5, a0
	-[0x80000158]:csrrs t5, vxsat, zero
	-[0x8000015c]:sw a4, 16(tp)
Current Store : [0x80000160] : sw t5, 20(tp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x8', 'rd : x8', 'rs2 == rd != rs1', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs1_h1_val == 256', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000174]:KDMATT fp, s8, fp
	-[0x80000178]:csrrs s8, vxsat, zero
	-[0x8000017c]:sw fp, 24(tp)
Current Store : [0x80000180] : sw s8, 28(tp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x26', 'rd : x7', 'rs1 == rd != rs2', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000194]:KDMATT t2, t2, s10
	-[0x80000198]:csrrs t2, vxsat, zero
	-[0x8000019c]:sw t2, 32(tp)
Current Store : [0x800001a0] : sw t2, 36(tp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x12', 'rd : x0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == 1', 'rs2_h0_val == -129', 'rs1_h1_val == -5', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800001b0]:KDMATT zero, t1, a2
	-[0x800001b4]:csrrs t1, vxsat, zero
	-[0x800001b8]:sw zero, 40(tp)
Current Store : [0x800001bc] : sw t1, 44(tp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x17', 'rd : x16', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800001d0]:KDMATT a6, zero, a7
	-[0x800001d4]:csrrs zero, vxsat, zero
	-[0x800001d8]:sw a6, 48(tp)
Current Store : [0x800001dc] : sw zero, 52(tp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x18', 'rd : x11', 'rs2_h1_val == 21845', 'rs2_h0_val == -16385', 'rs1_h1_val == 8192', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800001f0]:KDMATT a1, a3, s2
	-[0x800001f4]:csrrs a3, vxsat, zero
	-[0x800001f8]:sw a1, 56(tp)
Current Store : [0x800001fc] : sw a3, 60(tp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x15', 'rd : x13', 'rs2_h1_val == 32767', 'rs2_h0_val == 1024', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000210]:KDMATT a3, a4, a5
	-[0x80000214]:csrrs a4, vxsat, zero
	-[0x80000218]:sw a3, 64(tp)
Current Store : [0x8000021c] : sw a4, 68(tp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x31', 'rd : x24', 'rs2_h1_val == -16385', 'rs2_h0_val == -21846', 'rs1_h1_val == -3', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000230]:KDMATT s8, s6, t6
	-[0x80000234]:csrrs s6, vxsat, zero
	-[0x80000238]:sw s8, 72(tp)
Current Store : [0x8000023c] : sw s6, 76(tp) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x19', 'rd : x23', 'rs2_h1_val == -8193', 'rs2_h0_val == -65', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000250]:KDMATT s7, a0, s3
	-[0x80000254]:csrrs a0, vxsat, zero
	-[0x80000258]:sw s7, 80(tp)
Current Store : [0x8000025c] : sw a0, 84(tp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x14', 'rd : x21', 'rs2_h1_val == -4097', 'rs1_h1_val == 16', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000270]:KDMATT s5, t0, a4
	-[0x80000274]:csrrs t0, vxsat, zero
	-[0x80000278]:sw s5, 88(tp)
Current Store : [0x8000027c] : sw t0, 92(tp) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x27', 'rd : x3', 'rs2_h1_val == -2049', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000290]:KDMATT gp, a5, s11
	-[0x80000294]:csrrs a5, vxsat, zero
	-[0x80000298]:sw gp, 96(tp)
Current Store : [0x8000029c] : sw a5, 100(tp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x3', 'rd : x10', 'rs2_h1_val == -1025', 'rs2_h0_val == 512', 'rs1_h1_val == -1', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800002b0]:KDMATT a0, t3, gp
	-[0x800002b4]:csrrs t3, vxsat, zero
	-[0x800002b8]:sw a0, 104(tp)
Current Store : [0x800002bc] : sw t3, 108(tp) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x7', 'rd : x17', 'rs2_h1_val == -513', 'rs2_h0_val == 4', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800002d8]:KDMATT a7, s9, t2
	-[0x800002dc]:csrrs s9, vxsat, zero
	-[0x800002e0]:sw a7, 0(sp)
Current Store : [0x800002e4] : sw s9, 4(sp) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x24', 'rd : x19', 'rs2_h1_val == -257', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x800002f4]:KDMATT s3, a6, s8
	-[0x800002f8]:csrrs a6, vxsat, zero
	-[0x800002fc]:sw s3, 8(sp)
Current Store : [0x80000300] : sw a6, 12(sp) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x25', 'rd : x6', 'rs2_h1_val == -129', 'rs2_h0_val == -5', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000310]:KDMATT t1, tp, s9
	-[0x80000314]:csrrs tp, vxsat, zero
	-[0x80000318]:sw t1, 16(sp)
Current Store : [0x8000031c] : sw tp, 20(sp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x5', 'rd : x1', 'rs2_h1_val == -65', 'rs2_h0_val == -513', 'rs1_h1_val == 2', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000330]:KDMATT ra, a1, t0
	-[0x80000334]:csrrs a1, vxsat, zero
	-[0x80000338]:sw ra, 24(sp)
Current Store : [0x8000033c] : sw a1, 28(sp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x9', 'rd : x31', 'rs2_h1_val == -33']
Last Code Sequence : 
	-[0x80000350]:KDMATT t6, fp, s1
	-[0x80000354]:csrrs fp, vxsat, zero
	-[0x80000358]:sw t6, 32(sp)
Current Store : [0x8000035c] : sw fp, 36(sp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x29', 'rd : x28', 'rs2_h1_val == -17', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000370]:KDMATT t3, gp, t4
	-[0x80000374]:csrrs gp, vxsat, zero
	-[0x80000378]:sw t3, 40(sp)
Current Store : [0x8000037c] : sw gp, 44(sp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x0', 'rd : x18', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x8000038c]:KDMATT s2, s7, zero
	-[0x80000390]:csrrs s7, vxsat, zero
	-[0x80000394]:sw s2, 48(sp)
Current Store : [0x80000398] : sw s7, 52(sp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x11', 'rd : x26', 'rs2_h1_val == -5', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800003a8]:KDMATT s10, a7, a1
	-[0x800003ac]:csrrs a7, vxsat, zero
	-[0x800003b0]:sw s10, 56(sp)
Current Store : [0x800003b4] : sw a7, 60(sp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x30', 'rd : x27', 'rs2_h1_val == -3', 'rs2_h0_val == -2049', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800003c4]:KDMATT s11, s3, t5
	-[0x800003c8]:csrrs s3, vxsat, zero
	-[0x800003cc]:sw s11, 64(sp)
Current Store : [0x800003d0] : sw s3, 68(sp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x21', 'rd : x22', 'rs2_h1_val == -2']
Last Code Sequence : 
	-[0x800003e0]:KDMATT s6, s2, s5
	-[0x800003e4]:csrrs s2, vxsat, zero
	-[0x800003e8]:sw s6, 72(sp)
Current Store : [0x800003ec] : sw s2, 76(sp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x6', 'rd : x20', 'rs2_h1_val == -32768', 'rs1_h1_val == 16384', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000400]:KDMATT s4, t4, t1
	-[0x80000404]:csrrs t4, vxsat, zero
	-[0x80000408]:sw s4, 80(sp)
Current Store : [0x8000040c] : sw t4, 84(sp) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x4', 'rd : x9', 'rs2_h1_val == 16384', 'rs2_h0_val == 16', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000420]:KDMATT s1, t6, tp
	-[0x80000424]:csrrs t6, vxsat, zero
	-[0x80000428]:sw s1, 88(sp)
Current Store : [0x8000042c] : sw t6, 92(sp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x20', 'rd : x4', 'rs2_h1_val == 8192', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000440]:KDMATT tp, s5, s4
	-[0x80000444]:csrrs s5, vxsat, zero
	-[0x80000448]:sw tp, 96(sp)
Current Store : [0x8000044c] : sw s5, 100(sp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x16', 'rd : x5', 'rs2_h1_val == 4096', 'rs2_h0_val == -4097', 'rs1_h1_val == -2049', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000460]:KDMATT t0, a2, a6
	-[0x80000464]:csrrs a2, vxsat, zero
	-[0x80000468]:sw t0, 104(sp)
Current Store : [0x8000046c] : sw a2, 108(sp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x13', 'rd : x12', 'rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x8000047c]:KDMATT a2, s1, a3
	-[0x80000480]:csrrs s1, vxsat, zero
	-[0x80000484]:sw a2, 112(sp)
Current Store : [0x80000488] : sw s1, 116(sp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x23', 'rd : x29', 'rs2_h1_val == 1024', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x800004a4]:KDMATT t4, s11, s7
	-[0x800004a8]:csrrs s11, vxsat, zero
	-[0x800004ac]:sw t4, 0(ra)
Current Store : [0x800004b0] : sw s11, 4(ra) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x22', 'rd : x15', 'rs2_h1_val == 256', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x800004c4]:KDMATT a5, s4, s6
	-[0x800004c8]:csrrs s4, vxsat, zero
	-[0x800004cc]:sw a5, 8(ra)
Current Store : [0x800004d0] : sw s4, 12(ra) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x28', 'rd : x30', 'rs2_h1_val == 4', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x800004e4]:KDMATT t5, s10, t3
	-[0x800004e8]:csrrs s10, vxsat, zero
	-[0x800004ec]:sw t5, 16(ra)
Current Store : [0x800004f0] : sw s10, 20(ra) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_h1_val == -65', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000504]:KDMATT t6, t5, t4
	-[0x80000508]:csrrs t5, vxsat, zero
	-[0x8000050c]:sw t6, 24(ra)
Current Store : [0x80000510] : sw t5, 28(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000524]:KDMATT t6, t5, t4
	-[0x80000528]:csrrs t5, vxsat, zero
	-[0x8000052c]:sw t6, 32(ra)
Current Store : [0x80000530] : sw t5, 36(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x80000540]:KDMATT t6, t5, t4
	-[0x80000544]:csrrs t5, vxsat, zero
	-[0x80000548]:sw t6, 40(ra)
Current Store : [0x8000054c] : sw t5, 44(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_h1_val == -9', 'rs2_h0_val == 21845', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000560]:KDMATT t6, t5, t4
	-[0x80000564]:csrrs t5, vxsat, zero
	-[0x80000568]:sw t6, 48(ra)
Current Store : [0x8000056c] : sw t5, 52(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000057c]:KDMATT t6, t5, t4
	-[0x80000580]:csrrs t5, vxsat, zero
	-[0x80000584]:sw t6, 56(ra)
Current Store : [0x80000588] : sw t5, 60(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x8000059c]:KDMATT t6, t5, t4
	-[0x800005a0]:csrrs t5, vxsat, zero
	-[0x800005a4]:sw t6, 64(ra)
Current Store : [0x800005a8] : sw t5, 68(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x800005bc]:KDMATT t6, t5, t4
	-[0x800005c0]:csrrs t5, vxsat, zero
	-[0x800005c4]:sw t6, 72(ra)
Current Store : [0x800005c8] : sw t5, 76(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800005dc]:KDMATT t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 80(ra)
Current Store : [0x800005e8] : sw t5, 84(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800005fc]:KDMATT t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 88(ra)
Current Store : [0x80000608] : sw t5, 92(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1025', 'rs1_h1_val == -32768', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x8000061c]:KDMATT t6, t5, t4
	-[0x80000620]:csrrs t5, vxsat, zero
	-[0x80000624]:sw t6, 96(ra)
Current Store : [0x80000628] : sw t5, 100(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['opcode : kdmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs2_h0_val == -4097', 'rs1_h1_val == -65', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000638]:KDMATT t6, t5, t4
	-[0x8000063c]:csrrs t5, vxsat, zero
	-[0x80000640]:sw t6, 104(ra)
Current Store : [0x80000644] : sw t5, 108(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000654]:KDMATT t6, t5, t4
	-[0x80000658]:csrrs t5, vxsat, zero
	-[0x8000065c]:sw t6, 112(ra)
Current Store : [0x80000660] : sw t5, 116(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 128']
Last Code Sequence : 
	-[0x80000674]:KDMATT t6, t5, t4
	-[0x80000678]:csrrs t5, vxsat, zero
	-[0x8000067c]:sw t6, 120(ra)
Current Store : [0x80000680] : sw t5, 124(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80000690]:KDMATT t6, t5, t4
	-[0x80000694]:csrrs t5, vxsat, zero
	-[0x80000698]:sw t6, 128(ra)
Current Store : [0x8000069c] : sw t5, 132(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x800006b0]:KDMATT t6, t5, t4
	-[0x800006b4]:csrrs t5, vxsat, zero
	-[0x800006b8]:sw t6, 136(ra)
Current Store : [0x800006bc] : sw t5, 140(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_h1_val == 16', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800006cc]:KDMATT t6, t5, t4
	-[0x800006d0]:csrrs t5, vxsat, zero
	-[0x800006d4]:sw t6, 144(ra)
Current Store : [0x800006d8] : sw t5, 148(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x800006ec]:KDMATT t6, t5, t4
	-[0x800006f0]:csrrs t5, vxsat, zero
	-[0x800006f4]:sw t6, 152(ra)
Current Store : [0x800006f8] : sw t5, 156(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == -2', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000708]:KDMATT t6, t5, t4
	-[0x8000070c]:csrrs t5, vxsat, zero
	-[0x80000710]:sw t6, 160(ra)
Current Store : [0x80000714] : sw t5, 164(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['opcode : kdmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h1_val == 0', 'rs2_h0_val == 4096', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000724]:KDMATT t6, t5, t4
	-[0x80000728]:csrrs t5, vxsat, zero
	-[0x8000072c]:sw t6, 168(ra)
Current Store : [0x80000730] : sw t5, 172(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h1_val == 32', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000740]:KDMATT t6, t5, t4
	-[0x80000744]:csrrs t5, vxsat, zero
	-[0x80000748]:sw t6, 176(ra)
Current Store : [0x8000074c] : sw t5, 180(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x8000075c]:KDMATT t6, t5, t4
	-[0x80000760]:csrrs t5, vxsat, zero
	-[0x80000764]:sw t6, 184(ra)
Current Store : [0x80000768] : sw t5, 188(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x8000077c]:KDMATT t6, t5, t4
	-[0x80000780]:csrrs t5, vxsat, zero
	-[0x80000784]:sw t6, 192(ra)
Current Store : [0x80000788] : sw t5, 196(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x8000079c]:KDMATT t6, t5, t4
	-[0x800007a0]:csrrs t5, vxsat, zero
	-[0x800007a4]:sw t6, 200(ra)
Current Store : [0x800007a8] : sw t5, 204(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800007bc]:KDMATT t6, t5, t4
	-[0x800007c0]:csrrs t5, vxsat, zero
	-[0x800007c4]:sw t6, 208(ra)
Current Store : [0x800007c8] : sw t5, 212(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x800007dc]:KDMATT t6, t5, t4
	-[0x800007e0]:csrrs t5, vxsat, zero
	-[0x800007e4]:sw t6, 216(ra)
Current Store : [0x800007e8] : sw t5, 220(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800007fc]:KDMATT t6, t5, t4
	-[0x80000800]:csrrs t5, vxsat, zero
	-[0x80000804]:sw t6, 224(ra)
Current Store : [0x80000808] : sw t5, 228(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x8000081c]:KDMATT t6, t5, t4
	-[0x80000820]:csrrs t5, vxsat, zero
	-[0x80000824]:sw t6, 232(ra)
Current Store : [0x80000828] : sw t5, 236(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -16385', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x8000083c]:KDMATT t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 240(ra)
Current Store : [0x80000848] : sw t5, 244(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x8000085c]:KDMATT t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 248(ra)
Current Store : [0x80000868] : sw t5, 252(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x8000087c]:KDMATT t6, t5, t4
	-[0x80000880]:csrrs t5, vxsat, zero
	-[0x80000884]:sw t6, 256(ra)
Current Store : [0x80000888] : sw t5, 260(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x8000089c]:KDMATT t6, t5, t4
	-[0x800008a0]:csrrs t5, vxsat, zero
	-[0x800008a4]:sw t6, 264(ra)
Current Store : [0x800008a8] : sw t5, 268(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2']
Last Code Sequence : 
	-[0x800008b8]:KDMATT t6, t5, t4
	-[0x800008bc]:csrrs t5, vxsat, zero
	-[0x800008c0]:sw t6, 272(ra)
Current Store : [0x800008c4] : sw t5, 276(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800008d8]:KDMATT t6, t5, t4
	-[0x800008dc]:csrrs t5, vxsat, zero
	-[0x800008e0]:sw t6, 280(ra)
Current Store : [0x800008e4] : sw t5, 284(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800008f8]:KDMATT t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 288(ra)
Current Store : [0x80000904] : sw t5, 292(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80000918]:KDMATT t6, t5, t4
	-[0x8000091c]:csrrs t5, vxsat, zero
	-[0x80000920]:sw t6, 296(ra)
Current Store : [0x80000924] : sw t5, 300(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80000934]:KDMATT t6, t5, t4
	-[0x80000938]:csrrs t5, vxsat, zero
	-[0x8000093c]:sw t6, 304(ra)
Current Store : [0x80000940] : sw t5, 308(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000954]:KDMATT t6, t5, t4
	-[0x80000958]:csrrs t5, vxsat, zero
	-[0x8000095c]:sw t6, 312(ra)
Current Store : [0x80000960] : sw t5, 316(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000974]:KDMATT t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 320(ra)
Current Store : [0x80000980] : sw t5, 324(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80000994]:KDMATT t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 328(ra)
Current Store : [0x800009a0] : sw t5, 332(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800009b4]:KDMATT t6, t5, t4
	-[0x800009b8]:csrrs t5, vxsat, zero
	-[0x800009bc]:sw t6, 336(ra)
Current Store : [0x800009c0] : sw t5, 340(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800009d4]:KDMATT t6, t5, t4
	-[0x800009d8]:csrrs t5, vxsat, zero
	-[0x800009dc]:sw t6, 344(ra)
Current Store : [0x800009e0] : sw t5, 348(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800009f4]:KDMATT t6, t5, t4
	-[0x800009f8]:csrrs t5, vxsat, zero
	-[0x800009fc]:sw t6, 352(ra)
Current Store : [0x80000a00] : sw t5, 356(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000a14]:KDMATT t6, t5, t4
	-[0x80000a18]:csrrs t5, vxsat, zero
	-[0x80000a1c]:sw t6, 360(ra)
Current Store : [0x80000a20] : sw t5, 364(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80000a34]:KDMATT t6, t5, t4
	-[0x80000a38]:csrrs t5, vxsat, zero
	-[0x80000a3c]:sw t6, 368(ra)
Current Store : [0x80000a40] : sw t5, 372(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000a54]:KDMATT t6, t5, t4
	-[0x80000a58]:csrrs t5, vxsat, zero
	-[0x80000a5c]:sw t6, 376(ra)
Current Store : [0x80000a60] : sw t5, 380(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['opcode : kdmatt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h1_val == -9', 'rs2_h0_val == -1025', 'rs1_h1_val == 1024', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000a70]:KDMATT t6, t5, t4
	-[0x80000a74]:csrrs t5, vxsat, zero
	-[0x80000a78]:sw t6, 384(ra)
Current Store : [0x80000a7c] : sw t5, 388(ra) -- Store: [0x8000247c]:0x00000001





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

|s.no|        signature         |                                                                                                                                                            coverpoints                                                                                                                                                            |                                                    code                                                     |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kdmatt<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 512<br> - rs2_h0_val == 1<br> - rs1_h1_val == 512<br> - rs1_h0_val == 1<br> |[0x80000118]:KDMATT sp, sp, sp<br> [0x8000011c]:csrrs sp, vxsat, zero<br> [0x80000120]:sw sp, 0(tp)<br>      |
|   2|[0x80002218]<br>0x26A31FC6|- rs1 : x1<br> - rs2 : x1<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -17<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -17<br>                                                                          |[0x80000138]:KDMATT s9, ra, ra<br> [0x8000013c]:csrrs ra, vxsat, zero<br> [0x80000140]:sw s9, 8(tp)<br>      |
|   3|[0x80002220]<br>0xF56FF5E1|- rs1 : x30<br> - rs2 : x10<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h0_val == -32768<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h0_val == -3<br> - rs1_h1_val == -33<br>                                                       |[0x80000154]:KDMATT a4, t5, a0<br> [0x80000158]:csrrs t5, vxsat, zero<br> [0x8000015c]:sw a4, 16(tp)<br>     |
|   4|[0x80002228]<br>0xFFF9F401|- rs1 : x24<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs1_h1_val == 256<br> - rs1_h0_val == -257<br>                                                                                                                               |[0x80000174]:KDMATT fp, s8, fp<br> [0x80000178]:csrrs s8, vxsat, zero<br> [0x8000017c]:sw fp, 24(tp)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x7<br> - rs2 : x26<br> - rd : x7<br> - rs1 == rd != rs2<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                      |[0x80000194]:KDMATT t2, t2, s10<br> [0x80000198]:csrrs t2, vxsat, zero<br> [0x8000019c]:sw t2, 32(tp)<br>    |
|   6|[0x80002238]<br>0x00000000|- rs1 : x6<br> - rs2 : x12<br> - rd : x0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == 1<br> - rs2_h0_val == -129<br> - rs1_h1_val == -5<br> - rs1_h0_val == 8192<br>                                                                                                                                                |[0x800001b0]:KDMATT zero, t1, a2<br> [0x800001b4]:csrrs t1, vxsat, zero<br> [0x800001b8]:sw zero, 40(tp)<br> |
|   7|[0x80002240]<br>0x7D5BFDDB|- rs1 : x0<br> - rs2 : x17<br> - rd : x16<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                          |[0x800001d0]:KDMATT a6, zero, a7<br> [0x800001d4]:csrrs zero, vxsat, zero<br> [0x800001d8]:sw a6, 48(tp)<br> |
|   8|[0x80002248]<br>0xC0D4FB6F|- rs1 : x13<br> - rs2 : x18<br> - rd : x11<br> - rs2_h1_val == 21845<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 8192<br> - rs1_h0_val == -1025<br>                                                                                                                                                                             |[0x800001f0]:KDMATT a1, a3, s2<br> [0x800001f4]:csrrs a3, vxsat, zero<br> [0x800001f8]:sw a1, 56(tp)<br>     |
|   9|[0x80002250]<br>0x03FFF800|- rs1 : x14<br> - rs2 : x15<br> - rd : x13<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 1024<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                         |[0x80000210]:KDMATT a3, a4, a5<br> [0x80000214]:csrrs a4, vxsat, zero<br> [0x80000218]:sw a3, 64(tp)<br>     |
|  10|[0x80002258]<br>0x00018006|- rs1 : x22<br> - rs2 : x31<br> - rd : x24<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -3<br> - rs1_h0_val == -2<br>                                                                                                                                                                                 |[0x80000230]:KDMATT s8, s6, t6<br> [0x80000234]:csrrs s6, vxsat, zero<br> [0x80000238]:sw s8, 72(tp)<br>     |
|  11|[0x80002260]<br>0xB6F9B7F3|- rs1 : x10<br> - rs2 : x19<br> - rd : x23<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -65<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                             |[0x80000250]:KDMATT s7, a0, s3<br> [0x80000254]:csrrs a0, vxsat, zero<br> [0x80000258]:sw s7, 80(tp)<br>     |
|  12|[0x80002268]<br>0xDBE8DFCE|- rs1 : x5<br> - rs2 : x14<br> - rd : x21<br> - rs2_h1_val == -4097<br> - rs1_h1_val == 16<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                              |[0x80000270]:KDMATT s5, t0, a4<br> [0x80000274]:csrrs t0, vxsat, zero<br> [0x80000278]:sw s5, 88(tp)<br>     |
|  13|[0x80002270]<br>0x7FBB9FB1|- rs1 : x15<br> - rs2 : x27<br> - rd : x3<br> - rs2_h1_val == -2049<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                      |[0x80000290]:KDMATT gp, a5, s11<br> [0x80000294]:csrrs a5, vxsat, zero<br> [0x80000298]:sw gp, 96(tp)<br>    |
|  14|[0x80002278]<br>0x00000802|- rs1 : x28<br> - rs2 : x3<br> - rd : x10<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 512<br> - rs1_h1_val == -1<br> - rs1_h0_val == 4<br>                                                                                                                                                                                       |[0x800002b0]:KDMATT a0, t3, gp<br> [0x800002b4]:csrrs t3, vxsat, zero<br> [0x800002b8]:sw a0, 104(tp)<br>    |
|  15|[0x80002280]<br>0x01BFE003|- rs1 : x25<br> - rs2 : x7<br> - rd : x17<br> - rs2_h1_val == -513<br> - rs2_h0_val == 4<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                              |[0x800002d8]:KDMATT a7, s9, t2<br> [0x800002dc]:csrrs s9, vxsat, zero<br> [0x800002e0]:sw a7, 0(sp)<br>      |
|  16|[0x80002288]<br>0xDFFFFDBD|- rs1 : x16<br> - rs2 : x24<br> - rd : x19<br> - rs2_h1_val == -257<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                      |[0x800002f4]:KDMATT s3, a6, s8<br> [0x800002f8]:csrrs a6, vxsat, zero<br> [0x800002fc]:sw s3, 8(sp)<br>      |
|  17|[0x80002290]<br>0xFFFFBF80|- rs1 : x4<br> - rs2 : x25<br> - rd : x6<br> - rs2_h1_val == -129<br> - rs2_h0_val == -5<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                |[0x80000310]:KDMATT t1, tp, s9<br> [0x80000314]:csrrs tp, vxsat, zero<br> [0x80000318]:sw t1, 16(sp)<br>     |
|  18|[0x80002298]<br>0xFFFFFEFC|- rs1 : x11<br> - rs2 : x5<br> - rd : x1<br> - rs2_h1_val == -65<br> - rs2_h0_val == -513<br> - rs1_h1_val == 2<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                     |[0x80000330]:KDMATT ra, a1, t0<br> [0x80000334]:csrrs a1, vxsat, zero<br> [0x80000338]:sw ra, 24(sp)<br>     |
|  19|[0x800022a0]<br>0xBFFB8AAA|- rs1 : x8<br> - rs2 : x9<br> - rd : x31<br> - rs2_h1_val == -33<br>                                                                                                                                                                                                                                                               |[0x80000350]:KDMATT t6, fp, s1<br> [0x80000354]:csrrs fp, vxsat, zero<br> [0x80000358]:sw t6, 32(sp)<br>     |
|  20|[0x800022a8]<br>0x00000462|- rs1 : x3<br> - rs2 : x29<br> - rd : x28<br> - rs2_h1_val == -17<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                       |[0x80000370]:KDMATT t3, gp, t4<br> [0x80000374]:csrrs gp, vxsat, zero<br> [0x80000378]:sw t3, 40(sp)<br>     |
|  21|[0x800022b0]<br>0x5555BFFF|- rs1 : x23<br> - rs2 : x0<br> - rd : x18<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                |[0x8000038c]:KDMATT s2, s7, zero<br> [0x80000390]:csrrs s7, vxsat, zero<br> [0x80000394]:sw s2, 48(sp)<br>   |
|  22|[0x800022b8]<br>0x000A0016|- rs1 : x17<br> - rs2 : x11<br> - rd : x26<br> - rs2_h1_val == -5<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                                                                     |[0x800003a8]:KDMATT s10, a7, a1<br> [0x800003ac]:csrrs a7, vxsat, zero<br> [0x800003b0]:sw s10, 56(sp)<br>   |
|  23|[0x800022c0]<br>0xF7FF1C06|- rs1 : x19<br> - rs2 : x30<br> - rd : x27<br> - rs2_h1_val == -3<br> - rs2_h0_val == -2049<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                          |[0x800003c4]:KDMATT s11, s3, t5<br> [0x800003c8]:csrrs s3, vxsat, zero<br> [0x800003cc]:sw s11, 64(sp)<br>   |
|  24|[0x800022c8]<br>0xFFFEAAAC|- rs1 : x18<br> - rs2 : x21<br> - rd : x22<br> - rs2_h1_val == -2<br>                                                                                                                                                                                                                                                              |[0x800003e0]:KDMATT s6, s2, s5<br> [0x800003e4]:csrrs s2, vxsat, zero<br> [0x800003e8]:sw s6, 72(sp)<br>     |
|  25|[0x800022d0]<br>0x80000000|- rs1 : x29<br> - rs2 : x6<br> - rd : x20<br> - rs2_h1_val == -32768<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                          |[0x80000400]:KDMATT s4, t4, t1<br> [0x80000404]:csrrs t4, vxsat, zero<br> [0x80000408]:sw s4, 80(sp)<br>     |
|  26|[0x800022d8]<br>0xFFDDFFF6|- rs1 : x31<br> - rs2 : x4<br> - rd : x9<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 16<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                              |[0x80000420]:KDMATT s1, t6, tp<br> [0x80000424]:csrrs t6, vxsat, zero<br> [0x80000428]:sw s1, 88(sp)<br>     |
|  27|[0x800022e0]<br>0x4001C010|- rs1 : x21<br> - rs2 : x20<br> - rd : x4<br> - rs2_h1_val == 8192<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                   |[0x80000440]:KDMATT tp, s5, s4<br> [0x80000444]:csrrs s5, vxsat, zero<br> [0x80000448]:sw tp, 96(sp)<br>     |
|  28|[0x800022e8]<br>0xFEBFDDFF|- rs1 : x12<br> - rs2 : x16<br> - rd : x5<br> - rs2_h1_val == 4096<br> - rs2_h0_val == -4097<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 128<br>                                                                                                                                                                                 |[0x80000460]:KDMATT t0, a2, a6<br> [0x80000464]:csrrs a2, vxsat, zero<br> [0x80000468]:sw t0, 104(sp)<br>    |
|  29|[0x800022f0]<br>0xFF7FF001|- rs1 : x9<br> - rs2 : x13<br> - rd : x12<br> - rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                             |[0x8000047c]:KDMATT a2, s1, a3<br> [0x80000480]:csrrs s1, vxsat, zero<br> [0x80000484]:sw a2, 112(sp)<br>    |
|  30|[0x800022f8]<br>0x02000001|- rs1 : x27<br> - rs2 : x23<br> - rd : x29<br> - rs2_h1_val == 1024<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                    |[0x800004a4]:KDMATT t4, s11, s7<br> [0x800004a8]:csrrs s11, vxsat, zero<br> [0x800004ac]:sw t4, 0(ra)<br>    |
|  31|[0x80002300]<br>0xFFFFFE00|- rs1 : x20<br> - rs2 : x22<br> - rd : x15<br> - rs2_h1_val == 256<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                                                                   |[0x800004c4]:KDMATT a5, s4, s6<br> [0x800004c8]:csrrs s4, vxsat, zero<br> [0x800004cc]:sw a5, 8(ra)<br>      |
|  32|[0x80002308]<br>0xFFFDF807|- rs1 : x26<br> - rs2 : x28<br> - rd : x30<br> - rs2_h1_val == 4<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                      |[0x800004e4]:KDMATT t5, s10, t3<br> [0x800004e8]:csrrs s10, vxsat, zero<br> [0x800004ec]:sw t5, 16(ra)<br>   |
|  33|[0x80002310]<br>0x0000038F|- rs2_h0_val == 2048<br> - rs1_h1_val == -65<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                          |[0x80000504]:KDMATT t6, t5, t4<br> [0x80000508]:csrrs t5, vxsat, zero<br> [0x8000050c]:sw t6, 24(ra)<br>     |
|  34|[0x80002318]<br>0x0000038F|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                            |[0x80000524]:KDMATT t6, t5, t4<br> [0x80000528]:csrrs t5, vxsat, zero<br> [0x8000052c]:sw t6, 32(ra)<br>     |
|  35|[0x80002320]<br>0xFFFB83A1|- rs2_h0_val == 16384<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                   |[0x80000540]:KDMATT t6, t5, t4<br> [0x80000544]:csrrs t5, vxsat, zero<br> [0x80000548]:sw t6, 40(ra)<br>     |
|  36|[0x80002328]<br>0xFFF583A7|- rs2_h1_val == -9<br> - rs2_h0_val == 21845<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                            |[0x80000560]:KDMATT t6, t5, t4<br> [0x80000564]:csrrs t5, vxsat, zero<br> [0x80000568]:sw t6, 48(ra)<br>     |
|  37|[0x80002330]<br>0xFFF595A7|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                           |[0x8000057c]:KDMATT t6, t5, t4<br> [0x80000580]:csrrs t5, vxsat, zero<br> [0x80000584]:sw t6, 56(ra)<br>     |
|  38|[0x80002338]<br>0xFFF315A7|- rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                           |[0x8000059c]:KDMATT t6, t5, t4<br> [0x800005a0]:csrrs t5, vxsat, zero<br> [0x800005a4]:sw t6, 64(ra)<br>     |
|  39|[0x80002340]<br>0xFFF86B07|- rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                           |[0x800005bc]:KDMATT t6, t5, t4<br> [0x800005c0]:csrrs t5, vxsat, zero<br> [0x800005c4]:sw t6, 72(ra)<br>     |
|  40|[0x80002348]<br>0xFFF86B85|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                            |[0x800005dc]:KDMATT t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 80(ra)<br>     |
|  41|[0x80002350]<br>0x000E6BB1|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                             |[0x800005fc]:KDMATT t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 88(ra)<br>     |
|  42|[0x80002358]<br>0x020F6BB1|- rs2_h0_val == -1025<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                         |[0x8000061c]:KDMATT t6, t5, t4<br> [0x80000620]:csrrs t5, vxsat, zero<br> [0x80000624]:sw t6, 96(ra)<br>     |
|  43|[0x80002368]<br>0x020F6ED3|- rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                             |[0x80000654]:KDMATT t6, t5, t4<br> [0x80000658]:csrrs t5, vxsat, zero<br> [0x8000065c]:sw t6, 112(ra)<br>    |
|  44|[0x80002370]<br>0x020F69D3|- rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                                                            |[0x80000674]:KDMATT t6, t5, t4<br> [0x80000678]:csrrs t5, vxsat, zero<br> [0x8000067c]:sw t6, 120(ra)<br>    |
|  45|[0x80002378]<br>0x01CF69D3|- rs2_h1_val == 64<br>                                                                                                                                                                                                                                                                                                             |[0x80000690]:KDMATT t6, t5, t4<br> [0x80000694]:csrrs t5, vxsat, zero<br> [0x80000698]:sw t6, 128(ra)<br>    |
|  46|[0x80002380]<br>0x01CF67D3|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                             |[0x800006b0]:KDMATT t6, t5, t4<br> [0x800006b4]:csrrs t5, vxsat, zero<br> [0x800006b8]:sw t6, 136(ra)<br>    |
|  47|[0x80002388]<br>0x01CF6753|- rs2_h1_val == 16<br> - rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                    |[0x800006cc]:KDMATT t6, t5, t4<br> [0x800006d0]:csrrs t5, vxsat, zero<br> [0x800006d4]:sw t6, 144(ra)<br>    |
|  48|[0x80002390]<br>0x01CF6543|- rs2_h1_val == 8<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                      |[0x800006ec]:KDMATT t6, t5, t4<br> [0x800006f0]:csrrs t5, vxsat, zero<br> [0x800006f4]:sw t6, 152(ra)<br>    |
|  49|[0x80002398]<br>0x01CF6743|- rs2_h1_val == 2<br> - rs2_h0_val == -2<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                               |[0x80000708]:KDMATT t6, t5, t4<br> [0x8000070c]:csrrs t5, vxsat, zero<br> [0x80000710]:sw t6, 160(ra)<br>    |
|  50|[0x800023a8]<br>0x01BF6703|- rs2_h0_val == -32768<br> - rs1_h1_val == 32<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                        |[0x80000740]:KDMATT t6, t5, t4<br> [0x80000744]:csrrs t5, vxsat, zero<br> [0x80000748]:sw t6, 176(ra)<br>    |
|  51|[0x800023b0]<br>0x01BF670B|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                            |[0x8000075c]:KDMATT t6, t5, t4<br> [0x80000760]:csrrs t5, vxsat, zero<br> [0x80000764]:sw t6, 184(ra)<br>    |
|  52|[0x800023b8]<br>0x01BF68D9|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                             |[0x8000077c]:KDMATT t6, t5, t4<br> [0x80000780]:csrrs t5, vxsat, zero<br> [0x80000784]:sw t6, 192(ra)<br>    |
|  53|[0x800023c0]<br>0x01BF44D9|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                             |[0x8000079c]:KDMATT t6, t5, t4<br> [0x800007a0]:csrrs t5, vxsat, zero<br> [0x800007a4]:sw t6, 200(ra)<br>    |
|  54|[0x800023c8]<br>0x01BF5CD9|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                              |[0x800007bc]:KDMATT t6, t5, t4<br> [0x800007c0]:csrrs t5, vxsat, zero<br> [0x800007c4]:sw t6, 208(ra)<br>    |
|  55|[0x800023d0]<br>0x01BF5CC9|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                              |[0x800007dc]:KDMATT t6, t5, t4<br> [0x800007e0]:csrrs t5, vxsat, zero<br> [0x800007e4]:sw t6, 216(ra)<br>    |
|  56|[0x800023d8]<br>0x01BF5B89|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                             |[0x800007fc]:KDMATT t6, t5, t4<br> [0x80000800]:csrrs t5, vxsat, zero<br> [0x80000804]:sw t6, 224(ra)<br>    |
|  57|[0x800023e0]<br>0x01DF5B49|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                          |[0x8000081c]:KDMATT t6, t5, t4<br> [0x80000820]:csrrs t5, vxsat, zero<br> [0x80000824]:sw t6, 232(ra)<br>    |
|  58|[0x800023e8]<br>0x01DEDB47|- rs1_h1_val == -16385<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                              |[0x8000083c]:KDMATT t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 240(ra)<br>    |
|  59|[0x800023f0]<br>0x01DF9B4D|- rs2_h0_val == -257<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                 |[0x8000085c]:KDMATT t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 248(ra)<br>    |
|  60|[0x800023f8]<br>0x01E05B59|- rs1_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                          |[0x8000087c]:KDMATT t6, t5, t4<br> [0x80000880]:csrrs t5, vxsat, zero<br> [0x80000884]:sw t6, 256(ra)<br>    |
|  61|[0x80002400]<br>0x01E27B7B|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                            |[0x8000089c]:KDMATT t6, t5, t4<br> [0x800008a0]:csrrs t5, vxsat, zero<br> [0x800008a4]:sw t6, 264(ra)<br>    |
|  62|[0x80002408]<br>0x01E27B3B|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                             |[0x800008b8]:KDMATT t6, t5, t4<br> [0x800008bc]:csrrs t5, vxsat, zero<br> [0x800008c0]:sw t6, 272(ra)<br>    |
|  63|[0x80002410]<br>0x01E27BB3|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                          |[0x800008d8]:KDMATT t6, t5, t4<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sw t6, 280(ra)<br>    |
|  64|[0x80002418]<br>0x01E1FBB3|- rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                           |[0x800008f8]:KDMATT t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 288(ra)<br>    |
|  65|[0x80002420]<br>0x01E177B3|- rs2_h0_val == -9<br>                                                                                                                                                                                                                                                                                                             |[0x80000918]:KDMATT t6, t5, t4<br> [0x8000091c]:csrrs t5, vxsat, zero<br> [0x80000920]:sw t6, 296(ra)<br>    |
|  66|[0x80002428]<br>0x01E177BD|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                             |[0x80000934]:KDMATT t6, t5, t4<br> [0x80000938]:csrrs t5, vxsat, zero<br> [0x8000093c]:sw t6, 304(ra)<br>    |
|  67|[0x80002430]<br>0x01E1773D|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                              |[0x80000954]:KDMATT t6, t5, t4<br> [0x80000958]:csrrs t5, vxsat, zero<br> [0x8000095c]:sw t6, 312(ra)<br>    |
|  68|[0x80002438]<br>0x01E97F3F|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                           |[0x80000974]:KDMATT t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 320(ra)<br>    |
|  69|[0x80002440]<br>0x073ECF3F|- rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                          |[0x80000994]:KDMATT t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 328(ra)<br>    |
|  70|[0x80002448]<br>0x073EFF3F|- rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                          |[0x800009b4]:KDMATT t6, t5, t4<br> [0x800009b8]:csrrs t5, vxsat, zero<br> [0x800009bc]:sw t6, 336(ra)<br>    |
|  71|[0x80002450]<br>0x0F3EDF3F|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                          |[0x800009d4]:KDMATT t6, t5, t4<br> [0x800009d8]:csrrs t5, vxsat, zero<br> [0x800009dc]:sw t6, 344(ra)<br>    |
|  72|[0x80002458]<br>0x0F3ACF3F|- rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                            |[0x800009f4]:KDMATT t6, t5, t4<br> [0x800009f8]:csrrs t5, vxsat, zero<br> [0x800009fc]:sw t6, 352(ra)<br>    |
|  73|[0x80002460]<br>0x0F3ACF3F|- rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                                           |[0x80000a14]:KDMATT t6, t5, t4<br> [0x80000a18]:csrrs t5, vxsat, zero<br> [0x80000a1c]:sw t6, 360(ra)<br>    |
|  74|[0x80002468]<br>0x0EE4CF95|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                           |[0x80000a34]:KDMATT t6, t5, t4<br> [0x80000a38]:csrrs t5, vxsat, zero<br> [0x80000a3c]:sw t6, 368(ra)<br>    |
|  75|[0x80002470]<br>0x0F24CF95|- rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                             |[0x80000a54]:KDMATT t6, t5, t4<br> [0x80000a58]:csrrs t5, vxsat, zero<br> [0x80000a5c]:sw t6, 376(ra)<br>    |
