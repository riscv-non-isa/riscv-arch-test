
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800017d0')]      |
| SIG_REGION                | [('0x80003210', '0x800037f0', '376 words')]      |
| COV_LABELS                | uradd64      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/uradd64-01.S    |
| Total Number of coverpoints| 324     |
| Total Coverpoints Hit     | 318      |
| Total Signature Updates   | 374      |
| STAT1                     | 184      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 187     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c54]:URADD64 t5, t3, s10
      [0x80000c58]:sw t5, 608(ra)
 -- Signature Address: 0x800034d8 Data: 0xDFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : uradd64
      - rs1 : x28
      - rs2 : x26
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 18446744073172680703
      - rs1_val == 18446744073172680703
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001720]:URADD64 t5, t3, s10
      [0x80001724]:sw t5, 1344(ra)
 -- Signature Address: 0x800037b8 Data: 0x10000040
 -- Redundant Coverpoints hit by the op
      - opcode : uradd64
      - rs1 : x28
      - rs2 : x26
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs2_val == 128
      - rs1_val == 536870912
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017b8]:URADD64 t5, t3, s10
      [0x800017bc]:sw t5, 1384(ra)
 -- Signature Address: 0x800037e0 Data: 0xE0000000
 -- Redundant Coverpoints hit by the op
      - opcode : uradd64
      - rs1 : x28
      - rs2 : x26
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val == 18446744072635809791
      - rs2_val == 1
      - rs1_val > 0 and rs2_val > 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : uradd64', 'rs1 : x22', 'rs2 : x22', 'rd : x22', 'rs1 == rs2 == rd', 'rs2_val == 18446744072635809791', 'rs1_val == 18446744072635809791', 'rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0', 'rs1_val > 0 and rs2_val > 0']
Last Code Sequence : 
	-[0x80000118]:URADD64 s6, s6, s6
	-[0x8000011c]:sw s6, 0(ra)
Current Store : [0x80000120] : sw s7, 4(ra) -- Store: [0x80003214]:0xFFFFFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x24', 'rd : x12', 'rs1 == rs2 != rd', 'rs2_val == 128', 'rs1_val == 128']
Last Code Sequence : 
	-[0x80000134]:URADD64 a2, s8, s8
	-[0x80000138]:sw a2, 8(ra)
Current Store : [0x8000013c] : sw a3, 12(ra) -- Store: [0x8000321c]:0xEADFEEDB




Last Coverpoint : ['rs1 : x16', 'rs2 : x8', 'rd : x6', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0', 'rs2_val == 13835058055282163711', 'rs1_val == 4294967296']
Last Code Sequence : 
	-[0x80000154]:URADD64 t1, a6, fp
	-[0x80000158]:sw t1, 16(ra)
Current Store : [0x8000015c] : sw t2, 20(ra) -- Store: [0x80003224]:0xB7FBB6FA




Last Coverpoint : ['rs1 : x28', 'rs2 : x18', 'rd : x18', 'rs2 == rd != rs1', 'rs2_val == 16140901064495857663', 'rs1_val == 18446181123756130303']
Last Code Sequence : 
	-[0x80000178]:URADD64 s2, t3, s2
	-[0x8000017c]:sw s2, 24(ra)
Current Store : [0x80000180] : sw s3, 28(ra) -- Store: [0x8000322c]:0xDFFFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x20', 'rd : x4', 'rs1 == rd != rs2', 'rs2_val == 17293822569102704639', 'rs1_val == 18158513697557839871']
Last Code Sequence : 
	-[0x8000019c]:URADD64 tp, tp, s4
	-[0x800001a0]:sw tp, 32(ra)
Current Store : [0x800001a4] : sw t0, 36(ra) -- Store: [0x80003234]:0xFBFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x2', 'rd : x16', 'rs2_val == 17870283321406128127', 'rs1_val == 18446744073709486079']
Last Code Sequence : 
	-[0x800001c0]:URADD64 a6, a0, sp
	-[0x800001c4]:sw a6, 40(ra)
Current Store : [0x800001c8] : sw a7, 44(ra) -- Store: [0x8000323c]:0x00000001




Last Coverpoint : ['rs1 : x2', 'rs2 : x28', 'rd : x30', 'rs2_val == 18158513697557839871', 'rs1_val == 2199023255552']
Last Code Sequence : 
	-[0x800001e8]:URADD64 t5, sp, t3
	-[0x800001ec]:sw t5, 0(ra)
Current Store : [0x800001f0] : sw t6, 4(ra) -- Store: [0x80003244]:0xFBB6FAB7




Last Coverpoint : ['rs1 : x12', 'rs2 : x6', 'rd : x2', 'rs2_val == 18302628885633695743', 'rs1_val == 18446744073709551599']
Last Code Sequence : 
	-[0x80000208]:URADD64 sp, a2, t1
	-[0x8000020c]:sw sp, 8(ra)
Current Store : [0x80000210] : sw gp, 12(ra) -- Store: [0x8000324c]:0x00000200




Last Coverpoint : ['rs1 : x8', 'rs2 : x4', 'rd : x14', 'rs2_val == 18374686479671623679', 'rs1_val == 18446744073709551607']
Last Code Sequence : 
	-[0x80000228]:URADD64 a4, fp, tp
	-[0x8000022c]:sw a4, 16(ra)
Current Store : [0x80000230] : sw a5, 20(ra) -- Store: [0x80003254]:0xFAB7FBB6




Last Coverpoint : ['rs1 : x30', 'rs2 : x10', 'rd : x26', 'rs2_val == 18410715276690587647']
Last Code Sequence : 
	-[0x80000248]:URADD64 s10, t5, a0
	-[0x8000024c]:sw s10, 24(ra)
Current Store : [0x80000250] : sw s11, 28(ra) -- Store: [0x8000325c]:0xBB6FAB7F




Last Coverpoint : ['rs1 : x14', 'rs2 : x26', 'rd : x8', 'rs2_val == 18428729675200069631', 'rs1_val == 18446744071562067967']
Last Code Sequence : 
	-[0x8000026c]:URADD64 fp, a4, s10
	-[0x80000270]:sw fp, 32(ra)
Current Store : [0x80000274] : sw s1, 36(ra) -- Store: [0x80003264]:0xFFFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x30', 'rd : x28', 'rs2_val == 18437736874454810623', 'rs1_val == 140737488355328']
Last Code Sequence : 
	-[0x8000028c]:URADD64 t3, s2, t5
	-[0x80000290]:sw t3, 40(ra)
Current Store : [0x80000294] : sw t4, 44(ra) -- Store: [0x8000326c]:0xFBFFFFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x12', 'rd : x24', 'rs2_val == 18442240474082181119', 'rs1_val == 18446744073709547519']
Last Code Sequence : 
	-[0x800002b0]:URADD64 s8, s4, a2
	-[0x800002b4]:sw s8, 48(ra)
Current Store : [0x800002b8] : sw s9, 52(ra) -- Store: [0x80003274]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x16', 'rd : x10', 'rs2_val == 18444492273895866367']
Last Code Sequence : 
	-[0x800002d8]:URADD64 a0, t1, a6
	-[0x800002dc]:sw a0, 0(ra)
Current Store : [0x800002e0] : sw a1, 4(ra) -- Store: [0x8000327c]:0xFF7FFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x14', 'rd : x20', 'rs2_val == 18445618173802708991', 'rs1_val == 18446743936270598143']
Last Code Sequence : 
	-[0x800002f8]:URADD64 s4, s10, a4
	-[0x800002fc]:sw s4, 8(ra)
Current Store : [0x80000300] : sw s5, 12(ra) -- Store: [0x80003284]:0xFFFFFFFF




Last Coverpoint : ['rs2_val == 18446181123756130303', 'rs1_val == 18444492273895866367']
Last Code Sequence : 
	-[0x8000031c]:URADD64 t5, t3, s10
	-[0x80000320]:sw t5, 16(ra)
Current Store : [0x80000324] : sw t6, 20(ra) -- Store: [0x8000328c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446462598732840959', 'rs1_val == 35184372088832']
Last Code Sequence : 
	-[0x8000033c]:URADD64 t5, t3, s10
	-[0x80000340]:sw t5, 24(ra)
Current Store : [0x80000344] : sw t6, 28(ra) -- Store: [0x80003294]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446603336221196287', 'rs1_val == 17179869184']
Last Code Sequence : 
	-[0x8000035c]:URADD64 t5, t3, s10
	-[0x80000360]:sw t5, 32(ra)
Current Store : [0x80000364] : sw t6, 36(ra) -- Store: [0x8000329c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446673704965373951', 'rs1_val == 18446743523953737727']
Last Code Sequence : 
	-[0x8000037c]:URADD64 t5, t3, s10
	-[0x80000380]:sw t5, 40(ra)
Current Store : [0x80000384] : sw t6, 44(ra) -- Store: [0x800032a4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446708889337462783', 'rs1_val == 18446739675663040511']
Last Code Sequence : 
	-[0x8000039c]:URADD64 t5, t3, s10
	-[0x800003a0]:sw t5, 48(ra)
Current Store : [0x800003a4] : sw t6, 52(ra) -- Store: [0x800032ac]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446726481523507199']
Last Code Sequence : 
	-[0x800003bc]:URADD64 t5, t3, s10
	-[0x800003c0]:sw t5, 56(ra)
Current Store : [0x800003c4] : sw t6, 60(ra) -- Store: [0x800032b4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446735277616529407', 'rs1_val == 2147483648']
Last Code Sequence : 
	-[0x800003dc]:URADD64 t5, t3, s10
	-[0x800003e0]:sw t5, 64(ra)
Current Store : [0x800003e4] : sw t6, 68(ra) -- Store: [0x800032bc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446739675663040511', 'rs1_val == 524288']
Last Code Sequence : 
	-[0x800003f8]:URADD64 t5, t3, s10
	-[0x800003fc]:sw t5, 72(ra)
Current Store : [0x80000400] : sw t6, 76(ra) -- Store: [0x800032c4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446741874686296063', 'rs1_val == 8796093022208']
Last Code Sequence : 
	-[0x80000418]:URADD64 t5, t3, s10
	-[0x8000041c]:sw t5, 80(ra)
Current Store : [0x80000420] : sw t6, 84(ra) -- Store: [0x800032cc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446742974197923839', 'rs1_val == 18446744073709551583']
Last Code Sequence : 
	-[0x80000434]:URADD64 t5, t3, s10
	-[0x80000438]:sw t5, 88(ra)
Current Store : [0x8000043c] : sw t6, 92(ra) -- Store: [0x800032d4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446743523953737727', 'rs1_val == 32768']
Last Code Sequence : 
	-[0x80000450]:URADD64 t5, t3, s10
	-[0x80000454]:sw t5, 96(ra)
Current Store : [0x80000458] : sw t6, 100(ra) -- Store: [0x800032dc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446743798831644671', 'rs1_val == 1048576']
Last Code Sequence : 
	-[0x8000046c]:URADD64 t5, t3, s10
	-[0x80000470]:sw t5, 104(ra)
Current Store : [0x80000474] : sw t6, 108(ra) -- Store: [0x800032e4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446743936270598143']
Last Code Sequence : 
	-[0x8000048c]:URADD64 t5, t3, s10
	-[0x80000490]:sw t5, 112(ra)
Current Store : [0x80000494] : sw t6, 116(ra) -- Store: [0x800032ec]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744004990074879']
Last Code Sequence : 
	-[0x800004a8]:URADD64 t5, t3, s10
	-[0x800004ac]:sw t5, 120(ra)
Current Store : [0x800004b0] : sw t6, 124(ra) -- Store: [0x800032f4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744039349813247']
Last Code Sequence : 
	-[0x800004c8]:URADD64 t5, t3, s10
	-[0x800004cc]:sw t5, 128(ra)
Current Store : [0x800004d0] : sw t6, 132(ra) -- Store: [0x800032fc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744056529682431', 'rs1_val == 256']
Last Code Sequence : 
	-[0x800004e4]:URADD64 t5, t3, s10
	-[0x800004e8]:sw t5, 136(ra)
Current Store : [0x800004ec] : sw t6, 140(ra) -- Store: [0x80003304]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744065119617023', 'rs1_val == 18446744073441116159']
Last Code Sequence : 
	-[0x80000504]:URADD64 t5, t3, s10
	-[0x80000508]:sw t5, 144(ra)
Current Store : [0x8000050c] : sw t6, 148(ra) -- Store: [0x8000330c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744069414584319', 'rs1_val == 1024']
Last Code Sequence : 
	-[0x80000520]:URADD64 t5, t3, s10
	-[0x80000524]:sw t5, 152(ra)
Current Store : [0x80000528] : sw t6, 156(ra) -- Store: [0x80003314]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744071562067967', 'rs1_val == 9223372036854775807']
Last Code Sequence : 
	-[0x80000544]:URADD64 t5, t3, s10
	-[0x80000548]:sw t5, 160(ra)
Current Store : [0x8000054c] : sw t6, 164(ra) -- Store: [0x8000331c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709550591']
Last Code Sequence : 
	-[0x80000564]:URADD64 t5, t3, s10
	-[0x80000568]:sw t5, 168(ra)
Current Store : [0x8000056c] : sw t6, 172(ra) -- Store: [0x80003324]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073172680703', 'rs1_val == 268435456']
Last Code Sequence : 
	-[0x80000584]:URADD64 t5, t3, s10
	-[0x80000588]:sw t5, 176(ra)
Current Store : [0x8000058c] : sw t6, 180(ra) -- Store: [0x8000332c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073441116159']
Last Code Sequence : 
	-[0x800005a4]:URADD64 t5, t3, s10
	-[0x800005a8]:sw t5, 184(ra)
Current Store : [0x800005ac] : sw t6, 188(ra) -- Store: [0x80003334]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073575333887']
Last Code Sequence : 
	-[0x800005c4]:URADD64 t5, t3, s10
	-[0x800005c8]:sw t5, 192(ra)
Current Store : [0x800005cc] : sw t6, 196(ra) -- Store: [0x8000333c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073642442751', 'rs1_val == 36028797018963968']
Last Code Sequence : 
	-[0x800005e4]:URADD64 t5, t3, s10
	-[0x800005e8]:sw t5, 200(ra)
Current Store : [0x800005ec] : sw t6, 204(ra) -- Store: [0x80003344]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073675997183']
Last Code Sequence : 
	-[0x80000604]:URADD64 t5, t3, s10
	-[0x80000608]:sw t5, 208(ra)
Current Store : [0x8000060c] : sw t6, 212(ra) -- Store: [0x8000334c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073692774399', 'rs1_val == 64']
Last Code Sequence : 
	-[0x80000624]:URADD64 t5, t3, s10
	-[0x80000628]:sw t5, 216(ra)
Current Store : [0x8000062c] : sw t6, 220(ra) -- Store: [0x80003354]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073701163007', 'rs1_val == 8192']
Last Code Sequence : 
	-[0x80000644]:URADD64 t5, t3, s10
	-[0x80000648]:sw t5, 224(ra)
Current Store : [0x8000064c] : sw t6, 228(ra) -- Store: [0x8000335c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073705357311', 'rs1_val == 4096']
Last Code Sequence : 
	-[0x80000664]:URADD64 t5, t3, s10
	-[0x80000668]:sw t5, 232(ra)
Current Store : [0x8000066c] : sw t6, 236(ra) -- Store: [0x80003364]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073707454463', 'rs1_val == 9223372036854775808']
Last Code Sequence : 
	-[0x80000684]:URADD64 t5, t3, s10
	-[0x80000688]:sw t5, 240(ra)
Current Store : [0x8000068c] : sw t6, 244(ra) -- Store: [0x8000336c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073708503039', 'rs1_val == 281474976710656']
Last Code Sequence : 
	-[0x800006a4]:URADD64 t5, t3, s10
	-[0x800006a8]:sw t5, 248(ra)
Current Store : [0x800006ac] : sw t6, 252(ra) -- Store: [0x80003374]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709027327', 'rs1_val == 18446744073709549567']
Last Code Sequence : 
	-[0x800006c8]:URADD64 t5, t3, s10
	-[0x800006cc]:sw t5, 256(ra)
Current Store : [0x800006d0] : sw t6, 260(ra) -- Store: [0x8000337c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709289471']
Last Code Sequence : 
	-[0x800006e8]:URADD64 t5, t3, s10
	-[0x800006ec]:sw t5, 264(ra)
Current Store : [0x800006f0] : sw t6, 268(ra) -- Store: [0x80003384]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709420543']
Last Code Sequence : 
	-[0x80000708]:URADD64 t5, t3, s10
	-[0x8000070c]:sw t5, 272(ra)
Current Store : [0x80000710] : sw t6, 276(ra) -- Store: [0x8000338c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709486079', 'rs1_val == 18446744073709551487']
Last Code Sequence : 
	-[0x80000728]:URADD64 t5, t3, s10
	-[0x8000072c]:sw t5, 280(ra)
Current Store : [0x80000730] : sw t6, 284(ra) -- Store: [0x80003394]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709518847']
Last Code Sequence : 
	-[0x8000074c]:URADD64 t5, t3, s10
	-[0x80000750]:sw t5, 288(ra)
Current Store : [0x80000754] : sw t6, 292(ra) -- Store: [0x8000339c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709535231', 'rs1_val == 18446726481523507199']
Last Code Sequence : 
	-[0x80000770]:URADD64 t5, t3, s10
	-[0x80000774]:sw t5, 296(ra)
Current Store : [0x80000778] : sw t6, 300(ra) -- Store: [0x800033a4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709543423', 'rs1_val == 8388608']
Last Code Sequence : 
	-[0x80000790]:URADD64 t5, t3, s10
	-[0x80000794]:sw t5, 304(ra)
Current Store : [0x80000798] : sw t6, 308(ra) -- Store: [0x800033ac]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709547519']
Last Code Sequence : 
	-[0x800007b0]:URADD64 t5, t3, s10
	-[0x800007b4]:sw t5, 312(ra)
Current Store : [0x800007b8] : sw t6, 316(ra) -- Store: [0x800033b4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709549567', 'rs1_val == 33554432']
Last Code Sequence : 
	-[0x800007d0]:URADD64 t5, t3, s10
	-[0x800007d4]:sw t5, 320(ra)
Current Store : [0x800007d8] : sw t6, 324(ra) -- Store: [0x800033bc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709550591', 'rs1_val == 562949953421312']
Last Code Sequence : 
	-[0x800007ec]:URADD64 t5, t3, s10
	-[0x800007f0]:sw t5, 328(ra)
Current Store : [0x800007f4] : sw t6, 332(ra) -- Store: [0x800033c4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551103', 'rs1_val == 134217728']
Last Code Sequence : 
	-[0x80000808]:URADD64 t5, t3, s10
	-[0x8000080c]:sw t5, 336(ra)
Current Store : [0x80000810] : sw t6, 340(ra) -- Store: [0x800033cc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551359', 'rs1_val == 2']
Last Code Sequence : 
	-[0x80000824]:URADD64 t5, t3, s10
	-[0x80000828]:sw t5, 344(ra)
Current Store : [0x8000082c] : sw t6, 348(ra) -- Store: [0x800033d4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551487', 'rs1_val == 16140901064495857663']
Last Code Sequence : 
	-[0x80000844]:URADD64 t5, t3, s10
	-[0x80000848]:sw t5, 352(ra)
Current Store : [0x8000084c] : sw t6, 356(ra) -- Store: [0x800033dc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551551', 'rs1_val == 8']
Last Code Sequence : 
	-[0x80000860]:URADD64 t5, t3, s10
	-[0x80000864]:sw t5, 360(ra)
Current Store : [0x80000868] : sw t6, 364(ra) -- Store: [0x800033e4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551583', 'rs1_val == 18446744073709551613']
Last Code Sequence : 
	-[0x8000087c]:URADD64 t5, t3, s10
	-[0x80000880]:sw t5, 368(ra)
Current Store : [0x80000884] : sw t6, 372(ra) -- Store: [0x800033ec]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551599']
Last Code Sequence : 
	-[0x8000089c]:URADD64 t5, t3, s10
	-[0x800008a0]:sw t5, 376(ra)
Current Store : [0x800008a4] : sw t6, 380(ra) -- Store: [0x800033f4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551607']
Last Code Sequence : 
	-[0x800008b8]:URADD64 t5, t3, s10
	-[0x800008bc]:sw t5, 384(ra)
Current Store : [0x800008c0] : sw t6, 388(ra) -- Store: [0x800033fc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551611', 'rs1_val == 2048']
Last Code Sequence : 
	-[0x800008d8]:URADD64 t5, t3, s10
	-[0x800008dc]:sw t5, 392(ra)
Current Store : [0x800008e0] : sw t6, 396(ra) -- Store: [0x80003404]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551613', 'rs1_val == 18446744073709551551']
Last Code Sequence : 
	-[0x800008f4]:URADD64 t5, t3, s10
	-[0x800008f8]:sw t5, 400(ra)
Current Store : [0x800008fc] : sw t6, 404(ra) -- Store: [0x8000340c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551614', 'rs1_val == 262144']
Last Code Sequence : 
	-[0x80000910]:URADD64 t5, t3, s10
	-[0x80000914]:sw t5, 408(ra)
Current Store : [0x80000918] : sw t6, 412(ra) -- Store: [0x80003414]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 13835058055282163711', 'rs2_val == 2199023255552']
Last Code Sequence : 
	-[0x80000930]:URADD64 t5, t3, s10
	-[0x80000934]:sw t5, 416(ra)
Current Store : [0x80000938] : sw t6, 420(ra) -- Store: [0x8000341c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 17293822569102704639']
Last Code Sequence : 
	-[0x80000950]:URADD64 t5, t3, s10
	-[0x80000954]:sw t5, 424(ra)
Current Store : [0x80000958] : sw t6, 428(ra) -- Store: [0x80003424]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 17870283321406128127']
Last Code Sequence : 
	-[0x80000970]:URADD64 t5, t3, s10
	-[0x80000974]:sw t5, 432(ra)
Current Store : [0x80000978] : sw t6, 436(ra) -- Store: [0x8000342c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18302628885633695743']
Last Code Sequence : 
	-[0x80000994]:URADD64 t5, t3, s10
	-[0x80000998]:sw t5, 440(ra)
Current Store : [0x8000099c] : sw t6, 444(ra) -- Store: [0x80003434]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18374686479671623679', 'rs2_val == 1024']
Last Code Sequence : 
	-[0x800009b4]:URADD64 t5, t3, s10
	-[0x800009b8]:sw t5, 448(ra)
Current Store : [0x800009bc] : sw t6, 452(ra) -- Store: [0x8000343c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18410715276690587647']
Last Code Sequence : 
	-[0x800009d8]:URADD64 t5, t3, s10
	-[0x800009dc]:sw t5, 456(ra)
Current Store : [0x800009e0] : sw t6, 460(ra) -- Store: [0x80003444]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18428729675200069631', 'rs2_val == 131072']
Last Code Sequence : 
	-[0x800009f8]:URADD64 t5, t3, s10
	-[0x800009fc]:sw t5, 464(ra)
Current Store : [0x80000a00] : sw t6, 468(ra) -- Store: [0x8000344c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18437736874454810623', 'rs2_val == 512']
Last Code Sequence : 
	-[0x80000a18]:URADD64 t5, t3, s10
	-[0x80000a1c]:sw t5, 472(ra)
Current Store : [0x80000a20] : sw t6, 476(ra) -- Store: [0x80003454]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18442240474082181119']
Last Code Sequence : 
	-[0x80000a3c]:URADD64 t5, t3, s10
	-[0x80000a40]:sw t5, 480(ra)
Current Store : [0x80000a44] : sw t6, 484(ra) -- Store: [0x8000345c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18445618173802708991']
Last Code Sequence : 
	-[0x80000a5c]:URADD64 t5, t3, s10
	-[0x80000a60]:sw t5, 488(ra)
Current Store : [0x80000a64] : sw t6, 492(ra) -- Store: [0x80003464]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446462598732840959', 'rs2_val == 134217728']
Last Code Sequence : 
	-[0x80000a7c]:URADD64 t5, t3, s10
	-[0x80000a80]:sw t5, 496(ra)
Current Store : [0x80000a84] : sw t6, 500(ra) -- Store: [0x8000346c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446603336221196287']
Last Code Sequence : 
	-[0x80000aa0]:URADD64 t5, t3, s10
	-[0x80000aa4]:sw t5, 504(ra)
Current Store : [0x80000aa8] : sw t6, 508(ra) -- Store: [0x80003474]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446673704965373951']
Last Code Sequence : 
	-[0x80000ac0]:URADD64 t5, t3, s10
	-[0x80000ac4]:sw t5, 512(ra)
Current Store : [0x80000ac8] : sw t6, 516(ra) -- Store: [0x8000347c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446708889337462783']
Last Code Sequence : 
	-[0x80000ae0]:URADD64 t5, t3, s10
	-[0x80000ae4]:sw t5, 520(ra)
Current Store : [0x80000ae8] : sw t6, 524(ra) -- Store: [0x80003484]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 9223372036854775807', 'rs1_val == 18446735277616529407']
Last Code Sequence : 
	-[0x80000b04]:URADD64 t5, t3, s10
	-[0x80000b08]:sw t5, 528(ra)
Current Store : [0x80000b0c] : sw t6, 532(ra) -- Store: [0x8000348c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446741874686296063', 'rs2_val == 281474976710656']
Last Code Sequence : 
	-[0x80000b20]:URADD64 t5, t3, s10
	-[0x80000b24]:sw t5, 536(ra)
Current Store : [0x80000b28] : sw t6, 540(ra) -- Store: [0x80003494]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446742974197923839', 'rs2_val == 137438953472']
Last Code Sequence : 
	-[0x80000b3c]:URADD64 t5, t3, s10
	-[0x80000b40]:sw t5, 544(ra)
Current Store : [0x80000b44] : sw t6, 548(ra) -- Store: [0x8000349c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 1']
Last Code Sequence : 
	-[0x80000b58]:URADD64 t5, t3, s10
	-[0x80000b5c]:sw t5, 552(ra)
Current Store : [0x80000b60] : sw t6, 556(ra) -- Store: [0x800034a4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 12297829382473034410']
Last Code Sequence : 
	-[0x80000b80]:URADD64 t5, t3, s10
	-[0x80000b84]:sw t5, 560(ra)
Current Store : [0x80000b88] : sw t6, 564(ra) -- Store: [0x800034ac]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073172680703', 'rs2_val == 6148914691236517205']
Last Code Sequence : 
	-[0x80000ba8]:URADD64 t5, t3, s10
	-[0x80000bac]:sw t5, 568(ra)
Current Store : [0x80000bb0] : sw t6, 572(ra) -- Store: [0x800034b4]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 12297829382473034410']
Last Code Sequence : 
	-[0x80000bd0]:URADD64 t5, t3, s10
	-[0x80000bd4]:sw t5, 576(ra)
Current Store : [0x80000bd8] : sw t6, 580(ra) -- Store: [0x800034bc]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 6148914691236517205']
Last Code Sequence : 
	-[0x80000bf8]:URADD64 t5, t3, s10
	-[0x80000bfc]:sw t5, 584(ra)
Current Store : [0x80000c00] : sw t6, 588(ra) -- Store: [0x800034c4]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == (2**64-1)']
Last Code Sequence : 
	-[0x80000c14]:URADD64 t5, t3, s10
	-[0x80000c18]:sw t5, 592(ra)
Current Store : [0x80000c1c] : sw t6, 596(ra) -- Store: [0x800034cc]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 0']
Last Code Sequence : 
	-[0x80000c30]:URADD64 t5, t3, s10
	-[0x80000c34]:sw t5, 600(ra)
Current Store : [0x80000c38] : sw t6, 604(ra) -- Store: [0x800034d4]:0xFFDFFFFF




Last Coverpoint : ['opcode : uradd64', 'rs1 : x28', 'rs2 : x26', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 18446744073172680703', 'rs1_val == 18446744073172680703', 'rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0', 'rs1_val > 0 and rs2_val > 0']
Last Code Sequence : 
	-[0x80000c54]:URADD64 t5, t3, s10
	-[0x80000c58]:sw t5, 608(ra)
Current Store : [0x80000c5c] : sw t6, 612(ra) -- Store: [0x800034dc]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073692774399', 'rs2_val == (2**64-1)']
Last Code Sequence : 
	-[0x80000c74]:URADD64 t5, t3, s10
	-[0x80000c78]:sw t5, 616(ra)
Current Store : [0x80000c7c] : sw t6, 620(ra) -- Store: [0x800034e4]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 137438953472', 'rs2_val == 0']
Last Code Sequence : 
	-[0x80000c90]:URADD64 t5, t3, s10
	-[0x80000c94]:sw t5, 624(ra)
Current Store : [0x80000c98] : sw t6, 628(ra) -- Store: [0x800034ec]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446743798831644671']
Last Code Sequence : 
	-[0x80000cac]:URADD64 t5, t3, s10
	-[0x80000cb0]:sw t5, 632(ra)
Current Store : [0x80000cb4] : sw t6, 636(ra) -- Store: [0x800034f4]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744004990074879', 'rs2_val == 9007199254740992']
Last Code Sequence : 
	-[0x80000cc8]:URADD64 t5, t3, s10
	-[0x80000ccc]:sw t5, 640(ra)
Current Store : [0x80000cd0] : sw t6, 644(ra) -- Store: [0x800034fc]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744039349813247', 'rs2_val == 35184372088832']
Last Code Sequence : 
	-[0x80000ce4]:URADD64 t5, t3, s10
	-[0x80000ce8]:sw t5, 648(ra)
Current Store : [0x80000cec] : sw t6, 652(ra) -- Store: [0x80003504]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744056529682431']
Last Code Sequence : 
	-[0x80000d04]:URADD64 t5, t3, s10
	-[0x80000d08]:sw t5, 656(ra)
Current Store : [0x80000d0c] : sw t6, 660(ra) -- Store: [0x8000350c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744065119617023']
Last Code Sequence : 
	-[0x80000d20]:URADD64 t5, t3, s10
	-[0x80000d24]:sw t5, 664(ra)
Current Store : [0x80000d28] : sw t6, 668(ra) -- Store: [0x80003514]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744069414584319']
Last Code Sequence : 
	-[0x80000d3c]:URADD64 t5, t3, s10
	-[0x80000d40]:sw t5, 672(ra)
Current Store : [0x80000d44] : sw t6, 676(ra) -- Store: [0x8000351c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073575333887']
Last Code Sequence : 
	-[0x80000d5c]:URADD64 t5, t3, s10
	-[0x80000d60]:sw t5, 680(ra)
Current Store : [0x80000d64] : sw t6, 684(ra) -- Store: [0x80003524]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073642442751']
Last Code Sequence : 
	-[0x80000d80]:URADD64 t5, t3, s10
	-[0x80000d84]:sw t5, 688(ra)
Current Store : [0x80000d88] : sw t6, 692(ra) -- Store: [0x8000352c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073675997183']
Last Code Sequence : 
	-[0x80000da0]:URADD64 t5, t3, s10
	-[0x80000da4]:sw t5, 696(ra)
Current Store : [0x80000da8] : sw t6, 700(ra) -- Store: [0x80003534]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073701163007']
Last Code Sequence : 
	-[0x80000dc4]:URADD64 t5, t3, s10
	-[0x80000dc8]:sw t5, 704(ra)
Current Store : [0x80000dcc] : sw t6, 708(ra) -- Store: [0x8000353c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073705357311', 'rs2_val == 1048576']
Last Code Sequence : 
	-[0x80000de4]:URADD64 t5, t3, s10
	-[0x80000de8]:sw t5, 712(ra)
Current Store : [0x80000dec] : sw t6, 716(ra) -- Store: [0x80003544]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073707454463']
Last Code Sequence : 
	-[0x80000e04]:URADD64 t5, t3, s10
	-[0x80000e08]:sw t5, 720(ra)
Current Store : [0x80000e0c] : sw t6, 724(ra) -- Store: [0x8000354c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073708503039']
Last Code Sequence : 
	-[0x80000e28]:URADD64 t5, t3, s10
	-[0x80000e2c]:sw t5, 728(ra)
Current Store : [0x80000e30] : sw t6, 732(ra) -- Store: [0x80003554]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709027327']
Last Code Sequence : 
	-[0x80000e48]:URADD64 t5, t3, s10
	-[0x80000e4c]:sw t5, 736(ra)
Current Store : [0x80000e50] : sw t6, 740(ra) -- Store: [0x8000355c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709289471', 'rs2_val == 536870912']
Last Code Sequence : 
	-[0x80000e68]:URADD64 t5, t3, s10
	-[0x80000e6c]:sw t5, 744(ra)
Current Store : [0x80000e70] : sw t6, 748(ra) -- Store: [0x80003564]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709420543', 'rs2_val == 2147483648']
Last Code Sequence : 
	-[0x80000e88]:URADD64 t5, t3, s10
	-[0x80000e8c]:sw t5, 752(ra)
Current Store : [0x80000e90] : sw t6, 756(ra) -- Store: [0x8000356c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709518847']
Last Code Sequence : 
	-[0x80000ea8]:URADD64 t5, t3, s10
	-[0x80000eac]:sw t5, 760(ra)
Current Store : [0x80000eb0] : sw t6, 764(ra) -- Store: [0x80003574]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709535231', 'rs2_val == 8192']
Last Code Sequence : 
	-[0x80000ec8]:URADD64 t5, t3, s10
	-[0x80000ecc]:sw t5, 768(ra)
Current Store : [0x80000ed0] : sw t6, 772(ra) -- Store: [0x8000357c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709543423']
Last Code Sequence : 
	-[0x80000ee8]:URADD64 t5, t3, s10
	-[0x80000eec]:sw t5, 776(ra)
Current Store : [0x80000ef0] : sw t6, 780(ra) -- Store: [0x80003584]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709551103']
Last Code Sequence : 
	-[0x80000f08]:URADD64 t5, t3, s10
	-[0x80000f0c]:sw t5, 784(ra)
Current Store : [0x80000f10] : sw t6, 788(ra) -- Store: [0x8000358c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709551359', 'rs2_val == 1']
Last Code Sequence : 
	-[0x80000f24]:URADD64 t5, t3, s10
	-[0x80000f28]:sw t5, 792(ra)
Current Store : [0x80000f2c] : sw t6, 796(ra) -- Store: [0x80003594]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709551611', 'rs2_val == 4398046511104']
Last Code Sequence : 
	-[0x80000f40]:URADD64 t5, t3, s10
	-[0x80000f44]:sw t5, 800(ra)
Current Store : [0x80000f48] : sw t6, 804(ra) -- Store: [0x8000359c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 18446744073709551614']
Last Code Sequence : 
	-[0x80000f60]:URADD64 t5, t3, s10
	-[0x80000f64]:sw t5, 808(ra)
Current Store : [0x80000f68] : sw t6, 812(ra) -- Store: [0x800035a4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 9223372036854775808', 'rs1_val == 8589934592']
Last Code Sequence : 
	-[0x80000f7c]:URADD64 t5, t3, s10
	-[0x80000f80]:sw t5, 816(ra)
Current Store : [0x80000f84] : sw t6, 820(ra) -- Store: [0x800035ac]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 4611686018427387904', 'rs1_val == 68719476736']
Last Code Sequence : 
	-[0x80000f98]:URADD64 t5, t3, s10
	-[0x80000f9c]:sw t5, 824(ra)
Current Store : [0x80000fa0] : sw t6, 828(ra) -- Store: [0x800035b4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 2305843009213693952']
Last Code Sequence : 
	-[0x80000fb4]:URADD64 t5, t3, s10
	-[0x80000fb8]:sw t5, 832(ra)
Current Store : [0x80000fbc] : sw t6, 836(ra) -- Store: [0x800035bc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 1152921504606846976']
Last Code Sequence : 
	-[0x80000fd4]:URADD64 t5, t3, s10
	-[0x80000fd8]:sw t5, 840(ra)
Current Store : [0x80000fdc] : sw t6, 844(ra) -- Store: [0x800035c4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 576460752303423488']
Last Code Sequence : 
	-[0x80000ff4]:URADD64 t5, t3, s10
	-[0x80000ff8]:sw t5, 848(ra)
Current Store : [0x80000ffc] : sw t6, 852(ra) -- Store: [0x800035cc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 288230376151711744', 'rs1_val == 2305843009213693952']
Last Code Sequence : 
	-[0x80001010]:URADD64 t5, t3, s10
	-[0x80001014]:sw t5, 856(ra)
Current Store : [0x80001018] : sw t6, 860(ra) -- Store: [0x800035d4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 144115188075855872']
Last Code Sequence : 
	-[0x80001030]:URADD64 t5, t3, s10
	-[0x80001034]:sw t5, 864(ra)
Current Store : [0x80001038] : sw t6, 868(ra) -- Store: [0x800035dc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 72057594037927936']
Last Code Sequence : 
	-[0x80001050]:URADD64 t5, t3, s10
	-[0x80001054]:sw t5, 872(ra)
Current Store : [0x80001058] : sw t6, 876(ra) -- Store: [0x800035e4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 36028797018963968']
Last Code Sequence : 
	-[0x8000106c]:URADD64 t5, t3, s10
	-[0x80001070]:sw t5, 880(ra)
Current Store : [0x80001074] : sw t6, 884(ra) -- Store: [0x800035ec]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 18014398509481984']
Last Code Sequence : 
	-[0x80001090]:URADD64 t5, t3, s10
	-[0x80001094]:sw t5, 888(ra)
Current Store : [0x80001098] : sw t6, 892(ra) -- Store: [0x800035f4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 4503599627370496']
Last Code Sequence : 
	-[0x800010ac]:URADD64 t5, t3, s10
	-[0x800010b0]:sw t5, 896(ra)
Current Store : [0x800010b4] : sw t6, 900(ra) -- Store: [0x800035fc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 2251799813685248']
Last Code Sequence : 
	-[0x800010c8]:URADD64 t5, t3, s10
	-[0x800010cc]:sw t5, 904(ra)
Current Store : [0x800010d0] : sw t6, 908(ra) -- Store: [0x80003604]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 1125899906842624']
Last Code Sequence : 
	-[0x800010e4]:URADD64 t5, t3, s10
	-[0x800010e8]:sw t5, 912(ra)
Current Store : [0x800010ec] : sw t6, 916(ra) -- Store: [0x8000360c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 562949953421312', 'rs1_val == 4398046511104']
Last Code Sequence : 
	-[0x80001100]:URADD64 t5, t3, s10
	-[0x80001104]:sw t5, 920(ra)
Current Store : [0x80001108] : sw t6, 924(ra) -- Store: [0x80003614]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 140737488355328']
Last Code Sequence : 
	-[0x8000111c]:URADD64 t5, t3, s10
	-[0x80001120]:sw t5, 928(ra)
Current Store : [0x80001124] : sw t6, 932(ra) -- Store: [0x8000361c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 70368744177664']
Last Code Sequence : 
	-[0x80001138]:URADD64 t5, t3, s10
	-[0x8000113c]:sw t5, 936(ra)
Current Store : [0x80001140] : sw t6, 940(ra) -- Store: [0x80003624]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 17592186044416', 'rs1_val == 32']
Last Code Sequence : 
	-[0x80001154]:URADD64 t5, t3, s10
	-[0x80001158]:sw t5, 944(ra)
Current Store : [0x8000115c] : sw t6, 948(ra) -- Store: [0x8000362c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 8796093022208', 'rs1_val == 18014398509481984']
Last Code Sequence : 
	-[0x80001174]:URADD64 t5, t3, s10
	-[0x80001178]:sw t5, 952(ra)
Current Store : [0x8000117c] : sw t6, 956(ra) -- Store: [0x80003634]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 1099511627776']
Last Code Sequence : 
	-[0x80001190]:URADD64 t5, t3, s10
	-[0x80001194]:sw t5, 960(ra)
Current Store : [0x80001198] : sw t6, 964(ra) -- Store: [0x8000363c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 549755813888']
Last Code Sequence : 
	-[0x800011ac]:URADD64 t5, t3, s10
	-[0x800011b0]:sw t5, 968(ra)
Current Store : [0x800011b4] : sw t6, 972(ra) -- Store: [0x80003644]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 274877906944']
Last Code Sequence : 
	-[0x800011c8]:URADD64 t5, t3, s10
	-[0x800011cc]:sw t5, 976(ra)
Current Store : [0x800011d0] : sw t6, 980(ra) -- Store: [0x8000364c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 68719476736']
Last Code Sequence : 
	-[0x800011e8]:URADD64 t5, t3, s10
	-[0x800011ec]:sw t5, 984(ra)
Current Store : [0x800011f0] : sw t6, 988(ra) -- Store: [0x80003654]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 34359738368']
Last Code Sequence : 
	-[0x80001204]:URADD64 t5, t3, s10
	-[0x80001208]:sw t5, 992(ra)
Current Store : [0x8000120c] : sw t6, 996(ra) -- Store: [0x8000365c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 17179869184']
Last Code Sequence : 
	-[0x80001220]:URADD64 t5, t3, s10
	-[0x80001224]:sw t5, 1000(ra)
Current Store : [0x80001228] : sw t6, 1004(ra) -- Store: [0x80003664]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 8589934592']
Last Code Sequence : 
	-[0x8000123c]:URADD64 t5, t3, s10
	-[0x80001240]:sw t5, 1008(ra)
Current Store : [0x80001244] : sw t6, 1012(ra) -- Store: [0x8000366c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 4294967296']
Last Code Sequence : 
	-[0x8000125c]:URADD64 t5, t3, s10
	-[0x80001260]:sw t5, 1016(ra)
Current Store : [0x80001264] : sw t6, 1020(ra) -- Store: [0x80003674]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 1073741824']
Last Code Sequence : 
	-[0x80001278]:URADD64 t5, t3, s10
	-[0x8000127c]:sw t5, 1024(ra)
Current Store : [0x80001280] : sw t6, 1028(ra) -- Store: [0x8000367c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 268435456']
Last Code Sequence : 
	-[0x80001298]:URADD64 t5, t3, s10
	-[0x8000129c]:sw t5, 1032(ra)
Current Store : [0x800012a0] : sw t6, 1036(ra) -- Store: [0x80003684]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 67108864']
Last Code Sequence : 
	-[0x800012b4]:URADD64 t5, t3, s10
	-[0x800012b8]:sw t5, 1040(ra)
Current Store : [0x800012bc] : sw t6, 1044(ra) -- Store: [0x8000368c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x800012d4]:URADD64 t5, t3, s10
	-[0x800012d8]:sw t5, 1048(ra)
Current Store : [0x800012dc] : sw t6, 1052(ra) -- Store: [0x80003694]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 16777216', 'rs1_val == 67108864']
Last Code Sequence : 
	-[0x800012f0]:URADD64 t5, t3, s10
	-[0x800012f4]:sw t5, 1056(ra)
Current Store : [0x800012f8] : sw t6, 1060(ra) -- Store: [0x8000369c]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 8388608', 'rs1_val == 16']
Last Code Sequence : 
	-[0x8000130c]:URADD64 t5, t3, s10
	-[0x80001310]:sw t5, 1064(ra)
Current Store : [0x80001314] : sw t6, 1068(ra) -- Store: [0x800036a4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 4194304']
Last Code Sequence : 
	-[0x8000132c]:URADD64 t5, t3, s10
	-[0x80001330]:sw t5, 1072(ra)
Current Store : [0x80001334] : sw t6, 1076(ra) -- Store: [0x800036ac]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x8000134c]:URADD64 t5, t3, s10
	-[0x80001350]:sw t5, 1080(ra)
Current Store : [0x80001354] : sw t6, 1084(ra) -- Store: [0x800036b4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 524288']
Last Code Sequence : 
	-[0x8000136c]:URADD64 t5, t3, s10
	-[0x80001370]:sw t5, 1088(ra)
Current Store : [0x80001374] : sw t6, 1092(ra) -- Store: [0x800036bc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 262144']
Last Code Sequence : 
	-[0x8000138c]:URADD64 t5, t3, s10
	-[0x80001390]:sw t5, 1096(ra)
Current Store : [0x80001394] : sw t6, 1100(ra) -- Store: [0x800036c4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 65536']
Last Code Sequence : 
	-[0x800013a8]:URADD64 t5, t3, s10
	-[0x800013ac]:sw t5, 1104(ra)
Current Store : [0x800013b0] : sw t6, 1108(ra) -- Store: [0x800036cc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 32768', 'rs1_val == 17592186044416']
Last Code Sequence : 
	-[0x800013c4]:URADD64 t5, t3, s10
	-[0x800013c8]:sw t5, 1112(ra)
Current Store : [0x800013cc] : sw t6, 1116(ra) -- Store: [0x800036d4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x800013e0]:URADD64 t5, t3, s10
	-[0x800013e4]:sw t5, 1120(ra)
Current Store : [0x800013e8] : sw t6, 1124(ra) -- Store: [0x800036dc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 4096', 'rs1_val == 1073741824']
Last Code Sequence : 
	-[0x800013fc]:URADD64 t5, t3, s10
	-[0x80001400]:sw t5, 1128(ra)
Current Store : [0x80001404] : sw t6, 1132(ra) -- Store: [0x800036e4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 2048']
Last Code Sequence : 
	-[0x8000141c]:URADD64 t5, t3, s10
	-[0x80001420]:sw t5, 1136(ra)
Current Store : [0x80001424] : sw t6, 1140(ra) -- Store: [0x800036ec]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x8000143c]:URADD64 t5, t3, s10
	-[0x80001440]:sw t5, 1144(ra)
Current Store : [0x80001444] : sw t6, 1148(ra) -- Store: [0x800036f4]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 4611686018427387904']
Last Code Sequence : 
	-[0x80001458]:URADD64 t5, t3, s10
	-[0x8000145c]:sw t5, 1152(ra)
Current Store : [0x80001460] : sw t6, 1156(ra) -- Store: [0x800036fc]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 1152921504606846976']
Last Code Sequence : 
	-[0x80001474]:URADD64 t5, t3, s10
	-[0x80001478]:sw t5, 1160(ra)
Current Store : [0x8000147c] : sw t6, 1164(ra) -- Store: [0x80003704]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 576460752303423488']
Last Code Sequence : 
	-[0x80001494]:URADD64 t5, t3, s10
	-[0x80001498]:sw t5, 1168(ra)
Current Store : [0x8000149c] : sw t6, 1172(ra) -- Store: [0x8000370c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 288230376151711744']
Last Code Sequence : 
	-[0x800014b0]:URADD64 t5, t3, s10
	-[0x800014b4]:sw t5, 1176(ra)
Current Store : [0x800014b8] : sw t6, 1180(ra) -- Store: [0x80003714]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 144115188075855872']
Last Code Sequence : 
	-[0x800014d0]:URADD64 t5, t3, s10
	-[0x800014d4]:sw t5, 1184(ra)
Current Store : [0x800014d8] : sw t6, 1188(ra) -- Store: [0x8000371c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 72057594037927936']
Last Code Sequence : 
	-[0x800014f0]:URADD64 t5, t3, s10
	-[0x800014f4]:sw t5, 1192(ra)
Current Store : [0x800014f8] : sw t6, 1196(ra) -- Store: [0x80003724]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 9007199254740992']
Last Code Sequence : 
	-[0x80001510]:URADD64 t5, t3, s10
	-[0x80001514]:sw t5, 1200(ra)
Current Store : [0x80001518] : sw t6, 1204(ra) -- Store: [0x8000372c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 4503599627370496']
Last Code Sequence : 
	-[0x80001530]:URADD64 t5, t3, s10
	-[0x80001534]:sw t5, 1208(ra)
Current Store : [0x80001538] : sw t6, 1212(ra) -- Store: [0x80003734]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 2251799813685248']
Last Code Sequence : 
	-[0x80001550]:URADD64 t5, t3, s10
	-[0x80001554]:sw t5, 1216(ra)
Current Store : [0x80001558] : sw t6, 1220(ra) -- Store: [0x8000373c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 1125899906842624']
Last Code Sequence : 
	-[0x8000156c]:URADD64 t5, t3, s10
	-[0x80001570]:sw t5, 1224(ra)
Current Store : [0x80001574] : sw t6, 1228(ra) -- Store: [0x80003744]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 70368744177664']
Last Code Sequence : 
	-[0x8000158c]:URADD64 t5, t3, s10
	-[0x80001590]:sw t5, 1232(ra)
Current Store : [0x80001594] : sw t6, 1236(ra) -- Store: [0x8000374c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 1099511627776']
Last Code Sequence : 
	-[0x800015a8]:URADD64 t5, t3, s10
	-[0x800015ac]:sw t5, 1240(ra)
Current Store : [0x800015b0] : sw t6, 1244(ra) -- Store: [0x80003754]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 16', 'rs1_val == 4']
Last Code Sequence : 
	-[0x800015c4]:URADD64 t5, t3, s10
	-[0x800015c8]:sw t5, 1248(ra)
Current Store : [0x800015cc] : sw t6, 1252(ra) -- Store: [0x8000375c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 549755813888']
Last Code Sequence : 
	-[0x800015e4]:URADD64 t5, t3, s10
	-[0x800015e8]:sw t5, 1256(ra)
Current Store : [0x800015ec] : sw t6, 1260(ra) -- Store: [0x80003764]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 274877906944']
Last Code Sequence : 
	-[0x80001600]:URADD64 t5, t3, s10
	-[0x80001604]:sw t5, 1264(ra)
Current Store : [0x80001608] : sw t6, 1268(ra) -- Store: [0x8000376c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 536870912']
Last Code Sequence : 
	-[0x80001620]:URADD64 t5, t3, s10
	-[0x80001624]:sw t5, 1272(ra)
Current Store : [0x80001628] : sw t6, 1276(ra) -- Store: [0x80003774]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 16777216']
Last Code Sequence : 
	-[0x8000163c]:URADD64 t5, t3, s10
	-[0x80001640]:sw t5, 1280(ra)
Current Store : [0x80001644] : sw t6, 1284(ra) -- Store: [0x8000377c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 4194304']
Last Code Sequence : 
	-[0x80001658]:URADD64 t5, t3, s10
	-[0x8000165c]:sw t5, 1288(ra)
Current Store : [0x80001660] : sw t6, 1292(ra) -- Store: [0x80003784]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 32', 'rs1_val == 2097152']
Last Code Sequence : 
	-[0x80001674]:URADD64 t5, t3, s10
	-[0x80001678]:sw t5, 1296(ra)
Current Store : [0x8000167c] : sw t6, 1300(ra) -- Store: [0x8000378c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 131072']
Last Code Sequence : 
	-[0x80001690]:URADD64 t5, t3, s10
	-[0x80001694]:sw t5, 1304(ra)
Current Store : [0x80001698] : sw t6, 1308(ra) -- Store: [0x80003794]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 65536']
Last Code Sequence : 
	-[0x800016b0]:URADD64 t5, t3, s10
	-[0x800016b4]:sw t5, 1312(ra)
Current Store : [0x800016b8] : sw t6, 1316(ra) -- Store: [0x8000379c]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 16384']
Last Code Sequence : 
	-[0x800016cc]:URADD64 t5, t3, s10
	-[0x800016d0]:sw t5, 1320(ra)
Current Store : [0x800016d4] : sw t6, 1324(ra) -- Store: [0x800037a4]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 512']
Last Code Sequence : 
	-[0x800016e8]:URADD64 t5, t3, s10
	-[0x800016ec]:sw t5, 1328(ra)
Current Store : [0x800016f0] : sw t6, 1332(ra) -- Store: [0x800037ac]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 8']
Last Code Sequence : 
	-[0x80001704]:URADD64 t5, t3, s10
	-[0x80001708]:sw t5, 1336(ra)
Current Store : [0x8000170c] : sw t6, 1340(ra) -- Store: [0x800037b4]:0xFFDFFFFF




Last Coverpoint : ['opcode : uradd64', 'rs1 : x28', 'rs2 : x26', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0', 'rs2_val == 128', 'rs1_val == 536870912', 'rs1_val > 0 and rs2_val > 0']
Last Code Sequence : 
	-[0x80001720]:URADD64 t5, t3, s10
	-[0x80001724]:sw t5, 1344(ra)
Current Store : [0x80001728] : sw t6, 1348(ra) -- Store: [0x800037bc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 64']
Last Code Sequence : 
	-[0x80001740]:URADD64 t5, t3, s10
	-[0x80001744]:sw t5, 1352(ra)
Current Store : [0x80001748] : sw t6, 1356(ra) -- Store: [0x800037c4]:0xFFDFFFFF




Last Coverpoint : ['rs1_val == 34359738368']
Last Code Sequence : 
	-[0x80001760]:URADD64 t5, t3, s10
	-[0x80001764]:sw t5, 1360(ra)
Current Store : [0x80001768] : sw t6, 1364(ra) -- Store: [0x800037cc]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x8000177c]:URADD64 t5, t3, s10
	-[0x80001780]:sw t5, 1368(ra)
Current Store : [0x80001784] : sw t6, 1372(ra) -- Store: [0x800037d4]:0xFFDFFFFF




Last Coverpoint : ['rs2_val == 2']
Last Code Sequence : 
	-[0x80001798]:URADD64 t5, t3, s10
	-[0x8000179c]:sw t5, 1376(ra)
Current Store : [0x800017a0] : sw t6, 1380(ra) -- Store: [0x800037dc]:0xFFDFFFFF




Last Coverpoint : ['opcode : uradd64', 'rs1 : x28', 'rs2 : x26', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0', 'rs1_val == 18446744072635809791', 'rs2_val == 1', 'rs1_val > 0 and rs2_val > 0']
Last Code Sequence : 
	-[0x800017b8]:URADD64 t5, t3, s10
	-[0x800017bc]:sw t5, 1384(ra)
Current Store : [0x800017c0] : sw t6, 1388(ra) -- Store: [0x800037e4]:0xFFDFFFFF





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

|s.no|        signature         |                                                                                                                            coverpoints                                                                                                                             |                                 code                                 |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xBFFFFFFF|- opcode : uradd64<br> - rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs2_val == 18446744072635809791<br> - rs1_val == 18446744072635809791<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br> |[0x80000118]:URADD64 s6, s6, s6<br> [0x8000011c]:sw s6, 0(ra)<br>     |
|   2|[0x80003218]<br>0x00000080|- rs1 : x24<br> - rs2 : x24<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs2_val == 128<br> - rs1_val == 128<br>                                                                                                                                                     |[0x80000134]:URADD64 a2, s8, s8<br> [0x80000138]:sw a2, 8(ra)<br>     |
|   3|[0x80003220]<br>0x7FFFFFFF|- rs1 : x16<br> - rs2 : x8<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 13835058055282163711<br> - rs1_val == 4294967296<br>                                               |[0x80000154]:URADD64 t1, a6, fp<br> [0x80000158]:sw t1, 16(ra)<br>    |
|   4|[0x80003228]<br>0xFFFFFFFF|- rs1 : x28<br> - rs2 : x18<br> - rd : x18<br> - rs2 == rd != rs1<br> - rs2_val == 16140901064495857663<br> - rs1_val == 18446181123756130303<br>                                                                                                                   |[0x80000178]:URADD64 s2, t3, s2<br> [0x8000017c]:sw s2, 24(ra)<br>    |
|   5|[0x80003230]<br>0xFFFFFFFF|- rs1 : x4<br> - rs2 : x20<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs2_val == 17293822569102704639<br> - rs1_val == 18158513697557839871<br>                                                                                                                     |[0x8000019c]:URADD64 tp, tp, s4<br> [0x800001a0]:sw tp, 32(ra)<br>    |
|   6|[0x80003238]<br>0xFFFF7FFF|- rs1 : x10<br> - rs2 : x2<br> - rd : x16<br> - rs2_val == 17870283321406128127<br> - rs1_val == 18446744073709486079<br>                                                                                                                                           |[0x800001c0]:URADD64 a6, a0, sp<br> [0x800001c4]:sw a6, 40(ra)<br>    |
|   7|[0x80003240]<br>0xFFFFFFFF|- rs1 : x2<br> - rs2 : x28<br> - rd : x30<br> - rs2_val == 18158513697557839871<br> - rs1_val == 2199023255552<br>                                                                                                                                                  |[0x800001e8]:URADD64 t5, sp, t3<br> [0x800001ec]:sw t5, 0(ra)<br>     |
|   8|[0x80003248]<br>0xFFFFFFF7|- rs1 : x12<br> - rs2 : x6<br> - rd : x2<br> - rs2_val == 18302628885633695743<br> - rs1_val == 18446744073709551599<br>                                                                                                                                            |[0x80000208]:URADD64 sp, a2, t1<br> [0x8000020c]:sw sp, 8(ra)<br>     |
|   9|[0x80003250]<br>0xFFFFFFFB|- rs1 : x8<br> - rs2 : x4<br> - rd : x14<br> - rs2_val == 18374686479671623679<br> - rs1_val == 18446744073709551607<br>                                                                                                                                            |[0x80000228]:URADD64 a4, fp, tp<br> [0x8000022c]:sw a4, 16(ra)<br>    |
|  10|[0x80003258]<br>0x00000006|- rs1 : x30<br> - rs2 : x10<br> - rd : x26<br> - rs2_val == 18410715276690587647<br>                                                                                                                                                                                |[0x80000248]:URADD64 s10, t5, a0<br> [0x8000024c]:sw s10, 24(ra)<br>  |
|  11|[0x80003260]<br>0xBFFFFFFF|- rs1 : x14<br> - rs2 : x26<br> - rd : x8<br> - rs2_val == 18428729675200069631<br> - rs1_val == 18446744071562067967<br>                                                                                                                                           |[0x8000026c]:URADD64 fp, a4, s10<br> [0x80000270]:sw fp, 32(ra)<br>   |
|  12|[0x80003268]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x30<br> - rd : x28<br> - rs2_val == 18437736874454810623<br> - rs1_val == 140737488355328<br>                                                                                                                                               |[0x8000028c]:URADD64 t3, s2, t5<br> [0x80000290]:sw t3, 40(ra)<br>    |
|  13|[0x80003270]<br>0xFFFFF7FF|- rs1 : x20<br> - rs2 : x12<br> - rd : x24<br> - rs2_val == 18442240474082181119<br> - rs1_val == 18446744073709547519<br>                                                                                                                                          |[0x800002b0]:URADD64 s8, s4, a2<br> [0x800002b4]:sw s8, 48(ra)<br>    |
|  14|[0x80003278]<br>0x00000005|- rs1 : x6<br> - rs2 : x16<br> - rd : x10<br> - rs2_val == 18444492273895866367<br>                                                                                                                                                                                 |[0x800002d8]:URADD64 a0, t1, a6<br> [0x800002dc]:sw a0, 0(ra)<br>     |
|  15|[0x80003280]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x14<br> - rd : x20<br> - rs2_val == 18445618173802708991<br> - rs1_val == 18446743936270598143<br>                                                                                                                                          |[0x800002f8]:URADD64 s4, s10, a4<br> [0x800002fc]:sw s4, 8(ra)<br>    |
|  16|[0x80003288]<br>0xFFFFFFFF|- rs2_val == 18446181123756130303<br> - rs1_val == 18444492273895866367<br>                                                                                                                                                                                         |[0x8000031c]:URADD64 t5, t3, s10<br> [0x80000320]:sw t5, 16(ra)<br>   |
|  17|[0x80003290]<br>0xFFFFFFFF|- rs2_val == 18446462598732840959<br> - rs1_val == 35184372088832<br>                                                                                                                                                                                               |[0x8000033c]:URADD64 t5, t3, s10<br> [0x80000340]:sw t5, 24(ra)<br>   |
|  18|[0x80003298]<br>0xFFFFFFFF|- rs2_val == 18446603336221196287<br> - rs1_val == 17179869184<br>                                                                                                                                                                                                  |[0x8000035c]:URADD64 t5, t3, s10<br> [0x80000360]:sw t5, 32(ra)<br>   |
|  19|[0x800032a0]<br>0xFFFFFFFF|- rs2_val == 18446673704965373951<br> - rs1_val == 18446743523953737727<br>                                                                                                                                                                                         |[0x8000037c]:URADD64 t5, t3, s10<br> [0x80000380]:sw t5, 40(ra)<br>   |
|  20|[0x800032a8]<br>0xFFFFFFFF|- rs2_val == 18446708889337462783<br> - rs1_val == 18446739675663040511<br>                                                                                                                                                                                         |[0x8000039c]:URADD64 t5, t3, s10<br> [0x800003a0]:sw t5, 48(ra)<br>   |
|  21|[0x800032b0]<br>0x00000003|- rs2_val == 18446726481523507199<br>                                                                                                                                                                                                                               |[0x800003bc]:URADD64 t5, t3, s10<br> [0x800003c0]:sw t5, 56(ra)<br>   |
|  22|[0x800032b8]<br>0x3FFFFFFF|- rs2_val == 18446735277616529407<br> - rs1_val == 2147483648<br>                                                                                                                                                                                                   |[0x800003dc]:URADD64 t5, t3, s10<br> [0x800003e0]:sw t5, 64(ra)<br>   |
|  23|[0x800032c0]<br>0x0003FFFF|- rs2_val == 18446739675663040511<br> - rs1_val == 524288<br>                                                                                                                                                                                                       |[0x800003f8]:URADD64 t5, t3, s10<br> [0x800003fc]:sw t5, 72(ra)<br>   |
|  24|[0x800032c8]<br>0xFFFFFFFF|- rs2_val == 18446741874686296063<br> - rs1_val == 8796093022208<br>                                                                                                                                                                                                |[0x80000418]:URADD64 t5, t3, s10<br> [0x8000041c]:sw t5, 80(ra)<br>   |
|  25|[0x800032d0]<br>0xFFFFFFEF|- rs2_val == 18446742974197923839<br> - rs1_val == 18446744073709551583<br>                                                                                                                                                                                         |[0x80000434]:URADD64 t5, t3, s10<br> [0x80000438]:sw t5, 88(ra)<br>   |
|  26|[0x800032d8]<br>0x00003FFF|- rs2_val == 18446743523953737727<br> - rs1_val == 32768<br>                                                                                                                                                                                                        |[0x80000450]:URADD64 t5, t3, s10<br> [0x80000454]:sw t5, 96(ra)<br>   |
|  27|[0x800032e0]<br>0x0007FFFF|- rs2_val == 18446743798831644671<br> - rs1_val == 1048576<br>                                                                                                                                                                                                      |[0x8000046c]:URADD64 t5, t3, s10<br> [0x80000470]:sw t5, 104(ra)<br>  |
|  28|[0x800032e8]<br>0xFFFFF7FF|- rs2_val == 18446743936270598143<br>                                                                                                                                                                                                                               |[0x8000048c]:URADD64 t5, t3, s10<br> [0x80000490]:sw t5, 112(ra)<br>  |
|  29|[0x800032f0]<br>0x00000007|- rs2_val == 18446744004990074879<br>                                                                                                                                                                                                                               |[0x800004a8]:URADD64 t5, t3, s10<br> [0x800004ac]:sw t5, 120(ra)<br>  |
|  30|[0x800032f8]<br>0xBFFFFFFF|- rs2_val == 18446744039349813247<br>                                                                                                                                                                                                                               |[0x800004c8]:URADD64 t5, t3, s10<br> [0x800004cc]:sw t5, 128(ra)<br>  |
|  31|[0x80003300]<br>0x0000007F|- rs2_val == 18446744056529682431<br> - rs1_val == 256<br>                                                                                                                                                                                                          |[0x800004e4]:URADD64 t5, t3, s10<br> [0x800004e8]:sw t5, 136(ra)<br>  |
|  32|[0x80003308]<br>0xF7FFFFFF|- rs2_val == 18446744065119617023<br> - rs1_val == 18446744073441116159<br>                                                                                                                                                                                         |[0x80000504]:URADD64 t5, t3, s10<br> [0x80000508]:sw t5, 144(ra)<br>  |
|  33|[0x80003310]<br>0x800001FF|- rs2_val == 18446744069414584319<br> - rs1_val == 1024<br>                                                                                                                                                                                                         |[0x80000520]:URADD64 t5, t3, s10<br> [0x80000524]:sw t5, 152(ra)<br>  |
|  34|[0x80003318]<br>0xBFFFFFFF|- rs2_val == 18446744071562067967<br> - rs1_val == 9223372036854775807<br>                                                                                                                                                                                          |[0x80000544]:URADD64 t5, t3, s10<br> [0x80000548]:sw t5, 160(ra)<br>  |
|  35|[0x80003320]<br>0xDFFFFDFF|- rs1_val == 18446744073709550591<br>                                                                                                                                                                                                                               |[0x80000564]:URADD64 t5, t3, s10<br> [0x80000568]:sw t5, 168(ra)<br>  |
|  36|[0x80003328]<br>0xF7FFFFFF|- rs2_val == 18446744073172680703<br> - rs1_val == 268435456<br>                                                                                                                                                                                                    |[0x80000584]:URADD64 t5, t3, s10<br> [0x80000588]:sw t5, 176(ra)<br>  |
|  37|[0x80003330]<br>0xF8000005|- rs2_val == 18446744073441116159<br>                                                                                                                                                                                                                               |[0x800005a4]:URADD64 t5, t3, s10<br> [0x800005a8]:sw t5, 184(ra)<br>  |
|  38|[0x80003338]<br>0xFBFFFFFF|- rs2_val == 18446744073575333887<br>                                                                                                                                                                                                                               |[0x800005c4]:URADD64 t5, t3, s10<br> [0x800005c8]:sw t5, 192(ra)<br>  |
|  39|[0x80003340]<br>0xFDFFFFFF|- rs2_val == 18446744073642442751<br> - rs1_val == 36028797018963968<br>                                                                                                                                                                                            |[0x800005e4]:URADD64 t5, t3, s10<br> [0x800005e8]:sw t5, 200(ra)<br>  |
|  40|[0x80003348]<br>0xFEFFFFEF|- rs2_val == 18446744073675997183<br>                                                                                                                                                                                                                               |[0x80000604]:URADD64 t5, t3, s10<br> [0x80000608]:sw t5, 208(ra)<br>  |
|  41|[0x80003350]<br>0xFF80001F|- rs2_val == 18446744073692774399<br> - rs1_val == 64<br>                                                                                                                                                                                                           |[0x80000624]:URADD64 t5, t3, s10<br> [0x80000628]:sw t5, 216(ra)<br>  |
|  42|[0x80003358]<br>0xFFC00FFF|- rs2_val == 18446744073701163007<br> - rs1_val == 8192<br>                                                                                                                                                                                                         |[0x80000644]:URADD64 t5, t3, s10<br> [0x80000648]:sw t5, 224(ra)<br>  |
|  43|[0x80003360]<br>0xFFE007FF|- rs2_val == 18446744073705357311<br> - rs1_val == 4096<br>                                                                                                                                                                                                         |[0x80000664]:URADD64 t5, t3, s10<br> [0x80000668]:sw t5, 232(ra)<br>  |
|  44|[0x80003368]<br>0xFFEFFFFF|- rs2_val == 18446744073707454463<br> - rs1_val == 9223372036854775808<br>                                                                                                                                                                                          |[0x80000684]:URADD64 t5, t3, s10<br> [0x80000688]:sw t5, 240(ra)<br>  |
|  45|[0x80003370]<br>0xFFF7FFFF|- rs2_val == 18446744073708503039<br> - rs1_val == 281474976710656<br>                                                                                                                                                                                              |[0x800006a4]:URADD64 t5, t3, s10<br> [0x800006a8]:sw t5, 248(ra)<br>  |
|  46|[0x80003378]<br>0xFFFBFBFF|- rs2_val == 18446744073709027327<br> - rs1_val == 18446744073709549567<br>                                                                                                                                                                                         |[0x800006c8]:URADD64 t5, t3, s10<br> [0x800006cc]:sw t5, 256(ra)<br>  |
|  47|[0x80003380]<br>0xFFFDFFFF|- rs2_val == 18446744073709289471<br>                                                                                                                                                                                                                               |[0x800006e8]:URADD64 t5, t3, s10<br> [0x800006ec]:sw t5, 264(ra)<br>  |
|  48|[0x80003388]<br>0xFFFF0001|- rs2_val == 18446744073709420543<br>                                                                                                                                                                                                                               |[0x80000708]:URADD64 t5, t3, s10<br> [0x8000070c]:sw t5, 272(ra)<br>  |
|  49|[0x80003390]<br>0xFFFF7FBF|- rs2_val == 18446744073709486079<br> - rs1_val == 18446744073709551487<br>                                                                                                                                                                                         |[0x80000728]:URADD64 t5, t3, s10<br> [0x8000072c]:sw t5, 280(ra)<br>  |
|  50|[0x80003398]<br>0xFFFFB7FF|- rs2_val == 18446744073709518847<br>                                                                                                                                                                                                                               |[0x8000074c]:URADD64 t5, t3, s10<br> [0x80000750]:sw t5, 288(ra)<br>  |
|  51|[0x800033a0]<br>0xFFFFDFFF|- rs2_val == 18446744073709535231<br> - rs1_val == 18446726481523507199<br>                                                                                                                                                                                         |[0x80000770]:URADD64 t5, t3, s10<br> [0x80000774]:sw t5, 296(ra)<br>  |
|  52|[0x800033a8]<br>0x003FEFFF|- rs2_val == 18446744073709543423<br> - rs1_val == 8388608<br>                                                                                                                                                                                                      |[0x80000790]:URADD64 t5, t3, s10<br> [0x80000794]:sw t5, 304(ra)<br>  |
|  53|[0x800033b0]<br>0xFFFFF9FF|- rs2_val == 18446744073709547519<br>                                                                                                                                                                                                                               |[0x800007b0]:URADD64 t5, t3, s10<br> [0x800007b4]:sw t5, 312(ra)<br>  |
|  54|[0x800033b8]<br>0x00FFFBFF|- rs2_val == 18446744073709549567<br> - rs1_val == 33554432<br>                                                                                                                                                                                                     |[0x800007d0]:URADD64 t5, t3, s10<br> [0x800007d4]:sw t5, 320(ra)<br>  |
|  55|[0x800033c0]<br>0xFFFFFDFF|- rs2_val == 18446744073709550591<br> - rs1_val == 562949953421312<br>                                                                                                                                                                                              |[0x800007ec]:URADD64 t5, t3, s10<br> [0x800007f0]:sw t5, 328(ra)<br>  |
|  56|[0x800033c8]<br>0x03FFFEFF|- rs2_val == 18446744073709551103<br> - rs1_val == 134217728<br>                                                                                                                                                                                                    |[0x80000808]:URADD64 t5, t3, s10<br> [0x8000080c]:sw t5, 336(ra)<br>  |
|  57|[0x800033d0]<br>0xFFFFFF80|- rs2_val == 18446744073709551359<br> - rs1_val == 2<br>                                                                                                                                                                                                            |[0x80000824]:URADD64 t5, t3, s10<br> [0x80000828]:sw t5, 344(ra)<br>  |
|  58|[0x800033d8]<br>0xFFFFFFBF|- rs2_val == 18446744073709551487<br> - rs1_val == 16140901064495857663<br>                                                                                                                                                                                         |[0x80000844]:URADD64 t5, t3, s10<br> [0x80000848]:sw t5, 352(ra)<br>  |
|  59|[0x800033e0]<br>0xFFFFFFE3|- rs2_val == 18446744073709551551<br> - rs1_val == 8<br>                                                                                                                                                                                                            |[0x80000860]:URADD64 t5, t3, s10<br> [0x80000864]:sw t5, 360(ra)<br>  |
|  60|[0x800033e8]<br>0xFFFFFFEE|- rs2_val == 18446744073709551583<br> - rs1_val == 18446744073709551613<br>                                                                                                                                                                                         |[0x8000087c]:URADD64 t5, t3, s10<br> [0x80000880]:sw t5, 368(ra)<br>  |
|  61|[0x800033f0]<br>0xFFFFFFF7|- rs2_val == 18446744073709551599<br>                                                                                                                                                                                                                               |[0x8000089c]:URADD64 t5, t3, s10<br> [0x800008a0]:sw t5, 376(ra)<br>  |
|  62|[0x800033f8]<br>0x0000007B|- rs2_val == 18446744073709551607<br>                                                                                                                                                                                                                               |[0x800008b8]:URADD64 t5, t3, s10<br> [0x800008bc]:sw t5, 384(ra)<br>  |
|  63|[0x80003400]<br>0x000003FD|- rs2_val == 18446744073709551611<br> - rs1_val == 2048<br>                                                                                                                                                                                                         |[0x800008d8]:URADD64 t5, t3, s10<br> [0x800008dc]:sw t5, 392(ra)<br>  |
|  64|[0x80003408]<br>0xFFFFFFDE|- rs2_val == 18446744073709551613<br> - rs1_val == 18446744073709551551<br>                                                                                                                                                                                         |[0x800008f4]:URADD64 t5, t3, s10<br> [0x800008f8]:sw t5, 400(ra)<br>  |
|  65|[0x80003410]<br>0x0001FFFF|- rs2_val == 18446744073709551614<br> - rs1_val == 262144<br>                                                                                                                                                                                                       |[0x80000910]:URADD64 t5, t3, s10<br> [0x80000914]:sw t5, 408(ra)<br>  |
|  66|[0x80003418]<br>0xFFFFFFFF|- rs1_val == 13835058055282163711<br> - rs2_val == 2199023255552<br>                                                                                                                                                                                                |[0x80000930]:URADD64 t5, t3, s10<br> [0x80000934]:sw t5, 416(ra)<br>  |
|  67|[0x80003420]<br>0x00000009|- rs1_val == 17293822569102704639<br>                                                                                                                                                                                                                               |[0x80000950]:URADD64 t5, t3, s10<br> [0x80000954]:sw t5, 424(ra)<br>  |
|  68|[0x80003428]<br>0xFFFFFEFF|- rs1_val == 17870283321406128127<br>                                                                                                                                                                                                                               |[0x80000970]:URADD64 t5, t3, s10<br> [0x80000974]:sw t5, 432(ra)<br>  |
|  69|[0x80003430]<br>0xFFBFFFFF|- rs1_val == 18302628885633695743<br>                                                                                                                                                                                                                               |[0x80000994]:URADD64 t5, t3, s10<br> [0x80000998]:sw t5, 440(ra)<br>  |
|  70|[0x80003438]<br>0x000001FF|- rs1_val == 18374686479671623679<br> - rs2_val == 1024<br>                                                                                                                                                                                                         |[0x800009b4]:URADD64 t5, t3, s10<br> [0x800009b8]:sw t5, 448(ra)<br>  |
|  71|[0x80003440]<br>0xFFFFFFFF|- rs1_val == 18410715276690587647<br>                                                                                                                                                                                                                               |[0x800009d8]:URADD64 t5, t3, s10<br> [0x800009dc]:sw t5, 456(ra)<br>  |
|  72|[0x80003448]<br>0x0000FFFF|- rs1_val == 18428729675200069631<br> - rs2_val == 131072<br>                                                                                                                                                                                                       |[0x800009f8]:URADD64 t5, t3, s10<br> [0x800009fc]:sw t5, 464(ra)<br>  |
|  73|[0x80003450]<br>0x000000FF|- rs1_val == 18437736874454810623<br> - rs2_val == 512<br>                                                                                                                                                                                                          |[0x80000a18]:URADD64 t5, t3, s10<br> [0x80000a1c]:sw t5, 472(ra)<br>  |
|  74|[0x80003458]<br>0xFFFFFFFF|- rs1_val == 18442240474082181119<br>                                                                                                                                                                                                                               |[0x80000a3c]:URADD64 t5, t3, s10<br> [0x80000a40]:sw t5, 480(ra)<br>  |
|  75|[0x80003460]<br>0xFFFFFFFE|- rs1_val == 18445618173802708991<br>                                                                                                                                                                                                                               |[0x80000a5c]:URADD64 t5, t3, s10<br> [0x80000a60]:sw t5, 488(ra)<br>  |
|  76|[0x80003468]<br>0x03FFFFFF|- rs1_val == 18446462598732840959<br> - rs2_val == 134217728<br>                                                                                                                                                                                                    |[0x80000a7c]:URADD64 t5, t3, s10<br> [0x80000a80]:sw t5, 496(ra)<br>  |
|  77|[0x80003470]<br>0xFFFFFFFF|- rs1_val == 18446603336221196287<br>                                                                                                                                                                                                                               |[0x80000aa0]:URADD64 t5, t3, s10<br> [0x80000aa4]:sw t5, 504(ra)<br>  |
|  78|[0x80003478]<br>0x000001FF|- rs1_val == 18446673704965373951<br>                                                                                                                                                                                                                               |[0x80000ac0]:URADD64 t5, t3, s10<br> [0x80000ac4]:sw t5, 512(ra)<br>  |
|  79|[0x80003480]<br>0xFFFFFFFF|- rs1_val == 18446708889337462783<br>                                                                                                                                                                                                                               |[0x80000ae0]:URADD64 t5, t3, s10<br> [0x80000ae4]:sw t5, 520(ra)<br>  |
|  80|[0x80003488]<br>0xFFFFFFFF|- rs2_val == 9223372036854775807<br> - rs1_val == 18446735277616529407<br>                                                                                                                                                                                          |[0x80000b04]:URADD64 t5, t3, s10<br> [0x80000b08]:sw t5, 528(ra)<br>  |
|  81|[0x80003490]<br>0xFFFFFFFF|- rs1_val == 18446741874686296063<br> - rs2_val == 281474976710656<br>                                                                                                                                                                                              |[0x80000b20]:URADD64 t5, t3, s10<br> [0x80000b24]:sw t5, 536(ra)<br>  |
|  82|[0x80003498]<br>0xFFFFFFFF|- rs1_val == 18446742974197923839<br> - rs2_val == 137438953472<br>                                                                                                                                                                                                 |[0x80000b3c]:URADD64 t5, t3, s10<br> [0x80000b40]:sw t5, 544(ra)<br>  |
|  83|[0x800034a0]<br>0xFFFFFFF0|- rs1_val == 1<br>                                                                                                                                                                                                                                                  |[0x80000b58]:URADD64 t5, t3, s10<br> [0x80000b5c]:sw t5, 552(ra)<br>  |
|  84|[0x800034a8]<br>0x55555554|- rs2_val == 12297829382473034410<br>                                                                                                                                                                                                                               |[0x80000b80]:URADD64 t5, t3, s10<br> [0x80000b84]:sw t5, 560(ra)<br>  |
|  85|[0x800034b0]<br>0x9AAAAAAA|- rs1_val == 18446744073172680703<br> - rs2_val == 6148914691236517205<br>                                                                                                                                                                                          |[0x80000ba8]:URADD64 t5, t3, s10<br> [0x80000bac]:sw t5, 568(ra)<br>  |
|  86|[0x800034b8]<br>0x5554D554|- rs1_val == 12297829382473034410<br>                                                                                                                                                                                                                               |[0x80000bd0]:URADD64 t5, t3, s10<br> [0x80000bd4]:sw t5, 576(ra)<br>  |
|  87|[0x800034c0]<br>0xAAAAAAAA|- rs1_val == 6148914691236517205<br>                                                                                                                                                                                                                                |[0x80000bf8]:URADD64 t5, t3, s10<br> [0x80000bfc]:sw t5, 584(ra)<br>  |
|  88|[0x800034c8]<br>0xFFFFFFFF|- rs1_val == (2**64-1)<br>                                                                                                                                                                                                                                          |[0x80000c14]:URADD64 t5, t3, s10<br> [0x80000c18]:sw t5, 592(ra)<br>  |
|  89|[0x800034d0]<br>0xFFFFFF7F|- rs1_val == 0<br>                                                                                                                                                                                                                                                  |[0x80000c30]:URADD64 t5, t3, s10<br> [0x80000c34]:sw t5, 600(ra)<br>  |
|  90|[0x800034e0]<br>0xFF7FFFFF|- rs1_val == 18446744073692774399<br> - rs2_val == (2**64-1)<br>                                                                                                                                                                                                    |[0x80000c74]:URADD64 t5, t3, s10<br> [0x80000c78]:sw t5, 616(ra)<br>  |
|  91|[0x800034e8]<br>0x00000000|- rs1_val == 137438953472<br> - rs2_val == 0<br>                                                                                                                                                                                                                    |[0x80000c90]:URADD64 t5, t3, s10<br> [0x80000c94]:sw t5, 624(ra)<br>  |
|  92|[0x800034f0]<br>0x00000002|- rs1_val == 18446743798831644671<br>                                                                                                                                                                                                                               |[0x80000cac]:URADD64 t5, t3, s10<br> [0x80000cb0]:sw t5, 632(ra)<br>  |
|  93|[0x800034f8]<br>0xFFFFFFFF|- rs1_val == 18446744004990074879<br> - rs2_val == 9007199254740992<br>                                                                                                                                                                                             |[0x80000cc8]:URADD64 t5, t3, s10<br> [0x80000ccc]:sw t5, 640(ra)<br>  |
|  94|[0x80003500]<br>0xFFFFFFFF|- rs1_val == 18446744039349813247<br> - rs2_val == 35184372088832<br>                                                                                                                                                                                               |[0x80000ce4]:URADD64 t5, t3, s10<br> [0x80000ce8]:sw t5, 648(ra)<br>  |
|  95|[0x80003508]<br>0xFFFFFFFF|- rs1_val == 18446744056529682431<br>                                                                                                                                                                                                                               |[0x80000d04]:URADD64 t5, t3, s10<br> [0x80000d08]:sw t5, 656(ra)<br>  |
|  96|[0x80003510]<br>0x03FFFFFF|- rs1_val == 18446744065119617023<br>                                                                                                                                                                                                                               |[0x80000d20]:URADD64 t5, t3, s10<br> [0x80000d24]:sw t5, 664(ra)<br>  |
|  97|[0x80003518]<br>0x80000002|- rs1_val == 18446744069414584319<br>                                                                                                                                                                                                                               |[0x80000d3c]:URADD64 t5, t3, s10<br> [0x80000d40]:sw t5, 672(ra)<br>  |
|  98|[0x80003520]<br>0xFBFFFFFF|- rs1_val == 18446744073575333887<br>                                                                                                                                                                                                                               |[0x80000d5c]:URADD64 t5, t3, s10<br> [0x80000d60]:sw t5, 680(ra)<br>  |
|  99|[0x80003528]<br>0xFDFFFFFF|- rs1_val == 18446744073642442751<br>                                                                                                                                                                                                                               |[0x80000d80]:URADD64 t5, t3, s10<br> [0x80000d84]:sw t5, 688(ra)<br>  |
| 100|[0x80003530]<br>0xFEFFFFFF|- rs1_val == 18446744073675997183<br>                                                                                                                                                                                                                               |[0x80000da0]:URADD64 t5, t3, s10<br> [0x80000da4]:sw t5, 696(ra)<br>  |
| 101|[0x80003538]<br>0xFFBFFFFF|- rs1_val == 18446744073701163007<br>                                                                                                                                                                                                                               |[0x80000dc4]:URADD64 t5, t3, s10<br> [0x80000dc8]:sw t5, 704(ra)<br>  |
| 102|[0x80003540]<br>0xFFE7FFFF|- rs1_val == 18446744073705357311<br> - rs2_val == 1048576<br>                                                                                                                                                                                                      |[0x80000de4]:URADD64 t5, t3, s10<br> [0x80000de8]:sw t5, 712(ra)<br>  |
| 103|[0x80003548]<br>0xFFF00005|- rs1_val == 18446744073707454463<br>                                                                                                                                                                                                                               |[0x80000e04]:URADD64 t5, t3, s10<br> [0x80000e08]:sw t5, 720(ra)<br>  |
| 104|[0x80003550]<br>0xFFF7FBFF|- rs1_val == 18446744073708503039<br>                                                                                                                                                                                                                               |[0x80000e28]:URADD64 t5, t3, s10<br> [0x80000e2c]:sw t5, 728(ra)<br>  |
| 105|[0x80003558]<br>0xFFFC0008|- rs1_val == 18446744073709027327<br>                                                                                                                                                                                                                               |[0x80000e48]:URADD64 t5, t3, s10<br> [0x80000e4c]:sw t5, 736(ra)<br>  |
| 106|[0x80003560]<br>0x0FFDFFFF|- rs1_val == 18446744073709289471<br> - rs2_val == 536870912<br>                                                                                                                                                                                                    |[0x80000e68]:URADD64 t5, t3, s10<br> [0x80000e6c]:sw t5, 744(ra)<br>  |
| 107|[0x80003568]<br>0x3FFEFFFF|- rs1_val == 18446744073709420543<br> - rs2_val == 2147483648<br>                                                                                                                                                                                                   |[0x80000e88]:URADD64 t5, t3, s10<br> [0x80000e8c]:sw t5, 752(ra)<br>  |
| 108|[0x80003570]<br>0xFFFFC002|- rs1_val == 18446744073709518847<br>                                                                                                                                                                                                                               |[0x80000ea8]:URADD64 t5, t3, s10<br> [0x80000eac]:sw t5, 760(ra)<br>  |
| 109|[0x80003578]<br>0xFFFFEFFF|- rs1_val == 18446744073709535231<br> - rs2_val == 8192<br>                                                                                                                                                                                                         |[0x80000ec8]:URADD64 t5, t3, s10<br> [0x80000ecc]:sw t5, 768(ra)<br>  |
| 110|[0x80003580]<br>0xFFFFEFFF|- rs1_val == 18446744073709543423<br>                                                                                                                                                                                                                               |[0x80000ee8]:URADD64 t5, t3, s10<br> [0x80000eec]:sw t5, 776(ra)<br>  |
| 111|[0x80003588]<br>0xFEFFFEFF|- rs1_val == 18446744073709551103<br>                                                                                                                                                                                                                               |[0x80000f08]:URADD64 t5, t3, s10<br> [0x80000f0c]:sw t5, 784(ra)<br>  |
| 112|[0x80003590]<br>0xFFFFFF80|- rs1_val == 18446744073709551359<br> - rs2_val == 1<br>                                                                                                                                                                                                            |[0x80000f24]:URADD64 t5, t3, s10<br> [0x80000f28]:sw t5, 792(ra)<br>  |
| 113|[0x80003598]<br>0xFFFFFFFD|- rs1_val == 18446744073709551611<br> - rs2_val == 4398046511104<br>                                                                                                                                                                                                |[0x80000f40]:URADD64 t5, t3, s10<br> [0x80000f44]:sw t5, 800(ra)<br>  |
| 114|[0x800035a0]<br>0xFFFFFFFE|- rs1_val == 18446744073709551614<br>                                                                                                                                                                                                                               |[0x80000f60]:URADD64 t5, t3, s10<br> [0x80000f64]:sw t5, 808(ra)<br>  |
| 115|[0x800035a8]<br>0x00000000|- rs2_val == 9223372036854775808<br> - rs1_val == 8589934592<br>                                                                                                                                                                                                    |[0x80000f7c]:URADD64 t5, t3, s10<br> [0x80000f80]:sw t5, 816(ra)<br>  |
| 116|[0x800035b0]<br>0x00000000|- rs2_val == 4611686018427387904<br> - rs1_val == 68719476736<br>                                                                                                                                                                                                   |[0x80000f98]:URADD64 t5, t3, s10<br> [0x80000f9c]:sw t5, 824(ra)<br>  |
| 117|[0x800035b8]<br>0xFFFFFFFF|- rs2_val == 2305843009213693952<br>                                                                                                                                                                                                                                |[0x80000fb4]:URADD64 t5, t3, s10<br> [0x80000fb8]:sw t5, 832(ra)<br>  |
| 118|[0x800035c0]<br>0xFFFFFFFF|- rs2_val == 1152921504606846976<br>                                                                                                                                                                                                                                |[0x80000fd4]:URADD64 t5, t3, s10<br> [0x80000fd8]:sw t5, 840(ra)<br>  |
| 119|[0x800035c8]<br>0xFFFFFFFF|- rs2_val == 576460752303423488<br>                                                                                                                                                                                                                                 |[0x80000ff4]:URADD64 t5, t3, s10<br> [0x80000ff8]:sw t5, 848(ra)<br>  |
| 120|[0x800035d0]<br>0x00000000|- rs2_val == 288230376151711744<br> - rs1_val == 2305843009213693952<br>                                                                                                                                                                                            |[0x80001010]:URADD64 t5, t3, s10<br> [0x80001014]:sw t5, 856(ra)<br>  |
| 121|[0x800035d8]<br>0xFFFFFFFF|- rs2_val == 144115188075855872<br>                                                                                                                                                                                                                                 |[0x80001030]:URADD64 t5, t3, s10<br> [0x80001034]:sw t5, 864(ra)<br>  |
| 122|[0x800035e0]<br>0xFFFFBFFF|- rs2_val == 72057594037927936<br>                                                                                                                                                                                                                                  |[0x80001050]:URADD64 t5, t3, s10<br> [0x80001054]:sw t5, 872(ra)<br>  |
| 123|[0x800035e8]<br>0x00000006|- rs2_val == 36028797018963968<br>                                                                                                                                                                                                                                  |[0x8000106c]:URADD64 t5, t3, s10<br> [0x80001070]:sw t5, 880(ra)<br>  |
| 124|[0x800035f0]<br>0xAAAAAAAA|- rs2_val == 18014398509481984<br>                                                                                                                                                                                                                                  |[0x80001090]:URADD64 t5, t3, s10<br> [0x80001094]:sw t5, 888(ra)<br>  |
| 125|[0x800035f8]<br>0xFFFFFF7F|- rs2_val == 4503599627370496<br>                                                                                                                                                                                                                                   |[0x800010ac]:URADD64 t5, t3, s10<br> [0x800010b0]:sw t5, 896(ra)<br>  |
| 126|[0x80003600]<br>0xFFFFFFFF|- rs2_val == 2251799813685248<br>                                                                                                                                                                                                                                   |[0x800010c8]:URADD64 t5, t3, s10<br> [0x800010cc]:sw t5, 904(ra)<br>  |
| 127|[0x80003608]<br>0x00000003|- rs2_val == 1125899906842624<br>                                                                                                                                                                                                                                   |[0x800010e4]:URADD64 t5, t3, s10<br> [0x800010e8]:sw t5, 912(ra)<br>  |
| 128|[0x80003610]<br>0x00000000|- rs2_val == 562949953421312<br> - rs1_val == 4398046511104<br>                                                                                                                                                                                                     |[0x80001100]:URADD64 t5, t3, s10<br> [0x80001104]:sw t5, 920(ra)<br>  |
| 129|[0x80003618]<br>0x00000007|- rs2_val == 140737488355328<br>                                                                                                                                                                                                                                    |[0x8000111c]:URADD64 t5, t3, s10<br> [0x80001120]:sw t5, 928(ra)<br>  |
| 130|[0x80003620]<br>0xFFFFFFFF|- rs2_val == 70368744177664<br>                                                                                                                                                                                                                                     |[0x80001138]:URADD64 t5, t3, s10<br> [0x8000113c]:sw t5, 936(ra)<br>  |
| 131|[0x80003628]<br>0x00000010|- rs2_val == 17592186044416<br> - rs1_val == 32<br>                                                                                                                                                                                                                 |[0x80001154]:URADD64 t5, t3, s10<br> [0x80001158]:sw t5, 944(ra)<br>  |
| 132|[0x80003630]<br>0x00000000|- rs2_val == 8796093022208<br> - rs1_val == 18014398509481984<br>                                                                                                                                                                                                   |[0x80001174]:URADD64 t5, t3, s10<br> [0x80001178]:sw t5, 952(ra)<br>  |
| 133|[0x80003638]<br>0x00000000|- rs2_val == 1099511627776<br>                                                                                                                                                                                                                                      |[0x80001190]:URADD64 t5, t3, s10<br> [0x80001194]:sw t5, 960(ra)<br>  |
| 134|[0x80003640]<br>0x00000000|- rs2_val == 549755813888<br>                                                                                                                                                                                                                                       |[0x800011ac]:URADD64 t5, t3, s10<br> [0x800011b0]:sw t5, 968(ra)<br>  |
| 135|[0x80003648]<br>0xFFFFFF7F|- rs2_val == 274877906944<br>                                                                                                                                                                                                                                       |[0x800011c8]:URADD64 t5, t3, s10<br> [0x800011cc]:sw t5, 976(ra)<br>  |
| 136|[0x80003650]<br>0xFFFBFFFF|- rs2_val == 68719476736<br>                                                                                                                                                                                                                                        |[0x800011e8]:URADD64 t5, t3, s10<br> [0x800011ec]:sw t5, 984(ra)<br>  |
| 137|[0x80003658]<br>0x00000000|- rs2_val == 34359738368<br>                                                                                                                                                                                                                                        |[0x80001204]:URADD64 t5, t3, s10<br> [0x80001208]:sw t5, 992(ra)<br>  |
| 138|[0x80003660]<br>0x00000080|- rs2_val == 17179869184<br>                                                                                                                                                                                                                                        |[0x80001220]:URADD64 t5, t3, s10<br> [0x80001224]:sw t5, 1000(ra)<br> |
| 139|[0x80003668]<br>0x00000009|- rs2_val == 8589934592<br>                                                                                                                                                                                                                                         |[0x8000123c]:URADD64 t5, t3, s10<br> [0x80001240]:sw t5, 1008(ra)<br> |
| 140|[0x80003670]<br>0x7FFFFFFF|- rs2_val == 4294967296<br>                                                                                                                                                                                                                                         |[0x8000125c]:URADD64 t5, t3, s10<br> [0x80001260]:sw t5, 1016(ra)<br> |
| 141|[0x80003678]<br>0x1FFFFFFB|- rs2_val == 1073741824<br>                                                                                                                                                                                                                                         |[0x80001278]:URADD64 t5, t3, s10<br> [0x8000127c]:sw t5, 1024(ra)<br> |
| 142|[0x80003680]<br>0x07FFFFFF|- rs2_val == 268435456<br>                                                                                                                                                                                                                                          |[0x80001298]:URADD64 t5, t3, s10<br> [0x8000129c]:sw t5, 1032(ra)<br> |
| 143|[0x80003688]<br>0x02000000|- rs2_val == 67108864<br>                                                                                                                                                                                                                                           |[0x800012b4]:URADD64 t5, t3, s10<br> [0x800012b8]:sw t5, 1040(ra)<br> |
| 144|[0x80003690]<br>0xFEFFFFFF|- rs2_val == 33554432<br>                                                                                                                                                                                                                                           |[0x800012d4]:URADD64 t5, t3, s10<br> [0x800012d8]:sw t5, 1048(ra)<br> |
| 145|[0x80003698]<br>0x02800000|- rs2_val == 16777216<br> - rs1_val == 67108864<br>                                                                                                                                                                                                                 |[0x800012f0]:URADD64 t5, t3, s10<br> [0x800012f4]:sw t5, 1056(ra)<br> |
| 146|[0x800036a0]<br>0x00400008|- rs2_val == 8388608<br> - rs1_val == 16<br>                                                                                                                                                                                                                        |[0x8000130c]:URADD64 t5, t3, s10<br> [0x80001310]:sw t5, 1064(ra)<br> |
| 147|[0x800036a8]<br>0x001FFFFF|- rs2_val == 4194304<br>                                                                                                                                                                                                                                            |[0x8000132c]:URADD64 t5, t3, s10<br> [0x80001330]:sw t5, 1072(ra)<br> |
| 148|[0x800036b0]<br>0xFFEFFFFF|- rs2_val == 2097152<br>                                                                                                                                                                                                                                            |[0x8000134c]:URADD64 t5, t3, s10<br> [0x80001350]:sw t5, 1080(ra)<br> |
| 149|[0x800036b8]<br>0x0003FFFF|- rs2_val == 524288<br>                                                                                                                                                                                                                                             |[0x8000136c]:URADD64 t5, t3, s10<br> [0x80001370]:sw t5, 1088(ra)<br> |
| 150|[0x800036c0]<br>0x0001FFFF|- rs2_val == 262144<br>                                                                                                                                                                                                                                             |[0x8000138c]:URADD64 t5, t3, s10<br> [0x80001390]:sw t5, 1096(ra)<br> |
| 151|[0x800036c8]<br>0x00008007|- rs2_val == 65536<br>                                                                                                                                                                                                                                              |[0x800013a8]:URADD64 t5, t3, s10<br> [0x800013ac]:sw t5, 1104(ra)<br> |
| 152|[0x800036d0]<br>0x00004000|- rs2_val == 32768<br> - rs1_val == 17592186044416<br>                                                                                                                                                                                                              |[0x800013c4]:URADD64 t5, t3, s10<br> [0x800013c8]:sw t5, 1112(ra)<br> |
| 153|[0x800036d8]<br>0x40002000|- rs2_val == 16384<br>                                                                                                                                                                                                                                              |[0x800013e0]:URADD64 t5, t3, s10<br> [0x800013e4]:sw t5, 1120(ra)<br> |
| 154|[0x800036e0]<br>0x20000800|- rs2_val == 4096<br> - rs1_val == 1073741824<br>                                                                                                                                                                                                                   |[0x800013fc]:URADD64 t5, t3, s10<br> [0x80001400]:sw t5, 1128(ra)<br> |
| 155|[0x800036e8]<br>0x40000400|- rs2_val == 2048<br>                                                                                                                                                                                                                                               |[0x8000141c]:URADD64 t5, t3, s10<br> [0x80001420]:sw t5, 1136(ra)<br> |
| 156|[0x800036f0]<br>0xF000007F|- rs2_val == 256<br>                                                                                                                                                                                                                                                |[0x8000143c]:URADD64 t5, t3, s10<br> [0x80001440]:sw t5, 1144(ra)<br> |
| 157|[0x800036f8]<br>0x00000007|- rs1_val == 4611686018427387904<br>                                                                                                                                                                                                                                |[0x80001458]:URADD64 t5, t3, s10<br> [0x8000145c]:sw t5, 1152(ra)<br> |
| 158|[0x80003700]<br>0x00000009|- rs1_val == 1152921504606846976<br>                                                                                                                                                                                                                                |[0x80001474]:URADD64 t5, t3, s10<br> [0x80001478]:sw t5, 1160(ra)<br> |
| 159|[0x80003708]<br>0xFFFFFFFF|- rs1_val == 576460752303423488<br>                                                                                                                                                                                                                                 |[0x80001494]:URADD64 t5, t3, s10<br> [0x80001498]:sw t5, 1168(ra)<br> |
| 160|[0x80003710]<br>0x00100000|- rs1_val == 288230376151711744<br>                                                                                                                                                                                                                                 |[0x800014b0]:URADD64 t5, t3, s10<br> [0x800014b4]:sw t5, 1176(ra)<br> |
| 161|[0x80003718]<br>0xFFBFFFFF|- rs1_val == 144115188075855872<br>                                                                                                                                                                                                                                 |[0x800014d0]:URADD64 t5, t3, s10<br> [0x800014d4]:sw t5, 1184(ra)<br> |
| 162|[0x80003720]<br>0xF7FFFFFF|- rs1_val == 72057594037927936<br>                                                                                                                                                                                                                                  |[0x800014f0]:URADD64 t5, t3, s10<br> [0x800014f4]:sw t5, 1192(ra)<br> |
| 163|[0x80003728]<br>0xFFEFFFFF|- rs1_val == 9007199254740992<br>                                                                                                                                                                                                                                   |[0x80001510]:URADD64 t5, t3, s10<br> [0x80001514]:sw t5, 1200(ra)<br> |
| 164|[0x80003730]<br>0xFFFFFFFF|- rs1_val == 4503599627370496<br>                                                                                                                                                                                                                                   |[0x80001530]:URADD64 t5, t3, s10<br> [0x80001534]:sw t5, 1208(ra)<br> |
| 165|[0x80003738]<br>0xFFFFFFFF|- rs1_val == 2251799813685248<br>                                                                                                                                                                                                                                   |[0x80001550]:URADD64 t5, t3, s10<br> [0x80001554]:sw t5, 1216(ra)<br> |
| 166|[0x80003740]<br>0x00000200|- rs1_val == 1125899906842624<br>                                                                                                                                                                                                                                   |[0x8000156c]:URADD64 t5, t3, s10<br> [0x80001570]:sw t5, 1224(ra)<br> |
| 167|[0x80003748]<br>0xFFFFFFFF|- rs1_val == 70368744177664<br>                                                                                                                                                                                                                                     |[0x8000158c]:URADD64 t5, t3, s10<br> [0x80001590]:sw t5, 1232(ra)<br> |
| 168|[0x80003750]<br>0x00000000|- rs1_val == 1099511627776<br>                                                                                                                                                                                                                                      |[0x800015a8]:URADD64 t5, t3, s10<br> [0x800015ac]:sw t5, 1240(ra)<br> |
| 169|[0x80003758]<br>0x0000000A|- rs2_val == 16<br> - rs1_val == 4<br>                                                                                                                                                                                                                              |[0x800015c4]:URADD64 t5, t3, s10<br> [0x800015c8]:sw t5, 1248(ra)<br> |
| 170|[0x80003760]<br>0xFFFFFFFF|- rs1_val == 549755813888<br>                                                                                                                                                                                                                                       |[0x800015e4]:URADD64 t5, t3, s10<br> [0x800015e8]:sw t5, 1256(ra)<br> |
| 171|[0x80003768]<br>0x00000007|- rs1_val == 274877906944<br>                                                                                                                                                                                                                                       |[0x80001600]:URADD64 t5, t3, s10<br> [0x80001604]:sw t5, 1264(ra)<br> |
| 172|[0x80003770]<br>0xEFFFFFFF|- rs1_val == 536870912<br>                                                                                                                                                                                                                                          |[0x80001620]:URADD64 t5, t3, s10<br> [0x80001624]:sw t5, 1272(ra)<br> |
| 173|[0x80003778]<br>0x00800000|- rs1_val == 16777216<br>                                                                                                                                                                                                                                           |[0x8000163c]:URADD64 t5, t3, s10<br> [0x80001640]:sw t5, 1280(ra)<br> |
| 174|[0x80003780]<br>0x00200009|- rs1_val == 4194304<br>                                                                                                                                                                                                                                            |[0x80001658]:URADD64 t5, t3, s10<br> [0x8000165c]:sw t5, 1288(ra)<br> |
| 175|[0x80003788]<br>0x00100010|- rs2_val == 32<br> - rs1_val == 2097152<br>                                                                                                                                                                                                                        |[0x80001674]:URADD64 t5, t3, s10<br> [0x80001678]:sw t5, 1296(ra)<br> |
| 176|[0x80003790]<br>0x01010000|- rs1_val == 131072<br>                                                                                                                                                                                                                                             |[0x80001690]:URADD64 t5, t3, s10<br> [0x80001694]:sw t5, 1304(ra)<br> |
| 177|[0x80003798]<br>0xE0007FFF|- rs1_val == 65536<br>                                                                                                                                                                                                                                              |[0x800016b0]:URADD64 t5, t3, s10<br> [0x800016b4]:sw t5, 1312(ra)<br> |
| 178|[0x800037a0]<br>0x00012000|- rs1_val == 16384<br>                                                                                                                                                                                                                                              |[0x800016cc]:URADD64 t5, t3, s10<br> [0x800016d0]:sw t5, 1320(ra)<br> |
| 179|[0x800037a8]<br>0x00000100|- rs1_val == 512<br>                                                                                                                                                                                                                                                |[0x800016e8]:URADD64 t5, t3, s10<br> [0x800016ec]:sw t5, 1328(ra)<br> |
| 180|[0x800037b0]<br>0x00000008|- rs2_val == 8<br>                                                                                                                                                                                                                                                  |[0x80001704]:URADD64 t5, t3, s10<br> [0x80001708]:sw t5, 1336(ra)<br> |
| 181|[0x800037c0]<br>0xFFFC001F|- rs2_val == 64<br>                                                                                                                                                                                                                                                 |[0x80001740]:URADD64 t5, t3, s10<br> [0x80001744]:sw t5, 1352(ra)<br> |
| 182|[0x800037c8]<br>0xFFFFFFFF|- rs1_val == 34359738368<br>                                                                                                                                                                                                                                        |[0x80001760]:URADD64 t5, t3, s10<br> [0x80001764]:sw t5, 1360(ra)<br> |
| 183|[0x800037d0]<br>0x00100002|- rs2_val == 4<br>                                                                                                                                                                                                                                                  |[0x8000177c]:URADD64 t5, t3, s10<br> [0x80001780]:sw t5, 1368(ra)<br> |
| 184|[0x800037d8]<br>0x00000041|- rs2_val == 2<br>                                                                                                                                                                                                                                                  |[0x80001798]:URADD64 t5, t3, s10<br> [0x8000179c]:sw t5, 1376(ra)<br> |
