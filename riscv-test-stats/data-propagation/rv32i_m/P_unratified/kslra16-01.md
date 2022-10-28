
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000b50')]      |
| SIG_REGION                | [('0x80002210', '0x800024e0', '180 words')]      |
| COV_LABELS                | kslra16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kslra16-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 240      |
| Total Signature Updates   | 180      |
| STAT1                     | 84      |
| STAT2                     | 6      |
| STAT3                     | 0     |
| STAT4                     | 90     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007a0]:KSLRA16 t6, t5, t4
      [0x800007a4]:csrrs t5, vxsat, zero
      [0x800007a8]:sw t6, 312(t0)
 -- Signature Address: 0x800023d8 Data: 0x7FFF8000
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == 32767




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a0]:KSLRA16 t6, t5, t4
      [0x800008a4]:csrrs t5, vxsat, zero
      [0x800008a8]:sw t6, 384(t0)
 -- Signature Address: 0x80002420 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -3
      - rs1_h1_val == 0
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008c0]:KSLRA16 t6, t5, t4
      [0x800008c4]:csrrs t5, vxsat, zero
      [0x800008c8]:sw t6, 392(t0)
 -- Signature Address: 0x80002428 Data: 0x2AAA2AAA
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == 21845
      - rs1_h0_val == 21845




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ab8]:KSLRA16 t6, t5, t4
      [0x80000abc]:csrrs t5, vxsat, zero
      [0x80000ac0]:sw t6, 536(t0)
 -- Signature Address: 0x800024b8 Data: 0xFFFFFFF8
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 1431655765
      - rs1_h1_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000af8]:KSLRA16 t6, t5, t4
      [0x80000afc]:csrrs t5, vxsat, zero
      [0x80000b00]:sw t6, 552(t0)
 -- Signature Address: 0x800024c8 Data: 0xFEFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -1048577
      - rs1_h1_val == -513
      - rs1_h0_val == -2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b18]:KSLRA16 t6, t5, t4
      [0x80000b1c]:csrrs t5, vxsat, zero
      [0x80000b20]:sw t6, 560(t0)
 -- Signature Address: 0x800024d0 Data: 0x0001DFFF
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -262145
      - rs1_h0_val == -16385






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslra16', 'rs1 : x20', 'rs2 : x20', 'rd : x20', 'rs1 == rs2 == rd', 'rs2_val == 1431655765', 'rs1_h1_val == 21845', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000118]:KSLRA16 s4, s4, s4
	-[0x8000011c]:csrrs s4, vxsat, zero
	-[0x80000120]:sw s4, 0(gp)
Current Store : [0x80000124] : sw s4, 4(gp) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x5', 'rd : x14', 'rs1 == rs2 != rd', 'rs2_val == 2147483647', 'rs1_h1_val == 32767', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80000138]:KSLRA16 a4, t0, t0
	-[0x8000013c]:csrrs t0, vxsat, zero
	-[0x80000140]:sw a4, 8(gp)
Current Store : [0x80000144] : sw t0, 12(gp) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x23', 'rd : x18', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -1073741825']
Last Code Sequence : 
	-[0x80000158]:KSLRA16 s2, t3, s7
	-[0x8000015c]:csrrs t3, vxsat, zero
	-[0x80000160]:sw s2, 16(gp)
Current Store : [0x80000164] : sw t3, 20(gp) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x28', 'rd : x28', 'rs2 == rd != rs1', 'rs2_val == -536870913', 'rs1_h1_val == 4', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000178]:KSLRA16 t3, a0, t3
	-[0x8000017c]:csrrs a0, vxsat, zero
	-[0x80000180]:sw t3, 24(gp)
Current Store : [0x80000184] : sw a0, 28(gp) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x30', 'rd : x2', 'rs1 == rd != rs2', 'rs2_val == -268435457', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000198]:KSLRA16 sp, sp, t5
	-[0x8000019c]:csrrs sp, vxsat, zero
	-[0x800001a0]:sw sp, 32(gp)
Current Store : [0x800001a4] : sw sp, 36(gp) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x15', 'rd : x12', 'rs2_val == -134217729', 'rs1_h1_val == 2048', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800001b4]:KSLRA16 a2, a7, a5
	-[0x800001b8]:csrrs a7, vxsat, zero
	-[0x800001bc]:sw a2, 40(gp)
Current Store : [0x800001c0] : sw a7, 44(gp) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x9', 'rd : x27', 'rs2_val == -67108865', 'rs1_h1_val == -4097']
Last Code Sequence : 
	-[0x800001d4]:KSLRA16 s11, s3, s1
	-[0x800001d8]:csrrs s3, vxsat, zero
	-[0x800001dc]:sw s11, 48(gp)
Current Store : [0x800001e0] : sw s3, 52(gp) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x18', 'rd : x4', 'rs2_val == -33554433', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800001f0]:KSLRA16 tp, t2, s2
	-[0x800001f4]:csrrs t2, vxsat, zero
	-[0x800001f8]:sw tp, 56(gp)
Current Store : [0x800001fc] : sw t2, 60(gp) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x13', 'rd : x21', 'rs2_val == -16777217', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000210]:KSLRA16 s5, a6, a3
	-[0x80000214]:csrrs a6, vxsat, zero
	-[0x80000218]:sw s5, 64(gp)
Current Store : [0x8000021c] : sw a6, 68(gp) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x27', 'rd : x13', 'rs2_val == -8388609']
Last Code Sequence : 
	-[0x80000230]:KSLRA16 a3, s9, s11
	-[0x80000234]:csrrs s9, vxsat, zero
	-[0x80000238]:sw a3, 72(gp)
Current Store : [0x8000023c] : sw s9, 76(gp) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x7', 'rd : x9', 'rs2_val == -4194305', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000250]:KSLRA16 s1, t6, t2
	-[0x80000254]:csrrs t6, vxsat, zero
	-[0x80000258]:sw s1, 80(gp)
Current Store : [0x8000025c] : sw t6, 84(gp) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x19', 'rd : x30', 'rs2_val == -2097153', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000270]:KSLRA16 t5, a5, s3
	-[0x80000274]:csrrs a5, vxsat, zero
	-[0x80000278]:sw t5, 88(gp)
Current Store : [0x8000027c] : sw a5, 92(gp) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x26', 'rd : x31', 'rs2_val == -1048577', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000290]:KSLRA16 t6, zero, s10
	-[0x80000294]:csrrs zero, vxsat, zero
	-[0x80000298]:sw t6, 96(gp)
Current Store : [0x8000029c] : sw zero, 100(gp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x17', 'rd : x25', 'rs2_val == -524289', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800002b0]:KSLRA16 s9, a4, a7
	-[0x800002b4]:csrrs a4, vxsat, zero
	-[0x800002b8]:sw s9, 104(gp)
Current Store : [0x800002bc] : sw a4, 108(gp) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x8', 'rd : x0', 'rs2_val == -262145', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800002d0]:KSLRA16 zero, ra, fp
	-[0x800002d4]:csrrs ra, vxsat, zero
	-[0x800002d8]:sw zero, 112(gp)
Current Store : [0x800002dc] : sw ra, 116(gp) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x4', 'rd : x5', 'rs2_val == -131073', 'rs1_h1_val == 128', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800002f0]:KSLRA16 t0, a2, tp
	-[0x800002f4]:csrrs a2, vxsat, zero
	-[0x800002f8]:sw t0, 120(gp)
Current Store : [0x800002fc] : sw a2, 124(gp) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x25', 'rd : x19', 'rs2_val == -65537', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000310]:KSLRA16 s3, t4, s9
	-[0x80000314]:csrrs t4, vxsat, zero
	-[0x80000318]:sw s3, 128(gp)
Current Store : [0x8000031c] : sw t4, 132(gp) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x0', 'rd : x22', 'rs1_h1_val == 64', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x8000032c]:KSLRA16 s6, s7, zero
	-[0x80000330]:csrrs s7, vxsat, zero
	-[0x80000334]:sw s6, 136(gp)
Current Store : [0x80000338] : sw s7, 140(gp) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x10', 'rd : x23', 'rs2_val == -16385', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000350]:KSLRA16 s7, s8, a0
	-[0x80000354]:csrrs s8, vxsat, zero
	-[0x80000358]:sw s7, 0(t0)
Current Store : [0x8000035c] : sw s8, 4(t0) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x31', 'rd : x8', 'rs2_val == -8193', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000370]:KSLRA16 fp, tp, t6
	-[0x80000374]:csrrs tp, vxsat, zero
	-[0x80000378]:sw fp, 8(t0)
Current Store : [0x8000037c] : sw tp, 12(t0) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x3', 'rd : x7', 'rs2_val == -4097', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x8000038c]:KSLRA16 t2, a1, gp
	-[0x80000390]:csrrs a1, vxsat, zero
	-[0x80000394]:sw t2, 16(t0)
Current Store : [0x80000398] : sw a1, 20(t0) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x6', 'rd : x17', 'rs2_val == -2049', 'rs1_h1_val == -21846', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x800003ac]:KSLRA16 a7, a3, t1
	-[0x800003b0]:csrrs a3, vxsat, zero
	-[0x800003b4]:sw a7, 24(t0)
Current Store : [0x800003b8] : sw a3, 28(t0) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x1', 'rd : x15', 'rs2_val == -1025', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800003c8]:KSLRA16 a5, t5, ra
	-[0x800003cc]:csrrs t5, vxsat, zero
	-[0x800003d0]:sw a5, 32(t0)
Current Store : [0x800003d4] : sw t5, 36(t0) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x16', 'rd : x6', 'rs2_val == -513']
Last Code Sequence : 
	-[0x800003e4]:KSLRA16 t1, s2, a6
	-[0x800003e8]:csrrs s2, vxsat, zero
	-[0x800003ec]:sw t1, 40(t0)
Current Store : [0x800003f0] : sw s2, 44(t0) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x2', 'rd : x10', 'rs2_val == -257', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000400]:KSLRA16 a0, s10, sp
	-[0x80000404]:csrrs s10, vxsat, zero
	-[0x80000408]:sw a0, 48(t0)
Current Store : [0x8000040c] : sw s10, 52(t0) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x14', 'rd : x16', 'rs2_val == -129', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x8000041c]:KSLRA16 a6, s1, a4
	-[0x80000420]:csrrs s1, vxsat, zero
	-[0x80000424]:sw a6, 56(t0)
Current Store : [0x80000428] : sw s1, 60(t0) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x12', 'rd : x26', 'rs2_val == -65', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000438]:KSLRA16 s10, t1, a2
	-[0x8000043c]:csrrs t1, vxsat, zero
	-[0x80000440]:sw s10, 64(t0)
Current Store : [0x80000444] : sw t1, 68(t0) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x21', 'rd : x11', 'rs2_val == -33', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000454]:KSLRA16 a1, gp, s5
	-[0x80000458]:csrrs gp, vxsat, zero
	-[0x8000045c]:sw a1, 72(t0)
Current Store : [0x80000460] : sw gp, 76(t0) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x11', 'rd : x29', 'rs2_val == -17', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000470]:KSLRA16 t4, s6, a1
	-[0x80000474]:csrrs s6, vxsat, zero
	-[0x80000478]:sw t4, 80(t0)
Current Store : [0x8000047c] : sw s6, 84(t0) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x24', 'rd : x1', 'rs2_val == -9']
Last Code Sequence : 
	-[0x8000048c]:KSLRA16 ra, s5, s8
	-[0x80000490]:csrrs s5, vxsat, zero
	-[0x80000494]:sw ra, 88(t0)
Current Store : [0x80000498] : sw s5, 92(t0) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x22', 'rd : x24', 'rs2_val == -5', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x800004a8]:KSLRA16 s8, s11, s6
	-[0x800004ac]:csrrs s11, vxsat, zero
	-[0x800004b0]:sw s8, 96(t0)
Current Store : [0x800004b4] : sw s11, 100(t0) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x29', 'rd : x3', 'rs2_val == -3', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800004c4]:KSLRA16 gp, fp, t4
	-[0x800004c8]:csrrs fp, vxsat, zero
	-[0x800004cc]:sw gp, 104(t0)
Current Store : [0x800004d0] : sw fp, 108(t0) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_val == -2']
Last Code Sequence : 
	-[0x800004e0]:KSLRA16 t6, t5, t4
	-[0x800004e4]:csrrs t5, vxsat, zero
	-[0x800004e8]:sw t6, 112(t0)
Current Store : [0x800004ec] : sw t5, 116(t0) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_val == -2147483648']
Last Code Sequence : 
	-[0x800004fc]:KSLRA16 t6, t5, t4
	-[0x80000500]:csrrs t5, vxsat, zero
	-[0x80000504]:sw t6, 120(t0)
Current Store : [0x80000508] : sw t5, 124(t0) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_val == 1073741824', 'rs1_h1_val == -513', 'rs1_h0_val == -32768']
Last Code Sequence : 
	-[0x80000514]:KSLRA16 t6, t5, t4
	-[0x80000518]:csrrs t5, vxsat, zero
	-[0x8000051c]:sw t6, 128(t0)
Current Store : [0x80000520] : sw t5, 132(t0) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_val == 536870912']
Last Code Sequence : 
	-[0x80000530]:KSLRA16 t6, t5, t4
	-[0x80000534]:csrrs t5, vxsat, zero
	-[0x80000538]:sw t6, 136(t0)
Current Store : [0x8000053c] : sw t5, 140(t0) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_val == 268435456']
Last Code Sequence : 
	-[0x8000054c]:KSLRA16 t6, t5, t4
	-[0x80000550]:csrrs t5, vxsat, zero
	-[0x80000554]:sw t6, 144(t0)
Current Store : [0x80000558] : sw t5, 148(t0) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000056c]:KSLRA16 t6, t5, t4
	-[0x80000570]:csrrs t5, vxsat, zero
	-[0x80000574]:sw t6, 152(t0)
Current Store : [0x80000578] : sw t5, 156(t0) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_val == 512', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000588]:KSLRA16 t6, t5, t4
	-[0x8000058c]:csrrs t5, vxsat, zero
	-[0x80000590]:sw t6, 160(t0)
Current Store : [0x80000594] : sw t5, 164(t0) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_val == 1048576', 'rs1_h1_val == -65', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800005a4]:KSLRA16 t6, t5, t4
	-[0x800005a8]:csrrs t5, vxsat, zero
	-[0x800005ac]:sw t6, 168(t0)
Current Store : [0x800005b0] : sw t5, 172(t0) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800005c4]:KSLRA16 t6, t5, t4
	-[0x800005c8]:csrrs t5, vxsat, zero
	-[0x800005cc]:sw t6, 176(t0)
Current Store : [0x800005d0] : sw t5, 180(t0) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_val == 256', 'rs1_h1_val == 8', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800005e0]:KSLRA16 t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 184(t0)
Current Store : [0x800005ec] : sw t5, 188(t0) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000600]:KSLRA16 t6, t5, t4
	-[0x80000604]:csrrs t5, vxsat, zero
	-[0x80000608]:sw t6, 192(t0)
Current Store : [0x8000060c] : sw t5, 196(t0) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000618]:KSLRA16 t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 200(t0)
Current Store : [0x80000624] : sw t5, 204(t0) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_h1_val == -2049', 'rs1_h0_val == -21846', 'rs2_val == -1431655766']
Last Code Sequence : 
	-[0x80000638]:KSLRA16 t6, t5, t4
	-[0x8000063c]:csrrs t5, vxsat, zero
	-[0x80000640]:sw t6, 208(t0)
Current Store : [0x80000644] : sw t5, 212(t0) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_val == 134217728', 'rs1_h1_val == -17', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000654]:KSLRA16 t6, t5, t4
	-[0x80000658]:csrrs t5, vxsat, zero
	-[0x8000065c]:sw t6, 216(t0)
Current Store : [0x80000660] : sw t5, 220(t0) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_val == 67108864', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000670]:KSLRA16 t6, t5, t4
	-[0x80000674]:csrrs t5, vxsat, zero
	-[0x80000678]:sw t6, 224(t0)
Current Store : [0x8000067c] : sw t5, 228(t0) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x8000068c]:KSLRA16 t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 232(t0)
Current Store : [0x80000698] : sw t5, 236(t0) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_val == 16777216', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x800006a8]:KSLRA16 t6, t5, t4
	-[0x800006ac]:csrrs t5, vxsat, zero
	-[0x800006b0]:sw t6, 240(t0)
Current Store : [0x800006b4] : sw t5, 244(t0) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_val == 8388608', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x800006c4]:KSLRA16 t6, t5, t4
	-[0x800006c8]:csrrs t5, vxsat, zero
	-[0x800006cc]:sw t6, 248(t0)
Current Store : [0x800006d0] : sw t5, 252(t0) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_val == 4194304']
Last Code Sequence : 
	-[0x800006e0]:KSLRA16 t6, t5, t4
	-[0x800006e4]:csrrs t5, vxsat, zero
	-[0x800006e8]:sw t6, 256(t0)
Current Store : [0x800006ec] : sw t5, 260(t0) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x800006fc]:KSLRA16 t6, t5, t4
	-[0x80000700]:csrrs t5, vxsat, zero
	-[0x80000704]:sw t6, 264(t0)
Current Store : [0x80000708] : sw t5, 268(t0) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_val == 524288']
Last Code Sequence : 
	-[0x80000718]:KSLRA16 t6, t5, t4
	-[0x8000071c]:csrrs t5, vxsat, zero
	-[0x80000720]:sw t6, 272(t0)
Current Store : [0x80000724] : sw t5, 276(t0) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_val == 262144', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000734]:KSLRA16 t6, t5, t4
	-[0x80000738]:csrrs t5, vxsat, zero
	-[0x8000073c]:sw t6, 280(t0)
Current Store : [0x80000740] : sw t5, 284(t0) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_val == 131072', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000750]:KSLRA16 t6, t5, t4
	-[0x80000754]:csrrs t5, vxsat, zero
	-[0x80000758]:sw t6, 288(t0)
Current Store : [0x8000075c] : sw t5, 292(t0) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_val == 65536']
Last Code Sequence : 
	-[0x8000076c]:KSLRA16 t6, t5, t4
	-[0x80000770]:csrrs t5, vxsat, zero
	-[0x80000774]:sw t6, 296(t0)
Current Store : [0x80000778] : sw t5, 300(t0) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_val == 1']
Last Code Sequence : 
	-[0x80000788]:KSLRA16 t6, t5, t4
	-[0x8000078c]:csrrs t5, vxsat, zero
	-[0x80000790]:sw t6, 304(t0)
Current Store : [0x80000794] : sw t5, 308(t0) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['opcode : kslra16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800007a0]:KSLRA16 t6, t5, t4
	-[0x800007a4]:csrrs t5, vxsat, zero
	-[0x800007a8]:sw t6, 312(t0)
Current Store : [0x800007ac] : sw t5, 316(t0) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_val == 8']
Last Code Sequence : 
	-[0x800007bc]:KSLRA16 t6, t5, t4
	-[0x800007c0]:csrrs t5, vxsat, zero
	-[0x800007c4]:sw t6, 320(t0)
Current Store : [0x800007c8] : sw t5, 324(t0) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800007d8]:KSLRA16 t6, t5, t4
	-[0x800007dc]:csrrs t5, vxsat, zero
	-[0x800007e0]:sw t6, 328(t0)
Current Store : [0x800007e4] : sw t5, 332(t0) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x800007f8]:KSLRA16 t6, t5, t4
	-[0x800007fc]:csrrs t5, vxsat, zero
	-[0x80000800]:sw t6, 336(t0)
Current Store : [0x80000804] : sw t5, 340(t0) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000814]:KSLRA16 t6, t5, t4
	-[0x80000818]:csrrs t5, vxsat, zero
	-[0x8000081c]:sw t6, 344(t0)
Current Store : [0x80000820] : sw t5, 348(t0) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_val == 16', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000830]:KSLRA16 t6, t5, t4
	-[0x80000834]:csrrs t5, vxsat, zero
	-[0x80000838]:sw t6, 352(t0)
Current Store : [0x8000083c] : sw t5, 356(t0) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x8000084c]:KSLRA16 t6, t5, t4
	-[0x80000850]:csrrs t5, vxsat, zero
	-[0x80000854]:sw t6, 360(t0)
Current Store : [0x80000858] : sw t5, 364(t0) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x8000086c]:KSLRA16 t6, t5, t4
	-[0x80000870]:csrrs t5, vxsat, zero
	-[0x80000874]:sw t6, 368(t0)
Current Store : [0x80000878] : sw t5, 372(t0) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000888]:KSLRA16 t6, t5, t4
	-[0x8000088c]:csrrs t5, vxsat, zero
	-[0x80000890]:sw t6, 376(t0)
Current Store : [0x80000894] : sw t5, 380(t0) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['opcode : kslra16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -3', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800008a0]:KSLRA16 t6, t5, t4
	-[0x800008a4]:csrrs t5, vxsat, zero
	-[0x800008a8]:sw t6, 384(t0)
Current Store : [0x800008ac] : sw t5, 388(t0) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['opcode : kslra16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h1_val == 21845', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x800008c0]:KSLRA16 t6, t5, t4
	-[0x800008c4]:csrrs t5, vxsat, zero
	-[0x800008c8]:sw t6, 392(t0)
Current Store : [0x800008cc] : sw t5, 396(t0) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800008dc]:KSLRA16 t6, t5, t4
	-[0x800008e0]:csrrs t5, vxsat, zero
	-[0x800008e4]:sw t6, 400(t0)
Current Store : [0x800008e8] : sw t5, 404(t0) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_val == 32']
Last Code Sequence : 
	-[0x800008f8]:KSLRA16 t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 408(t0)
Current Store : [0x80000904] : sw t5, 412(t0) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000914]:KSLRA16 t6, t5, t4
	-[0x80000918]:csrrs t5, vxsat, zero
	-[0x8000091c]:sw t6, 416(t0)
Current Store : [0x80000920] : sw t5, 420(t0) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x80000930]:KSLRA16 t6, t5, t4
	-[0x80000934]:csrrs t5, vxsat, zero
	-[0x80000938]:sw t6, 424(t0)
Current Store : [0x8000093c] : sw t5, 428(t0) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x8000094c]:KSLRA16 t6, t5, t4
	-[0x80000950]:csrrs t5, vxsat, zero
	-[0x80000954]:sw t6, 432(t0)
Current Store : [0x80000958] : sw t5, 436(t0) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_val == 8192']
Last Code Sequence : 
	-[0x80000964]:KSLRA16 t6, t5, t4
	-[0x80000968]:csrrs t5, vxsat, zero
	-[0x8000096c]:sw t6, 440(t0)
Current Store : [0x80000970] : sw t5, 444(t0) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000980]:KSLRA16 t6, t5, t4
	-[0x80000984]:csrrs t5, vxsat, zero
	-[0x80000988]:sw t6, 448(t0)
Current Store : [0x8000098c] : sw t5, 452(t0) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs2_val == 4096']
Last Code Sequence : 
	-[0x8000099c]:KSLRA16 t6, t5, t4
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sw t6, 456(t0)
Current Store : [0x800009a8] : sw t5, 460(t0) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs2_val == 2048', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800009bc]:KSLRA16 t6, t5, t4
	-[0x800009c0]:csrrs t5, vxsat, zero
	-[0x800009c4]:sw t6, 464(t0)
Current Store : [0x800009c8] : sw t5, 468(t0) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs2_val == 1024']
Last Code Sequence : 
	-[0x800009d8]:KSLRA16 t6, t5, t4
	-[0x800009dc]:csrrs t5, vxsat, zero
	-[0x800009e0]:sw t6, 472(t0)
Current Store : [0x800009e4] : sw t5, 476(t0) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800009f0]:KSLRA16 t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 480(t0)
Current Store : [0x800009fc] : sw t5, 484(t0) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs2_val == 128']
Last Code Sequence : 
	-[0x80000a0c]:KSLRA16 t6, t5, t4
	-[0x80000a10]:csrrs t5, vxsat, zero
	-[0x80000a14]:sw t6, 488(t0)
Current Store : [0x80000a18] : sw t5, 492(t0) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs2_val == 64']
Last Code Sequence : 
	-[0x80000a28]:KSLRA16 t6, t5, t4
	-[0x80000a2c]:csrrs t5, vxsat, zero
	-[0x80000a30]:sw t6, 496(t0)
Current Store : [0x80000a34] : sw t5, 500(t0) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000a48]:KSLRA16 t6, t5, t4
	-[0x80000a4c]:csrrs t5, vxsat, zero
	-[0x80000a50]:sw t6, 504(t0)
Current Store : [0x80000a54] : sw t5, 508(t0) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000a64]:KSLRA16 t6, t5, t4
	-[0x80000a68]:csrrs t5, vxsat, zero
	-[0x80000a6c]:sw t6, 512(t0)
Current Store : [0x80000a70] : sw t5, 516(t0) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x80000a80]:KSLRA16 t6, t5, t4
	-[0x80000a84]:csrrs t5, vxsat, zero
	-[0x80000a88]:sw t6, 520(t0)
Current Store : [0x80000a8c] : sw t5, 524(t0) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs2_val == 2']
Last Code Sequence : 
	-[0x80000a9c]:KSLRA16 t6, t5, t4
	-[0x80000aa0]:csrrs t5, vxsat, zero
	-[0x80000aa4]:sw t6, 528(t0)
Current Store : [0x80000aa8] : sw t5, 532(t0) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['opcode : kslra16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 1431655765', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000ab8]:KSLRA16 t6, t5, t4
	-[0x80000abc]:csrrs t5, vxsat, zero
	-[0x80000ac0]:sw t6, 536(t0)
Current Store : [0x80000ac4] : sw t5, 540(t0) -- Store: [0x800024bc]:0x00000001




Last Coverpoint : ['rs1_h1_val == -33', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000ad8]:KSLRA16 t6, t5, t4
	-[0x80000adc]:csrrs t5, vxsat, zero
	-[0x80000ae0]:sw t6, 544(t0)
Current Store : [0x80000ae4] : sw t5, 548(t0) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['opcode : kslra16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -1048577', 'rs1_h1_val == -513', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000af8]:KSLRA16 t6, t5, t4
	-[0x80000afc]:csrrs t5, vxsat, zero
	-[0x80000b00]:sw t6, 552(t0)
Current Store : [0x80000b04] : sw t5, 556(t0) -- Store: [0x800024cc]:0x00000001




Last Coverpoint : ['opcode : kslra16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -262145', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000b18]:KSLRA16 t6, t5, t4
	-[0x80000b1c]:csrrs t5, vxsat, zero
	-[0x80000b20]:sw t6, 560(t0)
Current Store : [0x80000b24] : sw t5, 564(t0) -- Store: [0x800024d4]:0x00000001




Last Coverpoint : ['rs2_val == -32769']
Last Code Sequence : 
	-[0x80000b38]:KSLRA16 t6, t5, t4
	-[0x80000b3c]:csrrs t5, vxsat, zero
	-[0x80000b40]:sw t6, 568(t0)
Current Store : [0x80000b44] : sw t5, 572(t0) -- Store: [0x800024dc]:0x00000001





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

|s.no|        signature         |                                                                                 coverpoints                                                                                 |                                                     code                                                      |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kslra16<br> - rs1 : x20<br> - rs2 : x20<br> - rd : x20<br> - rs1 == rs2 == rd<br> - rs2_val == 1431655765<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 21845<br> |[0x80000118]:KSLRA16 s4, s4, s4<br> [0x8000011c]:csrrs s4, vxsat, zero<br> [0x80000120]:sw s4, 0(gp)<br>       |
|   2|[0x80002218]<br>0x3FFFFFFF|- rs1 : x5<br> - rs2 : x5<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs2_val == 2147483647<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -1<br>                             |[0x80000138]:KSLRA16 a4, t0, t0<br> [0x8000013c]:csrrs t0, vxsat, zero<br> [0x80000140]:sw a4, 8(gp)<br>       |
|   3|[0x80002220]<br>0x1FFFFFFC|- rs1 : x28<br> - rs2 : x23<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == -1073741825<br>                                                    |[0x80000158]:KSLRA16 s2, t3, s7<br> [0x8000015c]:csrrs t3, vxsat, zero<br> [0x80000160]:sw s2, 16(gp)<br>      |
|   4|[0x80002228]<br>0x00020020|- rs1 : x10<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs2_val == -536870913<br> - rs1_h1_val == 4<br> - rs1_h0_val == 64<br>                               |[0x80000178]:KSLRA16 t3, a0, t3<br> [0x8000017c]:csrrs a0, vxsat, zero<br> [0x80000180]:sw t3, 24(gp)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x2<br> - rs2 : x30<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs2_val == -268435457<br> - rs1_h1_val == 16384<br>                                                    |[0x80000198]:KSLRA16 sp, sp, t5<br> [0x8000019c]:csrrs sp, vxsat, zero<br> [0x800001a0]:sw sp, 32(gp)<br>      |
|   6|[0x80002238]<br>0x04001000|- rs1 : x17<br> - rs2 : x15<br> - rd : x12<br> - rs2_val == -134217729<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 8192<br>                                                 |[0x800001b4]:KSLRA16 a2, a7, a5<br> [0x800001b8]:csrrs a7, vxsat, zero<br> [0x800001bc]:sw a2, 40(gp)<br>      |
|   7|[0x80002240]<br>0xF7FFFFFC|- rs1 : x19<br> - rs2 : x9<br> - rd : x27<br> - rs2_val == -67108865<br> - rs1_h1_val == -4097<br>                                                                           |[0x800001d4]:KSLRA16 s11, s3, s1<br> [0x800001d8]:csrrs s3, vxsat, zero<br> [0x800001dc]:sw s11, 48(gp)<br>    |
|   8|[0x80002248]<br>0xFFFB1000|- rs1 : x7<br> - rs2 : x18<br> - rd : x4<br> - rs2_val == -33554433<br> - rs1_h1_val == -9<br>                                                                               |[0x800001f0]:KSLRA16 tp, t2, s2<br> [0x800001f4]:csrrs t2, vxsat, zero<br> [0x800001f8]:sw tp, 56(gp)<br>      |
|   9|[0x80002250]<br>0xE000FEFF|- rs1 : x16<br> - rs2 : x13<br> - rd : x21<br> - rs2_val == -16777217<br> - rs1_h0_val == -513<br>                                                                           |[0x80000210]:KSLRA16 s5, a6, a3<br> [0x80000214]:csrrs a6, vxsat, zero<br> [0x80000218]:sw s5, 64(gp)<br>      |
|  10|[0x80002258]<br>0xFFFCFFFC|- rs1 : x25<br> - rs2 : x27<br> - rd : x13<br> - rs2_val == -8388609<br>                                                                                                     |[0x80000230]:KSLRA16 a3, s9, s11<br> [0x80000234]:csrrs s9, vxsat, zero<br> [0x80000238]:sw a3, 72(gp)<br>     |
|  11|[0x80002260]<br>0xFFFCFFEF|- rs1 : x31<br> - rs2 : x7<br> - rd : x9<br> - rs2_val == -4194305<br> - rs1_h0_val == -33<br>                                                                               |[0x80000250]:KSLRA16 s1, t6, t2<br> [0x80000254]:csrrs t6, vxsat, zero<br> [0x80000258]:sw s1, 80(gp)<br>      |
|  12|[0x80002268]<br>0x08000004|- rs1 : x15<br> - rs2 : x19<br> - rd : x30<br> - rs2_val == -2097153<br> - rs1_h1_val == 4096<br>                                                                            |[0x80000270]:KSLRA16 t5, a5, s3<br> [0x80000274]:csrrs a5, vxsat, zero<br> [0x80000278]:sw t5, 88(gp)<br>      |
|  13|[0x80002270]<br>0x00000000|- rs1 : x0<br> - rs2 : x26<br> - rd : x31<br> - rs2_val == -1048577<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                          |[0x80000290]:KSLRA16 t6, zero, s10<br> [0x80000294]:csrrs zero, vxsat, zero<br> [0x80000298]:sw t6, 96(gp)<br> |
|  14|[0x80002278]<br>0xFFFE0040|- rs1 : x14<br> - rs2 : x17<br> - rd : x25<br> - rs2_val == -524289<br> - rs1_h0_val == 128<br>                                                                              |[0x800002b0]:KSLRA16 s9, a4, a7<br> [0x800002b4]:csrrs a4, vxsat, zero<br> [0x800002b8]:sw s9, 104(gp)<br>     |
|  15|[0x80002280]<br>0x00000000|- rs1 : x1<br> - rs2 : x8<br> - rd : x0<br> - rs2_val == -262145<br> - rs1_h0_val == -16385<br>                                                                              |[0x800002d0]:KSLRA16 zero, ra, fp<br> [0x800002d4]:csrrs ra, vxsat, zero<br> [0x800002d8]:sw zero, 112(gp)<br> |
|  16|[0x80002288]<br>0x0040FFFD|- rs1 : x12<br> - rs2 : x4<br> - rd : x5<br> - rs2_val == -131073<br> - rs1_h1_val == 128<br> - rs1_h0_val == -5<br>                                                         |[0x800002f0]:KSLRA16 t0, a2, tp<br> [0x800002f4]:csrrs a2, vxsat, zero<br> [0x800002f8]:sw t0, 120(gp)<br>     |
|  17|[0x80002290]<br>0xDFFFFFEF|- rs1 : x29<br> - rs2 : x25<br> - rd : x19<br> - rs2_val == -65537<br> - rs1_h1_val == -16385<br>                                                                            |[0x80000310]:KSLRA16 s3, t4, s9<br> [0x80000314]:csrrs t4, vxsat, zero<br> [0x80000318]:sw s3, 128(gp)<br>     |
|  18|[0x80002298]<br>0x0040EFFF|- rs1 : x23<br> - rs2 : x0<br> - rd : x22<br> - rs1_h1_val == 64<br> - rs1_h0_val == -4097<br>                                                                               |[0x8000032c]:KSLRA16 s6, s7, zero<br> [0x80000330]:csrrs s7, vxsat, zero<br> [0x80000334]:sw s6, 136(gp)<br>   |
|  19|[0x800022a0]<br>0x04000800|- rs1 : x24<br> - rs2 : x10<br> - rd : x23<br> - rs2_val == -16385<br> - rs1_h0_val == 4096<br>                                                                              |[0x80000350]:KSLRA16 s7, s8, a0<br> [0x80000354]:csrrs s8, vxsat, zero<br> [0x80000358]:sw s7, 0(t0)<br>       |
|  20|[0x800022a8]<br>0xFFFEFF7F|- rs1 : x4<br> - rs2 : x31<br> - rd : x8<br> - rs2_val == -8193<br> - rs1_h0_val == -257<br>                                                                                 |[0x80000370]:KSLRA16 fp, tp, t6<br> [0x80000374]:csrrs tp, vxsat, zero<br> [0x80000378]:sw fp, 8(t0)<br>       |
|  21|[0x800022b0]<br>0xFFFFFFEF|- rs1 : x11<br> - rs2 : x3<br> - rd : x7<br> - rs2_val == -4097<br> - rs1_h1_val == -1<br>                                                                                   |[0x8000038c]:KSLRA16 t2, a1, gp<br> [0x80000390]:csrrs a1, vxsat, zero<br> [0x80000394]:sw t2, 16(t0)<br>      |
|  22|[0x800022b8]<br>0xD555EFFF|- rs1 : x13<br> - rs2 : x6<br> - rd : x17<br> - rs2_val == -2049<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -8193<br>                                                    |[0x800003ac]:KSLRA16 a7, a3, t1<br> [0x800003b0]:csrrs a3, vxsat, zero<br> [0x800003b4]:sw a7, 24(t0)<br>      |
|  23|[0x800022c0]<br>0x0100F7FF|- rs1 : x30<br> - rs2 : x1<br> - rd : x15<br> - rs2_val == -1025<br> - rs1_h1_val == 512<br>                                                                                 |[0x800003c8]:KSLRA16 a5, t5, ra<br> [0x800003cc]:csrrs t5, vxsat, zero<br> [0x800003d0]:sw a5, 32(t0)<br>      |
|  24|[0x800022c8]<br>0x0400FFFE|- rs1 : x18<br> - rs2 : x16<br> - rd : x6<br> - rs2_val == -513<br>                                                                                                          |[0x800003e4]:KSLRA16 t1, s2, a6<br> [0x800003e8]:csrrs s2, vxsat, zero<br> [0x800003ec]:sw t1, 40(t0)<br>      |
|  25|[0x800022d0]<br>0xFDFFFFFF|- rs1 : x26<br> - rs2 : x2<br> - rd : x10<br> - rs2_val == -257<br> - rs1_h1_val == -1025<br>                                                                                |[0x80000400]:KSLRA16 a0, s10, sp<br> [0x80000404]:csrrs s10, vxsat, zero<br> [0x80000408]:sw a0, 48(t0)<br>    |
|  26|[0x800022d8]<br>0x00801FFF|- rs1 : x9<br> - rs2 : x14<br> - rd : x16<br> - rs2_val == -129<br> - rs1_h1_val == 256<br>                                                                                  |[0x8000041c]:KSLRA16 a6, s1, a4<br> [0x80000420]:csrrs s1, vxsat, zero<br> [0x80000424]:sw a6, 56(t0)<br>      |
|  27|[0x800022e0]<br>0xFDFFFFFE|- rs1 : x6<br> - rs2 : x12<br> - rd : x26<br> - rs2_val == -65<br> - rs1_h0_val == -3<br>                                                                                    |[0x80000438]:KSLRA16 s10, t1, a2<br> [0x8000043c]:csrrs t1, vxsat, zero<br> [0x80000440]:sw s10, 64(t0)<br>    |
|  28|[0x800022e8]<br>0xD555FBFF|- rs1 : x3<br> - rs2 : x21<br> - rd : x11<br> - rs2_val == -33<br> - rs1_h0_val == -2049<br>                                                                                 |[0x80000454]:KSLRA16 a1, gp, s5<br> [0x80000458]:csrrs gp, vxsat, zero<br> [0x8000045c]:sw a1, 72(t0)<br>      |
|  29|[0x800022f0]<br>0x7FFF7FFF|- rs1 : x22<br> - rs2 : x11<br> - rd : x29<br> - rs2_val == -17<br> - rs1_h0_val == 512<br>                                                                                  |[0x80000470]:KSLRA16 t4, s6, a1<br> [0x80000474]:csrrs s6, vxsat, zero<br> [0x80000478]:sw t4, 80(t0)<br>      |
|  30|[0x800022f8]<br>0x0000FFFF|- rs1 : x21<br> - rs2 : x24<br> - rd : x1<br> - rs2_val == -9<br>                                                                                                            |[0x8000048c]:KSLRA16 ra, s5, s8<br> [0x80000490]:csrrs s5, vxsat, zero<br> [0x80000494]:sw ra, 88(t0)<br>      |
|  31|[0x80002300]<br>0x02AAFFFB|- rs1 : x27<br> - rs2 : x22<br> - rd : x24<br> - rs2_val == -5<br> - rs1_h0_val == -129<br>                                                                                  |[0x800004a8]:KSLRA16 s8, s11, s6<br> [0x800004ac]:csrrs s11, vxsat, zero<br> [0x800004b0]:sw s8, 96(t0)<br>    |
|  32|[0x80002308]<br>0x00020008|- rs1 : x8<br> - rs2 : x29<br> - rd : x3<br> - rs2_val == -3<br> - rs1_h1_val == 16<br>                                                                                      |[0x800004c4]:KSLRA16 gp, fp, t4<br> [0x800004c8]:csrrs fp, vxsat, zero<br> [0x800004cc]:sw gp, 104(t0)<br>     |
|  33|[0x80002310]<br>0xFFFFF7FF|- rs2_val == -2<br>                                                                                                                                                          |[0x800004e0]:KSLRA16 t6, t5, t4<br> [0x800004e4]:csrrs t5, vxsat, zero<br> [0x800004e8]:sw t6, 112(t0)<br>     |
|  34|[0x80002318]<br>0xFFF6FFDF|- rs2_val == -2147483648<br>                                                                                                                                                 |[0x800004fc]:KSLRA16 t6, t5, t4<br> [0x80000500]:csrrs t5, vxsat, zero<br> [0x80000504]:sw t6, 120(t0)<br>     |
|  35|[0x80002320]<br>0xFDFF8000|- rs2_val == 1073741824<br> - rs1_h1_val == -513<br> - rs1_h0_val == -32768<br>                                                                                              |[0x80000514]:KSLRA16 t6, t5, t4<br> [0x80000518]:csrrs t5, vxsat, zero<br> [0x8000051c]:sw t6, 128(t0)<br>     |
|  36|[0x80002328]<br>0x0080FF7F|- rs2_val == 536870912<br>                                                                                                                                                   |[0x80000530]:KSLRA16 t6, t5, t4<br> [0x80000534]:csrrs t5, vxsat, zero<br> [0x80000538]:sw t6, 136(t0)<br>     |
|  37|[0x80002330]<br>0x00400003|- rs2_val == 268435456<br>                                                                                                                                                   |[0x8000054c]:KSLRA16 t6, t5, t4<br> [0x80000550]:csrrs t5, vxsat, zero<br> [0x80000554]:sw t6, 144(t0)<br>     |
|  38|[0x80002338]<br>0x00020010|- rs1_h0_val == 32<br>                                                                                                                                                       |[0x8000056c]:KSLRA16 t6, t5, t4<br> [0x80000570]:csrrs t5, vxsat, zero<br> [0x80000574]:sw t6, 152(t0)<br>     |
|  39|[0x80002340]<br>0x00040010|- rs2_val == 512<br> - rs1_h0_val == 16<br>                                                                                                                                  |[0x80000588]:KSLRA16 t6, t5, t4<br> [0x8000058c]:csrrs t5, vxsat, zero<br> [0x80000590]:sw t6, 160(t0)<br>     |
|  40|[0x80002348]<br>0xFFBF0008|- rs2_val == 1048576<br> - rs1_h1_val == -65<br> - rs1_h0_val == 8<br>                                                                                                       |[0x800005a4]:KSLRA16 t6, t5, t4<br> [0x800005a8]:csrrs t5, vxsat, zero<br> [0x800005ac]:sw t6, 168(t0)<br>     |
|  41|[0x80002350]<br>0x08000002|- rs1_h0_val == 4<br>                                                                                                                                                        |[0x800005c4]:KSLRA16 t6, t5, t4<br> [0x800005c8]:csrrs t5, vxsat, zero<br> [0x800005cc]:sw t6, 176(t0)<br>     |
|  42|[0x80002358]<br>0x00080002|- rs2_val == 256<br> - rs1_h1_val == 8<br> - rs1_h0_val == 2<br>                                                                                                             |[0x800005e0]:KSLRA16 t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 184(t0)<br>     |
|  43|[0x80002360]<br>0x08000000|- rs1_h0_val == 1<br>                                                                                                                                                        |[0x80000600]:KSLRA16 t6, t5, t4<br> [0x80000604]:csrrs t5, vxsat, zero<br> [0x80000608]:sw t6, 192(t0)<br>     |
|  44|[0x80002368]<br>0x00000000|- rs1_h1_val == 2<br>                                                                                                                                                        |[0x80000618]:KSLRA16 t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 200(t0)<br>     |
|  45|[0x80002370]<br>0x80008000|- rs1_h1_val == -2049<br> - rs1_h0_val == -21846<br> - rs2_val == -1431655766<br>                                                                                            |[0x80000638]:KSLRA16 t6, t5, t4<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 208(t0)<br>     |
|  46|[0x80002378]<br>0xFFEFFFEF|- rs2_val == 134217728<br> - rs1_h1_val == -17<br> - rs1_h0_val == -17<br>                                                                                                   |[0x80000654]:KSLRA16 t6, t5, t4<br> [0x80000658]:csrrs t5, vxsat, zero<br> [0x8000065c]:sw t6, 216(t0)<br>     |
|  47|[0x80002380]<br>0xDFFF0004|- rs2_val == 67108864<br> - rs1_h1_val == -8193<br>                                                                                                                          |[0x80000670]:KSLRA16 t6, t5, t4<br> [0x80000674]:csrrs t5, vxsat, zero<br> [0x80000678]:sw t6, 224(t0)<br>     |
|  48|[0x80002388]<br>0x0100DFFF|- rs2_val == 33554432<br>                                                                                                                                                    |[0x8000068c]:KSLRA16 t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 232(t0)<br>     |
|  49|[0x80002390]<br>0xFFF80100|- rs2_val == 16777216<br> - rs1_h0_val == 256<br>                                                                                                                            |[0x800006a8]:KSLRA16 t6, t5, t4<br> [0x800006ac]:csrrs t5, vxsat, zero<br> [0x800006b0]:sw t6, 240(t0)<br>     |
|  50|[0x80002398]<br>0xFFFDFEFF|- rs2_val == 8388608<br> - rs1_h1_val == -3<br>                                                                                                                              |[0x800006c4]:KSLRA16 t6, t5, t4<br> [0x800006c8]:csrrs t5, vxsat, zero<br> [0x800006cc]:sw t6, 248(t0)<br>     |
|  51|[0x800023a0]<br>0x02000010|- rs2_val == 4194304<br>                                                                                                                                                     |[0x800006e0]:KSLRA16 t6, t5, t4<br> [0x800006e4]:csrrs t5, vxsat, zero<br> [0x800006e8]:sw t6, 256(t0)<br>     |
|  52|[0x800023a8]<br>0x0003FFFD|- rs2_val == 2097152<br>                                                                                                                                                     |[0x800006fc]:KSLRA16 t6, t5, t4<br> [0x80000700]:csrrs t5, vxsat, zero<br> [0x80000704]:sw t6, 264(t0)<br>     |
|  53|[0x800023b0]<br>0xDFFFFFFB|- rs2_val == 524288<br>                                                                                                                                                      |[0x80000718]:KSLRA16 t6, t5, t4<br> [0x8000071c]:csrrs t5, vxsat, zero<br> [0x80000720]:sw t6, 272(t0)<br>     |
|  54|[0x800023b8]<br>0x0400FFEF|- rs2_val == 262144<br> - rs1_h1_val == 1024<br>                                                                                                                             |[0x80000734]:KSLRA16 t6, t5, t4<br> [0x80000738]:csrrs t5, vxsat, zero<br> [0x8000073c]:sw t6, 280(t0)<br>     |
|  55|[0x800023c0]<br>0x00200002|- rs2_val == 131072<br> - rs1_h1_val == 32<br>                                                                                                                               |[0x80000750]:KSLRA16 t6, t5, t4<br> [0x80000754]:csrrs t5, vxsat, zero<br> [0x80000758]:sw t6, 288(t0)<br>     |
|  56|[0x800023c8]<br>0x3FFF0002|- rs2_val == 65536<br>                                                                                                                                                       |[0x8000076c]:KSLRA16 t6, t5, t4<br> [0x80000770]:csrrs t5, vxsat, zero<br> [0x80000774]:sw t6, 296(t0)<br>     |
|  57|[0x800023d0]<br>0x8000FFF2|- rs2_val == 1<br>                                                                                                                                                           |[0x80000788]:KSLRA16 t6, t5, t4<br> [0x8000078c]:csrrs t5, vxsat, zero<br> [0x80000790]:sw t6, 304(t0)<br>     |
|  58|[0x800023e0]<br>0x7FFF0200|- rs2_val == 8<br>                                                                                                                                                           |[0x800007bc]:KSLRA16 t6, t5, t4<br> [0x800007c0]:csrrs t5, vxsat, zero<br> [0x800007c4]:sw t6, 320(t0)<br>     |
|  59|[0x800023e8]<br>0xFEFF0100|- rs1_h1_val == -257<br>                                                                                                                                                     |[0x800007d8]:KSLRA16 t6, t5, t4<br> [0x800007dc]:csrrs t5, vxsat, zero<br> [0x800007e0]:sw t6, 328(t0)<br>     |
|  60|[0x800023f0]<br>0xFFBFFFFF|- rs1_h1_val == -129<br>                                                                                                                                                     |[0x800007f8]:KSLRA16 t6, t5, t4<br> [0x800007fc]:csrrs t5, vxsat, zero<br> [0x80000800]:sw t6, 336(t0)<br>     |
|  61|[0x800023f8]<br>0xFFFF0000|- rs1_h1_val == -5<br>                                                                                                                                                       |[0x80000814]:KSLRA16 t6, t5, t4<br> [0x80000818]:csrrs t5, vxsat, zero<br> [0x8000081c]:sw t6, 344(t0)<br>     |
|  62|[0x80002400]<br>0xFFFFFFFF|- rs2_val == 16<br> - rs1_h1_val == -2<br>                                                                                                                                   |[0x80000830]:KSLRA16 t6, t5, t4<br> [0x80000834]:csrrs t5, vxsat, zero<br> [0x80000838]:sw t6, 352(t0)<br>     |
|  63|[0x80002408]<br>0x80000003|- rs1_h1_val == -32768<br>                                                                                                                                                   |[0x8000084c]:KSLRA16 t6, t5, t4<br> [0x80000850]:csrrs t5, vxsat, zero<br> [0x80000854]:sw t6, 360(t0)<br>     |
|  64|[0x80002410]<br>0x1000FF7F|- rs1_h1_val == 8192<br>                                                                                                                                                     |[0x8000086c]:KSLRA16 t6, t5, t4<br> [0x80000870]:csrrs t5, vxsat, zero<br> [0x80000874]:sw t6, 368(t0)<br>     |
|  65|[0x80002418]<br>0x0000FFFF|- rs1_h1_val == 1<br>                                                                                                                                                        |[0x80000888]:KSLRA16 t6, t5, t4<br> [0x8000088c]:csrrs t5, vxsat, zero<br> [0x80000890]:sw t6, 376(t0)<br>     |
|  66|[0x80002430]<br>0x7FFF7FFF|- rs1_h0_val == 32767<br>                                                                                                                                                    |[0x800008dc]:KSLRA16 t6, t5, t4<br> [0x800008e0]:csrrs t5, vxsat, zero<br> [0x800008e4]:sw t6, 400(t0)<br>     |
|  67|[0x80002438]<br>0x04000006|- rs2_val == 32<br>                                                                                                                                                          |[0x800008f8]:KSLRA16 t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 408(t0)<br>     |
|  68|[0x80002440]<br>0x0040FFBF|- rs1_h0_val == -65<br>                                                                                                                                                      |[0x80000914]:KSLRA16 t6, t5, t4<br> [0x80000918]:csrrs t5, vxsat, zero<br> [0x8000091c]:sw t6, 416(t0)<br>     |
|  69|[0x80002448]<br>0xFFF8FFF6|- rs2_val == 32768<br>                                                                                                                                                       |[0x80000930]:KSLRA16 t6, t5, t4<br> [0x80000934]:csrrs t5, vxsat, zero<br> [0x80000938]:sw t6, 424(t0)<br>     |
|  70|[0x80002450]<br>0x0200DFFF|- rs2_val == 16384<br>                                                                                                                                                       |[0x8000094c]:KSLRA16 t6, t5, t4<br> [0x80000950]:csrrs t5, vxsat, zero<br> [0x80000954]:sw t6, 432(t0)<br>     |
|  71|[0x80002458]<br>0xFFEF2000|- rs2_val == 8192<br>                                                                                                                                                        |[0x80000964]:KSLRA16 t6, t5, t4<br> [0x80000968]:csrrs t5, vxsat, zero<br> [0x8000096c]:sw t6, 440(t0)<br>     |
|  72|[0x80002460]<br>0x0010FFF7|- rs1_h0_val == -9<br>                                                                                                                                                       |[0x80000980]:KSLRA16 t6, t5, t4<br> [0x80000984]:csrrs t5, vxsat, zero<br> [0x80000988]:sw t6, 448(t0)<br>     |
|  73|[0x80002468]<br>0x0006FFF6|- rs2_val == 4096<br>                                                                                                                                                        |[0x8000099c]:KSLRA16 t6, t5, t4<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sw t6, 456(t0)<br>     |
|  74|[0x80002470]<br>0x0010FFFE|- rs2_val == 2048<br> - rs1_h0_val == -2<br>                                                                                                                                 |[0x800009bc]:KSLRA16 t6, t5, t4<br> [0x800009c0]:csrrs t5, vxsat, zero<br> [0x800009c4]:sw t6, 464(t0)<br>     |
|  75|[0x80002478]<br>0xEFFF0080|- rs2_val == 1024<br>                                                                                                                                                        |[0x800009d8]:KSLRA16 t6, t5, t4<br> [0x800009dc]:csrrs t5, vxsat, zero<br> [0x800009e0]:sw t6, 472(t0)<br>     |
|  76|[0x80002480]<br>0x1FFF2000|- rs1_h0_val == 16384<br>                                                                                                                                                    |[0x800009f0]:KSLRA16 t6, t5, t4<br> [0x800009f4]:csrrs t5, vxsat, zero<br> [0x800009f8]:sw t6, 480(t0)<br>     |
|  77|[0x80002488]<br>0x0001FFEF|- rs2_val == 128<br>                                                                                                                                                         |[0x80000a0c]:KSLRA16 t6, t5, t4<br> [0x80000a10]:csrrs t5, vxsat, zero<br> [0x80000a14]:sw t6, 488(t0)<br>     |
|  78|[0x80002490]<br>0xFFF60008|- rs2_val == 64<br>                                                                                                                                                          |[0x80000a28]:KSLRA16 t6, t5, t4<br> [0x80000a2c]:csrrs t5, vxsat, zero<br> [0x80000a30]:sw t6, 496(t0)<br>     |
|  79|[0x80002498]<br>0xFFFF0400|- rs1_h0_val == 2048<br>                                                                                                                                                     |[0x80000a48]:KSLRA16 t6, t5, t4<br> [0x80000a4c]:csrrs t5, vxsat, zero<br> [0x80000a50]:sw t6, 504(t0)<br>     |
|  80|[0x800024a0]<br>0x7FFF7FFF|- rs1_h0_val == 1024<br>                                                                                                                                                     |[0x80000a64]:KSLRA16 t6, t5, t4<br> [0x80000a68]:csrrs t5, vxsat, zero<br> [0x80000a6c]:sw t6, 512(t0)<br>     |
|  81|[0x800024a8]<br>0xFF60EFF0|- rs2_val == 4<br>                                                                                                                                                           |[0x80000a80]:KSLRA16 t6, t5, t4<br> [0x80000a84]:csrrs t5, vxsat, zero<br> [0x80000a88]:sw t6, 520(t0)<br>     |
|  82|[0x800024b0]<br>0xFFD8BFFC|- rs2_val == 2<br>                                                                                                                                                           |[0x80000a9c]:KSLRA16 t6, t5, t4<br> [0x80000aa0]:csrrs t5, vxsat, zero<br> [0x80000aa4]:sw t6, 528(t0)<br>     |
|  83|[0x800024c0]<br>0xFFEFFDFF|- rs1_h1_val == -33<br> - rs1_h0_val == -1025<br>                                                                                                                            |[0x80000ad8]:KSLRA16 t6, t5, t4<br> [0x80000adc]:csrrs t5, vxsat, zero<br> [0x80000ae0]:sw t6, 544(t0)<br>     |
|  84|[0x800024d8]<br>0x0020F7FF|- rs2_val == -32769<br>                                                                                                                                                      |[0x80000b38]:KSLRA16 t6, t5, t4<br> [0x80000b3c]:csrrs t5, vxsat, zero<br> [0x80000b40]:sw t6, 568(t0)<br>     |
