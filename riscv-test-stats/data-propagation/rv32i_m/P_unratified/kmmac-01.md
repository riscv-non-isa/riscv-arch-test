
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000c80')]      |
| SIG_REGION                | [('0x80002210', '0x80002570', '216 words')]      |
| COV_LABELS                | kmmac      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmac-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 214      |
| STAT1                     | 103      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 107     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000888]:KMMAC t6, t5, t4
      [0x8000088c]:csrrs t5, vxsat, zero
      [0x80000890]:sw t6, 320(ra)
 -- Signature Address: 0x80002438 Data: 0xCCD528CE
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == 1431655765




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c18]:KMMAC t6, t5, t4
      [0x80000c1c]:csrrs t5, vxsat, zero
      [0x80000c20]:sw t6, 592(ra)
 -- Signature Address: 0x80002548 Data: 0xF70E2578
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_w0_val == -1431655766




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c34]:KMMAC t6, t5, t4
      [0x80000c38]:csrrs t5, vxsat, zero
      [0x80000c3c]:sw t6, 600(ra)
 -- Signature Address: 0x80002550 Data: 0xF70E6577
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 2147483647
      - rs1_w0_val == 32768




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c54]:KMMAC t6, t5, t4
      [0x80000c58]:csrrs t5, vxsat, zero
      [0x80000c5c]:sw t6, 608(ra)
 -- Signature Address: 0x80002558 Data: 0xF70E8577
 -- Redundant Coverpoints hit by the op
      - opcode : kmmac
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -8388609
      - rs1_w0_val == -4194305






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmac', 'rs1 : x12', 'rs2 : x12', 'rd : x12', 'rs1 == rs2 == rd', 'rs2_w0_val == -1431655766', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000118]:KMMAC a2, a2, a2
	-[0x8000011c]:csrrs a2, vxsat, zero
	-[0x80000120]:sw a2, 0(a1)
Current Store : [0x80000124] : sw a2, 4(a1) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x24', 'rd : x13', 'rs1 == rs2 != rd', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000138]:KMMAC a3, s8, s8
	-[0x8000013c]:csrrs s8, vxsat, zero
	-[0x80000140]:sw a3, 8(a1)
Current Store : [0x80000144] : sw s8, 12(a1) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x17', 'rd : x6', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000158]:KMMAC t1, zero, a7
	-[0x8000015c]:csrrs zero, vxsat, zero
	-[0x80000160]:sw t1, 16(a1)
Current Store : [0x80000164] : sw zero, 20(a1) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x7', 'rd : x7', 'rs2 == rd != rs1', 'rs2_w0_val == -1073741825', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000178]:KMMAC t2, fp, t2
	-[0x8000017c]:csrrs fp, vxsat, zero
	-[0x80000180]:sw t2, 24(a1)
Current Store : [0x80000184] : sw fp, 28(a1) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x30', 'rd : x23', 'rs1 == rd != rs2', 'rs2_w0_val == -536870913', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000194]:KMMAC s7, s7, t5
	-[0x80000198]:csrrs s7, vxsat, zero
	-[0x8000019c]:sw s7, 32(a1)
Current Store : [0x800001a0] : sw s7, 36(a1) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x4', 'rd : x1', 'rs2_w0_val == -268435457', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800001b0]:KMMAC ra, a7, tp
	-[0x800001b4]:csrrs a7, vxsat, zero
	-[0x800001b8]:sw ra, 40(a1)
Current Store : [0x800001bc] : sw a7, 44(a1) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x14', 'rd : x2', 'rs2_w0_val == -134217729']
Last Code Sequence : 
	-[0x800001cc]:KMMAC sp, a5, a4
	-[0x800001d0]:csrrs a5, vxsat, zero
	-[0x800001d4]:sw sp, 48(a1)
Current Store : [0x800001d8] : sw a5, 52(a1) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x19', 'rd : x16', 'rs2_w0_val == -67108865']
Last Code Sequence : 
	-[0x800001e8]:KMMAC a6, tp, s3
	-[0x800001ec]:csrrs tp, vxsat, zero
	-[0x800001f0]:sw a6, 56(a1)
Current Store : [0x800001f4] : sw tp, 60(a1) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x8', 'rd : x24', 'rs2_w0_val == -33554433', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000204]:KMMAC s8, s4, fp
	-[0x80000208]:csrrs s4, vxsat, zero
	-[0x8000020c]:sw s8, 64(a1)
Current Store : [0x80000210] : sw s4, 68(a1) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x26', 'rd : x3', 'rs2_w0_val == -16777217', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000220]:KMMAC gp, s9, s10
	-[0x80000224]:csrrs s9, vxsat, zero
	-[0x80000228]:sw gp, 72(a1)
Current Store : [0x8000022c] : sw s9, 76(a1) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x27', 'rd : x0', 'rs2_w0_val == -8388609', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000240]:KMMAC zero, s6, s11
	-[0x80000244]:csrrs s6, vxsat, zero
	-[0x80000248]:sw zero, 80(a1)
Current Store : [0x8000024c] : sw s6, 84(a1) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x10', 'rd : x20', 'rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x8000025c]:KMMAC s4, a3, a0
	-[0x80000260]:csrrs a3, vxsat, zero
	-[0x80000264]:sw s4, 88(a1)
Current Store : [0x80000268] : sw a3, 92(a1) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x29', 'rd : x30', 'rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000027c]:KMMAC t5, t0, t4
	-[0x80000280]:csrrs t0, vxsat, zero
	-[0x80000284]:sw t5, 96(a1)
Current Store : [0x80000288] : sw t0, 100(a1) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x13', 'rd : x18', 'rs2_w0_val == -1048577', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x8000029c]:KMMAC s2, s1, a3
	-[0x800002a0]:csrrs s1, vxsat, zero
	-[0x800002a4]:sw s2, 104(a1)
Current Store : [0x800002a8] : sw s1, 108(a1) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x9', 'rd : x25', 'rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x800002c4]:KMMAC s9, t2, s1
	-[0x800002c8]:csrrs t2, vxsat, zero
	-[0x800002cc]:sw s9, 0(a2)
Current Store : [0x800002d0] : sw t2, 4(a2) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x5', 'rd : x31', 'rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x800002e0]:KMMAC t6, a6, t0
	-[0x800002e4]:csrrs a6, vxsat, zero
	-[0x800002e8]:sw t6, 8(a2)
Current Store : [0x800002ec] : sw a6, 12(a2) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rs2 : x0', 'rd : x10', 'rs2_w0_val == 0']
Last Code Sequence : 
	-[0x800002fc]:KMMAC a0, s10, zero
	-[0x80000300]:csrrs s10, vxsat, zero
	-[0x80000304]:sw a0, 16(a2)
Current Store : [0x80000308] : sw s10, 20(a2) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x1', 'rd : x19', 'rs2_w0_val == -65537', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000318]:KMMAC s3, t4, ra
	-[0x8000031c]:csrrs t4, vxsat, zero
	-[0x80000320]:sw s3, 24(a2)
Current Store : [0x80000324] : sw t4, 28(a2) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x23', 'rd : x4', 'rs2_w0_val == -32769', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000334]:KMMAC tp, gp, s7
	-[0x80000338]:csrrs gp, vxsat, zero
	-[0x8000033c]:sw tp, 32(a2)
Current Store : [0x80000340] : sw gp, 36(a2) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x3', 'rd : x9', 'rs2_w0_val == -16385', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000354]:KMMAC s1, a1, gp
	-[0x80000358]:csrrs a1, vxsat, zero
	-[0x8000035c]:sw s1, 40(a2)
Current Store : [0x80000360] : sw a1, 44(a2) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x11', 'rd : x8', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x80000374]:KMMAC fp, t1, a1
	-[0x80000378]:csrrs t1, vxsat, zero
	-[0x8000037c]:sw fp, 48(a2)
Current Store : [0x80000380] : sw t1, 52(a2) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x25', 'rd : x11', 'rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x80000394]:KMMAC a1, t3, s9
	-[0x80000398]:csrrs t3, vxsat, zero
	-[0x8000039c]:sw a1, 56(a2)
Current Store : [0x800003a0] : sw t3, 60(a2) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x22', 'rd : x5', 'rs2_w0_val == -2049', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800003b0]:KMMAC t0, a0, s6
	-[0x800003b4]:csrrs a0, vxsat, zero
	-[0x800003b8]:sw t0, 64(a2)
Current Store : [0x800003bc] : sw a0, 68(a2) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x31', 'rd : x14', 'rs2_w0_val == -1025', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800003c8]:KMMAC a4, s11, t6
	-[0x800003cc]:csrrs s11, vxsat, zero
	-[0x800003d0]:sw a4, 72(a2)
Current Store : [0x800003d4] : sw s11, 76(a2) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x2', 'rd : x28', 'rs2_w0_val == -513']
Last Code Sequence : 
	-[0x800003e4]:KMMAC t3, t6, sp
	-[0x800003e8]:csrrs t6, vxsat, zero
	-[0x800003ec]:sw t3, 80(a2)
Current Store : [0x800003f0] : sw t6, 84(a2) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x20', 'rd : x27', 'rs2_w0_val == -257']
Last Code Sequence : 
	-[0x80000400]:KMMAC s11, ra, s4
	-[0x80000404]:csrrs ra, vxsat, zero
	-[0x80000408]:sw s11, 88(a2)
Current Store : [0x8000040c] : sw ra, 92(a2) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x18', 'rd : x26', 'rs2_w0_val == -129']
Last Code Sequence : 
	-[0x8000041c]:KMMAC s10, t5, s2
	-[0x80000420]:csrrs t5, vxsat, zero
	-[0x80000424]:sw s10, 96(a2)
Current Store : [0x80000428] : sw t5, 100(a2) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x15', 'rd : x22', 'rs2_w0_val == -65']
Last Code Sequence : 
	-[0x80000434]:KMMAC s6, a4, a5
	-[0x80000438]:csrrs a4, vxsat, zero
	-[0x8000043c]:sw s6, 104(a2)
Current Store : [0x80000440] : sw a4, 108(a2) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x28', 'rd : x29', 'rs2_w0_val == -33', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000450]:KMMAC t4, s5, t3
	-[0x80000454]:csrrs s5, vxsat, zero
	-[0x80000458]:sw t4, 112(a2)
Current Store : [0x8000045c] : sw s5, 116(a2) -- Store: [0x800022f4]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x6', 'rd : x21', 'rs2_w0_val == -17', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000474]:KMMAC s5, sp, t1
	-[0x80000478]:csrrs sp, vxsat, zero
	-[0x8000047c]:sw s5, 0(ra)
Current Store : [0x80000480] : sw sp, 4(ra) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x16', 'rd : x15', 'rs2_w0_val == -9']
Last Code Sequence : 
	-[0x80000490]:KMMAC a5, s2, a6
	-[0x80000494]:csrrs s2, vxsat, zero
	-[0x80000498]:sw a5, 8(ra)
Current Store : [0x8000049c] : sw s2, 12(ra) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x21', 'rd : x17', 'rs2_w0_val == -5']
Last Code Sequence : 
	-[0x800004a8]:KMMAC a7, s3, s5
	-[0x800004ac]:csrrs s3, vxsat, zero
	-[0x800004b0]:sw a7, 16(ra)
Current Store : [0x800004b4] : sw s3, 20(ra) -- Store: [0x8000230c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -3', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800004c4]:KMMAC t6, t5, t4
	-[0x800004c8]:csrrs t5, vxsat, zero
	-[0x800004cc]:sw t6, 24(ra)
Current Store : [0x800004d0] : sw t5, 28(ra) -- Store: [0x80002314]:0x00000000




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800004dc]:KMMAC t6, t5, t4
	-[0x800004e0]:csrrs t5, vxsat, zero
	-[0x800004e4]:sw t6, 32(ra)
Current Store : [0x800004e8] : sw t5, 36(ra) -- Store: [0x8000231c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x800004f8]:KMMAC t6, t5, t4
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 40(ra)
Current Store : [0x80000504] : sw t5, 44(ra) -- Store: [0x80002324]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000510]:KMMAC t6, t5, t4
	-[0x80000514]:csrrs t5, vxsat, zero
	-[0x80000518]:sw t6, 48(ra)
Current Store : [0x8000051c] : sw t5, 52(ra) -- Store: [0x8000232c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000528]:KMMAC t6, t5, t4
	-[0x8000052c]:csrrs t5, vxsat, zero
	-[0x80000530]:sw t6, 56(ra)
Current Store : [0x80000534] : sw t5, 60(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000544]:KMMAC t6, t5, t4
	-[0x80000548]:csrrs t5, vxsat, zero
	-[0x8000054c]:sw t6, 64(ra)
Current Store : [0x80000550] : sw t5, 68(ra) -- Store: [0x8000233c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x8000055c]:KMMAC t6, t5, t4
	-[0x80000560]:csrrs t5, vxsat, zero
	-[0x80000564]:sw t6, 72(ra)
Current Store : [0x80000568] : sw t5, 76(ra) -- Store: [0x80002344]:0x00000000




Last Coverpoint : ['rs2_w0_val == 67108864', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000574]:KMMAC t6, t5, t4
	-[0x80000578]:csrrs t5, vxsat, zero
	-[0x8000057c]:sw t6, 80(ra)
Current Store : [0x80000580] : sw t5, 84(ra) -- Store: [0x8000234c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x8000058c]:KMMAC t6, t5, t4
	-[0x80000590]:csrrs t5, vxsat, zero
	-[0x80000594]:sw t6, 88(ra)
Current Store : [0x80000598] : sw t5, 92(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800005a8]:KMMAC t6, t5, t4
	-[0x800005ac]:csrrs t5, vxsat, zero
	-[0x800005b0]:sw t6, 96(ra)
Current Store : [0x800005b4] : sw t5, 100(ra) -- Store: [0x8000235c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800005c0]:KMMAC t6, t5, t4
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 104(ra)
Current Store : [0x800005cc] : sw t5, 108(ra) -- Store: [0x80002364]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800005dc]:KMMAC t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 112(ra)
Current Store : [0x800005e8] : sw t5, 116(ra) -- Store: [0x8000236c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x800005f4]:KMMAC t6, t5, t4
	-[0x800005f8]:csrrs t5, vxsat, zero
	-[0x800005fc]:sw t6, 120(ra)
Current Store : [0x80000600] : sw t5, 124(ra) -- Store: [0x80002374]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x8000060c]:KMMAC t6, t5, t4
	-[0x80000610]:csrrs t5, vxsat, zero
	-[0x80000614]:sw t6, 128(ra)
Current Store : [0x80000618] : sw t5, 132(ra) -- Store: [0x8000237c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x80000624]:KMMAC t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 136(ra)
Current Store : [0x80000630] : sw t5, 140(ra) -- Store: [0x80002384]:0x00000000




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000640]:KMMAC t6, t5, t4
	-[0x80000644]:csrrs t5, vxsat, zero
	-[0x80000648]:sw t6, 144(ra)
Current Store : [0x8000064c] : sw t5, 148(ra) -- Store: [0x8000238c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000658]:KMMAC t6, t5, t4
	-[0x8000065c]:csrrs t5, vxsat, zero
	-[0x80000660]:sw t6, 152(ra)
Current Store : [0x80000664] : sw t5, 156(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_w0_val == 128', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000670]:KMMAC t6, t5, t4
	-[0x80000674]:csrrs t5, vxsat, zero
	-[0x80000678]:sw t6, 160(ra)
Current Store : [0x8000067c] : sw t5, 164(ra) -- Store: [0x8000239c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000068c]:KMMAC t6, t5, t4
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 168(ra)
Current Store : [0x80000698] : sw t5, 172(ra) -- Store: [0x800023a4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800006a4]:KMMAC t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 176(ra)
Current Store : [0x800006b0] : sw t5, 180(ra) -- Store: [0x800023ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800006c0]:KMMAC t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 184(ra)
Current Store : [0x800006cc] : sw t5, 188(ra) -- Store: [0x800023b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800006dc]:KMMAC t6, t5, t4
	-[0x800006e0]:csrrs t5, vxsat, zero
	-[0x800006e4]:sw t6, 192(ra)
Current Store : [0x800006e8] : sw t5, 196(ra) -- Store: [0x800023bc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x800006f4]:KMMAC t6, t5, t4
	-[0x800006f8]:csrrs t5, vxsat, zero
	-[0x800006fc]:sw t6, 200(ra)
Current Store : [0x80000700] : sw t5, 204(ra) -- Store: [0x800023c4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000070c]:KMMAC t6, t5, t4
	-[0x80000710]:csrrs t5, vxsat, zero
	-[0x80000714]:sw t6, 208(ra)
Current Store : [0x80000718] : sw t5, 212(ra) -- Store: [0x800023cc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000728]:KMMAC t6, t5, t4
	-[0x8000072c]:csrrs t5, vxsat, zero
	-[0x80000730]:sw t6, 216(ra)
Current Store : [0x80000734] : sw t5, 220(ra) -- Store: [0x800023d4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000744]:KMMAC t6, t5, t4
	-[0x80000748]:csrrs t5, vxsat, zero
	-[0x8000074c]:sw t6, 224(ra)
Current Store : [0x80000750] : sw t5, 228(ra) -- Store: [0x800023dc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x8000075c]:KMMAC t6, t5, t4
	-[0x80000760]:csrrs t5, vxsat, zero
	-[0x80000764]:sw t6, 232(ra)
Current Store : [0x80000768] : sw t5, 236(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x8000077c]:KMMAC t6, t5, t4
	-[0x80000780]:csrrs t5, vxsat, zero
	-[0x80000784]:sw t6, 240(ra)
Current Store : [0x80000788] : sw t5, 244(ra) -- Store: [0x800023ec]:0x00000000




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x80000798]:KMMAC t6, t5, t4
	-[0x8000079c]:csrrs t5, vxsat, zero
	-[0x800007a0]:sw t6, 248(ra)
Current Store : [0x800007a4] : sw t5, 252(ra) -- Store: [0x800023f4]:0x00000000




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x800007b0]:KMMAC t6, t5, t4
	-[0x800007b4]:csrrs t5, vxsat, zero
	-[0x800007b8]:sw t6, 256(ra)
Current Store : [0x800007bc] : sw t5, 260(ra) -- Store: [0x800023fc]:0x00000000




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x800007c8]:KMMAC t6, t5, t4
	-[0x800007cc]:csrrs t5, vxsat, zero
	-[0x800007d0]:sw t6, 264(ra)
Current Store : [0x800007d4] : sw t5, 268(ra) -- Store: [0x80002404]:0x00000000




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x800007e4]:KMMAC t6, t5, t4
	-[0x800007e8]:csrrs t5, vxsat, zero
	-[0x800007ec]:sw t6, 272(ra)
Current Store : [0x800007f0] : sw t5, 276(ra) -- Store: [0x8000240c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800007fc]:KMMAC t6, t5, t4
	-[0x80000800]:csrrs t5, vxsat, zero
	-[0x80000804]:sw t6, 280(ra)
Current Store : [0x80000808] : sw t5, 284(ra) -- Store: [0x80002414]:0x00000000




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80000818]:KMMAC t6, t5, t4
	-[0x8000081c]:csrrs t5, vxsat, zero
	-[0x80000820]:sw t6, 288(ra)
Current Store : [0x80000824] : sw t5, 292(ra) -- Store: [0x8000241c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80000834]:KMMAC t6, t5, t4
	-[0x80000838]:csrrs t5, vxsat, zero
	-[0x8000083c]:sw t6, 296(ra)
Current Store : [0x80000840] : sw t5, 300(ra) -- Store: [0x80002424]:0x00000000




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80000850]:KMMAC t6, t5, t4
	-[0x80000854]:csrrs t5, vxsat, zero
	-[0x80000858]:sw t6, 304(ra)
Current Store : [0x8000085c] : sw t5, 308(ra) -- Store: [0x8000242c]:0x00000000




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x8000086c]:KMMAC t6, t5, t4
	-[0x80000870]:csrrs t5, vxsat, zero
	-[0x80000874]:sw t6, 312(ra)
Current Store : [0x80000878] : sw t5, 316(ra) -- Store: [0x80002434]:0x00000000




Last Coverpoint : ['opcode : kmmac', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 0', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000888]:KMMAC t6, t5, t4
	-[0x8000088c]:csrrs t5, vxsat, zero
	-[0x80000890]:sw t6, 320(ra)
Current Store : [0x80000894] : sw t5, 324(ra) -- Store: [0x8000243c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -1', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800008a0]:KMMAC t6, t5, t4
	-[0x800008a4]:csrrs t5, vxsat, zero
	-[0x800008a8]:sw t6, 328(ra)
Current Store : [0x800008ac] : sw t5, 332(ra) -- Store: [0x80002444]:0x00000000




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800008bc]:KMMAC t6, t5, t4
	-[0x800008c0]:csrrs t5, vxsat, zero
	-[0x800008c4]:sw t6, 336(ra)
Current Store : [0x800008c8] : sw t5, 340(ra) -- Store: [0x8000244c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800008dc]:KMMAC t6, t5, t4
	-[0x800008e0]:csrrs t5, vxsat, zero
	-[0x800008e4]:sw t6, 344(ra)
Current Store : [0x800008e8] : sw t5, 348(ra) -- Store: [0x80002454]:0x00000000




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x800008f8]:KMMAC t6, t5, t4
	-[0x800008fc]:csrrs t5, vxsat, zero
	-[0x80000900]:sw t6, 352(ra)
Current Store : [0x80000904] : sw t5, 356(ra) -- Store: [0x8000245c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000914]:KMMAC t6, t5, t4
	-[0x80000918]:csrrs t5, vxsat, zero
	-[0x8000091c]:sw t6, 360(ra)
Current Store : [0x80000920] : sw t5, 364(ra) -- Store: [0x80002464]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000934]:KMMAC t6, t5, t4
	-[0x80000938]:csrrs t5, vxsat, zero
	-[0x8000093c]:sw t6, 368(ra)
Current Store : [0x80000940] : sw t5, 372(ra) -- Store: [0x8000246c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000954]:KMMAC t6, t5, t4
	-[0x80000958]:csrrs t5, vxsat, zero
	-[0x8000095c]:sw t6, 376(ra)
Current Store : [0x80000960] : sw t5, 380(ra) -- Store: [0x80002474]:0x00000000




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000970]:KMMAC t6, t5, t4
	-[0x80000974]:csrrs t5, vxsat, zero
	-[0x80000978]:sw t6, 384(ra)
Current Store : [0x8000097c] : sw t5, 388(ra) -- Store: [0x8000247c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x8000098c]:KMMAC t6, t5, t4
	-[0x80000990]:csrrs t5, vxsat, zero
	-[0x80000994]:sw t6, 392(ra)
Current Store : [0x80000998] : sw t5, 396(ra) -- Store: [0x80002484]:0x00000000




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x800009ac]:KMMAC t6, t5, t4
	-[0x800009b0]:csrrs t5, vxsat, zero
	-[0x800009b4]:sw t6, 400(ra)
Current Store : [0x800009b8] : sw t5, 404(ra) -- Store: [0x8000248c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800009c8]:KMMAC t6, t5, t4
	-[0x800009cc]:csrrs t5, vxsat, zero
	-[0x800009d0]:sw t6, 408(ra)
Current Store : [0x800009d4] : sw t5, 412(ra) -- Store: [0x80002494]:0x00000000




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800009e0]:KMMAC t6, t5, t4
	-[0x800009e4]:csrrs t5, vxsat, zero
	-[0x800009e8]:sw t6, 416(ra)
Current Store : [0x800009ec] : sw t5, 420(ra) -- Store: [0x8000249c]:0x00000000




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800009f8]:KMMAC t6, t5, t4
	-[0x800009fc]:csrrs t5, vxsat, zero
	-[0x80000a00]:sw t6, 424(ra)
Current Store : [0x80000a04] : sw t5, 428(ra) -- Store: [0x800024a4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000a10]:KMMAC t6, t5, t4
	-[0x80000a14]:csrrs t5, vxsat, zero
	-[0x80000a18]:sw t6, 432(ra)
Current Store : [0x80000a1c] : sw t5, 436(ra) -- Store: [0x800024ac]:0x00000000




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000a28]:KMMAC t6, t5, t4
	-[0x80000a2c]:csrrs t5, vxsat, zero
	-[0x80000a30]:sw t6, 440(ra)
Current Store : [0x80000a34] : sw t5, 444(ra) -- Store: [0x800024b4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000a44]:KMMAC t6, t5, t4
	-[0x80000a48]:csrrs t5, vxsat, zero
	-[0x80000a4c]:sw t6, 448(ra)
Current Store : [0x80000a50] : sw t5, 452(ra) -- Store: [0x800024bc]:0x00000000




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000a5c]:KMMAC t6, t5, t4
	-[0x80000a60]:csrrs t5, vxsat, zero
	-[0x80000a64]:sw t6, 456(ra)
Current Store : [0x80000a68] : sw t5, 460(ra) -- Store: [0x800024c4]:0x00000000




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000a74]:KMMAC t6, t5, t4
	-[0x80000a78]:csrrs t5, vxsat, zero
	-[0x80000a7c]:sw t6, 464(ra)
Current Store : [0x80000a80] : sw t5, 468(ra) -- Store: [0x800024cc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000a8c]:KMMAC t6, t5, t4
	-[0x80000a90]:csrrs t5, vxsat, zero
	-[0x80000a94]:sw t6, 472(ra)
Current Store : [0x80000a98] : sw t5, 476(ra) -- Store: [0x800024d4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000aa8]:KMMAC t6, t5, t4
	-[0x80000aac]:csrrs t5, vxsat, zero
	-[0x80000ab0]:sw t6, 480(ra)
Current Store : [0x80000ab4] : sw t5, 484(ra) -- Store: [0x800024dc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000ac4]:KMMAC t6, t5, t4
	-[0x80000ac8]:csrrs t5, vxsat, zero
	-[0x80000acc]:sw t6, 488(ra)
Current Store : [0x80000ad0] : sw t5, 492(ra) -- Store: [0x800024e4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000adc]:KMMAC t6, t5, t4
	-[0x80000ae0]:csrrs t5, vxsat, zero
	-[0x80000ae4]:sw t6, 496(ra)
Current Store : [0x80000ae8] : sw t5, 500(ra) -- Store: [0x800024ec]:0x00000000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000af4]:KMMAC t6, t5, t4
	-[0x80000af8]:csrrs t5, vxsat, zero
	-[0x80000afc]:sw t6, 504(ra)
Current Store : [0x80000b00] : sw t5, 508(ra) -- Store: [0x800024f4]:0x00000000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000b0c]:KMMAC t6, t5, t4
	-[0x80000b10]:csrrs t5, vxsat, zero
	-[0x80000b14]:sw t6, 512(ra)
Current Store : [0x80000b18] : sw t5, 516(ra) -- Store: [0x800024fc]:0x00000000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b28]:KMMAC t6, t5, t4
	-[0x80000b2c]:csrrs t5, vxsat, zero
	-[0x80000b30]:sw t6, 520(ra)
Current Store : [0x80000b34] : sw t5, 524(ra) -- Store: [0x80002504]:0x00000000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000b44]:KMMAC t6, t5, t4
	-[0x80000b48]:csrrs t5, vxsat, zero
	-[0x80000b4c]:sw t6, 528(ra)
Current Store : [0x80000b50] : sw t5, 532(ra) -- Store: [0x8000250c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000b5c]:KMMAC t6, t5, t4
	-[0x80000b60]:csrrs t5, vxsat, zero
	-[0x80000b64]:sw t6, 536(ra)
Current Store : [0x80000b68] : sw t5, 540(ra) -- Store: [0x80002514]:0x00000000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000b78]:KMMAC t6, t5, t4
	-[0x80000b7c]:csrrs t5, vxsat, zero
	-[0x80000b80]:sw t6, 544(ra)
Current Store : [0x80000b84] : sw t5, 548(ra) -- Store: [0x8000251c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000b90]:KMMAC t6, t5, t4
	-[0x80000b94]:csrrs t5, vxsat, zero
	-[0x80000b98]:sw t6, 552(ra)
Current Store : [0x80000b9c] : sw t5, 556(ra) -- Store: [0x80002524]:0x00000000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000ba8]:KMMAC t6, t5, t4
	-[0x80000bac]:csrrs t5, vxsat, zero
	-[0x80000bb0]:sw t6, 560(ra)
Current Store : [0x80000bb4] : sw t5, 564(ra) -- Store: [0x8000252c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000bc8]:KMMAC t6, t5, t4
	-[0x80000bcc]:csrrs t5, vxsat, zero
	-[0x80000bd0]:sw t6, 568(ra)
Current Store : [0x80000bd4] : sw t5, 572(ra) -- Store: [0x80002534]:0x00000000




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000be4]:KMMAC t6, t5, t4
	-[0x80000be8]:csrrs t5, vxsat, zero
	-[0x80000bec]:sw t6, 576(ra)
Current Store : [0x80000bf0] : sw t5, 580(ra) -- Store: [0x8000253c]:0x00000000




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000bfc]:KMMAC t6, t5, t4
	-[0x80000c00]:csrrs t5, vxsat, zero
	-[0x80000c04]:sw t6, 584(ra)
Current Store : [0x80000c08] : sw t5, 588(ra) -- Store: [0x80002544]:0x00000000




Last Coverpoint : ['opcode : kmmac', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000c18]:KMMAC t6, t5, t4
	-[0x80000c1c]:csrrs t5, vxsat, zero
	-[0x80000c20]:sw t6, 592(ra)
Current Store : [0x80000c24] : sw t5, 596(ra) -- Store: [0x8000254c]:0x00000000




Last Coverpoint : ['opcode : kmmac', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000c34]:KMMAC t6, t5, t4
	-[0x80000c38]:csrrs t5, vxsat, zero
	-[0x80000c3c]:sw t6, 600(ra)
Current Store : [0x80000c40] : sw t5, 604(ra) -- Store: [0x80002554]:0x00000000




Last Coverpoint : ['opcode : kmmac', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == -8388609', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000c54]:KMMAC t6, t5, t4
	-[0x80000c58]:csrrs t5, vxsat, zero
	-[0x80000c5c]:sw t6, 608(ra)
Current Store : [0x80000c60] : sw t5, 612(ra) -- Store: [0x8000255c]:0x00000000




Last Coverpoint : ['rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x80000c70]:KMMAC t6, t5, t4
	-[0x80000c74]:csrrs t5, vxsat, zero
	-[0x80000c78]:sw t6, 616(ra)
Current Store : [0x80000c7c] : sw t5, 620(ra) -- Store: [0x80002564]:0x00000000





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

|s.no|        signature         |                                                                        coverpoints                                                                        |                                                    code                                                     |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmac<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br> |[0x80000118]:KMMAC a2, a2, a2<br> [0x8000011c]:csrrs a2, vxsat, zero<br> [0x80000120]:sw a2, 0(a1)<br>       |
|   2|[0x80002218]<br>0x0751B5F7|- rs1 : x24<br> - rs2 : x24<br> - rd : x13<br> - rs1 == rs2 != rd<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 1431655765<br>                        |[0x80000138]:KMMAC a3, s8, s8<br> [0x8000013c]:csrrs s8, vxsat, zero<br> [0x80000140]:sw a3, 8(a1)<br>       |
|   3|[0x80002220]<br>0x80002000|- rs1 : x0<br> - rs2 : x17<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 0<br>            |[0x80000158]:KMMAC t1, zero, a7<br> [0x8000015c]:csrrs zero, vxsat, zero<br> [0x80000160]:sw t1, 16(a1)<br>  |
|   4|[0x80002228]<br>0xC1FFFFFF|- rs1 : x8<br> - rs2 : x7<br> - rd : x7<br> - rs2 == rd != rs1<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == -134217729<br>                          |[0x80000178]:KMMAC t2, fp, t2<br> [0x8000017c]:csrrs fp, vxsat, zero<br> [0x80000180]:sw t2, 24(a1)<br>      |
|   5|[0x80002230]<br>0x00000000|- rs1 : x23<br> - rs2 : x30<br> - rd : x23<br> - rs1 == rd != rs2<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == 32768<br>                             |[0x80000194]:KMMAC s7, s7, t5<br> [0x80000198]:csrrs s7, vxsat, zero<br> [0x8000019c]:sw s7, 32(a1)<br>      |
|   6|[0x80002238]<br>0xFEDDBEAC|- rs1 : x17<br> - rs2 : x4<br> - rd : x1<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == 16777216<br>                                                   |[0x800001b0]:KMMAC ra, a7, tp<br> [0x800001b4]:csrrs a7, vxsat, zero<br> [0x800001b8]:sw ra, 40(a1)<br>      |
|   7|[0x80002240]<br>0xFF76DF56|- rs1 : x15<br> - rs2 : x14<br> - rd : x2<br> - rs2_w0_val == -134217729<br>                                                                               |[0x800001cc]:KMMAC sp, a5, a4<br> [0x800001d0]:csrrs a5, vxsat, zero<br> [0x800001d4]:sw sp, 48(a1)<br>      |
|   8|[0x80002248]<br>0x7D57FDDA|- rs1 : x4<br> - rs2 : x19<br> - rd : x16<br> - rs2_w0_val == -67108865<br>                                                                                |[0x800001e8]:KMMAC a6, tp, s3<br> [0x800001ec]:csrrs tp, vxsat, zero<br> [0x800001f0]:sw a6, 56(a1)<br>      |
|   9|[0x80002250]<br>0xFFFF7FFF|- rs1 : x20<br> - rs2 : x8<br> - rd : x24<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == 4194304<br>                                                    |[0x80000204]:KMMAC s8, s4, fp<br> [0x80000208]:csrrs s4, vxsat, zero<br> [0x8000020c]:sw s8, 64(a1)<br>      |
|  10|[0x80002258]<br>0x7FBB6FAD|- rs1 : x25<br> - rs2 : x26<br> - rd : x3<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == -513<br>                                                       |[0x80000220]:KMMAC gp, s9, s10<br> [0x80000224]:csrrs s9, vxsat, zero<br> [0x80000228]:sw gp, 72(a1)<br>     |
|  11|[0x80002260]<br>0x00000000|- rs1 : x22<br> - rs2 : x27<br> - rd : x0<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == -4194305<br>                                                    |[0x80000240]:KMMAC zero, s6, s11<br> [0x80000244]:csrrs s6, vxsat, zero<br> [0x80000248]:sw zero, 80(a1)<br> |
|  12|[0x80002268]<br>0xFFFFBFFF|- rs1 : x13<br> - rs2 : x10<br> - rd : x20<br> - rs2_w0_val == -4194305<br>                                                                                |[0x8000025c]:KMMAC s4, a3, a0<br> [0x80000260]:csrrs a3, vxsat, zero<br> [0x80000264]:sw s4, 88(a1)<br>      |
|  13|[0x80002270]<br>0xDFFFFFE8|- rs1 : x5<br> - rs2 : x29<br> - rd : x30<br> - rs2_w0_val == -2097153<br>                                                                                 |[0x8000027c]:KMMAC t5, t0, t4<br> [0x80000280]:csrrs t0, vxsat, zero<br> [0x80000284]:sw t5, 96(a1)<br>      |
|  14|[0x80002278]<br>0xDF56FF7A|- rs1 : x9<br> - rs2 : x13<br> - rd : x18<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == -16385<br>                                                      |[0x8000029c]:KMMAC s2, s1, a3<br> [0x800002a0]:csrrs s1, vxsat, zero<br> [0x800002a4]:sw s2, 104(a1)<br>     |
|  15|[0x80002280]<br>0xFFFD5555|- rs1 : x7<br> - rs2 : x9<br> - rd : x25<br> - rs2_w0_val == -524289<br>                                                                                   |[0x800002c4]:KMMAC s9, t2, s1<br> [0x800002c8]:csrrs t2, vxsat, zero<br> [0x800002cc]:sw s9, 0(a2)<br>       |
|  16|[0x80002288]<br>0xFBB7FAB7|- rs1 : x16<br> - rs2 : x5<br> - rd : x31<br> - rs2_w0_val == -262145<br>                                                                                  |[0x800002e0]:KMMAC t6, a6, t0<br> [0x800002e4]:csrrs a6, vxsat, zero<br> [0x800002e8]:sw t6, 8(a2)<br>       |
|  17|[0x80002290]<br>0xFFBFFFFF|- rs1 : x26<br> - rs2 : x0<br> - rd : x10<br> - rs2_w0_val == 0<br>                                                                                        |[0x800002fc]:KMMAC a0, s10, zero<br> [0x80000300]:csrrs s10, vxsat, zero<br> [0x80000304]:sw a0, 16(a2)<br>  |
|  18|[0x80002298]<br>0xFBFFFFDE|- rs1 : x29<br> - rs2 : x1<br> - rd : x19<br> - rs2_w0_val == -65537<br> - rs1_w0_val == 2097152<br>                                                       |[0x80000318]:KMMAC s3, t4, ra<br> [0x8000031c]:csrrs t4, vxsat, zero<br> [0x80000320]:sw s3, 24(a2)<br>      |
|  19|[0x800022a0]<br>0x00000000|- rs1 : x3<br> - rs2 : x23<br> - rd : x4<br> - rs2_w0_val == -32769<br> - rs1_w0_val == -17<br>                                                            |[0x80000334]:KMMAC tp, gp, s7<br> [0x80000338]:csrrs gp, vxsat, zero<br> [0x8000033c]:sw tp, 32(a2)<br>      |
|  20|[0x800022a8]<br>0xFFF80001|- rs1 : x11<br> - rs2 : x3<br> - rd : x9<br> - rs2_w0_val == -16385<br> - rs1_w0_val == -524289<br>                                                        |[0x80000354]:KMMAC s1, a1, gp<br> [0x80000358]:csrrs a1, vxsat, zero<br> [0x8000035c]:sw s1, 40(a2)<br>      |
|  21|[0x800022b0]<br>0xFE000007|- rs1 : x6<br> - rs2 : x11<br> - rd : x8<br> - rs2_w0_val == -8193<br>                                                                                     |[0x80000374]:KMMAC fp, t1, a1<br> [0x80000378]:csrrs t1, vxsat, zero<br> [0x8000037c]:sw fp, 48(a2)<br>      |
|  22|[0x800022b8]<br>0xFFFFDFFE|- rs1 : x28<br> - rs2 : x25<br> - rd : x11<br> - rs2_w0_val == -4097<br>                                                                                   |[0x80000394]:KMMAC a1, t3, s9<br> [0x80000398]:csrrs t3, vxsat, zero<br> [0x8000039c]:sw a1, 56(a2)<br>      |
|  23|[0x800022c0]<br>0xFFFBFFFE|- rs1 : x10<br> - rs2 : x22<br> - rd : x5<br> - rs2_w0_val == -2049<br> - rs1_w0_val == 2<br>                                                              |[0x800003b0]:KMMAC t0, a0, s6<br> [0x800003b4]:csrrs a0, vxsat, zero<br> [0x800003b8]:sw t0, 64(a2)<br>      |
|  24|[0x800022c8]<br>0xF7FFFFDE|- rs1 : x27<br> - rs2 : x31<br> - rd : x14<br> - rs2_w0_val == -1025<br> - rs1_w0_val == 134217728<br>                                                     |[0x800003c8]:KMMAC a4, s11, t6<br> [0x800003cc]:csrrs s11, vxsat, zero<br> [0x800003d0]:sw a4, 72(a2)<br>    |
|  25|[0x800022d0]<br>0xFFFFFF55|- rs1 : x31<br> - rs2 : x2<br> - rd : x28<br> - rs2_w0_val == -513<br>                                                                                     |[0x800003e4]:KMMAC t3, t6, sp<br> [0x800003e8]:csrrs t6, vxsat, zero<br> [0x800003ec]:sw t3, 80(a2)<br>      |
|  26|[0x800022d8]<br>0xFFFFFFCC|- rs1 : x1<br> - rs2 : x20<br> - rd : x27<br> - rs2_w0_val == -257<br>                                                                                     |[0x80000400]:KMMAC s11, ra, s4<br> [0x80000404]:csrrs ra, vxsat, zero<br> [0x80000408]:sw s11, 88(a2)<br>    |
|  27|[0x800022e0]<br>0xFFFFFFD4|- rs1 : x30<br> - rs2 : x18<br> - rd : x26<br> - rs2_w0_val == -129<br>                                                                                    |[0x8000041c]:KMMAC s10, t5, s2<br> [0x80000420]:csrrs t5, vxsat, zero<br> [0x80000424]:sw s10, 96(a2)<br>    |
|  28|[0x800022e8]<br>0xFFFFF7FF|- rs1 : x14<br> - rs2 : x15<br> - rd : x22<br> - rs2_w0_val == -65<br>                                                                                     |[0x80000434]:KMMAC s6, a4, a5<br> [0x80000438]:csrrs a4, vxsat, zero<br> [0x8000043c]:sw s6, 104(a2)<br>     |
|  29|[0x800022f0]<br>0x00000000|- rs1 : x21<br> - rs2 : x28<br> - rd : x29<br> - rs2_w0_val == -33<br> - rs1_w0_val == -131073<br>                                                         |[0x80000450]:KMMAC t4, s5, t3<br> [0x80000454]:csrrs s5, vxsat, zero<br> [0x80000458]:sw t4, 112(a2)<br>     |
|  30|[0x800022f8]<br>0x00000000|- rs1 : x2<br> - rs2 : x6<br> - rd : x21<br> - rs2_w0_val == -17<br> - rs1_w0_val == -65537<br>                                                            |[0x80000474]:KMMAC s5, sp, t1<br> [0x80000478]:csrrs sp, vxsat, zero<br> [0x8000047c]:sw s5, 0(ra)<br>       |
|  31|[0x80002300]<br>0xFFFFFFBC|- rs1 : x18<br> - rs2 : x16<br> - rd : x15<br> - rs2_w0_val == -9<br>                                                                                      |[0x80000490]:KMMAC a5, s2, a6<br> [0x80000494]:csrrs s2, vxsat, zero<br> [0x80000498]:sw a5, 8(ra)<br>       |
|  32|[0x80002308]<br>0x00000000|- rs1 : x19<br> - rs2 : x21<br> - rd : x17<br> - rs2_w0_val == -5<br>                                                                                      |[0x800004a8]:KMMAC a7, s3, s5<br> [0x800004ac]:csrrs s3, vxsat, zero<br> [0x800004b0]:sw a7, 16(ra)<br>      |
|  33|[0x80002310]<br>0x00000000|- rs2_w0_val == -3<br> - rs1_w0_val == -1048577<br>                                                                                                        |[0x800004c4]:KMMAC t6, t5, t4<br> [0x800004c8]:csrrs t5, vxsat, zero<br> [0x800004cc]:sw t6, 24(ra)<br>      |
|  34|[0x80002318]<br>0xFFFFFFFF|- rs2_w0_val == -2<br> - rs1_w0_val == 8192<br>                                                                                                            |[0x800004dc]:KMMAC t6, t5, t4<br> [0x800004e0]:csrrs t5, vxsat, zero<br> [0x800004e4]:sw t6, 32(ra)<br>      |
|  35|[0x80002320]<br>0xCCCCCCCC|- rs2_w0_val == -2147483648<br>                                                                                                                            |[0x800004f8]:KMMAC t6, t5, t4<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 40(ra)<br>      |
|  36|[0x80002328]<br>0xCCCCCD0C|- rs2_w0_val == 1073741824<br> - rs1_w0_val == 256<br>                                                                                                     |[0x80000510]:KMMAC t6, t5, t4<br> [0x80000514]:csrrs t5, vxsat, zero<br> [0x80000518]:sw t6, 48(ra)<br>      |
|  37|[0x80002330]<br>0xCCCCCD0C|- rs2_w0_val == 536870912<br>                                                                                                                              |[0x80000528]:KMMAC t6, t5, t4<br> [0x8000052c]:csrrs t5, vxsat, zero<br> [0x80000530]:sw t6, 56(ra)<br>      |
|  38|[0x80002338]<br>0xCCCCC1BB|- rs2_w0_val == 268435456<br>                                                                                                                              |[0x80000544]:KMMAC t6, t5, t4<br> [0x80000548]:csrrs t5, vxsat, zero<br> [0x8000054c]:sw t6, 64(ra)<br>      |
|  39|[0x80002340]<br>0xCCCCC1BB|- rs2_w0_val == 134217728<br>                                                                                                                              |[0x8000055c]:KMMAC t6, t5, t4<br> [0x80000560]:csrrs t5, vxsat, zero<br> [0x80000564]:sw t6, 72(ra)<br>      |
|  40|[0x80002348]<br>0xCCCCC1AA|- rs2_w0_val == 67108864<br> - rs1_w0_val == -1025<br>                                                                                                     |[0x80000574]:KMMAC t6, t5, t4<br> [0x80000578]:csrrs t5, vxsat, zero<br> [0x8000057c]:sw t6, 80(ra)<br>      |
|  41|[0x80002350]<br>0xCCCCC1AA|- rs2_w0_val == 33554432<br> - rs1_w0_val == 4<br>                                                                                                         |[0x8000058c]:KMMAC t6, t5, t4<br> [0x80000590]:csrrs t5, vxsat, zero<br> [0x80000594]:sw t6, 88(ra)<br>      |
|  42|[0x80002358]<br>0xCCC8C1A9|- rs2_w0_val == 16777216<br> - rs1_w0_val == -67108865<br>                                                                                                 |[0x800005a8]:KMMAC t6, t5, t4<br> [0x800005ac]:csrrs t5, vxsat, zero<br> [0x800005b0]:sw t6, 96(ra)<br>      |
|  43|[0x80002360]<br>0xCCC8C1A9|- rs2_w0_val == 8388608<br>                                                                                                                                |[0x800005c0]:KMMAC t6, t5, t4<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 104(ra)<br>     |
|  44|[0x80002368]<br>0xCCDE16FE|- rs2_w0_val == 4194304<br>                                                                                                                                |[0x800005dc]:KMMAC t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 112(ra)<br>     |
|  45|[0x80002370]<br>0xCCDE1AFE|- rs2_w0_val == 2097152<br>                                                                                                                                |[0x800005f4]:KMMAC t6, t5, t4<br> [0x800005f8]:csrrs t5, vxsat, zero<br> [0x800005fc]:sw t6, 120(ra)<br>     |
|  46|[0x80002378]<br>0xCCD61AFE|- rs1_w0_val == -2147483648<br> - rs2_w0_val == 1048576<br>                                                                                                |[0x8000060c]:KMMAC t6, t5, t4<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 128(ra)<br>     |
|  47|[0x80002380]<br>0xCCD61AFD|- rs2_w0_val == 524288<br>                                                                                                                                 |[0x80000624]:KMMAC t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 136(ra)<br>     |
|  48|[0x80002388]<br>0xCCD51AFC|- rs2_w0_val == 262144<br> - rs1_w0_val == -1073741825<br>                                                                                                 |[0x80000640]:KMMAC t6, t5, t4<br> [0x80000644]:csrrs t5, vxsat, zero<br> [0x80000648]:sw t6, 144(ra)<br>     |
|  49|[0x80002390]<br>0xCCD51AFC|- rs2_w0_val == 131072<br> - rs1_w0_val == 1024<br>                                                                                                        |[0x80000658]:KMMAC t6, t5, t4<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 152(ra)<br>     |
|  50|[0x80002398]<br>0xCCD51AFC|- rs2_w0_val == 128<br> - rs1_w0_val == 32<br>                                                                                                             |[0x80000670]:KMMAC t6, t5, t4<br> [0x80000674]:csrrs t5, vxsat, zero<br> [0x80000678]:sw t6, 160(ra)<br>     |
|  51|[0x800023a0]<br>0xCCD51AFF|- rs1_w0_val == 16<br>                                                                                                                                     |[0x8000068c]:KMMAC t6, t5, t4<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 168(ra)<br>     |
|  52|[0x800023a8]<br>0xCCD51AFF|- rs2_w0_val == 1024<br> - rs1_w0_val == 8<br>                                                                                                             |[0x800006a4]:KMMAC t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 176(ra)<br>     |
|  53|[0x800023b0]<br>0xCCD51AFF|- rs1_w0_val == 1<br>                                                                                                                                      |[0x800006c0]:KMMAC t6, t5, t4<br> [0x800006c4]:csrrs t5, vxsat, zero<br> [0x800006c8]:sw t6, 184(ra)<br>     |
|  54|[0x800023b8]<br>0xCCD51AFE|- rs1_w0_val == -1<br>                                                                                                                                     |[0x800006dc]:KMMAC t6, t5, t4<br> [0x800006e0]:csrrs t5, vxsat, zero<br> [0x800006e4]:sw t6, 192(ra)<br>     |
|  55|[0x800023c0]<br>0xCCD51AFE|- rs2_w0_val == 65536<br>                                                                                                                                  |[0x800006f4]:KMMAC t6, t5, t4<br> [0x800006f8]:csrrs t5, vxsat, zero<br> [0x800006fc]:sw t6, 200(ra)<br>     |
|  56|[0x800023c8]<br>0xCCD51AFE|- rs2_w0_val == 32768<br> - rs1_w0_val == 128<br>                                                                                                          |[0x8000070c]:KMMAC t6, t5, t4<br> [0x80000710]:csrrs t5, vxsat, zero<br> [0x80000714]:sw t6, 208(ra)<br>     |
|  57|[0x800023d0]<br>0xCCD516FD|- rs2_w0_val == 16384<br> - rs1_w0_val == -268435457<br>                                                                                                   |[0x80000728]:KMMAC t6, t5, t4<br> [0x8000072c]:csrrs t5, vxsat, zero<br> [0x80000730]:sw t6, 216(ra)<br>     |
|  58|[0x800023d8]<br>0xCCD526FC|- rs2_w0_val == 8192<br> - rs1_w0_val == 2147483647<br>                                                                                                    |[0x80000744]:KMMAC t6, t5, t4<br> [0x80000748]:csrrs t5, vxsat, zero<br> [0x8000074c]:sw t6, 224(ra)<br>     |
|  59|[0x800023e0]<br>0xCCD526FB|- rs2_w0_val == 4096<br>                                                                                                                                   |[0x8000075c]:KMMAC t6, t5, t4<br> [0x80000760]:csrrs t5, vxsat, zero<br> [0x80000764]:sw t6, 232(ra)<br>     |
|  60|[0x800023e8]<br>0xCCD528FA|- rs2_w0_val == 2048<br>                                                                                                                                   |[0x8000077c]:KMMAC t6, t5, t4<br> [0x80000780]:csrrs t5, vxsat, zero<br> [0x80000784]:sw t6, 240(ra)<br>     |
|  61|[0x800023f0]<br>0xCCD528D9|- rs2_w0_val == 512<br>                                                                                                                                    |[0x80000798]:KMMAC t6, t5, t4<br> [0x8000079c]:csrrs t5, vxsat, zero<br> [0x800007a0]:sw t6, 248(ra)<br>     |
|  62|[0x800023f8]<br>0xCCD528D9|- rs2_w0_val == 256<br>                                                                                                                                    |[0x800007b0]:KMMAC t6, t5, t4<br> [0x800007b4]:csrrs t5, vxsat, zero<br> [0x800007b8]:sw t6, 256(ra)<br>     |
|  63|[0x80002400]<br>0xCCD528D9|- rs2_w0_val == 64<br>                                                                                                                                     |[0x800007c8]:KMMAC t6, t5, t4<br> [0x800007cc]:csrrs t5, vxsat, zero<br> [0x800007d0]:sw t6, 264(ra)<br>     |
|  64|[0x80002408]<br>0xCCD528CE|- rs2_w0_val == 32<br>                                                                                                                                     |[0x800007e4]:KMMAC t6, t5, t4<br> [0x800007e8]:csrrs t5, vxsat, zero<br> [0x800007ec]:sw t6, 272(ra)<br>     |
|  65|[0x80002410]<br>0xCCD528D2|- rs2_w0_val == 16<br> - rs1_w0_val == 1073741824<br>                                                                                                      |[0x800007fc]:KMMAC t6, t5, t4<br> [0x80000800]:csrrs t5, vxsat, zero<br> [0x80000804]:sw t6, 280(ra)<br>     |
|  66|[0x80002418]<br>0xCCD528D1|- rs2_w0_val == 8<br>                                                                                                                                      |[0x80000818]:KMMAC t6, t5, t4<br> [0x8000081c]:csrrs t5, vxsat, zero<br> [0x80000820]:sw t6, 288(ra)<br>     |
|  67|[0x80002420]<br>0xCCD528D0|- rs2_w0_val == 4<br>                                                                                                                                      |[0x80000834]:KMMAC t6, t5, t4<br> [0x80000838]:csrrs t5, vxsat, zero<br> [0x8000083c]:sw t6, 296(ra)<br>     |
|  68|[0x80002428]<br>0xCCD528CF|- rs2_w0_val == 2<br>                                                                                                                                      |[0x80000850]:KMMAC t6, t5, t4<br> [0x80000854]:csrrs t5, vxsat, zero<br> [0x80000858]:sw t6, 304(ra)<br>     |
|  69|[0x80002430]<br>0xCCD528CE|- rs2_w0_val == 1<br>                                                                                                                                      |[0x8000086c]:KMMAC t6, t5, t4<br> [0x80000870]:csrrs t5, vxsat, zero<br> [0x80000874]:sw t6, 312(ra)<br>     |
|  70|[0x80002440]<br>0xCCD528CE|- rs2_w0_val == -1<br> - rs1_w0_val == -9<br>                                                                                                              |[0x800008a0]:KMMAC t6, t5, t4<br> [0x800008a4]:csrrs t5, vxsat, zero<br> [0x800008a8]:sw t6, 328(ra)<br>     |
|  71|[0x80002448]<br>0xCCD528CD|- rs1_w0_val == -536870913<br>                                                                                                                             |[0x800008bc]:KMMAC t6, t5, t4<br> [0x800008c0]:csrrs t5, vxsat, zero<br> [0x800008c4]:sw t6, 336(ra)<br>     |
|  72|[0x80002450]<br>0xCC6EC266|- rs1_w0_val == -33554433<br>                                                                                                                              |[0x800008dc]:KMMAC t6, t5, t4<br> [0x800008e0]:csrrs t5, vxsat, zero<br> [0x800008e4]:sw t6, 344(ra)<br>     |
|  73|[0x80002458]<br>0xCC6EC265|- rs1_w0_val == -16777217<br>                                                                                                                              |[0x800008f8]:KMMAC t6, t5, t4<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sw t6, 352(ra)<br>     |
|  74|[0x80002460]<br>0xCCAEC265|- rs1_w0_val == -8388609<br>                                                                                                                               |[0x80000914]:KMMAC t6, t5, t4<br> [0x80000918]:csrrs t5, vxsat, zero<br> [0x8000091c]:sw t6, 360(ra)<br>     |
|  75|[0x80002468]<br>0xCCAEC24E|- rs1_w0_val == -2097153<br>                                                                                                                               |[0x80000934]:KMMAC t6, t5, t4<br> [0x80000938]:csrrs t5, vxsat, zero<br> [0x8000093c]:sw t6, 368(ra)<br>     |
|  76|[0x80002470]<br>0xCCAEC24E|- rs1_w0_val == -262145<br>                                                                                                                                |[0x80000954]:KMMAC t6, t5, t4<br> [0x80000958]:csrrs t5, vxsat, zero<br> [0x8000095c]:sw t6, 376(ra)<br>     |
|  77|[0x80002478]<br>0xCCAEC24E|- rs1_w0_val == -32769<br>                                                                                                                                 |[0x80000970]:KMMAC t6, t5, t4<br> [0x80000974]:csrrs t5, vxsat, zero<br> [0x80000978]:sw t6, 384(ra)<br>     |
|  78|[0x80002480]<br>0xCCAEC24E|- rs1_w0_val == -8193<br>                                                                                                                                  |[0x8000098c]:KMMAC t6, t5, t4<br> [0x80000990]:csrrs t5, vxsat, zero<br> [0x80000994]:sw t6, 392(ra)<br>     |
|  79|[0x80002488]<br>0xCCAEC24E|- rs1_w0_val == -4097<br>                                                                                                                                  |[0x800009ac]:KMMAC t6, t5, t4<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sw t6, 400(ra)<br>     |
|  80|[0x80002490]<br>0xCCAEC24E|- rs1_w0_val == -2049<br>                                                                                                                                  |[0x800009c8]:KMMAC t6, t5, t4<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sw t6, 408(ra)<br>     |
|  81|[0x80002498]<br>0xCCAEC24E|- rs1_w0_val == -257<br>                                                                                                                                   |[0x800009e0]:KMMAC t6, t5, t4<br> [0x800009e4]:csrrs t5, vxsat, zero<br> [0x800009e8]:sw t6, 416(ra)<br>     |
|  82|[0x800024a0]<br>0xCCAEC24E|- rs1_w0_val == -129<br>                                                                                                                                   |[0x800009f8]:KMMAC t6, t5, t4<br> [0x800009fc]:csrrs t5, vxsat, zero<br> [0x80000a00]:sw t6, 424(ra)<br>     |
|  83|[0x800024a8]<br>0xCCAEC24D|- rs1_w0_val == -65<br>                                                                                                                                    |[0x80000a10]:KMMAC t6, t5, t4<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sw t6, 432(ra)<br>     |
|  84|[0x800024b0]<br>0xCCAEC24C|- rs1_w0_val == -33<br>                                                                                                                                    |[0x80000a28]:KMMAC t6, t5, t4<br> [0x80000a2c]:csrrs t5, vxsat, zero<br> [0x80000a30]:sw t6, 440(ra)<br>     |
|  85|[0x800024b8]<br>0xCCAEC24C|- rs1_w0_val == -5<br>                                                                                                                                     |[0x80000a44]:KMMAC t6, t5, t4<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sw t6, 448(ra)<br>     |
|  86|[0x800024c0]<br>0xCCAEC24B|- rs1_w0_val == -3<br>                                                                                                                                     |[0x80000a5c]:KMMAC t6, t5, t4<br> [0x80000a60]:csrrs t5, vxsat, zero<br> [0x80000a64]:sw t6, 456(ra)<br>     |
|  87|[0x800024c8]<br>0xCCAEC24A|- rs1_w0_val == -2<br>                                                                                                                                     |[0x80000a74]:KMMAC t6, t5, t4<br> [0x80000a78]:csrrs t5, vxsat, zero<br> [0x80000a7c]:sw t6, 464(ra)<br>     |
|  88|[0x800024d0]<br>0xCCAED24A|- rs1_w0_val == 536870912<br>                                                                                                                              |[0x80000a8c]:KMMAC t6, t5, t4<br> [0x80000a90]:csrrs t5, vxsat, zero<br> [0x80000a94]:sw t6, 472(ra)<br>     |
|  89|[0x800024d8]<br>0xCC6ED249|- rs1_w0_val == 268435456<br>                                                                                                                              |[0x80000aa8]:KMMAC t6, t5, t4<br> [0x80000aac]:csrrs t5, vxsat, zero<br> [0x80000ab0]:sw t6, 480(ra)<br>     |
|  90|[0x800024e0]<br>0xCC5ED248|- rs1_w0_val == 67108864<br>                                                                                                                               |[0x80000ac4]:KMMAC t6, t5, t4<br> [0x80000ac8]:csrrs t5, vxsat, zero<br> [0x80000acc]:sw t6, 488(ra)<br>     |
|  91|[0x800024e8]<br>0xCC5ED248|- rs1_w0_val == 33554432<br>                                                                                                                               |[0x80000adc]:KMMAC t6, t5, t4<br> [0x80000ae0]:csrrs t5, vxsat, zero<br> [0x80000ae4]:sw t6, 496(ra)<br>     |
|  92|[0x800024f0]<br>0xCC5EF248|- rs1_w0_val == 8388608<br>                                                                                                                                |[0x80000af4]:KMMAC t6, t5, t4<br> [0x80000af8]:csrrs t5, vxsat, zero<br> [0x80000afc]:sw t6, 504(ra)<br>     |
|  93|[0x800024f8]<br>0xCC5EF247|- rs1_w0_val == 1048576<br>                                                                                                                                |[0x80000b0c]:KMMAC t6, t5, t4<br> [0x80000b10]:csrrs t5, vxsat, zero<br> [0x80000b14]:sw t6, 512(ra)<br>     |
|  94|[0x80002500]<br>0xCC62257A|- rs1_w0_val == 524288<br>                                                                                                                                 |[0x80000b28]:KMMAC t6, t5, t4<br> [0x80000b2c]:csrrs t5, vxsat, zero<br> [0x80000b30]:sw t6, 520(ra)<br>     |
|  95|[0x80002508]<br>0xCC632579|- rs1_w0_val == 262144<br>                                                                                                                                 |[0x80000b44]:KMMAC t6, t5, t4<br> [0x80000b48]:csrrs t5, vxsat, zero<br> [0x80000b4c]:sw t6, 528(ra)<br>     |
|  96|[0x80002510]<br>0xCC632579|- rs1_w0_val == 131072<br>                                                                                                                                 |[0x80000b5c]:KMMAC t6, t5, t4<br> [0x80000b60]:csrrs t5, vxsat, zero<br> [0x80000b64]:sw t6, 536(ra)<br>     |
|  97|[0x80002518]<br>0xCC637ACE|- rs1_w0_val == 65536<br>                                                                                                                                  |[0x80000b78]:KMMAC t6, t5, t4<br> [0x80000b7c]:csrrs t5, vxsat, zero<br> [0x80000b80]:sw t6, 544(ra)<br>     |
|  98|[0x80002520]<br>0xCC637ACE|- rs1_w0_val == 16384<br>                                                                                                                                  |[0x80000b90]:KMMAC t6, t5, t4<br> [0x80000b94]:csrrs t5, vxsat, zero<br> [0x80000b98]:sw t6, 552(ra)<br>     |
|  99|[0x80002528]<br>0xCC637ACE|- rs1_w0_val == 4096<br>                                                                                                                                   |[0x80000ba8]:KMMAC t6, t5, t4<br> [0x80000bac]:csrrs t5, vxsat, zero<br> [0x80000bb0]:sw t6, 560(ra)<br>     |
| 100|[0x80002530]<br>0xCC637ACD|- rs1_w0_val == 2048<br>                                                                                                                                   |[0x80000bc8]:KMMAC t6, t5, t4<br> [0x80000bcc]:csrrs t5, vxsat, zero<br> [0x80000bd0]:sw t6, 568(ra)<br>     |
| 101|[0x80002538]<br>0xCC637ACD|- rs1_w0_val == 512<br>                                                                                                                                    |[0x80000be4]:KMMAC t6, t5, t4<br> [0x80000be8]:csrrs t5, vxsat, zero<br> [0x80000bec]:sw t6, 576(ra)<br>     |
| 102|[0x80002540]<br>0xCC637ACD|- rs1_w0_val == 64<br>                                                                                                                                     |[0x80000bfc]:KMMAC t6, t5, t4<br> [0x80000c00]:csrrs t5, vxsat, zero<br> [0x80000c04]:sw t6, 584(ra)<br>     |
| 103|[0x80002560]<br>0xF70E8576|- rs2_w0_val == -131073<br>                                                                                                                                |[0x80000c70]:KMMAC t6, t5, t4<br> [0x80000c74]:csrrs t5, vxsat, zero<br> [0x80000c78]:sw t6, 616(ra)<br>     |
