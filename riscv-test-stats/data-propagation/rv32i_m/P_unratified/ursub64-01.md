
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001880')]      |
| SIG_REGION                | [('0x80003210', '0x80003820', '388 words')]      |
| COV_LABELS                | ursub64      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ursub64-01.S    |
| Total Number of coverpoints| 324     |
| Total Coverpoints Hit     | 318      |
| Total Signature Updates   | 388      |
| STAT1                     | 193      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 194     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012ec]:URSUB64 t5, t3, s10
 -- Signature Address: 0x80003698 Data: 0xFBEFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ursub64
      - rs1 : x28
      - rs2 : x26
      - rd : x30
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val == 18446744073575333887
      - rs2_val == 2097152
      - rs1_val > 0 and rs2_val > 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ursub64', 'rs1 : x18', 'rs2 : x18', 'rd : x18', 'rs1 == rs2 == rd', 'rs2_val == 16777216', 'rs1_val == 16777216', 'rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0', 'rs1_val > 0 and rs2_val > 0']
Last Code Sequence : 
	-[0x80000110]:URSUB64 s2, s2, s2
Current Store : [0x80000118] : sw s3, 4(ra) -- Store: [0x80003214]:0x00000000




Last Coverpoint : ['rs1 : x6', 'rs2 : x6', 'rd : x22', 'rs1 == rs2 != rd', 'rs2_val == 2097152', 'rs1_val == 2097152']
Last Code Sequence : 
	-[0x8000012c]:URSUB64 s6, t1, t1
Current Store : [0x80000134] : sw s7, 12(ra) -- Store: [0x8000321c]:0xB6FAB7FB




Last Coverpoint : ['rs1 : x26', 'rs2 : x4', 'rd : x12', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0', 'rs2_val == 13835058055282163711', 'rs1_val == 16140901064495857663']
Last Code Sequence : 
	-[0x80000150]:URSUB64 a2, s10, tp
Current Store : [0x80000158] : sw a3, 20(ra) -- Store: [0x80003224]:0xEADFEEDB




Last Coverpoint : ['rs1 : x30', 'rs2 : x2', 'rd : x2', 'rs2 == rd != rs1', 'rs2_val == 16140901064495857663', 'rs1_val == 18437736874454810623']
Last Code Sequence : 
	-[0x80000174]:URSUB64 sp, t5, sp
Current Store : [0x8000017c] : sw gp, 28(ra) -- Store: [0x8000322c]:0xDFFFFFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x20', 'rd : x14', 'rs1 == rd != rs2', 'rs2_val == 17293822569102704639', 'rs1_val == 131072']
Last Code Sequence : 
	-[0x80000194]:URSUB64 a4, a4, s4
Current Store : [0x8000019c] : sw a5, 36(ra) -- Store: [0x80003234]:0x00000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x22', 'rd : x28', 'rs2_val == 17870283321406128127', 'rs1_val == 9007199254740992']
Last Code Sequence : 
	-[0x800001b4]:URSUB64 t3, fp, s6
Current Store : [0x800001bc] : sw t4, 44(ra) -- Store: [0x8000323c]:0xEEDBEADF




Last Coverpoint : ['rs1 : x24', 'rs2 : x26', 'rd : x10', 'rs2_val == 18158513697557839871', 'rs1_val == 1152921504606846976']
Last Code Sequence : 
	-[0x800001dc]:URSUB64 a0, s8, s10
Current Store : [0x800001e4] : sw a1, 4(ra) -- Store: [0x80003244]:0xAB7FBB6F




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x16', 'rs2_val == 18302628885633695743', 'rs1_val == 18446744073709518847']
Last Code Sequence : 
	-[0x80000200]:URSUB64 a6, s6, s8
Current Store : [0x80000208] : sw a7, 12(ra) -- Store: [0x8000324c]:0xBEADFEED




Last Coverpoint : ['rs1 : x20', 'rs2 : x8', 'rd : x6', 'rs2_val == 18374686479671623679', 'rs1_val == 18446744004990074879']
Last Code Sequence : 
	-[0x80000220]:URSUB64 t1, s4, fp
Current Store : [0x80000228] : sw t2, 20(ra) -- Store: [0x80003254]:0x00000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x10', 'rd : x8', 'rs2_val == 18410715276690587647', 'rs1_val == 18446735277616529407']
Last Code Sequence : 
	-[0x80000244]:URSUB64 fp, tp, a0
Current Store : [0x8000024c] : sw s1, 28(ra) -- Store: [0x8000325c]:0xFEFFFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x16', 'rd : x26', 'rs2_val == 18428729675200069631', 'rs1_val == 4294967296']
Last Code Sequence : 
	-[0x80000264]:URSUB64 s10, sp, a6
Current Store : [0x8000026c] : sw s11, 36(ra) -- Store: [0x80003264]:0xFBFFFFFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x28', 'rd : x20', 'rs2_val == 18437736874454810623', 'rs1_val == 18446744073701163007']
Last Code Sequence : 
	-[0x80000288]:URSUB64 s4, a2, t3
Current Store : [0x80000290] : sw s5, 44(ra) -- Store: [0x8000326c]:0xFFFFFFEF




Last Coverpoint : ['rs1 : x10', 'rs2 : x14', 'rd : x30', 'rs2_val == 18442240474082181119', 'rs1_val == 18446744073709549567']
Last Code Sequence : 
	-[0x800002b4]:URSUB64 t5, a0, a4
Current Store : [0x800002bc] : sw t6, 4(ra) -- Store: [0x80003274]:0xFFDFFFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x30', 'rd : x24', 'rs2_val == 18444492273895866367', 'rs1_val == 18446744056529682431']
Last Code Sequence : 
	-[0x800002d4]:URSUB64 s8, a6, t5
Current Store : [0x800002dc] : sw s9, 12(ra) -- Store: [0x8000327c]:0xFDFFFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x12', 'rd : x4', 'rs2_val == 18445618173802708991']
Last Code Sequence : 
	-[0x800002f4]:URSUB64 tp, t3, a2
Current Store : [0x800002fc] : sw t0, 20(ra) -- Store: [0x80003284]:0xFFFFF7FF




Last Coverpoint : ['rs2_val == 18446181123756130303']
Last Code Sequence : 
	-[0x80000318]:URSUB64 t5, t3, s10
Current Store : [0x80000320] : sw t6, 28(ra) -- Store: [0x8000328c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446462598732840959', 'rs1_val == 18446744073708503039']
Last Code Sequence : 
	-[0x8000033c]:URSUB64 t5, t3, s10
Current Store : [0x80000344] : sw t6, 36(ra) -- Store: [0x80003294]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446603336221196287']
Last Code Sequence : 
	-[0x8000035c]:URSUB64 t5, t3, s10
Current Store : [0x80000364] : sw t6, 44(ra) -- Store: [0x8000329c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446673704965373951', 'rs1_val == 0']
Last Code Sequence : 
	-[0x8000037c]:URSUB64 t5, t3, s10
Current Store : [0x80000384] : sw t6, 52(ra) -- Store: [0x800032a4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446708889337462783', 'rs1_val == 18446744073709551487']
Last Code Sequence : 
	-[0x8000039c]:URSUB64 t5, t3, s10
Current Store : [0x800003a4] : sw t6, 60(ra) -- Store: [0x800032ac]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446726481523507199', 'rs1_val == 18446744073709551607']
Last Code Sequence : 
	-[0x800003bc]:URSUB64 t5, t3, s10
Current Store : [0x800003c4] : sw t6, 68(ra) -- Store: [0x800032b4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446735277616529407', 'rs1_val == 17293822569102704639']
Last Code Sequence : 
	-[0x800003e0]:URSUB64 t5, t3, s10
Current Store : [0x800003e8] : sw t6, 76(ra) -- Store: [0x800032bc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446739675663040511', 'rs1_val == 268435456']
Last Code Sequence : 
	-[0x800003fc]:URSUB64 t5, t3, s10
Current Store : [0x80000404] : sw t6, 84(ra) -- Store: [0x800032c4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446741874686296063', 'rs1_val == 1073741824']
Last Code Sequence : 
	-[0x80000418]:URSUB64 t5, t3, s10
Current Store : [0x80000420] : sw t6, 92(ra) -- Store: [0x800032cc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446742974197923839']
Last Code Sequence : 
	-[0x80000438]:URSUB64 t5, t3, s10
Current Store : [0x80000440] : sw t6, 100(ra) -- Store: [0x800032d4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446743523953737727', 'rs1_val == 6148914691236517205']
Last Code Sequence : 
	-[0x8000045c]:URSUB64 t5, t3, s10
Current Store : [0x80000464] : sw t6, 108(ra) -- Store: [0x800032dc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446743798831644671', 'rs1_val == 18446743798831644671']
Last Code Sequence : 
	-[0x80000478]:URSUB64 t5, t3, s10
Current Store : [0x80000480] : sw t6, 116(ra) -- Store: [0x800032e4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446743936270598143', 'rs1_val == 18446744071562067967']
Last Code Sequence : 
	-[0x80000498]:URSUB64 t5, t3, s10
Current Store : [0x800004a0] : sw t6, 124(ra) -- Store: [0x800032ec]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744004990074879', 'rs1_val == 9223372036854775807']
Last Code Sequence : 
	-[0x800004b8]:URSUB64 t5, t3, s10
Current Store : [0x800004c0] : sw t6, 132(ra) -- Store: [0x800032f4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744039349813247', 'rs1_val == 64']
Last Code Sequence : 
	-[0x800004d4]:URSUB64 t5, t3, s10
Current Store : [0x800004dc] : sw t6, 140(ra) -- Store: [0x800032fc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744056529682431']
Last Code Sequence : 
	-[0x800004f0]:URSUB64 t5, t3, s10
Current Store : [0x800004f8] : sw t6, 148(ra) -- Store: [0x80003304]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744065119617023']
Last Code Sequence : 
	-[0x80000510]:URSUB64 t5, t3, s10
Current Store : [0x80000518] : sw t6, 156(ra) -- Store: [0x8000330c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744069414584319']
Last Code Sequence : 
	-[0x8000052c]:URSUB64 t5, t3, s10
Current Store : [0x80000534] : sw t6, 164(ra) -- Store: [0x80003314]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744071562067967']
Last Code Sequence : 
	-[0x8000054c]:URSUB64 t5, t3, s10
Current Store : [0x80000554] : sw t6, 172(ra) -- Store: [0x8000331c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744072635809791']
Last Code Sequence : 
	-[0x80000570]:URSUB64 t5, t3, s10
Current Store : [0x80000578] : sw t6, 180(ra) -- Store: [0x80003324]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073172680703', 'rs1_val == 17870283321406128127']
Last Code Sequence : 
	-[0x80000594]:URSUB64 t5, t3, s10
Current Store : [0x8000059c] : sw t6, 188(ra) -- Store: [0x8000332c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073441116159']
Last Code Sequence : 
	-[0x800005b8]:URSUB64 t5, t3, s10
Current Store : [0x800005c0] : sw t6, 196(ra) -- Store: [0x80003334]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073575333887', 'rs1_val == 2048']
Last Code Sequence : 
	-[0x800005dc]:URSUB64 t5, t3, s10
Current Store : [0x800005e4] : sw t6, 204(ra) -- Store: [0x8000333c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073642442751', 'rs1_val == 18446744072635809791']
Last Code Sequence : 
	-[0x80000600]:URSUB64 t5, t3, s10
Current Store : [0x80000608] : sw t6, 212(ra) -- Store: [0x80003344]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073675997183', 'rs1_val == 4503599627370496']
Last Code Sequence : 
	-[0x80000620]:URSUB64 t5, t3, s10
Current Store : [0x80000628] : sw t6, 220(ra) -- Store: [0x8000334c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073692774399', 'rs1_val == 18446744073709289471']
Last Code Sequence : 
	-[0x80000644]:URSUB64 t5, t3, s10
Current Store : [0x8000064c] : sw t6, 228(ra) -- Store: [0x80003354]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073701163007', 'rs1_val == 8589934592']
Last Code Sequence : 
	-[0x80000664]:URSUB64 t5, t3, s10
Current Store : [0x8000066c] : sw t6, 236(ra) -- Store: [0x8000335c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073705357311', 'rs1_val == 18446673704965373951']
Last Code Sequence : 
	-[0x80000688]:URSUB64 t5, t3, s10
Current Store : [0x80000690] : sw t6, 244(ra) -- Store: [0x80003364]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073707454463']
Last Code Sequence : 
	-[0x800006a8]:URSUB64 t5, t3, s10
Current Store : [0x800006b0] : sw t6, 252(ra) -- Store: [0x8000336c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073708503039', 'rs1_val == 18446744073709551614']
Last Code Sequence : 
	-[0x800006c8]:URSUB64 t5, t3, s10
Current Store : [0x800006d0] : sw t6, 260(ra) -- Store: [0x80003374]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709027327', 'rs1_val == 18446744073709550591']
Last Code Sequence : 
	-[0x800006e8]:URSUB64 t5, t3, s10
Current Store : [0x800006f0] : sw t6, 268(ra) -- Store: [0x8000337c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709289471', 'rs1_val == 18446744073575333887']
Last Code Sequence : 
	-[0x8000070c]:URSUB64 t5, t3, s10
Current Store : [0x80000714] : sw t6, 276(ra) -- Store: [0x80003384]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709420543', 'rs1_val == 18446744073709551583']
Last Code Sequence : 
	-[0x8000072c]:URSUB64 t5, t3, s10
Current Store : [0x80000734] : sw t6, 284(ra) -- Store: [0x8000338c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709486079', 'rs1_val == 70368744177664']
Last Code Sequence : 
	-[0x8000074c]:URSUB64 t5, t3, s10
Current Store : [0x80000754] : sw t6, 292(ra) -- Store: [0x80003394]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709518847']
Last Code Sequence : 
	-[0x8000076c]:URSUB64 t5, t3, s10
Current Store : [0x80000774] : sw t6, 300(ra) -- Store: [0x8000339c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709535231', 'rs1_val == 4611686018427387904']
Last Code Sequence : 
	-[0x8000078c]:URSUB64 t5, t3, s10
Current Store : [0x80000794] : sw t6, 308(ra) -- Store: [0x800033a4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709543423']
Last Code Sequence : 
	-[0x800007b0]:URSUB64 t5, t3, s10
Current Store : [0x800007b8] : sw t6, 316(ra) -- Store: [0x800033ac]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709547519', 'rs1_val == 65536']
Last Code Sequence : 
	-[0x800007d0]:URSUB64 t5, t3, s10
Current Store : [0x800007d8] : sw t6, 324(ra) -- Store: [0x800033b4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709549567']
Last Code Sequence : 
	-[0x800007f0]:URSUB64 t5, t3, s10
Current Store : [0x800007f8] : sw t6, 332(ra) -- Store: [0x800033bc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709550591', 'rs1_val == 8']
Last Code Sequence : 
	-[0x8000080c]:URSUB64 t5, t3, s10
Current Store : [0x80000814] : sw t6, 340(ra) -- Store: [0x800033c4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709551103', 'rs1_val == 36028797018963968']
Last Code Sequence : 
	-[0x80000828]:URSUB64 t5, t3, s10
Current Store : [0x80000830] : sw t6, 348(ra) -- Store: [0x800033cc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709551359', 'rs1_val == 262144']
Last Code Sequence : 
	-[0x80000844]:URSUB64 t5, t3, s10
Current Store : [0x8000084c] : sw t6, 356(ra) -- Store: [0x800033d4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709551487']
Last Code Sequence : 
	-[0x80000864]:URSUB64 t5, t3, s10
Current Store : [0x8000086c] : sw t6, 364(ra) -- Store: [0x800033dc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709551551', 'rs1_val == 549755813888']
Last Code Sequence : 
	-[0x80000880]:URSUB64 t5, t3, s10
Current Store : [0x80000888] : sw t6, 372(ra) -- Store: [0x800033e4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709551583', 'rs1_val == 35184372088832']
Last Code Sequence : 
	-[0x8000089c]:URSUB64 t5, t3, s10
Current Store : [0x800008a4] : sw t6, 380(ra) -- Store: [0x800033ec]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709551599']
Last Code Sequence : 
	-[0x800008b8]:URSUB64 t5, t3, s10
Current Store : [0x800008c0] : sw t6, 388(ra) -- Store: [0x800033f4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709551607']
Last Code Sequence : 
	-[0x800008d4]:URSUB64 t5, t3, s10
Current Store : [0x800008dc] : sw t6, 396(ra) -- Store: [0x800033fc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709551611', 'rs1_val == 18446744073709551551']
Last Code Sequence : 
	-[0x800008f0]:URSUB64 t5, t3, s10
Current Store : [0x800008f8] : sw t6, 404(ra) -- Store: [0x80003404]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709551613']
Last Code Sequence : 
	-[0x8000090c]:URSUB64 t5, t3, s10
Current Store : [0x80000914] : sw t6, 412(ra) -- Store: [0x8000340c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 18446744073709551614', 'rs1_val == 18446743523953737727']
Last Code Sequence : 
	-[0x80000928]:URSUB64 t5, t3, s10
Current Store : [0x80000930] : sw t6, 420(ra) -- Store: [0x80003414]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 13835058055282163711', 'rs2_val == 32']
Last Code Sequence : 
	-[0x80000948]:URSUB64 t5, t3, s10
Current Store : [0x80000950] : sw t6, 428(ra) -- Store: [0x8000341c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18158513697557839871']
Last Code Sequence : 
	-[0x8000096c]:URSUB64 t5, t3, s10
Current Store : [0x80000974] : sw t6, 436(ra) -- Store: [0x80003424]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18302628885633695743']
Last Code Sequence : 
	-[0x8000098c]:URSUB64 t5, t3, s10
Current Store : [0x80000994] : sw t6, 444(ra) -- Store: [0x8000342c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18374686479671623679', 'rs2_val == 524288']
Last Code Sequence : 
	-[0x800009ac]:URSUB64 t5, t3, s10
Current Store : [0x800009b4] : sw t6, 452(ra) -- Store: [0x80003434]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18410715276690587647', 'rs2_val == 1024']
Last Code Sequence : 
	-[0x800009cc]:URSUB64 t5, t3, s10
Current Store : [0x800009d4] : sw t6, 460(ra) -- Store: [0x8000343c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18428729675200069631', 'rs2_val == 65536']
Last Code Sequence : 
	-[0x800009ec]:URSUB64 t5, t3, s10
Current Store : [0x800009f4] : sw t6, 468(ra) -- Store: [0x80003444]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18442240474082181119']
Last Code Sequence : 
	-[0x80000a0c]:URSUB64 t5, t3, s10
Current Store : [0x80000a14] : sw t6, 476(ra) -- Store: [0x8000344c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18444492273895866367', 'rs2_val == 64']
Last Code Sequence : 
	-[0x80000a2c]:URSUB64 t5, t3, s10
Current Store : [0x80000a34] : sw t6, 484(ra) -- Store: [0x80003454]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18445618173802708991', 'rs2_val == 549755813888']
Last Code Sequence : 
	-[0x80000a4c]:URSUB64 t5, t3, s10
Current Store : [0x80000a54] : sw t6, 492(ra) -- Store: [0x8000345c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446181123756130303']
Last Code Sequence : 
	-[0x80000a70]:URSUB64 t5, t3, s10
Current Store : [0x80000a78] : sw t6, 500(ra) -- Store: [0x80003464]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446462598732840959']
Last Code Sequence : 
	-[0x80000a94]:URSUB64 t5, t3, s10
Current Store : [0x80000a9c] : sw t6, 508(ra) -- Store: [0x8000346c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446603336221196287']
Last Code Sequence : 
	-[0x80000ab4]:URSUB64 t5, t3, s10
Current Store : [0x80000abc] : sw t6, 516(ra) -- Store: [0x80003474]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446708889337462783']
Last Code Sequence : 
	-[0x80000ad8]:URSUB64 t5, t3, s10
Current Store : [0x80000ae0] : sw t6, 524(ra) -- Store: [0x8000347c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446726481523507199']
Last Code Sequence : 
	-[0x80000af8]:URSUB64 t5, t3, s10
Current Store : [0x80000b00] : sw t6, 532(ra) -- Store: [0x80003484]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446739675663040511']
Last Code Sequence : 
	-[0x80000b14]:URSUB64 t5, t3, s10
Current Store : [0x80000b1c] : sw t6, 540(ra) -- Store: [0x8000348c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446741874686296063']
Last Code Sequence : 
	-[0x80000b30]:URSUB64 t5, t3, s10
Current Store : [0x80000b38] : sw t6, 548(ra) -- Store: [0x80003494]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 9223372036854775807', 'rs1_val == 18446742974197923839']
Last Code Sequence : 
	-[0x80000b50]:URSUB64 t5, t3, s10
Current Store : [0x80000b58] : sw t6, 556(ra) -- Store: [0x8000349c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446743936270598143']
Last Code Sequence : 
	-[0x80000b6c]:URSUB64 t5, t3, s10
Current Store : [0x80000b74] : sw t6, 564(ra) -- Store: [0x800034a4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744039349813247', 'rs2_val == 18014398509481984']
Last Code Sequence : 
	-[0x80000b88]:URSUB64 t5, t3, s10
Current Store : [0x80000b90] : sw t6, 572(ra) -- Store: [0x800034ac]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 1']
Last Code Sequence : 
	-[0x80000ba4]:URSUB64 t5, t3, s10
Current Store : [0x80000bac] : sw t6, 580(ra) -- Store: [0x800034b4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 1024', 'rs2_val == 12297829382473034410']
Last Code Sequence : 
	-[0x80000bc8]:URSUB64 t5, t3, s10
Current Store : [0x80000bd0] : sw t6, 588(ra) -- Store: [0x800034bc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 6148914691236517205']
Last Code Sequence : 
	-[0x80000bec]:URSUB64 t5, t3, s10
Current Store : [0x80000bf4] : sw t6, 596(ra) -- Store: [0x800034c4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 12297829382473034410']
Last Code Sequence : 
	-[0x80000c10]:URSUB64 t5, t3, s10
Current Store : [0x80000c18] : sw t6, 604(ra) -- Store: [0x800034cc]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == (2**64-1)']
Last Code Sequence : 
	-[0x80000c2c]:URSUB64 t5, t3, s10
Current Store : [0x80000c34] : sw t6, 612(ra) -- Store: [0x800034d4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == (2**64-1)']
Last Code Sequence : 
	-[0x80000c48]:URSUB64 t5, t3, s10
Current Store : [0x80000c50] : sw t6, 620(ra) -- Store: [0x800034dc]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 256', 'rs2_val == 0']
Last Code Sequence : 
	-[0x80000c64]:URSUB64 t5, t3, s10
Current Store : [0x80000c6c] : sw t6, 628(ra) -- Store: [0x800034e4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744065119617023']
Last Code Sequence : 
	-[0x80000c84]:URSUB64 t5, t3, s10
Current Store : [0x80000c8c] : sw t6, 636(ra) -- Store: [0x800034ec]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744069414584319']
Last Code Sequence : 
	-[0x80000ca4]:URSUB64 t5, t3, s10
Current Store : [0x80000cac] : sw t6, 644(ra) -- Store: [0x800034f4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073172680703']
Last Code Sequence : 
	-[0x80000cc4]:URSUB64 t5, t3, s10
Current Store : [0x80000ccc] : sw t6, 652(ra) -- Store: [0x800034fc]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073441116159', 'rs2_val == 128']
Last Code Sequence : 
	-[0x80000ce4]:URSUB64 t5, t3, s10
Current Store : [0x80000cec] : sw t6, 660(ra) -- Store: [0x80003504]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073642442751']
Last Code Sequence : 
	-[0x80000d04]:URSUB64 t5, t3, s10
Current Store : [0x80000d0c] : sw t6, 668(ra) -- Store: [0x8000350c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073675997183']
Last Code Sequence : 
	-[0x80000d24]:URSUB64 t5, t3, s10
Current Store : [0x80000d2c] : sw t6, 676(ra) -- Store: [0x80003514]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073692774399']
Last Code Sequence : 
	-[0x80000d44]:URSUB64 t5, t3, s10
Current Store : [0x80000d4c] : sw t6, 684(ra) -- Store: [0x8000351c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073705357311']
Last Code Sequence : 
	-[0x80000d68]:URSUB64 t5, t3, s10
Current Store : [0x80000d70] : sw t6, 692(ra) -- Store: [0x80003524]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073707454463', 'rs2_val == 2199023255552']
Last Code Sequence : 
	-[0x80000d88]:URSUB64 t5, t3, s10
Current Store : [0x80000d90] : sw t6, 700(ra) -- Store: [0x8000352c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709027327']
Last Code Sequence : 
	-[0x80000da8]:URSUB64 t5, t3, s10
Current Store : [0x80000db0] : sw t6, 708(ra) -- Store: [0x80003534]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709420543']
Last Code Sequence : 
	-[0x80000dc8]:URSUB64 t5, t3, s10
Current Store : [0x80000dd0] : sw t6, 716(ra) -- Store: [0x8000353c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709486079', 'rs2_val == 562949953421312']
Last Code Sequence : 
	-[0x80000de8]:URSUB64 t5, t3, s10
Current Store : [0x80000df0] : sw t6, 724(ra) -- Store: [0x80003544]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709535231', 'rs2_val == 137438953472']
Last Code Sequence : 
	-[0x80000e08]:URSUB64 t5, t3, s10
Current Store : [0x80000e10] : sw t6, 732(ra) -- Store: [0x8000354c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709543423']
Last Code Sequence : 
	-[0x80000e28]:URSUB64 t5, t3, s10
Current Store : [0x80000e30] : sw t6, 740(ra) -- Store: [0x80003554]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709547519']
Last Code Sequence : 
	-[0x80000e4c]:URSUB64 t5, t3, s10
Current Store : [0x80000e54] : sw t6, 748(ra) -- Store: [0x8000355c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709551103', 'rs2_val == 35184372088832']
Last Code Sequence : 
	-[0x80000e68]:URSUB64 t5, t3, s10
Current Store : [0x80000e70] : sw t6, 756(ra) -- Store: [0x80003564]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709551359', 'rs2_val == 32768']
Last Code Sequence : 
	-[0x80000e84]:URSUB64 t5, t3, s10
Current Store : [0x80000e8c] : sw t6, 764(ra) -- Store: [0x8000356c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709551599']
Last Code Sequence : 
	-[0x80000ea0]:URSUB64 t5, t3, s10
Current Store : [0x80000ea8] : sw t6, 772(ra) -- Store: [0x80003574]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709551611']
Last Code Sequence : 
	-[0x80000ec0]:URSUB64 t5, t3, s10
Current Store : [0x80000ec8] : sw t6, 780(ra) -- Store: [0x8000357c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709551613']
Last Code Sequence : 
	-[0x80000edc]:URSUB64 t5, t3, s10
Current Store : [0x80000ee4] : sw t6, 788(ra) -- Store: [0x80003584]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 9223372036854775808']
Last Code Sequence : 
	-[0x80000ef8]:URSUB64 t5, t3, s10
Current Store : [0x80000f00] : sw t6, 796(ra) -- Store: [0x8000358c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 4611686018427387904']
Last Code Sequence : 
	-[0x80000f14]:URSUB64 t5, t3, s10
Current Store : [0x80000f1c] : sw t6, 804(ra) -- Store: [0x80003594]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 2305843009213693952']
Last Code Sequence : 
	-[0x80000f30]:URSUB64 t5, t3, s10
Current Store : [0x80000f38] : sw t6, 812(ra) -- Store: [0x8000359c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 1152921504606846976']
Last Code Sequence : 
	-[0x80000f50]:URSUB64 t5, t3, s10
Current Store : [0x80000f58] : sw t6, 820(ra) -- Store: [0x800035a4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 576460752303423488']
Last Code Sequence : 
	-[0x80000f70]:URSUB64 t5, t3, s10
Current Store : [0x80000f78] : sw t6, 828(ra) -- Store: [0x800035ac]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 288230376151711744']
Last Code Sequence : 
	-[0x80000f8c]:URSUB64 t5, t3, s10
Current Store : [0x80000f94] : sw t6, 836(ra) -- Store: [0x800035b4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 144115188075855872']
Last Code Sequence : 
	-[0x80000fa8]:URSUB64 t5, t3, s10
Current Store : [0x80000fb0] : sw t6, 844(ra) -- Store: [0x800035bc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 72057594037927936']
Last Code Sequence : 
	-[0x80000fc8]:URSUB64 t5, t3, s10
Current Store : [0x80000fd0] : sw t6, 852(ra) -- Store: [0x800035c4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 36028797018963968']
Last Code Sequence : 
	-[0x80000fe8]:URSUB64 t5, t3, s10
Current Store : [0x80000ff0] : sw t6, 860(ra) -- Store: [0x800035cc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 9007199254740992']
Last Code Sequence : 
	-[0x80001004]:URSUB64 t5, t3, s10
Current Store : [0x8000100c] : sw t6, 868(ra) -- Store: [0x800035d4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 4503599627370496']
Last Code Sequence : 
	-[0x80001020]:URSUB64 t5, t3, s10
Current Store : [0x80001028] : sw t6, 876(ra) -- Store: [0x800035dc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 2251799813685248']
Last Code Sequence : 
	-[0x80001040]:URSUB64 t5, t3, s10
Current Store : [0x80001048] : sw t6, 884(ra) -- Store: [0x800035e4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 1125899906842624']
Last Code Sequence : 
	-[0x8000105c]:URSUB64 t5, t3, s10
Current Store : [0x80001064] : sw t6, 892(ra) -- Store: [0x800035ec]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 281474976710656']
Last Code Sequence : 
	-[0x80001078]:URSUB64 t5, t3, s10
Current Store : [0x80001080] : sw t6, 900(ra) -- Store: [0x800035f4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 140737488355328']
Last Code Sequence : 
	-[0x80001094]:URSUB64 t5, t3, s10
Current Store : [0x8000109c] : sw t6, 908(ra) -- Store: [0x800035fc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 70368744177664']
Last Code Sequence : 
	-[0x800010b0]:URSUB64 t5, t3, s10
Current Store : [0x800010b8] : sw t6, 916(ra) -- Store: [0x80003604]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 17592186044416', 'rs1_val == 33554432']
Last Code Sequence : 
	-[0x800010cc]:URSUB64 t5, t3, s10
Current Store : [0x800010d4] : sw t6, 924(ra) -- Store: [0x8000360c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 8796093022208', 'rs1_val == 536870912']
Last Code Sequence : 
	-[0x800010ec]:URSUB64 t5, t3, s10
Current Store : [0x800010f4] : sw t6, 932(ra) -- Store: [0x80003614]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 4398046511104']
Last Code Sequence : 
	-[0x80001108]:URSUB64 t5, t3, s10
Current Store : [0x80001110] : sw t6, 940(ra) -- Store: [0x8000361c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 1099511627776']
Last Code Sequence : 
	-[0x80001128]:URSUB64 t5, t3, s10
Current Store : [0x80001130] : sw t6, 948(ra) -- Store: [0x80003624]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 274877906944']
Last Code Sequence : 
	-[0x80001148]:URSUB64 t5, t3, s10
Current Store : [0x80001150] : sw t6, 956(ra) -- Store: [0x8000362c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 68719476736']
Last Code Sequence : 
	-[0x80001164]:URSUB64 t5, t3, s10
Current Store : [0x8000116c] : sw t6, 964(ra) -- Store: [0x80003634]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 34359738368']
Last Code Sequence : 
	-[0x80001180]:URSUB64 t5, t3, s10
Current Store : [0x80001188] : sw t6, 972(ra) -- Store: [0x8000363c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 17179869184']
Last Code Sequence : 
	-[0x800011a0]:URSUB64 t5, t3, s10
Current Store : [0x800011a8] : sw t6, 980(ra) -- Store: [0x80003644]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 8589934592']
Last Code Sequence : 
	-[0x800011c0]:URSUB64 t5, t3, s10
Current Store : [0x800011c8] : sw t6, 988(ra) -- Store: [0x8000364c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 4294967296']
Last Code Sequence : 
	-[0x800011dc]:URSUB64 t5, t3, s10
Current Store : [0x800011e4] : sw t6, 996(ra) -- Store: [0x80003654]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 2147483648', 'rs1_val == 8796093022208']
Last Code Sequence : 
	-[0x800011fc]:URSUB64 t5, t3, s10
Current Store : [0x80001204] : sw t6, 1004(ra) -- Store: [0x8000365c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 1073741824']
Last Code Sequence : 
	-[0x8000121c]:URSUB64 t5, t3, s10
Current Store : [0x80001224] : sw t6, 1012(ra) -- Store: [0x80003664]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 536870912']
Last Code Sequence : 
	-[0x8000123c]:URSUB64 t5, t3, s10
Current Store : [0x80001244] : sw t6, 1020(ra) -- Store: [0x8000366c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 268435456']
Last Code Sequence : 
	-[0x80001258]:URSUB64 t5, t3, s10
Current Store : [0x80001260] : sw t6, 1028(ra) -- Store: [0x80003674]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 67108864', 'rs1_val == 1099511627776']
Last Code Sequence : 
	-[0x80001274]:URSUB64 t5, t3, s10
Current Store : [0x8000127c] : sw t6, 1036(ra) -- Store: [0x8000367c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x80001294]:URSUB64 t5, t3, s10
Current Store : [0x8000129c] : sw t6, 1044(ra) -- Store: [0x80003684]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 8388608']
Last Code Sequence : 
	-[0x800012b0]:URSUB64 t5, t3, s10
Current Store : [0x800012b8] : sw t6, 1052(ra) -- Store: [0x8000368c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 4194304']
Last Code Sequence : 
	-[0x800012cc]:URSUB64 t5, t3, s10
Current Store : [0x800012d4] : sw t6, 1060(ra) -- Store: [0x80003694]:0xFFF7FFFF




Last Coverpoint : ['opcode : ursub64', 'rs1 : x28', 'rs2 : x26', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0', 'rs1_val == 18446744073575333887', 'rs2_val == 2097152', 'rs1_val > 0 and rs2_val > 0']
Last Code Sequence : 
	-[0x800012ec]:URSUB64 t5, t3, s10
Current Store : [0x800012f4] : sw t6, 1068(ra) -- Store: [0x8000369c]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 1048576', 'rs1_val == 144115188075855872']
Last Code Sequence : 
	-[0x80001308]:URSUB64 t5, t3, s10
Current Store : [0x80001310] : sw t6, 1076(ra) -- Store: [0x800036a4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 262144']
Last Code Sequence : 
	-[0x80001324]:URSUB64 t5, t3, s10
Current Store : [0x8000132c] : sw t6, 1084(ra) -- Store: [0x800036ac]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 131072', 'rs1_val == 1125899906842624']
Last Code Sequence : 
	-[0x80001340]:URSUB64 t5, t3, s10
Current Store : [0x80001348] : sw t6, 1092(ra) -- Store: [0x800036b4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 16384']
Last Code Sequence : 
	-[0x8000135c]:URSUB64 t5, t3, s10
Current Store : [0x80001364] : sw t6, 1100(ra) -- Store: [0x800036bc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 8192']
Last Code Sequence : 
	-[0x80001378]:URSUB64 t5, t3, s10
Current Store : [0x80001380] : sw t6, 1108(ra) -- Store: [0x800036c4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 4096', 'rs1_val == 16']
Last Code Sequence : 
	-[0x80001394]:URSUB64 t5, t3, s10
Current Store : [0x8000139c] : sw t6, 1116(ra) -- Store: [0x800036cc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 2048']
Last Code Sequence : 
	-[0x800013b4]:URSUB64 t5, t3, s10
Current Store : [0x800013bc] : sw t6, 1124(ra) -- Store: [0x800036d4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 512']
Last Code Sequence : 
	-[0x800013d4]:URSUB64 t5, t3, s10
Current Store : [0x800013dc] : sw t6, 1132(ra) -- Store: [0x800036dc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x800013f0]:URSUB64 t5, t3, s10
Current Store : [0x800013f8] : sw t6, 1140(ra) -- Store: [0x800036e4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 16']
Last Code Sequence : 
	-[0x80001410]:URSUB64 t5, t3, s10
Current Store : [0x80001418] : sw t6, 1148(ra) -- Store: [0x800036ec]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 8']
Last Code Sequence : 
	-[0x8000142c]:URSUB64 t5, t3, s10
Current Store : [0x80001434] : sw t6, 1156(ra) -- Store: [0x800036f4]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x80001448]:URSUB64 t5, t3, s10
Current Store : [0x80001450] : sw t6, 1164(ra) -- Store: [0x800036fc]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 2']
Last Code Sequence : 
	-[0x80001468]:URSUB64 t5, t3, s10
Current Store : [0x80001470] : sw t6, 1172(ra) -- Store: [0x80003704]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 1', 'rs1_val == 8192']
Last Code Sequence : 
	-[0x80001484]:URSUB64 t5, t3, s10
Current Store : [0x8000148c] : sw t6, 1180(ra) -- Store: [0x8000370c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 9223372036854775808']
Last Code Sequence : 
	-[0x800014a4]:URSUB64 t5, t3, s10
Current Store : [0x800014ac] : sw t6, 1188(ra) -- Store: [0x80003714]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 2305843009213693952']
Last Code Sequence : 
	-[0x800014c0]:URSUB64 t5, t3, s10
Current Store : [0x800014c8] : sw t6, 1196(ra) -- Store: [0x8000371c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 576460752303423488']
Last Code Sequence : 
	-[0x800014dc]:URSUB64 t5, t3, s10
Current Store : [0x800014e4] : sw t6, 1204(ra) -- Store: [0x80003724]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 288230376151711744']
Last Code Sequence : 
	-[0x800014f8]:URSUB64 t5, t3, s10
Current Store : [0x80001500] : sw t6, 1212(ra) -- Store: [0x8000372c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 72057594037927936']
Last Code Sequence : 
	-[0x80001518]:URSUB64 t5, t3, s10
Current Store : [0x80001520] : sw t6, 1220(ra) -- Store: [0x80003734]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 18014398509481984']
Last Code Sequence : 
	-[0x80001538]:URSUB64 t5, t3, s10
Current Store : [0x80001540] : sw t6, 1228(ra) -- Store: [0x8000373c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 2251799813685248']
Last Code Sequence : 
	-[0x80001554]:URSUB64 t5, t3, s10
Current Store : [0x8000155c] : sw t6, 1236(ra) -- Store: [0x80003744]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 562949953421312']
Last Code Sequence : 
	-[0x80001570]:URSUB64 t5, t3, s10
Current Store : [0x80001578] : sw t6, 1244(ra) -- Store: [0x8000374c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 281474976710656']
Last Code Sequence : 
	-[0x8000158c]:URSUB64 t5, t3, s10
Current Store : [0x80001594] : sw t6, 1252(ra) -- Store: [0x80003754]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 140737488355328']
Last Code Sequence : 
	-[0x800015ac]:URSUB64 t5, t3, s10
Current Store : [0x800015b4] : sw t6, 1260(ra) -- Store: [0x8000375c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 17592186044416']
Last Code Sequence : 
	-[0x800015c8]:URSUB64 t5, t3, s10
Current Store : [0x800015d0] : sw t6, 1268(ra) -- Store: [0x80003764]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 4398046511104']
Last Code Sequence : 
	-[0x800015e8]:URSUB64 t5, t3, s10
Current Store : [0x800015f0] : sw t6, 1276(ra) -- Store: [0x8000376c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 2199023255552']
Last Code Sequence : 
	-[0x80001604]:URSUB64 t5, t3, s10
Current Store : [0x8000160c] : sw t6, 1284(ra) -- Store: [0x80003774]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 274877906944']
Last Code Sequence : 
	-[0x80001620]:URSUB64 t5, t3, s10
Current Store : [0x80001628] : sw t6, 1292(ra) -- Store: [0x8000377c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 137438953472']
Last Code Sequence : 
	-[0x8000163c]:URSUB64 t5, t3, s10
Current Store : [0x80001644] : sw t6, 1300(ra) -- Store: [0x80003784]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 68719476736']
Last Code Sequence : 
	-[0x8000165c]:URSUB64 t5, t3, s10
Current Store : [0x80001664] : sw t6, 1308(ra) -- Store: [0x8000378c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 34359738368']
Last Code Sequence : 
	-[0x8000167c]:URSUB64 t5, t3, s10
Current Store : [0x80001684] : sw t6, 1316(ra) -- Store: [0x80003794]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 17179869184']
Last Code Sequence : 
	-[0x80001698]:URSUB64 t5, t3, s10
Current Store : [0x800016a0] : sw t6, 1324(ra) -- Store: [0x8000379c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 2147483648']
Last Code Sequence : 
	-[0x800016b4]:URSUB64 t5, t3, s10
Current Store : [0x800016bc] : sw t6, 1332(ra) -- Store: [0x800037a4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 134217728']
Last Code Sequence : 
	-[0x800016d0]:URSUB64 t5, t3, s10
Current Store : [0x800016d8] : sw t6, 1340(ra) -- Store: [0x800037ac]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 67108864']
Last Code Sequence : 
	-[0x800016ec]:URSUB64 t5, t3, s10
Current Store : [0x800016f4] : sw t6, 1348(ra) -- Store: [0x800037b4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 8388608']
Last Code Sequence : 
	-[0x8000170c]:URSUB64 t5, t3, s10
Current Store : [0x80001714] : sw t6, 1356(ra) -- Store: [0x800037bc]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 4194304']
Last Code Sequence : 
	-[0x80001728]:URSUB64 t5, t3, s10
Current Store : [0x80001730] : sw t6, 1364(ra) -- Store: [0x800037c4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 1048576']
Last Code Sequence : 
	-[0x80001744]:URSUB64 t5, t3, s10
Current Store : [0x8000174c] : sw t6, 1372(ra) -- Store: [0x800037cc]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 524288']
Last Code Sequence : 
	-[0x80001768]:URSUB64 t5, t3, s10
Current Store : [0x80001770] : sw t6, 1380(ra) -- Store: [0x800037d4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 32768']
Last Code Sequence : 
	-[0x80001784]:URSUB64 t5, t3, s10
Current Store : [0x8000178c] : sw t6, 1388(ra) -- Store: [0x800037dc]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 16384']
Last Code Sequence : 
	-[0x800017a0]:URSUB64 t5, t3, s10
Current Store : [0x800017a8] : sw t6, 1396(ra) -- Store: [0x800037e4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 4096']
Last Code Sequence : 
	-[0x800017bc]:URSUB64 t5, t3, s10
Current Store : [0x800017c4] : sw t6, 1404(ra) -- Store: [0x800037ec]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 512']
Last Code Sequence : 
	-[0x800017d8]:URSUB64 t5, t3, s10
Current Store : [0x800017e0] : sw t6, 1412(ra) -- Store: [0x800037f4]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 128']
Last Code Sequence : 
	-[0x800017f8]:URSUB64 t5, t3, s10
Current Store : [0x80001800] : sw t6, 1420(ra) -- Store: [0x800037fc]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 32']
Last Code Sequence : 
	-[0x80001814]:URSUB64 t5, t3, s10
Current Store : [0x8000181c] : sw t6, 1428(ra) -- Store: [0x80003804]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 4']
Last Code Sequence : 
	-[0x80001830]:URSUB64 t5, t3, s10
Current Store : [0x80001838] : sw t6, 1436(ra) -- Store: [0x8000380c]:0xFFF7FFFF




Last Coverpoint : ['rs1_val == 2']
Last Code Sequence : 
	-[0x8000184c]:URSUB64 t5, t3, s10
Current Store : [0x80001854] : sw t6, 1444(ra) -- Store: [0x80003814]:0xFFF7FFFF




Last Coverpoint : ['rs2_val == 134217728']
Last Code Sequence : 
	-[0x80001868]:URSUB64 t5, t3, s10
Current Store : [0x80001870] : sw t6, 1452(ra) -- Store: [0x8000381c]:0xFFF7FFFF





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

|s.no|        signature         |                                                                                                                coverpoints                                                                                                                 |                code                 |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : ursub64<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs2_val == 16777216<br> - rs1_val == 16777216<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br> |[0x80000110]:URSUB64 s2, s2, s2<br>  |
|   2|[0x80003218]<br>0x00000000|- rs1 : x6<br> - rs2 : x6<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs2_val == 2097152<br> - rs1_val == 2097152<br>                                                                                                                       |[0x8000012c]:URSUB64 s6, t1, t1<br>  |
|   3|[0x80003220]<br>0x00000000|- rs1 : x26<br> - rs2 : x4<br> - rd : x12<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 13835058055282163711<br> - rs1_val == 16140901064495857663<br>            |[0x80000150]:URSUB64 a2, s10, tp<br> |
|   4|[0x80003228]<br>0x00000000|- rs1 : x30<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs2_val == 16140901064495857663<br> - rs1_val == 18437736874454810623<br>                                                                                             |[0x80000174]:URSUB64 sp, t5, sp<br>  |
|   5|[0x80003230]<br>0x00010000|- rs1 : x14<br> - rs2 : x20<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs2_val == 17293822569102704639<br> - rs1_val == 131072<br>                                                                                                         |[0x80000194]:URSUB64 a4, a4, s4<br>  |
|   6|[0x80003238]<br>0x00000000|- rs1 : x8<br> - rs2 : x22<br> - rd : x28<br> - rs2_val == 17870283321406128127<br> - rs1_val == 9007199254740992<br>                                                                                                                       |[0x800001b4]:URSUB64 t3, fp, s6<br>  |
|   7|[0x80003240]<br>0x00000000|- rs1 : x24<br> - rs2 : x26<br> - rd : x10<br> - rs2_val == 18158513697557839871<br> - rs1_val == 1152921504606846976<br>                                                                                                                   |[0x800001dc]:URSUB64 a0, s8, s10<br> |
|   8|[0x80003248]<br>0xFFFFC000|- rs1 : x22<br> - rs2 : x24<br> - rd : x16<br> - rs2_val == 18302628885633695743<br> - rs1_val == 18446744073709518847<br>                                                                                                                  |[0x80000200]:URSUB64 a6, s6, s8<br>  |
|   9|[0x80003250]<br>0x00000000|- rs1 : x20<br> - rs2 : x8<br> - rd : x6<br> - rs2_val == 18374686479671623679<br> - rs1_val == 18446744004990074879<br>                                                                                                                    |[0x80000220]:URSUB64 t1, s4, fp<br>  |
|  10|[0x80003258]<br>0x00000000|- rs1 : x4<br> - rs2 : x10<br> - rd : x8<br> - rs2_val == 18410715276690587647<br> - rs1_val == 18446735277616529407<br>                                                                                                                    |[0x80000244]:URSUB64 fp, tp, a0<br>  |
|  11|[0x80003260]<br>0x80000000|- rs1 : x2<br> - rs2 : x16<br> - rd : x26<br> - rs2_val == 18428729675200069631<br> - rs1_val == 4294967296<br>                                                                                                                             |[0x80000264]:URSUB64 s10, sp, a6<br> |
|  12|[0x80003268]<br>0xFFC00000|- rs1 : x12<br> - rs2 : x28<br> - rd : x20<br> - rs2_val == 18437736874454810623<br> - rs1_val == 18446744073701163007<br>                                                                                                                  |[0x80000288]:URSUB64 s4, a2, t3<br>  |
|  13|[0x80003270]<br>0xFFFFFC00|- rs1 : x10<br> - rs2 : x14<br> - rd : x30<br> - rs2_val == 18442240474082181119<br> - rs1_val == 18446744073709549567<br>                                                                                                                  |[0x800002b4]:URSUB64 t5, a0, a4<br>  |
|  14|[0x80003278]<br>0x00000000|- rs1 : x16<br> - rs2 : x30<br> - rd : x24<br> - rs2_val == 18444492273895866367<br> - rs1_val == 18446744056529682431<br>                                                                                                                  |[0x800002d4]:URSUB64 s8, a6, t5<br>  |
|  15|[0x80003280]<br>0x00000009|- rs1 : x28<br> - rs2 : x12<br> - rd : x4<br> - rs2_val == 18445618173802708991<br>                                                                                                                                                         |[0x800002f4]:URSUB64 tp, t3, a2<br>  |
|  16|[0x80003288]<br>0xFFC00000|- rs2_val == 18446181123756130303<br>                                                                                                                                                                                                       |[0x80000318]:URSUB64 t5, t3, s10<br> |
|  17|[0x80003290]<br>0xFFF80000|- rs2_val == 18446462598732840959<br> - rs1_val == 18446744073708503039<br>                                                                                                                                                                 |[0x8000033c]:URSUB64 t5, t3, s10<br> |
|  18|[0x80003298]<br>0x00010000|- rs2_val == 18446603336221196287<br>                                                                                                                                                                                                       |[0x8000035c]:URSUB64 t5, t3, s10<br> |
|  19|[0x800032a0]<br>0x00000000|- rs2_val == 18446673704965373951<br> - rs1_val == 0<br>                                                                                                                                                                                    |[0x8000037c]:URSUB64 t5, t3, s10<br> |
|  20|[0x800032a8]<br>0xFFFFFFC0|- rs2_val == 18446708889337462783<br> - rs1_val == 18446744073709551487<br>                                                                                                                                                                 |[0x8000039c]:URSUB64 t5, t3, s10<br> |
|  21|[0x800032b0]<br>0xFFFFFFFC|- rs2_val == 18446726481523507199<br> - rs1_val == 18446744073709551607<br>                                                                                                                                                                 |[0x800003bc]:URSUB64 t5, t3, s10<br> |
|  22|[0x800032b8]<br>0x00000000|- rs2_val == 18446735277616529407<br> - rs1_val == 17293822569102704639<br>                                                                                                                                                                 |[0x800003e0]:URSUB64 t5, t3, s10<br> |
|  23|[0x800032c0]<br>0x08000000|- rs2_val == 18446739675663040511<br> - rs1_val == 268435456<br>                                                                                                                                                                            |[0x800003fc]:URSUB64 t5, t3, s10<br> |
|  24|[0x800032c8]<br>0x20000000|- rs2_val == 18446741874686296063<br> - rs1_val == 1073741824<br>                                                                                                                                                                           |[0x80000418]:URSUB64 t5, t3, s10<br> |
|  25|[0x800032d0]<br>0x00000000|- rs2_val == 18446742974197923839<br>                                                                                                                                                                                                       |[0x80000438]:URSUB64 t5, t3, s10<br> |
|  26|[0x800032d8]<br>0xAAAAAAAB|- rs2_val == 18446743523953737727<br> - rs1_val == 6148914691236517205<br>                                                                                                                                                                  |[0x8000045c]:URSUB64 t5, t3, s10<br> |
|  27|[0x800032e0]<br>0x00000000|- rs2_val == 18446743798831644671<br> - rs1_val == 18446743798831644671<br>                                                                                                                                                                 |[0x80000478]:URSUB64 t5, t3, s10<br> |
|  28|[0x800032e8]<br>0xC0000000|- rs2_val == 18446743936270598143<br> - rs1_val == 18446744071562067967<br>                                                                                                                                                                 |[0x80000498]:URSUB64 t5, t3, s10<br> |
|  29|[0x800032f0]<br>0x00000000|- rs2_val == 18446744004990074879<br> - rs1_val == 9223372036854775807<br>                                                                                                                                                                  |[0x800004b8]:URSUB64 t5, t3, s10<br> |
|  30|[0x800032f8]<br>0x00000020|- rs2_val == 18446744039349813247<br> - rs1_val == 64<br>                                                                                                                                                                                   |[0x800004d4]:URSUB64 t5, t3, s10<br> |
|  31|[0x80003300]<br>0x0000000A|- rs2_val == 18446744056529682431<br>                                                                                                                                                                                                       |[0x800004f0]:URSUB64 t5, t3, s10<br> |
|  32|[0x80003308]<br>0xFFF80000|- rs2_val == 18446744065119617023<br>                                                                                                                                                                                                       |[0x80000510]:URSUB64 t5, t3, s10<br> |
|  33|[0x80003310]<br>0x80100000|- rs2_val == 18446744069414584319<br>                                                                                                                                                                                                       |[0x8000052c]:URSUB64 t5, t3, s10<br> |
|  34|[0x80003318]<br>0x3FFFFFFC|- rs2_val == 18446744071562067967<br>                                                                                                                                                                                                       |[0x8000054c]:URSUB64 t5, t3, s10<br> |
|  35|[0x80003320]<br>0x20000000|- rs2_val == 18446744072635809791<br>                                                                                                                                                                                                       |[0x80000570]:URSUB64 t5, t3, s10<br> |
|  36|[0x80003328]<br>0x10000000|- rs2_val == 18446744073172680703<br> - rs1_val == 17870283321406128127<br>                                                                                                                                                                 |[0x80000594]:URSUB64 t5, t3, s10<br> |
|  37|[0x80003330]<br>0x07C00000|- rs2_val == 18446744073441116159<br>                                                                                                                                                                                                       |[0x800005b8]:URSUB64 t5, t3, s10<br> |
|  38|[0x80003338]<br>0x04000400|- rs2_val == 18446744073575333887<br> - rs1_val == 2048<br>                                                                                                                                                                                 |[0x800005dc]:URSUB64 t5, t3, s10<br> |
|  39|[0x80003340]<br>0xE2000000|- rs2_val == 18446744073642442751<br> - rs1_val == 18446744072635809791<br>                                                                                                                                                                 |[0x80000600]:URSUB64 t5, t3, s10<br> |
|  40|[0x80003348]<br>0x01000000|- rs2_val == 18446744073675997183<br> - rs1_val == 4503599627370496<br>                                                                                                                                                                     |[0x80000620]:URSUB64 t5, t3, s10<br> |
|  41|[0x80003350]<br>0x007E0000|- rs2_val == 18446744073692774399<br> - rs1_val == 18446744073709289471<br>                                                                                                                                                                 |[0x80000644]:URSUB64 t5, t3, s10<br> |
|  42|[0x80003358]<br>0x00400000|- rs2_val == 18446744073701163007<br> - rs1_val == 8589934592<br>                                                                                                                                                                           |[0x80000664]:URSUB64 t5, t3, s10<br> |
|  43|[0x80003360]<br>0x00200000|- rs2_val == 18446744073705357311<br> - rs1_val == 18446673704965373951<br>                                                                                                                                                                 |[0x80000688]:URSUB64 t5, t3, s10<br> |
|  44|[0x80003368]<br>0x00100007|- rs2_val == 18446744073707454463<br>                                                                                                                                                                                                       |[0x800006a8]:URSUB64 t5, t3, s10<br> |
|  45|[0x80003370]<br>0x0007FFFF|- rs2_val == 18446744073708503039<br> - rs1_val == 18446744073709551614<br>                                                                                                                                                                 |[0x800006c8]:URSUB64 t5, t3, s10<br> |
|  46|[0x80003378]<br>0x0003FE00|- rs2_val == 18446744073709027327<br> - rs1_val == 18446744073709550591<br>                                                                                                                                                                 |[0x800006e8]:URSUB64 t5, t3, s10<br> |
|  47|[0x80003380]<br>0xFC020000|- rs2_val == 18446744073709289471<br> - rs1_val == 18446744073575333887<br>                                                                                                                                                                 |[0x8000070c]:URSUB64 t5, t3, s10<br> |
|  48|[0x80003388]<br>0x0000FFF0|- rs2_val == 18446744073709420543<br> - rs1_val == 18446744073709551583<br>                                                                                                                                                                 |[0x8000072c]:URSUB64 t5, t3, s10<br> |
|  49|[0x80003390]<br>0x00008000|- rs2_val == 18446744073709486079<br> - rs1_val == 70368744177664<br>                                                                                                                                                                       |[0x8000074c]:URSUB64 t5, t3, s10<br> |
|  50|[0x80003398]<br>0x00003FC0|- rs2_val == 18446744073709518847<br>                                                                                                                                                                                                       |[0x8000076c]:URSUB64 t5, t3, s10<br> |
|  51|[0x800033a0]<br>0x00002000|- rs2_val == 18446744073709535231<br> - rs1_val == 4611686018427387904<br>                                                                                                                                                                  |[0x8000078c]:URSUB64 t5, t3, s10<br> |
|  52|[0x800033a8]<br>0x00001000|- rs2_val == 18446744073709543423<br>                                                                                                                                                                                                       |[0x800007b0]:URSUB64 t5, t3, s10<br> |
|  53|[0x800033b0]<br>0x00008800|- rs2_val == 18446744073709547519<br> - rs1_val == 65536<br>                                                                                                                                                                                |[0x800007d0]:URSUB64 t5, t3, s10<br> |
|  54|[0x800033b8]<br>0x000003F0|- rs2_val == 18446744073709549567<br>                                                                                                                                                                                                       |[0x800007f0]:URSUB64 t5, t3, s10<br> |
|  55|[0x800033c0]<br>0x00000204|- rs2_val == 18446744073709550591<br> - rs1_val == 8<br>                                                                                                                                                                                    |[0x8000080c]:URSUB64 t5, t3, s10<br> |
|  56|[0x800033c8]<br>0x00000100|- rs2_val == 18446744073709551103<br> - rs1_val == 36028797018963968<br>                                                                                                                                                                    |[0x80000828]:URSUB64 t5, t3, s10<br> |
|  57|[0x800033d0]<br>0x00020080|- rs2_val == 18446744073709551359<br> - rs1_val == 262144<br>                                                                                                                                                                               |[0x80000844]:URSUB64 t5, t3, s10<br> |
|  58|[0x800033d8]<br>0x00000040|- rs2_val == 18446744073709551487<br>                                                                                                                                                                                                       |[0x80000864]:URSUB64 t5, t3, s10<br> |
|  59|[0x800033e0]<br>0x00000020|- rs2_val == 18446744073709551551<br> - rs1_val == 549755813888<br>                                                                                                                                                                         |[0x80000880]:URSUB64 t5, t3, s10<br> |
|  60|[0x800033e8]<br>0x00000010|- rs2_val == 18446744073709551583<br> - rs1_val == 35184372088832<br>                                                                                                                                                                       |[0x8000089c]:URSUB64 t5, t3, s10<br> |
|  61|[0x800033f0]<br>0x00000008|- rs2_val == 18446744073709551599<br>                                                                                                                                                                                                       |[0x800008b8]:URSUB64 t5, t3, s10<br> |
|  62|[0x800033f8]<br>0xFFFFFE04|- rs2_val == 18446744073709551607<br>                                                                                                                                                                                                       |[0x800008d4]:URSUB64 t5, t3, s10<br> |
|  63|[0x80003400]<br>0xFFFFFFE2|- rs2_val == 18446744073709551611<br> - rs1_val == 18446744073709551551<br>                                                                                                                                                                 |[0x800008f0]:URSUB64 t5, t3, s10<br> |
|  64|[0x80003408]<br>0x00000001|- rs2_val == 18446744073709551613<br>                                                                                                                                                                                                       |[0x8000090c]:URSUB64 t5, t3, s10<br> |
|  65|[0x80003410]<br>0x00000000|- rs2_val == 18446744073709551614<br> - rs1_val == 18446743523953737727<br>                                                                                                                                                                 |[0x80000928]:URSUB64 t5, t3, s10<br> |
|  66|[0x80003418]<br>0xFFFFFFEF|- rs1_val == 13835058055282163711<br> - rs2_val == 32<br>                                                                                                                                                                                   |[0x80000948]:URSUB64 t5, t3, s10<br> |
|  67|[0x80003420]<br>0x00000000|- rs1_val == 18158513697557839871<br>                                                                                                                                                                                                       |[0x8000096c]:URSUB64 t5, t3, s10<br> |
|  68|[0x80003428]<br>0x00000000|- rs1_val == 18302628885633695743<br>                                                                                                                                                                                                       |[0x8000098c]:URSUB64 t5, t3, s10<br> |
|  69|[0x80003430]<br>0xFFFBFFFF|- rs1_val == 18374686479671623679<br> - rs2_val == 524288<br>                                                                                                                                                                               |[0x800009ac]:URSUB64 t5, t3, s10<br> |
|  70|[0x80003438]<br>0xFFFFFDFF|- rs1_val == 18410715276690587647<br> - rs2_val == 1024<br>                                                                                                                                                                                 |[0x800009cc]:URSUB64 t5, t3, s10<br> |
|  71|[0x80003440]<br>0xFFFF7FFF|- rs1_val == 18428729675200069631<br> - rs2_val == 65536<br>                                                                                                                                                                                |[0x800009ec]:URSUB64 t5, t3, s10<br> |
|  72|[0x80003448]<br>0x00000001|- rs1_val == 18442240474082181119<br>                                                                                                                                                                                                       |[0x80000a0c]:URSUB64 t5, t3, s10<br> |
|  73|[0x80003450]<br>0xFFFFFFDF|- rs1_val == 18444492273895866367<br> - rs2_val == 64<br>                                                                                                                                                                                   |[0x80000a2c]:URSUB64 t5, t3, s10<br> |
|  74|[0x80003458]<br>0xFFFFFFFF|- rs1_val == 18445618173802708991<br> - rs2_val == 549755813888<br>                                                                                                                                                                         |[0x80000a4c]:URSUB64 t5, t3, s10<br> |
|  75|[0x80003460]<br>0x00000000|- rs1_val == 18446181123756130303<br>                                                                                                                                                                                                       |[0x80000a70]:URSUB64 t5, t3, s10<br> |
|  76|[0x80003468]<br>0x08000000|- rs1_val == 18446462598732840959<br>                                                                                                                                                                                                       |[0x80000a94]:URSUB64 t5, t3, s10<br> |
|  77|[0x80003470]<br>0x00000000|- rs1_val == 18446603336221196287<br>                                                                                                                                                                                                       |[0x80000ab4]:URSUB64 t5, t3, s10<br> |
|  78|[0x80003478]<br>0x04000000|- rs1_val == 18446708889337462783<br>                                                                                                                                                                                                       |[0x80000ad8]:URSUB64 t5, t3, s10<br> |
|  79|[0x80003480]<br>0xFFFFFFF6|- rs1_val == 18446726481523507199<br>                                                                                                                                                                                                       |[0x80000af8]:URSUB64 t5, t3, s10<br> |
|  80|[0x80003488]<br>0x00000001|- rs1_val == 18446739675663040511<br>                                                                                                                                                                                                       |[0x80000b14]:URSUB64 t5, t3, s10<br> |
|  81|[0x80003490]<br>0xFFFFFFFA|- rs1_val == 18446741874686296063<br>                                                                                                                                                                                                       |[0x80000b30]:URSUB64 t5, t3, s10<br> |
|  82|[0x80003498]<br>0x00000000|- rs2_val == 9223372036854775807<br> - rs1_val == 18446742974197923839<br>                                                                                                                                                                  |[0x80000b50]:URSUB64 t5, t3, s10<br> |
|  83|[0x800034a0]<br>0xFFFFFFF6|- rs1_val == 18446743936270598143<br>                                                                                                                                                                                                       |[0x80000b6c]:URSUB64 t5, t3, s10<br> |
|  84|[0x800034a8]<br>0xFFFFFFFF|- rs1_val == 18446744039349813247<br> - rs2_val == 18014398509481984<br>                                                                                                                                                                    |[0x80000b88]:URSUB64 t5, t3, s10<br> |
|  85|[0x800034b0]<br>0xFFFFFFFB|- rs1_val == 1<br>                                                                                                                                                                                                                          |[0x80000ba4]:URSUB64 t5, t3, s10<br> |
|  86|[0x800034b8]<br>0xAAAAACAB|- rs1_val == 1024<br> - rs2_val == 12297829382473034410<br>                                                                                                                                                                                 |[0x80000bc8]:URSUB64 t5, t3, s10<br> |
|  87|[0x800034c0]<br>0x55555545|- rs2_val == 6148914691236517205<br>                                                                                                                                                                                                        |[0x80000bec]:URSUB64 t5, t3, s10<br> |
|  88|[0x800034c8]<br>0x55555551|- rs1_val == 12297829382473034410<br>                                                                                                                                                                                                       |[0x80000c10]:URSUB64 t5, t3, s10<br> |
|  89|[0x800034d0]<br>0x00000000|- rs1_val == (2**64-1)<br>                                                                                                                                                                                                                  |[0x80000c2c]:URSUB64 t5, t3, s10<br> |
|  90|[0x800034d8]<br>0x00000000|- rs2_val == (2**64-1)<br>                                                                                                                                                                                                                  |[0x80000c48]:URSUB64 t5, t3, s10<br> |
|  91|[0x800034e0]<br>0x00000080|- rs1_val == 256<br> - rs2_val == 0<br>                                                                                                                                                                                                     |[0x80000c64]:URSUB64 t5, t3, s10<br> |
|  92|[0x800034e8]<br>0x00000000|- rs1_val == 18446744065119617023<br>                                                                                                                                                                                                       |[0x80000c84]:URSUB64 t5, t3, s10<br> |
|  93|[0x800034f0]<br>0x80800000|- rs1_val == 18446744069414584319<br>                                                                                                                                                                                                       |[0x80000ca4]:URSUB64 t5, t3, s10<br> |
|  94|[0x800034f8]<br>0xF0000020|- rs1_val == 18446744073172680703<br>                                                                                                                                                                                                       |[0x80000cc4]:URSUB64 t5, t3, s10<br> |
|  95|[0x80003500]<br>0xF7FFFFBF|- rs1_val == 18446744073441116159<br> - rs2_val == 128<br>                                                                                                                                                                                  |[0x80000ce4]:URSUB64 t5, t3, s10<br> |
|  96|[0x80003508]<br>0xFE000000|- rs1_val == 18446744073642442751<br>                                                                                                                                                                                                       |[0x80000d04]:URSUB64 t5, t3, s10<br> |
|  97|[0x80003510]<br>0xFE7FFFFF|- rs1_val == 18446744073675997183<br>                                                                                                                                                                                                       |[0x80000d24]:URSUB64 t5, t3, s10<br> |
|  98|[0x80003518]<br>0xFF7FFDFF|- rs1_val == 18446744073692774399<br>                                                                                                                                                                                                       |[0x80000d44]:URSUB64 t5, t3, s10<br> |
|  99|[0x80003520]<br>0xFFE00000|- rs1_val == 18446744073705357311<br>                                                                                                                                                                                                       |[0x80000d68]:URSUB64 t5, t3, s10<br> |
| 100|[0x80003528]<br>0xFFEFFFFF|- rs1_val == 18446744073707454463<br> - rs2_val == 2199023255552<br>                                                                                                                                                                        |[0x80000d88]:URSUB64 t5, t3, s10<br> |
| 101|[0x80003530]<br>0xFFFC0000|- rs1_val == 18446744073709027327<br>                                                                                                                                                                                                       |[0x80000da8]:URSUB64 t5, t3, s10<br> |
| 102|[0x80003538]<br>0xFFFEFFFB|- rs1_val == 18446744073709420543<br>                                                                                                                                                                                                       |[0x80000dc8]:URSUB64 t5, t3, s10<br> |
| 103|[0x80003540]<br>0xFFFF7FFF|- rs1_val == 18446744073709486079<br> - rs2_val == 562949953421312<br>                                                                                                                                                                      |[0x80000de8]:URSUB64 t5, t3, s10<br> |
| 104|[0x80003548]<br>0xFFFFDFFF|- rs1_val == 18446744073709535231<br> - rs2_val == 137438953472<br>                                                                                                                                                                         |[0x80000e08]:URSUB64 t5, t3, s10<br> |
| 105|[0x80003550]<br>0xFFFFF010|- rs1_val == 18446744073709543423<br>                                                                                                                                                                                                       |[0x80000e28]:URSUB64 t5, t3, s10<br> |
| 106|[0x80003558]<br>0xFFFFF800|- rs1_val == 18446744073709547519<br>                                                                                                                                                                                                       |[0x80000e4c]:URSUB64 t5, t3, s10<br> |
| 107|[0x80003560]<br>0xFFFFFEFF|- rs1_val == 18446744073709551103<br> - rs2_val == 35184372088832<br>                                                                                                                                                                       |[0x80000e68]:URSUB64 t5, t3, s10<br> |
| 108|[0x80003568]<br>0xFFFFBF7F|- rs1_val == 18446744073709551359<br> - rs2_val == 32768<br>                                                                                                                                                                                |[0x80000e84]:URSUB64 t5, t3, s10<br> |
| 109|[0x80003570]<br>0xFFFFFFF0|- rs1_val == 18446744073709551599<br>                                                                                                                                                                                                       |[0x80000ea0]:URSUB64 t5, t3, s10<br> |
| 110|[0x80003578]<br>0xFFFFFFFE|- rs1_val == 18446744073709551611<br>                                                                                                                                                                                                       |[0x80000ec0]:URSUB64 t5, t3, s10<br> |
| 111|[0x80003580]<br>0xFFFFFFF7|- rs1_val == 18446744073709551613<br>                                                                                                                                                                                                       |[0x80000edc]:URSUB64 t5, t3, s10<br> |
| 112|[0x80003588]<br>0xFFFFFEFF|- rs2_val == 9223372036854775808<br>                                                                                                                                                                                                        |[0x80000ef8]:URSUB64 t5, t3, s10<br> |
| 113|[0x80003590]<br>0xFFFFFFDF|- rs2_val == 4611686018427387904<br>                                                                                                                                                                                                        |[0x80000f14]:URSUB64 t5, t3, s10<br> |
| 114|[0x80003598]<br>0xFFFFFFFD|- rs2_val == 2305843009213693952<br>                                                                                                                                                                                                        |[0x80000f30]:URSUB64 t5, t3, s10<br> |
| 115|[0x800035a0]<br>0xFFFFFFFF|- rs2_val == 1152921504606846976<br>                                                                                                                                                                                                        |[0x80000f50]:URSUB64 t5, t3, s10<br> |
| 116|[0x800035a8]<br>0xFFFFFFFF|- rs2_val == 576460752303423488<br>                                                                                                                                                                                                         |[0x80000f70]:URSUB64 t5, t3, s10<br> |
| 117|[0x800035b0]<br>0xFFFFFFFF|- rs2_val == 288230376151711744<br>                                                                                                                                                                                                         |[0x80000f8c]:URSUB64 t5, t3, s10<br> |
| 118|[0x800035b8]<br>0xFFFFFFFF|- rs2_val == 144115188075855872<br>                                                                                                                                                                                                         |[0x80000fa8]:URSUB64 t5, t3, s10<br> |
| 119|[0x800035c0]<br>0xFFFFFFFF|- rs2_val == 72057594037927936<br>                                                                                                                                                                                                          |[0x80000fc8]:URSUB64 t5, t3, s10<br> |
| 120|[0x800035c8]<br>0xFFFFFFFF|- rs2_val == 36028797018963968<br>                                                                                                                                                                                                          |[0x80000fe8]:URSUB64 t5, t3, s10<br> |
| 121|[0x800035d0]<br>0xFFFFFFFF|- rs2_val == 9007199254740992<br>                                                                                                                                                                                                           |[0x80001004]:URSUB64 t5, t3, s10<br> |
| 122|[0x800035d8]<br>0x00000002|- rs2_val == 4503599627370496<br>                                                                                                                                                                                                           |[0x80001020]:URSUB64 t5, t3, s10<br> |
| 123|[0x800035e0]<br>0xFFFFFFFF|- rs2_val == 2251799813685248<br>                                                                                                                                                                                                           |[0x80001040]:URSUB64 t5, t3, s10<br> |
| 124|[0x800035e8]<br>0xFFFFFFFE|- rs2_val == 1125899906842624<br>                                                                                                                                                                                                           |[0x8000105c]:URSUB64 t5, t3, s10<br> |
| 125|[0x800035f0]<br>0xFFFFFFFF|- rs2_val == 281474976710656<br>                                                                                                                                                                                                            |[0x80001078]:URSUB64 t5, t3, s10<br> |
| 126|[0x800035f8]<br>0x00000000|- rs2_val == 140737488355328<br>                                                                                                                                                                                                            |[0x80001094]:URSUB64 t5, t3, s10<br> |
| 127|[0x80003600]<br>0x00000009|- rs2_val == 70368744177664<br>                                                                                                                                                                                                             |[0x800010b0]:URSUB64 t5, t3, s10<br> |
| 128|[0x80003608]<br>0x01000000|- rs2_val == 17592186044416<br> - rs1_val == 33554432<br>                                                                                                                                                                                   |[0x800010cc]:URSUB64 t5, t3, s10<br> |
| 129|[0x80003610]<br>0x10000000|- rs2_val == 8796093022208<br> - rs1_val == 536870912<br>                                                                                                                                                                                   |[0x800010ec]:URSUB64 t5, t3, s10<br> |
| 130|[0x80003618]<br>0xFFFFFFFF|- rs2_val == 4398046511104<br>                                                                                                                                                                                                              |[0x80001108]:URSUB64 t5, t3, s10<br> |
| 131|[0x80003620]<br>0xFFFFFFFF|- rs2_val == 1099511627776<br>                                                                                                                                                                                                              |[0x80001128]:URSUB64 t5, t3, s10<br> |
| 132|[0x80003628]<br>0xFFFFFFFF|- rs2_val == 274877906944<br>                                                                                                                                                                                                               |[0x80001148]:URSUB64 t5, t3, s10<br> |
| 133|[0x80003630]<br>0xFFFFFFFF|- rs2_val == 68719476736<br>                                                                                                                                                                                                                |[0x80001164]:URSUB64 t5, t3, s10<br> |
| 134|[0x80003638]<br>0xFFFFFFBF|- rs2_val == 34359738368<br>                                                                                                                                                                                                                |[0x80001180]:URSUB64 t5, t3, s10<br> |
| 135|[0x80003640]<br>0xFFFFFFFF|- rs2_val == 17179869184<br>                                                                                                                                                                                                                |[0x800011a0]:URSUB64 t5, t3, s10<br> |
| 136|[0x80003648]<br>0xFFFFFFFF|- rs2_val == 8589934592<br>                                                                                                                                                                                                                 |[0x800011c0]:URSUB64 t5, t3, s10<br> |
| 137|[0x80003650]<br>0x80000020|- rs2_val == 4294967296<br>                                                                                                                                                                                                                 |[0x800011dc]:URSUB64 t5, t3, s10<br> |
| 138|[0x80003658]<br>0xC0000000|- rs2_val == 2147483648<br> - rs1_val == 8796093022208<br>                                                                                                                                                                                  |[0x800011fc]:URSUB64 t5, t3, s10<br> |
| 139|[0x80003660]<br>0xDFFFEFFF|- rs2_val == 1073741824<br>                                                                                                                                                                                                                 |[0x8000121c]:URSUB64 t5, t3, s10<br> |
| 140|[0x80003668]<br>0xEFFFFFFF|- rs2_val == 536870912<br>                                                                                                                                                                                                                  |[0x8000123c]:URSUB64 t5, t3, s10<br> |
| 141|[0x80003670]<br>0xF7FFFFF7|- rs2_val == 268435456<br>                                                                                                                                                                                                                  |[0x80001258]:URSUB64 t5, t3, s10<br> |
| 142|[0x80003678]<br>0xFE000000|- rs2_val == 67108864<br> - rs1_val == 1099511627776<br>                                                                                                                                                                                    |[0x80001274]:URSUB64 t5, t3, s10<br> |
| 143|[0x80003680]<br>0xFEDFFFFF|- rs2_val == 33554432<br>                                                                                                                                                                                                                   |[0x80001294]:URSUB64 t5, t3, s10<br> |
| 144|[0x80003688]<br>0xFFBFFFFF|- rs2_val == 8388608<br>                                                                                                                                                                                                                    |[0x800012b0]:URSUB64 t5, t3, s10<br> |
| 145|[0x80003690]<br>0xFFE00005|- rs2_val == 4194304<br>                                                                                                                                                                                                                    |[0x800012cc]:URSUB64 t5, t3, s10<br> |
| 146|[0x800036a0]<br>0xFFF80000|- rs2_val == 1048576<br> - rs1_val == 144115188075855872<br>                                                                                                                                                                                |[0x80001308]:URSUB64 t5, t3, s10<br> |
| 147|[0x800036a8]<br>0xFFFE0000|- rs2_val == 262144<br>                                                                                                                                                                                                                     |[0x80001324]:URSUB64 t5, t3, s10<br> |
| 148|[0x800036b0]<br>0xFFFF0000|- rs2_val == 131072<br> - rs1_val == 1125899906842624<br>                                                                                                                                                                                   |[0x80001340]:URSUB64 t5, t3, s10<br> |
| 149|[0x800036b8]<br>0xFFFFDFEF|- rs2_val == 16384<br>                                                                                                                                                                                                                      |[0x8000135c]:URSUB64 t5, t3, s10<br> |
| 150|[0x800036c0]<br>0xFFFFEFFE|- rs2_val == 8192<br>                                                                                                                                                                                                                       |[0x80001378]:URSUB64 t5, t3, s10<br> |
| 151|[0x800036c8]<br>0xFFFFF808|- rs2_val == 4096<br> - rs1_val == 16<br>                                                                                                                                                                                                   |[0x80001394]:URSUB64 t5, t3, s10<br> |
| 152|[0x800036d0]<br>0xFFFFFBFF|- rs2_val == 2048<br>                                                                                                                                                                                                                       |[0x800013b4]:URSUB64 t5, t3, s10<br> |
| 153|[0x800036d8]<br>0xFFFFFEFF|- rs2_val == 512<br>                                                                                                                                                                                                                        |[0x800013d4]:URSUB64 t5, t3, s10<br> |
| 154|[0x800036e0]<br>0x00FFFF80|- rs2_val == 256<br>                                                                                                                                                                                                                        |[0x800013f0]:URSUB64 t5, t3, s10<br> |
| 155|[0x800036e8]<br>0xFFFFFFF7|- rs2_val == 16<br>                                                                                                                                                                                                                         |[0x80001410]:URSUB64 t5, t3, s10<br> |
| 156|[0x800036f0]<br>0x00000005|- rs2_val == 8<br>                                                                                                                                                                                                                          |[0x8000142c]:URSUB64 t5, t3, s10<br> |
| 157|[0x800036f8]<br>0xFFFFFFFD|- rs2_val == 4<br>                                                                                                                                                                                                                          |[0x80001448]:URSUB64 t5, t3, s10<br> |
| 158|[0x80003700]<br>0xEFFFFFFE|- rs2_val == 2<br>                                                                                                                                                                                                                          |[0x80001468]:URSUB64 t5, t3, s10<br> |
| 159|[0x80003708]<br>0x00000FFF|- rs2_val == 1<br> - rs1_val == 8192<br>                                                                                                                                                                                                    |[0x80001484]:URSUB64 t5, t3, s10<br> |
| 160|[0x80003710]<br>0x00000400|- rs1_val == 9223372036854775808<br>                                                                                                                                                                                                        |[0x800014a4]:URSUB64 t5, t3, s10<br> |
| 161|[0x80003718]<br>0xFFFFC000|- rs1_val == 2305843009213693952<br>                                                                                                                                                                                                        |[0x800014c0]:URSUB64 t5, t3, s10<br> |
| 162|[0x80003720]<br>0x00000000|- rs1_val == 576460752303423488<br>                                                                                                                                                                                                         |[0x800014dc]:URSUB64 t5, t3, s10<br> |
| 163|[0x80003728]<br>0x00000000|- rs1_val == 288230376151711744<br>                                                                                                                                                                                                         |[0x800014f8]:URSUB64 t5, t3, s10<br> |
| 164|[0x80003730]<br>0x00040000|- rs1_val == 72057594037927936<br>                                                                                                                                                                                                          |[0x80001518]:URSUB64 t5, t3, s10<br> |
| 165|[0x80003738]<br>0x20000000|- rs1_val == 18014398509481984<br>                                                                                                                                                                                                          |[0x80001538]:URSUB64 t5, t3, s10<br> |
| 166|[0x80003740]<br>0x00000000|- rs1_val == 2251799813685248<br>                                                                                                                                                                                                           |[0x80001554]:URSUB64 t5, t3, s10<br> |
| 167|[0x80003748]<br>0x00000000|- rs1_val == 562949953421312<br>                                                                                                                                                                                                            |[0x80001570]:URSUB64 t5, t3, s10<br> |
| 168|[0x80003750]<br>0x00000080|- rs1_val == 281474976710656<br>                                                                                                                                                                                                            |[0x8000158c]:URSUB64 t5, t3, s10<br> |
| 169|[0x80003758]<br>0xFFFFFC00|- rs1_val == 140737488355328<br>                                                                                                                                                                                                            |[0x800015ac]:URSUB64 t5, t3, s10<br> |
| 170|[0x80003760]<br>0xFFFFFFFA|- rs1_val == 17592186044416<br>                                                                                                                                                                                                             |[0x800015c8]:URSUB64 t5, t3, s10<br> |
| 171|[0x80003768]<br>0x00000000|- rs1_val == 4398046511104<br>                                                                                                                                                                                                              |[0x800015e8]:URSUB64 t5, t3, s10<br> |
| 172|[0x80003770]<br>0x00000001|- rs1_val == 2199023255552<br>                                                                                                                                                                                                              |[0x80001604]:URSUB64 t5, t3, s10<br> |
| 173|[0x80003778]<br>0xFFFFF000|- rs1_val == 274877906944<br>                                                                                                                                                                                                               |[0x80001620]:URSUB64 t5, t3, s10<br> |
| 174|[0x80003780]<br>0xFFC00000|- rs1_val == 137438953472<br>                                                                                                                                                                                                               |[0x8000163c]:URSUB64 t5, t3, s10<br> |
| 175|[0x80003788]<br>0x00000000|- rs1_val == 68719476736<br>                                                                                                                                                                                                                |[0x8000165c]:URSUB64 t5, t3, s10<br> |
| 176|[0x80003790]<br>0x40000000|- rs1_val == 34359738368<br>                                                                                                                                                                                                                |[0x8000167c]:URSUB64 t5, t3, s10<br> |
| 177|[0x80003798]<br>0xFFFFC000|- rs1_val == 17179869184<br>                                                                                                                                                                                                                |[0x80001698]:URSUB64 t5, t3, s10<br> |
| 178|[0x800037a0]<br>0x3F800000|- rs1_val == 2147483648<br>                                                                                                                                                                                                                 |[0x800016b4]:URSUB64 t5, t3, s10<br> |
| 179|[0x800037a8]<br>0x02000000|- rs1_val == 134217728<br>                                                                                                                                                                                                                  |[0x800016d0]:URSUB64 t5, t3, s10<br> |
| 180|[0x800037b0]<br>0x01F00000|- rs1_val == 67108864<br>                                                                                                                                                                                                                   |[0x800016ec]:URSUB64 t5, t3, s10<br> |
| 181|[0x800037b8]<br>0x40400000|- rs1_val == 8388608<br>                                                                                                                                                                                                                    |[0x8000170c]:URSUB64 t5, t3, s10<br> |
| 182|[0x800037c0]<br>0x00200000|- rs1_val == 4194304<br>                                                                                                                                                                                                                    |[0x80001728]:URSUB64 t5, t3, s10<br> |
| 183|[0x800037c8]<br>0x00080001|- rs1_val == 1048576<br>                                                                                                                                                                                                                    |[0x80001744]:URSUB64 t5, t3, s10<br> |
| 184|[0x800037d0]<br>0xAAAEAAAB|- rs1_val == 524288<br>                                                                                                                                                                                                                     |[0x80001768]:URSUB64 t5, t3, s10<br> |
| 185|[0x800037d8]<br>0x00003FF7|- rs1_val == 32768<br>                                                                                                                                                                                                                      |[0x80001784]:URSUB64 t5, t3, s10<br> |
| 186|[0x800037e0]<br>0xFFF82000|- rs1_val == 16384<br>                                                                                                                                                                                                                      |[0x800017a0]:URSUB64 t5, t3, s10<br> |
| 187|[0x800037e8]<br>0x00000800|- rs1_val == 4096<br>                                                                                                                                                                                                                       |[0x800017bc]:URSUB64 t5, t3, s10<br> |
| 188|[0x800037f0]<br>0x000000FE|- rs1_val == 512<br>                                                                                                                                                                                                                        |[0x800017d8]:URSUB64 t5, t3, s10<br> |
| 189|[0x800037f8]<br>0x00008040|- rs1_val == 128<br>                                                                                                                                                                                                                        |[0x800017f8]:URSUB64 t5, t3, s10<br> |
| 190|[0x80003800]<br>0x00000014|- rs1_val == 32<br>                                                                                                                                                                                                                         |[0x80001814]:URSUB64 t5, t3, s10<br> |
| 191|[0x80003808]<br>0xFFF80002|- rs1_val == 4<br>                                                                                                                                                                                                                          |[0x80001830]:URSUB64 t5, t3, s10<br> |
| 192|[0x80003810]<br>0x00000001|- rs1_val == 2<br>                                                                                                                                                                                                                          |[0x8000184c]:URSUB64 t5, t3, s10<br> |
| 193|[0x80003818]<br>0xFC800000|- rs2_val == 134217728<br>                                                                                                                                                                                                                  |[0x80001868]:URSUB64 t5, t3, s10<br> |
