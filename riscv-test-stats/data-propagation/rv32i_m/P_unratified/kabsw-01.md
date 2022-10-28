
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000700')]      |
| SIG_REGION                | [('0x80002210', '0x80002440', '140 words')]      |
| COV_LABELS                | kabsw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kabsw-01.S    |
| Total Number of coverpoints| 137     |
| Total Coverpoints Hit     | 133      |
| Total Signature Updates   | 140      |
| STAT1                     | 68      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 70     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000480]:KABSW t6, t5
      [0x80000484]:csrrs t5, vxsat, zero
      [0x80000488]:sw t6, 144(sp)
 -- Signature Address: 0x80002348 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kabsw
      - rs1 : x30
      - rd : x31
      - rs1_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006e4]:KABSW t6, t5
      [0x800006e8]:csrrs t5, vxsat, zero
      [0x800006ec]:sw t6, 384(sp)
 -- Signature Address: 0x80002438 Data: 0x00200001
 -- Redundant Coverpoints hit by the op
      - opcode : kabsw
      - rs1 : x30
      - rd : x31
      - rs1_w0_val == -2097153






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kabsw', 'rs1 : x18', 'rd : x16', 'rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000110]:KABSW a6, s2
	-[0x80000114]:csrrs s2, vxsat, zero
	-[0x80000118]:sw a6, 0(fp)
Current Store : [0x8000011c] : sw s2, 4(fp) -- Store: [0x80002214]:0x00000001




Last Coverpoint : ['rs1 : x29', 'rd : x11', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000128]:KABSW a1, t4
	-[0x8000012c]:csrrs t4, vxsat, zero
	-[0x80000130]:sw a1, 8(fp)
Current Store : [0x80000134] : sw t4, 12(fp) -- Store: [0x8000221c]:0x00000001




Last Coverpoint : ['rs1 : x7', 'rd : x14', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000140]:KABSW a4, t2
	-[0x80000144]:csrrs t2, vxsat, zero
	-[0x80000148]:sw a4, 16(fp)
Current Store : [0x8000014c] : sw t2, 20(fp) -- Store: [0x80002224]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rd : x30', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000158]:KABSW t5, sp
	-[0x8000015c]:csrrs sp, vxsat, zero
	-[0x80000160]:sw t5, 24(fp)
Current Store : [0x80000164] : sw sp, 28(fp) -- Store: [0x8000222c]:0x00000001




Last Coverpoint : ['rs1 : x23', 'rd : x17', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000170]:KABSW a7, s7
	-[0x80000174]:csrrs s7, vxsat, zero
	-[0x80000178]:sw a7, 32(fp)
Current Store : [0x8000017c] : sw s7, 36(fp) -- Store: [0x80002234]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rd : x12', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000188]:KABSW a2, ra
	-[0x8000018c]:csrrs ra, vxsat, zero
	-[0x80000190]:sw a2, 40(fp)
Current Store : [0x80000194] : sw ra, 44(fp) -- Store: [0x8000223c]:0x00000001




Last Coverpoint : ['rs1 : x15', 'rd : x24', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800001a0]:KABSW s8, a5
	-[0x800001a4]:csrrs a5, vxsat, zero
	-[0x800001a8]:sw s8, 48(fp)
Current Store : [0x800001ac] : sw a5, 52(fp) -- Store: [0x80002244]:0x00000001




Last Coverpoint : ['rs1 : x17', 'rd : x7', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800001b8]:KABSW t2, a7
	-[0x800001bc]:csrrs a7, vxsat, zero
	-[0x800001c0]:sw t2, 56(fp)
Current Store : [0x800001c4] : sw a7, 60(fp) -- Store: [0x8000224c]:0x00000001




Last Coverpoint : ['rs1 : x31', 'rd : x18', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800001d0]:KABSW s2, t6
	-[0x800001d4]:csrrs t6, vxsat, zero
	-[0x800001d8]:sw s2, 64(fp)
Current Store : [0x800001dc] : sw t6, 68(fp) -- Store: [0x80002254]:0x00000001




Last Coverpoint : ['rs1 : x13', 'rd : x28', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800001e8]:KABSW t3, a3
	-[0x800001ec]:csrrs a3, vxsat, zero
	-[0x800001f0]:sw t3, 72(fp)
Current Store : [0x800001f4] : sw a3, 76(fp) -- Store: [0x8000225c]:0x00000001




Last Coverpoint : ['rs1 : x4', 'rd : x22', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000200]:KABSW s6, tp
	-[0x80000204]:csrrs tp, vxsat, zero
	-[0x80000208]:sw s6, 80(fp)
Current Store : [0x8000020c] : sw tp, 84(fp) -- Store: [0x80002264]:0x00000001




Last Coverpoint : ['rs1 : x9', 'rd : x2', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000218]:KABSW sp, s1
	-[0x8000021c]:csrrs s1, vxsat, zero
	-[0x80000220]:sw sp, 88(fp)
Current Store : [0x80000224] : sw s1, 92(fp) -- Store: [0x8000226c]:0x00000001




Last Coverpoint : ['rs1 : x0', 'rd : x3', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000230]:KABSW gp, zero
	-[0x80000234]:csrrs zero, vxsat, zero
	-[0x80000238]:sw gp, 96(fp)
Current Store : [0x8000023c] : sw zero, 100(fp) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x26', 'rd : x0', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000248]:KABSW zero, s10
	-[0x8000024c]:csrrs s10, vxsat, zero
	-[0x80000250]:sw zero, 104(fp)
Current Store : [0x80000254] : sw s10, 108(fp) -- Store: [0x8000227c]:0x00000001




Last Coverpoint : ['rs1 : x25', 'rd : x26', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000260]:KABSW s10, s9
	-[0x80000264]:csrrs s9, vxsat, zero
	-[0x80000268]:sw s10, 112(fp)
Current Store : [0x8000026c] : sw s9, 116(fp) -- Store: [0x80002284]:0x00000001




Last Coverpoint : ['rs1 : x24', 'rd : x23', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000278]:KABSW s7, s8
	-[0x8000027c]:csrrs s8, vxsat, zero
	-[0x80000280]:sw s7, 120(fp)
Current Store : [0x80000284] : sw s8, 124(fp) -- Store: [0x8000228c]:0x00000001




Last Coverpoint : ['rs1 : x28', 'rd : x6', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000290]:KABSW t1, t3
	-[0x80000294]:csrrs t3, vxsat, zero
	-[0x80000298]:sw t1, 128(fp)
Current Store : [0x8000029c] : sw t3, 132(fp) -- Store: [0x80002294]:0x00000001




Last Coverpoint : ['rs1 : x19', 'rd : x15', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800002a8]:KABSW a5, s3
	-[0x800002ac]:csrrs s3, vxsat, zero
	-[0x800002b0]:sw a5, 136(fp)
Current Store : [0x800002b4] : sw s3, 140(fp) -- Store: [0x8000229c]:0x00000001




Last Coverpoint : ['rs1 : x30', 'rd : x5', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800002c0]:KABSW t0, t5
	-[0x800002c4]:csrrs t5, vxsat, zero
	-[0x800002c8]:sw t0, 144(fp)
Current Store : [0x800002cc] : sw t5, 148(fp) -- Store: [0x800022a4]:0x00000001




Last Coverpoint : ['rs1 : x22', 'rd : x13', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800002d8]:KABSW a3, s6
	-[0x800002dc]:csrrs s6, vxsat, zero
	-[0x800002e0]:sw a3, 152(fp)
Current Store : [0x800002e4] : sw s6, 156(fp) -- Store: [0x800022ac]:0x00000001




Last Coverpoint : ['rs1 : x20', 'rd : x21', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800002f0]:KABSW s5, s4
	-[0x800002f4]:csrrs s4, vxsat, zero
	-[0x800002f8]:sw s5, 160(fp)
Current Store : [0x800002fc] : sw s4, 164(fp) -- Store: [0x800022b4]:0x00000001




Last Coverpoint : ['rs1 : x12', 'rd : x25', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000310]:KABSW s9, a2
	-[0x80000314]:csrrs a2, vxsat, zero
	-[0x80000318]:sw s9, 0(sp)
Current Store : [0x8000031c] : sw a2, 4(sp) -- Store: [0x800022bc]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rd : x20', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000328]:KABSW s4, t1
	-[0x8000032c]:csrrs t1, vxsat, zero
	-[0x80000330]:sw s4, 8(sp)
Current Store : [0x80000334] : sw t1, 12(sp) -- Store: [0x800022c4]:0x00000001




Last Coverpoint : ['rs1 : x11', 'rd : x4', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000340]:KABSW tp, a1
	-[0x80000344]:csrrs a1, vxsat, zero
	-[0x80000348]:sw tp, 16(sp)
Current Store : [0x8000034c] : sw a1, 20(sp) -- Store: [0x800022cc]:0x00000001




Last Coverpoint : ['rs1 : x3', 'rd : x27', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000354]:KABSW s11, gp
	-[0x80000358]:csrrs gp, vxsat, zero
	-[0x8000035c]:sw s11, 24(sp)
Current Store : [0x80000360] : sw gp, 28(sp) -- Store: [0x800022d4]:0x00000001




Last Coverpoint : ['rs1 : x10', 'rd : x8', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000368]:KABSW fp, a0
	-[0x8000036c]:csrrs a0, vxsat, zero
	-[0x80000370]:sw fp, 32(sp)
Current Store : [0x80000374] : sw a0, 36(sp) -- Store: [0x800022dc]:0x00000001




Last Coverpoint : ['rs1 : x27', 'rd : x31', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x8000037c]:KABSW t6, s11
	-[0x80000380]:csrrs s11, vxsat, zero
	-[0x80000384]:sw t6, 40(sp)
Current Store : [0x80000388] : sw s11, 44(sp) -- Store: [0x800022e4]:0x00000001




Last Coverpoint : ['rs1 : x14', 'rd : x19', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000390]:KABSW s3, a4
	-[0x80000394]:csrrs a4, vxsat, zero
	-[0x80000398]:sw s3, 48(sp)
Current Store : [0x8000039c] : sw a4, 52(sp) -- Store: [0x800022ec]:0x00000001




Last Coverpoint : ['rs1 : x5', 'rd : x29', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800003a4]:KABSW t4, t0
	-[0x800003a8]:csrrs t0, vxsat, zero
	-[0x800003ac]:sw t4, 56(sp)
Current Store : [0x800003b0] : sw t0, 60(sp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x8', 'rd : x9', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800003b8]:KABSW s1, fp
	-[0x800003bc]:csrrs fp, vxsat, zero
	-[0x800003c0]:sw s1, 64(sp)
Current Store : [0x800003c4] : sw fp, 68(sp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x16', 'rd : x1', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800003cc]:KABSW ra, a6
	-[0x800003d0]:csrrs a6, vxsat, zero
	-[0x800003d4]:sw ra, 72(sp)
Current Store : [0x800003d8] : sw a6, 76(sp) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x21', 'rd : x10', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x800003e0]:KABSW a0, s5
	-[0x800003e4]:csrrs s5, vxsat, zero
	-[0x800003e8]:sw a0, 80(sp)
Current Store : [0x800003ec] : sw s5, 84(sp) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800003f4]:KABSW t6, t5
	-[0x800003f8]:csrrs t5, vxsat, zero
	-[0x800003fc]:sw t6, 88(sp)
Current Store : [0x80000400] : sw t5, 92(sp) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000408]:KABSW t6, t5
	-[0x8000040c]:csrrs t5, vxsat, zero
	-[0x80000410]:sw t6, 96(sp)
Current Store : [0x80000414] : sw t5, 100(sp) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x8000041c]:KABSW t6, t5
	-[0x80000420]:csrrs t5, vxsat, zero
	-[0x80000424]:sw t6, 104(sp)
Current Store : [0x80000428] : sw t5, 108(sp) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000430]:KABSW t6, t5
	-[0x80000434]:csrrs t5, vxsat, zero
	-[0x80000438]:sw t6, 112(sp)
Current Store : [0x8000043c] : sw t5, 116(sp) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000444]:KABSW t6, t5
	-[0x80000448]:csrrs t5, vxsat, zero
	-[0x8000044c]:sw t6, 120(sp)
Current Store : [0x80000450] : sw t5, 124(sp) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000458]:KABSW t6, t5
	-[0x8000045c]:csrrs t5, vxsat, zero
	-[0x80000460]:sw t6, 128(sp)
Current Store : [0x80000464] : sw t5, 132(sp) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x8000046c]:KABSW t6, t5
	-[0x80000470]:csrrs t5, vxsat, zero
	-[0x80000474]:sw t6, 136(sp)
Current Store : [0x80000478] : sw t5, 140(sp) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['opcode : kabsw', 'rs1 : x30', 'rd : x31', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000480]:KABSW t6, t5
	-[0x80000484]:csrrs t5, vxsat, zero
	-[0x80000488]:sw t6, 144(sp)
Current Store : [0x8000048c] : sw t5, 148(sp) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000494]:KABSW t6, t5
	-[0x80000498]:csrrs t5, vxsat, zero
	-[0x8000049c]:sw t6, 152(sp)
Current Store : [0x800004a0] : sw t5, 156(sp) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800004a8]:KABSW t6, t5
	-[0x800004ac]:csrrs t5, vxsat, zero
	-[0x800004b0]:sw t6, 160(sp)
Current Store : [0x800004b4] : sw t5, 164(sp) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800004bc]:KABSW t6, t5
	-[0x800004c0]:csrrs t5, vxsat, zero
	-[0x800004c4]:sw t6, 168(sp)
Current Store : [0x800004c8] : sw t5, 172(sp) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800004d0]:KABSW t6, t5
	-[0x800004d4]:csrrs t5, vxsat, zero
	-[0x800004d8]:sw t6, 176(sp)
Current Store : [0x800004dc] : sw t5, 180(sp) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800004e4]:KABSW t6, t5
	-[0x800004e8]:csrrs t5, vxsat, zero
	-[0x800004ec]:sw t6, 184(sp)
Current Store : [0x800004f0] : sw t5, 188(sp) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800004f8]:KABSW t6, t5
	-[0x800004fc]:csrrs t5, vxsat, zero
	-[0x80000500]:sw t6, 192(sp)
Current Store : [0x80000504] : sw t5, 196(sp) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x8000050c]:KABSW t6, t5
	-[0x80000510]:csrrs t5, vxsat, zero
	-[0x80000514]:sw t6, 200(sp)
Current Store : [0x80000518] : sw t5, 204(sp) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000520]:KABSW t6, t5
	-[0x80000524]:csrrs t5, vxsat, zero
	-[0x80000528]:sw t6, 208(sp)
Current Store : [0x8000052c] : sw t5, 212(sp) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000534]:KABSW t6, t5
	-[0x80000538]:csrrs t5, vxsat, zero
	-[0x8000053c]:sw t6, 216(sp)
Current Store : [0x80000540] : sw t5, 220(sp) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000548]:KABSW t6, t5
	-[0x8000054c]:csrrs t5, vxsat, zero
	-[0x80000550]:sw t6, 224(sp)
Current Store : [0x80000554] : sw t5, 228(sp) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x8000055c]:KABSW t6, t5
	-[0x80000560]:csrrs t5, vxsat, zero
	-[0x80000564]:sw t6, 232(sp)
Current Store : [0x80000568] : sw t5, 236(sp) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000570]:KABSW t6, t5
	-[0x80000574]:csrrs t5, vxsat, zero
	-[0x80000578]:sw t6, 240(sp)
Current Store : [0x8000057c] : sw t5, 244(sp) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000584]:KABSW t6, t5
	-[0x80000588]:csrrs t5, vxsat, zero
	-[0x8000058c]:sw t6, 248(sp)
Current Store : [0x80000590] : sw t5, 252(sp) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000598]:KABSW t6, t5
	-[0x8000059c]:csrrs t5, vxsat, zero
	-[0x800005a0]:sw t6, 256(sp)
Current Store : [0x800005a4] : sw t5, 260(sp) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800005ac]:KABSW t6, t5
	-[0x800005b0]:csrrs t5, vxsat, zero
	-[0x800005b4]:sw t6, 264(sp)
Current Store : [0x800005b8] : sw t5, 268(sp) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x800005c0]:KABSW t6, t5
	-[0x800005c4]:csrrs t5, vxsat, zero
	-[0x800005c8]:sw t6, 272(sp)
Current Store : [0x800005cc] : sw t5, 276(sp) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800005d4]:KABSW t6, t5
	-[0x800005d8]:csrrs t5, vxsat, zero
	-[0x800005dc]:sw t6, 280(sp)
Current Store : [0x800005e0] : sw t5, 284(sp) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800005e8]:KABSW t6, t5
	-[0x800005ec]:csrrs t5, vxsat, zero
	-[0x800005f0]:sw t6, 288(sp)
Current Store : [0x800005f4] : sw t5, 292(sp) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000600]:KABSW t6, t5
	-[0x80000604]:csrrs t5, vxsat, zero
	-[0x80000608]:sw t6, 296(sp)
Current Store : [0x8000060c] : sw t5, 300(sp) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000614]:KABSW t6, t5
	-[0x80000618]:csrrs t5, vxsat, zero
	-[0x8000061c]:sw t6, 304(sp)
Current Store : [0x80000620] : sw t5, 308(sp) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000628]:KABSW t6, t5
	-[0x8000062c]:csrrs t5, vxsat, zero
	-[0x80000630]:sw t6, 312(sp)
Current Store : [0x80000634] : sw t5, 316(sp) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x8000063c]:KABSW t6, t5
	-[0x80000640]:csrrs t5, vxsat, zero
	-[0x80000644]:sw t6, 320(sp)
Current Store : [0x80000648] : sw t5, 324(sp) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000650]:KABSW t6, t5
	-[0x80000654]:csrrs t5, vxsat, zero
	-[0x80000658]:sw t6, 328(sp)
Current Store : [0x8000065c] : sw t5, 332(sp) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000664]:KABSW t6, t5
	-[0x80000668]:csrrs t5, vxsat, zero
	-[0x8000066c]:sw t6, 336(sp)
Current Store : [0x80000670] : sw t5, 340(sp) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000678]:KABSW t6, t5
	-[0x8000067c]:csrrs t5, vxsat, zero
	-[0x80000680]:sw t6, 344(sp)
Current Store : [0x80000684] : sw t5, 348(sp) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000068c]:KABSW t6, t5
	-[0x80000690]:csrrs t5, vxsat, zero
	-[0x80000694]:sw t6, 352(sp)
Current Store : [0x80000698] : sw t5, 356(sp) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800006a0]:KABSW t6, t5
	-[0x800006a4]:csrrs t5, vxsat, zero
	-[0x800006a8]:sw t6, 360(sp)
Current Store : [0x800006ac] : sw t5, 364(sp) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800006b4]:KABSW t6, t5
	-[0x800006b8]:csrrs t5, vxsat, zero
	-[0x800006bc]:sw t6, 368(sp)
Current Store : [0x800006c0] : sw t5, 372(sp) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800006cc]:KABSW t6, t5
	-[0x800006d0]:csrrs t5, vxsat, zero
	-[0x800006d4]:sw t6, 376(sp)
Current Store : [0x800006d8] : sw t5, 380(sp) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['opcode : kabsw', 'rs1 : x30', 'rd : x31', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800006e4]:KABSW t6, t5
	-[0x800006e8]:csrrs t5, vxsat, zero
	-[0x800006ec]:sw t6, 384(sp)
Current Store : [0x800006f0] : sw t5, 388(sp) -- Store: [0x8000243c]:0x00000001





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

|s.no|        signature         |                                    coverpoints                                     |                                                   code                                                    |
|---:|--------------------------|------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x7FFFFFFF|- opcode : kabsw<br> - rs1 : x18<br> - rd : x16<br> - rs1_w0_val == -2147483648<br> |[0x80000110]:KABSW a6, s2<br> [0x80000114]:csrrs s2, vxsat, zero<br> [0x80000118]:sw a6, 0(fp)<br>         |
|   2|[0x80002218]<br>0x55555556|- rs1 : x29<br> - rd : x11<br> - rs1_w0_val == -1431655766<br>                      |[0x80000128]:KABSW a1, t4<br> [0x8000012c]:csrrs t4, vxsat, zero<br> [0x80000130]:sw a1, 8(fp)<br>         |
|   3|[0x80002220]<br>0x55555555|- rs1 : x7<br> - rd : x14<br> - rs1_w0_val == 1431655765<br>                        |[0x80000140]:KABSW a4, t2<br> [0x80000144]:csrrs t2, vxsat, zero<br> [0x80000148]:sw a4, 16(fp)<br>        |
|   4|[0x80002228]<br>0x7FFFFFFF|- rs1 : x2<br> - rd : x30<br> - rs1_w0_val == 2147483647<br>                        |[0x80000158]:KABSW t5, sp<br> [0x8000015c]:csrrs sp, vxsat, zero<br> [0x80000160]:sw t5, 24(fp)<br>        |
|   5|[0x80002230]<br>0x40000001|- rs1 : x23<br> - rd : x17<br> - rs1_w0_val == -1073741825<br>                      |[0x80000170]:KABSW a7, s7<br> [0x80000174]:csrrs s7, vxsat, zero<br> [0x80000178]:sw a7, 32(fp)<br>        |
|   6|[0x80002238]<br>0x20000001|- rs1 : x1<br> - rd : x12<br> - rs1_w0_val == -536870913<br>                        |[0x80000188]:KABSW a2, ra<br> [0x8000018c]:csrrs ra, vxsat, zero<br> [0x80000190]:sw a2, 40(fp)<br>        |
|   7|[0x80002240]<br>0x10000001|- rs1 : x15<br> - rd : x24<br> - rs1_w0_val == -268435457<br>                       |[0x800001a0]:KABSW s8, a5<br> [0x800001a4]:csrrs a5, vxsat, zero<br> [0x800001a8]:sw s8, 48(fp)<br>        |
|   8|[0x80002248]<br>0x08000001|- rs1 : x17<br> - rd : x7<br> - rs1_w0_val == -134217729<br>                        |[0x800001b8]:KABSW t2, a7<br> [0x800001bc]:csrrs a7, vxsat, zero<br> [0x800001c0]:sw t2, 56(fp)<br>        |
|   9|[0x80002250]<br>0x04000001|- rs1 : x31<br> - rd : x18<br> - rs1_w0_val == -67108865<br>                        |[0x800001d0]:KABSW s2, t6<br> [0x800001d4]:csrrs t6, vxsat, zero<br> [0x800001d8]:sw s2, 64(fp)<br>        |
|  10|[0x80002258]<br>0x02000001|- rs1 : x13<br> - rd : x28<br> - rs1_w0_val == -33554433<br>                        |[0x800001e8]:KABSW t3, a3<br> [0x800001ec]:csrrs a3, vxsat, zero<br> [0x800001f0]:sw t3, 72(fp)<br>        |
|  11|[0x80002260]<br>0x01000001|- rs1 : x4<br> - rd : x22<br> - rs1_w0_val == -16777217<br>                         |[0x80000200]:KABSW s6, tp<br> [0x80000204]:csrrs tp, vxsat, zero<br> [0x80000208]:sw s6, 80(fp)<br>        |
|  12|[0x80002268]<br>0x00800001|- rs1 : x9<br> - rd : x2<br> - rs1_w0_val == -8388609<br>                           |[0x80000218]:KABSW sp, s1<br> [0x8000021c]:csrrs s1, vxsat, zero<br> [0x80000220]:sw sp, 88(fp)<br>        |
|  13|[0x80002270]<br>0x00000000|- rs1 : x0<br> - rd : x3<br> - rs1_w0_val == 0<br>                                  |[0x80000230]:KABSW gp, zero<br> [0x80000234]:csrrs zero, vxsat, zero<br> [0x80000238]:sw gp, 96(fp)<br>    |
|  14|[0x80002278]<br>0x00000000|- rs1 : x26<br> - rd : x0<br> - rs1_w0_val == -2097153<br>                          |[0x80000248]:KABSW zero, s10<br> [0x8000024c]:csrrs s10, vxsat, zero<br> [0x80000250]:sw zero, 104(fp)<br> |
|  15|[0x80002280]<br>0x00100001|- rs1 : x25<br> - rd : x26<br> - rs1_w0_val == -1048577<br>                         |[0x80000260]:KABSW s10, s9<br> [0x80000264]:csrrs s9, vxsat, zero<br> [0x80000268]:sw s10, 112(fp)<br>     |
|  16|[0x80002288]<br>0x00080001|- rs1 : x24<br> - rd : x23<br> - rs1_w0_val == -524289<br>                          |[0x80000278]:KABSW s7, s8<br> [0x8000027c]:csrrs s8, vxsat, zero<br> [0x80000280]:sw s7, 120(fp)<br>       |
|  17|[0x80002290]<br>0x00040001|- rs1 : x28<br> - rd : x6<br> - rs1_w0_val == -262145<br>                           |[0x80000290]:KABSW t1, t3<br> [0x80000294]:csrrs t3, vxsat, zero<br> [0x80000298]:sw t1, 128(fp)<br>       |
|  18|[0x80002298]<br>0x00020001|- rs1 : x19<br> - rd : x15<br> - rs1_w0_val == -131073<br>                          |[0x800002a8]:KABSW a5, s3<br> [0x800002ac]:csrrs s3, vxsat, zero<br> [0x800002b0]:sw a5, 136(fp)<br>       |
|  19|[0x800022a0]<br>0x00010001|- rs1 : x30<br> - rd : x5<br> - rs1_w0_val == -65537<br>                            |[0x800002c0]:KABSW t0, t5<br> [0x800002c4]:csrrs t5, vxsat, zero<br> [0x800002c8]:sw t0, 144(fp)<br>       |
|  20|[0x800022a8]<br>0x00008001|- rs1 : x22<br> - rd : x13<br> - rs1_w0_val == -32769<br>                           |[0x800002d8]:KABSW a3, s6<br> [0x800002dc]:csrrs s6, vxsat, zero<br> [0x800002e0]:sw a3, 152(fp)<br>       |
|  21|[0x800022b0]<br>0x00004001|- rs1 : x20<br> - rd : x21<br> - rs1_w0_val == -16385<br>                           |[0x800002f0]:KABSW s5, s4<br> [0x800002f4]:csrrs s4, vxsat, zero<br> [0x800002f8]:sw s5, 160(fp)<br>       |
|  22|[0x800022b8]<br>0x00002001|- rs1 : x12<br> - rd : x25<br> - rs1_w0_val == -8193<br>                            |[0x80000310]:KABSW s9, a2<br> [0x80000314]:csrrs a2, vxsat, zero<br> [0x80000318]:sw s9, 0(sp)<br>         |
|  23|[0x800022c0]<br>0x00001001|- rs1 : x6<br> - rd : x20<br> - rs1_w0_val == -4097<br>                             |[0x80000328]:KABSW s4, t1<br> [0x8000032c]:csrrs t1, vxsat, zero<br> [0x80000330]:sw s4, 8(sp)<br>         |
|  24|[0x800022c8]<br>0x00000801|- rs1 : x11<br> - rd : x4<br> - rs1_w0_val == -2049<br>                             |[0x80000340]:KABSW tp, a1<br> [0x80000344]:csrrs a1, vxsat, zero<br> [0x80000348]:sw tp, 16(sp)<br>        |
|  25|[0x800022d0]<br>0x00000401|- rs1 : x3<br> - rd : x27<br> - rs1_w0_val == -1025<br>                             |[0x80000354]:KABSW s11, gp<br> [0x80000358]:csrrs gp, vxsat, zero<br> [0x8000035c]:sw s11, 24(sp)<br>      |
|  26|[0x800022d8]<br>0x00000201|- rs1 : x10<br> - rd : x8<br> - rs1_w0_val == -513<br>                              |[0x80000368]:KABSW fp, a0<br> [0x8000036c]:csrrs a0, vxsat, zero<br> [0x80000370]:sw fp, 32(sp)<br>        |
|  27|[0x800022e0]<br>0x00000101|- rs1 : x27<br> - rd : x31<br> - rs1_w0_val == -257<br>                             |[0x8000037c]:KABSW t6, s11<br> [0x80000380]:csrrs s11, vxsat, zero<br> [0x80000384]:sw t6, 40(sp)<br>      |
|  28|[0x800022e8]<br>0x00000081|- rs1 : x14<br> - rd : x19<br> - rs1_w0_val == -129<br>                             |[0x80000390]:KABSW s3, a4<br> [0x80000394]:csrrs a4, vxsat, zero<br> [0x80000398]:sw s3, 48(sp)<br>        |
|  29|[0x800022f0]<br>0x00000041|- rs1 : x5<br> - rd : x29<br> - rs1_w0_val == -65<br>                               |[0x800003a4]:KABSW t4, t0<br> [0x800003a8]:csrrs t0, vxsat, zero<br> [0x800003ac]:sw t4, 56(sp)<br>        |
|  30|[0x800022f8]<br>0x00000021|- rs1 : x8<br> - rd : x9<br> - rs1_w0_val == -33<br>                                |[0x800003b8]:KABSW s1, fp<br> [0x800003bc]:csrrs fp, vxsat, zero<br> [0x800003c0]:sw s1, 64(sp)<br>        |
|  31|[0x80002300]<br>0x00000011|- rs1 : x16<br> - rd : x1<br> - rs1_w0_val == -17<br>                               |[0x800003cc]:KABSW ra, a6<br> [0x800003d0]:csrrs a6, vxsat, zero<br> [0x800003d4]:sw ra, 72(sp)<br>        |
|  32|[0x80002308]<br>0x00000009|- rs1 : x21<br> - rd : x10<br> - rs1_w0_val == -9<br>                               |[0x800003e0]:KABSW a0, s5<br> [0x800003e4]:csrrs s5, vxsat, zero<br> [0x800003e8]:sw a0, 80(sp)<br>        |
|  33|[0x80002310]<br>0x00000005|- rs1_w0_val == -5<br>                                                              |[0x800003f4]:KABSW t6, t5<br> [0x800003f8]:csrrs t5, vxsat, zero<br> [0x800003fc]:sw t6, 88(sp)<br>        |
|  34|[0x80002318]<br>0x00000003|- rs1_w0_val == -3<br>                                                              |[0x80000408]:KABSW t6, t5<br> [0x8000040c]:csrrs t5, vxsat, zero<br> [0x80000410]:sw t6, 96(sp)<br>        |
|  35|[0x80002320]<br>0x00000002|- rs1_w0_val == -2<br>                                                              |[0x8000041c]:KABSW t6, t5<br> [0x80000420]:csrrs t5, vxsat, zero<br> [0x80000424]:sw t6, 104(sp)<br>       |
|  36|[0x80002328]<br>0x40000000|- rs1_w0_val == 1073741824<br>                                                      |[0x80000430]:KABSW t6, t5<br> [0x80000434]:csrrs t5, vxsat, zero<br> [0x80000438]:sw t6, 112(sp)<br>       |
|  37|[0x80002330]<br>0x20000000|- rs1_w0_val == 536870912<br>                                                       |[0x80000444]:KABSW t6, t5<br> [0x80000448]:csrrs t5, vxsat, zero<br> [0x8000044c]:sw t6, 120(sp)<br>       |
|  38|[0x80002338]<br>0x00000002|- rs1_w0_val == 2<br>                                                               |[0x80000458]:KABSW t6, t5<br> [0x8000045c]:csrrs t5, vxsat, zero<br> [0x80000460]:sw t6, 128(sp)<br>       |
|  39|[0x80002340]<br>0x00000001|- rs1_w0_val == 1<br>                                                               |[0x8000046c]:KABSW t6, t5<br> [0x80000470]:csrrs t5, vxsat, zero<br> [0x80000474]:sw t6, 136(sp)<br>       |
|  40|[0x80002350]<br>0x00000001|- rs1_w0_val == -1<br>                                                              |[0x80000494]:KABSW t6, t5<br> [0x80000498]:csrrs t5, vxsat, zero<br> [0x8000049c]:sw t6, 152(sp)<br>       |
|  41|[0x80002358]<br>0x10000000|- rs1_w0_val == 268435456<br>                                                       |[0x800004a8]:KABSW t6, t5<br> [0x800004ac]:csrrs t5, vxsat, zero<br> [0x800004b0]:sw t6, 160(sp)<br>       |
|  42|[0x80002360]<br>0x08000000|- rs1_w0_val == 134217728<br>                                                       |[0x800004bc]:KABSW t6, t5<br> [0x800004c0]:csrrs t5, vxsat, zero<br> [0x800004c4]:sw t6, 168(sp)<br>       |
|  43|[0x80002368]<br>0x04000000|- rs1_w0_val == 67108864<br>                                                        |[0x800004d0]:KABSW t6, t5<br> [0x800004d4]:csrrs t5, vxsat, zero<br> [0x800004d8]:sw t6, 176(sp)<br>       |
|  44|[0x80002370]<br>0x02000000|- rs1_w0_val == 33554432<br>                                                        |[0x800004e4]:KABSW t6, t5<br> [0x800004e8]:csrrs t5, vxsat, zero<br> [0x800004ec]:sw t6, 184(sp)<br>       |
|  45|[0x80002378]<br>0x01000000|- rs1_w0_val == 16777216<br>                                                        |[0x800004f8]:KABSW t6, t5<br> [0x800004fc]:csrrs t5, vxsat, zero<br> [0x80000500]:sw t6, 192(sp)<br>       |
|  46|[0x80002380]<br>0x00800000|- rs1_w0_val == 8388608<br>                                                         |[0x8000050c]:KABSW t6, t5<br> [0x80000510]:csrrs t5, vxsat, zero<br> [0x80000514]:sw t6, 200(sp)<br>       |
|  47|[0x80002388]<br>0x00400000|- rs1_w0_val == 4194304<br>                                                         |[0x80000520]:KABSW t6, t5<br> [0x80000524]:csrrs t5, vxsat, zero<br> [0x80000528]:sw t6, 208(sp)<br>       |
|  48|[0x80002390]<br>0x00200000|- rs1_w0_val == 2097152<br>                                                         |[0x80000534]:KABSW t6, t5<br> [0x80000538]:csrrs t5, vxsat, zero<br> [0x8000053c]:sw t6, 216(sp)<br>       |
|  49|[0x80002398]<br>0x00100000|- rs1_w0_val == 1048576<br>                                                         |[0x80000548]:KABSW t6, t5<br> [0x8000054c]:csrrs t5, vxsat, zero<br> [0x80000550]:sw t6, 224(sp)<br>       |
|  50|[0x800023a0]<br>0x00080000|- rs1_w0_val == 524288<br>                                                          |[0x8000055c]:KABSW t6, t5<br> [0x80000560]:csrrs t5, vxsat, zero<br> [0x80000564]:sw t6, 232(sp)<br>       |
|  51|[0x800023a8]<br>0x00040000|- rs1_w0_val == 262144<br>                                                          |[0x80000570]:KABSW t6, t5<br> [0x80000574]:csrrs t5, vxsat, zero<br> [0x80000578]:sw t6, 240(sp)<br>       |
|  52|[0x800023b0]<br>0x00020000|- rs1_w0_val == 131072<br>                                                          |[0x80000584]:KABSW t6, t5<br> [0x80000588]:csrrs t5, vxsat, zero<br> [0x8000058c]:sw t6, 248(sp)<br>       |
|  53|[0x800023b8]<br>0x00010000|- rs1_w0_val == 65536<br>                                                           |[0x80000598]:KABSW t6, t5<br> [0x8000059c]:csrrs t5, vxsat, zero<br> [0x800005a0]:sw t6, 256(sp)<br>       |
|  54|[0x800023c0]<br>0x00008000|- rs1_w0_val == 32768<br>                                                           |[0x800005ac]:KABSW t6, t5<br> [0x800005b0]:csrrs t5, vxsat, zero<br> [0x800005b4]:sw t6, 264(sp)<br>       |
|  55|[0x800023c8]<br>0x00004000|- rs1_w0_val == 16384<br>                                                           |[0x800005c0]:KABSW t6, t5<br> [0x800005c4]:csrrs t5, vxsat, zero<br> [0x800005c8]:sw t6, 272(sp)<br>       |
|  56|[0x800023d0]<br>0x00002000|- rs1_w0_val == 8192<br>                                                            |[0x800005d4]:KABSW t6, t5<br> [0x800005d8]:csrrs t5, vxsat, zero<br> [0x800005dc]:sw t6, 280(sp)<br>       |
|  57|[0x800023d8]<br>0x00001000|- rs1_w0_val == 4096<br>                                                            |[0x800005e8]:KABSW t6, t5<br> [0x800005ec]:csrrs t5, vxsat, zero<br> [0x800005f0]:sw t6, 288(sp)<br>       |
|  58|[0x800023e0]<br>0x00000800|- rs1_w0_val == 2048<br>                                                            |[0x80000600]:KABSW t6, t5<br> [0x80000604]:csrrs t5, vxsat, zero<br> [0x80000608]:sw t6, 296(sp)<br>       |
|  59|[0x800023e8]<br>0x00000400|- rs1_w0_val == 1024<br>                                                            |[0x80000614]:KABSW t6, t5<br> [0x80000618]:csrrs t5, vxsat, zero<br> [0x8000061c]:sw t6, 304(sp)<br>       |
|  60|[0x800023f0]<br>0x00000200|- rs1_w0_val == 512<br>                                                             |[0x80000628]:KABSW t6, t5<br> [0x8000062c]:csrrs t5, vxsat, zero<br> [0x80000630]:sw t6, 312(sp)<br>       |
|  61|[0x800023f8]<br>0x00000100|- rs1_w0_val == 256<br>                                                             |[0x8000063c]:KABSW t6, t5<br> [0x80000640]:csrrs t5, vxsat, zero<br> [0x80000644]:sw t6, 320(sp)<br>       |
|  62|[0x80002400]<br>0x00000080|- rs1_w0_val == 128<br>                                                             |[0x80000650]:KABSW t6, t5<br> [0x80000654]:csrrs t5, vxsat, zero<br> [0x80000658]:sw t6, 328(sp)<br>       |
|  63|[0x80002408]<br>0x00000040|- rs1_w0_val == 64<br>                                                              |[0x80000664]:KABSW t6, t5<br> [0x80000668]:csrrs t5, vxsat, zero<br> [0x8000066c]:sw t6, 336(sp)<br>       |
|  64|[0x80002410]<br>0x00000020|- rs1_w0_val == 32<br>                                                              |[0x80000678]:KABSW t6, t5<br> [0x8000067c]:csrrs t5, vxsat, zero<br> [0x80000680]:sw t6, 344(sp)<br>       |
|  65|[0x80002418]<br>0x00000010|- rs1_w0_val == 16<br>                                                              |[0x8000068c]:KABSW t6, t5<br> [0x80000690]:csrrs t5, vxsat, zero<br> [0x80000694]:sw t6, 352(sp)<br>       |
|  66|[0x80002420]<br>0x00000008|- rs1_w0_val == 8<br>                                                               |[0x800006a0]:KABSW t6, t5<br> [0x800006a4]:csrrs t5, vxsat, zero<br> [0x800006a8]:sw t6, 360(sp)<br>       |
|  67|[0x80002428]<br>0x00000004|- rs1_w0_val == 4<br>                                                               |[0x800006b4]:KABSW t6, t5<br> [0x800006b8]:csrrs t5, vxsat, zero<br> [0x800006bc]:sw t6, 368(sp)<br>       |
|  68|[0x80002430]<br>0x00400001|- rs1_w0_val == -4194305<br>                                                        |[0x800006cc]:KABSW t6, t5<br> [0x800006d0]:csrrs t5, vxsat, zero<br> [0x800006d4]:sw t6, 376(sp)<br>       |
