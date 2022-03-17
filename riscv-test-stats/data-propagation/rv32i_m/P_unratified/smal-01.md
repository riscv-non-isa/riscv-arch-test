
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800007d0')]      |
| SIG_REGION                | [('0x80002210', '0x800023f0', '120 words')]      |
| COV_LABELS                | smal      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smal-01.S    |
| Total Number of coverpoints| 150     |
| Total Coverpoints Hit     | 144      |
| Total Signature Updates   | 120      |
| STAT1                     | 57      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 60     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000520]:SMAL t5, t3, t6
      [0x80000524]:sw t5, 80(ra)
 -- Signature Address: 0x80002330 Data: 0x1000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smal
      - rs1 : x28
      - rs2 : x31
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -33
      - rs2_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e0]:SMAL t5, t3, t6
      [0x800005e4]:sw t5, 136(ra)
 -- Signature Address: 0x80002368 Data: 0x1000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smal
      - rs1 : x28
      - rs2 : x31
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == 0
      - rs2_h0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007a0]:SMAL t5, t3, t6
      [0x800007a4]:sw t5, 256(ra)
 -- Signature Address: 0x800023e0 Data: 0x1000FFFF
 -- Redundant Coverpoints hit by the op
      - opcode : smal
      - rs1 : x28
      - rs2 : x31
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h1_val == -21846






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : smal', 'rs1 : x18', 'rs2 : x18', 'rd : x18', 'rs1 == rs2 == rd', 'rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80000110]:SMAL s2, s2, s2
	-[0x80000114]:sw s2, 0(ra)
Current Store : [0x80000118] : sw s3, 4(ra) -- Store: [0x80002214]:0x80000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x14', 'rd : x22', 'rs1 == rs2 != rd', 'rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x8000012c]:SMAL s6, a4, a4
	-[0x80000130]:sw s6, 8(ra)
Current Store : [0x80000134] : sw s7, 12(ra) -- Store: [0x8000221c]:0x00000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x13', 'rd : x24', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x80000148]:SMAL s8, s6, a3
	-[0x8000014c]:sw s8, 16(ra)
Current Store : [0x80000150] : sw s9, 20(ra) -- Store: [0x80002224]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x26', 'rd : x26', 'rs2 == rd != rs1', 'rs2_h1_val == 32767', 'rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80000164]:SMAL s10, fp, s10
	-[0x80000168]:sw s10, 24(ra)
Current Store : [0x8000016c] : sw s11, 28(ra) -- Store: [0x8000222c]:0xFFFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x31', 'rd : x10', 'rs1 == rd != rs2', 'rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x80000184]:SMAL a0, a0, t6
	-[0x80000188]:sw a0, 32(ra)
Current Store : [0x8000018c] : sw a1, 36(ra) -- Store: [0x80002234]:0x000007FF




Last Coverpoint : ['rs1 : x24', 'rs2 : x10', 'rd : x30', 'rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x800001a4]:SMAL t5, s8, a0
	-[0x800001a8]:sw t5, 40(ra)
Current Store : [0x800001ac] : sw t6, 44(ra) -- Store: [0x8000223c]:0xFFFFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x29', 'rd : x14', 'rs2_h1_val == -4097', 'rs2_h0_val == -32768']
Last Code Sequence : 
	-[0x800001bc]:SMAL a4, s10, t4
	-[0x800001c0]:sw a4, 48(ra)
Current Store : [0x800001c4] : sw a5, 52(ra) -- Store: [0x80002244]:0x00200000




Last Coverpoint : ['rs1 : x16', 'rs2 : x19', 'rd : x8', 'rs2_h1_val == -2049', 'rs2_h0_val == -257']
Last Code Sequence : 
	-[0x800001d8]:SMAL fp, a6, s3
	-[0x800001dc]:sw fp, 56(ra)
Current Store : [0x800001e0] : sw s1, 60(ra) -- Store: [0x8000224c]:0x00000008




Last Coverpoint : ['rs1 : x20', 'rs2 : x7', 'rd : x6', 'rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x800001f0]:SMAL t1, s4, t2
	-[0x800001f4]:sw t1, 64(ra)
Current Store : [0x800001f8] : sw t2, 68(ra) -- Store: [0x80002254]:0xFFFFFFFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x27', 'rd : x2', 'rs2_h1_val == -513', 'rs2_h0_val == -9']
Last Code Sequence : 
	-[0x8000020c]:SMAL sp, a2, s11
	-[0x80000210]:sw sp, 72(ra)
Current Store : [0x80000214] : sw gp, 76(ra) -- Store: [0x8000225c]:0x00000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x9', 'rd : x4', 'rs2_h1_val == -257']
Last Code Sequence : 
	-[0x80000234]:SMAL tp, sp, s1
	-[0x80000238]:sw tp, 0(a4)
Current Store : [0x8000023c] : sw t0, 4(a4) -- Store: [0x80002264]:0xFFFFFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x11', 'rd : x20', 'rs2_h1_val == -129', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x8000024c]:SMAL s4, t3, a1
	-[0x80000250]:sw s4, 8(a4)
Current Store : [0x80000254] : sw s5, 12(a4) -- Store: [0x8000226c]:0x0000003F




Last Coverpoint : ['rs1 : x6', 'rs2 : x20', 'rd : x28', 'rs2_h1_val == -65']
Last Code Sequence : 
	-[0x80000268]:SMAL t3, t1, s4
	-[0x8000026c]:sw t3, 16(a4)
Current Store : [0x80000270] : sw t4, 20(a4) -- Store: [0x80002274]:0xFFFFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x21', 'rd : x16', 'rs2_h1_val == -33', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80000288]:SMAL a6, tp, s5
	-[0x8000028c]:sw a6, 24(a4)
Current Store : [0x80000290] : sw a7, 28(a4) -- Store: [0x8000227c]:0xBFFFFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x8', 'rd : x12', 'rs2_h1_val == -17', 'rs2_h0_val == -17']
Last Code Sequence : 
	-[0x800002a4]:SMAL a2, t5, fp
	-[0x800002a8]:sw a2, 32(a4)
Current Store : [0x800002ac] : sw a3, 36(a4) -- Store: [0x80002284]:0xFFFFFFFC




Last Coverpoint : ['rs2 : x3', 'rs2_h1_val == -9']
Last Code Sequence : 
	-[0x800002c4]:SMAL s2, s10, gp
	-[0x800002c8]:sw s2, 40(a4)
Current Store : [0x800002cc] : sw s3, 44(a4) -- Store: [0x8000228c]:0xF7FFFFFF




Last Coverpoint : ['rs2 : x1', 'rs2_h1_val == -5', 'rs2_h0_val == -1']
Last Code Sequence : 
	-[0x800002e0]:SMAL tp, a0, ra
	-[0x800002e4]:sw tp, 48(a4)
Current Store : [0x800002e8] : sw t0, 52(a4) -- Store: [0x80002294]:0xFFFFFFFF




Last Coverpoint : ['rs2 : x0', 'rs2_h1_val == 0', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000304]:SMAL a6, a0, zero
	-[0x80000308]:sw a6, 0(ra)
Current Store : [0x8000030c] : sw a7, 4(ra) -- Store: [0x8000229c]:0x00000000




Last Coverpoint : ['rs2 : x6', 'rs2_h1_val == -2', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80000320]:SMAL sp, t5, t1
	-[0x80000324]:sw sp, 8(ra)
Current Store : [0x80000328] : sw gp, 12(ra) -- Store: [0x800022a4]:0x00100000




Last Coverpoint : ['rs2 : x23', 'rs2_h1_val == -32768', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x80000340]:SMAL fp, a4, s7
	-[0x80000344]:sw fp, 16(ra)
Current Store : [0x80000348] : sw s1, 20(ra) -- Store: [0x800022ac]:0xFFFFEFFF




Last Coverpoint : ['rs2 : x25', 'rs2_h1_val == 16384', 'rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x8000035c]:SMAL tp, a4, s9
	-[0x80000360]:sw tp, 24(ra)
Current Store : [0x80000364] : sw t0, 28(ra) -- Store: [0x800022b4]:0xFFFFFFFF




Last Coverpoint : ['rs2 : x2', 'rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x80000378]:SMAL fp, s10, sp
	-[0x8000037c]:sw fp, 32(ra)
Current Store : [0x80000380] : sw s1, 36(ra) -- Store: [0x800022bc]:0xFFFFFFFF




Last Coverpoint : ['rs2 : x30', 'rs2_h1_val == 4096']
Last Code Sequence : 
	-[0x80000394]:SMAL sp, a0, t5
	-[0x80000398]:sw sp, 40(ra)
Current Store : [0x8000039c] : sw gp, 44(ra) -- Store: [0x800022c4]:0x0003FFFF




Last Coverpoint : ['rs2 : x28', 'rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x800003b0]:SMAL s10, fp, t3
	-[0x800003b4]:sw s10, 48(ra)
Current Store : [0x800003b8] : sw s11, 52(ra) -- Store: [0x800022cc]:0x00000080




Last Coverpoint : ['rs2 : x17', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x800003c8]:SMAL s10, t3, a7
	-[0x800003cc]:sw s10, 56(ra)
Current Store : [0x800003d0] : sw s11, 60(ra) -- Store: [0x800022d4]:0x00000000




Last Coverpoint : ['rs2 : x12', 'rs2_h1_val == 512']
Last Code Sequence : 
	-[0x800003e0]:SMAL s4, t1, a2
	-[0x800003e4]:sw s4, 64(ra)
Current Store : [0x800003e8] : sw s5, 68(ra) -- Store: [0x800022dc]:0x0FFFFFFF




Last Coverpoint : ['rs2 : x24', 'rs2_h1_val == 256', 'rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80000408]:SMAL t5, fp, s8
	-[0x8000040c]:sw t5, 0(ra)
Current Store : [0x80000410] : sw t6, 4(ra) -- Store: [0x800022e4]:0xFFF80000




Last Coverpoint : ['rs2 : x5', 'rs2_h1_val == 128', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x80000424]:SMAL s2, tp, t0
	-[0x80000428]:sw s2, 8(ra)
Current Store : [0x8000042c] : sw s3, 12(ra) -- Store: [0x800022ec]:0x00800008




Last Coverpoint : ['rs2 : x16', 'rs2_h1_val == 64']
Last Code Sequence : 
	-[0x80000440]:SMAL a4, s4, a6
	-[0x80000444]:sw a4, 16(ra)
Current Store : [0x80000448] : sw a5, 20(ra) -- Store: [0x800022f4]:0xFFFFFFC0




Last Coverpoint : ['rs2 : x22', 'rs2_h1_val == 32', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80000458]:SMAL t5, s10, s6
	-[0x8000045c]:sw t5, 24(ra)
Current Store : [0x80000460] : sw t6, 28(ra) -- Store: [0x800022fc]:0x00000000




Last Coverpoint : ['rs2 : x15', 'rs2_h1_val == -1', 'rs2_h0_val == 64']
Last Code Sequence : 
	-[0x80000474]:SMAL s10, a2, a5
	-[0x80000478]:sw s10, 32(ra)
Current Store : [0x8000047c] : sw s11, 36(ra) -- Store: [0x80002304]:0x00000000




Last Coverpoint : ['rs2 : x4', 'rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80000494]:SMAL a4, s4, tp
	-[0x80000498]:sw a4, 40(ra)
Current Store : [0x8000049c] : sw a5, 44(ra) -- Store: [0x8000230c]:0xF0000000




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800004b0]:SMAL t5, t3, t6
	-[0x800004b4]:sw t5, 48(ra)
Current Store : [0x800004b8] : sw t6, 52(ra) -- Store: [0x80002314]:0x0000FFFF




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800004cc]:SMAL t5, t3, t6
	-[0x800004d0]:sw t5, 56(ra)
Current Store : [0x800004d4] : sw t6, 60(ra) -- Store: [0x8000231c]:0x0000007F




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x800004ec]:SMAL t5, t3, t6
	-[0x800004f0]:sw t5, 64(ra)
Current Store : [0x800004f4] : sw t6, 68(ra) -- Store: [0x80002324]:0xFFFFFFFF




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80000508]:SMAL t5, t3, t6
	-[0x8000050c]:sw t5, 72(ra)
Current Store : [0x80000510] : sw t6, 76(ra) -- Store: [0x8000232c]:0xFFFFFDFF




Last Coverpoint : ['opcode : smal', 'rs1 : x28', 'rs2 : x31', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == -33', 'rs2_h0_val == 0']
Last Code Sequence : 
	-[0x80000520]:SMAL t5, t3, t6
	-[0x80000524]:sw t5, 80(ra)
Current Store : [0x80000528] : sw t6, 84(ra) -- Store: [0x80002334]:0x00000000




Last Coverpoint : ['rs1_val == (2**63-1)']
Last Code Sequence : 
	-[0x80000540]:SMAL t5, t3, t6
	-[0x80000544]:sw t5, 88(ra)
Current Store : [0x80000548] : sw t6, 92(ra) -- Store: [0x8000233c]:0x80000000




Last Coverpoint : ['rs1_val == 0']
Last Code Sequence : 
	-[0x8000055c]:SMAL t5, t3, t6
	-[0x80000560]:sw t5, 96(ra)
Current Store : [0x80000564] : sw t6, 100(ra) -- Store: [0x80002344]:0xFFFFFFFF




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_val == 1']
Last Code Sequence : 
	-[0x80000578]:SMAL t5, t3, t6
	-[0x8000057c]:sw t5, 104(ra)
Current Store : [0x80000580] : sw t6, 108(ra) -- Store: [0x8000234c]:0xFFFFFFFF




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80000590]:SMAL t5, t3, t6
	-[0x80000594]:sw t5, 112(ra)
Current Store : [0x80000598] : sw t6, 116(ra) -- Store: [0x80002354]:0x00000000




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x800005a8]:SMAL t5, t3, t6
	-[0x800005ac]:sw t5, 120(ra)
Current Store : [0x800005b0] : sw t6, 124(ra) -- Store: [0x8000235c]:0x00800000




Last Coverpoint : ['rs2_h1_val == 1', 'rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800005c4]:SMAL t5, t3, t6
	-[0x800005c8]:sw t5, 128(ra)
Current Store : [0x800005cc] : sw t6, 132(ra) -- Store: [0x80002364]:0x000000FF




Last Coverpoint : ['opcode : smal', 'rs1 : x28', 'rs2 : x31', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == 0', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x800005e0]:SMAL t5, t3, t6
	-[0x800005e4]:sw t5, 136(ra)
Current Store : [0x800005e8] : sw t6, 140(ra) -- Store: [0x8000236c]:0xFFBFFFFF




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x80000600]:SMAL t5, t3, t6
	-[0x80000604]:sw t5, 144(ra)
Current Store : [0x80000608] : sw t6, 148(ra) -- Store: [0x80002374]:0xFFFFFFFF




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80000620]:SMAL t5, t3, t6
	-[0x80000624]:sw t5, 152(ra)
Current Store : [0x80000628] : sw t6, 156(ra) -- Store: [0x8000237c]:0xFFFFFFFF




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x8000063c]:SMAL t5, t3, t6
	-[0x80000640]:sw t5, 160(ra)
Current Store : [0x80000644] : sw t6, 164(ra) -- Store: [0x80002384]:0x003FFFFF




Last Coverpoint : ['rs2_h0_val == -4097']
Last Code Sequence : 
	-[0x80000658]:SMAL t5, t3, t6
	-[0x8000065c]:sw t5, 168(ra)
Current Store : [0x80000660] : sw t6, 172(ra) -- Store: [0x8000238c]:0xFFFFFFFD




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80000674]:SMAL t5, t3, t6
	-[0x80000678]:sw t5, 176(ra)
Current Store : [0x8000067c] : sw t6, 180(ra) -- Store: [0x80002394]:0x00000000




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80000690]:SMAL t5, t3, t6
	-[0x80000694]:sw t5, 184(ra)
Current Store : [0x80000698] : sw t6, 188(ra) -- Store: [0x8000239c]:0x00003FFF




Last Coverpoint : ['rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800006b0]:SMAL t5, t3, t6
	-[0x800006b4]:sw t5, 192(ra)
Current Store : [0x800006b8] : sw t6, 196(ra) -- Store: [0x800023a4]:0xFFFFFFFF




Last Coverpoint : ['rs2_h0_val == -3']
Last Code Sequence : 
	-[0x800006d0]:SMAL t5, t3, t6
	-[0x800006d4]:sw t5, 200(ra)
Current Store : [0x800006d8] : sw t6, 204(ra) -- Store: [0x800023ac]:0xFFFFFFFF




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800006f0]:SMAL t5, t3, t6
	-[0x800006f4]:sw t5, 208(ra)
Current Store : [0x800006f8] : sw t6, 212(ra) -- Store: [0x800023b4]:0xFFFFFFFF




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80000710]:SMAL t5, t3, t6
	-[0x80000714]:sw t5, 216(ra)
Current Store : [0x80000718] : sw t6, 220(ra) -- Store: [0x800023bc]:0xE0000000




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x8000072c]:SMAL t5, t3, t6
	-[0x80000730]:sw t5, 224(ra)
Current Store : [0x80000734] : sw t6, 228(ra) -- Store: [0x800023c4]:0x000FFFFF




Last Coverpoint : ['rs2_h0_val == 256']
Last Code Sequence : 
	-[0x80000748]:SMAL t5, t3, t6
	-[0x8000074c]:sw t5, 232(ra)
Current Store : [0x80000750] : sw t6, 236(ra) -- Store: [0x800023cc]:0xFFFFFE00




Last Coverpoint : ['rs2_h0_val == -129']
Last Code Sequence : 
	-[0x80000768]:SMAL t5, t3, t6
	-[0x8000076c]:sw t5, 240(ra)
Current Store : [0x80000770] : sw t6, 244(ra) -- Store: [0x800023d4]:0xFC000000




Last Coverpoint : ['rs1_val == (-2**63)']
Last Code Sequence : 
	-[0x80000784]:SMAL t5, t3, t6
	-[0x80000788]:sw t5, 248(ra)
Current Store : [0x8000078c] : sw t6, 252(ra) -- Store: [0x800023dc]:0x7FFFFFFF




Last Coverpoint : ['opcode : smal', 'rs1 : x28', 'rs2 : x31', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x800007a0]:SMAL t5, t3, t6
	-[0x800007a4]:sw t5, 256(ra)
Current Store : [0x800007a8] : sw t6, 260(ra) -- Store: [0x800023e4]:0x00000000




Last Coverpoint : ['rs2_h1_val == -3', 'rs2_h0_val == -65']
Last Code Sequence : 
	-[0x800007bc]:SMAL t5, t3, t6
	-[0x800007c0]:sw t5, 264(ra)
Current Store : [0x800007c4] : sw t6, 268(ra) -- Store: [0x800023ec]:0x00000000





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

|s.no|        signature         |                                                      coverpoints                                                       |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0008FFF6|- opcode : smal<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs2_h1_val == 8<br>         |[0x80000110]:SMAL s2, s2, s2<br> [0x80000114]:sw s2, 0(ra)<br>     |
|   2|[0x80002218]<br>0x6DF56FF7|- rs1 : x14<br> - rs2 : x14<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -21846<br>                        |[0x8000012c]:SMAL s6, a4, a4<br> [0x80000130]:sw s6, 8(ra)<br>     |
|   3|[0x80002220]<br>0xDB7D5BFD|- rs1 : x22<br> - rs2 : x13<br> - rd : x24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h1_val == 21845<br>  |[0x80000148]:SMAL s8, s6, a3<br> [0x8000014c]:sw s8, 16(ra)<br>    |
|   4|[0x80002228]<br>0x7FFF1000|- rs1 : x8<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 4096<br> |[0x80000164]:SMAL s10, fp, s10<br> [0x80000168]:sw s10, 24(ra)<br> |
|   5|[0x80002230]<br>0x00000000|- rs1 : x10<br> - rs2 : x31<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs2_h1_val == -16385<br>                        |[0x80000184]:SMAL a0, a0, t6<br> [0x80000188]:sw a0, 32(ra)<br>    |
|   6|[0x80002238]<br>0xF76DF56F|- rs1 : x24<br> - rs2 : x10<br> - rd : x30<br> - rs2_h1_val == -8193<br>                                                |[0x800001a4]:SMAL t5, s8, a0<br> [0x800001a8]:sw t5, 40(ra)<br>    |
|   7|[0x80002240]<br>0xAAAAFFF9|- rs1 : x26<br> - rs2 : x29<br> - rd : x14<br> - rs2_h1_val == -4097<br> - rs2_h0_val == -32768<br>                     |[0x800001bc]:SMAL a4, s10, t4<br> [0x800001c0]:sw a4, 48(ra)<br>   |
|   8|[0x80002248]<br>0x7FFFFFFF|- rs1 : x16<br> - rs2 : x19<br> - rd : x8<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -257<br>                        |[0x800001d8]:SMAL fp, a6, s3<br> [0x800001dc]:sw fp, 56(ra)<br>    |
|   9|[0x80002250]<br>0x80002000|- rs1 : x20<br> - rs2 : x7<br> - rd : x6<br> - rs2_h1_val == -1025<br>                                                  |[0x800001f0]:SMAL t1, s4, t2<br> [0x800001f4]:sw t1, 64(ra)<br>    |
|  10|[0x80002258]<br>0xFF76DF56|- rs1 : x12<br> - rs2 : x27<br> - rd : x2<br> - rs2_h1_val == -513<br> - rs2_h0_val == -9<br>                           |[0x8000020c]:SMAL sp, a2, s11<br> [0x80000210]:sw sp, 72(ra)<br>   |
|  11|[0x80002260]<br>0xBFDDB7D5|- rs1 : x2<br> - rs2 : x9<br> - rd : x4<br> - rs2_h1_val == -257<br>                                                    |[0x80000234]:SMAL tp, sp, s1<br> [0x80000238]:sw tp, 0(a4)<br>     |
|  12|[0x80002268]<br>0x00010000|- rs1 : x28<br> - rs2 : x11<br> - rd : x20<br> - rs2_h1_val == -129<br> - rs2_h0_val == 8192<br>                        |[0x8000024c]:SMAL s4, t3, a1<br> [0x80000250]:sw s4, 8(a4)<br>     |
|  13|[0x80002270]<br>0x00000000|- rs1 : x6<br> - rs2 : x20<br> - rd : x28<br> - rs2_h1_val == -65<br>                                                   |[0x80000268]:SMAL t3, t1, s4<br> [0x8000026c]:sw t3, 16(a4)<br>    |
|  14|[0x80002278]<br>0x00000000|- rs1 : x4<br> - rs2 : x21<br> - rd : x16<br> - rs2_h1_val == -33<br> - rs2_h0_val == 128<br>                           |[0x80000288]:SMAL a6, tp, s5<br> [0x8000028c]:sw a6, 24(a4)<br>    |
|  15|[0x80002280]<br>0x40000000|- rs1 : x30<br> - rs2 : x8<br> - rd : x12<br> - rs2_h1_val == -17<br> - rs2_h0_val == -17<br>                           |[0x800002a4]:SMAL a2, t5, fp<br> [0x800002a8]:sw a2, 32(a4)<br>    |
|  16|[0x80002288]<br>0x0008FFF6|- rs2 : x3<br> - rs2_h1_val == -9<br>                                                                                   |[0x800002c4]:SMAL s2, s10, gp<br> [0x800002c8]:sw s2, 40(a4)<br>   |
|  17|[0x80002290]<br>0xFFFFFFFF|- rs2 : x1<br> - rs2_h1_val == -5<br> - rs2_h0_val == -1<br>                                                            |[0x800002e0]:SMAL tp, a0, ra<br> [0x800002e4]:sw tp, 48(a4)<br>    |
|  18|[0x80002298]<br>0x00000000|- rs2 : x0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br>                                                              |[0x80000304]:SMAL a6, a0, zero<br> [0x80000308]:sw a6, 0(ra)<br>   |
|  19|[0x800022a0]<br>0xFFFDFFFF|- rs2 : x6<br> - rs2_h1_val == -2<br> - rs2_h0_val == -5<br>                                                            |[0x80000320]:SMAL sp, t5, t1<br> [0x80000324]:sw sp, 8(ra)<br>     |
|  20|[0x800022a8]<br>0xFFEFFFEF|- rs2 : x23<br> - rs2_h1_val == -32768<br> - rs2_h0_val == 1024<br>                                                     |[0x80000340]:SMAL fp, a4, s7<br> [0x80000344]:sw fp, 16(ra)<br>    |
|  21|[0x800022b0]<br>0xFFFFFFFF|- rs2 : x25<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -8193<br>                                                     |[0x8000035c]:SMAL tp, a4, s9<br> [0x80000360]:sw tp, 24(ra)<br>    |
|  22|[0x800022b8]<br>0xFFEFFFEF|- rs2 : x2<br> - rs2_h1_val == 8192<br>                                                                                 |[0x80000378]:SMAL fp, s10, sp<br> [0x8000037c]:sw fp, 32(ra)<br>   |
|  23|[0x800022c0]<br>0x2000FEFF|- rs2 : x30<br> - rs2_h1_val == 4096<br>                                                                                |[0x80000394]:SMAL sp, a0, t5<br> [0x80000398]:sw sp, 40(ra)<br>    |
|  24|[0x800022c8]<br>0xFFFFFFF6|- rs2 : x28<br> - rs2_h1_val == 2048<br>                                                                                |[0x800003b0]:SMAL s10, fp, t3<br> [0x800003b4]:sw s10, 48(ra)<br>  |
|  25|[0x800022d0]<br>0xFFFFFFF6|- rs2 : x17<br> - rs2_h1_val == 1024<br>                                                                                |[0x800003c8]:SMAL s10, t3, a7<br> [0x800003cc]:sw s10, 56(ra)<br>  |
|  26|[0x800022d8]<br>0xFFBF1000|- rs2 : x12<br> - rs2_h1_val == 512<br>                                                                                 |[0x800003e0]:SMAL s4, t1, a2<br> [0x800003e4]:sw s4, 64(ra)<br>    |
|  27|[0x800022e0]<br>0x1000FFFF|- rs2 : x24<br> - rs2_h1_val == 256<br> - rs2_h0_val == 21845<br>                                                       |[0x80000408]:SMAL t5, fp, s8<br> [0x8000040c]:sw t5, 0(ra)<br>     |
|  28|[0x800022e8]<br>0x0008FFF6|- rs2 : x5<br> - rs2_h1_val == 128<br> - rs2_h0_val == 8<br>                                                            |[0x80000424]:SMAL s2, tp, t0<br> [0x80000428]:sw s2, 8(ra)<br>     |
|  29|[0x800022f0]<br>0x00000008|- rs2 : x16<br> - rs2_h1_val == 64<br>                                                                                  |[0x80000440]:SMAL a4, s4, a6<br> [0x80000444]:sw a4, 16(ra)<br>    |
|  30|[0x800022f8]<br>0x1000FFFF|- rs2 : x22<br> - rs2_h1_val == 32<br> - rs2_h0_val == 16384<br>                                                        |[0x80000458]:SMAL t5, s10, s6<br> [0x8000045c]:sw t5, 24(ra)<br>   |
|  31|[0x80002300]<br>0xFFFFFBFF|- rs2 : x15<br> - rs2_h1_val == -1<br> - rs2_h0_val == 64<br>                                                           |[0x80000474]:SMAL s10, a2, a5<br> [0x80000478]:sw s10, 32(ra)<br>  |
|  32|[0x80002308]<br>0x00000008|- rs2 : x4<br> - rs2_h0_val == 32<br>                                                                                   |[0x80000494]:SMAL a4, s4, tp<br> [0x80000498]:sw a4, 40(ra)<br>    |
|  33|[0x80002310]<br>0x1000FFFF|- rs2_h0_val == 16<br>                                                                                                  |[0x800004b0]:SMAL t5, t3, t6<br> [0x800004b4]:sw t5, 48(ra)<br>    |
|  34|[0x80002318]<br>0x1000FFFF|- rs2_h0_val == 4<br>                                                                                                   |[0x800004cc]:SMAL t5, t3, t6<br> [0x800004d0]:sw t5, 56(ra)<br>    |
|  35|[0x80002320]<br>0x1000FFFF|- rs2_h0_val == 2<br>                                                                                                   |[0x800004ec]:SMAL t5, t3, t6<br> [0x800004f0]:sw t5, 64(ra)<br>    |
|  36|[0x80002328]<br>0x1000FFFF|- rs2_h0_val == 1<br>                                                                                                   |[0x80000508]:SMAL t5, t3, t6<br> [0x8000050c]:sw t5, 72(ra)<br>    |
|  37|[0x80002338]<br>0x1000FFFF|- rs1_val == (2**63-1)<br>                                                                                              |[0x80000540]:SMAL t5, t3, t6<br> [0x80000544]:sw t5, 88(ra)<br>    |
|  38|[0x80002340]<br>0x1000FFFF|- rs1_val == 0<br>                                                                                                      |[0x8000055c]:SMAL t5, t3, t6<br> [0x80000560]:sw t5, 96(ra)<br>    |
|  39|[0x80002348]<br>0x1000FFFF|- rs2_h1_val == 2<br> - rs1_val == 1<br>                                                                                |[0x80000578]:SMAL t5, t3, t6<br> [0x8000057c]:sw t5, 104(ra)<br>   |
|  40|[0x80002350]<br>0x1000FFFF|- rs2_h1_val == 16<br>                                                                                                  |[0x80000590]:SMAL t5, t3, t6<br> [0x80000594]:sw t5, 112(ra)<br>   |
|  41|[0x80002358]<br>0x1000FFFF|- rs2_h1_val == 4<br>                                                                                                   |[0x800005a8]:SMAL t5, t3, t6<br> [0x800005ac]:sw t5, 120(ra)<br>   |
|  42|[0x80002360]<br>0x1000FFFF|- rs2_h1_val == 1<br> - rs2_h0_val == -2049<br>                                                                         |[0x800005c4]:SMAL t5, t3, t6<br> [0x800005c8]:sw t5, 128(ra)<br>   |
|  43|[0x80002370]<br>0x1000FFFF|- rs2_h0_val == -21846<br>                                                                                              |[0x80000600]:SMAL t5, t3, t6<br> [0x80000604]:sw t5, 144(ra)<br>   |
|  44|[0x80002378]<br>0x1000FFFF|- rs2_h0_val == 32767<br>                                                                                               |[0x80000620]:SMAL t5, t3, t6<br> [0x80000624]:sw t5, 152(ra)<br>   |
|  45|[0x80002380]<br>0x1000FFFF|- rs2_h0_val == -16385<br>                                                                                              |[0x8000063c]:SMAL t5, t3, t6<br> [0x80000640]:sw t5, 160(ra)<br>   |
|  46|[0x80002388]<br>0x1000FFFF|- rs2_h0_val == -4097<br>                                                                                               |[0x80000658]:SMAL t5, t3, t6<br> [0x8000065c]:sw t5, 168(ra)<br>   |
|  47|[0x80002390]<br>0x1000FFFF|- rs2_h0_val == -1025<br>                                                                                               |[0x80000674]:SMAL t5, t3, t6<br> [0x80000678]:sw t5, 176(ra)<br>   |
|  48|[0x80002398]<br>0x1000FFFF|- rs2_h0_val == -513<br>                                                                                                |[0x80000690]:SMAL t5, t3, t6<br> [0x80000694]:sw t5, 184(ra)<br>   |
|  49|[0x800023a0]<br>0x1000FFFF|- rs2_h0_val == -33<br>                                                                                                 |[0x800006b0]:SMAL t5, t3, t6<br> [0x800006b4]:sw t5, 192(ra)<br>   |
|  50|[0x800023a8]<br>0x1000FFFF|- rs2_h0_val == -3<br>                                                                                                  |[0x800006d0]:SMAL t5, t3, t6<br> [0x800006d4]:sw t5, 200(ra)<br>   |
|  51|[0x800023b0]<br>0x1000FFFF|- rs2_h0_val == -2<br>                                                                                                  |[0x800006f0]:SMAL t5, t3, t6<br> [0x800006f4]:sw t5, 208(ra)<br>   |
|  52|[0x800023b8]<br>0x1000FFFF|- rs2_h0_val == 2048<br>                                                                                                |[0x80000710]:SMAL t5, t3, t6<br> [0x80000714]:sw t5, 216(ra)<br>   |
|  53|[0x800023c0]<br>0x1000FFFF|- rs2_h0_val == 512<br>                                                                                                 |[0x8000072c]:SMAL t5, t3, t6<br> [0x80000730]:sw t5, 224(ra)<br>   |
|  54|[0x800023c8]<br>0x1000FFFF|- rs2_h0_val == 256<br>                                                                                                 |[0x80000748]:SMAL t5, t3, t6<br> [0x8000074c]:sw t5, 232(ra)<br>   |
|  55|[0x800023d0]<br>0x1000FFFF|- rs2_h0_val == -129<br>                                                                                                |[0x80000768]:SMAL t5, t3, t6<br> [0x8000076c]:sw t5, 240(ra)<br>   |
|  56|[0x800023d8]<br>0x1000FFFF|- rs1_val == (-2**63)<br>                                                                                               |[0x80000784]:SMAL t5, t3, t6<br> [0x80000788]:sw t5, 248(ra)<br>   |
|  57|[0x800023e8]<br>0x1000FFFF|- rs2_h1_val == -3<br> - rs2_h0_val == -65<br>                                                                          |[0x800007bc]:SMAL t5, t3, t6<br> [0x800007c0]:sw t5, 264(ra)<br>   |
