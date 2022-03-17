
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000be0')]      |
| SIG_REGION                | [('0x80002210', '0x80002500', '188 words')]      |
| COV_LABELS                | kslra16.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kslra16.u-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 240      |
| Total Signature Updates   | 188      |
| STAT1                     | 90      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 94     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009b4]:KSLRA16_U t6, t5, t4
      [0x800009b8]:csrrs t5, vxsat, zero
      [0x800009bc]:sw t6, 384(sp)
 -- Signature Address: 0x80002468 Data: 0x0000FFF8
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -33554433
      - rs1_h1_val == 0
      - rs1_h0_val == 65519




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b44]:KSLRA16_U t6, t5, t4
      [0x80000b48]:csrrs t5, vxsat, zero
      [0x80000b4c]:sw t6, 496(sp)
 -- Signature Address: 0x800024d8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 1431655765




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b64]:KSLRA16_U t6, t5, t4
      [0x80000b68]:csrrs t5, vxsat, zero
      [0x80000b6c]:sw t6, 504(sp)
 -- Signature Address: 0x800024e0 Data: 0x00070007
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 2147483647




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bc4]:KSLRA16_U t6, t5, t4
      [0x80000bc8]:csrrs t5, vxsat, zero
      [0x80000bcc]:sw t6, 528(sp)
 -- Signature Address: 0x800024f8 Data: 0x00050006
 -- Redundant Coverpoints hit by the op
      - opcode : kslra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == -16385






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kslra16.u', 'rs1 : x7', 'rs2 : x7', 'rd : x7', 'rs1 == rs2 == rd', 'rs2_val == 1431655765', 'rs1_h1_val == 21845', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x8000011c]:KSLRA16_U t2, t2, t2
	-[0x80000120]:csrrs t2, vxsat, zero
	-[0x80000124]:sw t2, 0(s3)
Current Store : [0x80000128] : sw t2, 4(s3) -- Store: [0x80002214]:0x00000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x3', 'rd : x13', 'rs1 == rs2 != rd', 'rs2_val == 2147483647', 'rs1_h1_val == 32767', 'rs1_h0_val == 65535']
Last Code Sequence : 
	-[0x8000013c]:KSLRA16_U a3, gp, gp
	-[0x80000140]:csrrs gp, vxsat, zero
	-[0x80000144]:sw a3, 8(s3)
Current Store : [0x80000148] : sw gp, 12(s3) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x5', 'rs2 : x0', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd']
Last Code Sequence : 
	-[0x80000158]:KSLRA16_U t6, t0, zero
	-[0x8000015c]:csrrs t0, vxsat, zero
	-[0x80000160]:sw t6, 16(s3)
Current Store : [0x80000164] : sw t0, 20(s3) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x17', 'rd : x17', 'rs2 == rd != rs1', 'rs2_val == -536870913', 'rs1_h1_val == 57343']
Last Code Sequence : 
	-[0x80000178]:KSLRA16_U a7, s11, a7
	-[0x8000017c]:csrrs s11, vxsat, zero
	-[0x80000180]:sw a7, 24(s3)
Current Store : [0x80000184] : sw s11, 28(s3) -- Store: [0x8000222c]:0x00000000




Last Coverpoint : ['rs1 : x11', 'rs2 : x20', 'rd : x11', 'rs1 == rd != rs2', 'rs2_val == -268435457', 'rs1_h1_val == 65535', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000194]:KSLRA16_U a1, a1, s4
	-[0x80000198]:csrrs a1, vxsat, zero
	-[0x8000019c]:sw a1, 32(s3)
Current Store : [0x800001a0] : sw a1, 36(s3) -- Store: [0x80002234]:0x00000000




Last Coverpoint : ['rs1 : x31', 'rs2 : x29', 'rd : x16', 'rs2_val == -134217729', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x800001b4]:KSLRA16_U a6, t6, t4
	-[0x800001b8]:csrrs t6, vxsat, zero
	-[0x800001bc]:sw a6, 40(s3)
Current Store : [0x800001c0] : sw t6, 44(s3) -- Store: [0x8000223c]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x18', 'rd : x6', 'rs2_val == -67108865']
Last Code Sequence : 
	-[0x800001d4]:KSLRA16_U t1, tp, s2
	-[0x800001d8]:csrrs tp, vxsat, zero
	-[0x800001dc]:sw t1, 48(s3)
Current Store : [0x800001e0] : sw tp, 52(s3) -- Store: [0x80002244]:0x00000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x8', 'rd : x14', 'rs2_val == -33554433', 'rs1_h1_val == 2', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800001f4]:KSLRA16_U a4, t5, fp
	-[0x800001f8]:csrrs t5, vxsat, zero
	-[0x800001fc]:sw a4, 56(s3)
Current Store : [0x80000200] : sw t5, 60(s3) -- Store: [0x8000224c]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x15', 'rd : x24', 'rs2_val == -16777217', 'rs1_h1_val == 49151']
Last Code Sequence : 
	-[0x80000210]:KSLRA16_U s8, s6, a5
	-[0x80000214]:csrrs s6, vxsat, zero
	-[0x80000218]:sw s8, 64(s3)
Current Store : [0x8000021c] : sw s6, 68(s3) -- Store: [0x80002254]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x24', 'rd : x27', 'rs2_val == -8388609']
Last Code Sequence : 
	-[0x80000230]:KSLRA16_U s11, sp, s8
	-[0x80000234]:csrrs sp, vxsat, zero
	-[0x80000238]:sw s11, 72(s3)
Current Store : [0x8000023c] : sw sp, 76(s3) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x21', 'rd : x1', 'rs2_val == -4194305', 'rs1_h1_val == 65531']
Last Code Sequence : 
	-[0x80000250]:KSLRA16_U ra, s4, s5
	-[0x80000254]:csrrs s4, vxsat, zero
	-[0x80000258]:sw ra, 80(s3)
Current Store : [0x8000025c] : sw s4, 84(s3) -- Store: [0x80002264]:0x00000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x22', 'rd : x25', 'rs2_val == -2097153', 'rs1_h0_val == 49151']
Last Code Sequence : 
	-[0x80000270]:KSLRA16_U s9, a2, s6
	-[0x80000274]:csrrs a2, vxsat, zero
	-[0x80000278]:sw s9, 88(s3)
Current Store : [0x8000027c] : sw a2, 92(s3) -- Store: [0x8000226c]:0x00000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x10', 'rd : x28', 'rs2_val == -1048577', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000290]:KSLRA16_U t3, s1, a0
	-[0x80000294]:csrrs s1, vxsat, zero
	-[0x80000298]:sw t3, 96(s3)
Current Store : [0x8000029c] : sw s1, 100(s3) -- Store: [0x80002274]:0x00000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x27', 'rd : x21', 'rs2_val == -524289', 'rs1_h0_val == 65534']
Last Code Sequence : 
	-[0x800002b8]:KSLRA16_U s5, a4, s11
	-[0x800002bc]:csrrs a4, vxsat, zero
	-[0x800002c0]:sw s5, 0(t2)
Current Store : [0x800002c4] : sw a4, 4(t2) -- Store: [0x8000227c]:0x00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x16', 'rd : x22', 'rs2_val == -262145', 'rs1_h1_val == 16384', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800002d8]:KSLRA16_U s6, a5, a6
	-[0x800002dc]:csrrs a5, vxsat, zero
	-[0x800002e0]:sw s6, 8(t2)
Current Store : [0x800002e4] : sw a5, 12(t2) -- Store: [0x80002284]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x6', 'rd : x12', 'rs2_val == -131073', 'rs1_h0_val == 64511']
Last Code Sequence : 
	-[0x800002f8]:KSLRA16_U a2, fp, t1
	-[0x800002fc]:csrrs fp, vxsat, zero
	-[0x80000300]:sw a2, 16(t2)
Current Store : [0x80000304] : sw fp, 20(t2) -- Store: [0x8000228c]:0x00000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x14', 'rd : x10', 'rs2_val == -65537']
Last Code Sequence : 
	-[0x80000318]:KSLRA16_U a0, a3, a4
	-[0x8000031c]:csrrs a3, vxsat, zero
	-[0x80000320]:sw a0, 24(t2)
Current Store : [0x80000324] : sw a3, 28(t2) -- Store: [0x80002294]:0x00000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x11', 'rd : x5', 'rs2_val == -32769', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000338]:KSLRA16_U t0, zero, a1
	-[0x8000033c]:csrrs zero, vxsat, zero
	-[0x80000340]:sw t0, 32(t2)
Current Store : [0x80000344] : sw zero, 36(t2) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x5', 'rd : x0', 'rs2_val == -16385']
Last Code Sequence : 
	-[0x80000358]:KSLRA16_U zero, s2, t0
	-[0x8000035c]:csrrs s2, vxsat, zero
	-[0x80000360]:sw zero, 40(t2)
Current Store : [0x80000364] : sw s2, 44(t2) -- Store: [0x800022a4]:0x00000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x25', 'rd : x4', 'rs2_val == -8193', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000374]:KSLRA16_U tp, s7, s9
	-[0x80000378]:csrrs s7, vxsat, zero
	-[0x8000037c]:sw tp, 48(t2)
Current Store : [0x80000380] : sw s7, 52(t2) -- Store: [0x800022ac]:0x00000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x12', 'rd : x29', 'rs2_val == -4097', 'rs1_h1_val == 43690', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000394]:KSLRA16_U t4, s5, a2
	-[0x80000398]:csrrs s5, vxsat, zero
	-[0x8000039c]:sw t4, 56(t2)
Current Store : [0x800003a0] : sw s5, 60(t2) -- Store: [0x800022b4]:0x00000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x2', 'rd : x19', 'rs2_val == -2049', 'rs1_h1_val == 65533', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x800003b4]:KSLRA16_U s3, t4, sp
	-[0x800003b8]:csrrs t4, vxsat, zero
	-[0x800003bc]:sw s3, 64(t2)
Current Store : [0x800003c0] : sw t4, 68(t2) -- Store: [0x800022bc]:0x00000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x9', 'rd : x8', 'rs2_val == -1025']
Last Code Sequence : 
	-[0x800003d0]:KSLRA16_U fp, a7, s1
	-[0x800003d4]:csrrs a7, vxsat, zero
	-[0x800003d8]:sw fp, 72(t2)
Current Store : [0x800003dc] : sw a7, 76(t2) -- Store: [0x800022c4]:0x00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x26', 'rd : x3', 'rs2_val == -513', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x800003ec]:KSLRA16_U gp, s8, s10
	-[0x800003f0]:csrrs s8, vxsat, zero
	-[0x800003f4]:sw gp, 80(t2)
Current Store : [0x800003f8] : sw s8, 84(t2) -- Store: [0x800022cc]:0x00000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x19', 'rd : x23', 'rs2_val == -257']
Last Code Sequence : 
	-[0x80000408]:KSLRA16_U s7, a0, s3
	-[0x8000040c]:csrrs a0, vxsat, zero
	-[0x80000410]:sw s7, 88(t2)
Current Store : [0x80000414] : sw a0, 92(t2) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x13', 'rd : x2', 'rs2_val == -129', 'rs1_h1_val == 63487']
Last Code Sequence : 
	-[0x80000424]:KSLRA16_U sp, a6, a3
	-[0x80000428]:csrrs a6, vxsat, zero
	-[0x8000042c]:sw sp, 96(t2)
Current Store : [0x80000430] : sw a6, 100(t2) -- Store: [0x800022dc]:0x00000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x1', 'rd : x18', 'rs2_val == -65']
Last Code Sequence : 
	-[0x80000440]:KSLRA16_U s2, t3, ra
	-[0x80000444]:csrrs t3, vxsat, zero
	-[0x80000448]:sw s2, 104(t2)
Current Store : [0x8000044c] : sw t3, 108(t2) -- Store: [0x800022e4]:0x00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rd : x9', 'rs2_val == -33', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000460]:KSLRA16_U s1, s3, tp
	-[0x80000464]:csrrs s3, vxsat, zero
	-[0x80000468]:sw s1, 0(sp)
Current Store : [0x8000046c] : sw s3, 4(sp) -- Store: [0x800022ec]:0x00000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x30', 'rd : x15', 'rs2_val == -17', 'rs1_h1_val == 65407', 'rs1_h0_val == 65407']
Last Code Sequence : 
	-[0x8000047c]:KSLRA16_U a5, s9, t5
	-[0x80000480]:csrrs s9, vxsat, zero
	-[0x80000484]:sw a5, 8(sp)
Current Store : [0x80000488] : sw s9, 12(sp) -- Store: [0x800022f4]:0x00000001




Last Coverpoint : ['rs1 : x26', 'rs2 : x31', 'rd : x30', 'rs2_val == -9', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000498]:KSLRA16_U t5, s10, t6
	-[0x8000049c]:csrrs s10, vxsat, zero
	-[0x800004a0]:sw t5, 16(sp)
Current Store : [0x800004a4] : sw s10, 20(sp) -- Store: [0x800022fc]:0x00000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x23', 'rd : x26', 'rs2_val == -5']
Last Code Sequence : 
	-[0x800004b4]:KSLRA16_U s10, t1, s7
	-[0x800004b8]:csrrs t1, vxsat, zero
	-[0x800004bc]:sw s10, 24(sp)
Current Store : [0x800004c0] : sw t1, 28(sp) -- Store: [0x80002304]:0x00000001




Last Coverpoint : ['rs1 : x1', 'rs2 : x28', 'rd : x20', 'rs2_val == -3']
Last Code Sequence : 
	-[0x800004d0]:KSLRA16_U s4, ra, t3
	-[0x800004d4]:csrrs ra, vxsat, zero
	-[0x800004d8]:sw s4, 32(sp)
Current Store : [0x800004dc] : sw ra, 36(sp) -- Store: [0x8000230c]:0x00000001




Last Coverpoint : ['rs2_val == -2', 'rs1_h0_val == 65531']
Last Code Sequence : 
	-[0x800004ec]:KSLRA16_U t6, t5, t4
	-[0x800004f0]:csrrs t5, vxsat, zero
	-[0x800004f4]:sw t6, 40(sp)
Current Store : [0x800004f8] : sw t5, 44(sp) -- Store: [0x80002314]:0x00000001




Last Coverpoint : ['rs2_val == -2147483648', 'rs1_h1_val == 65279', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000508]:KSLRA16_U t6, t5, t4
	-[0x8000050c]:csrrs t5, vxsat, zero
	-[0x80000510]:sw t6, 48(sp)
Current Store : [0x80000514] : sw t5, 52(sp) -- Store: [0x8000231c]:0x00000001




Last Coverpoint : ['rs2_val == 1073741824']
Last Code Sequence : 
	-[0x80000520]:KSLRA16_U t6, t5, t4
	-[0x80000524]:csrrs t5, vxsat, zero
	-[0x80000528]:sw t6, 56(sp)
Current Store : [0x8000052c] : sw t5, 60(sp) -- Store: [0x80002324]:0x00000001




Last Coverpoint : ['rs2_val == 536870912']
Last Code Sequence : 
	-[0x80000538]:KSLRA16_U t6, t5, t4
	-[0x8000053c]:csrrs t5, vxsat, zero
	-[0x80000540]:sw t6, 64(sp)
Current Store : [0x80000544] : sw t5, 68(sp) -- Store: [0x8000232c]:0x00000001




Last Coverpoint : ['rs2_val == 268435456', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000554]:KSLRA16_U t6, t5, t4
	-[0x80000558]:csrrs t5, vxsat, zero
	-[0x8000055c]:sw t6, 72(sp)
Current Store : [0x80000560] : sw t5, 76(sp) -- Store: [0x80002334]:0x00000001




Last Coverpoint : ['rs2_val == 134217728', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000570]:KSLRA16_U t6, t5, t4
	-[0x80000574]:csrrs t5, vxsat, zero
	-[0x80000578]:sw t6, 80(sp)
Current Store : [0x8000057c] : sw t5, 84(sp) -- Store: [0x8000233c]:0x00000001




Last Coverpoint : ['rs2_val == 67108864']
Last Code Sequence : 
	-[0x8000058c]:KSLRA16_U t6, t5, t4
	-[0x80000590]:csrrs t5, vxsat, zero
	-[0x80000594]:sw t6, 88(sp)
Current Store : [0x80000598] : sw t5, 92(sp) -- Store: [0x80002344]:0x00000001




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x800005a8]:KSLRA16_U t6, t5, t4
	-[0x800005ac]:csrrs t5, vxsat, zero
	-[0x800005b0]:sw t6, 96(sp)
Current Store : [0x800005b4] : sw t5, 100(sp) -- Store: [0x8000234c]:0x00000001




Last Coverpoint : ['rs2_val == 16777216']
Last Code Sequence : 
	-[0x800005c4]:KSLRA16_U t6, t5, t4
	-[0x800005c8]:csrrs t5, vxsat, zero
	-[0x800005cc]:sw t6, 104(sp)
Current Store : [0x800005d0] : sw t5, 108(sp) -- Store: [0x80002354]:0x00000001




Last Coverpoint : ['rs2_val == 8', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005e0]:KSLRA16_U t6, t5, t4
	-[0x800005e4]:csrrs t5, vxsat, zero
	-[0x800005e8]:sw t6, 112(sp)
Current Store : [0x800005ec] : sw t5, 116(sp) -- Store: [0x8000235c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65471', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800005fc]:KSLRA16_U t6, t5, t4
	-[0x80000600]:csrrs t5, vxsat, zero
	-[0x80000604]:sw t6, 120(sp)
Current Store : [0x80000608] : sw t5, 124(sp) -- Store: [0x80002364]:0x00000001




Last Coverpoint : ['rs2_val == 8192', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000618]:KSLRA16_U t6, t5, t4
	-[0x8000061c]:csrrs t5, vxsat, zero
	-[0x80000620]:sw t6, 128(sp)
Current Store : [0x80000624] : sw t5, 132(sp) -- Store: [0x8000236c]:0x00000001




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x80000634]:KSLRA16_U t6, t5, t4
	-[0x80000638]:csrrs t5, vxsat, zero
	-[0x8000063c]:sw t6, 136(sp)
Current Store : [0x80000640] : sw t5, 140(sp) -- Store: [0x80002374]:0x00000001




Last Coverpoint : ['rs2_val == -1431655766']
Last Code Sequence : 
	-[0x80000654]:KSLRA16_U t6, t5, t4
	-[0x80000658]:csrrs t5, vxsat, zero
	-[0x8000065c]:sw t6, 144(sp)
Current Store : [0x80000660] : sw t5, 148(sp) -- Store: [0x8000237c]:0x00000001




Last Coverpoint : ['rs2_val == 8388608']
Last Code Sequence : 
	-[0x80000670]:KSLRA16_U t6, t5, t4
	-[0x80000674]:csrrs t5, vxsat, zero
	-[0x80000678]:sw t6, 152(sp)
Current Store : [0x8000067c] : sw t5, 156(sp) -- Store: [0x80002384]:0x00000001




Last Coverpoint : ['rs2_val == 4194304', 'rs1_h1_val == 16', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000688]:KSLRA16_U t6, t5, t4
	-[0x8000068c]:csrrs t5, vxsat, zero
	-[0x80000690]:sw t6, 160(sp)
Current Store : [0x80000694] : sw t5, 164(sp) -- Store: [0x8000238c]:0x00000001




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x800006a4]:KSLRA16_U t6, t5, t4
	-[0x800006a8]:csrrs t5, vxsat, zero
	-[0x800006ac]:sw t6, 168(sp)
Current Store : [0x800006b0] : sw t5, 172(sp) -- Store: [0x80002394]:0x00000001




Last Coverpoint : ['rs2_val == 1048576', 'rs1_h1_val == 65503', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800006c0]:KSLRA16_U t6, t5, t4
	-[0x800006c4]:csrrs t5, vxsat, zero
	-[0x800006c8]:sw t6, 176(sp)
Current Store : [0x800006cc] : sw t5, 180(sp) -- Store: [0x8000239c]:0x00000001




Last Coverpoint : ['rs2_val == 524288']
Last Code Sequence : 
	-[0x800006dc]:KSLRA16_U t6, t5, t4
	-[0x800006e0]:csrrs t5, vxsat, zero
	-[0x800006e4]:sw t6, 184(sp)
Current Store : [0x800006e8] : sw t5, 188(sp) -- Store: [0x800023a4]:0x00000001




Last Coverpoint : ['rs2_val == 262144', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x800006f8]:KSLRA16_U t6, t5, t4
	-[0x800006fc]:csrrs t5, vxsat, zero
	-[0x80000700]:sw t6, 192(sp)
Current Store : [0x80000704] : sw t5, 196(sp) -- Store: [0x800023ac]:0x00000001




Last Coverpoint : ['rs2_val == 131072', 'rs1_h0_val == 65471']
Last Code Sequence : 
	-[0x80000714]:KSLRA16_U t6, t5, t4
	-[0x80000718]:csrrs t5, vxsat, zero
	-[0x8000071c]:sw t6, 200(sp)
Current Store : [0x80000720] : sw t5, 204(sp) -- Store: [0x800023b4]:0x00000001




Last Coverpoint : ['rs2_val == 65536']
Last Code Sequence : 
	-[0x80000730]:KSLRA16_U t6, t5, t4
	-[0x80000734]:csrrs t5, vxsat, zero
	-[0x80000738]:sw t6, 208(sp)
Current Store : [0x8000073c] : sw t5, 212(sp) -- Store: [0x800023bc]:0x00000001




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x8000074c]:KSLRA16_U t6, t5, t4
	-[0x80000750]:csrrs t5, vxsat, zero
	-[0x80000754]:sw t6, 216(sp)
Current Store : [0x80000758] : sw t5, 220(sp) -- Store: [0x800023c4]:0x00000001




Last Coverpoint : ['rs2_val == 4096']
Last Code Sequence : 
	-[0x80000768]:KSLRA16_U t6, t5, t4
	-[0x8000076c]:csrrs t5, vxsat, zero
	-[0x80000770]:sw t6, 224(sp)
Current Store : [0x80000774] : sw t5, 228(sp) -- Store: [0x800023cc]:0x00000001




Last Coverpoint : ['rs2_val == 2048', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000784]:KSLRA16_U t6, t5, t4
	-[0x80000788]:csrrs t5, vxsat, zero
	-[0x8000078c]:sw t6, 232(sp)
Current Store : [0x80000790] : sw t5, 236(sp) -- Store: [0x800023d4]:0x00000001




Last Coverpoint : ['rs2_val == 1024', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x800007a0]:KSLRA16_U t6, t5, t4
	-[0x800007a4]:csrrs t5, vxsat, zero
	-[0x800007a8]:sw t6, 240(sp)
Current Store : [0x800007ac] : sw t5, 244(sp) -- Store: [0x800023dc]:0x00000001




Last Coverpoint : ['rs2_val == 512']
Last Code Sequence : 
	-[0x800007bc]:KSLRA16_U t6, t5, t4
	-[0x800007c0]:csrrs t5, vxsat, zero
	-[0x800007c4]:sw t6, 248(sp)
Current Store : [0x800007c8] : sw t5, 252(sp) -- Store: [0x800023e4]:0x00000001




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x800007d8]:KSLRA16_U t6, t5, t4
	-[0x800007dc]:csrrs t5, vxsat, zero
	-[0x800007e0]:sw t6, 256(sp)
Current Store : [0x800007e4] : sw t5, 260(sp) -- Store: [0x800023ec]:0x00000001




Last Coverpoint : ['rs2_val == 128']
Last Code Sequence : 
	-[0x800007f4]:KSLRA16_U t6, t5, t4
	-[0x800007f8]:csrrs t5, vxsat, zero
	-[0x800007fc]:sw t6, 264(sp)
Current Store : [0x80000800] : sw t5, 268(sp) -- Store: [0x800023f4]:0x00000001




Last Coverpoint : ['rs2_val == 1']
Last Code Sequence : 
	-[0x80000810]:KSLRA16_U t6, t5, t4
	-[0x80000814]:csrrs t5, vxsat, zero
	-[0x80000818]:sw t6, 272(sp)
Current Store : [0x8000081c] : sw t5, 276(sp) -- Store: [0x800023fc]:0x00000001




Last Coverpoint : ['rs1_h0_val == 43690']
Last Code Sequence : 
	-[0x80000830]:KSLRA16_U t6, t5, t4
	-[0x80000834]:csrrs t5, vxsat, zero
	-[0x80000838]:sw t6, 280(sp)
Current Store : [0x8000083c] : sw t5, 284(sp) -- Store: [0x80002404]:0x00000001




Last Coverpoint : ['rs2_val == 2', 'rs1_h1_val == 61439']
Last Code Sequence : 
	-[0x8000084c]:KSLRA16_U t6, t5, t4
	-[0x80000850]:csrrs t5, vxsat, zero
	-[0x80000854]:sw t6, 288(sp)
Current Store : [0x80000858] : sw t5, 292(sp) -- Store: [0x8000240c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64511']
Last Code Sequence : 
	-[0x8000086c]:KSLRA16_U t6, t5, t4
	-[0x80000870]:csrrs t5, vxsat, zero
	-[0x80000874]:sw t6, 296(sp)
Current Store : [0x80000878] : sw t5, 300(sp) -- Store: [0x80002414]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65023']
Last Code Sequence : 
	-[0x8000088c]:KSLRA16_U t6, t5, t4
	-[0x80000890]:csrrs t5, vxsat, zero
	-[0x80000894]:sw t6, 304(sp)
Current Store : [0x80000898] : sw t5, 308(sp) -- Store: [0x8000241c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65519']
Last Code Sequence : 
	-[0x800008a8]:KSLRA16_U t6, t5, t4
	-[0x800008ac]:csrrs t5, vxsat, zero
	-[0x800008b0]:sw t6, 312(sp)
Current Store : [0x800008b4] : sw t5, 316(sp) -- Store: [0x80002424]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65527']
Last Code Sequence : 
	-[0x800008c4]:KSLRA16_U t6, t5, t4
	-[0x800008c8]:csrrs t5, vxsat, zero
	-[0x800008cc]:sw t6, 320(sp)
Current Store : [0x800008d0] : sw t5, 324(sp) -- Store: [0x8000242c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 65534']
Last Code Sequence : 
	-[0x800008e4]:KSLRA16_U t6, t5, t4
	-[0x800008e8]:csrrs t5, vxsat, zero
	-[0x800008ec]:sw t6, 328(sp)
Current Store : [0x800008f0] : sw t5, 332(sp) -- Store: [0x80002434]:0x00000001




Last Coverpoint : ['rs1_h1_val == 32768']
Last Code Sequence : 
	-[0x80000900]:KSLRA16_U t6, t5, t4
	-[0x80000904]:csrrs t5, vxsat, zero
	-[0x80000908]:sw t6, 336(sp)
Current Store : [0x8000090c] : sw t5, 340(sp) -- Store: [0x8000243c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x8000091c]:KSLRA16_U t6, t5, t4
	-[0x80000920]:csrrs t5, vxsat, zero
	-[0x80000924]:sw t6, 344(sp)
Current Store : [0x80000928] : sw t5, 348(sp) -- Store: [0x80002444]:0x00000001




Last Coverpoint : ['rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x8000093c]:KSLRA16_U t6, t5, t4
	-[0x80000940]:csrrs t5, vxsat, zero
	-[0x80000944]:sw t6, 352(sp)
Current Store : [0x80000948] : sw t5, 356(sp) -- Store: [0x8000244c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 512']
Last Code Sequence : 
	-[0x80000958]:KSLRA16_U t6, t5, t4
	-[0x8000095c]:csrrs t5, vxsat, zero
	-[0x80000960]:sw t6, 360(sp)
Current Store : [0x80000964] : sw t5, 364(sp) -- Store: [0x80002454]:0x00000001




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000974]:KSLRA16_U t6, t5, t4
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sw t6, 368(sp)
Current Store : [0x80000980] : sw t5, 372(sp) -- Store: [0x8000245c]:0x00000001




Last Coverpoint : ['rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000994]:KSLRA16_U t6, t5, t4
	-[0x80000998]:csrrs t5, vxsat, zero
	-[0x8000099c]:sw t6, 376(sp)
Current Store : [0x800009a0] : sw t5, 380(sp) -- Store: [0x80002464]:0x00000001




Last Coverpoint : ['opcode : kslra16.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -33554433', 'rs1_h1_val == 0', 'rs1_h0_val == 65519']
Last Code Sequence : 
	-[0x800009b4]:KSLRA16_U t6, t5, t4
	-[0x800009b8]:csrrs t5, vxsat, zero
	-[0x800009bc]:sw t6, 384(sp)
Current Store : [0x800009c0] : sw t5, 388(sp) -- Store: [0x8000246c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 57343']
Last Code Sequence : 
	-[0x800009d4]:KSLRA16_U t6, t5, t4
	-[0x800009d8]:csrrs t5, vxsat, zero
	-[0x800009dc]:sw t6, 392(sp)
Current Store : [0x800009e0] : sw t5, 396(sp) -- Store: [0x80002474]:0x00000001




Last Coverpoint : ['rs1_h0_val == 61439']
Last Code Sequence : 
	-[0x800009f0]:KSLRA16_U t6, t5, t4
	-[0x800009f4]:csrrs t5, vxsat, zero
	-[0x800009f8]:sw t6, 400(sp)
Current Store : [0x800009fc] : sw t5, 404(sp) -- Store: [0x8000247c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 63487']
Last Code Sequence : 
	-[0x80000a0c]:KSLRA16_U t6, t5, t4
	-[0x80000a10]:csrrs t5, vxsat, zero
	-[0x80000a14]:sw t6, 408(sp)
Current Store : [0x80000a18] : sw t5, 412(sp) -- Store: [0x80002484]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65023']
Last Code Sequence : 
	-[0x80000a28]:KSLRA16_U t6, t5, t4
	-[0x80000a2c]:csrrs t5, vxsat, zero
	-[0x80000a30]:sw t6, 416(sp)
Current Store : [0x80000a34] : sw t5, 420(sp) -- Store: [0x8000248c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65279']
Last Code Sequence : 
	-[0x80000a44]:KSLRA16_U t6, t5, t4
	-[0x80000a48]:csrrs t5, vxsat, zero
	-[0x80000a4c]:sw t6, 424(sp)
Current Store : [0x80000a50] : sw t5, 428(sp) -- Store: [0x80002494]:0x00000001




Last Coverpoint : ['rs2_val == 64', 'rs1_h0_val == 65503']
Last Code Sequence : 
	-[0x80000a60]:KSLRA16_U t6, t5, t4
	-[0x80000a64]:csrrs t5, vxsat, zero
	-[0x80000a68]:sw t6, 432(sp)
Current Store : [0x80000a6c] : sw t5, 436(sp) -- Store: [0x8000249c]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65527']
Last Code Sequence : 
	-[0x80000a7c]:KSLRA16_U t6, t5, t4
	-[0x80000a80]:csrrs t5, vxsat, zero
	-[0x80000a84]:sw t6, 440(sp)
Current Store : [0x80000a88] : sw t5, 444(sp) -- Store: [0x800024a4]:0x00000001




Last Coverpoint : ['rs1_h0_val == 65533']
Last Code Sequence : 
	-[0x80000a9c]:KSLRA16_U t6, t5, t4
	-[0x80000aa0]:csrrs t5, vxsat, zero
	-[0x80000aa4]:sw t6, 448(sp)
Current Store : [0x80000aa8] : sw t5, 452(sp) -- Store: [0x800024ac]:0x00000001




Last Coverpoint : ['rs1_h0_val == 32768']
Last Code Sequence : 
	-[0x80000ab4]:KSLRA16_U t6, t5, t4
	-[0x80000ab8]:csrrs t5, vxsat, zero
	-[0x80000abc]:sw t6, 456(sp)
Current Store : [0x80000ac0] : sw t5, 460(sp) -- Store: [0x800024b4]:0x00000001




Last Coverpoint : ['rs2_val == 32']
Last Code Sequence : 
	-[0x80000ad0]:KSLRA16_U t6, t5, t4
	-[0x80000ad4]:csrrs t5, vxsat, zero
	-[0x80000ad8]:sw t6, 464(sp)
Current Store : [0x80000adc] : sw t5, 468(sp) -- Store: [0x800024bc]:0x00000001




Last Coverpoint : ['rs2_val == 16']
Last Code Sequence : 
	-[0x80000aec]:KSLRA16_U t6, t5, t4
	-[0x80000af0]:csrrs t5, vxsat, zero
	-[0x80000af4]:sw t6, 472(sp)
Current Store : [0x80000af8] : sw t5, 476(sp) -- Store: [0x800024c4]:0x00000001




Last Coverpoint : ['rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000b08]:KSLRA16_U t6, t5, t4
	-[0x80000b0c]:csrrs t5, vxsat, zero
	-[0x80000b10]:sw t6, 480(sp)
Current Store : [0x80000b14] : sw t5, 484(sp) -- Store: [0x800024cc]:0x00000001




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x80000b24]:KSLRA16_U t6, t5, t4
	-[0x80000b28]:csrrs t5, vxsat, zero
	-[0x80000b2c]:sw t6, 488(sp)
Current Store : [0x80000b30] : sw t5, 492(sp) -- Store: [0x800024d4]:0x00000001




Last Coverpoint : ['opcode : kslra16.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 1431655765']
Last Code Sequence : 
	-[0x80000b44]:KSLRA16_U t6, t5, t4
	-[0x80000b48]:csrrs t5, vxsat, zero
	-[0x80000b4c]:sw t6, 496(sp)
Current Store : [0x80000b50] : sw t5, 500(sp) -- Store: [0x800024dc]:0x00000001




Last Coverpoint : ['opcode : kslra16.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 2147483647']
Last Code Sequence : 
	-[0x80000b64]:KSLRA16_U t6, t5, t4
	-[0x80000b68]:csrrs t5, vxsat, zero
	-[0x80000b6c]:sw t6, 504(sp)
Current Store : [0x80000b70] : sw t5, 508(sp) -- Store: [0x800024e4]:0x00000001




Last Coverpoint : ['rs2_val == -1073741825']
Last Code Sequence : 
	-[0x80000b84]:KSLRA16_U t6, t5, t4
	-[0x80000b88]:csrrs t5, vxsat, zero
	-[0x80000b8c]:sw t6, 512(sp)
Current Store : [0x80000b90] : sw t5, 516(sp) -- Store: [0x800024ec]:0x00000001




Last Coverpoint : ['rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000ba4]:KSLRA16_U t6, t5, t4
	-[0x80000ba8]:csrrs t5, vxsat, zero
	-[0x80000bac]:sw t6, 520(sp)
Current Store : [0x80000bb0] : sw t5, 524(sp) -- Store: [0x800024f4]:0x00000001




Last Coverpoint : ['opcode : kslra16.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == -16385']
Last Code Sequence : 
	-[0x80000bc4]:KSLRA16_U t6, t5, t4
	-[0x80000bc8]:csrrs t5, vxsat, zero
	-[0x80000bcc]:sw t6, 528(sp)
Current Store : [0x80000bd0] : sw t5, 532(sp) -- Store: [0x800024fc]:0x00000001





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

|s.no|        signature         |                                                                                coverpoints                                                                                 |                                                      code                                                      |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : kslra16.u<br> - rs1 : x7<br> - rs2 : x7<br> - rd : x7<br> - rs1 == rs2 == rd<br> - rs2_val == 1431655765<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 21845<br> |[0x8000011c]:KSLRA16_U t2, t2, t2<br> [0x80000120]:csrrs t2, vxsat, zero<br> [0x80000124]:sw t2, 0(s3)<br>      |
|   2|[0x80002218]<br>0x40000000|- rs1 : x3<br> - rs2 : x3<br> - rd : x13<br> - rs1 == rs2 != rd<br> - rs2_val == 2147483647<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 65535<br>                         |[0x8000013c]:KSLRA16_U a3, gp, gp<br> [0x80000140]:csrrs gp, vxsat, zero<br> [0x80000144]:sw a3, 8(s3)<br>      |
|   3|[0x80002220]<br>0x00130003|- rs1 : x5<br> - rs2 : x0<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br>                                                                                  |[0x80000158]:KSLRA16_U t6, t0, zero<br> [0x8000015c]:csrrs t0, vxsat, zero<br> [0x80000160]:sw t6, 16(s3)<br>   |
|   4|[0x80002228]<br>0xF0000007|- rs1 : x27<br> - rs2 : x17<br> - rd : x17<br> - rs2 == rd != rs1<br> - rs2_val == -536870913<br> - rs1_h1_val == 57343<br>                                                 |[0x80000178]:KSLRA16_U a7, s11, a7<br> [0x8000017c]:csrrs s11, vxsat, zero<br> [0x80000180]:sw a7, 24(s3)<br>   |
|   5|[0x80002230]<br>0x00000000|- rs1 : x11<br> - rs2 : x20<br> - rd : x11<br> - rs1 == rd != rs2<br> - rs2_val == -268435457<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 16384<br>                       |[0x80000194]:KSLRA16_U a1, a1, s4<br> [0x80000198]:csrrs a1, vxsat, zero<br> [0x8000019c]:sw a1, 32(s3)<br>     |
|   6|[0x80002238]<br>0x08002AAB|- rs1 : x31<br> - rs2 : x29<br> - rd : x16<br> - rs2_val == -134217729<br> - rs1_h1_val == 4096<br>                                                                         |[0x800001b4]:KSLRA16_U a6, t6, t4<br> [0x800001b8]:csrrs t6, vxsat, zero<br> [0x800001bc]:sw a6, 40(s3)<br>     |
|   7|[0x80002240]<br>0x40000009|- rs1 : x4<br> - rs2 : x18<br> - rd : x6<br> - rs2_val == -67108865<br>                                                                                                     |[0x800001d4]:KSLRA16_U t1, tp, s2<br> [0x800001d8]:csrrs tp, vxsat, zero<br> [0x800001dc]:sw t1, 48(s3)<br>     |
|   8|[0x80002248]<br>0x00014000|- rs1 : x30<br> - rs2 : x8<br> - rd : x14<br> - rs2_val == -33554433<br> - rs1_h1_val == 2<br> - rs1_h0_val == 32767<br>                                                    |[0x800001f4]:KSLRA16_U a4, t5, fp<br> [0x800001f8]:csrrs t5, vxsat, zero<br> [0x800001fc]:sw a4, 56(s3)<br>     |
|   9|[0x80002250]<br>0xE0002000|- rs1 : x22<br> - rs2 : x15<br> - rd : x24<br> - rs2_val == -16777217<br> - rs1_h1_val == 49151<br>                                                                         |[0x80000210]:KSLRA16_U s8, s6, a5<br> [0x80000214]:csrrs s6, vxsat, zero<br> [0x80000218]:sw s8, 64(s3)<br>     |
|  10|[0x80002258]<br>0x00000007|- rs1 : x2<br> - rs2 : x24<br> - rd : x27<br> - rs2_val == -8388609<br>                                                                                                     |[0x80000230]:KSLRA16_U s11, sp, s8<br> [0x80000234]:csrrs sp, vxsat, zero<br> [0x80000238]:sw s11, 72(s3)<br>   |
|  11|[0x80002260]<br>0xFFFE0003|- rs1 : x20<br> - rs2 : x21<br> - rd : x1<br> - rs2_val == -4194305<br> - rs1_h1_val == 65531<br>                                                                           |[0x80000250]:KSLRA16_U ra, s4, s5<br> [0x80000254]:csrrs s4, vxsat, zero<br> [0x80000258]:sw ra, 80(s3)<br>     |
|  12|[0x80002268]<br>0x0800E000|- rs1 : x12<br> - rs2 : x22<br> - rd : x25<br> - rs2_val == -2097153<br> - rs1_h0_val == 49151<br>                                                                          |[0x80000270]:KSLRA16_U s9, a2, s6<br> [0x80000274]:csrrs a2, vxsat, zero<br> [0x80000278]:sw s9, 88(s3)<br>     |
|  13|[0x80002270]<br>0x00030008|- rs1 : x9<br> - rs2 : x10<br> - rd : x28<br> - rs2_val == -1048577<br> - rs1_h0_val == 16<br>                                                                              |[0x80000290]:KSLRA16_U t3, s1, a0<br> [0x80000294]:csrrs s1, vxsat, zero<br> [0x80000298]:sw t3, 96(s3)<br>     |
|  14|[0x80002278]<br>0x0003FFFF|- rs1 : x14<br> - rs2 : x27<br> - rd : x21<br> - rs2_val == -524289<br> - rs1_h0_val == 65534<br>                                                                           |[0x800002b8]:KSLRA16_U s5, a4, s11<br> [0x800002bc]:csrrs a4, vxsat, zero<br> [0x800002c0]:sw s5, 0(t2)<br>     |
|  15|[0x80002280]<br>0x20000010|- rs1 : x15<br> - rs2 : x16<br> - rd : x22<br> - rs2_val == -262145<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 32<br>                                                    |[0x800002d8]:KSLRA16_U s6, a5, a6<br> [0x800002dc]:csrrs a5, vxsat, zero<br> [0x800002e0]:sw s6, 8(t2)<br>      |
|  16|[0x80002288]<br>0x0007FE00|- rs1 : x8<br> - rs2 : x6<br> - rd : x12<br> - rs2_val == -131073<br> - rs1_h0_val == 64511<br>                                                                             |[0x800002f8]:KSLRA16_U a2, fp, t1<br> [0x800002fc]:csrrs fp, vxsat, zero<br> [0x80000300]:sw a2, 16(t2)<br>     |
|  17|[0x80002290]<br>0x00030007|- rs1 : x13<br> - rs2 : x14<br> - rd : x10<br> - rs2_val == -65537<br>                                                                                                      |[0x80000318]:KSLRA16_U a0, a3, a4<br> [0x8000031c]:csrrs a3, vxsat, zero<br> [0x80000320]:sw a0, 24(t2)<br>     |
|  18|[0x80002298]<br>0x00000000|- rs1 : x0<br> - rs2 : x11<br> - rd : x5<br> - rs2_val == -32769<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                            |[0x80000338]:KSLRA16_U t0, zero, a1<br> [0x8000033c]:csrrs zero, vxsat, zero<br> [0x80000340]:sw t0, 32(t2)<br> |
|  19|[0x800022a0]<br>0x00000000|- rs1 : x18<br> - rs2 : x5<br> - rd : x0<br> - rs2_val == -16385<br>                                                                                                        |[0x80000358]:KSLRA16_U zero, s2, t0<br> [0x8000035c]:csrrs s2, vxsat, zero<br> [0x80000360]:sw zero, 40(t2)<br> |
|  20|[0x800022a8]<br>0x00010000|- rs1 : x23<br> - rs2 : x25<br> - rd : x4<br> - rs2_val == -8193<br> - rs1_h1_val == 1<br>                                                                                  |[0x80000374]:KSLRA16_U tp, s7, s9<br> [0x80000378]:csrrs s7, vxsat, zero<br> [0x8000037c]:sw tp, 48(t2)<br>     |
|  21|[0x800022b0]<br>0xD5550200|- rs1 : x21<br> - rs2 : x12<br> - rd : x29<br> - rs2_val == -4097<br> - rs1_h1_val == 43690<br> - rs1_h0_val == 1024<br>                                                    |[0x80000394]:KSLRA16_U t4, s5, a2<br> [0x80000398]:csrrs s5, vxsat, zero<br> [0x8000039c]:sw t4, 56(t2)<br>     |
|  22|[0x800022b8]<br>0xFFFF0002|- rs1 : x29<br> - rs2 : x2<br> - rd : x19<br> - rs2_val == -2049<br> - rs1_h1_val == 65533<br> - rs1_h0_val == 4<br>                                                        |[0x800003b4]:KSLRA16_U s3, t4, sp<br> [0x800003b8]:csrrs t4, vxsat, zero<br> [0x800003bc]:sw s3, 64(t2)<br>     |
|  23|[0x800022c0]<br>0x00070004|- rs1 : x17<br> - rs2 : x9<br> - rd : x8<br> - rs2_val == -1025<br>                                                                                                         |[0x800003d0]:KSLRA16_U fp, a7, s1<br> [0x800003d4]:csrrs a7, vxsat, zero<br> [0x800003d8]:sw fp, 72(t2)<br>     |
|  24|[0x800022c8]<br>0x0040E000|- rs1 : x24<br> - rs2 : x26<br> - rd : x3<br> - rs2_val == -513<br> - rs1_h1_val == 128<br>                                                                                 |[0x800003ec]:KSLRA16_U gp, s8, s10<br> [0x800003f0]:csrrs s8, vxsat, zero<br> [0x800003f4]:sw gp, 80(t2)<br>    |
|  25|[0x800022d0]<br>0x00090006|- rs1 : x10<br> - rs2 : x19<br> - rd : x23<br> - rs2_val == -257<br>                                                                                                        |[0x80000408]:KSLRA16_U s7, a0, s3<br> [0x8000040c]:csrrs a0, vxsat, zero<br> [0x80000410]:sw s7, 88(t2)<br>     |
|  26|[0x800022d8]<br>0xFC00FFFF|- rs1 : x16<br> - rs2 : x13<br> - rd : x2<br> - rs2_val == -129<br> - rs1_h1_val == 63487<br>                                                                               |[0x80000424]:KSLRA16_U sp, a6, a3<br> [0x80000428]:csrrs a6, vxsat, zero<br> [0x8000042c]:sw sp, 96(t2)<br>     |
|  27|[0x800022e0]<br>0x00000008|- rs1 : x28<br> - rs2 : x1<br> - rd : x18<br> - rs2_val == -65<br>                                                                                                          |[0x80000440]:KSLRA16_U s2, t3, ra<br> [0x80000444]:csrrs t3, vxsat, zero<br> [0x80000448]:sw s2, 104(t2)<br>    |
|  28|[0x800022e8]<br>0x00050800|- rs1 : x19<br> - rs2 : x4<br> - rd : x9<br> - rs2_val == -33<br> - rs1_h0_val == 4096<br>                                                                                  |[0x80000460]:KSLRA16_U s1, s3, tp<br> [0x80000464]:csrrs s3, vxsat, zero<br> [0x80000468]:sw s1, 0(sp)<br>      |
|  29|[0x800022f0]<br>0x80008000|- rs1 : x25<br> - rs2 : x30<br> - rd : x15<br> - rs2_val == -17<br> - rs1_h1_val == 65407<br> - rs1_h0_val == 65407<br>                                                     |[0x8000047c]:KSLRA16_U a5, s9, t5<br> [0x80000480]:csrrs s9, vxsat, zero<br> [0x80000484]:sw a5, 8(sp)<br>      |
|  30|[0x800022f8]<br>0x00010000|- rs1 : x26<br> - rs2 : x31<br> - rd : x30<br> - rs2_val == -9<br> - rs1_h1_val == 256<br>                                                                                  |[0x80000498]:KSLRA16_U t5, s10, t6<br> [0x8000049c]:csrrs s10, vxsat, zero<br> [0x800004a0]:sw t5, 16(sp)<br>   |
|  31|[0x80002300]<br>0x00000000|- rs1 : x6<br> - rs2 : x23<br> - rd : x26<br> - rs2_val == -5<br>                                                                                                           |[0x800004b4]:KSLRA16_U s10, t1, s7<br> [0x800004b8]:csrrs t1, vxsat, zero<br> [0x800004bc]:sw s10, 24(sp)<br>   |
|  32|[0x80002308]<br>0x00020001|- rs1 : x1<br> - rs2 : x28<br> - rd : x20<br> - rs2_val == -3<br>                                                                                                           |[0x800004d0]:KSLRA16_U s4, ra, t3<br> [0x800004d4]:csrrs ra, vxsat, zero<br> [0x800004d8]:sw s4, 32(sp)<br>     |
|  33|[0x80002310]<br>0x0002FFFF|- rs2_val == -2<br> - rs1_h0_val == 65531<br>                                                                                                                               |[0x800004ec]:KSLRA16_U t6, t5, t4<br> [0x800004f0]:csrrs t5, vxsat, zero<br> [0x800004f4]:sw t6, 40(sp)<br>     |
|  34|[0x80002318]<br>0xFEFF0100|- rs2_val == -2147483648<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 256<br>                                                                                              |[0x80000508]:KSLRA16_U t6, t5, t4<br> [0x8000050c]:csrrs t5, vxsat, zero<br> [0x80000510]:sw t6, 48(sp)<br>     |
|  35|[0x80002320]<br>0x00134000|- rs2_val == 1073741824<br>                                                                                                                                                 |[0x80000520]:KSLRA16_U t6, t5, t4<br> [0x80000524]:csrrs t5, vxsat, zero<br> [0x80000528]:sw t6, 56(sp)<br>     |
|  36|[0x80002328]<br>0xAAAA0000|- rs2_val == 536870912<br>                                                                                                                                                  |[0x80000538]:KSLRA16_U t6, t5, t4<br> [0x8000053c]:csrrs t5, vxsat, zero<br> [0x80000540]:sw t6, 64(sp)<br>     |
|  37|[0x80002330]<br>0x0020FFFB|- rs2_val == 268435456<br> - rs1_h1_val == 32<br>                                                                                                                           |[0x80000554]:KSLRA16_U t6, t5, t4<br> [0x80000558]:csrrs t5, vxsat, zero<br> [0x8000055c]:sw t6, 72(sp)<br>     |
|  38|[0x80002338]<br>0x000F0002|- rs2_val == 134217728<br> - rs1_h0_val == 2<br>                                                                                                                            |[0x80000570]:KSLRA16_U t6, t5, t4<br> [0x80000574]:csrrs t5, vxsat, zero<br> [0x80000578]:sw t6, 80(sp)<br>     |
|  39|[0x80002340]<br>0x00110006|- rs2_val == 67108864<br>                                                                                                                                                   |[0x8000058c]:KSLRA16_U t6, t5, t4<br> [0x80000590]:csrrs t5, vxsat, zero<br> [0x80000594]:sw t6, 88(sp)<br>     |
|  40|[0x80002348]<br>0x000E0005|- rs2_val == 33554432<br>                                                                                                                                                   |[0x800005a8]:KSLRA16_U t6, t5, t4<br> [0x800005ac]:csrrs t5, vxsat, zero<br> [0x800005b0]:sw t6, 96(sp)<br>     |
|  41|[0x80002350]<br>0xFFFD0003|- rs2_val == 16777216<br>                                                                                                                                                   |[0x800005c4]:KSLRA16_U t6, t5, t4<br> [0x800005c8]:csrrs t5, vxsat, zero<br> [0x800005cc]:sw t6, 104(sp)<br>    |
|  42|[0x80002358]<br>0x7FFF4000|- rs2_val == 8<br> - rs1_h0_val == 64<br>                                                                                                                                   |[0x800005e0]:KSLRA16_U t6, t5, t4<br> [0x800005e4]:csrrs t5, vxsat, zero<br> [0x800005e8]:sw t6, 112(sp)<br>    |
|  43|[0x80002360]<br>0xFFBF0008|- rs1_h1_val == 65471<br> - rs1_h0_val == 8<br>                                                                                                                             |[0x800005fc]:KSLRA16_U t6, t5, t4<br> [0x80000600]:csrrs t5, vxsat, zero<br> [0x80000604]:sw t6, 120(sp)<br>    |
|  44|[0x80002368]<br>0x00800001|- rs2_val == 8192<br> - rs1_h0_val == 1<br>                                                                                                                                 |[0x80000618]:KSLRA16_U t6, t5, t4<br> [0x8000061c]:csrrs t5, vxsat, zero<br> [0x80000620]:sw t6, 128(sp)<br>    |
|  45|[0x80002370]<br>0x000BFFFF|- rs2_val == 16384<br>                                                                                                                                                      |[0x80000634]:KSLRA16_U t6, t5, t4<br> [0x80000638]:csrrs t5, vxsat, zero<br> [0x8000063c]:sw t6, 136(sp)<br>    |
|  46|[0x80002378]<br>0x30000800|- rs2_val == -1431655766<br>                                                                                                                                                |[0x80000654]:KSLRA16_U t6, t5, t4<br> [0x80000658]:csrrs t5, vxsat, zero<br> [0x8000065c]:sw t6, 144(sp)<br>    |
|  47|[0x80002380]<br>0x000CFBFF|- rs2_val == 8388608<br>                                                                                                                                                    |[0x80000670]:KSLRA16_U t6, t5, t4<br> [0x80000674]:csrrs t5, vxsat, zero<br> [0x80000678]:sw t6, 152(sp)<br>    |
|  48|[0x80002388]<br>0x00102000|- rs2_val == 4194304<br> - rs1_h1_val == 16<br> - rs1_h0_val == 8192<br>                                                                                                    |[0x80000688]:KSLRA16_U t6, t5, t4<br> [0x8000068c]:csrrs t5, vxsat, zero<br> [0x80000690]:sw t6, 160(sp)<br>    |
|  49|[0x80002390]<br>0x0005000A|- rs2_val == 2097152<br>                                                                                                                                                    |[0x800006a4]:KSLRA16_U t6, t5, t4<br> [0x800006a8]:csrrs t5, vxsat, zero<br> [0x800006ac]:sw t6, 168(sp)<br>    |
|  50|[0x80002398]<br>0xFFDF0080|- rs2_val == 1048576<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 128<br>                                                                                                  |[0x800006c0]:KSLRA16_U t6, t5, t4<br> [0x800006c4]:csrrs t5, vxsat, zero<br> [0x800006c8]:sw t6, 176(sp)<br>    |
|  51|[0x800023a0]<br>0x000CFFFF|- rs2_val == 524288<br>                                                                                                                                                     |[0x800006dc]:KSLRA16_U t6, t5, t4<br> [0x800006e0]:csrrs t5, vxsat, zero<br> [0x800006e4]:sw t6, 184(sp)<br>    |
|  52|[0x800023a8]<br>0x08000400|- rs2_val == 262144<br> - rs1_h1_val == 2048<br>                                                                                                                            |[0x800006f8]:KSLRA16_U t6, t5, t4<br> [0x800006fc]:csrrs t5, vxsat, zero<br> [0x80000700]:sw t6, 192(sp)<br>    |
|  53|[0x800023b0]<br>0xFFFBFFBF|- rs2_val == 131072<br> - rs1_h0_val == 65471<br>                                                                                                                           |[0x80000714]:KSLRA16_U t6, t5, t4<br> [0x80000718]:csrrs t5, vxsat, zero<br> [0x8000071c]:sw t6, 200(sp)<br>    |
|  54|[0x800023b8]<br>0x00050005|- rs2_val == 65536<br>                                                                                                                                                      |[0x80000730]:KSLRA16_U t6, t5, t4<br> [0x80000734]:csrrs t5, vxsat, zero<br> [0x80000738]:sw t6, 208(sp)<br>    |
|  55|[0x800023c0]<br>0xFEFF7FFF|- rs2_val == 32768<br>                                                                                                                                                      |[0x8000074c]:KSLRA16_U t6, t5, t4<br> [0x80000750]:csrrs t5, vxsat, zero<br> [0x80000754]:sw t6, 216(sp)<br>    |
|  56|[0x800023c8]<br>0xFFDF0011|- rs2_val == 4096<br>                                                                                                                                                       |[0x80000768]:KSLRA16_U t6, t5, t4<br> [0x8000076c]:csrrs t5, vxsat, zero<br> [0x80000770]:sw t6, 224(sp)<br>    |
|  57|[0x800023d0]<br>0x00084000|- rs2_val == 2048<br> - rs1_h1_val == 8<br>                                                                                                                                 |[0x80000784]:KSLRA16_U t6, t5, t4<br> [0x80000788]:csrrs t5, vxsat, zero<br> [0x8000078c]:sw t6, 232(sp)<br>    |
|  58|[0x800023d8]<br>0x000DFFEF|- rs2_val == 1024<br> - rs1_h0_val == 65519<br>                                                                                                                             |[0x800007a0]:KSLRA16_U t6, t5, t4<br> [0x800007a4]:csrrs t5, vxsat, zero<br> [0x800007a8]:sw t6, 240(sp)<br>    |
|  59|[0x800023e0]<br>0x00070400|- rs2_val == 512<br>                                                                                                                                                        |[0x800007bc]:KSLRA16_U t6, t5, t4<br> [0x800007c0]:csrrs t5, vxsat, zero<br> [0x800007c4]:sw t6, 248(sp)<br>    |
|  60|[0x800023e8]<br>0x7FFF000C|- rs2_val == 256<br>                                                                                                                                                        |[0x800007d8]:KSLRA16_U t6, t5, t4<br> [0x800007dc]:csrrs t5, vxsat, zero<br> [0x800007e0]:sw t6, 256(sp)<br>    |
|  61|[0x800023f0]<br>0xFFFD0080|- rs2_val == 128<br>                                                                                                                                                        |[0x800007f4]:KSLRA16_U t6, t5, t4<br> [0x800007f8]:csrrs t5, vxsat, zero<br> [0x800007fc]:sw t6, 264(sp)<br>    |
|  62|[0x800023f8]<br>0x80000100|- rs2_val == 1<br>                                                                                                                                                          |[0x80000810]:KSLRA16_U t6, t5, t4<br> [0x80000814]:csrrs t5, vxsat, zero<br> [0x80000818]:sw t6, 272(sp)<br>    |
|  63|[0x80002400]<br>0x2AABD555|- rs1_h0_val == 43690<br>                                                                                                                                                   |[0x80000830]:KSLRA16_U t6, t5, t4<br> [0x80000834]:csrrs t5, vxsat, zero<br> [0x80000838]:sw t6, 280(sp)<br>    |
|  64|[0x80002408]<br>0xBFFCEFFC|- rs2_val == 2<br> - rs1_h1_val == 61439<br>                                                                                                                                |[0x8000084c]:KSLRA16_U t6, t5, t4<br> [0x80000850]:csrrs t5, vxsat, zero<br> [0x80000854]:sw t6, 288(sp)<br>    |
|  65|[0x80002410]<br>0xFE00FFC0|- rs1_h1_val == 64511<br>                                                                                                                                                   |[0x8000086c]:KSLRA16_U t6, t5, t4<br> [0x80000870]:csrrs t5, vxsat, zero<br> [0x80000874]:sw t6, 296(sp)<br>    |
|  66|[0x80002418]<br>0xFF00FFFE|- rs1_h1_val == 65023<br>                                                                                                                                                   |[0x8000088c]:KSLRA16_U t6, t5, t4<br> [0x80000890]:csrrs t5, vxsat, zero<br> [0x80000894]:sw t6, 304(sp)<br>    |
|  67|[0x80002420]<br>0x00000000|- rs1_h1_val == 65519<br>                                                                                                                                                   |[0x800008a8]:KSLRA16_U t6, t5, t4<br> [0x800008ac]:csrrs t5, vxsat, zero<br> [0x800008b0]:sw t6, 312(sp)<br>    |
|  68|[0x80002428]<br>0xFFF70005|- rs1_h1_val == 65527<br>                                                                                                                                                   |[0x800008c4]:KSLRA16_U t6, t5, t4<br> [0x800008c8]:csrrs t5, vxsat, zero<br> [0x800008cc]:sw t6, 320(sp)<br>    |
|  69|[0x80002430]<br>0xFFFF0200|- rs1_h1_val == 65534<br>                                                                                                                                                   |[0x800008e4]:KSLRA16_U t6, t5, t4<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sw t6, 328(sp)<br>    |
|  70|[0x80002438]<br>0xFF00FFFF|- rs1_h1_val == 32768<br>                                                                                                                                                   |[0x80000900]:KSLRA16_U t6, t5, t4<br> [0x80000904]:csrrs t5, vxsat, zero<br> [0x80000908]:sw t6, 336(sp)<br>    |
|  71|[0x80002440]<br>0x20000007|- rs1_h1_val == 8192<br>                                                                                                                                                    |[0x8000091c]:KSLRA16_U t6, t5, t4<br> [0x80000920]:csrrs t5, vxsat, zero<br> [0x80000924]:sw t6, 344(sp)<br>    |
|  72|[0x80002448]<br>0x0200FFF8|- rs1_h1_val == 1024<br>                                                                                                                                                    |[0x8000093c]:KSLRA16_U t6, t5, t4<br> [0x80000940]:csrrs t5, vxsat, zero<br> [0x80000944]:sw t6, 352(sp)<br>    |
|  73|[0x80002450]<br>0x01000800|- rs1_h1_val == 512<br>                                                                                                                                                     |[0x80000958]:KSLRA16_U t6, t5, t4<br> [0x8000095c]:csrrs t5, vxsat, zero<br> [0x80000960]:sw t6, 360(sp)<br>    |
|  74|[0x80002458]<br>0x0040FFFE|- rs1_h1_val == 64<br>                                                                                                                                                      |[0x80000974]:KSLRA16_U t6, t5, t4<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sw t6, 368(sp)<br>    |
|  75|[0x80002460]<br>0x00020002|- rs1_h1_val == 4<br>                                                                                                                                                       |[0x80000994]:KSLRA16_U t6, t5, t4<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sw t6, 376(sp)<br>    |
|  76|[0x80002470]<br>0x0006DFFF|- rs1_h0_val == 57343<br>                                                                                                                                                   |[0x800009d4]:KSLRA16_U t6, t5, t4<br> [0x800009d8]:csrrs t5, vxsat, zero<br> [0x800009dc]:sw t6, 392(sp)<br>    |
|  77|[0x80002478]<br>0x0013EFFF|- rs1_h0_val == 61439<br>                                                                                                                                                   |[0x800009f0]:KSLRA16_U t6, t5, t4<br> [0x800009f4]:csrrs t5, vxsat, zero<br> [0x800009f8]:sw t6, 400(sp)<br>    |
|  78|[0x80002480]<br>0xFEC08000|- rs1_h0_val == 63487<br>                                                                                                                                                   |[0x80000a0c]:KSLRA16_U t6, t5, t4<br> [0x80000a10]:csrrs t5, vxsat, zero<br> [0x80000a14]:sw t6, 408(sp)<br>    |
|  79|[0x80002488]<br>0x000AFF00|- rs1_h0_val == 65023<br>                                                                                                                                                   |[0x80000a28]:KSLRA16_U t6, t5, t4<br> [0x80000a2c]:csrrs t5, vxsat, zero<br> [0x80000a30]:sw t6, 416(sp)<br>    |
|  80|[0x80002490]<br>0xBFFFFEFF|- rs1_h0_val == 65279<br>                                                                                                                                                   |[0x80000a44]:KSLRA16_U t6, t5, t4<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sw t6, 424(sp)<br>    |
|  81|[0x80002498]<br>0xFF7FFFDF|- rs2_val == 64<br> - rs1_h0_val == 65503<br>                                                                                                                               |[0x80000a60]:KSLRA16_U t6, t5, t4<br> [0x80000a64]:csrrs t5, vxsat, zero<br> [0x80000a68]:sw t6, 432(sp)<br>    |
|  82|[0x800024a0]<br>0x0009FFF7|- rs1_h0_val == 65527<br>                                                                                                                                                   |[0x80000a7c]:KSLRA16_U t6, t5, t4<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sw t6, 440(sp)<br>    |
|  83|[0x800024a8]<br>0x0003FFFF|- rs1_h0_val == 65533<br>                                                                                                                                                   |[0x80000a9c]:KSLRA16_U t6, t5, t4<br> [0x80000aa0]:csrrs t5, vxsat, zero<br> [0x80000aa4]:sw t6, 448(sp)<br>    |
|  84|[0x800024b0]<br>0x0000FFC0|- rs1_h0_val == 32768<br>                                                                                                                                                   |[0x80000ab4]:KSLRA16_U t6, t5, t4<br> [0x80000ab8]:csrrs t5, vxsat, zero<br> [0x80000abc]:sw t6, 456(sp)<br>    |
|  85|[0x800024b8]<br>0x000C0400|- rs2_val == 32<br>                                                                                                                                                         |[0x80000ad0]:KSLRA16_U t6, t5, t4<br> [0x80000ad4]:csrrs t5, vxsat, zero<br> [0x80000ad8]:sw t6, 464(sp)<br>    |
|  86|[0x800024c0]<br>0x00000000|- rs2_val == 16<br>                                                                                                                                                         |[0x80000aec]:KSLRA16_U t6, t5, t4<br> [0x80000af0]:csrrs t5, vxsat, zero<br> [0x80000af4]:sw t6, 472(sp)<br>    |
|  87|[0x800024c8]<br>0x00020200|- rs1_h0_val == 512<br>                                                                                                                                                     |[0x80000b08]:KSLRA16_U t6, t5, t4<br> [0x80000b0c]:csrrs t5, vxsat, zero<br> [0x80000b10]:sw t6, 480(sp)<br>    |
|  88|[0x800024d0]<br>0xFFB00030|- rs2_val == 4<br>                                                                                                                                                          |[0x80000b24]:KSLRA16_U t6, t5, t4<br> [0x80000b28]:csrrs t5, vxsat, zero<br> [0x80000b2c]:sw t6, 488(sp)<br>    |
|  89|[0x800024e8]<br>0x000A0002|- rs2_val == -1073741825<br>                                                                                                                                                |[0x80000b84]:KSLRA16_U t6, t5, t4<br> [0x80000b88]:csrrs t5, vxsat, zero<br> [0x80000b8c]:sw t6, 512(sp)<br>    |
|  90|[0x800024f0]<br>0xFC000400|- rs1_h0_val == 2048<br>                                                                                                                                                    |[0x80000ba4]:KSLRA16_U t6, t5, t4<br> [0x80000ba8]:csrrs t5, vxsat, zero<br> [0x80000bac]:sw t6, 520(sp)<br>    |
