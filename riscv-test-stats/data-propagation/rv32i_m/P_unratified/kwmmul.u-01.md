
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000d00')]      |
| SIG_REGION                | [('0x80002210', '0x80002590', '224 words')]      |
| COV_LABELS                | kwmmul.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kwmmul.u-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 224      |
| STAT1                     | 110      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 112     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000874]:KWMMUL_U t6, t5, t4
      [0x80000878]:csrrs t5, vxsat, zero
      [0x8000087c]:sw t6, 408(gp)
 -- Signature Address: 0x80002438 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kwmmul.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cd0]:KWMMUL_U t6, t5, t4
      [0x80000cd4]:csrrs t5, vxsat, zero
      [0x80000cd8]:sw t6, 736(gp)
 -- Signature Address: 0x80002580 Data: 0x00000007
 -- Redundant Coverpoints hit by the op
      - opcode : kwmmul.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -1431655766






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kwmmul.u', 'rs1 : x3', 'rs2 : x3', 'rd : x3', 'rs1 == rs2 == rd', 'rs2_w0_val == 8192', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000114]:KWMMUL_U gp, gp, gp
	-[0x80000118]:csrrs gp, vxsat, zero
	-[0x8000011c]:sw gp, 0(t2)
Current Store : [0x80000120] : sw gp, 4(t2) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x30', 'rs1 == rs2 != rd', 'rs2_w0_val == -1431655766', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000130]:KWMMUL_U t5, s5, s5
	-[0x80000134]:csrrs s5, vxsat, zero
	-[0x80000138]:sw t5, 8(t2)
Current Store : [0x8000013c] : sw s5, 12(t2) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x16', 'rd : x28', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 1431655765', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000150]:KWMMUL_U t3, a4, a6
	-[0x80000154]:csrrs a4, vxsat, zero
	-[0x80000158]:sw t3, 16(t2)
Current Store : [0x8000015c] : sw a4, 20(t2) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x23', 'rd : x23', 'rs2 == rd != rs1', 'rs2_w0_val == 2147483647', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000170]:KWMMUL_U s7, t1, s7
	-[0x80000174]:csrrs t1, vxsat, zero
	-[0x80000178]:sw s7, 24(t2)
Current Store : [0x8000017c] : sw t1, 28(t2) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x25', 'rd : x18', 'rs1 == rd != rs2', 'rs2_w0_val == -1073741825', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000190]:KWMMUL_U s2, s2, s9
	-[0x80000194]:csrrs s2, vxsat, zero
	-[0x80000198]:sw s2, 32(t2)
Current Store : [0x8000019c] : sw s2, 36(t2) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x26', 'rd : x6', 'rs2_w0_val == -536870913']
Last Code Sequence : 
	-[0x800001ac]:KWMMUL_U t1, t4, s10
	-[0x800001b0]:csrrs t4, vxsat, zero
	-[0x800001b4]:sw t1, 40(t2)
Current Store : [0x800001b8] : sw t4, 44(t2) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x20', 'rd : x15', 'rs2_w0_val == -268435457']
Last Code Sequence : 
	-[0x800001cc]:KWMMUL_U a5, a6, s4
	-[0x800001d0]:csrrs a6, vxsat, zero
	-[0x800001d4]:sw a5, 48(t2)
Current Store : [0x800001d8] : sw a6, 52(t2) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x18', 'rd : x12', 'rs2_w0_val == -134217729']
Last Code Sequence : 
	-[0x800001e8]:KWMMUL_U a2, a7, s2
	-[0x800001ec]:csrrs a7, vxsat, zero
	-[0x800001f0]:sw a2, 56(t2)
Current Store : [0x800001f4] : sw a7, 60(t2) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x17', 'rd : x19', 'rs2_w0_val == -67108865', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000204]:KWMMUL_U s3, a2, a7
	-[0x80000208]:csrrs a2, vxsat, zero
	-[0x8000020c]:sw s3, 64(t2)
Current Store : [0x80000210] : sw a2, 68(t2) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x9', 'rd : x26', 'rs2_w0_val == -33554433', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000220]:KWMMUL_U s10, ra, s1
	-[0x80000224]:csrrs ra, vxsat, zero
	-[0x80000228]:sw s10, 72(t2)
Current Store : [0x8000022c] : sw ra, 76(t2) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x2', 'rd : x0', 'rs2_w0_val == -16777217', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x8000023c]:KWMMUL_U zero, a1, sp
	-[0x80000240]:csrrs a1, vxsat, zero
	-[0x80000244]:sw zero, 80(t2)
Current Store : [0x80000248] : sw a1, 84(t2) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x29', 'rd : x25', 'rs2_w0_val == -8388609', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000025c]:KWMMUL_U s9, zero, t4
	-[0x80000260]:csrrs zero, vxsat, zero
	-[0x80000264]:sw s9, 88(t2)
Current Store : [0x80000268] : sw zero, 92(t2) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x14', 'rd : x17', 'rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x8000027c]:KWMMUL_U a7, tp, a4
	-[0x80000280]:csrrs tp, vxsat, zero
	-[0x80000284]:sw a7, 96(t2)
Current Store : [0x80000288] : sw tp, 100(t2) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x31', 'rd : x16', 'rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000029c]:KWMMUL_U a6, t0, t6
	-[0x800002a0]:csrrs t0, vxsat, zero
	-[0x800002a4]:sw a6, 104(t2)
Current Store : [0x800002a8] : sw t0, 108(t2) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x28', 'rd : x8', 'rs2_w0_val == -1048577']
Last Code Sequence : 
	-[0x800002b8]:KWMMUL_U fp, t6, t3
	-[0x800002bc]:csrrs t6, vxsat, zero
	-[0x800002c0]:sw fp, 112(t2)
Current Store : [0x800002c4] : sw t6, 116(t2) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x27', 'rd : x31', 'rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x800002d8]:KWMMUL_U t6, s10, s11
	-[0x800002dc]:csrrs s10, vxsat, zero
	-[0x800002e0]:sw t6, 120(t2)
Current Store : [0x800002e4] : sw s10, 124(t2) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x30', 'rd : x9', 'rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x800002f4]:KWMMUL_U s1, s11, t5
	-[0x800002f8]:csrrs s11, vxsat, zero
	-[0x800002fc]:sw s1, 128(t2)
Current Store : [0x80000300] : sw s11, 132(t2) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x5', 'rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x80000310]:KWMMUL_U t0, s6, s8
	-[0x80000314]:csrrs s6, vxsat, zero
	-[0x80000318]:sw t0, 136(t2)
Current Store : [0x8000031c] : sw s6, 140(t2) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x5', 'rd : x13', 'rs2_w0_val == -65537', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000334]:KWMMUL_U a3, t3, t0
	-[0x80000338]:csrrs t3, vxsat, zero
	-[0x8000033c]:sw a3, 0(gp)
Current Store : [0x80000340] : sw t3, 4(gp) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x22', 'rd : x2', 'rs2_w0_val == -32769', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000350]:KWMMUL_U sp, t5, s6
	-[0x80000354]:csrrs t5, vxsat, zero
	-[0x80000358]:sw sp, 8(gp)
Current Store : [0x8000035c] : sw t5, 12(gp) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x4', 'rd : x24', 'rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x8000036c]:KWMMUL_U s8, a3, tp
	-[0x80000370]:csrrs a3, vxsat, zero
	-[0x80000374]:sw s8, 16(gp)
Current Store : [0x80000378] : sw a3, 20(gp) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x13', 'rd : x11', 'rs2_w0_val == -8193', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000388]:KWMMUL_U a1, s9, a3
	-[0x8000038c]:csrrs s9, vxsat, zero
	-[0x80000390]:sw a1, 24(gp)
Current Store : [0x80000394] : sw s9, 28(gp) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x11', 'rd : x4', 'rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x800003a8]:KWMMUL_U tp, sp, a1
	-[0x800003ac]:csrrs sp, vxsat, zero
	-[0x800003b0]:sw tp, 32(gp)
Current Store : [0x800003b4] : sw sp, 36(gp) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x12', 'rd : x7', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x800003c8]:KWMMUL_U t2, a5, a2
	-[0x800003cc]:csrrs a5, vxsat, zero
	-[0x800003d0]:sw t2, 40(gp)
Current Store : [0x800003d4] : sw a5, 44(gp) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x10', 'rd : x29', 'rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x800003e4]:KWMMUL_U t4, s3, a0
	-[0x800003e8]:csrrs s3, vxsat, zero
	-[0x800003ec]:sw t4, 48(gp)
Current Store : [0x800003f0] : sw s3, 52(gp) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x15', 'rd : x1', 'rs2_w0_val == -513']
Last Code Sequence : 
	-[0x80000400]:KWMMUL_U ra, s4, a5
	-[0x80000404]:csrrs s4, vxsat, zero
	-[0x80000408]:sw ra, 56(gp)
Current Store : [0x8000040c] : sw s4, 60(gp) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x7', 'rd : x20', 'rs2_w0_val == -257', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000418]:KWMMUL_U s4, s8, t2
	-[0x8000041c]:csrrs s8, vxsat, zero
	-[0x80000420]:sw s4, 64(gp)
Current Store : [0x80000424] : sw s8, 68(gp) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x0', 'rd : x21', 'rs2_w0_val == 0', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000430]:KWMMUL_U s5, s1, zero
	-[0x80000434]:csrrs s1, vxsat, zero
	-[0x80000438]:sw s5, 72(gp)
Current Store : [0x8000043c] : sw s1, 76(gp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x8', 'rd : x27', 'rs2_w0_val == -65', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000448]:KWMMUL_U s11, s7, fp
	-[0x8000044c]:csrrs s7, vxsat, zero
	-[0x80000450]:sw s11, 80(gp)
Current Store : [0x80000454] : sw s7, 84(gp) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x6', 'rd : x10', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80000464]:KWMMUL_U a0, t2, t1
	-[0x80000468]:csrrs t2, vxsat, zero
	-[0x8000046c]:sw a0, 88(gp)
Current Store : [0x80000470] : sw t2, 92(gp) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x1', 'rd : x14', 'rs2_w0_val == -17']
Last Code Sequence : 
	-[0x8000047c]:KWMMUL_U a4, fp, ra
	-[0x80000480]:csrrs fp, vxsat, zero
	-[0x80000484]:sw a4, 96(gp)
Current Store : [0x80000488] : sw fp, 100(gp) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x19', 'rd : x22', 'rs2_w0_val == -9', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000498]:KWMMUL_U s6, a0, s3
	-[0x8000049c]:csrrs a0, vxsat, zero
	-[0x800004a0]:sw s6, 104(gp)
Current Store : [0x800004a4] : sw a0, 108(gp) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -5']
Last Code Sequence : 
	-[0x800004b4]:KWMMUL_U t6, t5, t4
	-[0x800004b8]:csrrs t5, vxsat, zero
	-[0x800004bc]:sw t6, 112(gp)
Current Store : [0x800004c0] : sw t5, 116(gp) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800004d0]:KWMMUL_U t6, t5, t4
	-[0x800004d4]:csrrs t5, vxsat, zero
	-[0x800004d8]:sw t6, 120(gp)
Current Store : [0x800004dc] : sw t5, 124(gp) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -2']
Last Code Sequence : 
	-[0x800004e8]:KWMMUL_U t6, t5, t4
	-[0x800004ec]:csrrs t5, vxsat, zero
	-[0x800004f0]:sw t6, 128(gp)
Current Store : [0x800004f4] : sw t5, 132(gp) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_w0_val == -2147483648', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000500]:KWMMUL_U t6, t5, t4
	-[0x80000504]:csrrs t5, vxsat, zero
	-[0x80000508]:sw t6, 136(gp)
Current Store : [0x8000050c] : sw t5, 140(gp) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x8000051c]:KWMMUL_U t6, t5, t4
	-[0x80000520]:csrrs t5, vxsat, zero
	-[0x80000524]:sw t6, 144(gp)
Current Store : [0x80000528] : sw t5, 148(gp) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000538]:KWMMUL_U t6, t5, t4
	-[0x8000053c]:csrrs t5, vxsat, zero
	-[0x80000540]:sw t6, 152(gp)
Current Store : [0x80000544] : sw t5, 156(gp) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000550]:KWMMUL_U t6, t5, t4
	-[0x80000554]:csrrs t5, vxsat, zero
	-[0x80000558]:sw t6, 160(gp)
Current Store : [0x8000055c] : sw t5, 164(gp) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000568]:KWMMUL_U t6, t5, t4
	-[0x8000056c]:csrrs t5, vxsat, zero
	-[0x80000570]:sw t6, 168(gp)
Current Store : [0x80000574] : sw t5, 172(gp) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000584]:KWMMUL_U t6, t5, t4
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 176(gp)
Current Store : [0x80000590] : sw t5, 180(gp) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x8000059c]:KWMMUL_U t6, t5, t4
	-[0x800005a0]:csrrs t5, vxsat, zero
	-[0x800005a4]:sw t6, 184(gp)
Current Store : [0x800005a8] : sw t5, 188(gp) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x800005b8]:KWMMUL_U t6, t5, t4
	-[0x800005bc]:csrrs t5, vxsat, zero
	-[0x800005c0]:sw t6, 192(gp)
Current Store : [0x800005c4] : sw t5, 196(gp) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800005d0]:KWMMUL_U t6, t5, t4
	-[0x800005d4]:csrrs t5, vxsat, zero
	-[0x800005d8]:sw t6, 200(gp)
Current Store : [0x800005dc] : sw t5, 204(gp) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800005ec]:KWMMUL_U t6, t5, t4
	-[0x800005f0]:csrrs t5, vxsat, zero
	-[0x800005f4]:sw t6, 208(gp)
Current Store : [0x800005f8] : sw t5, 212(gp) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000604]:KWMMUL_U t6, t5, t4
	-[0x80000608]:csrrs t5, vxsat, zero
	-[0x8000060c]:sw t6, 216(gp)
Current Store : [0x80000610] : sw t5, 220(gp) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000620]:KWMMUL_U t6, t5, t4
	-[0x80000624]:csrrs t5, vxsat, zero
	-[0x80000628]:sw t6, 224(gp)
Current Store : [0x8000062c] : sw t5, 228(gp) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000638]:KWMMUL_U t6, t5, t4
	-[0x8000063c]:csrrs t5, vxsat, zero
	-[0x80000640]:sw t6, 232(gp)
Current Store : [0x80000644] : sw t5, 236(gp) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80000650]:KWMMUL_U t6, t5, t4
	-[0x80000654]:csrrs t5, vxsat, zero
	-[0x80000658]:sw t6, 240(gp)
Current Store : [0x8000065c] : sw t5, 244(gp) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x8000066c]:KWMMUL_U t6, t5, t4
	-[0x80000670]:csrrs t5, vxsat, zero
	-[0x80000674]:sw t6, 248(gp)
Current Store : [0x80000678] : sw t5, 252(gp) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80000688]:KWMMUL_U t6, t5, t4
	-[0x8000068c]:csrrs t5, vxsat, zero
	-[0x80000690]:sw t6, 256(gp)
Current Store : [0x80000694] : sw t5, 260(gp) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x800006a4]:KWMMUL_U t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 264(gp)
Current Store : [0x800006b0] : sw t5, 268(gp) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800006bc]:KWMMUL_U t6, t5, t4
	-[0x800006c0]:csrrs t5, vxsat, zero
	-[0x800006c4]:sw t6, 272(gp)
Current Store : [0x800006c8] : sw t5, 276(gp) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x800006d8]:KWMMUL_U t6, t5, t4
	-[0x800006dc]:csrrs t5, vxsat, zero
	-[0x800006e0]:sw t6, 280(gp)
Current Store : [0x800006e4] : sw t5, 284(gp) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800006f0]:KWMMUL_U t6, t5, t4
	-[0x800006f4]:csrrs t5, vxsat, zero
	-[0x800006f8]:sw t6, 288(gp)
Current Store : [0x800006fc] : sw t5, 292(gp) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000708]:KWMMUL_U t6, t5, t4
	-[0x8000070c]:csrrs t5, vxsat, zero
	-[0x80000710]:sw t6, 296(gp)
Current Store : [0x80000714] : sw t5, 300(gp) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000720]:KWMMUL_U t6, t5, t4
	-[0x80000724]:csrrs t5, vxsat, zero
	-[0x80000728]:sw t6, 304(gp)
Current Store : [0x8000072c] : sw t5, 308(gp) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x8000073c]:KWMMUL_U t6, t5, t4
	-[0x80000740]:csrrs t5, vxsat, zero
	-[0x80000744]:sw t6, 312(gp)
Current Store : [0x80000748] : sw t5, 316(gp) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80000754]:KWMMUL_U t6, t5, t4
	-[0x80000758]:csrrs t5, vxsat, zero
	-[0x8000075c]:sw t6, 320(gp)
Current Store : [0x80000760] : sw t5, 324(gp) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2048', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000770]:KWMMUL_U t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 328(gp)
Current Store : [0x8000077c] : sw t5, 332(gp) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x80000788]:KWMMUL_U t6, t5, t4
	-[0x8000078c]:csrrs t5, vxsat, zero
	-[0x80000790]:sw t6, 336(gp)
Current Store : [0x80000794] : sw t5, 340(gp) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x800007a4]:KWMMUL_U t6, t5, t4
	-[0x800007a8]:csrrs t5, vxsat, zero
	-[0x800007ac]:sw t6, 344(gp)
Current Store : [0x800007b0] : sw t5, 348(gp) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x800007c0]:KWMMUL_U t6, t5, t4
	-[0x800007c4]:csrrs t5, vxsat, zero
	-[0x800007c8]:sw t6, 352(gp)
Current Store : [0x800007cc] : sw t5, 356(gp) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x800007dc]:KWMMUL_U t6, t5, t4
	-[0x800007e0]:csrrs t5, vxsat, zero
	-[0x800007e4]:sw t6, 360(gp)
Current Store : [0x800007e8] : sw t5, 364(gp) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800007f4]:KWMMUL_U t6, t5, t4
	-[0x800007f8]:csrrs t5, vxsat, zero
	-[0x800007fc]:sw t6, 368(gp)
Current Store : [0x80000800] : sw t5, 372(gp) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000810]:KWMMUL_U t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 376(gp)
Current Store : [0x8000081c] : sw t5, 380(gp) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80000828]:KWMMUL_U t6, t5, t4
	-[0x8000082c]:csrrs t5, vxsat, zero
	-[0x80000830]:sw t6, 384(gp)
Current Store : [0x80000834] : sw t5, 388(gp) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80000840]:KWMMUL_U t6, t5, t4
	-[0x80000844]:csrrs t5, vxsat, zero
	-[0x80000848]:sw t6, 392(gp)
Current Store : [0x8000084c] : sw t5, 396(gp) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x8000085c]:KWMMUL_U t6, t5, t4
	-[0x80000860]:csrrs t5, vxsat, zero
	-[0x80000864]:sw t6, 400(gp)
Current Store : [0x80000868] : sw t5, 404(gp) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['opcode : kwmmul.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 0', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000874]:KWMMUL_U t6, t5, t4
	-[0x80000878]:csrrs t5, vxsat, zero
	-[0x8000087c]:sw t6, 408(gp)
Current Store : [0x80000880] : sw t5, 412(gp) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -1']
Last Code Sequence : 
	-[0x8000088c]:KWMMUL_U t6, t5, t4
	-[0x80000890]:csrrs t5, vxsat, zero
	-[0x80000894]:sw t6, 416(gp)
Current Store : [0x80000898] : sw t5, 420(gp) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800008ac]:KWMMUL_U t6, t5, t4
	-[0x800008b0]:csrrs t5, vxsat, zero
	-[0x800008b4]:sw t6, 424(gp)
Current Store : [0x800008b8] : sw t5, 428(gp) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800008c8]:KWMMUL_U t6, t5, t4
	-[0x800008cc]:csrrs t5, vxsat, zero
	-[0x800008d0]:sw t6, 432(gp)
Current Store : [0x800008d4] : sw t5, 436(gp) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800008e8]:KWMMUL_U t6, t5, t4
	-[0x800008ec]:csrrs t5, vxsat, zero
	-[0x800008f0]:sw t6, 440(gp)
Current Store : [0x800008f4] : sw t5, 444(gp) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000908]:KWMMUL_U t6, t5, t4
	-[0x8000090c]:csrrs t5, vxsat, zero
	-[0x80000910]:sw t6, 448(gp)
Current Store : [0x80000914] : sw t5, 452(gp) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000928]:KWMMUL_U t6, t5, t4
	-[0x8000092c]:csrrs t5, vxsat, zero
	-[0x80000930]:sw t6, 456(gp)
Current Store : [0x80000934] : sw t5, 460(gp) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000944]:KWMMUL_U t6, t5, t4
	-[0x80000948]:csrrs t5, vxsat, zero
	-[0x8000094c]:sw t6, 464(gp)
Current Store : [0x80000950] : sw t5, 468(gp) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000960]:KWMMUL_U t6, t5, t4
	-[0x80000964]:csrrs t5, vxsat, zero
	-[0x80000968]:sw t6, 472(gp)
Current Store : [0x8000096c] : sw t5, 476(gp) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000980]:KWMMUL_U t6, t5, t4
	-[0x80000984]:csrrs t5, vxsat, zero
	-[0x80000988]:sw t6, 480(gp)
Current Store : [0x8000098c] : sw t5, 484(gp) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x8000099c]:KWMMUL_U t6, t5, t4
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sw t6, 488(gp)
Current Store : [0x800009a8] : sw t5, 492(gp) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800009bc]:KWMMUL_U t6, t5, t4
	-[0x800009c0]:csrrs t5, vxsat, zero
	-[0x800009c4]:sw t6, 496(gp)
Current Store : [0x800009c8] : sw t5, 500(gp) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800009d8]:KWMMUL_U t6, t5, t4
	-[0x800009dc]:csrrs t5, vxsat, zero
	-[0x800009e0]:sw t6, 504(gp)
Current Store : [0x800009e4] : sw t5, 508(gp) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800009f4]:KWMMUL_U t6, t5, t4
	-[0x800009f8]:csrrs t5, vxsat, zero
	-[0x800009fc]:sw t6, 512(gp)
Current Store : [0x80000a00] : sw t5, 516(gp) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000a10]:KWMMUL_U t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 520(gp)
Current Store : [0x80000a1c] : sw t5, 524(gp) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000a30]:KWMMUL_U t6, t5, t4
	-[0x80000a34]:csrrs t5, vxsat, zero
	-[0x80000a38]:sw t6, 528(gp)
Current Store : [0x80000a3c] : sw t5, 532(gp) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000a4c]:KWMMUL_U t6, t5, t4
	-[0x80000a50]:csrrs t5, vxsat, zero
	-[0x80000a54]:sw t6, 536(gp)
Current Store : [0x80000a58] : sw t5, 540(gp) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000a68]:KWMMUL_U t6, t5, t4
	-[0x80000a6c]:csrrs t5, vxsat, zero
	-[0x80000a70]:sw t6, 544(gp)
Current Store : [0x80000a74] : sw t5, 548(gp) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000a80]:KWMMUL_U t6, t5, t4
	-[0x80000a84]:csrrs t5, vxsat, zero
	-[0x80000a88]:sw t6, 552(gp)
Current Store : [0x80000a8c] : sw t5, 556(gp) -- Store: [0x800024cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000a98]:KWMMUL_U t6, t5, t4
	-[0x80000a9c]:csrrs t5, vxsat, zero
	-[0x80000aa0]:sw t6, 560(gp)
Current Store : [0x80000aa4] : sw t5, 564(gp) -- Store: [0x800024d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000ab4]:KWMMUL_U t6, t5, t4
	-[0x80000ab8]:csrrs t5, vxsat, zero
	-[0x80000abc]:sw t6, 568(gp)
Current Store : [0x80000ac0] : sw t5, 572(gp) -- Store: [0x800024dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000ad0]:KWMMUL_U t6, t5, t4
	-[0x80000ad4]:csrrs t5, vxsat, zero
	-[0x80000ad8]:sw t6, 576(gp)
Current Store : [0x80000adc] : sw t5, 580(gp) -- Store: [0x800024e4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000aec]:KWMMUL_U t6, t5, t4
	-[0x80000af0]:csrrs t5, vxsat, zero
	-[0x80000af4]:sw t6, 584(gp)
Current Store : [0x80000af8] : sw t5, 588(gp) -- Store: [0x800024ec]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000b04]:KWMMUL_U t6, t5, t4
	-[0x80000b08]:csrrs t5, vxsat, zero
	-[0x80000b0c]:sw t6, 592(gp)
Current Store : [0x80000b10] : sw t5, 596(gp) -- Store: [0x800024f4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000b20]:KWMMUL_U t6, t5, t4
	-[0x80000b24]:csrrs t5, vxsat, zero
	-[0x80000b28]:sw t6, 600(gp)
Current Store : [0x80000b2c] : sw t5, 604(gp) -- Store: [0x800024fc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000b38]:KWMMUL_U t6, t5, t4
	-[0x80000b3c]:csrrs t5, vxsat, zero
	-[0x80000b40]:sw t6, 608(gp)
Current Store : [0x80000b44] : sw t5, 612(gp) -- Store: [0x80002504]:0x00000000




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000b54]:KWMMUL_U t6, t5, t4
	-[0x80000b58]:csrrs t5, vxsat, zero
	-[0x80000b5c]:sw t6, 616(gp)
Current Store : [0x80000b60] : sw t5, 620(gp) -- Store: [0x8000250c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000b70]:KWMMUL_U t6, t5, t4
	-[0x80000b74]:csrrs t5, vxsat, zero
	-[0x80000b78]:sw t6, 624(gp)
Current Store : [0x80000b7c] : sw t5, 628(gp) -- Store: [0x80002514]:0x00000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000b88]:KWMMUL_U t6, t5, t4
	-[0x80000b8c]:csrrs t5, vxsat, zero
	-[0x80000b90]:sw t6, 632(gp)
Current Store : [0x80000b94] : sw t5, 636(gp) -- Store: [0x8000251c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000ba0]:KWMMUL_U t6, t5, t4
	-[0x80000ba4]:csrrs t5, vxsat, zero
	-[0x80000ba8]:sw t6, 640(gp)
Current Store : [0x80000bac] : sw t5, 644(gp) -- Store: [0x80002524]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000bbc]:KWMMUL_U t6, t5, t4
	-[0x80000bc0]:csrrs t5, vxsat, zero
	-[0x80000bc4]:sw t6, 648(gp)
Current Store : [0x80000bc8] : sw t5, 652(gp) -- Store: [0x8000252c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000bd8]:KWMMUL_U t6, t5, t4
	-[0x80000bdc]:csrrs t5, vxsat, zero
	-[0x80000be0]:sw t6, 656(gp)
Current Store : [0x80000be4] : sw t5, 660(gp) -- Store: [0x80002534]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000bf0]:KWMMUL_U t6, t5, t4
	-[0x80000bf4]:csrrs t5, vxsat, zero
	-[0x80000bf8]:sw t6, 664(gp)
Current Store : [0x80000bfc] : sw t5, 668(gp) -- Store: [0x8000253c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000c08]:KWMMUL_U t6, t5, t4
	-[0x80000c0c]:csrrs t5, vxsat, zero
	-[0x80000c10]:sw t6, 672(gp)
Current Store : [0x80000c14] : sw t5, 676(gp) -- Store: [0x80002544]:0x00000000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c24]:KWMMUL_U t6, t5, t4
	-[0x80000c28]:csrrs t5, vxsat, zero
	-[0x80000c2c]:sw t6, 680(gp)
Current Store : [0x80000c30] : sw t5, 684(gp) -- Store: [0x8000254c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000c3c]:KWMMUL_U t6, t5, t4
	-[0x80000c40]:csrrs t5, vxsat, zero
	-[0x80000c44]:sw t6, 688(gp)
Current Store : [0x80000c48] : sw t5, 692(gp) -- Store: [0x80002554]:0x00000000




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000c54]:KWMMUL_U t6, t5, t4
	-[0x80000c58]:csrrs t5, vxsat, zero
	-[0x80000c5c]:sw t6, 696(gp)
Current Store : [0x80000c60] : sw t5, 700(gp) -- Store: [0x8000255c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000c6c]:KWMMUL_U t6, t5, t4
	-[0x80000c70]:csrrs t5, vxsat, zero
	-[0x80000c74]:sw t6, 704(gp)
Current Store : [0x80000c78] : sw t5, 708(gp) -- Store: [0x80002564]:0x00000000




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000c84]:KWMMUL_U t6, t5, t4
	-[0x80000c88]:csrrs t5, vxsat, zero
	-[0x80000c8c]:sw t6, 712(gp)
Current Store : [0x80000c90] : sw t5, 716(gp) -- Store: [0x8000256c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000c9c]:KWMMUL_U t6, t5, t4
	-[0x80000ca0]:csrrs t5, vxsat, zero
	-[0x80000ca4]:sw t6, 720(gp)
Current Store : [0x80000ca8] : sw t5, 724(gp) -- Store: [0x80002574]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000cb4]:KWMMUL_U t6, t5, t4
	-[0x80000cb8]:csrrs t5, vxsat, zero
	-[0x80000cbc]:sw t6, 728(gp)
Current Store : [0x80000cc0] : sw t5, 732(gp) -- Store: [0x8000257c]:0x00000000




Last Coverpoint : ['opcode : kwmmul.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000cd0]:KWMMUL_U t6, t5, t4
	-[0x80000cd4]:csrrs t5, vxsat, zero
	-[0x80000cd8]:sw t6, 736(gp)
Current Store : [0x80000cdc] : sw t5, 740(gp) -- Store: [0x80002584]:0x00000000




Last Coverpoint : ['rs2_w0_val == -129']
Last Code Sequence : 
	-[0x80000ce8]:KWMMUL_U t6, t5, t4
	-[0x80000cec]:csrrs t5, vxsat, zero
	-[0x80000cf0]:sw t6, 744(gp)
Current Store : [0x80000cf4] : sw t5, 748(gp) -- Store: [0x8000258c]:0x00000000





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

|s.no|        signature         |                                                                       coverpoints                                                                        |                                                     code                                                      |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kwmmul.u<br> - rs1 : x3<br> - rs2 : x3<br> - rd : x3<br> - rs1 == rs2 == rd<br> - rs2_w0_val == 8192<br> - rs1_w0_val == 8192<br>              |[0x80000114]:KWMMUL_U gp, gp, gp<br> [0x80000118]:csrrs gp, vxsat, zero<br> [0x8000011c]:sw gp, 0(t2)<br>      |
|   2|[0x80002218]<br>0x38E38E3A|- rs1 : x21<br> - rs2 : x21<br> - rd : x30<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>                     |[0x80000130]:KWMMUL_U t5, s5, s5<br> [0x80000134]:csrrs s5, vxsat, zero<br> [0x80000138]:sw t5, 8(t2)<br>      |
|   3|[0x80002220]<br>0xFF555555|- rs1 : x14<br> - rs2 : x16<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == -16777217<br> |[0x80000150]:KWMMUL_U t3, a4, a6<br> [0x80000154]:csrrs a4, vxsat, zero<br> [0x80000158]:sw t3, 16(t2)<br>     |
|   4|[0x80002228]<br>0xFFBFFFFF|- rs1 : x6<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == -4194305<br>                          |[0x80000170]:KWMMUL_U s7, t1, s7<br> [0x80000174]:csrrs t1, vxsat, zero<br> [0x80000178]:sw s7, 24(t2)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x18<br> - rs2 : x25<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == -2097153<br>                        |[0x80000190]:KWMMUL_U s2, s2, s9<br> [0x80000194]:csrrs s2, vxsat, zero<br> [0x80000198]:sw s2, 32(t2)<br>     |
|   6|[0x80002238]<br>0x00000002|- rs1 : x29<br> - rs2 : x26<br> - rd : x6<br> - rs2_w0_val == -536870913<br>                                                                              |[0x800001ac]:KWMMUL_U t1, t4, s10<br> [0x800001b0]:csrrs t4, vxsat, zero<br> [0x800001b4]:sw t1, 40(t2)<br>    |
|   7|[0x80002240]<br>0xFFFFE95F|- rs1 : x16<br> - rs2 : x20<br> - rd : x15<br> - rs2_w0_val == -268435457<br>                                                                             |[0x800001cc]:KWMMUL_U a5, a6, s4<br> [0x800001d0]:csrrs a6, vxsat, zero<br> [0x800001d4]:sw a5, 48(t2)<br>     |
|   8|[0x80002248]<br>0x00000000|- rs1 : x17<br> - rs2 : x18<br> - rd : x12<br> - rs2_w0_val == -134217729<br>                                                                             |[0x800001e8]:KWMMUL_U a2, a7, s2<br> [0x800001ec]:csrrs a7, vxsat, zero<br> [0x800001f0]:sw a2, 56(t2)<br>     |
|   9|[0x80002250]<br>0xFFFFFC00|- rs1 : x12<br> - rs2 : x17<br> - rd : x19<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == 32768<br>                                                    |[0x80000204]:KWMMUL_U s3, a2, a7<br> [0x80000208]:csrrs a2, vxsat, zero<br> [0x8000020c]:sw s3, 64(t2)<br>     |
|  10|[0x80002258]<br>0x00000002|- rs1 : x1<br> - rs2 : x9<br> - rd : x26<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == -129<br>                                                       |[0x80000220]:KWMMUL_U s10, ra, s1<br> [0x80000224]:csrrs ra, vxsat, zero<br> [0x80000228]:sw s10, 72(t2)<br>   |
|  11|[0x80002260]<br>0x00000000|- rs1 : x11<br> - rs2 : x2<br> - rd : x0<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == 8<br>                                                          |[0x8000023c]:KWMMUL_U zero, a1, sp<br> [0x80000240]:csrrs a1, vxsat, zero<br> [0x80000244]:sw zero, 80(t2)<br> |
|  12|[0x80002268]<br>0x00000000|- rs1 : x0<br> - rs2 : x29<br> - rd : x25<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == 0<br>                                                          |[0x8000025c]:KWMMUL_U s9, zero, t4<br> [0x80000260]:csrrs zero, vxsat, zero<br> [0x80000264]:sw s9, 88(t2)<br> |
|  13|[0x80002270]<br>0xFFE66666|- rs1 : x4<br> - rs2 : x14<br> - rd : x17<br> - rs2_w0_val == -4194305<br>                                                                                |[0x8000027c]:KWMMUL_U a7, tp, a4<br> [0x80000280]:csrrs tp, vxsat, zero<br> [0x80000284]:sw a7, 96(t2)<br>     |
|  14|[0x80002278]<br>0x00155556|- rs1 : x5<br> - rs2 : x31<br> - rd : x16<br> - rs2_w0_val == -2097153<br>                                                                                |[0x8000029c]:KWMMUL_U a6, t0, t6<br> [0x800002a0]:csrrs t0, vxsat, zero<br> [0x800002a4]:sw a6, 104(t2)<br>    |
|  15|[0x80002280]<br>0x00000000|- rs1 : x31<br> - rs2 : x28<br> - rd : x8<br> - rs2_w0_val == -1048577<br>                                                                                |[0x800002b8]:KWMMUL_U fp, t6, t3<br> [0x800002bc]:csrrs t6, vxsat, zero<br> [0x800002c0]:sw fp, 112(t2)<br>    |
|  16|[0x80002288]<br>0xFFFFFFF5|- rs1 : x26<br> - rs2 : x27<br> - rd : x31<br> - rs2_w0_val == -524289<br>                                                                                |[0x800002d8]:KWMMUL_U t6, s10, s11<br> [0x800002dc]:csrrs s10, vxsat, zero<br> [0x800002e0]:sw t6, 120(t2)<br> |
|  17|[0x80002290]<br>0x00000000|- rs1 : x27<br> - rs2 : x30<br> - rd : x9<br> - rs2_w0_val == -262145<br>                                                                                 |[0x800002f4]:KWMMUL_U s1, s11, t5<br> [0x800002f8]:csrrs s11, vxsat, zero<br> [0x800002fc]:sw s1, 128(t2)<br>  |
|  18|[0x80002298]<br>0x00000000|- rs1 : x22<br> - rs2 : x24<br> - rd : x5<br> - rs2_w0_val == -131073<br>                                                                                 |[0x80000310]:KWMMUL_U t0, s6, s8<br> [0x80000314]:csrrs s6, vxsat, zero<br> [0x80000318]:sw t0, 136(t2)<br>    |
|  19|[0x800022a0]<br>0x00000000|- rs1 : x28<br> - rs2 : x5<br> - rd : x13<br> - rs2_w0_val == -65537<br> - rs1_w0_val == -33<br>                                                          |[0x80000334]:KWMMUL_U a3, t3, t0<br> [0x80000338]:csrrs t3, vxsat, zero<br> [0x8000033c]:sw a3, 0(gp)<br>      |
|  20|[0x800022a8]<br>0x00000000|- rs1 : x30<br> - rs2 : x22<br> - rd : x2<br> - rs2_w0_val == -32769<br> - rs1_w0_val == -9<br>                                                           |[0x80000350]:KWMMUL_U sp, t5, s6<br> [0x80000354]:csrrs t5, vxsat, zero<br> [0x80000358]:sw sp, 8(gp)<br>      |
|  21|[0x800022b0]<br>0x00000000|- rs1 : x13<br> - rs2 : x4<br> - rd : x24<br> - rs2_w0_val == -16385<br>                                                                                  |[0x8000036c]:KWMMUL_U s8, a3, tp<br> [0x80000370]:csrrs a3, vxsat, zero<br> [0x80000374]:sw s8, 16(gp)<br>     |
|  22|[0x800022b8]<br>0x00000000|- rs1 : x25<br> - rs2 : x13<br> - rd : x11<br> - rs2_w0_val == -8193<br> - rs1_w0_val == -17<br>                                                          |[0x80000388]:KWMMUL_U a1, s9, a3<br> [0x8000038c]:csrrs s9, vxsat, zero<br> [0x80000390]:sw a1, 24(gp)<br>     |
|  23|[0x800022c0]<br>0x00000000|- rs1 : x2<br> - rs2 : x11<br> - rd : x4<br> - rs2_w0_val == -4097<br>                                                                                    |[0x800003a8]:KWMMUL_U tp, sp, a1<br> [0x800003ac]:csrrs sp, vxsat, zero<br> [0x800003b0]:sw tp, 32(gp)<br>     |
|  24|[0x800022c8]<br>0x00000002|- rs1 : x15<br> - rs2 : x12<br> - rd : x7<br> - rs2_w0_val == -2049<br>                                                                                   |[0x800003c8]:KWMMUL_U t2, a5, a2<br> [0x800003cc]:csrrs a5, vxsat, zero<br> [0x800003d0]:sw t2, 40(gp)<br>     |
|  25|[0x800022d0]<br>0xFFFFFCCC|- rs1 : x19<br> - rs2 : x10<br> - rd : x29<br> - rs2_w0_val == -1025<br>                                                                                  |[0x800003e4]:KWMMUL_U t4, s3, a0<br> [0x800003e8]:csrrs s3, vxsat, zero<br> [0x800003ec]:sw t4, 48(gp)<br>     |
|  26|[0x800022d8]<br>0x00000000|- rs1 : x20<br> - rs2 : x15<br> - rd : x1<br> - rs2_w0_val == -513<br>                                                                                    |[0x80000400]:KWMMUL_U ra, s4, a5<br> [0x80000404]:csrrs s4, vxsat, zero<br> [0x80000408]:sw ra, 56(gp)<br>     |
|  27|[0x800022e0]<br>0x00000000|- rs1 : x24<br> - rs2 : x7<br> - rd : x20<br> - rs2_w0_val == -257<br> - rs1_w0_val == 131072<br>                                                         |[0x80000418]:KWMMUL_U s4, s8, t2<br> [0x8000041c]:csrrs s8, vxsat, zero<br> [0x80000420]:sw s4, 64(gp)<br>     |
|  28|[0x800022e8]<br>0x00000000|- rs1 : x9<br> - rs2 : x0<br> - rd : x21<br> - rs2_w0_val == 0<br> - rs1_w0_val == 134217728<br>                                                          |[0x80000430]:KWMMUL_U s5, s1, zero<br> [0x80000434]:csrrs s1, vxsat, zero<br> [0x80000438]:sw s5, 72(gp)<br>   |
|  29|[0x800022f0]<br>0x00000000|- rs1 : x23<br> - rs2 : x8<br> - rd : x27<br> - rs2_w0_val == -65<br> - rs1_w0_val == 1024<br>                                                            |[0x80000448]:KWMMUL_U s11, s7, fp<br> [0x8000044c]:csrrs s7, vxsat, zero<br> [0x80000450]:sw s11, 80(gp)<br>   |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x7<br> - rs2 : x6<br> - rd : x10<br> - rs2_w0_val == -33<br>                                                                                      |[0x80000464]:KWMMUL_U a0, t2, t1<br> [0x80000468]:csrrs t2, vxsat, zero<br> [0x8000046c]:sw a0, 88(gp)<br>     |
|  31|[0x80002300]<br>0x00000000|- rs1 : x8<br> - rs2 : x1<br> - rd : x14<br> - rs2_w0_val == -17<br>                                                                                      |[0x8000047c]:KWMMUL_U a4, fp, ra<br> [0x80000480]:csrrs fp, vxsat, zero<br> [0x80000484]:sw a4, 96(gp)<br>     |
|  32|[0x80002308]<br>0xFFFFFFFA|- rs1 : x10<br> - rs2 : x19<br> - rd : x22<br> - rs2_w0_val == -9<br> - rs1_w0_val == 1431655765<br>                                                      |[0x80000498]:KWMMUL_U s6, a0, s3<br> [0x8000049c]:csrrs a0, vxsat, zero<br> [0x800004a0]:sw s6, 104(gp)<br>    |
|  33|[0x80002310]<br>0xFFFFFFFC|- rs2_w0_val == -5<br>                                                                                                                                    |[0x800004b4]:KWMMUL_U t6, t5, t4<br> [0x800004b8]:csrrs t5, vxsat, zero<br> [0x800004bc]:sw t6, 112(gp)<br>    |
|  34|[0x80002318]<br>0x00000000|- rs2_w0_val == -3<br> - rs1_w0_val == -4097<br>                                                                                                          |[0x800004d0]:KWMMUL_U t6, t5, t4<br> [0x800004d4]:csrrs t5, vxsat, zero<br> [0x800004d8]:sw t6, 120(gp)<br>    |
|  35|[0x80002320]<br>0x00000000|- rs2_w0_val == -2<br>                                                                                                                                    |[0x800004e8]:KWMMUL_U t6, t5, t4<br> [0x800004ec]:csrrs t5, vxsat, zero<br> [0x800004f0]:sw t6, 128(gp)<br>    |
|  36|[0x80002328]<br>0xFFFFFFFE|- rs2_w0_val == -2147483648<br> - rs1_w0_val == 2<br>                                                                                                     |[0x80000500]:KWMMUL_U t6, t5, t4<br> [0x80000504]:csrrs t5, vxsat, zero<br> [0x80000508]:sw t6, 136(gp)<br>    |
|  37|[0x80002330]<br>0x00000400|- rs2_w0_val == 1073741824<br> - rs1_w0_val == 2048<br>                                                                                                   |[0x8000051c]:KWMMUL_U t6, t5, t4<br> [0x80000520]:csrrs t5, vxsat, zero<br> [0x80000524]:sw t6, 144(gp)<br>    |
|  38|[0x80002338]<br>0x10000000|- rs2_w0_val == 536870912<br>                                                                                                                             |[0x80000538]:KWMMUL_U t6, t5, t4<br> [0x8000053c]:csrrs t5, vxsat, zero<br> [0x80000540]:sw t6, 152(gp)<br>    |
|  39|[0x80002340]<br>0xFFFFFFFF|- rs2_w0_val == 268435456<br>                                                                                                                             |[0x80000550]:KWMMUL_U t6, t5, t4<br> [0x80000554]:csrrs t5, vxsat, zero<br> [0x80000558]:sw t6, 160(gp)<br>    |
|  40|[0x80002348]<br>0x00000000|- rs2_w0_val == 134217728<br>                                                                                                                             |[0x80000568]:KWMMUL_U t6, t5, t4<br> [0x8000056c]:csrrs t5, vxsat, zero<br> [0x80000570]:sw t6, 168(gp)<br>    |
|  41|[0x80002350]<br>0x000005A8|- rs2_w0_val == 67108864<br>                                                                                                                              |[0x80000584]:KWMMUL_U t6, t5, t4<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 176(gp)<br>    |
|  42|[0x80002358]<br>0x00000000|- rs2_w0_val == 33554432<br>                                                                                                                              |[0x8000059c]:KWMMUL_U t6, t5, t4<br> [0x800005a0]:csrrs t5, vxsat, zero<br> [0x800005a4]:sw t6, 184(gp)<br>    |
|  43|[0x80002360]<br>0xFFFFFE96|- rs2_w0_val == 16777216<br>                                                                                                                              |[0x800005b8]:KWMMUL_U t6, t5, t4<br> [0x800005bc]:csrrs t5, vxsat, zero<br> [0x800005c0]:sw t6, 192(gp)<br>    |
|  44|[0x80002368]<br>0x00000000|- rs2_w0_val == 8388608<br>                                                                                                                               |[0x800005d0]:KWMMUL_U t6, t5, t4<br> [0x800005d4]:csrrs t5, vxsat, zero<br> [0x800005d8]:sw t6, 200(gp)<br>    |
|  45|[0x80002370]<br>0xFFFFFFA5|- rs2_w0_val == 4194304<br>                                                                                                                               |[0x800005ec]:KWMMUL_U t6, t5, t4<br> [0x800005f0]:csrrs t5, vxsat, zero<br> [0x800005f4]:sw t6, 208(gp)<br>    |
|  46|[0x80002378]<br>0x00000100|- rs2_w0_val == 2097152<br> - rs1_w0_val == 262144<br>                                                                                                    |[0x80000604]:KWMMUL_U t6, t5, t4<br> [0x80000608]:csrrs t5, vxsat, zero<br> [0x8000060c]:sw t6, 216(gp)<br>    |
|  47|[0x80002380]<br>0x00066666|- rs2_w0_val == 1048576<br>                                                                                                                               |[0x80000620]:KWMMUL_U t6, t5, t4<br> [0x80000624]:csrrs t5, vxsat, zero<br> [0x80000628]:sw t6, 224(gp)<br>    |
|  48|[0x80002388]<br>0x00000001|- rs2_w0_val == 524288<br> - rs1_w0_val == 4096<br>                                                                                                       |[0x80000638]:KWMMUL_U t6, t5, t4<br> [0x8000063c]:csrrs t5, vxsat, zero<br> [0x80000640]:sw t6, 232(gp)<br>    |
|  49|[0x80002390]<br>0x00000010|- rs2_w0_val == 262144<br>                                                                                                                                |[0x80000650]:KWMMUL_U t6, t5, t4<br> [0x80000654]:csrrs t5, vxsat, zero<br> [0x80000658]:sw t6, 240(gp)<br>    |
|  50|[0x80002398]<br>0x00000003|- rs2_w0_val == 131072<br>                                                                                                                                |[0x8000066c]:KWMMUL_U t6, t5, t4<br> [0x80000670]:csrrs t5, vxsat, zero<br> [0x80000674]:sw t6, 248(gp)<br>    |
|  51|[0x800023a0]<br>0xFFFFFFFF|- rs2_w0_val == 65536<br>                                                                                                                                 |[0x80000688]:KWMMUL_U t6, t5, t4<br> [0x8000068c]:csrrs t5, vxsat, zero<br> [0x80000690]:sw t6, 256(gp)<br>    |
|  52|[0x800023a8]<br>0x00005555|- rs2_w0_val == 32768<br>                                                                                                                                 |[0x800006a4]:KWMMUL_U t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 264(gp)<br>    |
|  53|[0x800023b0]<br>0x00000000|- rs2_w0_val == 2<br> - rs1_w0_val == 32<br>                                                                                                              |[0x800006bc]:KWMMUL_U t6, t5, t4<br> [0x800006c0]:csrrs t5, vxsat, zero<br> [0x800006c4]:sw t6, 272(gp)<br>    |
|  54|[0x800023b8]<br>0x00000000|- rs1_w0_val == 16<br>                                                                                                                                    |[0x800006d8]:KWMMUL_U t6, t5, t4<br> [0x800006dc]:csrrs t5, vxsat, zero<br> [0x800006e0]:sw t6, 280(gp)<br>    |
|  55|[0x800023c0]<br>0x00000000|- rs1_w0_val == 4<br>                                                                                                                                     |[0x800006f0]:KWMMUL_U t6, t5, t4<br> [0x800006f4]:csrrs t5, vxsat, zero<br> [0x800006f8]:sw t6, 288(gp)<br>    |
|  56|[0x800023c8]<br>0x00000000|- rs1_w0_val == 1<br>                                                                                                                                     |[0x80000708]:KWMMUL_U t6, t5, t4<br> [0x8000070c]:csrrs t5, vxsat, zero<br> [0x80000710]:sw t6, 296(gp)<br>    |
|  57|[0x800023d0]<br>0x00000000|- rs2_w0_val == 16<br> - rs1_w0_val == -1<br>                                                                                                             |[0x80000720]:KWMMUL_U t6, t5, t4<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sw t6, 304(gp)<br>    |
|  58|[0x800023d8]<br>0x00002AAB|- rs2_w0_val == 16384<br>                                                                                                                                 |[0x8000073c]:KWMMUL_U t6, t5, t4<br> [0x80000740]:csrrs t5, vxsat, zero<br> [0x80000744]:sw t6, 312(gp)<br>    |
|  59|[0x800023e0]<br>0x00000000|- rs2_w0_val == 4096<br>                                                                                                                                  |[0x80000754]:KWMMUL_U t6, t5, t4<br> [0x80000758]:csrrs t5, vxsat, zero<br> [0x8000075c]:sw t6, 320(gp)<br>    |
|  60|[0x800023e8]<br>0x00000008|- rs2_w0_val == 2048<br> - rs1_w0_val == 8388608<br>                                                                                                      |[0x80000770]:KWMMUL_U t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 328(gp)<br>    |
|  61|[0x800023f0]<br>0x00000000|- rs2_w0_val == 1024<br>                                                                                                                                  |[0x80000788]:KWMMUL_U t6, t5, t4<br> [0x8000078c]:csrrs t5, vxsat, zero<br> [0x80000790]:sw t6, 336(gp)<br>    |
|  62|[0x800023f8]<br>0x0000019A|- rs2_w0_val == 512<br>                                                                                                                                   |[0x800007a4]:KWMMUL_U t6, t5, t4<br> [0x800007a8]:csrrs t5, vxsat, zero<br> [0x800007ac]:sw t6, 344(gp)<br>    |
|  63|[0x80002400]<br>0x00000000|- rs2_w0_val == 256<br>                                                                                                                                   |[0x800007c0]:KWMMUL_U t6, t5, t4<br> [0x800007c4]:csrrs t5, vxsat, zero<br> [0x800007c8]:sw t6, 352(gp)<br>    |
|  64|[0x80002408]<br>0xFFFFFFAB|- rs2_w0_val == 128<br>                                                                                                                                   |[0x800007dc]:KWMMUL_U t6, t5, t4<br> [0x800007e0]:csrrs t5, vxsat, zero<br> [0x800007e4]:sw t6, 360(gp)<br>    |
|  65|[0x80002410]<br>0x00000000|- rs2_w0_val == 64<br> - rs1_w0_val == -65<br>                                                                                                            |[0x800007f4]:KWMMUL_U t6, t5, t4<br> [0x800007f8]:csrrs t5, vxsat, zero<br> [0x800007fc]:sw t6, 368(gp)<br>    |
|  66|[0x80002418]<br>0xFFFFFFF8|- rs2_w0_val == 32<br> - rs1_w0_val == -536870913<br>                                                                                                     |[0x80000810]:KWMMUL_U t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 376(gp)<br>    |
|  67|[0x80002420]<br>0x00000000|- rs2_w0_val == 8<br>                                                                                                                                     |[0x80000828]:KWMMUL_U t6, t5, t4<br> [0x8000082c]:csrrs t5, vxsat, zero<br> [0x80000830]:sw t6, 384(gp)<br>    |
|  68|[0x80002428]<br>0x00000000|- rs2_w0_val == 4<br>                                                                                                                                     |[0x80000840]:KWMMUL_U t6, t5, t4<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sw t6, 392(gp)<br>    |
|  69|[0x80002430]<br>0xFFFFFFFF|- rs2_w0_val == 1<br>                                                                                                                                     |[0x8000085c]:KWMMUL_U t6, t5, t4<br> [0x80000860]:csrrs t5, vxsat, zero<br> [0x80000864]:sw t6, 400(gp)<br>    |
|  70|[0x80002440]<br>0x00000000|- rs2_w0_val == -1<br>                                                                                                                                    |[0x8000088c]:KWMMUL_U t6, t5, t4<br> [0x80000890]:csrrs t5, vxsat, zero<br> [0x80000894]:sw t6, 416(gp)<br>    |
|  71|[0x80002448]<br>0xFFFFEFFF|- rs1_w0_val == 2147483647<br>                                                                                                                            |[0x800008ac]:KWMMUL_U t6, t5, t4<br> [0x800008b0]:csrrs t5, vxsat, zero<br> [0x800008b4]:sw t6, 424(gp)<br>    |
|  72|[0x80002450]<br>0xFFFFFFFC|- rs1_w0_val == -1073741825<br>                                                                                                                           |[0x800008c8]:KWMMUL_U t6, t5, t4<br> [0x800008cc]:csrrs t5, vxsat, zero<br> [0x800008d0]:sw t6, 432(gp)<br>    |
|  73|[0x80002458]<br>0x00200000|- rs1_w0_val == -268435457<br>                                                                                                                            |[0x800008e8]:KWMMUL_U t6, t5, t4<br> [0x800008ec]:csrrs t5, vxsat, zero<br> [0x800008f0]:sw t6, 440(gp)<br>    |
|  74|[0x80002460]<br>0x00000B50|- rs1_w0_val == -134217729<br>                                                                                                                            |[0x80000908]:KWMMUL_U t6, t5, t4<br> [0x8000090c]:csrrs t5, vxsat, zero<br> [0x80000910]:sw t6, 448(gp)<br>    |
|  75|[0x80002468]<br>0x00800000|- rs1_w0_val == -67108865<br>                                                                                                                             |[0x80000928]:KWMMUL_U t6, t5, t4<br> [0x8000092c]:csrrs t5, vxsat, zero<br> [0x80000930]:sw t6, 456(gp)<br>    |
|  76|[0x80002470]<br>0xFFF80000|- rs1_w0_val == -33554433<br>                                                                                                                             |[0x80000944]:KWMMUL_U t6, t5, t4<br> [0x80000948]:csrrs t5, vxsat, zero<br> [0x8000094c]:sw t6, 464(gp)<br>    |
|  77|[0x80002478]<br>0xFFFC0000|- rs1_w0_val == -8388609<br>                                                                                                                              |[0x80000960]:KWMMUL_U t6, t5, t4<br> [0x80000964]:csrrs t5, vxsat, zero<br> [0x80000968]:sw t6, 472(gp)<br>    |
|  78|[0x80002480]<br>0x00000004|- rs1_w0_val == -1048577<br>                                                                                                                              |[0x80000980]:KWMMUL_U t6, t5, t4<br> [0x80000984]:csrrs t5, vxsat, zero<br> [0x80000988]:sw t6, 480(gp)<br>    |
|  79|[0x80002488]<br>0x00000000|- rs1_w0_val == -524289<br>                                                                                                                               |[0x8000099c]:KWMMUL_U t6, t5, t4<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sw t6, 488(gp)<br>    |
|  80|[0x80002490]<br>0x00002000|- rs1_w0_val == -262145<br>                                                                                                                               |[0x800009bc]:KWMMUL_U t6, t5, t4<br> [0x800009c0]:csrrs t5, vxsat, zero<br> [0x800009c4]:sw t6, 496(gp)<br>    |
|  81|[0x80002498]<br>0x00000000|- rs1_w0_val == -131073<br>                                                                                                                               |[0x800009d8]:KWMMUL_U t6, t5, t4<br> [0x800009dc]:csrrs t5, vxsat, zero<br> [0x800009e0]:sw t6, 504(gp)<br>    |
|  82|[0x800024a0]<br>0xFFFFFE00|- rs1_w0_val == -65537<br>                                                                                                                                |[0x800009f4]:KWMMUL_U t6, t5, t4<br> [0x800009f8]:csrrs t5, vxsat, zero<br> [0x800009fc]:sw t6, 512(gp)<br>    |
|  83|[0x800024a8]<br>0x00000000|- rs1_w0_val == -32769<br>                                                                                                                                |[0x80000a10]:KWMMUL_U t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 520(gp)<br>    |
|  84|[0x800024b0]<br>0xFFFFCCCC|- rs1_w0_val == -16385<br>                                                                                                                                |[0x80000a30]:KWMMUL_U t6, t5, t4<br> [0x80000a34]:csrrs t5, vxsat, zero<br> [0x80000a38]:sw t6, 528(gp)<br>    |
|  85|[0x800024b8]<br>0xFFFFFC00|- rs1_w0_val == -8193<br>                                                                                                                                 |[0x80000a4c]:KWMMUL_U t6, t5, t4<br> [0x80000a50]:csrrs t5, vxsat, zero<br> [0x80000a54]:sw t6, 536(gp)<br>    |
|  86|[0x800024c0]<br>0x00000000|- rs1_w0_val == -2049<br>                                                                                                                                 |[0x80000a68]:KWMMUL_U t6, t5, t4<br> [0x80000a6c]:csrrs t5, vxsat, zero<br> [0x80000a70]:sw t6, 544(gp)<br>    |
|  87|[0x800024c8]<br>0x00000000|- rs1_w0_val == -1025<br>                                                                                                                                 |[0x80000a80]:KWMMUL_U t6, t5, t4<br> [0x80000a84]:csrrs t5, vxsat, zero<br> [0x80000a88]:sw t6, 552(gp)<br>    |
|  88|[0x800024d0]<br>0x00000000|- rs1_w0_val == -513<br>                                                                                                                                  |[0x80000a98]:KWMMUL_U t6, t5, t4<br> [0x80000a9c]:csrrs t5, vxsat, zero<br> [0x80000aa0]:sw t6, 560(gp)<br>    |
|  89|[0x800024d8]<br>0x00000008|- rs1_w0_val == -257<br>                                                                                                                                  |[0x80000ab4]:KWMMUL_U t6, t5, t4<br> [0x80000ab8]:csrrs t5, vxsat, zero<br> [0x80000abc]:sw t6, 568(gp)<br>    |
|  90|[0x800024e0]<br>0x00000000|- rs1_w0_val == -5<br>                                                                                                                                    |[0x80000ad0]:KWMMUL_U t6, t5, t4<br> [0x80000ad4]:csrrs t5, vxsat, zero<br> [0x80000ad8]:sw t6, 576(gp)<br>    |
|  91|[0x800024e8]<br>0x00000000|- rs1_w0_val == -3<br>                                                                                                                                    |[0x80000aec]:KWMMUL_U t6, t5, t4<br> [0x80000af0]:csrrs t5, vxsat, zero<br> [0x80000af4]:sw t6, 584(gp)<br>    |
|  92|[0x800024f0]<br>0x00000000|- rs1_w0_val == -2<br>                                                                                                                                    |[0x80000b04]:KWMMUL_U t6, t5, t4<br> [0x80000b08]:csrrs t5, vxsat, zero<br> [0x80000b0c]:sw t6, 592(gp)<br>    |
|  93|[0x800024f8]<br>0x00005A82|- rs1_w0_val == 1073741824<br>                                                                                                                            |[0x80000b20]:KWMMUL_U t6, t5, t4<br> [0x80000b24]:csrrs t5, vxsat, zero<br> [0x80000b28]:sw t6, 600(gp)<br>    |
|  94|[0x80002500]<br>0x10000000|- rs1_w0_val == 536870912<br>                                                                                                                             |[0x80000b38]:KWMMUL_U t6, t5, t4<br> [0x80000b3c]:csrrs t5, vxsat, zero<br> [0x80000b40]:sw t6, 608(gp)<br>    |
|  95|[0x80002508]<br>0x0CCCCCCD|- rs1_w0_val == 268435456<br>                                                                                                                             |[0x80000b54]:KWMMUL_U t6, t5, t4<br> [0x80000b58]:csrrs t5, vxsat, zero<br> [0x80000b5c]:sw t6, 616(gp)<br>    |
|  96|[0x80002510]<br>0xFFFFF000|- rs1_w0_val == 67108864<br>                                                                                                                              |[0x80000b70]:KWMMUL_U t6, t5, t4<br> [0x80000b74]:csrrs t5, vxsat, zero<br> [0x80000b78]:sw t6, 624(gp)<br>    |
|  97|[0x80002518]<br>0x00010000|- rs1_w0_val == 33554432<br>                                                                                                                              |[0x80000b88]:KWMMUL_U t6, t5, t4<br> [0x80000b8c]:csrrs t5, vxsat, zero<br> [0x80000b90]:sw t6, 632(gp)<br>    |
|  98|[0x80002520]<br>0x00000000|- rs1_w0_val == 16777216<br>                                                                                                                              |[0x80000ba0]:KWMMUL_U t6, t5, t4<br> [0x80000ba4]:csrrs t5, vxsat, zero<br> [0x80000ba8]:sw t6, 640(gp)<br>    |
|  99|[0x80002528]<br>0x00333333|- rs1_w0_val == 4194304<br>                                                                                                                               |[0x80000bbc]:KWMMUL_U t6, t5, t4<br> [0x80000bc0]:csrrs t5, vxsat, zero<br> [0x80000bc4]:sw t6, 648(gp)<br>    |
| 100|[0x80002530]<br>0xFFFFE000|- rs1_w0_val == 2097152<br>                                                                                                                               |[0x80000bd8]:KWMMUL_U t6, t5, t4<br> [0x80000bdc]:csrrs t5, vxsat, zero<br> [0x80000be0]:sw t6, 656(gp)<br>    |
| 101|[0x80002538]<br>0x00000100|- rs1_w0_val == 1048576<br>                                                                                                                               |[0x80000bf0]:KWMMUL_U t6, t5, t4<br> [0x80000bf4]:csrrs t5, vxsat, zero<br> [0x80000bf8]:sw t6, 664(gp)<br>    |
| 102|[0x80002540]<br>0x00000000|- rs1_w0_val == 524288<br>                                                                                                                                |[0x80000c08]:KWMMUL_U t6, t5, t4<br> [0x80000c0c]:csrrs t5, vxsat, zero<br> [0x80000c10]:sw t6, 672(gp)<br>    |
| 103|[0x80002548]<br>0x00006666|- rs1_w0_val == 65536<br>                                                                                                                                 |[0x80000c24]:KWMMUL_U t6, t5, t4<br> [0x80000c28]:csrrs t5, vxsat, zero<br> [0x80000c2c]:sw t6, 680(gp)<br>    |
| 104|[0x80002550]<br>0x00000000|- rs1_w0_val == 16384<br>                                                                                                                                 |[0x80000c3c]:KWMMUL_U t6, t5, t4<br> [0x80000c40]:csrrs t5, vxsat, zero<br> [0x80000c44]:sw t6, 688(gp)<br>    |
| 105|[0x80002558]<br>0xFFFFFF00|- rs1_w0_val == 512<br>                                                                                                                                   |[0x80000c54]:KWMMUL_U t6, t5, t4<br> [0x80000c58]:csrrs t5, vxsat, zero<br> [0x80000c5c]:sw t6, 696(gp)<br>    |
| 106|[0x80002560]<br>0x00000010|- rs1_w0_val == 256<br>                                                                                                                                   |[0x80000c6c]:KWMMUL_U t6, t5, t4<br> [0x80000c70]:csrrs t5, vxsat, zero<br> [0x80000c74]:sw t6, 704(gp)<br>    |
| 107|[0x80002568]<br>0x00000010|- rs1_w0_val == 128<br>                                                                                                                                   |[0x80000c84]:KWMMUL_U t6, t5, t4<br> [0x80000c88]:csrrs t5, vxsat, zero<br> [0x80000c8c]:sw t6, 712(gp)<br>    |
| 108|[0x80002570]<br>0x00000000|- rs1_w0_val == 64<br>                                                                                                                                    |[0x80000c9c]:KWMMUL_U t6, t5, t4<br> [0x80000ca0]:csrrs t5, vxsat, zero<br> [0x80000ca4]:sw t6, 720(gp)<br>    |
| 109|[0x80002578]<br>0xFFFFE000|- rs1_w0_val == -2147483648<br>                                                                                                                           |[0x80000cb4]:KWMMUL_U t6, t5, t4<br> [0x80000cb8]:csrrs t5, vxsat, zero<br> [0x80000cbc]:sw t6, 728(gp)<br>    |
| 110|[0x80002588]<br>0xFFFFFFF8|- rs2_w0_val == -129<br>                                                                                                                                  |[0x80000ce8]:KWMMUL_U t6, t5, t4<br> [0x80000cec]:csrrs t5, vxsat, zero<br> [0x80000cf0]:sw t6, 744(gp)<br>    |
