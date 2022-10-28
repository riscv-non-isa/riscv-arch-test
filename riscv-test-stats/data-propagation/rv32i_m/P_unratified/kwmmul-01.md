
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000c90')]      |
| SIG_REGION                | [('0x80002210', '0x80002570', '216 words')]      |
| COV_LABELS                | kwmmul      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kwmmul-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 216      |
| STAT1                     | 105      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 108     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000870]:KWMMUL t6, t5, t4
      [0x80000874]:csrrs t5, vxsat, zero
      [0x80000878]:sw t6, 320(ra)
 -- Signature Address: 0x80002438 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kwmmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == -8193




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c44]:KWMMUL t6, t5, t4
      [0x80000c48]:csrrs t5, vxsat, zero
      [0x80000c4c]:sw t6, 608(ra)
 -- Signature Address: 0x80002558 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kwmmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -1048577
      - rs1_w0_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c74]:KWMMUL t6, t5, t4
      [0x80000c78]:csrrs t5, vxsat, zero
      [0x80000c7c]:sw t6, 624(ra)
 -- Signature Address: 0x80002568 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kwmmul
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -17
      - rs1_w0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kwmmul', 'rs1 : x22', 'rs2 : x22', 'rd : x22', 'rs1 == rs2 == rd', 'rs2_w0_val == -524289', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000118]:KWMMUL s6, s6, s6
	-[0x8000011c]:csrrs s6, vxsat, zero
	-[0x80000120]:sw s6, 0(s1)
Current Store : [0x80000124] : sw s6, 4(s1) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x13', 'rd : x3', 'rs1 == rs2 != rd', 'rs2_w0_val == -1431655766', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000134]:KWMMUL gp, a3, a3
	-[0x80000138]:csrrs a3, vxsat, zero
	-[0x8000013c]:sw gp, 8(s1)
Current Store : [0x80000140] : sw a3, 12(s1) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x24', 'rd : x26', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000150]:KWMMUL s10, ra, s8
	-[0x80000154]:csrrs ra, vxsat, zero
	-[0x80000158]:sw s10, 16(s1)
Current Store : [0x8000015c] : sw ra, 20(s1) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x27', 'rd : x27', 'rs2 == rd != rs1', 'rs2_w0_val == 2147483647', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x8000016c]:KWMMUL s11, s4, s11
	-[0x80000170]:csrrs s4, vxsat, zero
	-[0x80000174]:sw s11, 24(s1)
Current Store : [0x80000178] : sw s4, 28(s1) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x3', 'rd : x16', 'rs1 == rd != rs2', 'rs2_w0_val == -1073741825', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000188]:KWMMUL a6, a6, gp
	-[0x8000018c]:csrrs a6, vxsat, zero
	-[0x80000190]:sw a6, 32(s1)
Current Store : [0x80000194] : sw a6, 36(s1) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x1', 'rd : x28', 'rs2_w0_val == -536870913']
Last Code Sequence : 
	-[0x800001a8]:KWMMUL t3, s10, ra
	-[0x800001ac]:csrrs s10, vxsat, zero
	-[0x800001b0]:sw t3, 40(s1)
Current Store : [0x800001b4] : sw s10, 44(s1) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x4', 'rd : x24', 'rs2_w0_val == -268435457']
Last Code Sequence : 
	-[0x800001c8]:KWMMUL s8, t0, tp
	-[0x800001cc]:csrrs t0, vxsat, zero
	-[0x800001d0]:sw s8, 48(s1)
Current Store : [0x800001d4] : sw t0, 52(s1) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x8', 'rd : x5', 'rs2_w0_val == -134217729', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800001e4]:KWMMUL t0, s7, fp
	-[0x800001e8]:csrrs s7, vxsat, zero
	-[0x800001ec]:sw t0, 56(s1)
Current Store : [0x800001f0] : sw s7, 60(s1) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x25', 'rd : x17', 'rs2_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000200]:KWMMUL a7, a1, s9
	-[0x80000204]:csrrs a1, vxsat, zero
	-[0x80000208]:sw a7, 64(s1)
Current Store : [0x8000020c] : sw a1, 68(s1) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x14', 'rd : x13', 'rs2_w0_val == -33554433', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000220]:KWMMUL a3, t5, a4
	-[0x80000224]:csrrs t5, vxsat, zero
	-[0x80000228]:sw a3, 72(s1)
Current Store : [0x8000022c] : sw t5, 76(s1) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x7', 'rd : x20', 'rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000240]:KWMMUL s4, t6, t2
	-[0x80000244]:csrrs t6, vxsat, zero
	-[0x80000248]:sw s4, 80(s1)
Current Store : [0x8000024c] : sw t6, 84(s1) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x28', 'rd : x15', 'rs2_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000260]:KWMMUL a5, s5, t3
	-[0x80000264]:csrrs s5, vxsat, zero
	-[0x80000268]:sw a5, 88(s1)
Current Store : [0x8000026c] : sw s5, 92(s1) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x26', 'rd : x29', 'rs2_w0_val == -4194305', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x8000027c]:KWMMUL t4, a5, s10
	-[0x80000280]:csrrs a5, vxsat, zero
	-[0x80000284]:sw t4, 96(s1)
Current Store : [0x80000288] : sw a5, 100(s1) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x11', 'rd : x14', 'rs2_w0_val == -2097153', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000298]:KWMMUL a4, s9, a1
	-[0x8000029c]:csrrs s9, vxsat, zero
	-[0x800002a0]:sw a4, 104(s1)
Current Store : [0x800002a4] : sw s9, 108(s1) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x29', 'rd : x0', 'rs2_w0_val == -1048577', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800002b4]:KWMMUL zero, t1, t4
	-[0x800002b8]:csrrs t1, vxsat, zero
	-[0x800002bc]:sw zero, 112(s1)
Current Store : [0x800002c0] : sw t1, 116(s1) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x10', 'rd : x2', 'rs2_w0_val == -262145', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800002d0]:KWMMUL sp, s3, a0
	-[0x800002d4]:csrrs s3, vxsat, zero
	-[0x800002d8]:sw sp, 120(s1)
Current Store : [0x800002dc] : sw s3, 124(s1) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x20', 'rd : x19', 'rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x800002f8]:KWMMUL s3, s2, s4
	-[0x800002fc]:csrrs s2, vxsat, zero
	-[0x80000300]:sw s3, 0(a1)
Current Store : [0x80000304] : sw s2, 4(a1) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x19', 'rd : x4', 'rs2_w0_val == -65537', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000318]:KWMMUL tp, sp, s3
	-[0x8000031c]:csrrs sp, vxsat, zero
	-[0x80000320]:sw tp, 8(a1)
Current Store : [0x80000324] : sw sp, 12(a1) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x31', 'rd : x21', 'rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x80000334]:KWMMUL s5, a7, t6
	-[0x80000338]:csrrs a7, vxsat, zero
	-[0x8000033c]:sw s5, 16(a1)
Current Store : [0x80000340] : sw a7, 20(a1) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x18', 'rd : x23', 'rs2_w0_val == -16385', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000350]:KWMMUL s7, tp, s2
	-[0x80000354]:csrrs tp, vxsat, zero
	-[0x80000358]:sw s7, 24(a1)
Current Store : [0x8000035c] : sw tp, 28(a1) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x30', 'rd : x25', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x8000036c]:KWMMUL s9, t2, t5
	-[0x80000370]:csrrs t2, vxsat, zero
	-[0x80000374]:sw s9, 32(a1)
Current Store : [0x80000378] : sw t2, 36(a1) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x5', 'rd : x30', 'rs2_w0_val == -4097', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000388]:KWMMUL t5, a2, t0
	-[0x8000038c]:csrrs a2, vxsat, zero
	-[0x80000390]:sw t5, 40(a1)
Current Store : [0x80000394] : sw a2, 44(a1) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x12', 'rd : x1', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x800003a4]:KWMMUL ra, t4, a2
	-[0x800003a8]:csrrs t4, vxsat, zero
	-[0x800003ac]:sw ra, 48(a1)
Current Store : [0x800003b0] : sw t4, 52(a1) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x16', 'rd : x8', 'rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x800003bc]:KWMMUL fp, a4, a6
	-[0x800003c0]:csrrs a4, vxsat, zero
	-[0x800003c4]:sw fp, 56(a1)
Current Store : [0x800003c8] : sw a4, 60(a1) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x0', 'rd : x18', 'rs2_w0_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800003d4]:KWMMUL s2, fp, zero
	-[0x800003d8]:csrrs fp, vxsat, zero
	-[0x800003dc]:sw s2, 64(a1)
Current Store : [0x800003e0] : sw fp, 68(a1) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x21', 'rd : x10', 'rs2_w0_val == -257']
Last Code Sequence : 
	-[0x800003ec]:KWMMUL a0, gp, s5
	-[0x800003f0]:csrrs gp, vxsat, zero
	-[0x800003f4]:sw a0, 72(a1)
Current Store : [0x800003f8] : sw gp, 76(a1) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x6', 'rd : x9', 'rs2_w0_val == -129', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000404]:KWMMUL s1, t3, t1
	-[0x80000408]:csrrs t3, vxsat, zero
	-[0x8000040c]:sw s1, 80(a1)
Current Store : [0x80000410] : sw t3, 84(a1) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x17', 'rd : x31', 'rs2_w0_val == -65', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x8000041c]:KWMMUL t6, s11, a7
	-[0x80000420]:csrrs s11, vxsat, zero
	-[0x80000424]:sw t6, 88(a1)
Current Store : [0x80000428] : sw s11, 92(a1) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x15', 'rd : x7', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80000438]:KWMMUL t2, s8, a5
	-[0x8000043c]:csrrs s8, vxsat, zero
	-[0x80000440]:sw t2, 96(a1)
Current Store : [0x80000444] : sw s8, 100(a1) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x23', 'rd : x12', 'rs2_w0_val == -17']
Last Code Sequence : 
	-[0x80000458]:KWMMUL a2, zero, s7
	-[0x8000045c]:csrrs zero, vxsat, zero
	-[0x80000460]:sw a2, 0(ra)
Current Store : [0x80000464] : sw zero, 4(ra) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x2', 'rd : x6', 'rs2_w0_val == -9']
Last Code Sequence : 
	-[0x80000470]:KWMMUL t1, a0, sp
	-[0x80000474]:csrrs a0, vxsat, zero
	-[0x80000478]:sw t1, 8(ra)
Current Store : [0x8000047c] : sw a0, 12(ra) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2_w0_val == -5']
Last Code Sequence : 
	-[0x8000048c]:KWMMUL s11, s1, s8
	-[0x80000490]:csrrs s1, vxsat, zero
	-[0x80000494]:sw s11, 16(ra)
Current Store : [0x80000498] : sw s1, 20(ra) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2 : x9', 'rs2_w0_val == -3']
Last Code Sequence : 
	-[0x800004a8]:KWMMUL gp, s5, s1
	-[0x800004ac]:csrrs s5, vxsat, zero
	-[0x800004b0]:sw gp, 24(ra)
Current Store : [0x800004b4] : sw s5, 28(ra) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rd : x11', 'rs2_w0_val == -2', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800004c4]:KWMMUL a1, s6, a3
	-[0x800004c8]:csrrs s6, vxsat, zero
	-[0x800004cc]:sw a1, 32(ra)
Current Store : [0x800004d0] : sw s6, 36(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -2147483648', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800004e0]:KWMMUL t6, t5, t4
	-[0x800004e4]:csrrs t5, vxsat, zero
	-[0x800004e8]:sw t6, 40(ra)
Current Store : [0x800004ec] : sw t5, 44(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800004fc]:KWMMUL t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 48(ra)
Current Store : [0x80000508] : sw t5, 52(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000514]:KWMMUL t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 56(ra)
Current Store : [0x80000520] : sw t5, 60(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000530]:KWMMUL t6, t5, t4
	-[0x80000534]:csrrs t5, vxsat, zero
	-[0x80000538]:sw t6, 64(ra)
Current Store : [0x8000053c] : sw t5, 68(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x8000054c]:KWMMUL t6, t5, t4
	-[0x80000550]:csrrs t5, vxsat, zero
	-[0x80000554]:sw t6, 72(ra)
Current Store : [0x80000558] : sw t5, 76(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000564]:KWMMUL t6, t5, t4
	-[0x80000568]:csrrs t5, vxsat, zero
	-[0x8000056c]:sw t6, 80(ra)
Current Store : [0x80000570] : sw t5, 84(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x8000057c]:KWMMUL t6, t5, t4
	-[0x80000580]:csrrs t5, vxsat, zero
	-[0x80000584]:sw t6, 88(ra)
Current Store : [0x80000588] : sw t5, 92(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000594]:KWMMUL t6, t5, t4
	-[0x80000598]:csrrs t5, vxsat, zero
	-[0x8000059c]:sw t6, 96(ra)
Current Store : [0x800005a0] : sw t5, 100(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800005ac]:KWMMUL t6, t5, t4
	-[0x800005b0]:csrrs t5, vxsat, zero
	-[0x800005b4]:sw t6, 104(ra)
Current Store : [0x800005b8] : sw t5, 108(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800005c8]:KWMMUL t6, t5, t4
	-[0x800005cc]:csrrs t5, vxsat, zero
	-[0x800005d0]:sw t6, 112(ra)
Current Store : [0x800005d4] : sw t5, 116(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x800005e0]:KWMMUL t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 120(ra)
Current Store : [0x800005ec] : sw t5, 124(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800005fc]:KWMMUL t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 128(ra)
Current Store : [0x80000608] : sw t5, 132(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000614]:KWMMUL t6, t5, t4
	-[0x80000618]:csrrs t5, vxsat, zero
	-[0x8000061c]:sw t6, 136(ra)
Current Store : [0x80000620] : sw t5, 140(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000630]:KWMMUL t6, t5, t4
	-[0x80000634]:csrrs t5, vxsat, zero
	-[0x80000638]:sw t6, 144(ra)
Current Store : [0x8000063c] : sw t5, 148(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000648]:KWMMUL t6, t5, t4
	-[0x8000064c]:csrrs t5, vxsat, zero
	-[0x80000650]:sw t6, 152(ra)
Current Store : [0x80000654] : sw t5, 156(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000664]:KWMMUL t6, t5, t4
	-[0x80000668]:csrrs t5, vxsat, zero
	-[0x8000066c]:sw t6, 160(ra)
Current Store : [0x80000670] : sw t5, 164(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000680]:KWMMUL t6, t5, t4
	-[0x80000684]:csrrs t5, vxsat, zero
	-[0x80000688]:sw t6, 168(ra)
Current Store : [0x8000068c] : sw t5, 172(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000698]:KWMMUL t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 176(ra)
Current Store : [0x800006a4] : sw t5, 180(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800006b0]:KWMMUL t6, t5, t4
	-[0x800006b4]:csrrs t5, vxsat, zero
	-[0x800006b8]:sw t6, 184(ra)
Current Store : [0x800006bc] : sw t5, 188(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x800006c8]:KWMMUL t6, t5, t4
	-[0x800006cc]:csrrs t5, vxsat, zero
	-[0x800006d0]:sw t6, 192(ra)
Current Store : [0x800006d4] : sw t5, 196(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800006e0]:KWMMUL t6, t5, t4
	-[0x800006e4]:csrrs t5, vxsat, zero
	-[0x800006e8]:sw t6, 200(ra)
Current Store : [0x800006ec] : sw t5, 204(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x800006f8]:KWMMUL t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 208(ra)
Current Store : [0x80000704] : sw t5, 212(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000714]:KWMMUL t6, t5, t4
	-[0x80000718]:csrrs t5, vxsat, zero
	-[0x8000071c]:sw t6, 216(ra)
Current Store : [0x80000720] : sw t5, 220(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x8000072c]:KWMMUL t6, t5, t4
	-[0x80000730]:csrrs t5, vxsat, zero
	-[0x80000734]:sw t6, 224(ra)
Current Store : [0x80000738] : sw t5, 228(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2048', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x8000074c]:KWMMUL t6, t5, t4
	-[0x80000750]:csrrs t5, vxsat, zero
	-[0x80000754]:sw t6, 232(ra)
Current Store : [0x80000758] : sw t5, 236(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80000768]:KWMMUL t6, t5, t4
	-[0x8000076c]:csrrs t5, vxsat, zero
	-[0x80000770]:sw t6, 240(ra)
Current Store : [0x80000774] : sw t5, 244(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x80000784]:KWMMUL t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 248(ra)
Current Store : [0x80000790] : sw t5, 252(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x8000079c]:KWMMUL t6, t5, t4
	-[0x800007a0]:csrrs t5, vxsat, zero
	-[0x800007a4]:sw t6, 256(ra)
Current Store : [0x800007a8] : sw t5, 260(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x800007b8]:KWMMUL t6, t5, t4
	-[0x800007bc]:csrrs t5, vxsat, zero
	-[0x800007c0]:sw t6, 264(ra)
Current Store : [0x800007c4] : sw t5, 268(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x800007d4]:KWMMUL t6, t5, t4
	-[0x800007d8]:csrrs t5, vxsat, zero
	-[0x800007dc]:sw t6, 272(ra)
Current Store : [0x800007e0] : sw t5, 276(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800007ec]:KWMMUL t6, t5, t4
	-[0x800007f0]:csrrs t5, vxsat, zero
	-[0x800007f4]:sw t6, 280(ra)
Current Store : [0x800007f8] : sw t5, 284(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80000808]:KWMMUL t6, t5, t4
	-[0x8000080c]:csrrs t5, vxsat, zero
	-[0x80000810]:sw t6, 288(ra)
Current Store : [0x80000814] : sw t5, 292(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80000824]:KWMMUL t6, t5, t4
	-[0x80000828]:csrrs t5, vxsat, zero
	-[0x8000082c]:sw t6, 296(ra)
Current Store : [0x80000830] : sw t5, 300(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x8000083c]:KWMMUL t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 304(ra)
Current Store : [0x80000848] : sw t5, 308(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x80000854]:KWMMUL t6, t5, t4
	-[0x80000858]:csrrs t5, vxsat, zero
	-[0x8000085c]:sw t6, 312(ra)
Current Store : [0x80000860] : sw t5, 316(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['opcode : kwmmul', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 0', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000870]:KWMMUL t6, t5, t4
	-[0x80000874]:csrrs t5, vxsat, zero
	-[0x80000878]:sw t6, 320(ra)
Current Store : [0x8000087c] : sw t5, 324(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -1']
Last Code Sequence : 
	-[0x80000888]:KWMMUL t6, t5, t4
	-[0x8000088c]:csrrs t5, vxsat, zero
	-[0x80000890]:sw t6, 328(ra)
Current Store : [0x80000894] : sw t5, 332(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800008a4]:KWMMUL t6, t5, t4
	-[0x800008a8]:csrrs t5, vxsat, zero
	-[0x800008ac]:sw t6, 336(ra)
Current Store : [0x800008b0] : sw t5, 340(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800008c4]:KWMMUL t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 344(ra)
Current Store : [0x800008d0] : sw t5, 348(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800008e4]:KWMMUL t6, t5, t4
	-[0x800008e8]:csrrs t5, vxsat, zero
	-[0x800008ec]:sw t6, 352(ra)
Current Store : [0x800008f0] : sw t5, 356(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000900]:KWMMUL t6, t5, t4
	-[0x80000904]:csrrs t5, vxsat, zero
	-[0x80000908]:sw t6, 360(ra)
Current Store : [0x8000090c] : sw t5, 364(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x8000091c]:KWMMUL t6, t5, t4
	-[0x80000920]:csrrs t5, vxsat, zero
	-[0x80000924]:sw t6, 368(ra)
Current Store : [0x80000928] : sw t5, 372(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000938]:KWMMUL t6, t5, t4
	-[0x8000093c]:csrrs t5, vxsat, zero
	-[0x80000940]:sw t6, 376(ra)
Current Store : [0x80000944] : sw t5, 380(ra) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000954]:KWMMUL t6, t5, t4
	-[0x80000958]:csrrs t5, vxsat, zero
	-[0x8000095c]:sw t6, 384(ra)
Current Store : [0x80000960] : sw t5, 388(ra) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000974]:KWMMUL t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 392(ra)
Current Store : [0x80000980] : sw t5, 396(ra) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000990]:KWMMUL t6, t5, t4
	-[0x80000994]:csrrs t5, vxsat, zero
	-[0x80000998]:sw t6, 400(ra)
Current Store : [0x8000099c] : sw t5, 404(ra) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800009ac]:KWMMUL t6, t5, t4
	-[0x800009b0]:csrrs t5, vxsat, zero
	-[0x800009b4]:sw t6, 408(ra)
Current Store : [0x800009b8] : sw t5, 412(ra) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800009cc]:KWMMUL t6, t5, t4
	-[0x800009d0]:csrrs t5, vxsat, zero
	-[0x800009d4]:sw t6, 416(ra)
Current Store : [0x800009d8] : sw t5, 420(ra) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800009e8]:KWMMUL t6, t5, t4
	-[0x800009ec]:csrrs t5, vxsat, zero
	-[0x800009f0]:sw t6, 424(ra)
Current Store : [0x800009f4] : sw t5, 428(ra) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000a04]:KWMMUL t6, t5, t4
	-[0x80000a08]:csrrs t5, vxsat, zero
	-[0x80000a0c]:sw t6, 432(ra)
Current Store : [0x80000a10] : sw t5, 436(ra) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000a20]:KWMMUL t6, t5, t4
	-[0x80000a24]:csrrs t5, vxsat, zero
	-[0x80000a28]:sw t6, 440(ra)
Current Store : [0x80000a2c] : sw t5, 444(ra) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000a38]:KWMMUL t6, t5, t4
	-[0x80000a3c]:csrrs t5, vxsat, zero
	-[0x80000a40]:sw t6, 448(ra)
Current Store : [0x80000a44] : sw t5, 452(ra) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000a54]:KWMMUL t6, t5, t4
	-[0x80000a58]:csrrs t5, vxsat, zero
	-[0x80000a5c]:sw t6, 456(ra)
Current Store : [0x80000a60] : sw t5, 460(ra) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000a6c]:KWMMUL t6, t5, t4
	-[0x80000a70]:csrrs t5, vxsat, zero
	-[0x80000a74]:sw t6, 464(ra)
Current Store : [0x80000a78] : sw t5, 468(ra) -- Store: [0x800024cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000a88]:KWMMUL t6, t5, t4
	-[0x80000a8c]:csrrs t5, vxsat, zero
	-[0x80000a90]:sw t6, 472(ra)
Current Store : [0x80000a94] : sw t5, 476(ra) -- Store: [0x800024d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000aa4]:KWMMUL t6, t5, t4
	-[0x80000aa8]:csrrs t5, vxsat, zero
	-[0x80000aac]:sw t6, 480(ra)
Current Store : [0x80000ab0] : sw t5, 484(ra) -- Store: [0x800024dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000abc]:KWMMUL t6, t5, t4
	-[0x80000ac0]:csrrs t5, vxsat, zero
	-[0x80000ac4]:sw t6, 488(ra)
Current Store : [0x80000ac8] : sw t5, 492(ra) -- Store: [0x800024e4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000ad4]:KWMMUL t6, t5, t4
	-[0x80000ad8]:csrrs t5, vxsat, zero
	-[0x80000adc]:sw t6, 496(ra)
Current Store : [0x80000ae0] : sw t5, 500(ra) -- Store: [0x800024ec]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000af0]:KWMMUL t6, t5, t4
	-[0x80000af4]:csrrs t5, vxsat, zero
	-[0x80000af8]:sw t6, 504(ra)
Current Store : [0x80000afc] : sw t5, 508(ra) -- Store: [0x800024f4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000b08]:KWMMUL t6, t5, t4
	-[0x80000b0c]:csrrs t5, vxsat, zero
	-[0x80000b10]:sw t6, 512(ra)
Current Store : [0x80000b14] : sw t5, 516(ra) -- Store: [0x800024fc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b20]:KWMMUL t6, t5, t4
	-[0x80000b24]:csrrs t5, vxsat, zero
	-[0x80000b28]:sw t6, 520(ra)
Current Store : [0x80000b2c] : sw t5, 524(ra) -- Store: [0x80002504]:0x00000000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000b38]:KWMMUL t6, t5, t4
	-[0x80000b3c]:csrrs t5, vxsat, zero
	-[0x80000b40]:sw t6, 528(ra)
Current Store : [0x80000b44] : sw t5, 532(ra) -- Store: [0x8000250c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000b54]:KWMMUL t6, t5, t4
	-[0x80000b58]:csrrs t5, vxsat, zero
	-[0x80000b5c]:sw t6, 536(ra)
Current Store : [0x80000b60] : sw t5, 540(ra) -- Store: [0x80002514]:0x00000000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000b6c]:KWMMUL t6, t5, t4
	-[0x80000b70]:csrrs t5, vxsat, zero
	-[0x80000b74]:sw t6, 544(ra)
Current Store : [0x80000b78] : sw t5, 548(ra) -- Store: [0x8000251c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000b84]:KWMMUL t6, t5, t4
	-[0x80000b88]:csrrs t5, vxsat, zero
	-[0x80000b8c]:sw t6, 552(ra)
Current Store : [0x80000b90] : sw t5, 556(ra) -- Store: [0x80002524]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000ba0]:KWMMUL t6, t5, t4
	-[0x80000ba4]:csrrs t5, vxsat, zero
	-[0x80000ba8]:sw t6, 560(ra)
Current Store : [0x80000bac] : sw t5, 564(ra) -- Store: [0x8000252c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000bbc]:KWMMUL t6, t5, t4
	-[0x80000bc0]:csrrs t5, vxsat, zero
	-[0x80000bc4]:sw t6, 568(ra)
Current Store : [0x80000bc8] : sw t5, 572(ra) -- Store: [0x80002534]:0x00000000




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000bd8]:KWMMUL t6, t5, t4
	-[0x80000bdc]:csrrs t5, vxsat, zero
	-[0x80000be0]:sw t6, 576(ra)
Current Store : [0x80000be4] : sw t5, 580(ra) -- Store: [0x8000253c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000bf0]:KWMMUL t6, t5, t4
	-[0x80000bf4]:csrrs t5, vxsat, zero
	-[0x80000bf8]:sw t6, 584(ra)
Current Store : [0x80000bfc] : sw t5, 588(ra) -- Store: [0x80002544]:0x00000000




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000c0c]:KWMMUL t6, t5, t4
	-[0x80000c10]:csrrs t5, vxsat, zero
	-[0x80000c14]:sw t6, 592(ra)
Current Store : [0x80000c18] : sw t5, 596(ra) -- Store: [0x8000254c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000c28]:KWMMUL t6, t5, t4
	-[0x80000c2c]:csrrs t5, vxsat, zero
	-[0x80000c30]:sw t6, 600(ra)
Current Store : [0x80000c34] : sw t5, 604(ra) -- Store: [0x80002554]:0x00000000




Last Coverpoint : ['opcode : kwmmul', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == -1048577', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000c44]:KWMMUL t6, t5, t4
	-[0x80000c48]:csrrs t5, vxsat, zero
	-[0x80000c4c]:sw t6, 608(ra)
Current Store : [0x80000c50] : sw t5, 612(ra) -- Store: [0x8000255c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -513']
Last Code Sequence : 
	-[0x80000c5c]:KWMMUL t6, t5, t4
	-[0x80000c60]:csrrs t5, vxsat, zero
	-[0x80000c64]:sw t6, 616(ra)
Current Store : [0x80000c68] : sw t5, 620(ra) -- Store: [0x80002564]:0x00000000




Last Coverpoint : ['opcode : kwmmul', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == -17', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000c74]:KWMMUL t6, t5, t4
	-[0x80000c78]:csrrs t5, vxsat, zero
	-[0x80000c7c]:sw t6, 624(ra)
Current Store : [0x80000c80] : sw t5, 628(ra) -- Store: [0x8000256c]:0x00000000





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

|s.no|        signature         |                                                                    coverpoints                                                                     |                                                     code                                                     |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kwmmul<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs2_w0_val == -524289<br> - rs1_w0_val == -524289<br> |[0x80000118]:KWMMUL s6, s6, s6<br> [0x8000011c]:csrrs s6, vxsat, zero<br> [0x80000120]:sw s6, 0(s1)<br>       |
|   2|[0x80002218]<br>0x38E38E39|- rs1 : x13<br> - rs2 : x13<br> - rd : x3<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>                |[0x80000134]:KWMMUL gp, a3, a3<br> [0x80000138]:csrrs a3, vxsat, zero<br> [0x8000013c]:sw gp, 8(s1)<br>       |
|   3|[0x80002220]<br>0x00000155|- rs1 : x1<br> - rs2 : x24<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 512<br>  |[0x80000150]:KWMMUL s10, ra, s8<br> [0x80000154]:csrrs ra, vxsat, zero<br> [0x80000158]:sw s10, 16(s1)<br>    |
|   4|[0x80002228]<br>0xFFFFFEFF|- rs1 : x20<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == -257<br>                       |[0x8000016c]:KWMMUL s11, s4, s11<br> [0x80000170]:csrrs s4, vxsat, zero<br> [0x80000174]:sw s11, 24(s1)<br>   |
|   5|[0x80002230]<br>0x00000000|- rs1 : x16<br> - rs2 : x3<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == -33<br>                        |[0x80000188]:KWMMUL a6, a6, gp<br> [0x8000018c]:csrrs a6, vxsat, zero<br> [0x80000190]:sw a6, 32(s1)<br>      |
|   6|[0x80002238]<br>0x00002D40|- rs1 : x26<br> - rs2 : x1<br> - rd : x28<br> - rs2_w0_val == -536870913<br>                                                                        |[0x800001a8]:KWMMUL t3, s10, ra<br> [0x800001ac]:csrrs s10, vxsat, zero<br> [0x800001b0]:sw t3, 40(s1)<br>    |
|   7|[0x80002240]<br>0xF3333332|- rs1 : x5<br> - rs2 : x4<br> - rd : x24<br> - rs2_w0_val == -268435457<br>                                                                         |[0x800001c8]:KWMMUL s8, t0, tp<br> [0x800001cc]:csrrs t0, vxsat, zero<br> [0x800001d0]:sw s8, 48(s1)<br>      |
|   8|[0x80002248]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x8<br> - rd : x5<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == 8<br>                                                   |[0x800001e4]:KWMMUL t0, s7, fp<br> [0x800001e8]:csrrs s7, vxsat, zero<br> [0x800001ec]:sw t0, 56(s1)<br>      |
|   9|[0x80002250]<br>0x00000000|- rs1 : x11<br> - rs2 : x25<br> - rd : x17<br> - rs2_w0_val == -67108865<br>                                                                        |[0x80000200]:KWMMUL a7, a1, s9<br> [0x80000204]:csrrs a1, vxsat, zero<br> [0x80000208]:sw a7, 64(s1)<br>      |
|  10|[0x80002258]<br>0xFEAAAAAA|- rs1 : x30<br> - rs2 : x14<br> - rd : x13<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == 1431655765<br>                                         |[0x80000220]:KWMMUL a3, t5, a4<br> [0x80000224]:csrrs t5, vxsat, zero<br> [0x80000228]:sw a3, 72(s1)<br>      |
|  11|[0x80002260]<br>0x0000016A|- rs1 : x31<br> - rs2 : x7<br> - rd : x20<br> - rs2_w0_val == -16777217<br>                                                                         |[0x80000240]:KWMMUL s4, t6, t2<br> [0x80000244]:csrrs t6, vxsat, zero<br> [0x80000248]:sw s4, 80(s1)<br>      |
|  12|[0x80002268]<br>0x00555556|- rs1 : x21<br> - rs2 : x28<br> - rd : x15<br> - rs2_w0_val == -8388609<br>                                                                         |[0x80000260]:KWMMUL a5, s5, t3<br> [0x80000264]:csrrs s5, vxsat, zero<br> [0x80000268]:sw a5, 88(s1)<br>      |
|  13|[0x80002270]<br>0xFFFFFFFF|- rs1 : x15<br> - rs2 : x26<br> - rd : x29<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == 4<br>                                                   |[0x8000027c]:KWMMUL t4, a5, s10<br> [0x80000280]:csrrs a5, vxsat, zero<br> [0x80000284]:sw t4, 96(s1)<br>     |
|  14|[0x80002278]<br>0x00000000|- rs1 : x25<br> - rs2 : x11<br> - rd : x14<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == -5<br>                                                  |[0x80000298]:KWMMUL a4, s9, a1<br> [0x8000029c]:csrrs s9, vxsat, zero<br> [0x800002a0]:sw a4, 104(s1)<br>     |
|  15|[0x80002280]<br>0x00000000|- rs1 : x6<br> - rs2 : x29<br> - rd : x0<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == -17<br>                                                   |[0x800002b4]:KWMMUL zero, t1, t4<br> [0x800002b8]:csrrs t1, vxsat, zero<br> [0x800002bc]:sw zero, 112(s1)<br> |
|  16|[0x80002288]<br>0xFFFFFFFE|- rs1 : x19<br> - rs2 : x10<br> - rd : x2<br> - rs2_w0_val == -262145<br> - rs1_w0_val == 8192<br>                                                  |[0x800002d0]:KWMMUL sp, s3, a0<br> [0x800002d4]:csrrs s3, vxsat, zero<br> [0x800002d8]:sw sp, 120(s1)<br>     |
|  17|[0x80002290]<br>0xFFFEAAA9|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_w0_val == -131073<br>                                                                          |[0x800002f8]:KWMMUL s3, s2, s4<br> [0x800002fc]:csrrs s2, vxsat, zero<br> [0x80000300]:sw s3, 0(a1)<br>       |
|  18|[0x80002298]<br>0x00000400|- rs1 : x2<br> - rs2 : x19<br> - rd : x4<br> - rs2_w0_val == -65537<br> - rs1_w0_val == -33554433<br>                                               |[0x80000318]:KWMMUL tp, sp, s3<br> [0x8000031c]:csrrs sp, vxsat, zero<br> [0x80000320]:sw tp, 8(a1)<br>       |
|  19|[0x800022a0]<br>0x00004000|- rs1 : x17<br> - rs2 : x31<br> - rd : x21<br> - rs2_w0_val == -32769<br>                                                                           |[0x80000334]:KWMMUL s5, a7, t6<br> [0x80000338]:csrrs a7, vxsat, zero<br> [0x8000033c]:sw s5, 16(a1)<br>      |
|  20|[0x800022a8]<br>0x00000000|- rs1 : x4<br> - rs2 : x18<br> - rd : x23<br> - rs2_w0_val == -16385<br> - rs1_w0_val == -3<br>                                                     |[0x80000350]:KWMMUL s7, tp, s2<br> [0x80000354]:csrrs tp, vxsat, zero<br> [0x80000358]:sw s7, 24(a1)<br>      |
|  21|[0x800022b0]<br>0x00000000|- rs1 : x7<br> - rs2 : x30<br> - rd : x25<br> - rs2_w0_val == -8193<br>                                                                             |[0x8000036c]:KWMMUL s9, t2, t5<br> [0x80000370]:csrrs t2, vxsat, zero<br> [0x80000374]:sw s9, 32(a1)<br>      |
|  22|[0x800022b8]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x5<br> - rd : x30<br> - rs2_w0_val == -4097<br> - rs1_w0_val == 16384<br>                                                   |[0x80000388]:KWMMUL t5, a2, t0<br> [0x8000038c]:csrrs a2, vxsat, zero<br> [0x80000390]:sw t5, 40(a1)<br>      |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x29<br> - rs2 : x12<br> - rd : x1<br> - rs2_w0_val == -2049<br>                                                                             |[0x800003a4]:KWMMUL ra, t4, a2<br> [0x800003a8]:csrrs t4, vxsat, zero<br> [0x800003ac]:sw ra, 48(a1)<br>      |
|  24|[0x800022c8]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x16<br> - rd : x8<br> - rs2_w0_val == -1025<br>                                                                             |[0x800003bc]:KWMMUL fp, a4, a6<br> [0x800003c0]:csrrs a4, vxsat, zero<br> [0x800003c4]:sw fp, 56(a1)<br>      |
|  25|[0x800022d0]<br>0x00000000|- rs1 : x8<br> - rs2 : x0<br> - rd : x18<br> - rs2_w0_val == 0<br> - rs1_w0_val == 0<br>                                                            |[0x800003d4]:KWMMUL s2, fp, zero<br> [0x800003d8]:csrrs fp, vxsat, zero<br> [0x800003dc]:sw s2, 64(a1)<br>    |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x3<br> - rs2 : x21<br> - rd : x10<br> - rs2_w0_val == -257<br>                                                                              |[0x800003ec]:KWMMUL a0, gp, s5<br> [0x800003f0]:csrrs gp, vxsat, zero<br> [0x800003f4]:sw a0, 72(a1)<br>      |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x28<br> - rs2 : x6<br> - rd : x9<br> - rs2_w0_val == -129<br> - rs1_w0_val == -9<br>                                                        |[0x80000404]:KWMMUL s1, t3, t1<br> [0x80000408]:csrrs t3, vxsat, zero<br> [0x8000040c]:sw s1, 80(a1)<br>      |
|  28|[0x800022e8]<br>0xFFFFFFFF|- rs1 : x27<br> - rs2 : x17<br> - rd : x31<br> - rs2_w0_val == -65<br> - rs1_w0_val == 1024<br>                                                     |[0x8000041c]:KWMMUL t6, s11, a7<br> [0x80000420]:csrrs s11, vxsat, zero<br> [0x80000424]:sw t6, 88(a1)<br>    |
|  29|[0x800022f0]<br>0xFFFFFFF2|- rs1 : x24<br> - rs2 : x15<br> - rd : x7<br> - rs2_w0_val == -33<br>                                                                               |[0x80000438]:KWMMUL t2, s8, a5<br> [0x8000043c]:csrrs s8, vxsat, zero<br> [0x80000440]:sw t2, 96(a1)<br>      |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x0<br> - rs2 : x23<br> - rd : x12<br> - rs2_w0_val == -17<br>                                                                               |[0x80000458]:KWMMUL a2, zero, s7<br> [0x8000045c]:csrrs zero, vxsat, zero<br> [0x80000460]:sw a2, 0(ra)<br>   |
|  31|[0x80002300]<br>0x00000000|- rs1 : x10<br> - rs2 : x2<br> - rd : x6<br> - rs2_w0_val == -9<br>                                                                                 |[0x80000470]:KWMMUL t1, a0, sp<br> [0x80000474]:csrrs a0, vxsat, zero<br> [0x80000478]:sw t1, 8(ra)<br>       |
|  32|[0x80002308]<br>0x00000000|- rs1 : x9<br> - rs2_w0_val == -5<br>                                                                                                               |[0x8000048c]:KWMMUL s11, s1, s8<br> [0x80000490]:csrrs s1, vxsat, zero<br> [0x80000494]:sw s11, 16(ra)<br>    |
|  33|[0x80002310]<br>0x00000000|- rs2 : x9<br> - rs2_w0_val == -3<br>                                                                                                               |[0x800004a8]:KWMMUL gp, s5, s1<br> [0x800004ac]:csrrs s5, vxsat, zero<br> [0x800004b0]:sw gp, 24(ra)<br>      |
|  34|[0x80002318]<br>0x00000000|- rd : x11<br> - rs2_w0_val == -2<br> - rs1_w0_val == -8193<br>                                                                                     |[0x800004c4]:KWMMUL a1, s6, a3<br> [0x800004c8]:csrrs s6, vxsat, zero<br> [0x800004cc]:sw a1, 32(ra)<br>      |
|  35|[0x80002320]<br>0x00800001|- rs2_w0_val == -2147483648<br> - rs1_w0_val == -8388609<br>                                                                                        |[0x800004e0]:KWMMUL t6, t5, t4<br> [0x800004e4]:csrrs t5, vxsat, zero<br> [0x800004e8]:sw t6, 40(ra)<br>      |
|  36|[0x80002328]<br>0xFFF7FFFF|- rs2_w0_val == 1073741824<br> - rs1_w0_val == -1048577<br>                                                                                         |[0x800004fc]:KWMMUL t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 48(ra)<br>      |
|  37|[0x80002330]<br>0xFFFFFFFE|- rs2_w0_val == 536870912<br>                                                                                                                       |[0x80000514]:KWMMUL t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 56(ra)<br>      |
|  38|[0x80002338]<br>0x000016A0|- rs2_w0_val == 268435456<br>                                                                                                                       |[0x80000530]:KWMMUL t6, t5, t4<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 64(ra)<br>      |
|  39|[0x80002340]<br>0x00000B50|- rs2_w0_val == 134217728<br>                                                                                                                       |[0x8000054c]:KWMMUL t6, t5, t4<br> [0x80000550]:csrrs t5, vxsat, zero<br> [0x80000554]:sw t6, 72(ra)<br>      |
|  40|[0x80002348]<br>0xFFFFFFFE|- rs2_w0_val == 67108864<br>                                                                                                                        |[0x80000564]:KWMMUL t6, t5, t4<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 80(ra)<br>      |
|  41|[0x80002350]<br>0x00100000|- rs2_w0_val == 33554432<br> - rs1_w0_val == 67108864<br>                                                                                           |[0x8000057c]:KWMMUL t6, t5, t4<br> [0x80000580]:csrrs t5, vxsat, zero<br> [0x80000584]:sw t6, 88(ra)<br>      |
|  42|[0x80002358]<br>0x00000000|- rs2_w0_val == 16777216<br>                                                                                                                        |[0x80000594]:KWMMUL t6, t5, t4<br> [0x80000598]:csrrs t5, vxsat, zero<br> [0x8000059c]:sw t6, 96(ra)<br>      |
|  43|[0x80002360]<br>0x00000000|- rs2_w0_val == 8388608<br>                                                                                                                         |[0x800005ac]:KWMMUL t6, t5, t4<br> [0x800005b0]:csrrs t5, vxsat, zero<br> [0x800005b4]:sw t6, 104(ra)<br>     |
|  44|[0x80002368]<br>0xFFFFFBFF|- rs2_w0_val == 4194304<br>                                                                                                                         |[0x800005c8]:KWMMUL t6, t5, t4<br> [0x800005cc]:csrrs t5, vxsat, zero<br> [0x800005d0]:sw t6, 112(ra)<br>     |
|  45|[0x80002370]<br>0x00000001|- rs2_w0_val == 2097152<br>                                                                                                                         |[0x800005e0]:KWMMUL t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 120(ra)<br>     |
|  46|[0x80002378]<br>0xFFFFFFBF|- rs2_w0_val == 1048576<br> - rs1_w0_val == -131073<br>                                                                                             |[0x800005fc]:KWMMUL t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 128(ra)<br>     |
|  47|[0x80002380]<br>0xFFFFFFFF|- rs2_w0_val == 524288<br> - rs1_w0_val == -1<br>                                                                                                   |[0x80000614]:KWMMUL t6, t5, t4<br> [0x80000618]:csrrs t5, vxsat, zero<br> [0x8000061c]:sw t6, 136(ra)<br>     |
|  48|[0x80002388]<br>0xFFFDFFFF|- rs2_w0_val == 262144<br> - rs1_w0_val == -1073741825<br>                                                                                          |[0x80000630]:KWMMUL t6, t5, t4<br> [0x80000634]:csrrs t5, vxsat, zero<br> [0x80000638]:sw t6, 144(ra)<br>     |
|  49|[0x80002390]<br>0x00010000|- rs2_w0_val == 131072<br> - rs1_w0_val == 1073741824<br>                                                                                           |[0x80000648]:KWMMUL t6, t5, t4<br> [0x8000064c]:csrrs t5, vxsat, zero<br> [0x80000650]:sw t6, 152(ra)<br>     |
|  50|[0x80002398]<br>0xFFFFFFEA|- rs1_w0_val == 32<br>                                                                                                                              |[0x80000664]:KWMMUL t6, t5, t4<br> [0x80000668]:csrrs t5, vxsat, zero<br> [0x8000066c]:sw t6, 160(ra)<br>     |
|  51|[0x800023a0]<br>0xFFFFFFFF|- rs1_w0_val == 16<br>                                                                                                                              |[0x80000680]:KWMMUL t6, t5, t4<br> [0x80000684]:csrrs t5, vxsat, zero<br> [0x80000688]:sw t6, 168(ra)<br>     |
|  52|[0x800023a8]<br>0xFFFFFFFF|- rs1_w0_val == 2<br>                                                                                                                               |[0x80000698]:KWMMUL t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 176(ra)<br>     |
|  53|[0x800023b0]<br>0x00000000|- rs2_w0_val == 2<br> - rs1_w0_val == 1<br>                                                                                                         |[0x800006b0]:KWMMUL t6, t5, t4<br> [0x800006b4]:csrrs t5, vxsat, zero<br> [0x800006b8]:sw t6, 184(ra)<br>     |
|  54|[0x800023b8]<br>0x00000800|- rs2_w0_val == 65536<br>                                                                                                                           |[0x800006c8]:KWMMUL t6, t5, t4<br> [0x800006cc]:csrrs t5, vxsat, zero<br> [0x800006d0]:sw t6, 192(ra)<br>     |
|  55|[0x800023c0]<br>0xFFFFFFFF|- rs2_w0_val == 32768<br> - rs1_w0_val == -129<br>                                                                                                  |[0x800006e0]:KWMMUL t6, t5, t4<br> [0x800006e4]:csrrs t5, vxsat, zero<br> [0x800006e8]:sw t6, 200(ra)<br>     |
|  56|[0x800023c8]<br>0x00000000|- rs2_w0_val == 16384<br>                                                                                                                           |[0x800006f8]:KWMMUL t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 208(ra)<br>     |
|  57|[0x800023d0]<br>0x00001FFF|- rs2_w0_val == 8192<br> - rs1_w0_val == 2147483647<br>                                                                                             |[0x80000714]:KWMMUL t6, t5, t4<br> [0x80000718]:csrrs t5, vxsat, zero<br> [0x8000071c]:sw t6, 216(ra)<br>     |
|  58|[0x800023d8]<br>0x00000400|- rs2_w0_val == 4096<br> - rs1_w0_val == 536870912<br>                                                                                              |[0x8000072c]:KWMMUL t6, t5, t4<br> [0x80000730]:csrrs t5, vxsat, zero<br> [0x80000734]:sw t6, 224(ra)<br>     |
|  59|[0x800023e0]<br>0xFFFFFEFF|- rs2_w0_val == 2048<br> - rs1_w0_val == -268435457<br>                                                                                             |[0x8000074c]:KWMMUL t6, t5, t4<br> [0x80000750]:csrrs t5, vxsat, zero<br> [0x80000754]:sw t6, 232(ra)<br>     |
|  60|[0x800023e8]<br>0xFFFFFFFF|- rs2_w0_val == 1024<br>                                                                                                                            |[0x80000768]:KWMMUL t6, t5, t4<br> [0x8000076c]:csrrs t5, vxsat, zero<br> [0x80000770]:sw t6, 240(ra)<br>     |
|  61|[0x800023f0]<br>0x00000199|- rs2_w0_val == 512<br>                                                                                                                             |[0x80000784]:KWMMUL t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 248(ra)<br>     |
|  62|[0x800023f8]<br>0x00000000|- rs2_w0_val == 256<br>                                                                                                                             |[0x8000079c]:KWMMUL t6, t5, t4<br> [0x800007a0]:csrrs t5, vxsat, zero<br> [0x800007a4]:sw t6, 256(ra)<br>     |
|  63|[0x80002400]<br>0xFFFFFFFF|- rs2_w0_val == 128<br>                                                                                                                             |[0x800007b8]:KWMMUL t6, t5, t4<br> [0x800007bc]:csrrs t5, vxsat, zero<br> [0x800007c0]:sw t6, 264(ra)<br>     |
|  64|[0x80002408]<br>0xFFFFFFFF|- rs2_w0_val == 64<br>                                                                                                                              |[0x800007d4]:KWMMUL t6, t5, t4<br> [0x800007d8]:csrrs t5, vxsat, zero<br> [0x800007dc]:sw t6, 272(ra)<br>     |
|  65|[0x80002410]<br>0x00000000|- rs2_w0_val == 32<br> - rs1_w0_val == 4194304<br>                                                                                                  |[0x800007ec]:KWMMUL t6, t5, t4<br> [0x800007f0]:csrrs t5, vxsat, zero<br> [0x800007f4]:sw t6, 280(ra)<br>     |
|  66|[0x80002418]<br>0x00000000|- rs2_w0_val == 16<br>                                                                                                                              |[0x80000808]:KWMMUL t6, t5, t4<br> [0x8000080c]:csrrs t5, vxsat, zero<br> [0x80000810]:sw t6, 288(ra)<br>     |
|  67|[0x80002420]<br>0x00000007|- rs2_w0_val == 8<br>                                                                                                                               |[0x80000824]:KWMMUL t6, t5, t4<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sw t6, 296(ra)<br>     |
|  68|[0x80002428]<br>0x00000000|- rs2_w0_val == 4<br>                                                                                                                               |[0x8000083c]:KWMMUL t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 304(ra)<br>     |
|  69|[0x80002430]<br>0x00000000|- rs2_w0_val == 1<br>                                                                                                                               |[0x80000854]:KWMMUL t6, t5, t4<br> [0x80000858]:csrrs t5, vxsat, zero<br> [0x8000085c]:sw t6, 312(ra)<br>     |
|  70|[0x80002440]<br>0xFFFFFFFF|- rs2_w0_val == -1<br>                                                                                                                              |[0x80000888]:KWMMUL t6, t5, t4<br> [0x8000088c]:csrrs t5, vxsat, zero<br> [0x80000890]:sw t6, 328(ra)<br>     |
|  71|[0x80002448]<br>0xFEFFFFFF|- rs1_w0_val == -536870913<br>                                                                                                                      |[0x800008a4]:KWMMUL t6, t5, t4<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sw t6, 336(ra)<br>     |
|  72|[0x80002450]<br>0xFCCCCCCC|- rs1_w0_val == -134217729<br>                                                                                                                      |[0x800008c4]:KWMMUL t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 344(ra)<br>     |
|  73|[0x80002458]<br>0x00000100|- rs1_w0_val == -67108865<br>                                                                                                                       |[0x800008e4]:KWMMUL t6, t5, t4<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sw t6, 352(ra)<br>     |
|  74|[0x80002460]<br>0xFFFFFFFF|- rs1_w0_val == -16777217<br>                                                                                                                       |[0x80000900]:KWMMUL t6, t5, t4<br> [0x80000904]:csrrs t5, vxsat, zero<br> [0x80000908]:sw t6, 360(ra)<br>     |
|  75|[0x80002468]<br>0xFFFFFEFF|- rs1_w0_val == -4194305<br>                                                                                                                        |[0x8000091c]:KWMMUL t6, t5, t4<br> [0x80000920]:csrrs t5, vxsat, zero<br> [0x80000924]:sw t6, 368(ra)<br>     |
|  76|[0x80002470]<br>0xFFFFFFFF|- rs1_w0_val == -2097153<br>                                                                                                                        |[0x80000938]:KWMMUL t6, t5, t4<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sw t6, 376(ra)<br>     |
|  77|[0x80002478]<br>0xFFFFFFFF|- rs1_w0_val == -262145<br>                                                                                                                         |[0x80000954]:KWMMUL t6, t5, t4<br> [0x80000958]:csrrs t5, vxsat, zero<br> [0x8000095c]:sw t6, 384(ra)<br>     |
|  78|[0x80002480]<br>0xFFFFFFFE|- rs1_w0_val == -65537<br>                                                                                                                          |[0x80000974]:KWMMUL t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 392(ra)<br>     |
|  79|[0x80002488]<br>0x00000000|- rs1_w0_val == -32769<br>                                                                                                                          |[0x80000990]:KWMMUL t6, t5, t4<br> [0x80000994]:csrrs t5, vxsat, zero<br> [0x80000998]:sw t6, 400(ra)<br>     |
|  80|[0x80002490]<br>0xFFFFFFFF|- rs1_w0_val == -16385<br>                                                                                                                          |[0x800009ac]:KWMMUL t6, t5, t4<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sw t6, 408(ra)<br>     |
|  81|[0x80002498]<br>0x00000008|- rs1_w0_val == -4097<br>                                                                                                                           |[0x800009cc]:KWMMUL t6, t5, t4<br> [0x800009d0]:csrrs t5, vxsat, zero<br> [0x800009d4]:sw t6, 416(ra)<br>     |
|  82|[0x800024a0]<br>0xFFFFFFFF|- rs1_w0_val == -2049<br>                                                                                                                           |[0x800009e8]:KWMMUL t6, t5, t4<br> [0x800009ec]:csrrs t5, vxsat, zero<br> [0x800009f0]:sw t6, 424(ra)<br>     |
|  83|[0x800024a8]<br>0x00000020|- rs1_w0_val == -1025<br>                                                                                                                           |[0x80000a04]:KWMMUL t6, t5, t4<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sw t6, 432(ra)<br>     |
|  84|[0x800024b0]<br>0x00000000|- rs1_w0_val == -513<br>                                                                                                                            |[0x80000a20]:KWMMUL t6, t5, t4<br> [0x80000a24]:csrrs t5, vxsat, zero<br> [0x80000a28]:sw t6, 440(ra)<br>     |
|  85|[0x800024b8]<br>0x00000000|- rs1_w0_val == -65<br>                                                                                                                             |[0x80000a38]:KWMMUL t6, t5, t4<br> [0x80000a3c]:csrrs t5, vxsat, zero<br> [0x80000a40]:sw t6, 448(ra)<br>     |
|  86|[0x800024c0]<br>0xFFFFFFFF|- rs1_w0_val == -2<br>                                                                                                                              |[0x80000a54]:KWMMUL t6, t5, t4<br> [0x80000a58]:csrrs t5, vxsat, zero<br> [0x80000a5c]:sw t6, 456(ra)<br>     |
|  87|[0x800024c8]<br>0x00001000|- rs1_w0_val == 268435456<br>                                                                                                                       |[0x80000a6c]:KWMMUL t6, t5, t4<br> [0x80000a70]:csrrs t5, vxsat, zero<br> [0x80000a74]:sw t6, 464(ra)<br>     |
|  88|[0x800024d0]<br>0xFFFFEFFF|- rs1_w0_val == 134217728<br>                                                                                                                       |[0x80000a88]:KWMMUL t6, t5, t4<br> [0x80000a8c]:csrrs t5, vxsat, zero<br> [0x80000a90]:sw t6, 472(ra)<br>     |
|  89|[0x800024d8]<br>0xFFFFFBFF|- rs1_w0_val == 33554432<br>                                                                                                                        |[0x80000aa4]:KWMMUL t6, t5, t4<br> [0x80000aa8]:csrrs t5, vxsat, zero<br> [0x80000aac]:sw t6, 480(ra)<br>     |
|  90|[0x800024e0]<br>0x00000000|- rs1_w0_val == 16777216<br>                                                                                                                        |[0x80000abc]:KWMMUL t6, t5, t4<br> [0x80000ac0]:csrrs t5, vxsat, zero<br> [0x80000ac4]:sw t6, 488(ra)<br>     |
|  91|[0x800024e8]<br>0x00000000|- rs1_w0_val == 8388608<br>                                                                                                                         |[0x80000ad4]:KWMMUL t6, t5, t4<br> [0x80000ad8]:csrrs t5, vxsat, zero<br> [0x80000adc]:sw t6, 496(ra)<br>     |
|  92|[0x800024f0]<br>0xFFFFBFFF|- rs1_w0_val == 2097152<br>                                                                                                                         |[0x80000af0]:KWMMUL t6, t5, t4<br> [0x80000af4]:csrrs t5, vxsat, zero<br> [0x80000af8]:sw t6, 504(ra)<br>     |
|  93|[0x800024f8]<br>0x00000000|- rs1_w0_val == 1048576<br>                                                                                                                         |[0x80000b08]:KWMMUL t6, t5, t4<br> [0x80000b0c]:csrrs t5, vxsat, zero<br> [0x80000b10]:sw t6, 512(ra)<br>     |
|  94|[0x80002500]<br>0xFFFFFFFF|- rs1_w0_val == 524288<br>                                                                                                                          |[0x80000b20]:KWMMUL t6, t5, t4<br> [0x80000b24]:csrrs t5, vxsat, zero<br> [0x80000b28]:sw t6, 520(ra)<br>     |
|  95|[0x80002508]<br>0x00000800|- rs1_w0_val == 262144<br>                                                                                                                          |[0x80000b38]:KWMMUL t6, t5, t4<br> [0x80000b3c]:csrrs t5, vxsat, zero<br> [0x80000b40]:sw t6, 528(ra)<br>     |
|  96|[0x80002510]<br>0xFFFFFFFD|- rs1_w0_val == 131072<br>                                                                                                                          |[0x80000b54]:KWMMUL t6, t5, t4<br> [0x80000b58]:csrrs t5, vxsat, zero<br> [0x80000b5c]:sw t6, 536(ra)<br>     |
|  97|[0x80002518]<br>0x00000000|- rs1_w0_val == 65536<br>                                                                                                                           |[0x80000b6c]:KWMMUL t6, t5, t4<br> [0x80000b70]:csrrs t5, vxsat, zero<br> [0x80000b74]:sw t6, 544(ra)<br>     |
|  98|[0x80002520]<br>0x00000000|- rs1_w0_val == 32768<br>                                                                                                                           |[0x80000b84]:KWMMUL t6, t5, t4<br> [0x80000b88]:csrrs t5, vxsat, zero<br> [0x80000b8c]:sw t6, 552(ra)<br>     |
|  99|[0x80002528]<br>0xFFFFFFFE|- rs1_w0_val == 4096<br>                                                                                                                            |[0x80000ba0]:KWMMUL t6, t5, t4<br> [0x80000ba4]:csrrs t5, vxsat, zero<br> [0x80000ba8]:sw t6, 560(ra)<br>     |
| 100|[0x80002530]<br>0x00000040|- rs1_w0_val == 2048<br>                                                                                                                            |[0x80000bbc]:KWMMUL t6, t5, t4<br> [0x80000bc0]:csrrs t5, vxsat, zero<br> [0x80000bc4]:sw t6, 568(ra)<br>     |
| 101|[0x80002538]<br>0xFFFFFFFF|- rs1_w0_val == 256<br>                                                                                                                             |[0x80000bd8]:KWMMUL t6, t5, t4<br> [0x80000bdc]:csrrs t5, vxsat, zero<br> [0x80000be0]:sw t6, 576(ra)<br>     |
| 102|[0x80002540]<br>0x00000000|- rs1_w0_val == 128<br>                                                                                                                             |[0x80000bf0]:KWMMUL t6, t5, t4<br> [0x80000bf4]:csrrs t5, vxsat, zero<br> [0x80000bf8]:sw t6, 584(ra)<br>     |
| 103|[0x80002548]<br>0xFFFFFFFF|- rs1_w0_val == 64<br>                                                                                                                              |[0x80000c0c]:KWMMUL t6, t5, t4<br> [0x80000c10]:csrrs t5, vxsat, zero<br> [0x80000c14]:sw t6, 592(ra)<br>     |
| 104|[0x80002550]<br>0x00080001|- rs1_w0_val == -2147483648<br>                                                                                                                     |[0x80000c28]:KWMMUL t6, t5, t4<br> [0x80000c2c]:csrrs t5, vxsat, zero<br> [0x80000c30]:sw t6, 600(ra)<br>     |
| 105|[0x80002560]<br>0x00000000|- rs2_w0_val == -513<br>                                                                                                                            |[0x80000c5c]:KWMMUL t6, t5, t4<br> [0x80000c60]:csrrs t5, vxsat, zero<br> [0x80000c64]:sw t6, 616(ra)<br>     |
