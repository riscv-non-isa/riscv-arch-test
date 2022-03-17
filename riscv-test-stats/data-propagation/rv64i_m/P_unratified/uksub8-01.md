
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800019b0')]      |
| SIG_REGION                | [('0x80003210', '0x80003740', '166 dwords')]      |
| COV_LABELS                | uksub8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/uksub8-01.S    |
| Total Number of coverpoints| 444     |
| Total Coverpoints Hit     | 438      |
| Total Signature Updates   | 166      |
| STAT1                     | 82      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 83     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019a4]:UKSUB8 t6, t5, t4
      [0x800019a8]:sd t6, 784(ra)
 -- Signature Address: 0x80003730 Data: 0x007040B900000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksub8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b7_val != rs2_b7_val and rs1_b7_val > 0 and rs2_b7_val > 0
      - rs1_b6_val != rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0
      - rs1_b4_val != rs2_b4_val and rs1_b4_val > 0 and rs2_b4_val > 0
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b7_val == 2
      - rs2_b6_val == 16
      - rs2_b5_val == 0
      - rs2_b3_val == 247
      - rs2_b2_val == 127
      - rs2_b1_val == 128
      - rs2_b0_val == 247
      - rs1_b7_val == 1
      - rs1_b6_val == 128
      - rs1_b5_val == 64
      - rs1_b4_val == 191
      - rs1_b0_val == 2






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : uksub8', 'rs1 : x10', 'rs2 : x10', 'rd : x31', 'rs1 == rs2 != rd', 'rs1_b7_val == rs2_b7_val and rs1_b7_val > 0 and rs2_b7_val > 0', 'rs1_b6_val == rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0', 'rs1_b5_val == rs2_b5_val and rs1_b5_val > 0 and rs2_b5_val > 0', 'rs1_b4_val == rs2_b4_val and rs1_b4_val > 0 and rs2_b4_val > 0', 'rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b6_val == 170', 'rs2_b3_val == 32', 'rs2_b1_val == 239', 'rs1_b6_val == 170', 'rs1_b3_val == 32', 'rs1_b1_val == 239']
Last Code Sequence : 
	-[0x800003d4]:UKSUB8 t6, a0, a0
	-[0x800003d8]:sd t6, 0(tp)
Current Store : [0x800003dc] : sd a0, 8(tp) -- Store: [0x80003218]:0x06AA1103200DEF0C




Last Coverpoint : ['rs1 : x9', 'rs2 : x9', 'rd : x9', 'rs1 == rs2 == rd', 'rs2_b6_val == 16', 'rs2_b4_val == 64', 'rs2_b3_val == 127', 'rs2_b2_val == 8', 'rs1_b6_val == 16', 'rs1_b4_val == 64', 'rs1_b3_val == 127', 'rs1_b2_val == 8']
Last Code Sequence : 
	-[0x80000418]:UKSUB8 s1, s1, s1
	-[0x8000041c]:sd s1, 16(tp)
Current Store : [0x80000420] : sd s1, 24(tp) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x15', 'rd : x3', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b0_val == 0', 'rs2_b7_val == 170', 'rs2_b5_val == 85', 'rs2_b3_val == 170', 'rs2_b2_val == 85', 'rs2_b1_val == 85', 'rs1_b7_val == 0', 'rs1_b6_val == 0', 'rs1_b5_val == 0', 'rs1_b4_val == 0', 'rs1_b3_val == 0', 'rs1_b2_val == 0', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x80000464]:UKSUB8 gp, zero, a5
	-[0x80000468]:sd gp, 32(tp)
Current Store : [0x8000046c] : sd zero, 40(tp) -- Store: [0x80003238]:0x0000000000000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x20', 'rd : x28', 'rs1 == rd != rs2', 'rs1_b7_val != rs2_b7_val and rs1_b7_val > 0 and rs2_b7_val > 0', 'rs1_b6_val != rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b6_val == 239', 'rs2_b5_val == 239', 'rs1_b6_val == 223', 'rs1_b5_val == 239', 'rs1_b3_val == 85', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x800004b0]:UKSUB8 t3, t3, s4
	-[0x800004b4]:sd t3, 48(tp)
Current Store : [0x800004b8] : sd t3, 56(tp) -- Store: [0x80003248]:0x0800000049070246




Last Coverpoint : ['rs1 : x29', 'rs2 : x13', 'rd : x13', 'rs2 == rd != rs1', 'rs1_b5_val != rs2_b5_val and rs1_b5_val > 0 and rs2_b5_val > 0', 'rs2_b7_val == 0', 'rs2_b6_val == 4', 'rs2_b5_val == 8', 'rs1_b6_val == 191', 'rs1_b5_val == 223', 'rs1_b2_val == 253']
Last Code Sequence : 
	-[0x800004f4]:UKSUB8 a3, t4, a3
	-[0x800004f8]:sd a3, 64(tp)
Current Store : [0x800004fc] : sd t4, 72(tp) -- Store: [0x80003258]:0x0CBFDF110DFD0C12




Last Coverpoint : ['rs1 : x3', 'rs2 : x11', 'rd : x15', 'rs2_b7_val == 247', 'rs2_b5_val == 251', 'rs2_b4_val == 4', 'rs2_b1_val == 127', 'rs1_b5_val == 128', 'rs1_b4_val == 4', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x80000540]:UKSUB8 a5, gp, a1
	-[0x80000544]:sd a5, 80(tp)
Current Store : [0x80000548] : sd gp, 88(tp) -- Store: [0x80003268]:0x130F800411050508




Last Coverpoint : ['rs1 : x23', 'rs2 : x30', 'rd : x25', 'rs1_b4_val != rs2_b4_val and rs1_b4_val > 0 and rs2_b4_val > 0', 'rs2_b7_val == 253', 'rs2_b6_val == 32', 'rs2_b4_val == 170', 'rs2_b2_val == 4', 'rs2_b0_val == 253', 'rs1_b6_val == 4', 'rs1_b2_val == 4']
Last Code Sequence : 
	-[0x8000058c]:UKSUB8 s9, s7, t5
	-[0x80000590]:sd s9, 96(tp)
Current Store : [0x80000594] : sd s7, 104(tp) -- Store: [0x80003278]:0x0A04071112041313




Last Coverpoint : ['rs1 : x7', 'rs2 : x5', 'rd : x30', 'rs2_b5_val == 254', 'rs2_b4_val == 253', 'rs1_b7_val == 253', 'rs1_b6_val == 239', 'rs1_b4_val == 127']
Last Code Sequence : 
	-[0x800005d8]:UKSUB8 t5, t2, t0
	-[0x800005dc]:sd t5, 112(tp)
Current Store : [0x800005e0] : sd t2, 120(tp) -- Store: [0x80003288]:0xFDEF007F7F09090D




Last Coverpoint : ['rs1 : x21', 'rs2 : x0', 'rd : x20', 'rs2_b6_val == 0', 'rs2_b5_val == 0', 'rs2_b4_val == 0', 'rs2_b3_val == 0', 'rs2_b2_val == 0', 'rs2_b1_val == 0', 'rs2_b0_val == 0', 'rs1_b3_val == 8', 'rs1_b2_val == 247', 'rs1_b1_val == 247']
Last Code Sequence : 
	-[0x80000624]:UKSUB8 s4, s5, zero
	-[0x80000628]:sd s4, 128(tp)
Current Store : [0x8000062c] : sd s5, 136(tp) -- Store: [0x80003298]:0x130FDF0308F7F70F




Last Coverpoint : ['rs1 : x8', 'rs2 : x3', 'rd : x24', 'rs2_b7_val == 85', 'rs2_b3_val == 251', 'rs2_b1_val == 64', 'rs1_b7_val == 191', 'rs1_b6_val == 247', 'rs1_b3_val == 128']
Last Code Sequence : 
	-[0x80000670]:UKSUB8 s8, fp, gp
	-[0x80000674]:sd s8, 144(tp)
Current Store : [0x80000678] : sd fp, 152(tp) -- Store: [0x800032a8]:0xBFF7120980070B55




Last Coverpoint : ['rs1 : x6', 'rs2 : x25', 'rd : x8', 'rs2_b7_val == 127', 'rs2_b5_val == 128', 'rs2_b3_val == 191', 'rs2_b2_val == 128', 'rs1_b5_val == 191']
Last Code Sequence : 
	-[0x800006ac]:UKSUB8 fp, t1, s9
	-[0x800006b0]:sd fp, 160(tp)
Current Store : [0x800006b4] : sd t1, 168(tp) -- Store: [0x800032b8]:0x070FBF0000090B0C




Last Coverpoint : ['rs1 : x27', 'rs2 : x24', 'rd : x26', 'rs2_b7_val == 191', 'rs2_b5_val == 2', 'rs2_b4_val == 16', 'rs2_b3_val == 16', 'rs2_b2_val == 223', 'rs1_b5_val == 85', 'rs1_b4_val == 253', 'rs1_b3_val == 2', 'rs1_b2_val == 1', 'rs1_b1_val == 255', 'rs1_b0_val == 128']
Last Code Sequence : 
	-[0x800006f0]:UKSUB8 s10, s11, s8
	-[0x800006f4]:sd s10, 176(tp)
Current Store : [0x800006f8] : sd s11, 184(tp) -- Store: [0x800032c8]:0x00F755FD0201FF80




Last Coverpoint : ['rs1 : x13', 'rs2 : x23', 'rd : x16', 'rs2_b7_val == 223', 'rs2_b3_val == 4', 'rs2_b2_val == 255', 'rs1_b3_val == 4', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x80000730]:UKSUB8 a6, a3, s7
	-[0x80000734]:sd a6, 192(tp)
Current Store : [0x80000738] : sd a3, 200(tp) -- Store: [0x800032d8]:0x00110A0704090D20




Last Coverpoint : ['rs1 : x20', 'rs2 : x1', 'rd : x19', 'rs2_b7_val == 239', 'rs2_b6_val == 253', 'rs2_b5_val == 127', 'rs2_b4_val == 254', 'rs2_b2_val == 127', 'rs2_b1_val == 1', 'rs1_b7_val == 2', 'rs1_b1_val == 4', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x8000076c]:UKSUB8 s3, s4, ra
	-[0x80000770]:sd s3, 208(tp)
Current Store : [0x80000774] : sd s4, 216(tp) -- Store: [0x800032e8]:0x02040A0C5506047F




Last Coverpoint : ['rs1 : x18', 'rs2 : x2', 'rd : x23', 'rs2_b7_val == 251', 'rs2_b0_val == 254', 'rs1_b5_val == 247', 'rs1_b4_val == 239', 'rs1_b3_val == 223']
Last Code Sequence : 
	-[0x800007b0]:UKSUB8 s7, s2, sp
	-[0x800007b4]:sd s7, 224(tp)
Current Store : [0x800007b8] : sd s2, 232(tp) -- Store: [0x800032f8]:0x09AAF7EFDF000411




Last Coverpoint : ['rs1 : x14', 'rs2 : x7', 'rd : x22', 'rs2_b7_val == 254', 'rs2_b5_val == 170', 'rs2_b3_val == 223', 'rs2_b1_val == 4', 'rs2_b0_val == 8', 'rs1_b7_val == 4', 'rs1_b5_val == 32', 'rs1_b2_val == 16', 'rs1_b1_val == 32']
Last Code Sequence : 
	-[0x800007f4]:UKSUB8 s6, a4, t2
	-[0x800007f8]:sd s6, 240(tp)
Current Store : [0x800007fc] : sd a4, 248(tp) -- Store: [0x80003308]:0x040020045510200D




Last Coverpoint : ['rs1 : x5', 'rs2 : x26', 'rd : x12', 'rs2_b7_val == 128', 'rs2_b2_val == 64', 'rs2_b0_val == 127', 'rs1_b5_val == 170', 'rs1_b2_val == 85', 'rs1_b1_val == 127']
Last Code Sequence : 
	-[0x8000083c]:UKSUB8 a2, t0, s10
	-[0x80000840]:sd a2, 0(gp)
Current Store : [0x80000844] : sd t0, 8(gp) -- Store: [0x80003318]:0x0B06AA0A0C557F0D




Last Coverpoint : ['rs1 : x2', 'rs2 : x12', 'rd : x14', 'rs2_b7_val == 64', 'rs2_b4_val == 32', 'rs2_b3_val == 255', 'rs2_b1_val == 253', 'rs1_b4_val == 254', 'rs1_b1_val == 170', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x80000880]:UKSUB8 a4, sp, a2
	-[0x80000884]:sd a4, 16(gp)
Current Store : [0x80000888] : sd sp, 24(gp) -- Store: [0x80003328]:0x130F11FE7F0CAA02




Last Coverpoint : ['rs1 : x16', 'rs2 : x29', 'rd : x18', 'rs2_b7_val == 32', 'rs1_b7_val == 170', 'rs1_b4_val == 85']
Last Code Sequence : 
	-[0x800008cc]:UKSUB8 s2, a6, t4
	-[0x800008d0]:sd s2, 32(gp)
Current Store : [0x800008d4] : sd a6, 40(gp) -- Store: [0x80003338]:0xAA130B55030B0913




Last Coverpoint : ['rs1 : x24', 'rs2 : x17', 'rd : x6', 'rs2_b7_val == 16', 'rs1_b6_val == 2', 'rs1_b4_val == 247', 'rs1_b1_val == 64']
Last Code Sequence : 
	-[0x80000908]:UKSUB8 t1, s8, a7
	-[0x8000090c]:sd t1, 48(gp)
Current Store : [0x80000910] : sd s8, 56(gp) -- Store: [0x80003348]:0x040209F70F134006




Last Coverpoint : ['rs1 : x26', 'rs2 : x14', 'rd : x4', 'rs2_b7_val == 8', 'rs2_b0_val == 255', 'rs1_b6_val == 64', 'rs1_b5_val == 127']
Last Code Sequence : 
	-[0x8000094c]:UKSUB8 tp, s10, a4
	-[0x80000950]:sd tp, 64(gp)
Current Store : [0x80000954] : sd s10, 72(gp) -- Store: [0x80003358]:0x0F407F070E080703




Last Coverpoint : ['rs1 : x30', 'rs2 : x6', 'rd : x2', 'rs2_b7_val == 4', 'rs2_b3_val == 254', 'rs2_b2_val == 239', 'rs2_b1_val == 170', 'rs1_b7_val == 255', 'rs1_b3_val == 255', 'rs1_b0_val == 191']
Last Code Sequence : 
	-[0x80000998]:UKSUB8 sp, t5, t1
	-[0x8000099c]:sd sp, 80(gp)
Current Store : [0x800009a0] : sd t5, 88(gp) -- Store: [0x80003368]:0xFF0B0509FF030CBF




Last Coverpoint : ['rs1 : x1', 'rs2 : x4', 'rd : x0', 'rs2_b7_val == 2', 'rs2_b3_val == 247', 'rs2_b1_val == 128', 'rs2_b0_val == 247', 'rs1_b7_val == 1', 'rs1_b6_val == 128', 'rs1_b5_val == 64', 'rs1_b4_val == 191']
Last Code Sequence : 
	-[0x800009d4]:UKSUB8 zero, ra, tp
	-[0x800009d8]:sd zero, 96(gp)
Current Store : [0x800009dc] : sd ra, 104(gp) -- Store: [0x80003378]:0x018040BF03130302




Last Coverpoint : ['rs1 : x22', 'rs2 : x31', 'rd : x11', 'rs2_b7_val == 1', 'rs2_b3_val == 253', 'rs2_b1_val == 2', 'rs2_b0_val == 85', 'rs1_b3_val == 16', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x80000a10]:UKSUB8 a1, s6, t6
	-[0x80000a14]:sd a1, 112(gp)
Current Store : [0x80000a18] : sd s6, 120(gp) -- Store: [0x80003388]:0x07F7117F100B0940




Last Coverpoint : ['rs1 : x12', 'rs2 : x19', 'rd : x7', 'rs2_b7_val == 255', 'rs2_b6_val == 251', 'rs2_b5_val == 247', 'rs2_b1_val == 16', 'rs1_b5_val == 251', 'rs1_b4_val == 223', 'rs1_b2_val == 170', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x80000a4c]:UKSUB8 t2, a2, s3
	-[0x80000a50]:sd t2, 128(gp)
Current Store : [0x80000a54] : sd a2, 136(gp) -- Store: [0x80003398]:0x130FFBDF0EAA020B




Last Coverpoint : ['rs1 : x19', 'rs2 : x8', 'rd : x17', 'rs2_b6_val == 85', 'rs1_b4_val == 251', 'rs1_b0_val == 247']
Last Code Sequence : 
	-[0x80000a88]:UKSUB8 a7, s3, fp
	-[0x80000a8c]:sd a7, 144(gp)
Current Store : [0x80000a90] : sd s3, 152(gp) -- Store: [0x800033a8]:0xFD0EFBFB0B1202F7




Last Coverpoint : ['rs1 : x17', 'rs2 : x28', 'rd : x27', 'rs2_b6_val == 127', 'rs2_b0_val == 16', 'rs1_b7_val == 16']
Last Code Sequence : 
	-[0x80000ac4]:UKSUB8 s11, a7, t3
	-[0x80000ac8]:sd s11, 160(gp)
Current Store : [0x80000acc] : sd a7, 168(gp) -- Store: [0x800033b8]:0x101240DF00040902




Last Coverpoint : ['rs1 : x25', 'rs2 : x18', 'rd : x1', 'rs2_b6_val == 191', 'rs2_b4_val == 251', 'rs1_b7_val == 223', 'rs1_b6_val == 255', 'rs1_b5_val == 1']
Last Code Sequence : 
	-[0x80000b08]:UKSUB8 ra, s9, s2
	-[0x80000b0c]:sd ra, 176(gp)
Current Store : [0x80000b10] : sd s9, 184(gp) -- Store: [0x800033c8]:0xDFFF01F71309090E




Last Coverpoint : ['rs1 : x31', 'rs2 : x16', 'rd : x5', 'rs2_b6_val == 223', 'rs2_b5_val == 253', 'rs2_b2_val == 253']
Last Code Sequence : 
	-[0x80000b54]:UKSUB8 t0, t6, a6
	-[0x80000b58]:sd t0, 192(gp)
Current Store : [0x80000b5c] : sd t6, 200(gp) -- Store: [0x800033d8]:0x0EBF097F070FAA11




Last Coverpoint : ['rs1 : x11', 'rs2 : x27', 'rd : x29', 'rs2_b6_val == 247', 'rs2_b4_val == 85']
Last Code Sequence : 
	-[0x80000b98]:UKSUB8 t4, a1, s11
	-[0x80000b9c]:sd t4, 208(gp)
Current Store : [0x80000ba0] : sd a1, 216(gp) -- Store: [0x800033e8]:0x0E1103131001070C




Last Coverpoint : ['rs1 : x15', 'rs2 : x22', 'rd : x10', 'rs2_b6_val == 254', 'rs2_b5_val == 223', 'rs1_b2_val == 255']
Last Code Sequence : 
	-[0x80000bdc]:UKSUB8 a0, a5, s6
	-[0x80000be0]:sd a0, 224(gp)
Current Store : [0x80000be4] : sd a5, 232(gp) -- Store: [0x800033f8]:0xBF120CF70DFF0D40




Last Coverpoint : ['rs1 : x4', 'rs2_b6_val == 128', 'rs2_b4_val == 191', 'rs2_b3_val == 2', 'rs2_b2_val == 2']
Last Code Sequence : 
	-[0x80000c20]:UKSUB8 s6, tp, s7
	-[0x80000c24]:sd s6, 240(gp)
Current Store : [0x80000c28] : sd tp, 248(gp) -- Store: [0x80003408]:0x030DF7040DF70611




Last Coverpoint : ['rs2 : x21', 'rs2_b6_val == 64', 'rs2_b4_val == 128', 'rs1_b6_val == 85', 'rs1_b5_val == 255', 'rs1_b4_val == 255', 'rs1_b3_val == 239']
Last Code Sequence : 
	-[0x80000c60]:UKSUB8 t5, t3, s5
	-[0x80000c64]:sd t5, 256(gp)
Current Store : [0x80000c68] : sd t3, 264(gp) -- Store: [0x80003418]:0x0655FFFFEF0B1113




Last Coverpoint : ['rd : x21', 'rs1_b7_val == 32', 'rs1_b5_val == 16', 'rs1_b3_val == 170', 'rs1_b2_val == 32']
Last Code Sequence : 
	-[0x80000cac]:UKSUB8 s5, a4, t1
	-[0x80000cb0]:sd s5, 0(ra)
Current Store : [0x80000cb4] : sd a4, 8(ra) -- Store: [0x80003428]:0x20111055AA20050B




Last Coverpoint : ['rs2_b4_val == 8', 'rs2_b2_val == 251', 'rs2_b0_val == 128', 'rs1_b6_val == 253', 'rs1_b5_val == 2', 'rs1_b4_val == 16', 'rs1_b3_val == 191', 'rs1_b1_val == 251']
Last Code Sequence : 
	-[0x80000cf0]:UKSUB8 t6, t5, t4
	-[0x80000cf4]:sd t6, 16(ra)
Current Store : [0x80000cf8] : sd t5, 24(ra) -- Store: [0x80003438]:0x01FD0210BF0DFB13




Last Coverpoint : ['rs2_b5_val == 191', 'rs2_b2_val == 247', 'rs1_b7_val == 251', 'rs1_b6_val == 127', 'rs1_b3_val == 251']
Last Code Sequence : 
	-[0x80000d3c]:UKSUB8 t6, t5, t4
	-[0x80000d40]:sd t6, 32(ra)
Current Store : [0x80000d44] : sd t5, 40(ra) -- Store: [0x80003448]:0xFB7F01DFFB20EF55




Last Coverpoint : ['rs2_b6_val == 2', 'rs2_b4_val == 223', 'rs1_b7_val == 128', 'rs1_b3_val == 253']
Last Code Sequence : 
	-[0x80000d80]:UKSUB8 t6, t5, t4
	-[0x80000d84]:sd t6, 48(ra)
Current Store : [0x80000d88] : sd t5, 56(ra) -- Store: [0x80003458]:0x800FEF13FD050E20




Last Coverpoint : ['rs2_b0_val == 1', 'rs1_b3_val == 254']
Last Code Sequence : 
	-[0x80000dcc]:UKSUB8 t6, t5, t4
	-[0x80000dd0]:sd t6, 64(ra)
Current Store : [0x80000dd4] : sd t5, 72(ra) -- Store: [0x80003468]:0x0102067FFE0FEF02




Last Coverpoint : ['rs2_b6_val == 8', 'rs2_b1_val == 223', 'rs1_b4_val == 1', 'rs1_b3_val == 64', 'rs1_b0_val == 239']
Last Code Sequence : 
	-[0x80000e10]:UKSUB8 t6, t5, t4
	-[0x80000e14]:sd t6, 80(ra)
Current Store : [0x80000e18] : sd t5, 88(ra) -- Store: [0x80003478]:0x05F7DF01400702EF




Last Coverpoint : ['rs1_b1_val == 8']
Last Code Sequence : 
	-[0x80000e4c]:UKSUB8 t6, t5, t4
	-[0x80000e50]:sd t6, 96(ra)
Current Store : [0x80000e54] : sd t5, 104(ra) -- Store: [0x80003488]:0x0DFF0C0D20060809




Last Coverpoint : ['rs2_b0_val == 170', 'rs1_b3_val == 1', 'rs1_b1_val == 128']
Last Code Sequence : 
	-[0x80000e90]:UKSUB8 t6, t5, t4
	-[0x80000e94]:sd t6, 112(ra)
Current Store : [0x80000e98] : sd t5, 120(ra) -- Store: [0x80003498]:0x0A0E090F0105800E




Last Coverpoint : ['rs2_b3_val == 128', 'rs2_b1_val == 251', 'rs1_b7_val == 247', 'rs1_b2_val == 127', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80000ed4]:UKSUB8 t6, t5, t4
	-[0x80000ed8]:sd t6, 128(ra)
Current Store : [0x80000edc] : sd t5, 136(ra) -- Store: [0x800034a8]:0xF70D0F55067F4001




Last Coverpoint : ['rs2_b4_val == 247', 'rs1_b2_val == 191']
Last Code Sequence : 
	-[0x80000f20]:UKSUB8 t6, t5, t4
	-[0x80000f24]:sd t6, 144(ra)
Current Store : [0x80000f28] : sd t5, 152(ra) -- Store: [0x800034b8]:0x070407050BBF0E0B




Last Coverpoint : ['rs2_b6_val == 1', 'rs1_b3_val == 247', 'rs1_b2_val == 223', 'rs1_b1_val == 254']
Last Code Sequence : 
	-[0x80000f64]:UKSUB8 t6, t5, t4
	-[0x80000f68]:sd t6, 160(ra)
Current Store : [0x80000f6c] : sd t5, 168(ra) -- Store: [0x800034c8]:0xFFBF070DF7DFFE0A




Last Coverpoint : ['rs2_b2_val == 254', 'rs2_b1_val == 32', 'rs2_b0_val == 191', 'rs1_b5_val == 253', 'rs1_b2_val == 239']
Last Code Sequence : 
	-[0x80000fb0]:UKSUB8 t6, t5, t4
	-[0x80000fb4]:sd t6, 176(ra)
Current Store : [0x80000fb8] : sd t5, 184(ra) -- Store: [0x800034d8]:0x13FFFDFD02EF2020




Last Coverpoint : ['rs2_b5_val == 255', 'rs2_b0_val == 239', 'rs1_b6_val == 251', 'rs1_b2_val == 251', 'rs1_b0_val == 255']
Last Code Sequence : 
	-[0x80000ffc]:UKSUB8 t6, t5, t4
	-[0x80001000]:sd t6, 192(ra)
Current Store : [0x80001004] : sd t5, 200(ra) -- Store: [0x800034e8]:0x05FB0F0C13FB40FF




Last Coverpoint : ['rs2_b4_val == 127', 'rs2_b2_val == 16', 'rs2_b1_val == 8', 'rs2_b0_val == 32', 'rs1_b6_val == 1', 'rs1_b2_val == 254']
Last Code Sequence : 
	-[0x80001038]:UKSUB8 t6, t5, t4
	-[0x8000103c]:sd t6, 208(ra)
Current Store : [0x80001040] : sd t5, 216(ra) -- Store: [0x800034f8]:0x0301AAEFBFFEF70F




Last Coverpoint : ['rs2_b0_val == 64', 'rs1_b2_val == 64']
Last Code Sequence : 
	-[0x80001084]:UKSUB8 t6, t5, t4
	-[0x80001088]:sd t6, 224(ra)
Current Store : [0x8000108c] : sd t5, 232(ra) -- Store: [0x80003508]:0x1207BF00FF400DEF




Last Coverpoint : ['rs2_b3_val == 64', 'rs2_b2_val == 32', 'rs1_b1_val == 85']
Last Code Sequence : 
	-[0x800010cc]:UKSUB8 t6, t5, t4
	-[0x800010d0]:sd t6, 240(ra)
Current Store : [0x800010d4] : sd t5, 248(ra) -- Store: [0x80003518]:0x13EFFFFD00FB557F




Last Coverpoint : ['rs2_b2_val == 1', 'rs1_b4_val == 128', 'rs1_b1_val == 191']
Last Code Sequence : 
	-[0x80001110]:UKSUB8 t6, t5, t4
	-[0x80001114]:sd t6, 256(ra)
Current Store : [0x80001118] : sd t5, 264(ra) -- Store: [0x80003528]:0xF7030E800E08BF05




Last Coverpoint : ['rs2_b5_val == 64', 'rs2_b1_val == 191']
Last Code Sequence : 
	-[0x80001154]:UKSUB8 t6, t5, t4
	-[0x80001158]:sd t6, 272(ra)
Current Store : [0x8000115c] : sd t5, 280(ra) -- Store: [0x80003538]:0x0A10BF0B0E13080F




Last Coverpoint : ['rs2_b1_val == 247', 'rs1_b6_val == 254']
Last Code Sequence : 
	-[0x80001198]:UKSUB8 t6, t5, t4
	-[0x8000119c]:sd t6, 288(ra)
Current Store : [0x800011a0] : sd t5, 296(ra) -- Store: [0x80003548]:0x07FE078008F70B07




Last Coverpoint : ['rs2_b4_val == 239', 'rs2_b1_val == 254', 'rs1_b0_val == 254']
Last Code Sequence : 
	-[0x800011d4]:UKSUB8 t6, t5, t4
	-[0x800011d8]:sd t6, 304(ra)
Current Store : [0x800011dc] : sd t5, 312(ra) -- Store: [0x80003558]:0xFB0F06EF401108FE




Last Coverpoint : ['rs2_b1_val == 255', 'rs1_b7_val == 64']
Last Code Sequence : 
	-[0x80001218]:UKSUB8 t6, t5, t4
	-[0x8000121c]:sd t6, 320(ra)
Current Store : [0x80001220] : sd t5, 328(ra) -- Store: [0x80003568]:0x40AA010EFDEF7FBF




Last Coverpoint : ['rs2_b0_val == 223', 'rs1_b7_val == 85']
Last Code Sequence : 
	-[0x80001264]:UKSUB8 t6, t5, t4
	-[0x80001268]:sd t6, 336(ra)
Current Store : [0x8000126c] : sd t5, 344(ra) -- Store: [0x80003578]:0x55070C0D0506120B




Last Coverpoint : ['rs2_b0_val == 251', 'rs1_b6_val == 8']
Last Code Sequence : 
	-[0x800012a8]:UKSUB8 t6, t5, t4
	-[0x800012ac]:sd t6, 352(ra)
Current Store : [0x800012b0] : sd t5, 360(ra) -- Store: [0x80003588]:0x40082009100F00BF




Last Coverpoint : ['rs1_b2_val == 2']
Last Code Sequence : 
	-[0x800012e8]:UKSUB8 t6, t5, t4
	-[0x800012ec]:sd t6, 368(ra)
Current Store : [0x800012f0] : sd t5, 376(ra) -- Store: [0x80003598]:0x0A00BF042002FB05




Last Coverpoint : ['rs2_b0_val == 4']
Last Code Sequence : 
	-[0x80001324]:UKSUB8 t6, t5, t4
	-[0x80001328]:sd t6, 384(ra)
Current Store : [0x8000132c] : sd t5, 392(ra) -- Store: [0x800035a8]:0xDF11060102060611




Last Coverpoint : ['rs1_b1_val == 223', 'rs1_b0_val == 251']
Last Code Sequence : 
	-[0x80001370]:UKSUB8 t6, t5, t4
	-[0x80001374]:sd t6, 400(ra)
Current Store : [0x80001378] : sd t5, 408(ra) -- Store: [0x800035b8]:0x0B02DFFE0340DFFB




Last Coverpoint : ['rs2_b0_val == 2', 'rs1_b7_val == 127']
Last Code Sequence : 
	-[0x800013bc]:UKSUB8 t6, t5, t4
	-[0x800013c0]:sd t6, 416(ra)
Current Store : [0x800013c4] : sd t5, 424(ra) -- Store: [0x800035c8]:0x7F0C0A0A110A0080




Last Coverpoint : ['rs1_b1_val == 253']
Last Code Sequence : 
	-[0x800013f8]:UKSUB8 t6, t5, t4
	-[0x800013fc]:sd t6, 432(ra)
Current Store : [0x80001400] : sd t5, 440(ra) -- Store: [0x800035d8]:0x0C000F400008FD40




Last Coverpoint : ['rs2_b5_val == 32', 'rs1_b0_val == 223']
Last Code Sequence : 
	-[0x80001434]:UKSUB8 t6, t5, t4
	-[0x80001438]:sd t6, 448(ra)
Current Store : [0x8000143c] : sd t5, 456(ra) -- Store: [0x800035e8]:0x0BAAF71040EFFEDF




Last Coverpoint : ['rs2_b5_val == 16', 'rs1_b4_val == 2']
Last Code Sequence : 
	-[0x80001478]:UKSUB8 t6, t5, t4
	-[0x8000147c]:sd t6, 464(ra)
Current Store : [0x80001480] : sd t5, 472(ra) -- Store: [0x800035f8]:0xFBBF1202040FFF03




Last Coverpoint : ['rs1_b0_val == 253']
Last Code Sequence : 
	-[0x800014bc]:UKSUB8 t6, t5, t4
	-[0x800014c0]:sd t6, 480(ra)
Current Store : [0x800014c4] : sd t5, 488(ra) -- Store: [0x80003608]:0x0C13AA12090A80FD




Last Coverpoint : ['rs2_b5_val == 4']
Last Code Sequence : 
	-[0x80001508]:UKSUB8 t6, t5, t4
	-[0x8000150c]:sd t6, 496(ra)
Current Store : [0x80001510] : sd t5, 504(ra) -- Store: [0x80003618]:0x1005EF02FEFB2013




Last Coverpoint : ['rs2_b5_val == 1', 'rs2_b3_val == 85']
Last Code Sequence : 
	-[0x80001544]:UKSUB8 t6, t5, t4
	-[0x80001548]:sd t6, 512(ra)
Current Store : [0x8000154c] : sd t5, 520(ra) -- Store: [0x80003628]:0x0109FB100F0BFDFF




Last Coverpoint : ['rs2_b4_val == 1', 'rs2_b2_val == 170', 'rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80001590]:UKSUB8 t6, t5, t4
	-[0x80001594]:sd t6, 528(ra)
Current Store : [0x80001598] : sd t5, 536(ra) -- Store: [0x80003638]:0x038006EF11FF2010




Last Coverpoint : ['rs1_b0_val == 4']
Last Code Sequence : 
	-[0x800015dc]:UKSUB8 t6, t5, t4
	-[0x800015e0]:sd t6, 544(ra)
Current Store : [0x800015e4] : sd t5, 552(ra) -- Store: [0x80003648]:0x0207FD03120B5504




Last Coverpoint : ['rs1_b6_val == 32']
Last Code Sequence : 
	-[0x80001620]:UKSUB8 t6, t5, t4
	-[0x80001624]:sd t6, 560(ra)
Current Store : [0x80001628] : sd t5, 568(ra) -- Store: [0x80003658]:0x0120010D80AADF09




Last Coverpoint : ['rs2_b4_val == 2']
Last Code Sequence : 
	-[0x8000165c]:UKSUB8 t6, t5, t4
	-[0x80001660]:sd t6, 576(ra)
Current Store : [0x80001664] : sd t5, 584(ra) -- Store: [0x80003668]:0x0C0C0D100B13FD08




Last Coverpoint : ['rs2_b4_val == 255', 'rs2_b3_val == 8']
Last Code Sequence : 
	-[0x80001698]:UKSUB8 t6, t5, t4
	-[0x8000169c]:sd t6, 592(ra)
Current Store : [0x800016a0] : sd t5, 600(ra) -- Store: [0x80003678]:0xFD0601120B130007




Last Coverpoint : ['rs1_b5_val == 254']
Last Code Sequence : 
	-[0x800016dc]:UKSUB8 t6, t5, t4
	-[0x800016e0]:sd t6, 608(ra)
Current Store : [0x800016e4] : sd t5, 616(ra) -- Store: [0x80003688]:0x0A10FE12FD0DFD04




Last Coverpoint : ['rs2_b3_val == 239']
Last Code Sequence : 
	-[0x80001720]:UKSUB8 t6, t5, t4
	-[0x80001724]:sd t6, 624(ra)
Current Store : [0x80001728] : sd t5, 632(ra) -- Store: [0x80003698]:0x0C1113BF0A0A0255




Last Coverpoint : ['rs2_b2_val == 191', 'rs1_b5_val == 4', 'rs1_b4_val == 8', 'rs1_b1_val == 1']
Last Code Sequence : 
	-[0x80001764]:UKSUB8 t6, t5, t4
	-[0x80001768]:sd t6, 640(ra)
Current Store : [0x8000176c] : sd t5, 648(ra) -- Store: [0x800036a8]:0x047F0408130001BF




Last Coverpoint : ['rs1_b4_val == 170']
Last Code Sequence : 
	-[0x800017a8]:UKSUB8 t6, t5, t4
	-[0x800017ac]:sd t6, 656(ra)
Current Store : [0x800017b0] : sd t5, 664(ra) -- Store: [0x800036b8]:0xBF0803AA0D038006




Last Coverpoint : ['rs2_b3_val == 1']
Last Code Sequence : 
	-[0x800017e8]:UKSUB8 t6, t5, t4
	-[0x800017ec]:sd t6, 672(ra)
Current Store : [0x800017f0] : sd t5, 680(ra) -- Store: [0x800036c8]:0x130505EF0C0B8000




Last Coverpoint : ['rs1_b7_val == 239', 'rs1_b4_val == 32', 'rs1_b0_val == 170']
Last Code Sequence : 
	-[0x80001834]:UKSUB8 t6, t5, t4
	-[0x80001838]:sd t6, 688(ra)
Current Store : [0x8000183c] : sd t5, 696(ra) -- Store: [0x800036d8]:0xEF10FB200A03F7AA




Last Coverpoint : ['rs1_b7_val == 8']
Last Code Sequence : 
	-[0x80001870]:UKSUB8 t6, t5, t4
	-[0x80001874]:sd t6, 704(ra)
Current Store : [0x80001878] : sd t5, 712(ra) -- Store: [0x800036e8]:0x0820050A000A7F0E




Last Coverpoint : ['rs1_b7_val == 254']
Last Code Sequence : 
	-[0x800018ac]:UKSUB8 t6, t5, t4
	-[0x800018b0]:sd t6, 720(ra)
Current Store : [0x800018b4] : sd t5, 728(ra) -- Store: [0x800036f8]:0xFE7F12031100FE03




Last Coverpoint : ['rs2_b6_val == 255']
Last Code Sequence : 
	-[0x800018e8]:UKSUB8 t6, t5, t4
	-[0x800018ec]:sd t6, 736(ra)
Current Store : [0x800018f0] : sd t5, 744(ra) -- Store: [0x80003708]:0x40124006FE0B0180




Last Coverpoint : ['rs1_b5_val == 8']
Last Code Sequence : 
	-[0x80001924]:UKSUB8 t6, t5, t4
	-[0x80001928]:sd t6, 752(ra)
Current Store : [0x8000192c] : sd t5, 760(ra) -- Store: [0x80003718]:0x060D080A7FAAFF00




Last Coverpoint : ['rs1_b2_val == 128', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x80001968]:UKSUB8 t6, t5, t4
	-[0x8000196c]:sd t6, 768(ra)
Current Store : [0x80001970] : sd t5, 776(ra) -- Store: [0x80003728]:0x0C0C8011F7801008




Last Coverpoint : ['opcode : uksub8', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_b7_val != rs2_b7_val and rs1_b7_val > 0 and rs2_b7_val > 0', 'rs1_b6_val != rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0', 'rs1_b4_val != rs2_b4_val and rs1_b4_val > 0 and rs2_b4_val > 0', 'rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0', 'rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0', 'rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0', 'rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0', 'rs2_b7_val == 2', 'rs2_b6_val == 16', 'rs2_b5_val == 0', 'rs2_b3_val == 247', 'rs2_b2_val == 127', 'rs2_b1_val == 128', 'rs2_b0_val == 247', 'rs1_b7_val == 1', 'rs1_b6_val == 128', 'rs1_b5_val == 64', 'rs1_b4_val == 191', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800019a4]:UKSUB8 t6, t5, t4
	-[0x800019a8]:sd t6, 784(ra)
Current Store : [0x800019ac] : sd t5, 792(ra) -- Store: [0x80003738]:0x018040BF03130302





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

|s.no|            signature             |                                                                                                                                                                                                                                                                                                                                                                                                   coverpoints                                                                                                                                                                                                                                                                                                                                                                                                    |                                 code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : uksub8<br> - rs1 : x10<br> - rs2 : x10<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs1_b7_val == rs2_b7_val and rs1_b7_val > 0 and rs2_b7_val > 0<br> - rs1_b6_val == rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0<br> - rs1_b5_val == rs2_b5_val and rs1_b5_val > 0 and rs2_b5_val > 0<br> - rs1_b4_val == rs2_b4_val and rs1_b4_val > 0 and rs2_b4_val > 0<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b6_val == 170<br> - rs2_b3_val == 32<br> - rs2_b1_val == 239<br> - rs1_b6_val == 170<br> - rs1_b3_val == 32<br> - rs1_b1_val == 239<br> |[0x800003d4]:UKSUB8 t6, a0, a0<br> [0x800003d8]:sd t6, 0(tp)<br>      |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x9<br> - rd : x9<br> - rs1 == rs2 == rd<br> - rs2_b6_val == 16<br> - rs2_b4_val == 64<br> - rs2_b3_val == 127<br> - rs2_b2_val == 8<br> - rs1_b6_val == 16<br> - rs1_b4_val == 64<br> - rs1_b3_val == 127<br> - rs1_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000418]:UKSUB8 s1, s1, s1<br> [0x8000041c]:sd s1, 16(tp)<br>     |
|   3|[0x80003230]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x15<br> - rd : x3<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b0_val == 0<br> - rs2_b7_val == 170<br> - rs2_b5_val == 85<br> - rs2_b3_val == 170<br> - rs2_b2_val == 85<br> - rs2_b1_val == 85<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000464]:UKSUB8 gp, zero, a5<br> [0x80000468]:sd gp, 32(tp)<br>   |
|   4|[0x80003240]<br>0x0800000049070246|- rs1 : x28<br> - rs2 : x20<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs1_b7_val != rs2_b7_val and rs1_b7_val > 0 and rs2_b7_val > 0<br> - rs1_b6_val != rs2_b6_val and rs1_b6_val > 0 and rs2_b6_val > 0<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b6_val == 239<br> - rs2_b5_val == 239<br> - rs1_b6_val == 223<br> - rs1_b5_val == 239<br> - rs1_b3_val == 85<br> - rs1_b0_val == 85<br>                                                                                                                                                                 |[0x800004b0]:UKSUB8 t3, t3, s4<br> [0x800004b4]:sd t3, 48(tp)<br>     |
|   5|[0x80003250]<br>0x0CBBD70008EB0009|- rs1 : x29<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs1_b5_val != rs2_b5_val and rs1_b5_val > 0 and rs2_b5_val > 0<br> - rs2_b7_val == 0<br> - rs2_b6_val == 4<br> - rs2_b5_val == 8<br> - rs1_b6_val == 191<br> - rs1_b5_val == 223<br> - rs1_b2_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800004f4]:UKSUB8 a3, t4, a3<br> [0x800004f8]:sd a3, 64(tp)<br>     |
|   6|[0x80003260]<br>0x0000000000000003|- rs1 : x3<br> - rs2 : x11<br> - rd : x15<br> - rs2_b7_val == 247<br> - rs2_b5_val == 251<br> - rs2_b4_val == 4<br> - rs2_b1_val == 127<br> - rs1_b5_val == 128<br> - rs1_b4_val == 4<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000540]:UKSUB8 a5, gp, a1<br> [0x80000544]:sd a5, 80(tp)<br>     |
|   7|[0x80003270]<br>0x0000000000000600|- rs1 : x23<br> - rs2 : x30<br> - rd : x25<br> - rs1_b4_val != rs2_b4_val and rs1_b4_val > 0 and rs2_b4_val > 0<br> - rs2_b7_val == 253<br> - rs2_b6_val == 32<br> - rs2_b4_val == 170<br> - rs2_b2_val == 4<br> - rs2_b0_val == 253<br> - rs1_b6_val == 4<br> - rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000058c]:UKSUB8 s9, s7, t5<br> [0x80000590]:sd s9, 96(tp)<br>     |
|   8|[0x80003280]<br>0xEFE8000000000000|- rs1 : x7<br> - rs2 : x5<br> - rd : x30<br> - rs2_b5_val == 254<br> - rs2_b4_val == 253<br> - rs1_b7_val == 253<br> - rs1_b6_val == 239<br> - rs1_b4_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800005d8]:UKSUB8 t5, t2, t0<br> [0x800005dc]:sd t5, 112(tp)<br>    |
|   9|[0x80003290]<br>0x130FDF0308F7F70F|- rs1 : x21<br> - rs2 : x0<br> - rd : x20<br> - rs2_b6_val == 0<br> - rs2_b5_val == 0<br> - rs2_b4_val == 0<br> - rs2_b3_val == 0<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b3_val == 8<br> - rs1_b2_val == 247<br> - rs1_b1_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000624]:UKSUB8 s4, s5, zero<br> [0x80000628]:sd s4, 128(tp)<br>  |
|  10|[0x800032a0]<br>0x6AEB0B000000004B|- rs1 : x8<br> - rs2 : x3<br> - rd : x24<br> - rs2_b7_val == 85<br> - rs2_b3_val == 251<br> - rs2_b1_val == 64<br> - rs1_b7_val == 191<br> - rs1_b6_val == 247<br> - rs1_b3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000670]:UKSUB8 s8, fp, gp<br> [0x80000674]:sd s8, 144(tp)<br>    |
|  11|[0x800032b0]<br>0x000B3F0000000B03|- rs1 : x6<br> - rs2 : x25<br> - rd : x8<br> - rs2_b7_val == 127<br> - rs2_b5_val == 128<br> - rs2_b3_val == 191<br> - rs2_b2_val == 128<br> - rs1_b5_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800006ac]:UKSUB8 fp, t1, s9<br> [0x800006b0]:sd fp, 160(tp)<br>    |
|  12|[0x800032c0]<br>0x00F453ED0000F277|- rs1 : x27<br> - rs2 : x24<br> - rd : x26<br> - rs2_b7_val == 191<br> - rs2_b5_val == 2<br> - rs2_b4_val == 16<br> - rs2_b3_val == 16<br> - rs2_b2_val == 223<br> - rs1_b5_val == 85<br> - rs1_b4_val == 253<br> - rs1_b3_val == 2<br> - rs1_b2_val == 1<br> - rs1_b1_val == 255<br> - rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800006f0]:UKSUB8 s10, s11, s8<br> [0x800006f4]:sd s10, 176(tp)<br> |
|  13|[0x800032d0]<br>0x0003000300000020|- rs1 : x13<br> - rs2 : x23<br> - rd : x16<br> - rs2_b7_val == 223<br> - rs2_b3_val == 4<br> - rs2_b2_val == 255<br> - rs1_b3_val == 4<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000730]:UKSUB8 a6, a3, s7<br> [0x80000734]:sd a6, 192(tp)<br>    |
|  14|[0x800032e0]<br>0x000000000000037C|- rs1 : x20<br> - rs2 : x1<br> - rd : x19<br> - rs2_b7_val == 239<br> - rs2_b6_val == 253<br> - rs2_b5_val == 127<br> - rs2_b4_val == 254<br> - rs2_b2_val == 127<br> - rs2_b1_val == 1<br> - rs1_b7_val == 2<br> - rs1_b1_val == 4<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000076c]:UKSUB8 s3, s4, ra<br> [0x80000770]:sd s3, 208(tp)<br>    |
|  15|[0x800032f0]<br>0x00A6F7DFD3000000|- rs1 : x18<br> - rs2 : x2<br> - rd : x23<br> - rs2_b7_val == 251<br> - rs2_b0_val == 254<br> - rs1_b5_val == 247<br> - rs1_b4_val == 239<br> - rs1_b3_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800007b0]:UKSUB8 s7, s2, sp<br> [0x800007b4]:sd s7, 224(tp)<br>    |
|  16|[0x80003300]<br>0x0000000000091C05|- rs1 : x14<br> - rs2 : x7<br> - rd : x22<br> - rs2_b7_val == 254<br> - rs2_b5_val == 170<br> - rs2_b3_val == 223<br> - rs2_b1_val == 4<br> - rs2_b0_val == 8<br> - rs1_b7_val == 4<br> - rs1_b5_val == 32<br> - rs1_b2_val == 16<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800007f4]:UKSUB8 s6, a4, t2<br> [0x800007f8]:sd s6, 240(tp)<br>    |
|  17|[0x80003310]<br>0x0000AA0A00157A00|- rs1 : x5<br> - rs2 : x26<br> - rd : x12<br> - rs2_b7_val == 128<br> - rs2_b2_val == 64<br> - rs2_b0_val == 127<br> - rs1_b5_val == 170<br> - rs1_b2_val == 85<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000083c]:UKSUB8 a2, t0, s10<br> [0x80000840]:sd a2, 0(gp)<br>     |
|  18|[0x80003320]<br>0x00050EDE00060000|- rs1 : x2<br> - rs2 : x12<br> - rd : x14<br> - rs2_b7_val == 64<br> - rs2_b4_val == 32<br> - rs2_b3_val == 255<br> - rs2_b1_val == 253<br> - rs1_b4_val == 254<br> - rs1_b1_val == 170<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000880]:UKSUB8 a4, sp, a2<br> [0x80000884]:sd a4, 16(gp)<br>     |
|  19|[0x80003330]<br>0x8A00034A00000002|- rs1 : x16<br> - rs2 : x29<br> - rd : x18<br> - rs2_b7_val == 32<br> - rs1_b7_val == 170<br> - rs1_b4_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800008cc]:UKSUB8 s2, a6, t4<br> [0x800008d0]:sd s2, 32(gp)<br>     |
|  20|[0x80003340]<br>0x000000EC09043F03|- rs1 : x24<br> - rs2 : x17<br> - rd : x6<br> - rs2_b7_val == 16<br> - rs1_b6_val == 2<br> - rs1_b4_val == 247<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000908]:UKSUB8 t1, s8, a7<br> [0x8000090c]:sd t1, 48(gp)<br>     |
|  21|[0x80003350]<br>0x0700740005000000|- rs1 : x26<br> - rs2 : x14<br> - rd : x4<br> - rs2_b7_val == 8<br> - rs2_b0_val == 255<br> - rs1_b6_val == 64<br> - rs1_b5_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000094c]:UKSUB8 tp, s10, a4<br> [0x80000950]:sd tp, 64(gp)<br>    |
|  22|[0x80003360]<br>0xFB000005010000B3|- rs1 : x30<br> - rs2 : x6<br> - rd : x2<br> - rs2_b7_val == 4<br> - rs2_b3_val == 254<br> - rs2_b2_val == 239<br> - rs2_b1_val == 170<br> - rs1_b7_val == 255<br> - rs1_b3_val == 255<br> - rs1_b0_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000998]:UKSUB8 sp, t5, t1<br> [0x8000099c]:sd sp, 80(gp)<br>     |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x4<br> - rd : x0<br> - rs2_b7_val == 2<br> - rs2_b3_val == 247<br> - rs2_b1_val == 128<br> - rs2_b0_val == 247<br> - rs1_b7_val == 1<br> - rs1_b6_val == 128<br> - rs1_b5_val == 64<br> - rs1_b4_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800009d4]:UKSUB8 zero, ra, tp<br> [0x800009d8]:sd zero, 96(gp)<br> |
|  24|[0x80003380]<br>0x06F4067A00000700|- rs1 : x22<br> - rs2 : x31<br> - rd : x11<br> - rs2_b7_val == 1<br> - rs2_b3_val == 253<br> - rs2_b1_val == 2<br> - rs2_b0_val == 85<br> - rs1_b3_val == 16<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000a10]:UKSUB8 a1, s6, t6<br> [0x80000a14]:sd a1, 112(gp)<br>    |
|  25|[0x80003390]<br>0x000004D200000000|- rs1 : x12<br> - rs2 : x19<br> - rd : x7<br> - rs2_b7_val == 255<br> - rs2_b6_val == 251<br> - rs2_b5_val == 247<br> - rs2_b1_val == 16<br> - rs1_b5_val == 251<br> - rs1_b4_val == 223<br> - rs1_b2_val == 170<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000a4c]:UKSUB8 t2, a2, s3<br> [0x80000a50]:sd t2, 128(gp)<br>    |
|  26|[0x800033a0]<br>0xEF0051F500000000|- rs1 : x19<br> - rs2 : x8<br> - rd : x17<br> - rs2_b6_val == 85<br> - rs1_b4_val == 251<br> - rs1_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000a88]:UKSUB8 a7, s3, fp<br> [0x80000a8c]:sd a7, 144(gp)<br>    |
|  27|[0x800033b0]<br>0x030000DF00000000|- rs1 : x17<br> - rs2 : x28<br> - rd : x27<br> - rs2_b6_val == 127<br> - rs2_b0_val == 16<br> - rs1_b7_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ac4]:UKSUB8 s11, a7, t3<br> [0x80000ac8]:sd s11, 160(gp)<br>  |
|  28|[0x800033c0]<br>0x0040000004060503|- rs1 : x25<br> - rs2 : x18<br> - rd : x1<br> - rs2_b6_val == 191<br> - rs2_b4_val == 251<br> - rs1_b7_val == 223<br> - rs1_b6_val == 255<br> - rs1_b5_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b08]:UKSUB8 ra, s9, s2<br> [0x80000b0c]:sd ra, 176(gp)<br>    |
|  29|[0x800033d0]<br>0x000000000000A100|- rs1 : x31<br> - rs2 : x16<br> - rd : x5<br> - rs2_b6_val == 223<br> - rs2_b5_val == 253<br> - rs2_b2_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000b54]:UKSUB8 t0, t6, a6<br> [0x80000b58]:sd t0, 192(gp)<br>    |
|  30|[0x800033e0]<br>0x0E00000000000000|- rs1 : x11<br> - rs2 : x27<br> - rd : x29<br> - rs2_b6_val == 247<br> - rs2_b4_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000b98]:UKSUB8 t4, a1, s11<br> [0x80000b9c]:sd t4, 208(gp)<br>   |
|  31|[0x800033f0]<br>0x4000000000000031|- rs1 : x15<br> - rs2 : x22<br> - rd : x10<br> - rs2_b6_val == 254<br> - rs2_b5_val == 223<br> - rs1_b2_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000bdc]:UKSUB8 a0, a5, s6<br> [0x80000be0]:sd a0, 224(gp)<br>    |
|  32|[0x80003400]<br>0x0000EB000BF50000|- rs1 : x4<br> - rs2_b6_val == 128<br> - rs2_b4_val == 191<br> - rs2_b3_val == 2<br> - rs2_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000c20]:UKSUB8 s6, tp, s7<br> [0x80000c24]:sd s6, 240(gp)<br>    |
|  33|[0x80003410]<br>0x00157F7F7005110D|- rs2 : x21<br> - rs2_b6_val == 64<br> - rs2_b4_val == 128<br> - rs1_b6_val == 85<br> - rs1_b5_val == 255<br> - rs1_b4_val == 255<br> - rs1_b3_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000c60]:UKSUB8 t5, t3, s5<br> [0x80000c64]:sd t5, 256(gp)<br>    |
|  34|[0x80003420]<br>0x12110050A8150000|- rd : x21<br> - rs1_b7_val == 32<br> - rs1_b5_val == 16<br> - rs1_b3_val == 170<br> - rs1_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000cac]:UKSUB8 s5, a4, t1<br> [0x80000cb0]:sd s5, 0(ra)<br>      |
|  35|[0x80003430]<br>0x00EC0008B6007C00|- rs2_b4_val == 8<br> - rs2_b2_val == 251<br> - rs2_b0_val == 128<br> - rs1_b6_val == 253<br> - rs1_b5_val == 2<br> - rs1_b4_val == 16<br> - rs1_b3_val == 191<br> - rs1_b1_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000cf0]:UKSUB8 t6, t5, t4<br> [0x80000cf4]:sd t6, 16(ra)<br>     |
|  36|[0x80003440]<br>0xF13F00D2ED00E046|- rs2_b5_val == 191<br> - rs2_b2_val == 247<br> - rs1_b7_val == 251<br> - rs1_b6_val == 127<br> - rs1_b3_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000d3c]:UKSUB8 t6, t5, t4<br> [0x80000d40]:sd t6, 32(ra)<br>     |
|  37|[0x80003450]<br>0x000DE9001E000E0F|- rs2_b6_val == 2<br> - rs2_b4_val == 223<br> - rs1_b7_val == 128<br> - rs1_b3_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000d80]:UKSUB8 t6, t5, t4<br> [0x80000d84]:sd t6, 48(ra)<br>     |
|  38|[0x80003460]<br>0x0000007A1F0FE401|- rs2_b0_val == 1<br> - rs1_b3_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000dcc]:UKSUB8 t6, t5, t4<br> [0x80000dd0]:sd t6, 64(ra)<br>     |
|  39|[0x80003470]<br>0x00EFCD00360000E8|- rs2_b6_val == 8<br> - rs2_b1_val == 223<br> - rs1_b4_val == 1<br> - rs1_b3_val == 64<br> - rs1_b0_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000e10]:UKSUB8 t6, t5, t4<br> [0x80000e14]:sd t6, 80(ra)<br>     |
|  40|[0x80003480]<br>0x00BF000011000400|- rs1_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e4c]:UKSUB8 t6, t5, t4<br> [0x80000e50]:sd t6, 96(ra)<br>     |
|  41|[0x80003490]<br>0x0008000200007C00|- rs2_b0_val == 170<br> - rs1_b3_val == 1<br> - rs1_b1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e90]:UKSUB8 t6, t5, t4<br> [0x80000e94]:sd t6, 112(ra)<br>    |
|  42|[0x800034a0]<br>0x00090042006E0000|- rs2_b3_val == 128<br> - rs2_b1_val == 251<br> - rs1_b7_val == 247<br> - rs1_b2_val == 127<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ed4]:UKSUB8 t6, t5, t4<br> [0x80000ed8]:sd t6, 128(ra)<br>    |
|  43|[0x800034b0]<br>0x00000700087F0005|- rs2_b4_val == 247<br> - rs1_b2_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000f20]:UKSUB8 t6, t5, t4<br> [0x80000f24]:sd t6, 144(ra)<br>    |
|  44|[0x800034c0]<br>0xEFBE0102EDD4FC00|- rs2_b6_val == 1<br> - rs1_b3_val == 247<br> - rs1_b2_val == 223<br> - rs1_b1_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000f64]:UKSUB8 t6, t5, t4<br> [0x80000f68]:sd t6, 160(ra)<br>    |
|  45|[0x800034d0]<br>0x0910F0FA00000000|- rs2_b2_val == 254<br> - rs2_b1_val == 32<br> - rs2_b0_val == 191<br> - rs1_b5_val == 253<br> - rs1_b2_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000fb0]:UKSUB8 t6, t5, t4<br> [0x80000fb4]:sd t6, 176(ra)<br>    |
|  46|[0x800034e0]<br>0x00F6000000E82010|- rs2_b5_val == 255<br> - rs2_b0_val == 239<br> - rs1_b6_val == 251<br> - rs1_b2_val == 251<br> - rs1_b0_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ffc]:UKSUB8 t6, t5, t4<br> [0x80001000]:sd t6, 192(ra)<br>    |
|  47|[0x800034f0]<br>0x010099709FEEEF00|- rs2_b4_val == 127<br> - rs2_b2_val == 16<br> - rs2_b1_val == 8<br> - rs2_b0_val == 32<br> - rs1_b6_val == 1<br> - rs1_b2_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001038]:UKSUB8 t6, t5, t4<br> [0x8000103c]:sd t6, 208(ra)<br>    |
|  48|[0x80003500]<br>0x08000000F40000AF|- rs2_b0_val == 64<br> - rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001084]:UKSUB8 t6, t5, t4<br> [0x80001088]:sd t6, 224(ra)<br>    |
|  49|[0x80003510]<br>0x00EEF6ED00DB0071|- rs2_b3_val == 64<br> - rs2_b2_val == 32<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800010cc]:UKSUB8 t6, t5, t4<br> [0x800010d0]:sd t6, 240(ra)<br>    |
|  50|[0x80003520]<br>0x1800047000070000|- rs2_b2_val == 1<br> - rs1_b4_val == 128<br> - rs1_b1_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001110]:UKSUB8 t6, t5, t4<br> [0x80001114]:sd t6, 256(ra)<br>    |
|  51|[0x80003530]<br>0x00067F0000130000|- rs2_b5_val == 64<br> - rs2_b1_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001154]:UKSUB8 t6, t5, t4<br> [0x80001158]:sd t6, 272(ra)<br>    |
|  52|[0x80003540]<br>0x00FD004000B70000|- rs2_b1_val == 247<br> - rs1_b6_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001198]:UKSUB8 t6, t5, t4<br> [0x8000119c]:sd t6, 288(ra)<br>    |
|  53|[0x80003550]<br>0xBB000000360000A9|- rs2_b4_val == 239<br> - rs2_b1_val == 254<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800011d4]:UKSUB8 t6, t5, t4<br> [0x800011d8]:sd t6, 304(ra)<br>    |
|  54|[0x80003560]<br>0x009D000853EA00B9|- rs2_b1_val == 255<br> - rs1_b7_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001218]:UKSUB8 t6, t5, t4<br> [0x8000121c]:sd t6, 320(ra)<br>    |
|  55|[0x80003570]<br>0x00000A0000000500|- rs2_b0_val == 223<br> - rs1_b7_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001264]:UKSUB8 t6, t5, t4<br> [0x80001268]:sd t6, 336(ra)<br>    |
|  56|[0x80003580]<br>0x0006000000000000|- rs2_b0_val == 251<br> - rs1_b6_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800012a8]:UKSUB8 t6, t5, t4<br> [0x800012ac]:sd t6, 352(ra)<br>    |
|  57|[0x80003590]<br>0x000000001300F300|- rs1_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800012e8]:UKSUB8 t6, t5, t4<br> [0x800012ec]:sd t6, 368(ra)<br>    |
|  58|[0x800035a0]<br>0x000000000002000D|- rs2_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001324]:UKSUB8 t6, t5, t4<br> [0x80001328]:sd t6, 384(ra)<br>    |
|  59|[0x800035b0]<br>0x0000607F00009FDB|- rs1_b1_val == 223<br> - rs1_b0_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001370]:UKSUB8 t6, t5, t4<br> [0x80001374]:sd t6, 400(ra)<br>    |
|  60|[0x800035c0]<br>0x3F000000000A007E|- rs2_b0_val == 2<br> - rs1_b7_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800013bc]:UKSUB8 t6, t5, t4<br> [0x800013c0]:sd t6, 416(ra)<br>    |
|  61|[0x800035d0]<br>0x090000000000EF00|- rs1_b1_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800013f8]:UKSUB8 t6, t5, t4<br> [0x800013fc]:sd t6, 432(ra)<br>    |
|  62|[0x800035e0]<br>0x00A8D71000CFFBDF|- rs2_b5_val == 32<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001434]:UKSUB8 t6, t5, t4<br> [0x80001438]:sd t6, 448(ra)<br>    |
|  63|[0x800035f0]<br>0xECB8020001081000|- rs2_b5_val == 16<br> - rs1_b4_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001478]:UKSUB8 t6, t5, t4<br> [0x8000147c]:sd t6, 464(ra)<br>    |
|  64|[0x80003600]<br>0x04000000000072F8|- rs1_b0_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800014bc]:UKSUB8 t6, t5, t4<br> [0x800014c0]:sd t6, 480(ra)<br>    |
|  65|[0x80003610]<br>0x0000EB001FF70F00|- rs2_b5_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001508]:UKSUB8 t6, t5, t4<br> [0x8000150c]:sd t6, 496(ra)<br>    |
|  66|[0x80003620]<br>0x0000FA0A0001FAF5|- rs2_b5_val == 1<br> - rs2_b3_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001544]:UKSUB8 t6, t5, t4<br> [0x80001548]:sd t6, 512(ra)<br>    |
|  67|[0x80003630]<br>0x007300EE08550D02|- rs2_b4_val == 1<br> - rs2_b2_val == 170<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001590]:UKSUB8 t6, t5, t4<br> [0x80001594]:sd t6, 528(ra)<br>    |
|  68|[0x80003640]<br>0x0000F00000080000|- rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800015dc]:UKSUB8 t6, t5, t4<br> [0x800015e0]:sd t6, 544(ra)<br>    |
|  69|[0x80003650]<br>0x0000000272005F00|- rs1_b6_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001620]:UKSUB8 t6, t5, t4<br> [0x80001624]:sd t6, 560(ra)<br>    |
|  70|[0x80003660]<br>0x00000A0E0000FD00|- rs2_b4_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000165c]:UKSUB8 t6, t5, t4<br> [0x80001660]:sd t6, 576(ra)<br>    |
|  71|[0x80003670]<br>0xF900000003080003|- rs2_b4_val == 255<br> - rs2_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001698]:UKSUB8 t6, t5, t4<br> [0x8000169c]:sd t6, 592(ra)<br>    |
|  72|[0x80003680]<br>0x000FF800EA001E00|- rs1_b5_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800016dc]:UKSUB8 t6, t5, t4<br> [0x800016e0]:sd t6, 608(ra)<br>    |
|  73|[0x80003690]<br>0x00110240000A0045|- rs2_b3_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001720]:UKSUB8 t6, t5, t4<br> [0x80001724]:sd t6, 624(ra)<br>    |
|  74|[0x800036a0]<br>0x002A0000050000B4|- rs2_b2_val == 191<br> - rs1_b5_val == 4<br> - rs1_b4_val == 8<br> - rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001764]:UKSUB8 t6, t5, t4<br> [0x80001768]:sd t6, 640(ra)<br>    |
|  75|[0x800036b0]<br>0x7F00000000007D00|- rs1_b4_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800017a8]:UKSUB8 t6, t5, t4<br> [0x800017ac]:sd t6, 656(ra)<br>    |
|  76|[0x800036c0]<br>0x0F0000DD0B007B00|- rs2_b3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800017e8]:UKSUB8 t6, t5, t4<br> [0x800017ec]:sd t6, 672(ra)<br>    |
|  77|[0x800036d0]<br>0xE8007C0F0000EB00|- rs1_b7_val == 239<br> - rs1_b4_val == 32<br> - rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001834]:UKSUB8 t6, t5, t4<br> [0x80001838]:sd t6, 688(ra)<br>    |
|  78|[0x800036e0]<br>0x0610000800006D03|- rs1_b7_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001870]:UKSUB8 t6, t5, t4<br> [0x80001874]:sd t6, 704(ra)<br>    |
|  79|[0x800036f0]<br>0x1F7605000000F800|- rs1_b7_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800018ac]:UKSUB8 t6, t5, t4<br> [0x800018b0]:sd t6, 720(ra)<br>    |
|  80|[0x80003700]<br>0x00003800F500006F|- rs2_b6_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800018e8]:UKSUB8 t6, t5, t4<br> [0x800018ec]:sd t6, 736(ra)<br>    |
|  81|[0x80003710]<br>0x000000075F9D1000|- rs1_b5_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001924]:UKSUB8 t6, t5, t4<br> [0x80001928]:sd t6, 752(ra)<br>    |
|  82|[0x80003720]<br>0x0000730078780D00|- rs1_b2_val == 128<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001968]:UKSUB8 t6, t5, t4<br> [0x8000196c]:sd t6, 768(ra)<br>    |
