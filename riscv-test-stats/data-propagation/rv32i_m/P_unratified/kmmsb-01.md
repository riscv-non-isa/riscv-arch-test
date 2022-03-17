
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000c40')]      |
| SIG_REGION                | [('0x80002210', '0x80002560', '212 words')]      |
| COV_LABELS                | kmmsb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kmmsb-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 210      |
| STAT1                     | 102      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 105     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000858]:KMMSB t6, t5, t4
      [0x8000085c]:csrrs t5, vxsat, zero
      [0x80000860]:sw t6, 288(ra)
 -- Signature Address: 0x80002430 Data: 0x0CC8AC15
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0
      - rs1_w0_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bec]:KMMSB t6, t5, t4
      [0x80000bf0]:csrrs t5, vxsat, zero
      [0x80000bf4]:sw t6, 560(ra)
 -- Signature Address: 0x80002540 Data: 0x2E62349A
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_w0_val == -16385




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c28]:KMMSB t6, t5, t4
      [0x80000c2c]:csrrs t5, vxsat, zero
      [0x80000c30]:sw t6, 576(ra)
 -- Signature Address: 0x80002550 Data: 0x2E62149B
 -- Redundant Coverpoints hit by the op
      - opcode : kmmsb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == -262145
      - rs1_w0_val == 8192






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmsb', 'rs1 : x12', 'rs2 : x12', 'rd : x12', 'rs1 == rs2 == rd', 'rs2_w0_val == -16385', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000118]:KMMSB a2, a2, a2
	-[0x8000011c]:csrrs a2, vxsat, zero
	-[0x80000120]:sw a2, 0(a0)
Current Store : [0x80000124] : sw a2, 4(a0) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x1', 'rd : x27', 'rs1 == rs2 != rd', 'rs2_w0_val == -1431655766', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000134]:KMMSB s11, ra, ra
	-[0x80000138]:csrrs ra, vxsat, zero
	-[0x8000013c]:sw s11, 8(a0)
Current Store : [0x80000140] : sw ra, 12(a0) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x29', 'rd : x20', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000154]:KMMSB s4, s5, t4
	-[0x80000158]:csrrs s5, vxsat, zero
	-[0x8000015c]:sw s4, 16(a0)
Current Store : [0x80000160] : sw s5, 20(a0) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x5', 'rd : x5', 'rs2 == rd != rs1', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000170]:KMMSB t0, a4, t0
	-[0x80000174]:csrrs a4, vxsat, zero
	-[0x80000178]:sw t0, 24(a0)
Current Store : [0x8000017c] : sw a4, 28(a0) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x8', 'rd : x4', 'rs1 == rd != rs2', 'rs2_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000190]:KMMSB tp, tp, fp
	-[0x80000194]:csrrs tp, vxsat, zero
	-[0x80000198]:sw tp, 32(a0)
Current Store : [0x8000019c] : sw tp, 36(a0) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rs2 : x24', 'rd : x31', 'rs2_w0_val == -536870913']
Last Code Sequence : 
	-[0x800001b0]:KMMSB t6, s11, s8
	-[0x800001b4]:csrrs s11, vxsat, zero
	-[0x800001b8]:sw t6, 40(a0)
Current Store : [0x800001bc] : sw s11, 44(a0) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x11', 'rd : x13', 'rs2_w0_val == -268435457', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800001d0]:KMMSB a3, s3, a1
	-[0x800001d4]:csrrs s3, vxsat, zero
	-[0x800001d8]:sw a3, 48(a0)
Current Store : [0x800001dc] : sw s3, 52(a0) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rs2 : x16', 'rd : x8', 'rs2_w0_val == -134217729', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x800001ec]:KMMSB fp, s1, a6
	-[0x800001f0]:csrrs s1, vxsat, zero
	-[0x800001f4]:sw fp, 56(a0)
Current Store : [0x800001f8] : sw s1, 60(a0) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rs2 : x14', 'rd : x6', 'rs2_w0_val == -67108865', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x8000020c]:KMMSB t1, s9, a4
	-[0x80000210]:csrrs s9, vxsat, zero
	-[0x80000214]:sw t1, 64(a0)
Current Store : [0x80000218] : sw s9, 68(a0) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rs2 : x20', 'rd : x2', 'rs2_w0_val == -33554433']
Last Code Sequence : 
	-[0x8000022c]:KMMSB sp, a1, s4
	-[0x80000230]:csrrs a1, vxsat, zero
	-[0x80000234]:sw sp, 72(a0)
Current Store : [0x80000238] : sw a1, 76(a0) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rs2 : x3', 'rd : x25', 'rs2_w0_val == -16777217', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000248]:KMMSB s9, a5, gp
	-[0x8000024c]:csrrs a5, vxsat, zero
	-[0x80000250]:sw s9, 80(a0)
Current Store : [0x80000254] : sw a5, 84(a0) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rs2 : x15', 'rd : x28', 'rs2_w0_val == -8388609', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000268]:KMMSB t3, a3, a5
	-[0x8000026c]:csrrs a3, vxsat, zero
	-[0x80000270]:sw t3, 88(a0)
Current Store : [0x80000274] : sw a3, 92(a0) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x28', 'rd : x15', 'rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000284]:KMMSB a5, s6, t3
	-[0x80000288]:csrrs s6, vxsat, zero
	-[0x8000028c]:sw a5, 96(a0)
Current Store : [0x80000290] : sw s6, 100(a0) -- Store: [0x80002274]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rs2 : x13', 'rd : x22', 'rs2_w0_val == -2097153', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800002a4]:KMMSB s6, t4, a3
	-[0x800002a8]:csrrs t4, vxsat, zero
	-[0x800002ac]:sw s6, 104(a0)
Current Store : [0x800002b0] : sw t4, 108(a0) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rs2 : x0', 'rd : x14', 'rs2_w0_val == 0']
Last Code Sequence : 
	-[0x800002c4]:KMMSB a4, s8, zero
	-[0x800002c8]:csrrs s8, vxsat, zero
	-[0x800002cc]:sw a4, 112(a0)
Current Store : [0x800002d0] : sw s8, 116(a0) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rs2 : x23', 'rd : x19', 'rs2_w0_val == -524289', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800002e0]:KMMSB s3, t2, s7
	-[0x800002e4]:csrrs t2, vxsat, zero
	-[0x800002e8]:sw s3, 120(a0)
Current Store : [0x800002ec] : sw t2, 124(a0) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rs2 : x7', 'rd : x0', 'rs2_w0_val == -262145', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800002fc]:KMMSB zero, t5, t2
	-[0x80000300]:csrrs t5, vxsat, zero
	-[0x80000304]:sw zero, 128(a0)
Current Store : [0x80000308] : sw t5, 132(a0) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rs2 : x2', 'rd : x21', 'rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x80000320]:KMMSB s5, a6, sp
	-[0x80000324]:csrrs a6, vxsat, zero
	-[0x80000328]:sw s5, 0(t2)
Current Store : [0x8000032c] : sw a6, 4(t2) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rs2 : x21', 'rd : x10', 'rs2_w0_val == -65537', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000340]:KMMSB a0, t6, s5
	-[0x80000344]:csrrs t6, vxsat, zero
	-[0x80000348]:sw a0, 8(t2)
Current Store : [0x8000034c] : sw t6, 12(t2) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rs2 : x31', 'rd : x29', 'rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x8000035c]:KMMSB t4, gp, t6
	-[0x80000360]:csrrs gp, vxsat, zero
	-[0x80000364]:sw t4, 16(t2)
Current Store : [0x80000368] : sw gp, 20(t2) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rs2 : x25', 'rd : x3', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x80000378]:KMMSB gp, zero, s9
	-[0x8000037c]:csrrs zero, vxsat, zero
	-[0x80000380]:sw gp, 24(t2)
Current Store : [0x80000384] : sw zero, 28(t2) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x17', 'rd : x9', 'rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x80000398]:KMMSB s1, t3, a7
	-[0x8000039c]:csrrs t3, vxsat, zero
	-[0x800003a0]:sw s1, 32(t2)
Current Store : [0x800003a4] : sw t3, 36(t2) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rs2 : x22', 'rd : x1', 'rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x800003b8]:KMMSB ra, s7, s6
	-[0x800003bc]:csrrs s7, vxsat, zero
	-[0x800003c0]:sw ra, 40(t2)
Current Store : [0x800003c4] : sw s7, 44(t2) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rs2 : x18', 'rd : x17', 'rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x800003d0]:KMMSB a7, t0, s2
	-[0x800003d4]:csrrs t0, vxsat, zero
	-[0x800003d8]:sw a7, 48(t2)
Current Store : [0x800003dc] : sw t0, 52(t2) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rs2 : x4', 'rd : x30', 'rs2_w0_val == -513', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800003ec]:KMMSB t5, a0, tp
	-[0x800003f0]:csrrs a0, vxsat, zero
	-[0x800003f4]:sw t5, 56(t2)
Current Store : [0x800003f8] : sw a0, 60(t2) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x9', 'rd : x26', 'rs2_w0_val == -257', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000404]:KMMSB s10, sp, s1
	-[0x80000408]:csrrs sp, vxsat, zero
	-[0x8000040c]:sw s10, 64(t2)
Current Store : [0x80000410] : sw sp, 68(t2) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rs2 : x30', 'rd : x16', 'rs2_w0_val == -129']
Last Code Sequence : 
	-[0x8000041c]:KMMSB a6, s4, t5
	-[0x80000420]:csrrs s4, vxsat, zero
	-[0x80000424]:sw a6, 72(t2)
Current Store : [0x80000428] : sw s4, 76(t2) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rs2 : x6', 'rd : x11', 'rs2_w0_val == -65']
Last Code Sequence : 
	-[0x80000434]:KMMSB a1, a7, t1
	-[0x80000438]:csrrs a7, vxsat, zero
	-[0x8000043c]:sw a1, 80(t2)
Current Store : [0x80000440] : sw a7, 84(t2) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x18', 'rs2 : x27', 'rd : x24', 'rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80000450]:KMMSB s8, s2, s11
	-[0x80000454]:csrrs s2, vxsat, zero
	-[0x80000458]:sw s8, 88(t2)
Current Store : [0x8000045c] : sw s2, 92(t2) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rs2 : x19', 'rd : x23', 'rs2_w0_val == -17']
Last Code Sequence : 
	-[0x8000046c]:KMMSB s7, fp, s3
	-[0x80000470]:csrrs fp, vxsat, zero
	-[0x80000474]:sw s7, 96(t2)
Current Store : [0x80000478] : sw fp, 100(t2) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x10', 'rd : x18', 'rs2_w0_val == -9']
Last Code Sequence : 
	-[0x80000484]:KMMSB s2, t1, a0
	-[0x80000488]:csrrs t1, vxsat, zero
	-[0x8000048c]:sw s2, 104(t2)
Current Store : [0x80000490] : sw t1, 108(t2) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2_w0_val == -5']
Last Code Sequence : 
	-[0x800004a0]:KMMSB a3, s10, a7
	-[0x800004a4]:csrrs s10, vxsat, zero
	-[0x800004a8]:sw a3, 112(t2)
Current Store : [0x800004ac] : sw s10, 116(t2) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2 : x26', 'rs2_w0_val == -3', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800004c0]:KMMSB sp, a3, s10
	-[0x800004c4]:csrrs a3, vxsat, zero
	-[0x800004c8]:sw sp, 0(ra)
Current Store : [0x800004cc] : sw a3, 4(ra) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rd : x7', 'rs2_w0_val == -2', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800004dc]:KMMSB t2, t5, s11
	-[0x800004e0]:csrrs t5, vxsat, zero
	-[0x800004e4]:sw t2, 8(ra)
Current Store : [0x800004e8] : sw t5, 12(ra) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_w0_val == -2147483648', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800004f4]:KMMSB t6, t5, t4
	-[0x800004f8]:csrrs t5, vxsat, zero
	-[0x800004fc]:sw t6, 16(ra)
Current Store : [0x80000500] : sw t5, 20(ra) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x8000050c]:KMMSB t6, t5, t4
	-[0x80000510]:csrrs t5, vxsat, zero
	-[0x80000514]:sw t6, 24(ra)
Current Store : [0x80000518] : sw t5, 28(ra) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000528]:KMMSB t6, t5, t4
	-[0x8000052c]:csrrs t5, vxsat, zero
	-[0x80000530]:sw t6, 32(ra)
Current Store : [0x80000534] : sw t5, 36(ra) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000540]:KMMSB t6, t5, t4
	-[0x80000544]:csrrs t5, vxsat, zero
	-[0x80000548]:sw t6, 40(ra)
Current Store : [0x8000054c] : sw t5, 44(ra) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x8000055c]:KMMSB t6, t5, t4
	-[0x80000560]:csrrs t5, vxsat, zero
	-[0x80000564]:sw t6, 48(ra)
Current Store : [0x80000568] : sw t5, 52(ra) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000574]:KMMSB t6, t5, t4
	-[0x80000578]:csrrs t5, vxsat, zero
	-[0x8000057c]:sw t6, 56(ra)
Current Store : [0x80000580] : sw t5, 60(ra) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000590]:KMMSB t6, t5, t4
	-[0x80000594]:csrrs t5, vxsat, zero
	-[0x80000598]:sw t6, 64(ra)
Current Store : [0x8000059c] : sw t5, 68(ra) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800005a8]:KMMSB t6, t5, t4
	-[0x800005ac]:csrrs t5, vxsat, zero
	-[0x800005b0]:sw t6, 72(ra)
Current Store : [0x800005b4] : sw t5, 76(ra) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800005c4]:KMMSB t6, t5, t4
	-[0x800005c8]:csrrs t5, vxsat, zero
	-[0x800005cc]:sw t6, 80(ra)
Current Store : [0x800005d0] : sw t5, 84(ra) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800005dc]:KMMSB t6, t5, t4
	-[0x800005e0]:csrrs t5, vxsat, zero
	-[0x800005e4]:sw t6, 88(ra)
Current Store : [0x800005e8] : sw t5, 92(ra) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x800005f4]:KMMSB t6, t5, t4
	-[0x800005f8]:csrrs t5, vxsat, zero
	-[0x800005fc]:sw t6, 96(ra)
Current Store : [0x80000600] : sw t5, 100(ra) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x8000060c]:KMMSB t6, t5, t4
	-[0x80000610]:csrrs t5, vxsat, zero
	-[0x80000614]:sw t6, 104(ra)
Current Store : [0x80000618] : sw t5, 108(ra) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000624]:KMMSB t6, t5, t4
	-[0x80000628]:csrrs t5, vxsat, zero
	-[0x8000062c]:sw t6, 112(ra)
Current Store : [0x80000630] : sw t5, 116(ra) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x8000063c]:KMMSB t6, t5, t4
	-[0x80000640]:csrrs t5, vxsat, zero
	-[0x80000644]:sw t6, 120(ra)
Current Store : [0x80000648] : sw t5, 124(ra) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000658]:KMMSB t6, t5, t4
	-[0x8000065c]:csrrs t5, vxsat, zero
	-[0x80000660]:sw t6, 128(ra)
Current Store : [0x80000664] : sw t5, 132(ra) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000670]:KMMSB t6, t5, t4
	-[0x80000674]:csrrs t5, vxsat, zero
	-[0x80000678]:sw t6, 136(ra)
Current Store : [0x8000067c] : sw t5, 140(ra) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000688]:KMMSB t6, t5, t4
	-[0x8000068c]:csrrs t5, vxsat, zero
	-[0x80000690]:sw t6, 144(ra)
Current Store : [0x80000694] : sw t5, 148(ra) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800006a4]:KMMSB t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 152(ra)
Current Store : [0x800006b0] : sw t5, 156(ra) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_w0_val == 128', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800006bc]:KMMSB t6, t5, t4
	-[0x800006c0]:csrrs t5, vxsat, zero
	-[0x800006c4]:sw t6, 160(ra)
Current Store : [0x800006c8] : sw t5, 164(ra) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x800006d4]:KMMSB t6, t5, t4
	-[0x800006d8]:csrrs t5, vxsat, zero
	-[0x800006dc]:sw t6, 168(ra)
Current Store : [0x800006e0] : sw t5, 172(ra) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x800006ec]:KMMSB t6, t5, t4
	-[0x800006f0]:csrrs t5, vxsat, zero
	-[0x800006f4]:sw t6, 176(ra)
Current Store : [0x800006f8] : sw t5, 180(ra) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80000708]:KMMSB t6, t5, t4
	-[0x8000070c]:csrrs t5, vxsat, zero
	-[0x80000710]:sw t6, 184(ra)
Current Store : [0x80000714] : sw t5, 188(ra) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80000720]:KMMSB t6, t5, t4
	-[0x80000724]:csrrs t5, vxsat, zero
	-[0x80000728]:sw t6, 192(ra)
Current Store : [0x8000072c] : sw t5, 196(ra) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2048', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000740]:KMMSB t6, t5, t4
	-[0x80000744]:csrrs t5, vxsat, zero
	-[0x80000748]:sw t6, 200(ra)
Current Store : [0x8000074c] : sw t5, 204(ra) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000758]:KMMSB t6, t5, t4
	-[0x8000075c]:csrrs t5, vxsat, zero
	-[0x80000760]:sw t6, 208(ra)
Current Store : [0x80000764] : sw t5, 212(ra) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000770]:KMMSB t6, t5, t4
	-[0x80000774]:csrrs t5, vxsat, zero
	-[0x80000778]:sw t6, 216(ra)
Current Store : [0x8000077c] : sw t5, 220(ra) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x80000788]:KMMSB t6, t5, t4
	-[0x8000078c]:csrrs t5, vxsat, zero
	-[0x80000790]:sw t6, 224(ra)
Current Store : [0x80000794] : sw t5, 228(ra) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800007a0]:KMMSB t6, t5, t4
	-[0x800007a4]:csrrs t5, vxsat, zero
	-[0x800007a8]:sw t6, 232(ra)
Current Store : [0x800007ac] : sw t5, 236(ra) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x800007bc]:KMMSB t6, t5, t4
	-[0x800007c0]:csrrs t5, vxsat, zero
	-[0x800007c4]:sw t6, 240(ra)
Current Store : [0x800007c8] : sw t5, 244(ra) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800007d8]:KMMSB t6, t5, t4
	-[0x800007dc]:csrrs t5, vxsat, zero
	-[0x800007e0]:sw t6, 248(ra)
Current Store : [0x800007e4] : sw t5, 252(ra) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 8']
Last Code Sequence : 
	-[0x800007f4]:KMMSB t6, t5, t4
	-[0x800007f8]:csrrs t5, vxsat, zero
	-[0x800007fc]:sw t6, 256(ra)
Current Store : [0x80000800] : sw t5, 260(ra) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80000810]:KMMSB t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 264(ra)
Current Store : [0x8000081c] : sw t5, 268(ra) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80000828]:KMMSB t6, t5, t4
	-[0x8000082c]:csrrs t5, vxsat, zero
	-[0x80000830]:sw t6, 272(ra)
Current Store : [0x80000834] : sw t5, 276(ra) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000840]:KMMSB t6, t5, t4
	-[0x80000844]:csrrs t5, vxsat, zero
	-[0x80000848]:sw t6, 280(ra)
Current Store : [0x8000084c] : sw t5, 284(ra) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['opcode : kmmsb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == 0', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000858]:KMMSB t6, t5, t4
	-[0x8000085c]:csrrs t5, vxsat, zero
	-[0x80000860]:sw t6, 288(ra)
Current Store : [0x80000864] : sw t5, 292(ra) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs2_w0_val == -1']
Last Code Sequence : 
	-[0x80000870]:KMMSB t6, t5, t4
	-[0x80000874]:csrrs t5, vxsat, zero
	-[0x80000878]:sw t6, 296(ra)
Current Store : [0x8000087c] : sw t5, 300(ra) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000088c]:KMMSB t6, t5, t4
	-[0x80000890]:csrrs t5, vxsat, zero
	-[0x80000894]:sw t6, 304(ra)
Current Store : [0x80000898] : sw t5, 308(ra) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800008ac]:KMMSB t6, t5, t4
	-[0x800008b0]:csrrs t5, vxsat, zero
	-[0x800008b4]:sw t6, 312(ra)
Current Store : [0x800008b8] : sw t5, 316(ra) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800008cc]:KMMSB t6, t5, t4
	-[0x800008d0]:csrrs t5, vxsat, zero
	-[0x800008d4]:sw t6, 320(ra)
Current Store : [0x800008d8] : sw t5, 324(ra) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800008ec]:KMMSB t6, t5, t4
	-[0x800008f0]:csrrs t5, vxsat, zero
	-[0x800008f4]:sw t6, 328(ra)
Current Store : [0x800008f8] : sw t5, 332(ra) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000908]:KMMSB t6, t5, t4
	-[0x8000090c]:csrrs t5, vxsat, zero
	-[0x80000910]:sw t6, 336(ra)
Current Store : [0x80000914] : sw t5, 340(ra) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000924]:KMMSB t6, t5, t4
	-[0x80000928]:csrrs t5, vxsat, zero
	-[0x8000092c]:sw t6, 344(ra)
Current Store : [0x80000930] : sw t5, 348(ra) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000940]:KMMSB t6, t5, t4
	-[0x80000944]:csrrs t5, vxsat, zero
	-[0x80000948]:sw t6, 352(ra)
Current Store : [0x8000094c] : sw t5, 356(ra) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000960]:KMMSB t6, t5, t4
	-[0x80000964]:csrrs t5, vxsat, zero
	-[0x80000968]:sw t6, 360(ra)
Current Store : [0x8000096c] : sw t5, 364(ra) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000980]:KMMSB t6, t5, t4
	-[0x80000984]:csrrs t5, vxsat, zero
	-[0x80000988]:sw t6, 368(ra)
Current Store : [0x8000098c] : sw t5, 372(ra) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x8000099c]:KMMSB t6, t5, t4
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sw t6, 376(ra)
Current Store : [0x800009a8] : sw t5, 380(ra) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800009b4]:KMMSB t6, t5, t4
	-[0x800009b8]:csrrs t5, vxsat, zero
	-[0x800009bc]:sw t6, 384(ra)
Current Store : [0x800009c0] : sw t5, 388(ra) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800009d0]:KMMSB t6, t5, t4
	-[0x800009d4]:csrrs t5, vxsat, zero
	-[0x800009d8]:sw t6, 392(ra)
Current Store : [0x800009dc] : sw t5, 396(ra) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800009ec]:KMMSB t6, t5, t4
	-[0x800009f0]:csrrs t5, vxsat, zero
	-[0x800009f4]:sw t6, 400(ra)
Current Store : [0x800009f8] : sw t5, 404(ra) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000a04]:KMMSB t6, t5, t4
	-[0x80000a08]:csrrs t5, vxsat, zero
	-[0x80000a0c]:sw t6, 408(ra)
Current Store : [0x80000a10] : sw t5, 412(ra) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000a1c]:KMMSB t6, t5, t4
	-[0x80000a20]:csrrs t5, vxsat, zero
	-[0x80000a24]:sw t6, 416(ra)
Current Store : [0x80000a28] : sw t5, 420(ra) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000a34]:KMMSB t6, t5, t4
	-[0x80000a38]:csrrs t5, vxsat, zero
	-[0x80000a3c]:sw t6, 424(ra)
Current Store : [0x80000a40] : sw t5, 428(ra) -- Store: [0x800024bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000a4c]:KMMSB t6, t5, t4
	-[0x80000a50]:csrrs t5, vxsat, zero
	-[0x80000a54]:sw t6, 432(ra)
Current Store : [0x80000a58] : sw t5, 436(ra) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000a68]:KMMSB t6, t5, t4
	-[0x80000a6c]:csrrs t5, vxsat, zero
	-[0x80000a70]:sw t6, 440(ra)
Current Store : [0x80000a74] : sw t5, 444(ra) -- Store: [0x800024cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000a80]:KMMSB t6, t5, t4
	-[0x80000a84]:csrrs t5, vxsat, zero
	-[0x80000a88]:sw t6, 448(ra)
Current Store : [0x80000a8c] : sw t5, 452(ra) -- Store: [0x800024d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000a9c]:KMMSB t6, t5, t4
	-[0x80000aa0]:csrrs t5, vxsat, zero
	-[0x80000aa4]:sw t6, 456(ra)
Current Store : [0x80000aa8] : sw t5, 460(ra) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000ab4]:KMMSB t6, t5, t4
	-[0x80000ab8]:csrrs t5, vxsat, zero
	-[0x80000abc]:sw t6, 464(ra)
Current Store : [0x80000ac0] : sw t5, 468(ra) -- Store: [0x800024e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000acc]:KMMSB t6, t5, t4
	-[0x80000ad0]:csrrs t5, vxsat, zero
	-[0x80000ad4]:sw t6, 472(ra)
Current Store : [0x80000ad8] : sw t5, 476(ra) -- Store: [0x800024ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000ae4]:KMMSB t6, t5, t4
	-[0x80000ae8]:csrrs t5, vxsat, zero
	-[0x80000aec]:sw t6, 480(ra)
Current Store : [0x80000af0] : sw t5, 484(ra) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000afc]:KMMSB t6, t5, t4
	-[0x80000b00]:csrrs t5, vxsat, zero
	-[0x80000b04]:sw t6, 488(ra)
Current Store : [0x80000b08] : sw t5, 492(ra) -- Store: [0x800024fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000b18]:KMMSB t6, t5, t4
	-[0x80000b1c]:csrrs t5, vxsat, zero
	-[0x80000b20]:sw t6, 496(ra)
Current Store : [0x80000b24] : sw t5, 500(ra) -- Store: [0x80002504]:0x00000001




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000b34]:KMMSB t6, t5, t4
	-[0x80000b38]:csrrs t5, vxsat, zero
	-[0x80000b3c]:sw t6, 504(ra)
Current Store : [0x80000b40] : sw t5, 508(ra) -- Store: [0x8000250c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000b4c]:KMMSB t6, t5, t4
	-[0x80000b50]:csrrs t5, vxsat, zero
	-[0x80000b54]:sw t6, 512(ra)
Current Store : [0x80000b58] : sw t5, 516(ra) -- Store: [0x80002514]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000b68]:KMMSB t6, t5, t4
	-[0x80000b6c]:csrrs t5, vxsat, zero
	-[0x80000b70]:sw t6, 520(ra)
Current Store : [0x80000b74] : sw t5, 524(ra) -- Store: [0x8000251c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000b84]:KMMSB t6, t5, t4
	-[0x80000b88]:csrrs t5, vxsat, zero
	-[0x80000b8c]:sw t6, 528(ra)
Current Store : [0x80000b90] : sw t5, 532(ra) -- Store: [0x80002524]:0x00000001




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000b9c]:KMMSB t6, t5, t4
	-[0x80000ba0]:csrrs t5, vxsat, zero
	-[0x80000ba4]:sw t6, 536(ra)
Current Store : [0x80000ba8] : sw t5, 540(ra) -- Store: [0x8000252c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000bb4]:KMMSB t6, t5, t4
	-[0x80000bb8]:csrrs t5, vxsat, zero
	-[0x80000bbc]:sw t6, 544(ra)
Current Store : [0x80000bc0] : sw t5, 548(ra) -- Store: [0x80002534]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000bd0]:KMMSB t6, t5, t4
	-[0x80000bd4]:csrrs t5, vxsat, zero
	-[0x80000bd8]:sw t6, 552(ra)
Current Store : [0x80000bdc] : sw t5, 556(ra) -- Store: [0x8000253c]:0x00000001




Last Coverpoint : ['opcode : kmmsb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80000bec]:KMMSB t6, t5, t4
	-[0x80000bf0]:csrrs t5, vxsat, zero
	-[0x80000bf4]:sw t6, 560(ra)
Current Store : [0x80000bf8] : sw t5, 564(ra) -- Store: [0x80002544]:0x00000001




Last Coverpoint : ['rs2_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000c0c]:KMMSB t6, t5, t4
	-[0x80000c10]:csrrs t5, vxsat, zero
	-[0x80000c14]:sw t6, 568(ra)
Current Store : [0x80000c18] : sw t5, 572(ra) -- Store: [0x8000254c]:0x00000001




Last Coverpoint : ['opcode : kmmsb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_w0_val == -262145', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c28]:KMMSB t6, t5, t4
	-[0x80000c2c]:csrrs t5, vxsat, zero
	-[0x80000c30]:sw t6, 576(ra)
Current Store : [0x80000c34] : sw t5, 580(ra) -- Store: [0x80002554]:0x00000001





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

|s.no|        signature         |                                                                   coverpoints                                                                   |                                                    code                                                     |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kmmsb<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs2_w0_val == -16385<br> - rs1_w0_val == -16385<br> |[0x80000118]:KMMSB a2, a2, a2<br> [0x8000011c]:csrrs a2, vxsat, zero<br> [0x80000120]:sw a2, 0(a0)<br>       |
|   2|[0x80002218]<br>0x9EFDE463|- rs1 : x1<br> - rs2 : x1<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>              |[0x80000134]:KMMSB s11, ra, ra<br> [0x80000138]:csrrs ra, vxsat, zero<br> [0x8000013c]:sw s11, 8(a0)<br>     |
|   3|[0x80002220]<br>0xB7D5D533|- rs1 : x21<br> - rs2 : x29<br> - rd : x20<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br>                      |[0x80000154]:KMMSB s4, s5, t4<br> [0x80000158]:csrrs s5, vxsat, zero<br> [0x8000015c]:sw s4, 16(a0)<br>      |
|   4|[0x80002228]<br>0x7FFFE000|- rs1 : x14<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 16384<br>                     |[0x80000170]:KMMSB t0, a4, t0<br> [0x80000174]:csrrs a4, vxsat, zero<br> [0x80000178]:sw t0, 24(a0)<br>      |
|   5|[0x80002230]<br>0x00000001|- rs1 : x4<br> - rs2 : x8<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br>                                               |[0x80000190]:KMMSB tp, tp, fp<br> [0x80000194]:csrrs tp, vxsat, zero<br> [0x80000198]:sw tp, 32(a0)<br>      |
|   6|[0x80002238]<br>0xFBB6F2B7|- rs1 : x27<br> - rs2 : x24<br> - rd : x31<br> - rs2_w0_val == -536870913<br>                                                                    |[0x800001b0]:KMMSB t6, s11, s8<br> [0x800001b4]:csrrs s11, vxsat, zero<br> [0x800001b8]:sw t6, 40(a0)<br>    |
|   7|[0x80002240]<br>0xEABFEEDB|- rs1 : x19<br> - rs2 : x11<br> - rd : x13<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == -33554433<br>                                      |[0x800001d0]:KMMSB a3, s3, a1<br> [0x800001d4]:csrrs s3, vxsat, zero<br> [0x800001d8]:sw a3, 48(a0)<br>      |
|   8|[0x80002248]<br>0xBFFFFFFF|- rs1 : x9<br> - rs2 : x16<br> - rd : x8<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == 0<br>                                                |[0x800001ec]:KMMSB fp, s1, a6<br> [0x800001f0]:csrrs s1, vxsat, zero<br> [0x800001f4]:sw fp, 56(a0)<br>      |
|   9|[0x80002250]<br>0x80001FC0|- rs1 : x25<br> - rs2 : x14<br> - rd : x6<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == -4097<br>                                            |[0x8000020c]:KMMSB t1, s9, a4<br> [0x80000210]:csrrs s9, vxsat, zero<br> [0x80000214]:sw t1, 64(a0)<br>      |
|  10|[0x80002258]<br>0xFF76DDEC|- rs1 : x11<br> - rs2 : x20<br> - rd : x2<br> - rs2_w0_val == -33554433<br>                                                                      |[0x8000022c]:KMMSB sp, a1, s4<br> [0x80000230]:csrrs a1, vxsat, zero<br> [0x80000234]:sw sp, 72(a0)<br>      |
|  11|[0x80002260]<br>0x00000001|- rs1 : x15<br> - rs2 : x3<br> - rd : x25<br> - rs2_w0_val == -16777217<br> - rs1_w0_val == -2<br>                                               |[0x80000248]:KMMSB s9, a5, gp<br> [0x8000024c]:csrrs a5, vxsat, zero<br> [0x80000250]:sw s9, 80(a0)<br>      |
|  12|[0x80002268]<br>0xDDB7D3BF|- rs1 : x13<br> - rs2 : x15<br> - rd : x28<br> - rs2_w0_val == -8388609<br> - rs1_w0_val == -262145<br>                                          |[0x80000268]:KMMSB t3, a3, a5<br> [0x8000026c]:csrrs a3, vxsat, zero<br> [0x80000270]:sw t3, 88(a0)<br>      |
|  13|[0x80002270]<br>0xFF800000|- rs1 : x22<br> - rs2 : x28<br> - rd : x15<br> - rs2_w0_val == -4194305<br>                                                                      |[0x80000284]:KMMSB a5, s6, t3<br> [0x80000288]:csrrs s6, vxsat, zero<br> [0x8000028c]:sw a5, 96(a0)<br>      |
|  14|[0x80002278]<br>0xFFFFFC01|- rs1 : x29<br> - rs2 : x13<br> - rd : x22<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == -2097153<br>                                         |[0x800002a4]:KMMSB s6, t4, a3<br> [0x800002a8]:csrrs t4, vxsat, zero<br> [0x800002ac]:sw s6, 104(a0)<br>     |
|  15|[0x80002280]<br>0xFBFFFFFF|- rs1 : x24<br> - rs2 : x0<br> - rd : x14<br> - rs2_w0_val == 0<br>                                                                              |[0x800002c4]:KMMSB a4, s8, zero<br> [0x800002c8]:csrrs s8, vxsat, zero<br> [0x800002cc]:sw a4, 112(a0)<br>   |
|  16|[0x80002288]<br>0x00000002|- rs1 : x7<br> - rs2 : x23<br> - rd : x19<br> - rs2_w0_val == -524289<br> - rs1_w0_val == 4<br>                                                  |[0x800002e0]:KMMSB s3, t2, s7<br> [0x800002e4]:csrrs t2, vxsat, zero<br> [0x800002e8]:sw s3, 120(a0)<br>     |
|  17|[0x80002290]<br>0x00000000|- rs1 : x30<br> - rs2 : x7<br> - rd : x0<br> - rs2_w0_val == -262145<br> - rs1_w0_val == 8192<br>                                                |[0x800002fc]:KMMSB zero, t5, t2<br> [0x80000300]:csrrs t5, vxsat, zero<br> [0x80000304]:sw zero, 128(a0)<br> |
|  18|[0x80002298]<br>0x00000001|- rs1 : x16<br> - rs2 : x2<br> - rd : x21<br> - rs2_w0_val == -131073<br>                                                                        |[0x80000320]:KMMSB s5, a6, sp<br> [0x80000324]:csrrs a6, vxsat, zero<br> [0x80000328]:sw s5, 0(t2)<br>       |
|  19|[0x800022a0]<br>0x80002210|- rs1 : x31<br> - rs2 : x21<br> - rd : x10<br> - rs2_w0_val == -65537<br> - rs1_w0_val == -8193<br>                                              |[0x80000340]:KMMSB a0, t6, s5<br> [0x80000344]:csrrs t6, vxsat, zero<br> [0x80000348]:sw a0, 8(t2)<br>       |
|  20|[0x800022a8]<br>0x00000002|- rs1 : x3<br> - rs2 : x31<br> - rd : x29<br> - rs2_w0_val == -32769<br>                                                                         |[0x8000035c]:KMMSB t4, gp, t6<br> [0x80000360]:csrrs gp, vxsat, zero<br> [0x80000364]:sw t4, 16(t2)<br>      |
|  21|[0x800022b0]<br>0x00000001|- rs1 : x0<br> - rs2 : x25<br> - rd : x3<br> - rs2_w0_val == -8193<br>                                                                           |[0x80000378]:KMMSB gp, zero, s9<br> [0x8000037c]:csrrs zero, vxsat, zero<br> [0x80000380]:sw gp, 24(t2)<br>  |
|  22|[0x800022b8]<br>0x00000001|- rs1 : x28<br> - rs2 : x17<br> - rd : x9<br> - rs2_w0_val == -4097<br>                                                                          |[0x80000398]:KMMSB s1, t3, a7<br> [0x8000039c]:csrrs t3, vxsat, zero<br> [0x800003a0]:sw s1, 32(t2)<br>      |
|  23|[0x800022c0]<br>0xFFFFFD55|- rs1 : x23<br> - rs2 : x22<br> - rd : x1<br> - rs2_w0_val == -2049<br>                                                                          |[0x800003b8]:KMMSB ra, s7, s6<br> [0x800003bc]:csrrs s7, vxsat, zero<br> [0x800003c0]:sw ra, 40(t2)<br>      |
|  24|[0x800022c8]<br>0xFFFFF000|- rs1 : x5<br> - rs2 : x18<br> - rd : x17<br> - rs2_w0_val == -1025<br>                                                                          |[0x800003d0]:KMMSB a7, t0, s2<br> [0x800003d4]:csrrs t0, vxsat, zero<br> [0x800003d8]:sw a7, 48(t2)<br>      |
|  25|[0x800022d0]<br>0x00000001|- rs1 : x10<br> - rs2 : x4<br> - rd : x30<br> - rs2_w0_val == -513<br> - rs1_w0_val == -2049<br>                                                 |[0x800003ec]:KMMSB t5, a0, tp<br> [0x800003f0]:csrrs a0, vxsat, zero<br> [0x800003f4]:sw t5, 56(t2)<br>      |
|  26|[0x800022d8]<br>0x76DF5708|- rs1 : x2<br> - rs2 : x9<br> - rd : x26<br> - rs2_w0_val == -257<br> - rs1_w0_val == 134217728<br>                                              |[0x80000404]:KMMSB s10, sp, s1<br> [0x80000408]:csrrs sp, vxsat, zero<br> [0x8000040c]:sw s10, 64(t2)<br>    |
|  27|[0x800022e0]<br>0x00000001|- rs1 : x20<br> - rs2 : x30<br> - rd : x16<br> - rs2_w0_val == -129<br>                                                                          |[0x8000041c]:KMMSB a6, s4, t5<br> [0x80000420]:csrrs s4, vxsat, zero<br> [0x80000424]:sw a6, 72(t2)<br>      |
|  28|[0x800022e8]<br>0x00000002|- rs1 : x17<br> - rs2 : x6<br> - rd : x11<br> - rs2_w0_val == -65<br>                                                                            |[0x80000434]:KMMSB a1, a7, t1<br> [0x80000438]:csrrs a7, vxsat, zero<br> [0x8000043c]:sw a1, 80(t2)<br>      |
|  29|[0x800022f0]<br>0x00000008|- rs1 : x18<br> - rs2 : x27<br> - rd : x24<br> - rs2_w0_val == -33<br>                                                                           |[0x80000450]:KMMSB s8, s2, s11<br> [0x80000454]:csrrs s2, vxsat, zero<br> [0x80000458]:sw s8, 88(t2)<br>     |
|  30|[0x800022f8]<br>0x00000001|- rs1 : x8<br> - rs2 : x19<br> - rd : x23<br> - rs2_w0_val == -17<br>                                                                            |[0x8000046c]:KMMSB s7, fp, s3<br> [0x80000470]:csrrs fp, vxsat, zero<br> [0x80000474]:sw s7, 96(t2)<br>      |
|  31|[0x80002300]<br>0x00000002|- rs1 : x6<br> - rs2 : x10<br> - rd : x18<br> - rs2_w0_val == -9<br>                                                                             |[0x80000484]:KMMSB s2, t1, a0<br> [0x80000488]:csrrs t1, vxsat, zero<br> [0x8000048c]:sw s2, 104(t2)<br>     |
|  32|[0x80002308]<br>0xFFE00000|- rs1 : x26<br> - rs2_w0_val == -5<br>                                                                                                           |[0x800004a0]:KMMSB a3, s10, a7<br> [0x800004a4]:csrrs s10, vxsat, zero<br> [0x800004a8]:sw a3, 112(t2)<br>   |
|  33|[0x80002310]<br>0x00000001|- rs2 : x26<br> - rs2_w0_val == -3<br> - rs1_w0_val == -513<br>                                                                                  |[0x800004c0]:KMMSB sp, a3, s10<br> [0x800004c4]:csrrs a3, vxsat, zero<br> [0x800004c8]:sw sp, 0(ra)<br>      |
|  34|[0x80002318]<br>0x80002298|- rd : x7<br> - rs2_w0_val == -2<br> - rs1_w0_val == -65537<br>                                                                                  |[0x800004dc]:KMMSB t2, t5, s11<br> [0x800004e0]:csrrs t5, vxsat, zero<br> [0x800004e4]:sw t2, 8(ra)<br>      |
|  35|[0x80002320]<br>0xFFFFBFFF|- rs2_w0_val == -2147483648<br> - rs1_w0_val == 32768<br>                                                                                        |[0x800004f4]:KMMSB t6, t5, t4<br> [0x800004f8]:csrrs t5, vxsat, zero<br> [0x800004fc]:sw t6, 16(ra)<br>      |
|  36|[0x80002328]<br>0x0FFFBFFF|- rs2_w0_val == 1073741824<br>                                                                                                                   |[0x8000050c]:KMMSB t6, t5, t4<br> [0x80000510]:csrrs t5, vxsat, zero<br> [0x80000514]:sw t6, 24(ra)<br>      |
|  37|[0x80002330]<br>0x0FFFA95F|- rs2_w0_val == 536870912<br>                                                                                                                    |[0x80000528]:KMMSB t6, t5, t4<br> [0x8000052c]:csrrs t5, vxsat, zero<br> [0x80000530]:sw t6, 32(ra)<br>      |
|  38|[0x80002338]<br>0x0FFBA95F|- rs2_w0_val == 268435456<br> - rs1_w0_val == 4194304<br>                                                                                        |[0x80000540]:KMMSB t6, t5, t4<br> [0x80000544]:csrrs t5, vxsat, zero<br> [0x80000548]:sw t6, 40(ra)<br>      |
|  39|[0x80002340]<br>0x0CC8762C|- rs2_w0_val == 134217728<br>                                                                                                                    |[0x8000055c]:KMMSB t6, t5, t4<br> [0x80000560]:csrrs t5, vxsat, zero<br> [0x80000564]:sw t6, 48(ra)<br>      |
|  40|[0x80002348]<br>0x0CA8762C|- rs2_w0_val == 67108864<br>                                                                                                                     |[0x80000574]:KMMSB t6, t5, t4<br> [0x80000578]:csrrs t5, vxsat, zero<br> [0x8000057c]:sw t6, 56(ra)<br>      |
|  41|[0x80002350]<br>0x0CC8762D|- rs2_w0_val == 33554432<br> - rs1_w0_val == -268435457<br>                                                                                      |[0x80000590]:KMMSB t6, t5, t4<br> [0x80000594]:csrrs t5, vxsat, zero<br> [0x80000598]:sw t6, 64(ra)<br>      |
|  42|[0x80002358]<br>0x0CC8722D|- rs2_w0_val == 16777216<br> - rs1_w0_val == 262144<br>                                                                                          |[0x800005a8]:KMMSB t6, t5, t4<br> [0x800005ac]:csrrs t5, vxsat, zero<br> [0x800005b0]:sw t6, 72(ra)<br>      |
|  43|[0x80002360]<br>0x0CC87288|- rs2_w0_val == 8388608<br>                                                                                                                      |[0x800005c4]:KMMSB t6, t5, t4<br> [0x800005c8]:csrrs t5, vxsat, zero<br> [0x800005cc]:sw t6, 80(ra)<br>      |
|  44|[0x80002368]<br>0x0CC87289|- rs2_w0_val == 4194304<br> - rs1_w0_val == -1<br>                                                                                               |[0x800005dc]:KMMSB t6, t5, t4<br> [0x800005e0]:csrrs t5, vxsat, zero<br> [0x800005e4]:sw t6, 88(ra)<br>      |
|  45|[0x80002370]<br>0x0CC87289|- rs2_w0_val == 2097152<br>                                                                                                                      |[0x800005f4]:KMMSB t6, t5, t4<br> [0x800005f8]:csrrs t5, vxsat, zero<br> [0x800005fc]:sw t6, 96(ra)<br>      |
|  46|[0x80002378]<br>0x0CC8728A|- rs2_w0_val == 1048576<br> - rs1_w0_val == -3<br>                                                                                               |[0x8000060c]:KMMSB t6, t5, t4<br> [0x80000610]:csrrs t5, vxsat, zero<br> [0x80000614]:sw t6, 104(ra)<br>     |
|  47|[0x80002380]<br>0x0CC87282|- rs2_w0_val == 524288<br> - rs1_w0_val == 65536<br>                                                                                             |[0x80000624]:KMMSB t6, t5, t4<br> [0x80000628]:csrrs t5, vxsat, zero<br> [0x8000062c]:sw t6, 112(ra)<br>     |
|  48|[0x80002388]<br>0x0CC87282|- rs2_w0_val == 262144<br> - rs1_w0_val == 8<br>                                                                                                 |[0x8000063c]:KMMSB t6, t5, t4<br> [0x80000640]:csrrs t5, vxsat, zero<br> [0x80000644]:sw t6, 120(ra)<br>     |
|  49|[0x80002390]<br>0x0CC87287|- rs2_w0_val == 131072<br> - rs1_w0_val == -131073<br>                                                                                           |[0x80000658]:KMMSB t6, t5, t4<br> [0x8000065c]:csrrs t5, vxsat, zero<br> [0x80000660]:sw t6, 128(ra)<br>     |
|  50|[0x80002398]<br>0x0CC87287|- rs1_w0_val == 32<br>                                                                                                                           |[0x80000670]:KMMSB t6, t5, t4<br> [0x80000674]:csrrs t5, vxsat, zero<br> [0x80000678]:sw t6, 136(ra)<br>     |
|  51|[0x800023a0]<br>0x0CC87287|- rs2_w0_val == 65536<br> - rs1_w0_val == 16<br>                                                                                                 |[0x80000688]:KMMSB t6, t5, t4<br> [0x8000068c]:csrrs t5, vxsat, zero<br> [0x80000690]:sw t6, 144(ra)<br>     |
|  52|[0x800023a8]<br>0x0CC87288|- rs1_w0_val == 2<br>                                                                                                                            |[0x800006a4]:KMMSB t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 152(ra)<br>     |
|  53|[0x800023b0]<br>0x0CC87288|- rs2_w0_val == 128<br> - rs1_w0_val == 1<br>                                                                                                    |[0x800006bc]:KMMSB t6, t5, t4<br> [0x800006c0]:csrrs t5, vxsat, zero<br> [0x800006c4]:sw t6, 160(ra)<br>     |
|  54|[0x800023b8]<br>0x0CC8B288|- rs1_w0_val == -2147483648<br> - rs2_w0_val == 32768<br>                                                                                        |[0x800006d4]:KMMSB t6, t5, t4<br> [0x800006d8]:csrrs t5, vxsat, zero<br> [0x800006dc]:sw t6, 168(ra)<br>     |
|  55|[0x800023c0]<br>0x0CC8B278|- rs2_w0_val == 16384<br>                                                                                                                        |[0x800006ec]:KMMSB t6, t5, t4<br> [0x800006f0]:csrrs t5, vxsat, zero<br> [0x800006f4]:sw t6, 176(ra)<br>     |
|  56|[0x800023c8]<br>0x0CC8AC12|- rs2_w0_val == 8192<br>                                                                                                                         |[0x80000708]:KMMSB t6, t5, t4<br> [0x8000070c]:csrrs t5, vxsat, zero<br> [0x80000710]:sw t6, 184(ra)<br>     |
|  57|[0x800023d0]<br>0x0CC8AC12|- rs2_w0_val == 4096<br>                                                                                                                         |[0x80000720]:KMMSB t6, t5, t4<br> [0x80000724]:csrrs t5, vxsat, zero<br> [0x80000728]:sw t6, 192(ra)<br>     |
|  58|[0x800023d8]<br>0x0CC8AD13|- rs2_w0_val == 2048<br> - rs1_w0_val == -536870913<br>                                                                                          |[0x80000740]:KMMSB t6, t5, t4<br> [0x80000744]:csrrs t5, vxsat, zero<br> [0x80000748]:sw t6, 200(ra)<br>     |
|  59|[0x800023e0]<br>0x0CC8AC13|- rs2_w0_val == 1024<br> - rs1_w0_val == 1073741824<br>                                                                                          |[0x80000758]:KMMSB t6, t5, t4<br> [0x8000075c]:csrrs t5, vxsat, zero<br> [0x80000760]:sw t6, 208(ra)<br>     |
|  60|[0x800023e8]<br>0x0CC8AC13|- rs2_w0_val == 512<br> - rs1_w0_val == 1048576<br>                                                                                              |[0x80000770]:KMMSB t6, t5, t4<br> [0x80000774]:csrrs t5, vxsat, zero<br> [0x80000778]:sw t6, 216(ra)<br>     |
|  61|[0x800023f0]<br>0x0CC8AC13|- rs2_w0_val == 256<br>                                                                                                                          |[0x80000788]:KMMSB t6, t5, t4<br> [0x8000078c]:csrrs t5, vxsat, zero<br> [0x80000790]:sw t6, 224(ra)<br>     |
|  62|[0x800023f8]<br>0x0CC8AC13|- rs2_w0_val == 64<br> - rs1_w0_val == 256<br>                                                                                                   |[0x800007a0]:KMMSB t6, t5, t4<br> [0x800007a4]:csrrs t5, vxsat, zero<br> [0x800007a8]:sw t6, 232(ra)<br>     |
|  63|[0x80002400]<br>0x0CC8AC14|- rs2_w0_val == 32<br>                                                                                                                           |[0x800007bc]:KMMSB t6, t5, t4<br> [0x800007c0]:csrrs t5, vxsat, zero<br> [0x800007c4]:sw t6, 240(ra)<br>     |
|  64|[0x80002408]<br>0x0CC8AC15|- rs2_w0_val == 16<br> - rs1_w0_val == -134217729<br>                                                                                            |[0x800007d8]:KMMSB t6, t5, t4<br> [0x800007dc]:csrrs t5, vxsat, zero<br> [0x800007e0]:sw t6, 248(ra)<br>     |
|  65|[0x80002410]<br>0x0CC8AC12|- rs2_w0_val == 8<br>                                                                                                                            |[0x800007f4]:KMMSB t6, t5, t4<br> [0x800007f8]:csrrs t5, vxsat, zero<br> [0x800007fc]:sw t6, 256(ra)<br>     |
|  66|[0x80002418]<br>0x0CC8AC13|- rs2_w0_val == 4<br>                                                                                                                            |[0x80000810]:KMMSB t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 264(ra)<br>     |
|  67|[0x80002420]<br>0x0CC8AC14|- rs2_w0_val == 2<br>                                                                                                                            |[0x80000828]:KMMSB t6, t5, t4<br> [0x8000082c]:csrrs t5, vxsat, zero<br> [0x80000830]:sw t6, 272(ra)<br>     |
|  68|[0x80002428]<br>0x0CC8AC15|- rs2_w0_val == 1<br> - rs1_w0_val == -257<br>                                                                                                   |[0x80000840]:KMMSB t6, t5, t4<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sw t6, 280(ra)<br>     |
|  69|[0x80002438]<br>0x0CC8AC15|- rs2_w0_val == -1<br>                                                                                                                           |[0x80000870]:KMMSB t6, t5, t4<br> [0x80000874]:csrrs t5, vxsat, zero<br> [0x80000878]:sw t6, 296(ra)<br>     |
|  70|[0x80002440]<br>0x0CC8AC14|- rs1_w0_val == 1431655765<br>                                                                                                                   |[0x8000088c]:KMMSB t6, t5, t4<br> [0x80000890]:csrrs t5, vxsat, zero<br> [0x80000894]:sw t6, 304(ra)<br>     |
|  71|[0x80002448]<br>0x377356BF|- rs1_w0_val == 2147483647<br>                                                                                                                   |[0x800008ac]:KMMSB t6, t5, t4<br> [0x800008b0]:csrrs t5, vxsat, zero<br> [0x800008b4]:sw t6, 312(ra)<br>     |
|  72|[0x80002450]<br>0x377336BF|- rs1_w0_val == -1073741825<br>                                                                                                                  |[0x800008cc]:KMMSB t6, t5, t4<br> [0x800008d0]:csrrs t5, vxsat, zero<br> [0x800008d4]:sw t6, 320(ra)<br>     |
|  73|[0x80002458]<br>0x390CD059|- rs1_w0_val == -67108865<br>                                                                                                                    |[0x800008ec]:KMMSB t6, t5, t4<br> [0x800008f0]:csrrs t5, vxsat, zero<br> [0x800008f4]:sw t6, 328(ra)<br>     |
|  74|[0x80002460]<br>0x390CD059|- rs1_w0_val == -16777217<br>                                                                                                                    |[0x80000908]:KMMSB t6, t5, t4<br> [0x8000090c]:csrrs t5, vxsat, zero<br> [0x80000910]:sw t6, 336(ra)<br>     |
|  75|[0x80002468]<br>0x390CD059|- rs1_w0_val == -8388609<br>                                                                                                                     |[0x80000924]:KMMSB t6, t5, t4<br> [0x80000928]:csrrs t5, vxsat, zero<br> [0x8000092c]:sw t6, 344(ra)<br>     |
|  76|[0x80002470]<br>0x390CD45A|- rs1_w0_val == -4194305<br>                                                                                                                     |[0x80000940]:KMMSB t6, t5, t4<br> [0x80000944]:csrrs t5, vxsat, zero<br> [0x80000948]:sw t6, 352(ra)<br>     |
|  77|[0x80002478]<br>0x390CB45A|- rs1_w0_val == -1048577<br>                                                                                                                     |[0x80000960]:KMMSB t6, t5, t4<br> [0x80000964]:csrrs t5, vxsat, zero<br> [0x80000968]:sw t6, 360(ra)<br>     |
|  78|[0x80002480]<br>0x390E4DF4|- rs1_w0_val == -524289<br>                                                                                                                      |[0x80000980]:KMMSB t6, t5, t4<br> [0x80000984]:csrrs t5, vxsat, zero<br> [0x80000988]:sw t6, 368(ra)<br>     |
|  79|[0x80002488]<br>0x390E4DF4|- rs1_w0_val == -32769<br>                                                                                                                       |[0x8000099c]:KMMSB t6, t5, t4<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sw t6, 376(ra)<br>     |
|  80|[0x80002490]<br>0x390E4DF5|- rs1_w0_val == -1025<br>                                                                                                                        |[0x800009b4]:KMMSB t6, t5, t4<br> [0x800009b8]:csrrs t5, vxsat, zero<br> [0x800009bc]:sw t6, 384(ra)<br>     |
|  81|[0x80002498]<br>0x390E4DF5|- rs1_w0_val == -129<br>                                                                                                                         |[0x800009d0]:KMMSB t6, t5, t4<br> [0x800009d4]:csrrs t5, vxsat, zero<br> [0x800009d8]:sw t6, 392(ra)<br>     |
|  82|[0x800024a0]<br>0x390E4DF5|- rs1_w0_val == -65<br>                                                                                                                          |[0x800009ec]:KMMSB t6, t5, t4<br> [0x800009f0]:csrrs t5, vxsat, zero<br> [0x800009f4]:sw t6, 400(ra)<br>     |
|  83|[0x800024a8]<br>0x390E4DF6|- rs1_w0_val == -33<br>                                                                                                                          |[0x80000a04]:KMMSB t6, t5, t4<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sw t6, 408(ra)<br>     |
|  84|[0x800024b0]<br>0x390E4DF7|- rs1_w0_val == -17<br>                                                                                                                          |[0x80000a1c]:KMMSB t6, t5, t4<br> [0x80000a20]:csrrs t5, vxsat, zero<br> [0x80000a24]:sw t6, 416(ra)<br>     |
|  85|[0x800024b8]<br>0x390E4DF8|- rs1_w0_val == -9<br>                                                                                                                           |[0x80000a34]:KMMSB t6, t5, t4<br> [0x80000a38]:csrrs t5, vxsat, zero<br> [0x80000a3c]:sw t6, 424(ra)<br>     |
|  86|[0x800024c0]<br>0x390E4DF9|- rs1_w0_val == -5<br>                                                                                                                           |[0x80000a4c]:KMMSB t6, t5, t4<br> [0x80000a50]:csrrs t5, vxsat, zero<br> [0x80000a54]:sw t6, 432(ra)<br>     |
|  87|[0x800024c8]<br>0x2E63A34F|- rs1_w0_val == 536870912<br>                                                                                                                    |[0x80000a68]:KMMSB t6, t5, t4<br> [0x80000a6c]:csrrs t5, vxsat, zero<br> [0x80000a70]:sw t6, 440(ra)<br>     |
|  88|[0x800024d0]<br>0x2E63A34F|- rs1_w0_val == 268435456<br>                                                                                                                    |[0x80000a80]:KMMSB t6, t5, t4<br> [0x80000a84]:csrrs t5, vxsat, zero<br> [0x80000a88]:sw t6, 448(ra)<br>     |
|  89|[0x800024d8]<br>0x2E63AB50|- rs1_w0_val == 67108864<br>                                                                                                                     |[0x80000a9c]:KMMSB t6, t5, t4<br> [0x80000aa0]:csrrs t5, vxsat, zero<br> [0x80000aa4]:sw t6, 456(ra)<br>     |
|  90|[0x800024e0]<br>0x2E63AB51|- rs1_w0_val == 33554432<br>                                                                                                                     |[0x80000ab4]:KMMSB t6, t5, t4<br> [0x80000ab8]:csrrs t5, vxsat, zero<br> [0x80000abc]:sw t6, 464(ra)<br>     |
|  91|[0x800024e8]<br>0x2E63AB41|- rs1_w0_val == 16777216<br>                                                                                                                     |[0x80000acc]:KMMSB t6, t5, t4<br> [0x80000ad0]:csrrs t5, vxsat, zero<br> [0x80000ad4]:sw t6, 472(ra)<br>     |
|  92|[0x800024f0]<br>0x2E5FAB41|- rs1_w0_val == 8388608<br>                                                                                                                      |[0x80000ae4]:KMMSB t6, t5, t4<br> [0x80000ae8]:csrrs t5, vxsat, zero<br> [0x80000aec]:sw t6, 480(ra)<br>     |
|  93|[0x800024f8]<br>0x2E5FAB41|- rs1_w0_val == 2097152<br>                                                                                                                      |[0x80000afc]:KMMSB t6, t5, t4<br> [0x80000b00]:csrrs t5, vxsat, zero<br> [0x80000b04]:sw t6, 488(ra)<br>     |
|  94|[0x80002500]<br>0x2E6255EC|- rs1_w0_val == 524288<br>                                                                                                                       |[0x80000b18]:KMMSB t6, t5, t4<br> [0x80000b1c]:csrrs t5, vxsat, zero<br> [0x80000b20]:sw t6, 496(ra)<br>     |
|  95|[0x80002508]<br>0x2E6255ED|- rs1_w0_val == 131072<br>                                                                                                                       |[0x80000b34]:KMMSB t6, t5, t4<br> [0x80000b38]:csrrs t5, vxsat, zero<br> [0x80000b3c]:sw t6, 504(ra)<br>     |
|  96|[0x80002510]<br>0x2E6255ED|- rs1_w0_val == 4096<br>                                                                                                                         |[0x80000b4c]:KMMSB t6, t5, t4<br> [0x80000b50]:csrrs t5, vxsat, zero<br> [0x80000b54]:sw t6, 512(ra)<br>     |
|  97|[0x80002518]<br>0x2E6255ED|- rs1_w0_val == 2048<br>                                                                                                                         |[0x80000b68]:KMMSB t6, t5, t4<br> [0x80000b6c]:csrrs t5, vxsat, zero<br> [0x80000b70]:sw t6, 520(ra)<br>     |
|  98|[0x80002520]<br>0x2E625498|- rs1_w0_val == 1024<br>                                                                                                                         |[0x80000b84]:KMMSB t6, t5, t4<br> [0x80000b88]:csrrs t5, vxsat, zero<br> [0x80000b8c]:sw t6, 528(ra)<br>     |
|  99|[0x80002528]<br>0x2E625499|- rs1_w0_val == 512<br>                                                                                                                          |[0x80000b9c]:KMMSB t6, t5, t4<br> [0x80000ba0]:csrrs t5, vxsat, zero<br> [0x80000ba4]:sw t6, 536(ra)<br>     |
| 100|[0x80002530]<br>0x2E625499|- rs1_w0_val == 128<br>                                                                                                                          |[0x80000bb4]:KMMSB t6, t5, t4<br> [0x80000bb8]:csrrs t5, vxsat, zero<br> [0x80000bbc]:sw t6, 544(ra)<br>     |
| 101|[0x80002538]<br>0x2E62549A|- rs1_w0_val == 64<br>                                                                                                                           |[0x80000bd0]:KMMSB t6, t5, t4<br> [0x80000bd4]:csrrs t5, vxsat, zero<br> [0x80000bd8]:sw t6, 552(ra)<br>     |
| 102|[0x80002548]<br>0x2E62149A|- rs2_w0_val == -1048577<br>                                                                                                                     |[0x80000c0c]:KMMSB t6, t5, t4<br> [0x80000c10]:csrrs t5, vxsat, zero<br> [0x80000c14]:sw t6, 568(ra)<br>     |
