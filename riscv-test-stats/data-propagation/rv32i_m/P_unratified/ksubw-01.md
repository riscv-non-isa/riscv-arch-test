
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000bf0')]      |
| SIG_REGION                | [('0x80002210', '0x80002550', '208 words')]      |
| COV_LABELS                | ksubw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ksubw-01.S    |
| Total Number of coverpoints| 250     |
| Total Coverpoints Hit     | 244      |
| Total Signature Updates   | 206      |
| STAT1                     | 98      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 103     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006b4]:KSUBW t6, t5, t4
      [0x800006b8]:csrrs t5, vxsat, zero
      [0x800006bc]:sw t6, 280(s1)
 -- Signature Address: 0x800023b8 Data: 0x00000801
 -- Redundant Coverpoints hit by the op
      - opcode : ksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val
      - rs2_w0_val == -2049
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008ec]:KSUBW t6, t5, t4
      [0x800008f0]:csrrs t5, vxsat, zero
      [0x800008f4]:sw t6, 456(s1)
 -- Signature Address: 0x80002468 Data: 0xFF7FFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val
      - rs2_w0_val == 0
      - rs1_w0_val == -8388609




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b80]:KSUBW t6, t5, t4
      [0x80000b84]:csrrs t5, vxsat, zero
      [0x80000b88]:sw t6, 648(s1)
 -- Signature Address: 0x80002528 Data: 0x80000000
 -- Redundant Coverpoints hit by the op
      - opcode : ksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w0_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b98]:KSUBW t6, t5, t4
      [0x80000b9c]:csrrs t5, vxsat, zero
      [0x80000ba0]:sw t6, 656(s1)
 -- Signature Address: 0x80002530 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : ksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w0_val == 4096
      - rs1_w0_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bd4]:KSUBW t6, t5, t4
      [0x80000bd8]:csrrs t5, vxsat, zero
      [0x80000bdc]:sw t6, 672(s1)
 -- Signature Address: 0x80002540 Data: 0xFFF80080
 -- Redundant Coverpoints hit by the op
      - opcode : ksubw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val < 0
      - rs2_w0_val == -129
      - rs1_w0_val == -524289






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ksubw', 'rs1 : x11', 'rs2 : x11', 'rd : x11', 'rs1 == rs2 == rd', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4096', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000114]:KSUBW a1, a1, a1
	-[0x80000118]:csrrs a1, vxsat, zero
	-[0x8000011c]:sw a1, 0(ra)
Current Store : [0x80000120] : sw a1, 4(ra) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x13', 'rd : x12', 'rs1 == rs2 != rd']
Last Code Sequence : 
	-[0x8000012c]:KSUBW a2, a3, a3
	-[0x80000130]:csrrs a3, vxsat, zero
	-[0x80000134]:sw a2, 8(ra)
Current Store : [0x80000138] : sw a3, 12(ra) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x5', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w0_val == -5']
Last Code Sequence : 
	-[0x80000144]:KSUBW t6, s1, t0
	-[0x80000148]:csrrs s1, vxsat, zero
	-[0x8000014c]:sw t6, 16(ra)
Current Store : [0x80000150] : sw s1, 20(ra) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x23', 'rd : x23', 'rs2 == rd != rs1', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w0_val == -1', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x8000015c]:KSUBW s7, s4, s7
	-[0x80000160]:csrrs s4, vxsat, zero
	-[0x80000164]:sw s7, 24(ra)
Current Store : [0x80000168] : sw s4, 28(ra) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x6', 'rd : x30', 'rs1 == rd != rs2', 'rs2_w0_val == -1431655766', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000178]:KSUBW t5, t5, t1
	-[0x8000017c]:csrrs t5, vxsat, zero
	-[0x80000180]:sw t5, 32(ra)
Current Store : [0x80000184] : sw t5, 36(ra) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x12', 'rd : x29', 'rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000194]:KSUBW t4, t0, a2
	-[0x80000198]:csrrs t0, vxsat, zero
	-[0x8000019c]:sw t4, 40(ra)
Current Store : [0x800001a0] : sw t0, 44(ra) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x15', 'rd : x25', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800001b0]:KSUBW s9, s2, a5
	-[0x800001b4]:csrrs s2, vxsat, zero
	-[0x800001b8]:sw s9, 48(ra)
Current Store : [0x800001bc] : sw s2, 52(ra) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rs2 : x22', 'rd : x4', 'rs2_w0_val == -1073741825', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800001d0]:KSUBW tp, a2, s6
	-[0x800001d4]:csrrs a2, vxsat, zero
	-[0x800001d8]:sw tp, 56(ra)
Current Store : [0x800001dc] : sw a2, 60(ra) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x16', 'rd : x21', 'rs2_w0_val == -536870913', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800001ec]:KSUBW s5, a0, a6
	-[0x800001f0]:csrrs a0, vxsat, zero
	-[0x800001f4]:sw s5, 64(ra)
Current Store : [0x800001f8] : sw a0, 68(ra) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rs2 : x8', 'rd : x9', 'rs2_w0_val == -268435457', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x8000020c]:KSUBW s1, t3, fp
	-[0x80000210]:csrrs t3, vxsat, zero
	-[0x80000214]:sw s1, 72(ra)
Current Store : [0x80000218] : sw t3, 76(ra) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x3', 'rd : x28', 'rs2_w0_val == -134217729', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000228]:KSUBW t3, s7, gp
	-[0x8000022c]:csrrs s7, vxsat, zero
	-[0x80000230]:sw t3, 80(ra)
Current Store : [0x80000234] : sw s7, 84(ra) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x31', 'rd : x8', 'rs2_w0_val == -67108865', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000244]:KSUBW fp, a5, t6
	-[0x80000248]:csrrs a5, vxsat, zero
	-[0x8000024c]:sw fp, 88(ra)
Current Store : [0x80000250] : sw a5, 92(ra) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x25', 'rd : x14', 'rs2_w0_val == -33554433', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000260]:KSUBW a4, s6, s9
	-[0x80000264]:csrrs s6, vxsat, zero
	-[0x80000268]:sw a4, 96(ra)
Current Store : [0x8000026c] : sw s6, 100(ra) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x18', 'rd : x10', 'rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x8000027c]:KSUBW a0, s10, s2
	-[0x80000280]:csrrs s10, vxsat, zero
	-[0x80000284]:sw a0, 104(ra)
Current Store : [0x80000288] : sw s10, 108(ra) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x24', 'rd : x16', 'rs2_w0_val == -8388609', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000298]:KSUBW a6, s9, s8
	-[0x8000029c]:csrrs s9, vxsat, zero
	-[0x800002a0]:sw a6, 112(ra)
Current Store : [0x800002a4] : sw s9, 116(ra) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rs2 : x20', 'rd : x19', 'rs2_w0_val == -4194305', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800002b4]:KSUBW s3, tp, s4
	-[0x800002b8]:csrrs tp, vxsat, zero
	-[0x800002bc]:sw s3, 120(ra)
Current Store : [0x800002c0] : sw tp, 124(ra) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x30', 'rd : x15', 'rs2_w0_val == -2097153', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800002d4]:KSUBW a5, s3, t5
	-[0x800002d8]:csrrs s3, vxsat, zero
	-[0x800002dc]:sw a5, 128(ra)
Current Store : [0x800002e0] : sw s3, 132(ra) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x9', 'rd : x7', 'rs2_w0_val == -1048577']
Last Code Sequence : 
	-[0x800002f0]:KSUBW t2, s11, s1
	-[0x800002f4]:csrrs s11, vxsat, zero
	-[0x800002f8]:sw t2, 136(ra)
Current Store : [0x800002fc] : sw s11, 140(ra) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x19', 'rd : x13', 'rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x80000314]:KSUBW a3, t2, s3
	-[0x80000318]:csrrs t2, vxsat, zero
	-[0x8000031c]:sw a3, 0(s1)
Current Store : [0x80000320] : sw t2, 4(s1) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x27', 'rd : x1', 'rs2_w0_val == -262145', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000330]:KSUBW ra, a7, s11
	-[0x80000334]:csrrs a7, vxsat, zero
	-[0x80000338]:sw ra, 8(s1)
Current Store : [0x8000033c] : sw a7, 12(s1) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rs2 : x10', 'rd : x20', 'rs2_w0_val == -131073', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000350]:KSUBW s4, s5, a0
	-[0x80000354]:csrrs s5, vxsat, zero
	-[0x80000358]:sw s4, 16(s1)
Current Store : [0x8000035c] : sw s5, 20(s1) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x29', 'rd : x6', 'rs2_w0_val == -65537']
Last Code Sequence : 
	-[0x80000370]:KSUBW t1, sp, t4
	-[0x80000374]:csrrs sp, vxsat, zero
	-[0x80000378]:sw t1, 24(s1)
Current Store : [0x8000037c] : sw sp, 28(s1) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x0', 'rd : x2', 'rs2_w0_val == 0', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000390]:KSUBW sp, t6, zero
	-[0x80000394]:csrrs t6, vxsat, zero
	-[0x80000398]:sw sp, 32(s1)
Current Store : [0x8000039c] : sw t6, 36(s1) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x17', 'rd : x5', 'rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x800003ac]:KSUBW t0, t1, a7
	-[0x800003b0]:csrrs t1, vxsat, zero
	-[0x800003b4]:sw t0, 40(s1)
Current Store : [0x800003b8] : sw t1, 44(s1) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rs2 : x21', 'rd : x26', 'rs2_w0_val == -8193', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800003c8]:KSUBW s10, a4, s5
	-[0x800003cc]:csrrs a4, vxsat, zero
	-[0x800003d0]:sw s10, 48(s1)
Current Store : [0x800003d4] : sw a4, 52(s1) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x2', 'rd : x24', 'rs2_w0_val == -4097', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800003e8]:KSUBW s8, zero, sp
	-[0x800003ec]:csrrs zero, vxsat, zero
	-[0x800003f0]:sw s8, 56(s1)
Current Store : [0x800003f4] : sw zero, 60(s1) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x28', 'rd : x18', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x80000404]:KSUBW s2, t4, t3
	-[0x80000408]:csrrs t4, vxsat, zero
	-[0x8000040c]:sw s2, 64(s1)
Current Store : [0x80000410] : sw t4, 68(s1) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x26', 'rd : x3', 'rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x8000041c]:KSUBW gp, s8, s10
	-[0x80000420]:csrrs s8, vxsat, zero
	-[0x80000424]:sw gp, 72(s1)
Current Store : [0x80000428] : sw s8, 76(s1) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x1', 'rd : x17', 'rs2_w0_val == -513', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000434]:KSUBW a7, fp, ra
	-[0x80000438]:csrrs fp, vxsat, zero
	-[0x8000043c]:sw a7, 80(s1)
Current Store : [0x80000440] : sw fp, 84(s1) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x7', 'rd : x22', 'rs2_w0_val == -257', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x8000044c]:KSUBW s6, a6, t2
	-[0x80000450]:csrrs a6, vxsat, zero
	-[0x80000454]:sw s6, 88(s1)
Current Store : [0x80000458] : sw a6, 92(s1) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x14', 'rd : x0', 'rs2_w0_val == -129', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000468]:KSUBW zero, ra, a4
	-[0x8000046c]:csrrs ra, vxsat, zero
	-[0x80000470]:sw zero, 96(s1)
Current Store : [0x80000474] : sw ra, 100(s1) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x4', 'rd : x27', 'rs2_w0_val == -65']
Last Code Sequence : 
	-[0x80000480]:KSUBW s11, gp, tp
	-[0x80000484]:csrrs gp, vxsat, zero
	-[0x80000488]:sw s11, 104(s1)
Current Store : [0x8000048c] : sw gp, 108(s1) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -33', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000498]:KSUBW t6, t5, t4
	-[0x8000049c]:csrrs t5, vxsat, zero
	-[0x800004a0]:sw t6, 112(s1)
Current Store : [0x800004a4] : sw t5, 116(s1) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_w0_val == -17', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800004b4]:KSUBW t6, t5, t4
	-[0x800004b8]:csrrs t5, vxsat, zero
	-[0x800004bc]:sw t6, 120(s1)
Current Store : [0x800004c0] : sw t5, 124(s1) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -9', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800004d0]:KSUBW t6, t5, t4
	-[0x800004d4]:csrrs t5, vxsat, zero
	-[0x800004d8]:sw t6, 128(s1)
Current Store : [0x800004dc] : sw t5, 132(s1) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800004ec]:KSUBW t6, t5, t4
	-[0x800004f0]:csrrs t5, vxsat, zero
	-[0x800004f4]:sw t6, 136(s1)
Current Store : [0x800004f8] : sw t5, 140(s1) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000504]:KSUBW t6, t5, t4
	-[0x80000508]:csrrs t5, vxsat, zero
	-[0x8000050c]:sw t6, 144(s1)
Current Store : [0x80000510] : sw t5, 148(s1) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x8000051c]:KSUBW t6, t5, t4
	-[0x80000520]:csrrs t5, vxsat, zero
	-[0x80000524]:sw t6, 152(s1)
Current Store : [0x80000528] : sw t5, 156(s1) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000534]:KSUBW t6, t5, t4
	-[0x80000538]:csrrs t5, vxsat, zero
	-[0x8000053c]:sw t6, 160(s1)
Current Store : [0x80000540] : sw t5, 164(s1) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x8000054c]:KSUBW t6, t5, t4
	-[0x80000550]:csrrs t5, vxsat, zero
	-[0x80000554]:sw t6, 168(s1)
Current Store : [0x80000558] : sw t5, 172(s1) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000564]:KSUBW t6, t5, t4
	-[0x80000568]:csrrs t5, vxsat, zero
	-[0x8000056c]:sw t6, 176(s1)
Current Store : [0x80000570] : sw t5, 180(s1) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000580]:KSUBW t6, t5, t4
	-[0x80000584]:csrrs t5, vxsat, zero
	-[0x80000588]:sw t6, 184(s1)
Current Store : [0x8000058c] : sw t5, 188(s1) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000598]:KSUBW t6, t5, t4
	-[0x8000059c]:csrrs t5, vxsat, zero
	-[0x800005a0]:sw t6, 192(s1)
Current Store : [0x800005a4] : sw t5, 196(s1) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800005b0]:KSUBW t6, t5, t4
	-[0x800005b4]:csrrs t5, vxsat, zero
	-[0x800005b8]:sw t6, 200(s1)
Current Store : [0x800005bc] : sw t5, 204(s1) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x800005c8]:KSUBW t6, t5, t4
	-[0x800005cc]:csrrs t5, vxsat, zero
	-[0x800005d0]:sw t6, 208(s1)
Current Store : [0x800005d4] : sw t5, 212(s1) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800005e0]:KSUBW t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 216(s1)
Current Store : [0x800005ec] : sw t5, 220(s1) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000600]:KSUBW t6, t5, t4
	-[0x80000604]:csrrs t5, vxsat, zero
	-[0x80000608]:sw t6, 224(s1)
Current Store : [0x8000060c] : sw t5, 228(s1) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000618]:KSUBW t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 232(s1)
Current Store : [0x80000624] : sw t5, 236(s1) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000634]:KSUBW t6, t5, t4
	-[0x80000638]:csrrs t5, vxsat, zero
	-[0x8000063c]:sw t6, 240(s1)
Current Store : [0x80000640] : sw t5, 244(s1) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000650]:KSUBW t6, t5, t4
	-[0x80000654]:csrrs t5, vxsat, zero
	-[0x80000658]:sw t6, 248(s1)
Current Store : [0x8000065c] : sw t5, 252(s1) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000668]:KSUBW t6, t5, t4
	-[0x8000066c]:csrrs t5, vxsat, zero
	-[0x80000670]:sw t6, 256(s1)
Current Store : [0x80000674] : sw t5, 260(s1) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000680]:KSUBW t6, t5, t4
	-[0x80000684]:csrrs t5, vxsat, zero
	-[0x80000688]:sw t6, 264(s1)
Current Store : [0x8000068c] : sw t5, 268(s1) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000698]:KSUBW t6, t5, t4
	-[0x8000069c]:csrrs t5, vxsat, zero
	-[0x800006a0]:sw t6, 272(s1)
Current Store : [0x800006a4] : sw t5, 276(s1) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['opcode : ksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val', 'rs2_w0_val == -2049', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800006b4]:KSUBW t6, t5, t4
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 280(s1)
Current Store : [0x800006c0] : sw t5, 284(s1) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800006cc]:KSUBW t6, t5, t4
	-[0x800006d0]:csrrs t5, vxsat, zero
	-[0x800006d4]:sw t6, 288(s1)
Current Store : [0x800006d8] : sw t5, 292(s1) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800006e8]:KSUBW t6, t5, t4
	-[0x800006ec]:csrrs t5, vxsat, zero
	-[0x800006f0]:sw t6, 296(s1)
Current Store : [0x800006f4] : sw t5, 300(s1) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000704]:KSUBW t6, t5, t4
	-[0x80000708]:csrrs t5, vxsat, zero
	-[0x8000070c]:sw t6, 304(s1)
Current Store : [0x80000710] : sw t5, 308(s1) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x8000071c]:KSUBW t6, t5, t4
	-[0x80000720]:csrrs t5, vxsat, zero
	-[0x80000724]:sw t6, 312(s1)
Current Store : [0x80000728] : sw t5, 316(s1) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80000738]:KSUBW t6, t5, t4
	-[0x8000073c]:csrrs t5, vxsat, zero
	-[0x80000740]:sw t6, 320(s1)
Current Store : [0x80000744] : sw t5, 324(s1) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x80000750]:KSUBW t6, t5, t4
	-[0x80000754]:csrrs t5, vxsat, zero
	-[0x80000758]:sw t6, 328(s1)
Current Store : [0x8000075c] : sw t5, 332(s1) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80000768]:KSUBW t6, t5, t4
	-[0x8000076c]:csrrs t5, vxsat, zero
	-[0x80000770]:sw t6, 336(s1)
Current Store : [0x80000774] : sw t5, 340(s1) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80000784]:KSUBW t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 344(s1)
Current Store : [0x80000790] : sw t5, 348(s1) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x8000079c]:KSUBW t6, t5, t4
	-[0x800007a0]:csrrs t5, vxsat, zero
	-[0x800007a4]:sw t6, 352(s1)
Current Store : [0x800007a8] : sw t5, 356(s1) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800007b4]:KSUBW t6, t5, t4
	-[0x800007b8]:csrrs t5, vxsat, zero
	-[0x800007bc]:sw t6, 360(s1)
Current Store : [0x800007c0] : sw t5, 364(s1) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2048', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800007d4]:KSUBW t6, t5, t4
	-[0x800007d8]:csrrs t5, vxsat, zero
	-[0x800007dc]:sw t6, 368(s1)
Current Store : [0x800007e0] : sw t5, 372(s1) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x800007ec]:KSUBW t6, t5, t4
	-[0x800007f0]:csrrs t5, vxsat, zero
	-[0x800007f4]:sw t6, 376(s1)
Current Store : [0x800007f8] : sw t5, 380(s1) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x80000804]:KSUBW t6, t5, t4
	-[0x80000808]:csrrs t5, vxsat, zero
	-[0x8000080c]:sw t6, 384(s1)
Current Store : [0x80000810] : sw t5, 388(s1) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000820]:KSUBW t6, t5, t4
	-[0x80000824]:csrrs t5, vxsat, zero
	-[0x80000828]:sw t6, 392(s1)
Current Store : [0x8000082c] : sw t5, 396(s1) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x8000083c]:KSUBW t6, t5, t4
	-[0x80000840]:csrrs t5, vxsat, zero
	-[0x80000844]:sw t6, 400(s1)
Current Store : [0x80000848] : sw t5, 404(s1) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x80000854]:KSUBW t6, t5, t4
	-[0x80000858]:csrrs t5, vxsat, zero
	-[0x8000085c]:sw t6, 408(s1)
Current Store : [0x80000860] : sw t5, 412(s1) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x8000086c]:KSUBW t6, t5, t4
	-[0x80000870]:csrrs t5, vxsat, zero
	-[0x80000874]:sw t6, 416(s1)
Current Store : [0x80000878] : sw t5, 420(s1) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80000884]:KSUBW t6, t5, t4
	-[0x80000888]:csrrs t5, vxsat, zero
	-[0x8000088c]:sw t6, 424(s1)
Current Store : [0x80000890] : sw t5, 428(s1) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x8000089c]:KSUBW t6, t5, t4
	-[0x800008a0]:csrrs t5, vxsat, zero
	-[0x800008a4]:sw t6, 432(s1)
Current Store : [0x800008a8] : sw t5, 436(s1) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800008b4]:KSUBW t6, t5, t4
	-[0x800008b8]:csrrs t5, vxsat, zero
	-[0x800008bc]:sw t6, 440(s1)
Current Store : [0x800008c0] : sw t5, 444(s1) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800008d0]:KSUBW t6, t5, t4
	-[0x800008d4]:csrrs t5, vxsat, zero
	-[0x800008d8]:sw t6, 448(s1)
Current Store : [0x800008dc] : sw t5, 452(s1) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['opcode : ksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val', 'rs2_w0_val == 0', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800008ec]:KSUBW t6, t5, t4
	-[0x800008f0]:csrrs t5, vxsat, zero
	-[0x800008f4]:sw t6, 456(s1)
Current Store : [0x800008f8] : sw t5, 460(s1) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000908]:KSUBW t6, t5, t4
	-[0x8000090c]:csrrs t5, vxsat, zero
	-[0x80000910]:sw t6, 464(s1)
Current Store : [0x80000914] : sw t5, 468(s1) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000928]:KSUBW t6, t5, t4
	-[0x8000092c]:csrrs t5, vxsat, zero
	-[0x80000930]:sw t6, 472(s1)
Current Store : [0x80000934] : sw t5, 476(s1) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000948]:KSUBW t6, t5, t4
	-[0x8000094c]:csrrs t5, vxsat, zero
	-[0x80000950]:sw t6, 480(s1)
Current Store : [0x80000954] : sw t5, 484(s1) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000964]:KSUBW t6, t5, t4
	-[0x80000968]:csrrs t5, vxsat, zero
	-[0x8000096c]:sw t6, 488(s1)
Current Store : [0x80000970] : sw t5, 492(s1) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000984]:KSUBW t6, t5, t4
	-[0x80000988]:csrrs t5, vxsat, zero
	-[0x8000098c]:sw t6, 496(s1)
Current Store : [0x80000990] : sw t5, 500(s1) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800009a4]:KSUBW t6, t5, t4
	-[0x800009a8]:csrrs t5, vxsat, zero
	-[0x800009ac]:sw t6, 504(s1)
Current Store : [0x800009b0] : sw t5, 508(s1) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800009c4]:KSUBW t6, t5, t4
	-[0x800009c8]:csrrs t5, vxsat, zero
	-[0x800009cc]:sw t6, 512(s1)
Current Store : [0x800009d0] : sw t5, 516(s1) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800009e4]:KSUBW t6, t5, t4
	-[0x800009e8]:csrrs t5, vxsat, zero
	-[0x800009ec]:sw t6, 520(s1)
Current Store : [0x800009f0] : sw t5, 524(s1) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000a04]:KSUBW t6, t5, t4
	-[0x80000a08]:csrrs t5, vxsat, zero
	-[0x80000a0c]:sw t6, 528(s1)
Current Store : [0x80000a10] : sw t5, 532(s1) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000a20]:KSUBW t6, t5, t4
	-[0x80000a24]:csrrs t5, vxsat, zero
	-[0x80000a28]:sw t6, 536(s1)
Current Store : [0x80000a2c] : sw t5, 540(s1) -- Store: [0x800024bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000a3c]:KSUBW t6, t5, t4
	-[0x80000a40]:csrrs t5, vxsat, zero
	-[0x80000a44]:sw t6, 544(s1)
Current Store : [0x80000a48] : sw t5, 548(s1) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000a54]:KSUBW t6, t5, t4
	-[0x80000a58]:csrrs t5, vxsat, zero
	-[0x80000a5c]:sw t6, 552(s1)
Current Store : [0x80000a60] : sw t5, 556(s1) -- Store: [0x800024cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000a6c]:KSUBW t6, t5, t4
	-[0x80000a70]:csrrs t5, vxsat, zero
	-[0x80000a74]:sw t6, 560(s1)
Current Store : [0x80000a78] : sw t5, 564(s1) -- Store: [0x800024d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000a84]:KSUBW t6, t5, t4
	-[0x80000a88]:csrrs t5, vxsat, zero
	-[0x80000a8c]:sw t6, 568(s1)
Current Store : [0x80000a90] : sw t5, 572(s1) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000aa0]:KSUBW t6, t5, t4
	-[0x80000aa4]:csrrs t5, vxsat, zero
	-[0x80000aa8]:sw t6, 576(s1)
Current Store : [0x80000aac] : sw t5, 580(s1) -- Store: [0x800024e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000ab8]:KSUBW t6, t5, t4
	-[0x80000abc]:csrrs t5, vxsat, zero
	-[0x80000ac0]:sw t6, 584(s1)
Current Store : [0x80000ac4] : sw t5, 588(s1) -- Store: [0x800024ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000ad0]:KSUBW t6, t5, t4
	-[0x80000ad4]:csrrs t5, vxsat, zero
	-[0x80000ad8]:sw t6, 592(s1)
Current Store : [0x80000adc] : sw t5, 596(s1) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000ae8]:KSUBW t6, t5, t4
	-[0x80000aec]:csrrs t5, vxsat, zero
	-[0x80000af0]:sw t6, 600(s1)
Current Store : [0x80000af4] : sw t5, 604(s1) -- Store: [0x800024fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b04]:KSUBW t6, t5, t4
	-[0x80000b08]:csrrs t5, vxsat, zero
	-[0x80000b0c]:sw t6, 608(s1)
Current Store : [0x80000b10] : sw t5, 612(s1) -- Store: [0x80002504]:0x00000001




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000b1c]:KSUBW t6, t5, t4
	-[0x80000b20]:csrrs t5, vxsat, zero
	-[0x80000b24]:sw t6, 616(s1)
Current Store : [0x80000b28] : sw t5, 620(s1) -- Store: [0x8000250c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000b38]:KSUBW t6, t5, t4
	-[0x80000b3c]:csrrs t5, vxsat, zero
	-[0x80000b40]:sw t6, 624(s1)
Current Store : [0x80000b44] : sw t5, 628(s1) -- Store: [0x80002514]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000b50]:KSUBW t6, t5, t4
	-[0x80000b54]:csrrs t5, vxsat, zero
	-[0x80000b58]:sw t6, 632(s1)
Current Store : [0x80000b5c] : sw t5, 636(s1) -- Store: [0x8000251c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000b68]:KSUBW t6, t5, t4
	-[0x80000b6c]:csrrs t5, vxsat, zero
	-[0x80000b70]:sw t6, 640(s1)
Current Store : [0x80000b74] : sw t5, 644(s1) -- Store: [0x80002524]:0x00000001




Last Coverpoint : ['opcode : ksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80000b80]:KSUBW t6, t5, t4
	-[0x80000b84]:csrrs t5, vxsat, zero
	-[0x80000b88]:sw t6, 648(s1)
Current Store : [0x80000b8c] : sw t5, 652(s1) -- Store: [0x8000252c]:0x00000001




Last Coverpoint : ['opcode : ksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 4096', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000b98]:KSUBW t6, t5, t4
	-[0x80000b9c]:csrrs t5, vxsat, zero
	-[0x80000ba0]:sw t6, 656(s1)
Current Store : [0x80000ba4] : sw t5, 660(s1) -- Store: [0x80002534]:0x00000001




Last Coverpoint : ['rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x80000bb8]:KSUBW t6, t5, t4
	-[0x80000bbc]:csrrs t5, vxsat, zero
	-[0x80000bc0]:sw t6, 664(s1)
Current Store : [0x80000bc4] : sw t5, 668(s1) -- Store: [0x8000253c]:0x00000001




Last Coverpoint : ['opcode : ksubw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w0_val == -129', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000bd4]:KSUBW t6, t5, t4
	-[0x80000bd8]:csrrs t5, vxsat, zero
	-[0x80000bdc]:sw t6, 672(s1)
Current Store : [0x80000be0] : sw t5, 676(s1) -- Store: [0x80002544]:0x00000001





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

|s.no|        signature         |                                                                                                       coverpoints                                                                                                       |                                                    code                                                    |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ksubw<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x11<br> - rs1 == rs2 == rd<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 4096<br> - rs1_w0_val == 4096<br>      |[0x80000114]:KSUBW a1, a1, a1<br> [0x80000118]:csrrs a1, vxsat, zero<br> [0x8000011c]:sw a1, 0(ra)<br>      |
|   2|[0x80002218]<br>0x00000000|- rs1 : x13<br> - rs2 : x13<br> - rd : x12<br> - rs1 == rs2 != rd<br>                                                                                                                                                    |[0x8000012c]:KSUBW a2, a3, a3<br> [0x80000130]:csrrs a3, vxsat, zero<br> [0x80000134]:sw a2, 8(ra)<br>      |
|   3|[0x80002220]<br>0x80000005|- rs1 : x9<br> - rs2 : x5<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w0_val == -2147483648<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w0_val == -5<br> |[0x80000144]:KSUBW t6, s1, t0<br> [0x80000148]:csrrs s1, vxsat, zero<br> [0x8000014c]:sw t6, 16(ra)<br>     |
|   4|[0x80002228]<br>0x40000001|- rs1 : x20<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w0_val == -1<br> - rs1_w0_val == 1073741824<br>                                                      |[0x8000015c]:KSUBW s7, s4, s7<br> [0x80000160]:csrrs s4, vxsat, zero<br> [0x80000164]:sw s7, 24(ra)<br>     |
|   5|[0x80002230]<br>0x00000000|- rs1 : x30<br> - rs2 : x6<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -2<br>                                                                                              |[0x80000178]:KSUBW t5, t5, t1<br> [0x8000017c]:csrrs t5, vxsat, zero<br> [0x80000180]:sw t5, 32(ra)<br>     |
|   6|[0x80002238]<br>0xAAAAAAB0|- rs1 : x5<br> - rs2 : x12<br> - rd : x29<br> - rs2_w0_val == 1431655765<br>                                                                                                                                             |[0x80000194]:KSUBW t4, t0, a2<br> [0x80000198]:csrrs t0, vxsat, zero<br> [0x8000019c]:sw t4, 40(ra)<br>     |
|   7|[0x80002240]<br>0x80000000|- rs1 : x18<br> - rs2 : x15<br> - rd : x25<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w0_val == 2147483647<br>                                                                                                    |[0x800001b0]:KSUBW s9, s2, a5<br> [0x800001b4]:csrrs s2, vxsat, zero<br> [0x800001b8]:sw s9, 48(ra)<br>     |
|   8|[0x80002248]<br>0x7FFFFFFF|- rs1 : x12<br> - rs2 : x22<br> - rd : x4<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 2147483647<br>                                                                                                             |[0x800001d0]:KSUBW tp, a2, s6<br> [0x800001d4]:csrrs a2, vxsat, zero<br> [0x800001d8]:sw tp, 56(ra)<br>     |
|   9|[0x80002250]<br>0x20000021|- rs1 : x10<br> - rs2 : x16<br> - rd : x21<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 32<br>                                                                                                                     |[0x800001ec]:KSUBW s5, a0, a6<br> [0x800001f0]:csrrs a0, vxsat, zero<br> [0x800001f4]:sw s5, 64(ra)<br>     |
|  10|[0x80002258]<br>0x0FFE0000|- rs1 : x28<br> - rs2 : x8<br> - rd : x9<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == -131073<br>                                                                                                                  |[0x8000020c]:KSUBW s1, t3, fp<br> [0x80000210]:csrrs t3, vxsat, zero<br> [0x80000214]:sw s1, 72(ra)<br>     |
|  11|[0x80002260]<br>0x18000001|- rs1 : x23<br> - rs2 : x3<br> - rd : x28<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == 268435456<br>                                                                                                               |[0x80000228]:KSUBW t3, s7, gp<br> [0x8000022c]:csrrs s7, vxsat, zero<br> [0x80000230]:sw t3, 80(ra)<br>     |
|  12|[0x80002268]<br>0x04020001|- rs1 : x15<br> - rs2 : x31<br> - rd : x8<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == 131072<br>                                                                                                                   |[0x80000244]:KSUBW fp, a5, t6<br> [0x80000248]:csrrs a5, vxsat, zero<br> [0x8000024c]:sw fp, 88(ra)<br>     |
|  13|[0x80002270]<br>0x02000101|- rs1 : x22<br> - rs2 : x25<br> - rd : x14<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == 256<br>                                                                                                                     |[0x80000260]:KSUBW a4, s6, s9<br> [0x80000264]:csrrs s6, vxsat, zero<br> [0x80000268]:sw a4, 96(ra)<br>     |
|  14|[0x80002278]<br>0x01020001|- rs1 : x26<br> - rs2 : x18<br> - rd : x10<br> - rs2_w0_val == -16777217<br>                                                                                                                                             |[0x8000027c]:KSUBW a0, s10, s2<br> [0x80000280]:csrrs s10, vxsat, zero<br> [0x80000284]:sw a0, 104(ra)<br>  |
|  15|[0x80002280]<br>0x08800001|- rs1 : x25<br> - rs2 : x24<br> - rd : x16<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == 134217728<br>                                                                                                                |[0x80000298]:KSUBW a6, s9, s8<br> [0x8000029c]:csrrs s9, vxsat, zero<br> [0x800002a0]:sw a6, 112(ra)<br>    |
|  16|[0x80002288]<br>0x00800001|- rs1 : x4<br> - rs2 : x20<br> - rd : x19<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == 4194304<br>                                                                                                                   |[0x800002b4]:KSUBW s3, tp, s4<br> [0x800002b8]:csrrs tp, vxsat, zero<br> [0x800002bc]:sw s3, 120(ra)<br>    |
|  17|[0x80002290]<br>0x001F0000|- rs1 : x19<br> - rs2 : x30<br> - rd : x15<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == -65537<br>                                                                                                                   |[0x800002d4]:KSUBW a5, s3, t5<br> [0x800002d8]:csrrs s3, vxsat, zero<br> [0x800002dc]:sw a5, 128(ra)<br>    |
|  18|[0x80002298]<br>0x0010000A|- rs1 : x27<br> - rs2 : x9<br> - rd : x7<br> - rs2_w0_val == -1048577<br>                                                                                                                                                |[0x800002f0]:KSUBW t2, s11, s1<br> [0x800002f4]:csrrs s11, vxsat, zero<br> [0x800002f8]:sw t2, 136(ra)<br>  |
|  19|[0x800022a0]<br>0x00080008|- rs1 : x7<br> - rs2 : x19<br> - rd : x13<br> - rs2_w0_val == -524289<br>                                                                                                                                                |[0x80000314]:KSUBW a3, t2, s3<br> [0x80000318]:csrrs t2, vxsat, zero<br> [0x8000031c]:sw a3, 0(s1)<br>      |
|  20|[0x800022a8]<br>0x00140001|- rs1 : x17<br> - rs2 : x27<br> - rd : x1<br> - rs2_w0_val == -262145<br> - rs1_w0_val == 1048576<br>                                                                                                                    |[0x80000330]:KSUBW ra, a7, s11<br> [0x80000334]:csrrs a7, vxsat, zero<br> [0x80000338]:sw ra, 8(s1)<br>     |
|  21|[0x800022b0]<br>0xAAACAAAB|- rs1 : x21<br> - rs2 : x10<br> - rd : x20<br> - rs2_w0_val == -131073<br> - rs1_w0_val == -1431655766<br>                                                                                                               |[0x80000350]:KSUBW s4, s5, a0<br> [0x80000354]:csrrs s5, vxsat, zero<br> [0x80000358]:sw s4, 16(s1)<br>     |
|  22|[0x800022b8]<br>0xAAABAAAB|- rs1 : x2<br> - rs2 : x29<br> - rd : x6<br> - rs2_w0_val == -65537<br>                                                                                                                                                  |[0x80000370]:KSUBW t1, sp, t4<br> [0x80000374]:csrrs sp, vxsat, zero<br> [0x80000378]:sw t1, 24(s1)<br>     |
|  23|[0x800022c0]<br>0xFFFFBFFF|- rs1 : x31<br> - rs2 : x0<br> - rd : x2<br> - rs2_w0_val == 0<br> - rs1_w0_val == -16385<br>                                                                                                                            |[0x80000390]:KSUBW sp, t6, zero<br> [0x80000394]:csrrs t6, vxsat, zero<br> [0x80000398]:sw sp, 32(s1)<br>   |
|  24|[0x800022c8]<br>0x00005001|- rs1 : x6<br> - rs2 : x17<br> - rd : x5<br> - rs2_w0_val == -16385<br>                                                                                                                                                  |[0x800003ac]:KSUBW t0, t1, a7<br> [0x800003b0]:csrrs t1, vxsat, zero<br> [0x800003b4]:sw t0, 40(s1)<br>     |
|  25|[0x800022d0]<br>0x00001FFE|- rs1 : x14<br> - rs2 : x21<br> - rd : x26<br> - rs2_w0_val == -8193<br> - rs1_w0_val == -3<br>                                                                                                                          |[0x800003c8]:KSUBW s10, a4, s5<br> [0x800003cc]:csrrs a4, vxsat, zero<br> [0x800003d0]:sw s10, 48(s1)<br>   |
|  26|[0x800022d8]<br>0x00001001|- rs1 : x0<br> - rs2 : x2<br> - rd : x24<br> - rs2_w0_val == -4097<br> - rs1_w0_val == 0<br>                                                                                                                             |[0x800003e8]:KSUBW s8, zero, sp<br> [0x800003ec]:csrrs zero, vxsat, zero<br> [0x800003f0]:sw s8, 56(s1)<br> |
|  27|[0x800022e0]<br>0x00000807|- rs1 : x29<br> - rs2 : x28<br> - rd : x18<br> - rs2_w0_val == -2049<br>                                                                                                                                                 |[0x80000404]:KSUBW s2, t4, t3<br> [0x80000408]:csrrs t4, vxsat, zero<br> [0x8000040c]:sw s2, 64(s1)<br>     |
|  28|[0x800022e8]<br>0x000003FE|- rs1 : x24<br> - rs2 : x26<br> - rd : x3<br> - rs2_w0_val == -1025<br>                                                                                                                                                  |[0x8000041c]:KSUBW gp, s8, s10<br> [0x80000420]:csrrs s8, vxsat, zero<br> [0x80000424]:sw gp, 72(s1)<br>    |
|  29|[0x800022f0]<br>0x00008201|- rs1 : x8<br> - rs2 : x1<br> - rd : x17<br> - rs2_w0_val == -513<br> - rs1_w0_val == 32768<br>                                                                                                                          |[0x80000434]:KSUBW a7, fp, ra<br> [0x80000438]:csrrs fp, vxsat, zero<br> [0x8000043c]:sw a7, 80(s1)<br>     |
|  30|[0x800022f8]<br>0x04000101|- rs1 : x16<br> - rs2 : x7<br> - rd : x22<br> - rs2_w0_val == -257<br> - rs1_w0_val == 67108864<br>                                                                                                                      |[0x8000044c]:KSUBW s6, a6, t2<br> [0x80000450]:csrrs a6, vxsat, zero<br> [0x80000454]:sw s6, 88(s1)<br>     |
|  31|[0x80002300]<br>0x00000000|- rs1 : x1<br> - rs2 : x14<br> - rd : x0<br> - rs2_w0_val == -129<br> - rs1_w0_val == -524289<br>                                                                                                                        |[0x80000468]:KSUBW zero, ra, a4<br> [0x8000046c]:csrrs ra, vxsat, zero<br> [0x80000470]:sw zero, 96(s1)<br> |
|  32|[0x80002308]<br>0x00000044|- rs1 : x3<br> - rs2 : x4<br> - rd : x27<br> - rs2_w0_val == -65<br>                                                                                                                                                     |[0x80000480]:KSUBW s11, gp, tp<br> [0x80000484]:csrrs gp, vxsat, zero<br> [0x80000488]:sw s11, 104(s1)<br>  |
|  33|[0x80002310]<br>0x00002021|- rs2_w0_val == -33<br> - rs1_w0_val == 8192<br>                                                                                                                                                                         |[0x80000498]:KSUBW t6, t5, t4<br> [0x8000049c]:csrrs t5, vxsat, zero<br> [0x800004a0]:sw t6, 112(s1)<br>    |
|  34|[0x80002318]<br>0xE0000010|- rs2_w0_val == -17<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                   |[0x800004b4]:KSUBW t6, t5, t4<br> [0x800004b8]:csrrs t5, vxsat, zero<br> [0x800004bc]:sw t6, 120(s1)<br>    |
|  35|[0x80002320]<br>0xF0000008|- rs2_w0_val == -9<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                    |[0x800004d0]:KSUBW t6, t5, t4<br> [0x800004d4]:csrrs t5, vxsat, zero<br> [0x800004d8]:sw t6, 128(s1)<br>    |
|  36|[0x80002328]<br>0xFFC00002|- rs2_w0_val == -3<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                      |[0x800004ec]:KSUBW t6, t5, t4<br> [0x800004f0]:csrrs t5, vxsat, zero<br> [0x800004f4]:sw t6, 136(s1)<br>    |
|  37|[0x80002330]<br>0xFFFFFFF1|- rs2_w0_val == -2<br> - rs1_w0_val == -17<br>                                                                                                                                                                           |[0x80000504]:KSUBW t6, t5, t4<br> [0x80000508]:csrrs t5, vxsat, zero<br> [0x8000050c]:sw t6, 144(s1)<br>    |
|  38|[0x80002338]<br>0x7FFFFFFC|- rs2_w0_val == -2147483648<br>                                                                                                                                                                                          |[0x8000051c]:KSUBW t6, t5, t4<br> [0x80000520]:csrrs t5, vxsat, zero<br> [0x80000524]:sw t6, 152(s1)<br>    |
|  39|[0x80002340]<br>0xC0400000|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                           |[0x80000534]:KSUBW t6, t5, t4<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 160(s1)<br>    |
|  40|[0x80002348]<br>0xF0000000|- rs2_w0_val == 536870912<br>                                                                                                                                                                                            |[0x8000054c]:KSUBW t6, t5, t4<br> [0x80000550]:csrrs t5, vxsat, zero<br> [0x80000554]:sw t6, 168(s1)<br>    |
|  41|[0x80002350]<br>0xF0000010|- rs2_w0_val == 268435456<br> - rs1_w0_val == 16<br>                                                                                                                                                                     |[0x80000564]:KSUBW t6, t5, t4<br> [0x80000568]:csrrs t5, vxsat, zero<br> [0x8000056c]:sw t6, 176(s1)<br>    |
|  42|[0x80002358]<br>0xF7FBFFFF|- rs2_w0_val == 134217728<br> - rs1_w0_val == -262145<br>                                                                                                                                                                |[0x80000580]:KSUBW t6, t5, t4<br> [0x80000584]:csrrs t5, vxsat, zero<br> [0x80000588]:sw t6, 184(s1)<br>    |
|  43|[0x80002360]<br>0x3C000000|- rs2_w0_val == 67108864<br>                                                                                                                                                                                             |[0x80000598]:KSUBW t6, t5, t4<br> [0x8000059c]:csrrs t5, vxsat, zero<br> [0x800005a0]:sw t6, 192(s1)<br>    |
|  44|[0x80002368]<br>0xFE000080|- rs2_w0_val == 33554432<br> - rs1_w0_val == 128<br>                                                                                                                                                                     |[0x800005b0]:KSUBW t6, t5, t4<br> [0x800005b4]:csrrs t5, vxsat, zero<br> [0x800005b8]:sw t6, 200(s1)<br>    |
|  45|[0x80002370]<br>0xFF000200|- rs2_w0_val == 16777216<br> - rs1_w0_val == 512<br>                                                                                                                                                                     |[0x800005c8]:KSUBW t6, t5, t4<br> [0x800005cc]:csrrs t5, vxsat, zero<br> [0x800005d0]:sw t6, 208(s1)<br>    |
|  46|[0x80002378]<br>0xFF800006|- rs2_w0_val == 8388608<br>                                                                                                                                                                                              |[0x800005e0]:KSUBW t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 216(s1)<br>    |
|  47|[0x80002380]<br>0x00002801|- rs1_w0_val == 2048<br>                                                                                                                                                                                                 |[0x80000600]:KSUBW t6, t5, t4<br> [0x80000604]:csrrs t5, vxsat, zero<br> [0x80000608]:sw t6, 224(s1)<br>    |
|  48|[0x80002388]<br>0x00000406|- rs1_w0_val == 1024<br>                                                                                                                                                                                                 |[0x80000618]:KSUBW t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 232(s1)<br>    |
|  49|[0x80002390]<br>0xAAAAAAEB|- rs1_w0_val == 64<br>                                                                                                                                                                                                   |[0x80000634]:KSUBW t6, t5, t4<br> [0x80000638]:csrrs t5, vxsat, zero<br> [0x8000063c]:sw t6, 240(s1)<br>    |
|  50|[0x80002398]<br>0x00001009|- rs1_w0_val == 8<br>                                                                                                                                                                                                    |[0x80000650]:KSUBW t6, t5, t4<br> [0x80000654]:csrrs t5, vxsat, zero<br> [0x80000658]:sw t6, 248(s1)<br>    |
|  51|[0x800023a0]<br>0xF0000004|- rs1_w0_val == 4<br>                                                                                                                                                                                                    |[0x80000668]:KSUBW t6, t5, t4<br> [0x8000066c]:csrrs t5, vxsat, zero<br> [0x80000670]:sw t6, 256(s1)<br>    |
|  52|[0x800023a8]<br>0xFFFFFFC2|- rs2_w0_val == 64<br> - rs1_w0_val == 2<br>                                                                                                                                                                             |[0x80000680]:KSUBW t6, t5, t4<br> [0x80000684]:csrrs t5, vxsat, zero<br> [0x80000688]:sw t6, 264(s1)<br>    |
|  53|[0x800023b0]<br>0xFFF00001|- rs2_w0_val == 1048576<br> - rs1_w0_val == 1<br>                                                                                                                                                                        |[0x80000698]:KSUBW t6, t5, t4<br> [0x8000069c]:csrrs t5, vxsat, zero<br> [0x800006a0]:sw t6, 272(s1)<br>    |
|  54|[0x800023c0]<br>0xFFFFFFF8|- rs1_w0_val == -1<br>                                                                                                                                                                                                   |[0x800006cc]:KSUBW t6, t5, t4<br> [0x800006d0]:csrrs t5, vxsat, zero<br> [0x800006d4]:sw t6, 288(s1)<br>    |
|  55|[0x800023c8]<br>0xBFBFFFFF|- rs2_w0_val == 4194304<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                              |[0x800006e8]:KSUBW t6, t5, t4<br> [0x800006ec]:csrrs t5, vxsat, zero<br> [0x800006f0]:sw t6, 296(s1)<br>    |
|  56|[0x800023d0]<br>0xEFDFFFFF|- rs2_w0_val == 2097152<br>                                                                                                                                                                                              |[0x80000704]:KSUBW t6, t5, t4<br> [0x80000708]:csrrs t5, vxsat, zero<br> [0x8000070c]:sw t6, 304(s1)<br>    |
|  57|[0x800023d8]<br>0xFFF80040|- rs2_w0_val == 524288<br>                                                                                                                                                                                               |[0x8000071c]:KSUBW t6, t5, t4<br> [0x80000720]:csrrs t5, vxsat, zero<br> [0x80000724]:sw t6, 312(s1)<br>    |
|  58|[0x800023e0]<br>0xFFF9FFFF|- rs2_w0_val == 262144<br>                                                                                                                                                                                               |[0x80000738]:KSUBW t6, t5, t4<br> [0x8000073c]:csrrs t5, vxsat, zero<br> [0x80000740]:sw t6, 320(s1)<br>    |
|  59|[0x800023e8]<br>0xFFFE0006|- rs2_w0_val == 131072<br>                                                                                                                                                                                               |[0x80000750]:KSUBW t6, t5, t4<br> [0x80000754]:csrrs t5, vxsat, zero<br> [0x80000758]:sw t6, 328(s1)<br>    |
|  60|[0x800023f0]<br>0xBFFF0000|- rs2_w0_val == 65536<br>                                                                                                                                                                                                |[0x80000768]:KSUBW t6, t5, t4<br> [0x8000076c]:csrrs t5, vxsat, zero<br> [0x80000770]:sw t6, 336(s1)<br>    |
|  61|[0x800023f8]<br>0xFFFE7FFF|- rs2_w0_val == 32768<br>                                                                                                                                                                                                |[0x80000784]:KSUBW t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 344(s1)<br>    |
|  62|[0x80002400]<br>0x007FC000|- rs2_w0_val == 16384<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                    |[0x8000079c]:KSUBW t6, t5, t4<br> [0x800007a0]:csrrs t5, vxsat, zero<br> [0x800007a4]:sw t6, 352(s1)<br>    |
|  63|[0x80002408]<br>0x001FE000|- rs2_w0_val == 8192<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                     |[0x800007b4]:KSUBW t6, t5, t4<br> [0x800007b8]:csrrs t5, vxsat, zero<br> [0x800007bc]:sw t6, 360(s1)<br>    |
|  64|[0x80002410]<br>0xF7FFF7FF|- rs2_w0_val == 2048<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                  |[0x800007d4]:KSUBW t6, t5, t4<br> [0x800007d8]:csrrs t5, vxsat, zero<br> [0x800007dc]:sw t6, 368(s1)<br>    |
|  65|[0x80002418]<br>0x00007C00|- rs2_w0_val == 1024<br>                                                                                                                                                                                                 |[0x800007ec]:KSUBW t6, t5, t4<br> [0x800007f0]:csrrs t5, vxsat, zero<br> [0x800007f4]:sw t6, 376(s1)<br>    |
|  66|[0x80002420]<br>0xFFFFFDF9|- rs2_w0_val == 512<br>                                                                                                                                                                                                  |[0x80000804]:KSUBW t6, t5, t4<br> [0x80000808]:csrrs t5, vxsat, zero<br> [0x8000080c]:sw t6, 384(s1)<br>    |
|  67|[0x80002428]<br>0xFF7FFEFF|- rs2_w0_val == 256<br> - rs1_w0_val == -8388609<br>                                                                                                                                                                     |[0x80000820]:KSUBW t6, t5, t4<br> [0x80000824]:csrrs t5, vxsat, zero<br> [0x80000828]:sw t6, 392(s1)<br>    |
|  68|[0x80002430]<br>0xFFFEFF7F|- rs2_w0_val == 128<br>                                                                                                                                                                                                  |[0x8000083c]:KSUBW t6, t5, t4<br> [0x80000840]:csrrs t5, vxsat, zero<br> [0x80000844]:sw t6, 400(s1)<br>    |
|  69|[0x80002438]<br>0x0001FFE0|- rs2_w0_val == 32<br>                                                                                                                                                                                                   |[0x80000854]:KSUBW t6, t5, t4<br> [0x80000858]:csrrs t5, vxsat, zero<br> [0x8000085c]:sw t6, 408(s1)<br>    |
|  70|[0x80002440]<br>0xFFFFFFF3|- rs2_w0_val == 16<br>                                                                                                                                                                                                   |[0x8000086c]:KSUBW t6, t5, t4<br> [0x80000870]:csrrs t5, vxsat, zero<br> [0x80000874]:sw t6, 416(s1)<br>    |
|  71|[0x80002448]<br>0xFFFFFFFD|- rs2_w0_val == 8<br>                                                                                                                                                                                                    |[0x80000884]:KSUBW t6, t5, t4<br> [0x80000888]:csrrs t5, vxsat, zero<br> [0x8000088c]:sw t6, 424(s1)<br>    |
|  72|[0x80002450]<br>0xFFFFFFFA|- rs2_w0_val == 4<br>                                                                                                                                                                                                    |[0x8000089c]:KSUBW t6, t5, t4<br> [0x800008a0]:csrrs t5, vxsat, zero<br> [0x800008a4]:sw t6, 432(s1)<br>    |
|  73|[0x80002458]<br>0xFFFFFBFD|- rs2_w0_val == 2<br> - rs1_w0_val == -1025<br>                                                                                                                                                                          |[0x800008b4]:KSUBW t6, t5, t4<br> [0x800008b8]:csrrs t5, vxsat, zero<br> [0x800008bc]:sw t6, 440(s1)<br>    |
|  74|[0x80002460]<br>0xFDFFFFFE|- rs2_w0_val == 1<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                      |[0x800008d0]:KSUBW t6, t5, t4<br> [0x800008d4]:csrrs t5, vxsat, zero<br> [0x800008d8]:sw t6, 448(s1)<br>    |
|  75|[0x80002470]<br>0x55555554|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                           |[0x80000908]:KSUBW t6, t5, t4<br> [0x8000090c]:csrrs t5, vxsat, zero<br> [0x80000910]:sw t6, 464(s1)<br>    |
|  76|[0x80002478]<br>0x04000000|- rs1_w0_val == -67108865<br>                                                                                                                                                                                            |[0x80000928]:KSUBW t6, t5, t4<br> [0x8000092c]:csrrs t5, vxsat, zero<br> [0x80000930]:sw t6, 472(s1)<br>    |
|  77|[0x80002480]<br>0x01000000|- rs1_w0_val == -16777217<br>                                                                                                                                                                                            |[0x80000948]:KSUBW t6, t5, t4<br> [0x8000094c]:csrrs t5, vxsat, zero<br> [0x80000950]:sw t6, 480(s1)<br>    |
|  78|[0x80002488]<br>0xFFE00200|- rs1_w0_val == -2097153<br>                                                                                                                                                                                             |[0x80000964]:KSUBW t6, t5, t4<br> [0x80000968]:csrrs t5, vxsat, zero<br> [0x8000096c]:sw t6, 488(s1)<br>    |
|  79|[0x80002490]<br>0x00F00000|- rs1_w0_val == -1048577<br>                                                                                                                                                                                             |[0x80000984]:KSUBW t6, t5, t4<br> [0x80000988]:csrrs t5, vxsat, zero<br> [0x8000098c]:sw t6, 496(s1)<br>    |
|  80|[0x80002498]<br>0xFFFFC000|- rs1_w0_val == -32769<br>                                                                                                                                                                                               |[0x800009a4]:KSUBW t6, t5, t4<br> [0x800009a8]:csrrs t5, vxsat, zero<br> [0x800009ac]:sw t6, 504(s1)<br>    |
|  81|[0x800024a0]<br>0x00FFE000|- rs1_w0_val == -8193<br>                                                                                                                                                                                                |[0x800009c4]:KSUBW t6, t5, t4<br> [0x800009c8]:csrrs t5, vxsat, zero<br> [0x800009cc]:sw t6, 512(s1)<br>    |
|  82|[0x800024a8]<br>0xFFFFF800|- rs1_w0_val == -4097<br>                                                                                                                                                                                                |[0x800009e4]:KSUBW t6, t5, t4<br> [0x800009e8]:csrrs t5, vxsat, zero<br> [0x800009ec]:sw t6, 520(s1)<br>    |
|  83|[0x800024b0]<br>0x00FFF800|- rs1_w0_val == -2049<br>                                                                                                                                                                                                |[0x80000a04]:KSUBW t6, t5, t4<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sw t6, 528(s1)<br>    |
|  84|[0x800024b8]<br>0x55555355|- rs1_w0_val == -513<br>                                                                                                                                                                                                 |[0x80000a20]:KSUBW t6, t5, t4<br> [0x80000a24]:csrrs t5, vxsat, zero<br> [0x80000a28]:sw t6, 536(s1)<br>    |
|  85|[0x800024c0]<br>0xAAAAA9AA|- rs1_w0_val == -257<br>                                                                                                                                                                                                 |[0x80000a3c]:KSUBW t6, t5, t4<br> [0x80000a40]:csrrs t5, vxsat, zero<br> [0x80000a44]:sw t6, 544(s1)<br>    |
|  86|[0x800024c8]<br>0xFFFDFF7F|- rs1_w0_val == -129<br>                                                                                                                                                                                                 |[0x80000a54]:KSUBW t6, t5, t4<br> [0x80000a58]:csrrs t5, vxsat, zero<br> [0x80000a5c]:sw t6, 552(s1)<br>    |
|  87|[0x800024d0]<br>0xFFBFFFBF|- rs1_w0_val == -65<br>                                                                                                                                                                                                  |[0x80000a6c]:KSUBW t6, t5, t4<br> [0x80000a70]:csrrs t5, vxsat, zero<br> [0x80000a74]:sw t6, 560(s1)<br>    |
|  88|[0x800024d8]<br>0xFFFFFFE5|- rs1_w0_val == -33<br>                                                                                                                                                                                                  |[0x80000a84]:KSUBW t6, t5, t4<br> [0x80000a88]:csrrs t5, vxsat, zero<br> [0x80000a8c]:sw t6, 568(s1)<br>    |
|  89|[0x800024e0]<br>0xAAAAAAA2|- rs1_w0_val == -9<br>                                                                                                                                                                                                   |[0x80000aa0]:KSUBW t6, t5, t4<br> [0x80000aa4]:csrrs t5, vxsat, zero<br> [0x80000aa8]:sw t6, 576(s1)<br>    |
|  90|[0x800024e8]<br>0xFFFEFFFB|- rs1_w0_val == -5<br>                                                                                                                                                                                                   |[0x80000ab8]:KSUBW t6, t5, t4<br> [0x80000abc]:csrrs t5, vxsat, zero<br> [0x80000ac0]:sw t6, 584(s1)<br>    |
|  91|[0x800024f0]<br>0x01FFFFFE|- rs1_w0_val == 33554432<br>                                                                                                                                                                                             |[0x80000ad0]:KSUBW t6, t5, t4<br> [0x80000ad4]:csrrs t5, vxsat, zero<br> [0x80000ad8]:sw t6, 592(s1)<br>    |
|  92|[0x800024f8]<br>0x00F80000|- rs1_w0_val == 16777216<br>                                                                                                                                                                                             |[0x80000ae8]:KSUBW t6, t5, t4<br> [0x80000aec]:csrrs t5, vxsat, zero<br> [0x80000af0]:sw t6, 600(s1)<br>    |
|  93|[0x80002500]<br>0x000A0001|- rs1_w0_val == 524288<br>                                                                                                                                                                                               |[0x80000b04]:KSUBW t6, t5, t4<br> [0x80000b08]:csrrs t5, vxsat, zero<br> [0x80000b0c]:sw t6, 608(s1)<br>    |
|  94|[0x80002508]<br>0x0003FFFD|- rs1_w0_val == 262144<br>                                                                                                                                                                                               |[0x80000b1c]:KSUBW t6, t5, t4<br> [0x80000b20]:csrrs t5, vxsat, zero<br> [0x80000b24]:sw t6, 616(s1)<br>    |
|  95|[0x80002510]<br>0x00050001|- rs1_w0_val == 65536<br>                                                                                                                                                                                                |[0x80000b38]:KSUBW t6, t5, t4<br> [0x80000b3c]:csrrs t5, vxsat, zero<br> [0x80000b40]:sw t6, 624(s1)<br>    |
|  96|[0x80002518]<br>0x00003FF8|- rs1_w0_val == 16384<br>                                                                                                                                                                                                |[0x80000b50]:KSUBW t6, t5, t4<br> [0x80000b54]:csrrs t5, vxsat, zero<br> [0x80000b58]:sw t6, 632(s1)<br>    |
|  97|[0x80002520]<br>0x2000000A|- rs1_w0_val == 536870912<br>                                                                                                                                                                                            |[0x80000b68]:KSUBW t6, t5, t4<br> [0x80000b6c]:csrrs t5, vxsat, zero<br> [0x80000b70]:sw t6, 640(s1)<br>    |
|  98|[0x80002538]<br>0x00004000|- rs2_w0_val == -32769<br>                                                                                                                                                                                               |[0x80000bb8]:KSUBW t6, t5, t4<br> [0x80000bbc]:csrrs t5, vxsat, zero<br> [0x80000bc0]:sw t6, 664(s1)<br>    |
