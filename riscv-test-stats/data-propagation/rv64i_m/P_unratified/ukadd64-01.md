
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001930')]      |
| SIG_REGION                | [('0x80003210', '0x80004470', '588 dwords')]      |
| COV_LABELS                | ukadd64      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukadd64-01.S    |
| Total Number of coverpoints| 324     |
| Total Coverpoints Hit     | 318      |
| Total Signature Updates   | 392      |
| STAT1                     | 196      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 196     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukadd64', 'rs1 : x8', 'rs2 : x8', 'rd : x18', 'rs1 == rs2 != rd', 'rs2_val == 562949953421312', 'rs1_val == 562949953421312', 'rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0', 'rs1_val > 0 and rs2_val > 0']
Last Code Sequence : 
	-[0x800003b4]:UKADD64 s2, fp, fp
	-[0x800003b8]:sd s2, 0(ra)
Current Store : [0x800003bc] : sd fp, 8(ra) -- Store: [0x80003218]:0x0002000000000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x24', 'rd : x24', 'rs1 == rs2 == rd', 'rs2_val == 18446744073709551613', 'rs1_val == 18446744073709551613']
Last Code Sequence : 
	-[0x800003c8]:UKADD64 s8, s8, s8
	-[0x800003cc]:sd s8, 24(ra)
Current Store : [0x800003d0] : sd s8, 32(ra) -- Store: [0x80003230]:0xFFFFFFFFFFFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x22', 'rd : x30', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0', 'rs2_val == 13835058055282163711']
Last Code Sequence : 
	-[0x800003e4]:UKADD64 t5, a0, s6
	-[0x800003e8]:sd t5, 48(ra)
Current Store : [0x800003ec] : sd a0, 56(ra) -- Store: [0x80003248]:0x000000000000000A




Last Coverpoint : ['rs1 : x6', 'rs2 : x12', 'rd : x6', 'rs1 == rd != rs2', 'rs2_val == 16140901064495857663', 'rs1_val == 18446744073709535231']
Last Code Sequence : 
	-[0x80000404]:UKADD64 t1, t1, a2
	-[0x80000408]:sd t1, 72(ra)
Current Store : [0x8000040c] : sd t1, 80(ra) -- Store: [0x80003260]:0xFFFFFFFFFFFFFFFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x20', 'rd : x20', 'rs2 == rd != rs1', 'rs2_val == 17293822569102704639', 'rs1_val == 2']
Last Code Sequence : 
	-[0x80000420]:UKADD64 s4, a2, s4
	-[0x80000424]:sd s4, 96(ra)
Current Store : [0x80000428] : sd a2, 104(ra) -- Store: [0x80003278]:0x0000000000000002




Last Coverpoint : ['rs1 : x30', 'rs2 : x10', 'rd : x22', 'rs2_val == 17870283321406128127', 'rs1_val == 16384']
Last Code Sequence : 
	-[0x8000043c]:UKADD64 s6, t5, a0
	-[0x80000440]:sd s6, 120(ra)
Current Store : [0x80000444] : sd t5, 128(ra) -- Store: [0x80003290]:0x0000000000004000




Last Coverpoint : ['rs1 : x4', 'rs2 : x16', 'rd : x12', 'rs2_val == 18158513697557839871', 'rs1_val == 18446739675663040511']
Last Code Sequence : 
	-[0x80000460]:UKADD64 a2, tp, a6
	-[0x80000464]:sd a2, 144(ra)
Current Store : [0x80000468] : sd tp, 152(ra) -- Store: [0x800032a8]:0xFFFFFBFFFFFFFFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x28', 'rd : x4', 'rs2_val == 18302628885633695743', 'rs1_val == 288230376151711744']
Last Code Sequence : 
	-[0x80000480]:UKADD64 tp, a4, t3
	-[0x80000484]:sd tp, 168(ra)
Current Store : [0x80000488] : sd a4, 176(ra) -- Store: [0x800032c0]:0x0400000000000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x4', 'rd : x2', 'rs2_val == 18374686479671623679', 'rs1_val == 1024']
Last Code Sequence : 
	-[0x8000049c]:UKADD64 sp, t3, tp
	-[0x800004a0]:sd sp, 192(ra)
Current Store : [0x800004a4] : sd t3, 200(ra) -- Store: [0x800032d8]:0x0000000000000400




Last Coverpoint : ['rs1 : x20', 'rs2 : x6', 'rd : x28', 'rs2_val == 18410715276690587647']
Last Code Sequence : 
	-[0x800004bc]:UKADD64 t3, s4, t1
	-[0x800004c0]:sd t3, 216(ra)
Current Store : [0x800004c4] : sd s4, 224(ra) -- Store: [0x800032f0]:0xFFFFFFFFFFFFBFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x2', 'rd : x16', 'rs2_val == 18428729675200069631']
Last Code Sequence : 
	-[0x800004dc]:UKADD64 a6, s6, sp
	-[0x800004e0]:sd a6, 240(ra)
Current Store : [0x800004e4] : sd s6, 248(ra) -- Store: [0x80003308]:0x0002000000000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x14', 'rd : x26', 'rs2_val == 18437736874454810623']
Last Code Sequence : 
	-[0x800004f8]:UKADD64 s10, a6, a4
	-[0x800004fc]:sd s10, 264(ra)
Current Store : [0x80000500] : sd a6, 272(ra) -- Store: [0x80003320]:0x0000000000004000




Last Coverpoint : ['rs1 : x2', 'rs2 : x26', 'rd : x8', 'rs2_val == 18442240474082181119', 'rs1_val == 18446744073709547519']
Last Code Sequence : 
	-[0x80000518]:UKADD64 fp, sp, s10
	-[0x8000051c]:sd fp, 288(ra)
Current Store : [0x80000520] : sd sp, 296(ra) -- Store: [0x80003338]:0xFFFFFFFFFFFFEFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x30', 'rd : x10', 'rs2_val == 18444492273895866367', 'rs1_val == 268435456']
Last Code Sequence : 
	-[0x80000534]:UKADD64 a0, s10, t5
	-[0x80000538]:sd a0, 312(ra)
Current Store : [0x8000053c] : sd s10, 320(ra) -- Store: [0x80003350]:0x0000000010000000




Last Coverpoint : ['rs1 : x18', 'rs2_val == 18445618173802708991']
Last Code Sequence : 
	-[0x80000550]:UKADD64 a5, s2, t5
	-[0x80000554]:sd a5, 336(ra)
Current Store : [0x80000558] : sd s2, 344(ra) -- Store: [0x80003368]:0x000000000000000A




Last Coverpoint : ['rs2 : x18', 'rs2_val == 18446181123756130303', 'rs1_val == 36028797018963968']
Last Code Sequence : 
	-[0x80000570]:UKADD64 a1, a4, s2
	-[0x80000574]:sd a1, 360(ra)
Current Store : [0x80000578] : sd a4, 368(ra) -- Store: [0x80003380]:0x0080000000000000




Last Coverpoint : ['rd : x14', 'rs2_val == 18446462598732840959', 'rs1_val == 13835058055282163711']
Last Code Sequence : 
	-[0x80000594]:UKADD64 a4, s8, t1
	-[0x80000598]:sd a4, 384(ra)
Current Store : [0x8000059c] : sd s8, 392(ra) -- Store: [0x80003398]:0xBFFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446603336221196287', 'rs1_val == 4194304']
Last Code Sequence : 
	-[0x800005b0]:UKADD64 t6, t5, t4
	-[0x800005b4]:sd t6, 408(ra)
Current Store : [0x800005b8] : sd t5, 416(ra) -- Store: [0x800033b0]:0x0000000000400000




Last Coverpoint : ['rs2_val == 18446673704965373951', 'rs1_val == 4096']
Last Code Sequence : 
	-[0x800005cc]:UKADD64 t6, t5, t4
	-[0x800005d0]:sd t6, 432(ra)
Current Store : [0x800005d4] : sd t5, 440(ra) -- Store: [0x800033c8]:0x0000000000001000




Last Coverpoint : ['rs2_val == 18446708889337462783', 'rs1_val == 68719476736']
Last Code Sequence : 
	-[0x800005ec]:UKADD64 t6, t5, t4
	-[0x800005f0]:sd t6, 456(ra)
Current Store : [0x800005f4] : sd t5, 464(ra) -- Store: [0x800033e0]:0x0000001000000000




Last Coverpoint : ['rs2_val == 18446726481523507199', 'rs1_val == 16']
Last Code Sequence : 
	-[0x80000608]:UKADD64 t6, t5, t4
	-[0x8000060c]:sd t6, 480(ra)
Current Store : [0x80000610] : sd t5, 488(ra) -- Store: [0x800033f8]:0x0000000000000010




Last Coverpoint : ['rs2_val == 18446735277616529407', 'rs1_val == 9223372036854775807']
Last Code Sequence : 
	-[0x8000062c]:UKADD64 t6, t5, t4
	-[0x80000630]:sd t6, 504(ra)
Current Store : [0x80000634] : sd t5, 512(ra) -- Store: [0x80003410]:0x7FFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446739675663040511', 'rs1_val == 18446462598732840959']
Last Code Sequence : 
	-[0x80000650]:UKADD64 t6, t5, t4
	-[0x80000654]:sd t6, 528(ra)
Current Store : [0x80000658] : sd t5, 536(ra) -- Store: [0x80003428]:0xFFFEFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446741874686296063', 'rs1_val == 549755813888']
Last Code Sequence : 
	-[0x80000670]:UKADD64 t6, t5, t4
	-[0x80000674]:sd t6, 552(ra)
Current Store : [0x80000678] : sd t5, 560(ra) -- Store: [0x80003440]:0x0000008000000000




Last Coverpoint : ['rs2_val == 18446742974197923839', 'rs1_val == 18374686479671623679']
Last Code Sequence : 
	-[0x80000694]:UKADD64 t6, t5, t4
	-[0x80000698]:sd t6, 576(ra)
Current Store : [0x8000069c] : sd t5, 584(ra) -- Store: [0x80003458]:0xFEFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446743523953737727', 'rs1_val == 17293822569102704639']
Last Code Sequence : 
	-[0x800006b8]:UKADD64 t6, t5, t4
	-[0x800006bc]:sd t6, 600(ra)
Current Store : [0x800006c0] : sd t5, 608(ra) -- Store: [0x80003470]:0xEFFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446743798831644671', 'rs1_val == 18302628885633695743']
Last Code Sequence : 
	-[0x800006dc]:UKADD64 t6, t5, t4
	-[0x800006e0]:sd t6, 624(ra)
Current Store : [0x800006e4] : sd t5, 632(ra) -- Store: [0x80003488]:0xFDFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446743936270598143']
Last Code Sequence : 
	-[0x800006f8]:UKADD64 t6, t5, t4
	-[0x800006fc]:sd t6, 648(ra)
Current Store : [0x80000700] : sd t5, 656(ra) -- Store: [0x800034a0]:0x000000000000000D




Last Coverpoint : ['rs2_val == 18446744004990074879', 'rs1_val == 2251799813685248']
Last Code Sequence : 
	-[0x80000718]:UKADD64 t6, t5, t4
	-[0x8000071c]:sd t6, 672(ra)
Current Store : [0x80000720] : sd t5, 680(ra) -- Store: [0x800034b8]:0x0008000000000000




Last Coverpoint : ['rs2_val == 18446744039349813247', 'rs1_val == 18446744039349813247']
Last Code Sequence : 
	-[0x8000073c]:UKADD64 t6, t5, t4
	-[0x80000740]:sd t6, 696(ra)
Current Store : [0x80000744] : sd t5, 704(ra) -- Store: [0x800034d0]:0xFFFFFFF7FFFFFFFF




Last Coverpoint : ['rs2_val == 18446744056529682431', 'rs1_val == 2097152']
Last Code Sequence : 
	-[0x80000758]:UKADD64 t6, t5, t4
	-[0x8000075c]:sd t6, 720(ra)
Current Store : [0x80000760] : sd t5, 728(ra) -- Store: [0x800034e8]:0x0000000000200000




Last Coverpoint : ['rs2_val == 18446744065119617023', 'rs1_val == 18446744073709551487']
Last Code Sequence : 
	-[0x80000774]:UKADD64 t6, t5, t4
	-[0x80000778]:sd t6, 744(ra)
Current Store : [0x8000077c] : sd t5, 752(ra) -- Store: [0x80003500]:0xFFFFFFFFFFFFFF7F




Last Coverpoint : ['rs2_val == 18446744069414584319']
Last Code Sequence : 
	-[0x80000790]:UKADD64 t6, t5, t4
	-[0x80000794]:sd t6, 768(ra)
Current Store : [0x80000798] : sd t5, 776(ra) -- Store: [0x80003518]:0x000000000000000E




Last Coverpoint : ['rs2_val == 18446744071562067967']
Last Code Sequence : 
	-[0x800007ac]:UKADD64 t6, t5, t4
	-[0x800007b0]:sd t6, 792(ra)
Current Store : [0x800007b4] : sd t5, 800(ra) -- Store: [0x80003530]:0x0000000000000006




Last Coverpoint : ['rs2_val == 18446744072635809791', 'rs1_val == 18446744073707454463']
Last Code Sequence : 
	-[0x800007c8]:UKADD64 t6, t5, t4
	-[0x800007cc]:sd t6, 816(ra)
Current Store : [0x800007d0] : sd t5, 824(ra) -- Store: [0x80003548]:0xFFFFFFFFFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073172680703', 'rs1_val == 18446744073642442751']
Last Code Sequence : 
	-[0x800007e4]:UKADD64 t6, t5, t4
	-[0x800007e8]:sd t6, 840(ra)
Current Store : [0x800007ec] : sd t5, 848(ra) -- Store: [0x80003560]:0xFFFFFFFFFBFFFFFF




Last Coverpoint : ['rs2_val == 18446744073441116159', 'rs1_val == 18446743523953737727']
Last Code Sequence : 
	-[0x80000804]:UKADD64 t6, t5, t4
	-[0x80000808]:sd t6, 864(ra)
Current Store : [0x8000080c] : sd t5, 872(ra) -- Store: [0x80003578]:0xFFFFFF7FFFFFFFFF




Last Coverpoint : ['rs2_val == 18446744073575333887']
Last Code Sequence : 
	-[0x80000820]:UKADD64 t6, t5, t4
	-[0x80000824]:sd t6, 888(ra)
Current Store : [0x80000828] : sd t5, 896(ra) -- Store: [0x80003590]:0x0400000000000000




Last Coverpoint : ['rs2_val == 18446744073642442751']
Last Code Sequence : 
	-[0x80000840]:UKADD64 t6, t5, t4
	-[0x80000844]:sd t6, 912(ra)
Current Store : [0x80000848] : sd t5, 920(ra) -- Store: [0x800035a8]:0xFDFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446744073675997183', 'rs1_val == 144115188075855872']
Last Code Sequence : 
	-[0x8000085c]:UKADD64 t6, t5, t4
	-[0x80000860]:sd t6, 936(ra)
Current Store : [0x80000864] : sd t5, 944(ra) -- Store: [0x800035c0]:0x0200000000000000




Last Coverpoint : ['rs2_val == 18446744073692774399', 'rs1_val == (2**64-1)']
Last Code Sequence : 
	-[0x80000874]:UKADD64 t6, t5, t4
	-[0x80000878]:sd t6, 960(ra)
Current Store : [0x8000087c] : sd t5, 968(ra) -- Store: [0x800035d8]:0xFFFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446744073701163007']
Last Code Sequence : 
	-[0x80000894]:UKADD64 t6, t5, t4
	-[0x80000898]:sd t6, 984(ra)
Current Store : [0x8000089c] : sd t5, 992(ra) -- Store: [0x800035f0]:0xBFFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446744073705357311', 'rs1_val == 8589934592']
Last Code Sequence : 
	-[0x800008b0]:UKADD64 t6, t5, t4
	-[0x800008b4]:sd t6, 1008(ra)
Current Store : [0x800008b8] : sd t5, 1016(ra) -- Store: [0x80003608]:0x0000000200000000




Last Coverpoint : ['rs2_val == 18446744073707454463']
Last Code Sequence : 
	-[0x800008cc]:UKADD64 t6, t5, t4
	-[0x800008d0]:sd t6, 1032(ra)
Current Store : [0x800008d4] : sd t5, 1040(ra) -- Store: [0x80003620]:0xFFFFFFFFFFDFFFFF




Last Coverpoint : ['rs2_val == 18446744073708503039', 'rs1_val == 18446743936270598143']
Last Code Sequence : 
	-[0x800008ec]:UKADD64 t6, t5, t4
	-[0x800008f0]:sd t6, 1056(ra)
Current Store : [0x800008f4] : sd t5, 1064(ra) -- Store: [0x80003638]:0xFFFFFFDFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446744073709027327', 'rs1_val == 17592186044416']
Last Code Sequence : 
	-[0x80000908]:UKADD64 t6, t5, t4
	-[0x8000090c]:sd t6, 1080(ra)
Current Store : [0x80000910] : sd t5, 1088(ra) -- Store: [0x80003650]:0x0000100000000000




Last Coverpoint : ['rs2_val == 18446744073709289471']
Last Code Sequence : 
	-[0x80000920]:UKADD64 t6, t5, t4
	-[0x80000924]:sd t6, 1104(ra)
Current Store : [0x80000928] : sd t5, 1112(ra) -- Store: [0x80003668]:0x0000000000000012




Last Coverpoint : ['rs2_val == 18446744073709420543']
Last Code Sequence : 
	-[0x80000940]:UKADD64 t6, t5, t4
	-[0x80000944]:sd t6, 1128(ra)
Current Store : [0x80000948] : sd t5, 1136(ra) -- Store: [0x80003680]:0x7FFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446744073709486079', 'rs1_val == 2305843009213693952']
Last Code Sequence : 
	-[0x8000095c]:UKADD64 t6, t5, t4
	-[0x80000960]:sd t6, 1152(ra)
Current Store : [0x80000964] : sd t5, 1160(ra) -- Store: [0x80003698]:0x2000000000000000




Last Coverpoint : ['rs2_val == 18446744073709518847', 'rs1_val == 18446744073575333887']
Last Code Sequence : 
	-[0x80000978]:UKADD64 t6, t5, t4
	-[0x8000097c]:sd t6, 1176(ra)
Current Store : [0x80000980] : sd t5, 1184(ra) -- Store: [0x800036b0]:0xFFFFFFFFF7FFFFFF




Last Coverpoint : ['rs2_val == 18446744073709535231', 'rs1_val == 8388608']
Last Code Sequence : 
	-[0x80000990]:UKADD64 t6, t5, t4
	-[0x80000994]:sd t6, 1200(ra)
Current Store : [0x80000998] : sd t5, 1208(ra) -- Store: [0x800036c8]:0x0000000000800000




Last Coverpoint : ['rs2_val == 18446744073709543423', 'rs1_val == 8192']
Last Code Sequence : 
	-[0x800009a8]:UKADD64 t6, t5, t4
	-[0x800009ac]:sd t6, 1224(ra)
Current Store : [0x800009b0] : sd t5, 1232(ra) -- Store: [0x800036e0]:0x0000000000002000




Last Coverpoint : ['rs2_val == 18446744073709547519', 'rs1_val == 18446181123756130303']
Last Code Sequence : 
	-[0x800009c8]:UKADD64 t6, t5, t4
	-[0x800009cc]:sd t6, 1248(ra)
Current Store : [0x800009d0] : sd t5, 1256(ra) -- Store: [0x800036f8]:0xFFFDFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446744073709549567', 'rs1_val == 67108864']
Last Code Sequence : 
	-[0x800009e0]:UKADD64 t6, t5, t4
	-[0x800009e4]:sd t6, 1272(ra)
Current Store : [0x800009e8] : sd t5, 1280(ra) -- Store: [0x80003710]:0x0000000004000000




Last Coverpoint : ['rs2_val == 18446744073709550591', 'rs1_val == 18446744073441116159']
Last Code Sequence : 
	-[0x800009f8]:UKADD64 t6, t5, t4
	-[0x800009fc]:sd t6, 1296(ra)
Current Store : [0x80000a00] : sd t5, 1304(ra) -- Store: [0x80003728]:0xFFFFFFFFEFFFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551103']
Last Code Sequence : 
	-[0x80000a14]:UKADD64 t6, t5, t4
	-[0x80000a18]:sd t6, 1320(ra)
Current Store : [0x80000a1c] : sd t5, 1328(ra) -- Store: [0x80003740]:0x7FFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551359']
Last Code Sequence : 
	-[0x80000a28]:UKADD64 t6, t5, t4
	-[0x80000a2c]:sd t6, 1344(ra)
Current Store : [0x80000a30] : sd t5, 1352(ra) -- Store: [0x80003758]:0x0000000000000011




Last Coverpoint : ['rs2_val == 18446744073709551487']
Last Code Sequence : 
	-[0x80000a3c]:UKADD64 t6, t5, t4
	-[0x80000a40]:sd t6, 1368(ra)
Current Store : [0x80000a44] : sd t5, 1376(ra) -- Store: [0x80003770]:0xFFFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 18446744073709551551']
Last Code Sequence : 
	-[0x80000a50]:UKADD64 t6, t5, t4
	-[0x80000a54]:sd t6, 1392(ra)
Current Store : [0x80000a58] : sd t5, 1400(ra) -- Store: [0x80003788]:0x000000000000000C




Last Coverpoint : ['rs2_val == 18446744073709551583']
Last Code Sequence : 
	-[0x80000a64]:UKADD64 t6, t5, t4
	-[0x80000a68]:sd t6, 1416(ra)
Current Store : [0x80000a6c] : sd t5, 1424(ra) -- Store: [0x800037a0]:0x0000000000000009




Last Coverpoint : ['rs2_val == 18446744073709551599']
Last Code Sequence : 
	-[0x80000a7c]:UKADD64 t6, t5, t4
	-[0x80000a80]:sd t6, 1440(ra)
Current Store : [0x80000a84] : sd t5, 1448(ra) -- Store: [0x800037b8]:0x0008000000000000




Last Coverpoint : ['rs2_val == 18446744073709551607']
Last Code Sequence : 
	-[0x80000a94]:UKADD64 t6, t5, t4
	-[0x80000a98]:sd t6, 1464(ra)
Current Store : [0x80000a9c] : sd t5, 1472(ra) -- Store: [0x800037d0]:0x0000100000000000




Last Coverpoint : ['rs2_val == 18446744073709551611', 'rs1_val == 4503599627370496']
Last Code Sequence : 
	-[0x80000aac]:UKADD64 t6, t5, t4
	-[0x80000ab0]:sd t6, 1488(ra)
Current Store : [0x80000ab4] : sd t5, 1496(ra) -- Store: [0x800037e8]:0x0010000000000000




Last Coverpoint : ['rs1_val == 18446744073709486079']
Last Code Sequence : 
	-[0x80000ac4]:UKADD64 t6, t5, t4
	-[0x80000ac8]:sd t6, 1512(ra)
Current Store : [0x80000acc] : sd t5, 1520(ra) -- Store: [0x80003800]:0xFFFFFFFFFFFEFFFF




Last Coverpoint : ['rs2_val == 18446744073709551614']
Last Code Sequence : 
	-[0x80000ad8]:UKADD64 t6, t5, t4
	-[0x80000adc]:sd t6, 1536(ra)
Current Store : [0x80000ae0] : sd t5, 1544(ra) -- Store: [0x80003818]:0x0000000000000003




Last Coverpoint : ['rs1_val == 16140901064495857663']
Last Code Sequence : 
	-[0x80000afc]:UKADD64 t6, t5, t4
	-[0x80000b00]:sd t6, 1560(ra)
Current Store : [0x80000b04] : sd t5, 1568(ra) -- Store: [0x80003830]:0xDFFFFFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 17870283321406128127', 'rs2_val == (2**64-1)']
Last Code Sequence : 
	-[0x80000b18]:UKADD64 t6, t5, t4
	-[0x80000b1c]:sd t6, 1584(ra)
Current Store : [0x80000b20] : sd t5, 1592(ra) -- Store: [0x80003848]:0xF7FFFFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18158513697557839871']
Last Code Sequence : 
	-[0x80000b38]:UKADD64 t6, t5, t4
	-[0x80000b3c]:sd t6, 1608(ra)
Current Store : [0x80000b40] : sd t5, 1616(ra) -- Store: [0x80003860]:0xFBFFFFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18410715276690587647', 'rs2_val == 67108864']
Last Code Sequence : 
	-[0x80000b54]:UKADD64 t6, t5, t4
	-[0x80000b58]:sd t6, 1632(ra)
Current Store : [0x80000b5c] : sd t5, 1640(ra) -- Store: [0x80003878]:0xFF7FFFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18428729675200069631']
Last Code Sequence : 
	-[0x80000b70]:UKADD64 t6, t5, t4
	-[0x80000b74]:sd t6, 1656(ra)
Current Store : [0x80000b78] : sd t5, 1664(ra) -- Store: [0x80003890]:0xFFBFFFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18437736874454810623']
Last Code Sequence : 
	-[0x80000b90]:UKADD64 t6, t5, t4
	-[0x80000b94]:sd t6, 1680(ra)
Current Store : [0x80000b98] : sd t5, 1688(ra) -- Store: [0x800038a8]:0xFFDFFFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18442240474082181119', 'rs2_val == 1099511627776']
Last Code Sequence : 
	-[0x80000bb0]:UKADD64 t6, t5, t4
	-[0x80000bb4]:sd t6, 1704(ra)
Current Store : [0x80000bb8] : sd t5, 1712(ra) -- Store: [0x800038c0]:0xFFEFFFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18444492273895866367']
Last Code Sequence : 
	-[0x80000bd0]:UKADD64 t6, t5, t4
	-[0x80000bd4]:sd t6, 1728(ra)
Current Store : [0x80000bd8] : sd t5, 1736(ra) -- Store: [0x800038d8]:0xFFF7FFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18445618173802708991']
Last Code Sequence : 
	-[0x80000bf4]:UKADD64 t6, t5, t4
	-[0x80000bf8]:sd t6, 1752(ra)
Current Store : [0x80000bfc] : sd t5, 1760(ra) -- Store: [0x800038f0]:0xFFFBFFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18446603336221196287', 'rs2_val == 16777216']
Last Code Sequence : 
	-[0x80000c10]:UKADD64 t6, t5, t4
	-[0x80000c14]:sd t6, 1776(ra)
Current Store : [0x80000c18] : sd t5, 1784(ra) -- Store: [0x80003908]:0xFFFF7FFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18446673704965373951']
Last Code Sequence : 
	-[0x80000c34]:UKADD64 t6, t5, t4
	-[0x80000c38]:sd t6, 1800(ra)
Current Store : [0x80000c3c] : sd t5, 1808(ra) -- Store: [0x80003920]:0xFFFFBFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18446708889337462783', 'rs2_val == 4398046511104']
Last Code Sequence : 
	-[0x80000c54]:UKADD64 t6, t5, t4
	-[0x80000c58]:sd t6, 1824(ra)
Current Store : [0x80000c5c] : sd t5, 1832(ra) -- Store: [0x80003938]:0xFFFFDFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18446726481523507199']
Last Code Sequence : 
	-[0x80000c70]:UKADD64 t6, t5, t4
	-[0x80000c74]:sd t6, 1848(ra)
Current Store : [0x80000c78] : sd t5, 1856(ra) -- Store: [0x80003950]:0xFFFFEFFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18446735277616529407']
Last Code Sequence : 
	-[0x80000c94]:UKADD64 t6, t5, t4
	-[0x80000c98]:sd t6, 1872(ra)
Current Store : [0x80000c9c] : sd t5, 1880(ra) -- Store: [0x80003968]:0xFFFFF7FFFFFFFFFF




Last Coverpoint : ['rs1_val == 18446741874686296063', 'rs2_val == 8388608']
Last Code Sequence : 
	-[0x80000cb0]:UKADD64 t6, t5, t4
	-[0x80000cb4]:sd t6, 1896(ra)
Current Store : [0x80000cb8] : sd t5, 1904(ra) -- Store: [0x80003980]:0xFFFFFDFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18446742974197923839']
Last Code Sequence : 
	-[0x80000cd0]:UKADD64 t6, t5, t4
	-[0x80000cd4]:sd t6, 1920(ra)
Current Store : [0x80000cd8] : sd t5, 1928(ra) -- Store: [0x80003998]:0xFFFFFEFFFFFFFFFF




Last Coverpoint : ['rs1_val == 18446743798831644671']
Last Code Sequence : 
	-[0x80000cf4]:UKADD64 t6, t5, t4
	-[0x80000cf8]:sd t6, 1944(ra)
Current Store : [0x80000cfc] : sd t5, 1952(ra) -- Store: [0x800039b0]:0xFFFFFFBFFFFFFFFF




Last Coverpoint : ['rs1_val == 18446744004990074879']
Last Code Sequence : 
	-[0x80000d14]:UKADD64 t6, t5, t4
	-[0x80000d18]:sd t6, 1968(ra)
Current Store : [0x80000d1c] : sd t5, 1976(ra) -- Store: [0x800039c8]:0xFFFFFFEFFFFFFFFF




Last Coverpoint : ['rs1_val == 18446744056529682431', 'rs2_val == 1024']
Last Code Sequence : 
	-[0x80000d30]:UKADD64 t6, t5, t4
	-[0x80000d34]:sd t6, 1992(ra)
Current Store : [0x80000d38] : sd t5, 2000(ra) -- Store: [0x800039e0]:0xFFFFFFFBFFFFFFFF




Last Coverpoint : ['rs1_val == 18446744065119617023']
Last Code Sequence : 
	-[0x80000d54]:UKADD64 t6, t5, t4
	-[0x80000d58]:sd t6, 2016(ra)
Current Store : [0x80000d5c] : sd t5, 2024(ra) -- Store: [0x800039f8]:0xFFFFFFFDFFFFFFFF




Last Coverpoint : ['rs1_val == 18446744069414584319']
Last Code Sequence : 
	-[0x80000d7c]:UKADD64 t6, t5, t4
	-[0x80000d80]:sd t6, 0(ra)
Current Store : [0x80000d84] : sd t5, 8(ra) -- Store: [0x80003a10]:0xFFFFFFFEFFFFFFFF




Last Coverpoint : ['rs1_val == 18446744071562067967']
Last Code Sequence : 
	-[0x80000da8]:UKADD64 t6, t5, t4
	-[0x80000dac]:sd t6, 0(ra)
Current Store : [0x80000db0] : sd t5, 8(ra) -- Store: [0x80003a28]:0xFFFFFFFF7FFFFFFF




Last Coverpoint : ['rs1_val == 1']
Last Code Sequence : 
	-[0x80000dc4]:UKADD64 t6, t5, t4
	-[0x80000dc8]:sd t6, 24(ra)
Current Store : [0x80000dcc] : sd t5, 32(ra) -- Store: [0x80003a40]:0x0000000000000001




Last Coverpoint : ['rs2_val == 12297829382473034410']
Last Code Sequence : 
	-[0x80000dfc]:UKADD64 t6, t5, t4
	-[0x80000e00]:sd t6, 48(ra)
Current Store : [0x80000e04] : sd t5, 56(ra) -- Store: [0x80003a58]:0xFFFFFFFBFFFFFFFF




Last Coverpoint : ['rs2_val == 131072', 'rs1_val == 12297829382473034410']
Last Code Sequence : 
	-[0x80000e2c]:UKADD64 t6, t5, t4
	-[0x80000e30]:sd t6, 72(ra)
Current Store : [0x80000e34] : sd t5, 80(ra) -- Store: [0x80003a70]:0xAAAAAAAAAAAAAAAA




Last Coverpoint : ['rs1_val == 6148914691236517205']
Last Code Sequence : 
	-[0x80000e64]:UKADD64 t6, t5, t4
	-[0x80000e68]:sd t6, 96(ra)
Current Store : [0x80000e6c] : sd t5, 104(ra) -- Store: [0x80003a88]:0x5555555555555555




Last Coverpoint : ['rs1_val == 0']
Last Code Sequence : 
	-[0x80000e80]:UKADD64 t6, t5, t4
	-[0x80000e84]:sd t6, 120(ra)
Current Store : [0x80000e88] : sd t5, 128(ra) -- Store: [0x80003aa0]:0x0000000000000000




Last Coverpoint : ['rs1_val == 2147483648', 'rs2_val == 0']
Last Code Sequence : 
	-[0x80000e98]:UKADD64 t6, t5, t4
	-[0x80000e9c]:sd t6, 144(ra)
Current Store : [0x80000ea0] : sd t5, 152(ra) -- Store: [0x80003ab8]:0x0000000080000000




Last Coverpoint : ['rs1_val == 18446744072635809791', 'rs2_val == 4503599627370496']
Last Code Sequence : 
	-[0x80000eb4]:UKADD64 t6, t5, t4
	-[0x80000eb8]:sd t6, 168(ra)
Current Store : [0x80000ebc] : sd t5, 176(ra) -- Store: [0x80003ad0]:0xFFFFFFFFBFFFFFFF




Last Coverpoint : ['rs1_val == 18446744073172680703', 'rs2_val == 8796093022208']
Last Code Sequence : 
	-[0x80000ed0]:UKADD64 t6, t5, t4
	-[0x80000ed4]:sd t6, 192(ra)
Current Store : [0x80000ed8] : sd t5, 200(ra) -- Store: [0x80003ae8]:0xFFFFFFFFDFFFFFFF




Last Coverpoint : ['rs1_val == 18446744073675997183']
Last Code Sequence : 
	-[0x80000ef0]:UKADD64 t6, t5, t4
	-[0x80000ef4]:sd t6, 216(ra)
Current Store : [0x80000ef8] : sd t5, 224(ra) -- Store: [0x80003b00]:0xFFFFFFFFFDFFFFFF




Last Coverpoint : ['rs1_val == 18446744073692774399', 'rs2_val == 17179869184']
Last Code Sequence : 
	-[0x80000f0c]:UKADD64 t6, t5, t4
	-[0x80000f10]:sd t6, 240(ra)
Current Store : [0x80000f14] : sd t5, 248(ra) -- Store: [0x80003b18]:0xFFFFFFFFFEFFFFFF




Last Coverpoint : ['rs1_val == 18446744073701163007']
Last Code Sequence : 
	-[0x80000f24]:UKADD64 t6, t5, t4
	-[0x80000f28]:sd t6, 264(ra)
Current Store : [0x80000f2c] : sd t5, 272(ra) -- Store: [0x80003b30]:0xFFFFFFFFFF7FFFFF




Last Coverpoint : ['rs1_val == 18446744073705357311']
Last Code Sequence : 
	-[0x80000f40]:UKADD64 t6, t5, t4
	-[0x80000f44]:sd t6, 288(ra)
Current Store : [0x80000f48] : sd t5, 296(ra) -- Store: [0x80003b48]:0xFFFFFFFFFFBFFFFF




Last Coverpoint : ['rs1_val == 18446744073708503039']
Last Code Sequence : 
	-[0x80000f58]:UKADD64 t6, t5, t4
	-[0x80000f5c]:sd t6, 312(ra)
Current Store : [0x80000f60] : sd t5, 320(ra) -- Store: [0x80003b60]:0xFFFFFFFFFFEFFFFF




Last Coverpoint : ['rs1_val == 18446744073709027327', 'rs2_val == 268435456']
Last Code Sequence : 
	-[0x80000f70]:UKADD64 t6, t5, t4
	-[0x80000f74]:sd t6, 336(ra)
Current Store : [0x80000f78] : sd t5, 344(ra) -- Store: [0x80003b78]:0xFFFFFFFFFFF7FFFF




Last Coverpoint : ['rs1_val == 18446744073709289471']
Last Code Sequence : 
	-[0x80000f88]:UKADD64 t6, t5, t4
	-[0x80000f8c]:sd t6, 360(ra)
Current Store : [0x80000f90] : sd t5, 368(ra) -- Store: [0x80003b90]:0xFFFFFFFFFFFBFFFF




Last Coverpoint : ['rs1_val == 18446744073709420543', 'rs2_val == 512']
Last Code Sequence : 
	-[0x80000fa0]:UKADD64 t6, t5, t4
	-[0x80000fa4]:sd t6, 384(ra)
Current Store : [0x80000fa8] : sd t5, 392(ra) -- Store: [0x80003ba8]:0xFFFFFFFFFFFDFFFF




Last Coverpoint : ['rs1_val == 18446744073709518847', 'rs2_val == 128']
Last Code Sequence : 
	-[0x80000fb8]:UKADD64 t6, t5, t4
	-[0x80000fbc]:sd t6, 408(ra)
Current Store : [0x80000fc0] : sd t5, 416(ra) -- Store: [0x80003bc0]:0xFFFFFFFFFFFF7FFF




Last Coverpoint : ['rs1_val == 18446744073709543423']
Last Code Sequence : 
	-[0x80000fd8]:UKADD64 t6, t5, t4
	-[0x80000fdc]:sd t6, 432(ra)
Current Store : [0x80000fe0] : sd t5, 440(ra) -- Store: [0x80003bd8]:0xFFFFFFFFFFFFDFFF




Last Coverpoint : ['rs1_val == 18446744073709549567']
Last Code Sequence : 
	-[0x80000ff8]:UKADD64 t6, t5, t4
	-[0x80000ffc]:sd t6, 456(ra)
Current Store : [0x80001000] : sd t5, 464(ra) -- Store: [0x80003bf0]:0xFFFFFFFFFFFFF7FF




Last Coverpoint : ['rs1_val == 18446744073709550591']
Last Code Sequence : 
	-[0x80001010]:UKADD64 t6, t5, t4
	-[0x80001014]:sd t6, 480(ra)
Current Store : [0x80001018] : sd t5, 488(ra) -- Store: [0x80003c08]:0xFFFFFFFFFFFFFBFF




Last Coverpoint : ['rs1_val == 18446744073709551103', 'rs2_val == 1073741824']
Last Code Sequence : 
	-[0x80001024]:UKADD64 t6, t5, t4
	-[0x80001028]:sd t6, 504(ra)
Current Store : [0x8000102c] : sd t5, 512(ra) -- Store: [0x80003c20]:0xFFFFFFFFFFFFFDFF




Last Coverpoint : ['rs1_val == 18446744073709551359']
Last Code Sequence : 
	-[0x80001038]:UKADD64 t6, t5, t4
	-[0x8000103c]:sd t6, 528(ra)
Current Store : [0x80001040] : sd t5, 536(ra) -- Store: [0x80003c38]:0xFFFFFFFFFFFFFEFF




Last Coverpoint : ['rs1_val == 18446744073709551551']
Last Code Sequence : 
	-[0x80001050]:UKADD64 t6, t5, t4
	-[0x80001054]:sd t6, 552(ra)
Current Store : [0x80001058] : sd t5, 560(ra) -- Store: [0x80003c50]:0xFFFFFFFFFFFFFFBF




Last Coverpoint : ['rs1_val == 18446744073709551583']
Last Code Sequence : 
	-[0x80001064]:UKADD64 t6, t5, t4
	-[0x80001068]:sd t6, 576(ra)
Current Store : [0x8000106c] : sd t5, 584(ra) -- Store: [0x80003c68]:0xFFFFFFFFFFFFFFDF




Last Coverpoint : ['rs1_val == 18446744073709551599', 'rs2_val == 288230376151711744']
Last Code Sequence : 
	-[0x8000107c]:UKADD64 t6, t5, t4
	-[0x80001080]:sd t6, 600(ra)
Current Store : [0x80001084] : sd t5, 608(ra) -- Store: [0x80003c80]:0xFFFFFFFFFFFFFFEF




Last Coverpoint : ['rs1_val == 18446744073709551607']
Last Code Sequence : 
	-[0x80001098]:UKADD64 t6, t5, t4
	-[0x8000109c]:sd t6, 624(ra)
Current Store : [0x800010a0] : sd t5, 632(ra) -- Store: [0x80003c98]:0xFFFFFFFFFFFFFFF7




Last Coverpoint : ['rs1_val == 18446744073709551611']
Last Code Sequence : 
	-[0x800010b0]:UKADD64 t6, t5, t4
	-[0x800010b4]:sd t6, 648(ra)
Current Store : [0x800010b8] : sd t5, 656(ra) -- Store: [0x80003cb0]:0xFFFFFFFFFFFFFFFB




Last Coverpoint : ['rs1_val == 18446744073709551614']
Last Code Sequence : 
	-[0x800010c8]:UKADD64 t6, t5, t4
	-[0x800010cc]:sd t6, 672(ra)
Current Store : [0x800010d0] : sd t5, 680(ra) -- Store: [0x80003cc8]:0xFFFFFFFFFFFFFFFE




Last Coverpoint : ['rs2_val == 9223372036854775808']
Last Code Sequence : 
	-[0x800010e0]:UKADD64 t6, t5, t4
	-[0x800010e4]:sd t6, 696(ra)
Current Store : [0x800010e8] : sd t5, 704(ra) -- Store: [0x80003ce0]:0x0000000000000400




Last Coverpoint : ['rs2_val == 4611686018427387904']
Last Code Sequence : 
	-[0x800010f8]:UKADD64 t6, t5, t4
	-[0x800010fc]:sd t6, 720(ra)
Current Store : [0x80001100] : sd t5, 728(ra) -- Store: [0x80003cf8]:0x0000000000400000




Last Coverpoint : ['rs2_val == 2305843009213693952']
Last Code Sequence : 
	-[0x80001118]:UKADD64 t6, t5, t4
	-[0x8000111c]:sd t6, 744(ra)
Current Store : [0x80001120] : sd t5, 752(ra) -- Store: [0x80003d10]:0xFFFDFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 1152921504606846976']
Last Code Sequence : 
	-[0x80001130]:UKADD64 t6, t5, t4
	-[0x80001134]:sd t6, 768(ra)
Current Store : [0x80001138] : sd t5, 776(ra) -- Store: [0x80003d28]:0xFFFFFFFFFFFFFFDF




Last Coverpoint : ['rs2_val == 576460752303423488']
Last Code Sequence : 
	-[0x80001148]:UKADD64 t6, t5, t4
	-[0x8000114c]:sd t6, 792(ra)
Current Store : [0x80001150] : sd t5, 800(ra) -- Store: [0x80003d40]:0x0000000000000005




Last Coverpoint : ['rs2_val == 144115188075855872', 'rs1_val == 524288']
Last Code Sequence : 
	-[0x80001160]:UKADD64 t6, t5, t4
	-[0x80001164]:sd t6, 816(ra)
Current Store : [0x80001168] : sd t5, 824(ra) -- Store: [0x80003d58]:0x0000000000080000




Last Coverpoint : ['rs2_val == 72057594037927936']
Last Code Sequence : 
	-[0x80001180]:UKADD64 t6, t5, t4
	-[0x80001184]:sd t6, 840(ra)
Current Store : [0x80001188] : sd t5, 848(ra) -- Store: [0x80003d70]:0xFF7FFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 36028797018963968']
Last Code Sequence : 
	-[0x80001198]:UKADD64 t6, t5, t4
	-[0x8000119c]:sd t6, 864(ra)
Current Store : [0x800011a0] : sd t5, 872(ra) -- Store: [0x80003d88]:0x0000000000000003




Last Coverpoint : ['rs2_val == 18014398509481984', 'rs1_val == 2199023255552']
Last Code Sequence : 
	-[0x800011b4]:UKADD64 t6, t5, t4
	-[0x800011b8]:sd t6, 888(ra)
Current Store : [0x800011bc] : sd t5, 896(ra) -- Store: [0x80003da0]:0x0000020000000000




Last Coverpoint : ['rs2_val == 9007199254740992']
Last Code Sequence : 
	-[0x800011d4]:UKADD64 t6, t5, t4
	-[0x800011d8]:sd t6, 912(ra)
Current Store : [0x800011dc] : sd t5, 920(ra) -- Store: [0x80003db8]:0xFFFFEFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 2251799813685248']
Last Code Sequence : 
	-[0x800011ec]:UKADD64 t6, t5, t4
	-[0x800011f0]:sd t6, 936(ra)
Current Store : [0x800011f4] : sd t5, 944(ra) -- Store: [0x80003dd0]:0x0000000000000010




Last Coverpoint : ['rs2_val == 1125899906842624', 'rs1_val == 9007199254740992']
Last Code Sequence : 
	-[0x80001208]:UKADD64 t6, t5, t4
	-[0x8000120c]:sd t6, 960(ra)
Current Store : [0x80001210] : sd t5, 968(ra) -- Store: [0x80003de8]:0x0020000000000000




Last Coverpoint : ['rs1_val == 140737488355328']
Last Code Sequence : 
	-[0x80001224]:UKADD64 t6, t5, t4
	-[0x80001228]:sd t6, 984(ra)
Current Store : [0x8000122c] : sd t5, 992(ra) -- Store: [0x80003e00]:0x0000800000000000




Last Coverpoint : ['rs2_val == 281474976710656']
Last Code Sequence : 
	-[0x80001240]:UKADD64 t6, t5, t4
	-[0x80001244]:sd t6, 1008(ra)
Current Store : [0x80001248] : sd t5, 1016(ra) -- Store: [0x80003e18]:0xFFFFFFFFFFFFEFFF




Last Coverpoint : ['rs2_val == 140737488355328']
Last Code Sequence : 
	-[0x80001258]:UKADD64 t6, t5, t4
	-[0x8000125c]:sd t6, 1032(ra)
Current Store : [0x80001260] : sd t5, 1040(ra) -- Store: [0x80003e30]:0x000000000000000C




Last Coverpoint : ['rs2_val == 70368744177664']
Last Code Sequence : 
	-[0x80001274]:UKADD64 t6, t5, t4
	-[0x80001278]:sd t6, 1056(ra)
Current Store : [0x8000127c] : sd t5, 1064(ra) -- Store: [0x80003e48]:0xFFFFFFFFFFEFFFFF




Last Coverpoint : ['rs2_val == 35184372088832']
Last Code Sequence : 
	-[0x8000128c]:UKADD64 t6, t5, t4
	-[0x80001290]:sd t6, 1080(ra)
Current Store : [0x80001294] : sd t5, 1088(ra) -- Store: [0x80003e60]:0x0000000000400000




Last Coverpoint : ['rs2_val == 17592186044416', 'rs1_val == 131072']
Last Code Sequence : 
	-[0x800012a4]:UKADD64 t6, t5, t4
	-[0x800012a8]:sd t6, 1104(ra)
Current Store : [0x800012ac] : sd t5, 1112(ra) -- Store: [0x80003e78]:0x0000000000020000




Last Coverpoint : ['rs2_val == 2199023255552']
Last Code Sequence : 
	-[0x800012c0]:UKADD64 t6, t5, t4
	-[0x800012c4]:sd t6, 1128(ra)
Current Store : [0x800012c8] : sd t5, 1136(ra) -- Store: [0x80003e90]:0x0000001000000000




Last Coverpoint : ['rs2_val == 549755813888']
Last Code Sequence : 
	-[0x800012e0]:UKADD64 t6, t5, t4
	-[0x800012e4]:sd t6, 1152(ra)
Current Store : [0x800012e8] : sd t5, 1160(ra) -- Store: [0x80003ea8]:0x7FFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 274877906944']
Last Code Sequence : 
	-[0x800012f8]:UKADD64 t6, t5, t4
	-[0x800012fc]:sd t6, 1176(ra)
Current Store : [0x80001300] : sd t5, 1184(ra) -- Store: [0x80003ec0]:0x000000000000000B




Last Coverpoint : ['rs2_val == 137438953472']
Last Code Sequence : 
	-[0x80001310]:UKADD64 t6, t5, t4
	-[0x80001314]:sd t6, 1200(ra)
Current Store : [0x80001318] : sd t5, 1208(ra) -- Store: [0x80003ed8]:0x0000000000001000




Last Coverpoint : ['rs2_val == 68719476736']
Last Code Sequence : 
	-[0x80001328]:UKADD64 t6, t5, t4
	-[0x8000132c]:sd t6, 1224(ra)
Current Store : [0x80001330] : sd t5, 1232(ra) -- Store: [0x80003ef0]:0xFFFFFFFFFFFFFF7F




Last Coverpoint : ['rs2_val == 34359738368']
Last Code Sequence : 
	-[0x80001340]:UKADD64 t6, t5, t4
	-[0x80001344]:sd t6, 1248(ra)
Current Store : [0x80001348] : sd t5, 1256(ra) -- Store: [0x80003f08]:0x0000000000000012




Last Coverpoint : ['rs2_val == 8589934592']
Last Code Sequence : 
	-[0x80001360]:UKADD64 t6, t5, t4
	-[0x80001364]:sd t6, 1272(ra)
Current Store : [0x80001368] : sd t5, 1280(ra) -- Store: [0x80003f20]:0xF7FFFFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 4294967296']
Last Code Sequence : 
	-[0x8000137c]:UKADD64 t6, t5, t4
	-[0x80001380]:sd t6, 1296(ra)
Current Store : [0x80001384] : sd t5, 1304(ra) -- Store: [0x80003f38]:0x0020000000000000




Last Coverpoint : ['rs2_val == 2147483648', 'rs1_val == 274877906944']
Last Code Sequence : 
	-[0x80001398]:UKADD64 t6, t5, t4
	-[0x8000139c]:sd t6, 1320(ra)
Current Store : [0x800013a0] : sd t5, 1328(ra) -- Store: [0x80003f50]:0x0000004000000000




Last Coverpoint : ['rs2_val == 536870912']
Last Code Sequence : 
	-[0x800013ac]:UKADD64 t6, t5, t4
	-[0x800013b0]:sd t6, 1344(ra)
Current Store : [0x800013b4] : sd t5, 1352(ra) -- Store: [0x80003f68]:0x0000000000400000




Last Coverpoint : ['rs2_val == 134217728']
Last Code Sequence : 
	-[0x800013c0]:UKADD64 t6, t5, t4
	-[0x800013c4]:sd t6, 1368(ra)
Current Store : [0x800013c8] : sd t5, 1376(ra) -- Store: [0x80003f80]:0x0000000000000400




Last Coverpoint : ['rs2_val == 33554432']
Last Code Sequence : 
	-[0x800013d8]:UKADD64 t6, t5, t4
	-[0x800013dc]:sd t6, 1392(ra)
Current Store : [0x800013e0] : sd t5, 1400(ra) -- Store: [0x80003f98]:0x0008000000000000




Last Coverpoint : ['rs2_val == 4194304']
Last Code Sequence : 
	-[0x800013f0]:UKADD64 t6, t5, t4
	-[0x800013f4]:sd t6, 1416(ra)
Current Store : [0x800013f8] : sd t5, 1424(ra) -- Store: [0x80003fb0]:0x0008000000000000




Last Coverpoint : ['rs2_val == 2097152']
Last Code Sequence : 
	-[0x80001408]:UKADD64 t6, t5, t4
	-[0x8000140c]:sd t6, 1440(ra)
Current Store : [0x80001410] : sd t5, 1448(ra) -- Store: [0x80003fc8]:0xFFFFFFFFFFFBFFFF




Last Coverpoint : ['rs2_val == 1048576']
Last Code Sequence : 
	-[0x80001420]:UKADD64 t6, t5, t4
	-[0x80001424]:sd t6, 1464(ra)
Current Store : [0x80001428] : sd t5, 1472(ra) -- Store: [0x80003fe0]:0x0000001000000000




Last Coverpoint : ['rs2_val == 524288']
Last Code Sequence : 
	-[0x80001438]:UKADD64 t6, t5, t4
	-[0x8000143c]:sd t6, 1488(ra)
Current Store : [0x80001440] : sd t5, 1496(ra) -- Store: [0x80003ff8]:0xFFFFFFFFFFF7FFFF




Last Coverpoint : ['rs2_val == 262144']
Last Code Sequence : 
	-[0x80001450]:UKADD64 t6, t5, t4
	-[0x80001454]:sd t6, 1512(ra)
Current Store : [0x80001458] : sd t5, 1520(ra) -- Store: [0x80004010]:0x0010000000000000




Last Coverpoint : ['rs2_val == 65536', 'rs1_val == 262144']
Last Code Sequence : 
	-[0x80001464]:UKADD64 t6, t5, t4
	-[0x80001468]:sd t6, 1536(ra)
Current Store : [0x8000146c] : sd t5, 1544(ra) -- Store: [0x80004028]:0x0000000000040000




Last Coverpoint : ['rs2_val == 32768']
Last Code Sequence : 
	-[0x8000147c]:UKADD64 t6, t5, t4
	-[0x80001480]:sd t6, 1560(ra)
Current Store : [0x80001484] : sd t5, 1568(ra) -- Store: [0x80004040]:0x0002000000000000




Last Coverpoint : ['rs2_val == 16384', 'rs1_val == 1099511627776']
Last Code Sequence : 
	-[0x80001494]:UKADD64 t6, t5, t4
	-[0x80001498]:sd t6, 1584(ra)
Current Store : [0x8000149c] : sd t5, 1592(ra) -- Store: [0x80004058]:0x0000010000000000




Last Coverpoint : ['rs2_val == 8192']
Last Code Sequence : 
	-[0x800014ac]:UKADD64 t6, t5, t4
	-[0x800014b0]:sd t6, 1608(ra)
Current Store : [0x800014b4] : sd t5, 1616(ra) -- Store: [0x80004070]:0xFFFFFFFFFFFF7FFF




Last Coverpoint : ['rs2_val == 4096']
Last Code Sequence : 
	-[0x800014c0]:UKADD64 t6, t5, t4
	-[0x800014c4]:sd t6, 1632(ra)
Current Store : [0x800014c8] : sd t5, 1640(ra) -- Store: [0x80004088]:0x0000000000000006




Last Coverpoint : ['rs2_val == 2048', 'rs1_val == 4']
Last Code Sequence : 
	-[0x800014d8]:UKADD64 t6, t5, t4
	-[0x800014dc]:sd t6, 1656(ra)
Current Store : [0x800014e0] : sd t5, 1664(ra) -- Store: [0x800040a0]:0x0000000000000004




Last Coverpoint : ['rs2_val == 256']
Last Code Sequence : 
	-[0x800014f0]:UKADD64 t6, t5, t4
	-[0x800014f4]:sd t6, 1680(ra)
Current Store : [0x800014f8] : sd t5, 1688(ra) -- Store: [0x800040b8]:0xFFFFFFFFFFFEFFFF




Last Coverpoint : ['rs2_val == 64']
Last Code Sequence : 
	-[0x80001504]:UKADD64 t6, t5, t4
	-[0x80001508]:sd t6, 1704(ra)
Current Store : [0x8000150c] : sd t5, 1712(ra) -- Store: [0x800040d0]:0xFFFFFFFFFFFFFFF7




Last Coverpoint : ['rs2_val == 32']
Last Code Sequence : 
	-[0x80001520]:UKADD64 t6, t5, t4
	-[0x80001524]:sd t6, 1728(ra)
Current Store : [0x80001528] : sd t5, 1736(ra) -- Store: [0x800040e8]:0xFFF7FFFFFFFFFFFF




Last Coverpoint : ['rs2_val == 16']
Last Code Sequence : 
	-[0x80001538]:UKADD64 t6, t5, t4
	-[0x8000153c]:sd t6, 1752(ra)
Current Store : [0x80001540] : sd t5, 1760(ra) -- Store: [0x80004100]:0x2000000000000000




Last Coverpoint : ['rs2_val == 8']
Last Code Sequence : 
	-[0x80001568]:UKADD64 t6, t5, t4
	-[0x8000156c]:sd t6, 1776(ra)
Current Store : [0x80001570] : sd t5, 1784(ra) -- Store: [0x80004118]:0x5555555555555555




Last Coverpoint : ['rs2_val == 4']
Last Code Sequence : 
	-[0x80001584]:UKADD64 t6, t5, t4
	-[0x80001588]:sd t6, 1800(ra)
Current Store : [0x8000158c] : sd t5, 1808(ra) -- Store: [0x80004130]:0xFFFFFFFF7FFFFFFF




Last Coverpoint : ['rs2_val == 2']
Last Code Sequence : 
	-[0x8000159c]:UKADD64 t6, t5, t4
	-[0x800015a0]:sd t6, 1824(ra)
Current Store : [0x800015a4] : sd t5, 1832(ra) -- Store: [0x80004148]:0x0000004000000000




Last Coverpoint : ['rs2_val == 1', 'rs1_val == 1073741824']
Last Code Sequence : 
	-[0x800015b0]:UKADD64 t6, t5, t4
	-[0x800015b4]:sd t6, 1848(ra)
Current Store : [0x800015b8] : sd t5, 1856(ra) -- Store: [0x80004160]:0x0000000040000000




Last Coverpoint : ['rs1_val == 9223372036854775808']
Last Code Sequence : 
	-[0x800015c8]:UKADD64 t6, t5, t4
	-[0x800015cc]:sd t6, 1872(ra)
Current Store : [0x800015d0] : sd t5, 1880(ra) -- Store: [0x80004178]:0x8000000000000000




Last Coverpoint : ['rs1_val == 4611686018427387904']
Last Code Sequence : 
	-[0x800015e0]:UKADD64 t6, t5, t4
	-[0x800015e4]:sd t6, 1896(ra)
Current Store : [0x800015e8] : sd t5, 1904(ra) -- Store: [0x80004190]:0x4000000000000000




Last Coverpoint : ['rs1_val == 1152921504606846976']
Last Code Sequence : 
	-[0x800015fc]:UKADD64 t6, t5, t4
	-[0x80001600]:sd t6, 1920(ra)
Current Store : [0x80001604] : sd t5, 1928(ra) -- Store: [0x800041a8]:0x1000000000000000




Last Coverpoint : ['rs1_val == 576460752303423488']
Last Code Sequence : 
	-[0x8000161c]:UKADD64 t6, t5, t4
	-[0x80001620]:sd t6, 1944(ra)
Current Store : [0x80001624] : sd t5, 1952(ra) -- Store: [0x800041c0]:0x0800000000000000




Last Coverpoint : ['rs1_val == 72057594037927936']
Last Code Sequence : 
	-[0x8000163c]:UKADD64 t6, t5, t4
	-[0x80001640]:sd t6, 1968(ra)
Current Store : [0x80001644] : sd t5, 1976(ra) -- Store: [0x800041d8]:0x0100000000000000




Last Coverpoint : ['rs1_val == 18014398509481984']
Last Code Sequence : 
	-[0x80001654]:UKADD64 t6, t5, t4
	-[0x80001658]:sd t6, 1992(ra)
Current Store : [0x8000165c] : sd t5, 2000(ra) -- Store: [0x800041f0]:0x0040000000000000




Last Coverpoint : ['rs1_val == 1125899906842624']
Last Code Sequence : 
	-[0x80001674]:UKADD64 t6, t5, t4
	-[0x80001678]:sd t6, 2016(ra)
Current Store : [0x8000167c] : sd t5, 2024(ra) -- Store: [0x80004208]:0x0004000000000000




Last Coverpoint : ['rs1_val == 281474976710656']
Last Code Sequence : 
	-[0x80001698]:UKADD64 t6, t5, t4
	-[0x8000169c]:sd t6, 0(ra)
Current Store : [0x800016a0] : sd t5, 8(ra) -- Store: [0x80004220]:0x0001000000000000




Last Coverpoint : ['rs1_val == 70368744177664']
Last Code Sequence : 
	-[0x800016c0]:UKADD64 t6, t5, t4
	-[0x800016c4]:sd t6, 0(ra)
Current Store : [0x800016c8] : sd t5, 8(ra) -- Store: [0x80004238]:0x0000400000000000




Last Coverpoint : ['rs1_val == 35184372088832']
Last Code Sequence : 
	-[0x800016dc]:UKADD64 t6, t5, t4
	-[0x800016e0]:sd t6, 24(ra)
Current Store : [0x800016e4] : sd t5, 32(ra) -- Store: [0x80004250]:0x0000200000000000




Last Coverpoint : ['rs1_val == 8796093022208']
Last Code Sequence : 
	-[0x800016f8]:UKADD64 t6, t5, t4
	-[0x800016fc]:sd t6, 48(ra)
Current Store : [0x80001700] : sd t5, 56(ra) -- Store: [0x80004268]:0x0000080000000000




Last Coverpoint : ['rs1_val == 4398046511104']
Last Code Sequence : 
	-[0x80001718]:UKADD64 t6, t5, t4
	-[0x8000171c]:sd t6, 72(ra)
Current Store : [0x80001720] : sd t5, 80(ra) -- Store: [0x80004280]:0x0000040000000000




Last Coverpoint : ['rs1_val == 137438953472']
Last Code Sequence : 
	-[0x80001734]:UKADD64 t6, t5, t4
	-[0x80001738]:sd t6, 96(ra)
Current Store : [0x8000173c] : sd t5, 104(ra) -- Store: [0x80004298]:0x0000002000000000




Last Coverpoint : ['rs1_val == 34359738368']
Last Code Sequence : 
	-[0x8000174c]:UKADD64 t6, t5, t4
	-[0x80001750]:sd t6, 120(ra)
Current Store : [0x80001754] : sd t5, 128(ra) -- Store: [0x800042b0]:0x0000000800000000




Last Coverpoint : ['rs1_val == 17179869184']
Last Code Sequence : 
	-[0x80001764]:UKADD64 t6, t5, t4
	-[0x80001768]:sd t6, 144(ra)
Current Store : [0x8000176c] : sd t5, 152(ra) -- Store: [0x800042c8]:0x0000000400000000




Last Coverpoint : ['rs1_val == 4294967296']
Last Code Sequence : 
	-[0x80001780]:UKADD64 t6, t5, t4
	-[0x80001784]:sd t6, 168(ra)
Current Store : [0x80001788] : sd t5, 176(ra) -- Store: [0x800042e0]:0x0000000100000000




Last Coverpoint : ['rs1_val == 536870912']
Last Code Sequence : 
	-[0x8000179c]:UKADD64 t6, t5, t4
	-[0x800017a0]:sd t6, 192(ra)
Current Store : [0x800017a4] : sd t5, 200(ra) -- Store: [0x800042f8]:0x0000000020000000




Last Coverpoint : ['rs1_val == 134217728']
Last Code Sequence : 
	-[0x800017b4]:UKADD64 t6, t5, t4
	-[0x800017b8]:sd t6, 216(ra)
Current Store : [0x800017bc] : sd t5, 224(ra) -- Store: [0x80004310]:0x0000000008000000




Last Coverpoint : ['rs1_val == 33554432']
Last Code Sequence : 
	-[0x800017c8]:UKADD64 t6, t5, t4
	-[0x800017cc]:sd t6, 240(ra)
Current Store : [0x800017d0] : sd t5, 248(ra) -- Store: [0x80004328]:0x0000000002000000




Last Coverpoint : ['rs1_val == 16777216']
Last Code Sequence : 
	-[0x800017dc]:UKADD64 t6, t5, t4
	-[0x800017e0]:sd t6, 264(ra)
Current Store : [0x800017e4] : sd t5, 272(ra) -- Store: [0x80004340]:0x0000000001000000




Last Coverpoint : ['rs1_val == 1048576']
Last Code Sequence : 
	-[0x800017f4]:UKADD64 t6, t5, t4
	-[0x800017f8]:sd t6, 288(ra)
Current Store : [0x800017fc] : sd t5, 296(ra) -- Store: [0x80004358]:0x0000000000100000




Last Coverpoint : ['rs1_val == 65536']
Last Code Sequence : 
	-[0x80001808]:UKADD64 t6, t5, t4
	-[0x8000180c]:sd t6, 312(ra)
Current Store : [0x80001810] : sd t5, 320(ra) -- Store: [0x80004370]:0x0000000000010000




Last Coverpoint : ['rs1_val == 32768']
Last Code Sequence : 
	-[0x80001824]:UKADD64 t6, t5, t4
	-[0x80001828]:sd t6, 336(ra)
Current Store : [0x8000182c] : sd t5, 344(ra) -- Store: [0x80004388]:0x0000000000008000




Last Coverpoint : ['rs1_val == 2048']
Last Code Sequence : 
	-[0x8000183c]:UKADD64 t6, t5, t4
	-[0x80001840]:sd t6, 360(ra)
Current Store : [0x80001844] : sd t5, 368(ra) -- Store: [0x800043a0]:0x0000000000000800




Last Coverpoint : ['rs1_val == 512']
Last Code Sequence : 
	-[0x80001850]:UKADD64 t6, t5, t4
	-[0x80001854]:sd t6, 384(ra)
Current Store : [0x80001858] : sd t5, 392(ra) -- Store: [0x800043b8]:0x0000000000000200




Last Coverpoint : ['rs1_val == 256']
Last Code Sequence : 
	-[0x8000186c]:UKADD64 t6, t5, t4
	-[0x80001870]:sd t6, 408(ra)
Current Store : [0x80001874] : sd t5, 416(ra) -- Store: [0x800043d0]:0x0000000000000100




Last Coverpoint : ['rs1_val == 128']
Last Code Sequence : 
	-[0x80001884]:UKADD64 t6, t5, t4
	-[0x80001888]:sd t6, 432(ra)
Current Store : [0x8000188c] : sd t5, 440(ra) -- Store: [0x800043e8]:0x0000000000000080




Last Coverpoint : ['rs1_val == 64']
Last Code Sequence : 
	-[0x80001898]:UKADD64 t6, t5, t4
	-[0x8000189c]:sd t6, 456(ra)
Current Store : [0x800018a0] : sd t5, 464(ra) -- Store: [0x80004400]:0x0000000000000040




Last Coverpoint : ['rs1_val == 32']
Last Code Sequence : 
	-[0x800018b4]:UKADD64 t6, t5, t4
	-[0x800018b8]:sd t6, 480(ra)
Current Store : [0x800018bc] : sd t5, 488(ra) -- Store: [0x80004418]:0x0000000000000020




Last Coverpoint : ['rs1_val == 8']
Last Code Sequence : 
	-[0x800018cc]:UKADD64 t6, t5, t4
	-[0x800018d0]:sd t6, 504(ra)
Current Store : [0x800018d4] : sd t5, 512(ra) -- Store: [0x80004430]:0x0000000000000008




Last Coverpoint : ['rs2_val == 6148914691236517205']
Last Code Sequence : 
	-[0x80001900]:UKADD64 t6, t5, t4
	-[0x80001904]:sd t6, 528(ra)
Current Store : [0x80001908] : sd t5, 536(ra) -- Store: [0x80004448]:0x0002000000000000




Last Coverpoint : ['rs2_val == 9223372036854775807']
Last Code Sequence : 
	-[0x8000191c]:UKADD64 t6, t5, t4
	-[0x80001920]:sd t6, 552(ra)
Current Store : [0x80001924] : sd t5, 560(ra) -- Store: [0x80004460]:0xFFFFFFFFFFFFFFFD





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

|s.no|            signature             |                                                                                                                      coverpoints                                                                                                                       |                                 code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0004000000000000|- opcode : ukadd64<br> - rs1 : x8<br> - rs2 : x8<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs2_val == 562949953421312<br> - rs1_val == 562949953421312<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br> |[0x800003b4]:UKADD64 s2, fp, fp<br> [0x800003b8]:sd s2, 0(ra)<br>     |
|   2|[0x80003228]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs2_val == 18446744073709551613<br> - rs1_val == 18446744073709551613<br>                                                                                                       |[0x800003c8]:UKADD64 s8, s8, s8<br> [0x800003cc]:sd s8, 24(ra)<br>    |
|   3|[0x80003240]<br>0xC000000000000009|- rs1 : x10<br> - rs2 : x22<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 13835058055282163711<br>                                                             |[0x800003e4]:UKADD64 t5, a0, s6<br> [0x800003e8]:sd t5, 48(ra)<br>    |
|   4|[0x80003258]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x6<br> - rs2 : x12<br> - rd : x6<br> - rs1 == rd != rs2<br> - rs2_val == 16140901064495857663<br> - rs1_val == 18446744073709535231<br>                                                                                                         |[0x80000404]:UKADD64 t1, t1, a2<br> [0x80000408]:sd t1, 72(ra)<br>    |
|   5|[0x80003270]<br>0xF000000000000001|- rs1 : x12<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs2_val == 17293822569102704639<br> - rs1_val == 2<br>                                                                                                                          |[0x80000420]:UKADD64 s4, a2, s4<br> [0x80000424]:sd s4, 96(ra)<br>    |
|   6|[0x80003288]<br>0xF800000000003FFF|- rs1 : x30<br> - rs2 : x10<br> - rd : x22<br> - rs2_val == 17870283321406128127<br> - rs1_val == 16384<br>                                                                                                                                             |[0x8000043c]:UKADD64 s6, t5, a0<br> [0x80000440]:sd s6, 120(ra)<br>   |
|   7|[0x800032a0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x4<br> - rs2 : x16<br> - rd : x12<br> - rs2_val == 18158513697557839871<br> - rs1_val == 18446739675663040511<br>                                                                                                                               |[0x80000460]:UKADD64 a2, tp, a6<br> [0x80000464]:sd a2, 144(ra)<br>   |
|   8|[0x800032b8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x14<br> - rs2 : x28<br> - rd : x4<br> - rs2_val == 18302628885633695743<br> - rs1_val == 288230376151711744<br>                                                                                                                                 |[0x80000480]:UKADD64 tp, a4, t3<br> [0x80000484]:sd tp, 168(ra)<br>   |
|   9|[0x800032d0]<br>0xFF000000000003FF|- rs1 : x28<br> - rs2 : x4<br> - rd : x2<br> - rs2_val == 18374686479671623679<br> - rs1_val == 1024<br>                                                                                                                                                |[0x8000049c]:UKADD64 sp, t3, tp<br> [0x800004a0]:sd sp, 192(ra)<br>   |
|  10|[0x800032e8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rs2 : x6<br> - rd : x28<br> - rs2_val == 18410715276690587647<br>                                                                                                                                                                     |[0x800004bc]:UKADD64 t3, s4, t1<br> [0x800004c0]:sd t3, 216(ra)<br>   |
|  11|[0x80003300]<br>0xFFC1FFFFFFFFFFFF|- rs1 : x22<br> - rs2 : x2<br> - rd : x16<br> - rs2_val == 18428729675200069631<br>                                                                                                                                                                     |[0x800004dc]:UKADD64 a6, s6, sp<br> [0x800004e0]:sd a6, 240(ra)<br>   |
|  12|[0x80003318]<br>0xFFE0000000003FFF|- rs1 : x16<br> - rs2 : x14<br> - rd : x26<br> - rs2_val == 18437736874454810623<br>                                                                                                                                                                    |[0x800004f8]:UKADD64 s10, a6, a4<br> [0x800004fc]:sd s10, 264(ra)<br> |
|  13|[0x80003330]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x2<br> - rs2 : x26<br> - rd : x8<br> - rs2_val == 18442240474082181119<br> - rs1_val == 18446744073709547519<br>                                                                                                                                |[0x80000518]:UKADD64 fp, sp, s10<br> [0x8000051c]:sd fp, 288(ra)<br>  |
|  14|[0x80003348]<br>0xFFF800000FFFFFFF|- rs1 : x26<br> - rs2 : x30<br> - rd : x10<br> - rs2_val == 18444492273895866367<br> - rs1_val == 268435456<br>                                                                                                                                         |[0x80000534]:UKADD64 a0, s10, t5<br> [0x80000538]:sd a0, 312(ra)<br>  |
|  15|[0x80003360]<br>0xFFFC000000000009|- rs1 : x18<br> - rs2_val == 18445618173802708991<br>                                                                                                                                                                                                   |[0x80000550]:UKADD64 a5, s2, t5<br> [0x80000554]:sd a5, 336(ra)<br>   |
|  16|[0x80003378]<br>0xFFFFFFFFFFFFFFFF|- rs2 : x18<br> - rs2_val == 18446181123756130303<br> - rs1_val == 36028797018963968<br>                                                                                                                                                                |[0x80000570]:UKADD64 a1, a4, s2<br> [0x80000574]:sd a1, 360(ra)<br>   |
|  17|[0x80003390]<br>0xFFFFFFFFFFFFFFFF|- rd : x14<br> - rs2_val == 18446462598732840959<br> - rs1_val == 13835058055282163711<br>                                                                                                                                                              |[0x80000594]:UKADD64 a4, s8, t1<br> [0x80000598]:sd a4, 384(ra)<br>   |
|  18|[0x800033a8]<br>0xFFFF8000003FFFFF|- rs2_val == 18446603336221196287<br> - rs1_val == 4194304<br>                                                                                                                                                                                          |[0x800005b0]:UKADD64 t6, t5, t4<br> [0x800005b4]:sd t6, 408(ra)<br>   |
|  19|[0x800033c0]<br>0xFFFFC00000000FFF|- rs2_val == 18446673704965373951<br> - rs1_val == 4096<br>                                                                                                                                                                                             |[0x800005cc]:UKADD64 t6, t5, t4<br> [0x800005d0]:sd t6, 432(ra)<br>   |
|  20|[0x800033d8]<br>0xFFFFE00FFFFFFFFF|- rs2_val == 18446708889337462783<br> - rs1_val == 68719476736<br>                                                                                                                                                                                      |[0x800005ec]:UKADD64 t6, t5, t4<br> [0x800005f0]:sd t6, 456(ra)<br>   |
|  21|[0x800033f0]<br>0xFFFFF0000000000F|- rs2_val == 18446726481523507199<br> - rs1_val == 16<br>                                                                                                                                                                                               |[0x80000608]:UKADD64 t6, t5, t4<br> [0x8000060c]:sd t6, 480(ra)<br>   |
|  22|[0x80003408]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446735277616529407<br> - rs1_val == 9223372036854775807<br>                                                                                                                                                                              |[0x8000062c]:UKADD64 t6, t5, t4<br> [0x80000630]:sd t6, 504(ra)<br>   |
|  23|[0x80003420]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446739675663040511<br> - rs1_val == 18446462598732840959<br>                                                                                                                                                                             |[0x80000650]:UKADD64 t6, t5, t4<br> [0x80000654]:sd t6, 528(ra)<br>   |
|  24|[0x80003438]<br>0xFFFFFE7FFFFFFFFF|- rs2_val == 18446741874686296063<br> - rs1_val == 549755813888<br>                                                                                                                                                                                     |[0x80000670]:UKADD64 t6, t5, t4<br> [0x80000674]:sd t6, 552(ra)<br>   |
|  25|[0x80003450]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446742974197923839<br> - rs1_val == 18374686479671623679<br>                                                                                                                                                                             |[0x80000694]:UKADD64 t6, t5, t4<br> [0x80000698]:sd t6, 576(ra)<br>   |
|  26|[0x80003468]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446743523953737727<br> - rs1_val == 17293822569102704639<br>                                                                                                                                                                             |[0x800006b8]:UKADD64 t6, t5, t4<br> [0x800006bc]:sd t6, 600(ra)<br>   |
|  27|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446743798831644671<br> - rs1_val == 18302628885633695743<br>                                                                                                                                                                             |[0x800006dc]:UKADD64 t6, t5, t4<br> [0x800006e0]:sd t6, 624(ra)<br>   |
|  28|[0x80003498]<br>0xFFFFFFE00000000C|- rs2_val == 18446743936270598143<br>                                                                                                                                                                                                                   |[0x800006f8]:UKADD64 t6, t5, t4<br> [0x800006fc]:sd t6, 648(ra)<br>   |
|  29|[0x800034b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744004990074879<br> - rs1_val == 2251799813685248<br>                                                                                                                                                                                 |[0x80000718]:UKADD64 t6, t5, t4<br> [0x8000071c]:sd t6, 672(ra)<br>   |
|  30|[0x800034c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744039349813247<br> - rs1_val == 18446744039349813247<br>                                                                                                                                                                             |[0x8000073c]:UKADD64 t6, t5, t4<br> [0x80000740]:sd t6, 696(ra)<br>   |
|  31|[0x800034e0]<br>0xFFFFFFFC001FFFFF|- rs2_val == 18446744056529682431<br> - rs1_val == 2097152<br>                                                                                                                                                                                          |[0x80000758]:UKADD64 t6, t5, t4<br> [0x8000075c]:sd t6, 720(ra)<br>   |
|  32|[0x800034f8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744065119617023<br> - rs1_val == 18446744073709551487<br>                                                                                                                                                                             |[0x80000774]:UKADD64 t6, t5, t4<br> [0x80000778]:sd t6, 744(ra)<br>   |
|  33|[0x80003510]<br>0xFFFFFFFF0000000D|- rs2_val == 18446744069414584319<br>                                                                                                                                                                                                                   |[0x80000790]:UKADD64 t6, t5, t4<br> [0x80000794]:sd t6, 768(ra)<br>   |
|  34|[0x80003528]<br>0xFFFFFFFF80000005|- rs2_val == 18446744071562067967<br>                                                                                                                                                                                                                   |[0x800007ac]:UKADD64 t6, t5, t4<br> [0x800007b0]:sd t6, 792(ra)<br>   |
|  35|[0x80003540]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744072635809791<br> - rs1_val == 18446744073707454463<br>                                                                                                                                                                             |[0x800007c8]:UKADD64 t6, t5, t4<br> [0x800007cc]:sd t6, 816(ra)<br>   |
|  36|[0x80003558]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073172680703<br> - rs1_val == 18446744073642442751<br>                                                                                                                                                                             |[0x800007e4]:UKADD64 t6, t5, t4<br> [0x800007e8]:sd t6, 840(ra)<br>   |
|  37|[0x80003570]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073441116159<br> - rs1_val == 18446743523953737727<br>                                                                                                                                                                             |[0x80000804]:UKADD64 t6, t5, t4<br> [0x80000808]:sd t6, 864(ra)<br>   |
|  38|[0x80003588]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073575333887<br>                                                                                                                                                                                                                   |[0x80000820]:UKADD64 t6, t5, t4<br> [0x80000824]:sd t6, 888(ra)<br>   |
|  39|[0x800035a0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073642442751<br>                                                                                                                                                                                                                   |[0x80000840]:UKADD64 t6, t5, t4<br> [0x80000844]:sd t6, 912(ra)<br>   |
|  40|[0x800035b8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073675997183<br> - rs1_val == 144115188075855872<br>                                                                                                                                                                               |[0x8000085c]:UKADD64 t6, t5, t4<br> [0x80000860]:sd t6, 936(ra)<br>   |
|  41|[0x800035d0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073692774399<br> - rs1_val == (2**64-1)<br>                                                                                                                                                                                        |[0x80000874]:UKADD64 t6, t5, t4<br> [0x80000878]:sd t6, 960(ra)<br>   |
|  42|[0x800035e8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073701163007<br>                                                                                                                                                                                                                   |[0x80000894]:UKADD64 t6, t5, t4<br> [0x80000898]:sd t6, 984(ra)<br>   |
|  43|[0x80003600]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073705357311<br> - rs1_val == 8589934592<br>                                                                                                                                                                                       |[0x800008b0]:UKADD64 t6, t5, t4<br> [0x800008b4]:sd t6, 1008(ra)<br>  |
|  44|[0x80003618]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073707454463<br>                                                                                                                                                                                                                   |[0x800008cc]:UKADD64 t6, t5, t4<br> [0x800008d0]:sd t6, 1032(ra)<br>  |
|  45|[0x80003630]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073708503039<br> - rs1_val == 18446743936270598143<br>                                                                                                                                                                             |[0x800008ec]:UKADD64 t6, t5, t4<br> [0x800008f0]:sd t6, 1056(ra)<br>  |
|  46|[0x80003648]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709027327<br> - rs1_val == 17592186044416<br>                                                                                                                                                                                   |[0x80000908]:UKADD64 t6, t5, t4<br> [0x8000090c]:sd t6, 1080(ra)<br>  |
|  47|[0x80003660]<br>0xFFFFFFFFFFFC0011|- rs2_val == 18446744073709289471<br>                                                                                                                                                                                                                   |[0x80000920]:UKADD64 t6, t5, t4<br> [0x80000924]:sd t6, 1104(ra)<br>  |
|  48|[0x80003678]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709420543<br>                                                                                                                                                                                                                   |[0x80000940]:UKADD64 t6, t5, t4<br> [0x80000944]:sd t6, 1128(ra)<br>  |
|  49|[0x80003690]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709486079<br> - rs1_val == 2305843009213693952<br>                                                                                                                                                                              |[0x8000095c]:UKADD64 t6, t5, t4<br> [0x80000960]:sd t6, 1152(ra)<br>  |
|  50|[0x800036a8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709518847<br> - rs1_val == 18446744073575333887<br>                                                                                                                                                                             |[0x80000978]:UKADD64 t6, t5, t4<br> [0x8000097c]:sd t6, 1176(ra)<br>  |
|  51|[0x800036c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709535231<br> - rs1_val == 8388608<br>                                                                                                                                                                                          |[0x80000990]:UKADD64 t6, t5, t4<br> [0x80000994]:sd t6, 1200(ra)<br>  |
|  52|[0x800036d8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709543423<br> - rs1_val == 8192<br>                                                                                                                                                                                             |[0x800009a8]:UKADD64 t6, t5, t4<br> [0x800009ac]:sd t6, 1224(ra)<br>  |
|  53|[0x800036f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709547519<br> - rs1_val == 18446181123756130303<br>                                                                                                                                                                             |[0x800009c8]:UKADD64 t6, t5, t4<br> [0x800009cc]:sd t6, 1248(ra)<br>  |
|  54|[0x80003708]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709549567<br> - rs1_val == 67108864<br>                                                                                                                                                                                         |[0x800009e0]:UKADD64 t6, t5, t4<br> [0x800009e4]:sd t6, 1272(ra)<br>  |
|  55|[0x80003720]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709550591<br> - rs1_val == 18446744073441116159<br>                                                                                                                                                                             |[0x800009f8]:UKADD64 t6, t5, t4<br> [0x800009fc]:sd t6, 1296(ra)<br>  |
|  56|[0x80003738]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709551103<br>                                                                                                                                                                                                                   |[0x80000a14]:UKADD64 t6, t5, t4<br> [0x80000a18]:sd t6, 1320(ra)<br>  |
|  57|[0x80003750]<br>0xFFFFFFFFFFFFFF10|- rs2_val == 18446744073709551359<br>                                                                                                                                                                                                                   |[0x80000a28]:UKADD64 t6, t5, t4<br> [0x80000a2c]:sd t6, 1344(ra)<br>  |
|  58|[0x80003768]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709551487<br>                                                                                                                                                                                                                   |[0x80000a3c]:UKADD64 t6, t5, t4<br> [0x80000a40]:sd t6, 1368(ra)<br>  |
|  59|[0x80003780]<br>0xFFFFFFFFFFFFFFCB|- rs2_val == 18446744073709551551<br>                                                                                                                                                                                                                   |[0x80000a50]:UKADD64 t6, t5, t4<br> [0x80000a54]:sd t6, 1392(ra)<br>  |
|  60|[0x80003798]<br>0xFFFFFFFFFFFFFFE8|- rs2_val == 18446744073709551583<br>                                                                                                                                                                                                                   |[0x80000a64]:UKADD64 t6, t5, t4<br> [0x80000a68]:sd t6, 1416(ra)<br>  |
|  61|[0x800037b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709551599<br>                                                                                                                                                                                                                   |[0x80000a7c]:UKADD64 t6, t5, t4<br> [0x80000a80]:sd t6, 1440(ra)<br>  |
|  62|[0x800037c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709551607<br>                                                                                                                                                                                                                   |[0x80000a94]:UKADD64 t6, t5, t4<br> [0x80000a98]:sd t6, 1464(ra)<br>  |
|  63|[0x800037e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709551611<br> - rs1_val == 4503599627370496<br>                                                                                                                                                                                 |[0x80000aac]:UKADD64 t6, t5, t4<br> [0x80000ab0]:sd t6, 1488(ra)<br>  |
|  64|[0x800037f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709486079<br>                                                                                                                                                                                                                   |[0x80000ac4]:UKADD64 t6, t5, t4<br> [0x80000ac8]:sd t6, 1512(ra)<br>  |
|  65|[0x80003810]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 18446744073709551614<br>                                                                                                                                                                                                                   |[0x80000ad8]:UKADD64 t6, t5, t4<br> [0x80000adc]:sd t6, 1536(ra)<br>  |
|  66|[0x80003828]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 16140901064495857663<br>                                                                                                                                                                                                                   |[0x80000afc]:UKADD64 t6, t5, t4<br> [0x80000b00]:sd t6, 1560(ra)<br>  |
|  67|[0x80003840]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 17870283321406128127<br> - rs2_val == (2**64-1)<br>                                                                                                                                                                                        |[0x80000b18]:UKADD64 t6, t5, t4<br> [0x80000b1c]:sd t6, 1584(ra)<br>  |
|  68|[0x80003858]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18158513697557839871<br>                                                                                                                                                                                                                   |[0x80000b38]:UKADD64 t6, t5, t4<br> [0x80000b3c]:sd t6, 1608(ra)<br>  |
|  69|[0x80003870]<br>0xFF80000003FFFFFF|- rs1_val == 18410715276690587647<br> - rs2_val == 67108864<br>                                                                                                                                                                                         |[0x80000b54]:UKADD64 t6, t5, t4<br> [0x80000b58]:sd t6, 1632(ra)<br>  |
|  70|[0x80003888]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18428729675200069631<br>                                                                                                                                                                                                                   |[0x80000b70]:UKADD64 t6, t5, t4<br> [0x80000b74]:sd t6, 1656(ra)<br>  |
|  71|[0x800038a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18437736874454810623<br>                                                                                                                                                                                                                   |[0x80000b90]:UKADD64 t6, t5, t4<br> [0x80000b94]:sd t6, 1680(ra)<br>  |
|  72|[0x800038b8]<br>0xFFF000FFFFFFFFFF|- rs1_val == 18442240474082181119<br> - rs2_val == 1099511627776<br>                                                                                                                                                                                    |[0x80000bb0]:UKADD64 t6, t5, t4<br> [0x80000bb4]:sd t6, 1704(ra)<br>  |
|  73|[0x800038d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18444492273895866367<br>                                                                                                                                                                                                                   |[0x80000bd0]:UKADD64 t6, t5, t4<br> [0x80000bd4]:sd t6, 1728(ra)<br>  |
|  74|[0x800038e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18445618173802708991<br>                                                                                                                                                                                                                   |[0x80000bf4]:UKADD64 t6, t5, t4<br> [0x80000bf8]:sd t6, 1752(ra)<br>  |
|  75|[0x80003900]<br>0xFFFF800000FFFFFF|- rs1_val == 18446603336221196287<br> - rs2_val == 16777216<br>                                                                                                                                                                                         |[0x80000c10]:UKADD64 t6, t5, t4<br> [0x80000c14]:sd t6, 1776(ra)<br>  |
|  76|[0x80003918]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446673704965373951<br>                                                                                                                                                                                                                   |[0x80000c34]:UKADD64 t6, t5, t4<br> [0x80000c38]:sd t6, 1800(ra)<br>  |
|  77|[0x80003930]<br>0xFFFFE3FFFFFFFFFF|- rs1_val == 18446708889337462783<br> - rs2_val == 4398046511104<br>                                                                                                                                                                                    |[0x80000c54]:UKADD64 t6, t5, t4<br> [0x80000c58]:sd t6, 1824(ra)<br>  |
|  78|[0x80003948]<br>0xFFFFF00000FFFFFF|- rs1_val == 18446726481523507199<br>                                                                                                                                                                                                                   |[0x80000c70]:UKADD64 t6, t5, t4<br> [0x80000c74]:sd t6, 1848(ra)<br>  |
|  79|[0x80003960]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446735277616529407<br>                                                                                                                                                                                                                   |[0x80000c94]:UKADD64 t6, t5, t4<br> [0x80000c98]:sd t6, 1872(ra)<br>  |
|  80|[0x80003978]<br>0xFFFFFE00007FFFFF|- rs1_val == 18446741874686296063<br> - rs2_val == 8388608<br>                                                                                                                                                                                          |[0x80000cb0]:UKADD64 t6, t5, t4<br> [0x80000cb4]:sd t6, 1896(ra)<br>  |
|  81|[0x80003990]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446742974197923839<br>                                                                                                                                                                                                                   |[0x80000cd0]:UKADD64 t6, t5, t4<br> [0x80000cd4]:sd t6, 1920(ra)<br>  |
|  82|[0x800039a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446743798831644671<br>                                                                                                                                                                                                                   |[0x80000cf4]:UKADD64 t6, t5, t4<br> [0x80000cf8]:sd t6, 1944(ra)<br>  |
|  83|[0x800039c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744004990074879<br>                                                                                                                                                                                                                   |[0x80000d14]:UKADD64 t6, t5, t4<br> [0x80000d18]:sd t6, 1968(ra)<br>  |
|  84|[0x800039d8]<br>0xFFFFFFFC000003FF|- rs1_val == 18446744056529682431<br> - rs2_val == 1024<br>                                                                                                                                                                                             |[0x80000d30]:UKADD64 t6, t5, t4<br> [0x80000d34]:sd t6, 1992(ra)<br>  |
|  85|[0x800039f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744065119617023<br>                                                                                                                                                                                                                   |[0x80000d54]:UKADD64 t6, t5, t4<br> [0x80000d58]:sd t6, 2016(ra)<br>  |
|  86|[0x80003a08]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744069414584319<br>                                                                                                                                                                                                                   |[0x80000d7c]:UKADD64 t6, t5, t4<br> [0x80000d80]:sd t6, 0(ra)<br>     |
|  87|[0x80003a20]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744071562067967<br>                                                                                                                                                                                                                   |[0x80000da8]:UKADD64 t6, t5, t4<br> [0x80000dac]:sd t6, 0(ra)<br>     |
|  88|[0x80003a38]<br>0xFFC0000000000000|- rs1_val == 1<br>                                                                                                                                                                                                                                      |[0x80000dc4]:UKADD64 t6, t5, t4<br> [0x80000dc8]:sd t6, 24(ra)<br>    |
|  89|[0x80003a50]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 12297829382473034410<br>                                                                                                                                                                                                                   |[0x80000dfc]:UKADD64 t6, t5, t4<br> [0x80000e00]:sd t6, 48(ra)<br>    |
|  90|[0x80003a68]<br>0xAAAAAAAAAAACAAAA|- rs2_val == 131072<br> - rs1_val == 12297829382473034410<br>                                                                                                                                                                                           |[0x80000e2c]:UKADD64 t6, t5, t4<br> [0x80000e30]:sd t6, 72(ra)<br>    |
|  91|[0x80003a80]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 6148914691236517205<br>                                                                                                                                                                                                                    |[0x80000e64]:UKADD64 t6, t5, t4<br> [0x80000e68]:sd t6, 96(ra)<br>    |
|  92|[0x80003a98]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == 0<br>                                                                                                                                                                                                                                      |[0x80000e80]:UKADD64 t6, t5, t4<br> [0x80000e84]:sd t6, 120(ra)<br>   |
|  93|[0x80003ab0]<br>0x0000000080000000|- rs1_val == 2147483648<br> - rs2_val == 0<br>                                                                                                                                                                                                          |[0x80000e98]:UKADD64 t6, t5, t4<br> [0x80000e9c]:sd t6, 144(ra)<br>   |
|  94|[0x80003ac8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744072635809791<br> - rs2_val == 4503599627370496<br>                                                                                                                                                                                 |[0x80000eb4]:UKADD64 t6, t5, t4<br> [0x80000eb8]:sd t6, 168(ra)<br>   |
|  95|[0x80003ae0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073172680703<br> - rs2_val == 8796093022208<br>                                                                                                                                                                                    |[0x80000ed0]:UKADD64 t6, t5, t4<br> [0x80000ed4]:sd t6, 192(ra)<br>   |
|  96|[0x80003af8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073675997183<br>                                                                                                                                                                                                                   |[0x80000ef0]:UKADD64 t6, t5, t4<br> [0x80000ef4]:sd t6, 216(ra)<br>   |
|  97|[0x80003b10]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073692774399<br> - rs2_val == 17179869184<br>                                                                                                                                                                                      |[0x80000f0c]:UKADD64 t6, t5, t4<br> [0x80000f10]:sd t6, 240(ra)<br>   |
|  98|[0x80003b28]<br>0xFFFFFFFFFF8003FF|- rs1_val == 18446744073701163007<br>                                                                                                                                                                                                                   |[0x80000f24]:UKADD64 t6, t5, t4<br> [0x80000f28]:sd t6, 264(ra)<br>   |
|  99|[0x80003b40]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073705357311<br>                                                                                                                                                                                                                   |[0x80000f40]:UKADD64 t6, t5, t4<br> [0x80000f44]:sd t6, 288(ra)<br>   |
| 100|[0x80003b58]<br>0xFFFFFFFFFFF1FFFF|- rs1_val == 18446744073708503039<br>                                                                                                                                                                                                                   |[0x80000f58]:UKADD64 t6, t5, t4<br> [0x80000f5c]:sd t6, 312(ra)<br>   |
| 101|[0x80003b70]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709027327<br> - rs2_val == 268435456<br>                                                                                                                                                                                        |[0x80000f70]:UKADD64 t6, t5, t4<br> [0x80000f74]:sd t6, 336(ra)<br>   |
| 102|[0x80003b88]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709289471<br>                                                                                                                                                                                                                   |[0x80000f88]:UKADD64 t6, t5, t4<br> [0x80000f8c]:sd t6, 360(ra)<br>   |
| 103|[0x80003ba0]<br>0xFFFFFFFFFFFE01FF|- rs1_val == 18446744073709420543<br> - rs2_val == 512<br>                                                                                                                                                                                              |[0x80000fa0]:UKADD64 t6, t5, t4<br> [0x80000fa4]:sd t6, 384(ra)<br>   |
| 104|[0x80003bb8]<br>0xFFFFFFFFFFFF807F|- rs1_val == 18446744073709518847<br> - rs2_val == 128<br>                                                                                                                                                                                              |[0x80000fb8]:UKADD64 t6, t5, t4<br> [0x80000fbc]:sd t6, 408(ra)<br>   |
| 105|[0x80003bd0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709543423<br>                                                                                                                                                                                                                   |[0x80000fd8]:UKADD64 t6, t5, t4<br> [0x80000fdc]:sd t6, 432(ra)<br>   |
| 106|[0x80003be8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709549567<br>                                                                                                                                                                                                                   |[0x80000ff8]:UKADD64 t6, t5, t4<br> [0x80000ffc]:sd t6, 456(ra)<br>   |
| 107|[0x80003c00]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709550591<br>                                                                                                                                                                                                                   |[0x80001010]:UKADD64 t6, t5, t4<br> [0x80001014]:sd t6, 480(ra)<br>   |
| 108|[0x80003c18]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709551103<br> - rs2_val == 1073741824<br>                                                                                                                                                                                       |[0x80001024]:UKADD64 t6, t5, t4<br> [0x80001028]:sd t6, 504(ra)<br>   |
| 109|[0x80003c30]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709551359<br>                                                                                                                                                                                                                   |[0x80001038]:UKADD64 t6, t5, t4<br> [0x8000103c]:sd t6, 528(ra)<br>   |
| 110|[0x80003c48]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709551551<br>                                                                                                                                                                                                                   |[0x80001050]:UKADD64 t6, t5, t4<br> [0x80001054]:sd t6, 552(ra)<br>   |
| 111|[0x80003c60]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709551583<br>                                                                                                                                                                                                                   |[0x80001064]:UKADD64 t6, t5, t4<br> [0x80001068]:sd t6, 576(ra)<br>   |
| 112|[0x80003c78]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709551599<br> - rs2_val == 288230376151711744<br>                                                                                                                                                                               |[0x8000107c]:UKADD64 t6, t5, t4<br> [0x80001080]:sd t6, 600(ra)<br>   |
| 113|[0x80003c90]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709551607<br>                                                                                                                                                                                                                   |[0x80001098]:UKADD64 t6, t5, t4<br> [0x8000109c]:sd t6, 624(ra)<br>   |
| 114|[0x80003ca8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709551611<br>                                                                                                                                                                                                                   |[0x800010b0]:UKADD64 t6, t5, t4<br> [0x800010b4]:sd t6, 648(ra)<br>   |
| 115|[0x80003cc0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 18446744073709551614<br>                                                                                                                                                                                                                   |[0x800010c8]:UKADD64 t6, t5, t4<br> [0x800010cc]:sd t6, 672(ra)<br>   |
| 116|[0x80003cd8]<br>0x8000000000000400|- rs2_val == 9223372036854775808<br>                                                                                                                                                                                                                    |[0x800010e0]:UKADD64 t6, t5, t4<br> [0x800010e4]:sd t6, 696(ra)<br>   |
| 117|[0x80003cf0]<br>0x4000000000400000|- rs2_val == 4611686018427387904<br>                                                                                                                                                                                                                    |[0x800010f8]:UKADD64 t6, t5, t4<br> [0x800010fc]:sd t6, 720(ra)<br>   |
| 118|[0x80003d08]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 2305843009213693952<br>                                                                                                                                                                                                                    |[0x80001118]:UKADD64 t6, t5, t4<br> [0x8000111c]:sd t6, 744(ra)<br>   |
| 119|[0x80003d20]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 1152921504606846976<br>                                                                                                                                                                                                                    |[0x80001130]:UKADD64 t6, t5, t4<br> [0x80001134]:sd t6, 768(ra)<br>   |
| 120|[0x80003d38]<br>0x0800000000000005|- rs2_val == 576460752303423488<br>                                                                                                                                                                                                                     |[0x80001148]:UKADD64 t6, t5, t4<br> [0x8000114c]:sd t6, 792(ra)<br>   |
| 121|[0x80003d50]<br>0x0200000000080000|- rs2_val == 144115188075855872<br> - rs1_val == 524288<br>                                                                                                                                                                                             |[0x80001160]:UKADD64 t6, t5, t4<br> [0x80001164]:sd t6, 816(ra)<br>   |
| 122|[0x80003d68]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 72057594037927936<br>                                                                                                                                                                                                                      |[0x80001180]:UKADD64 t6, t5, t4<br> [0x80001184]:sd t6, 840(ra)<br>   |
| 123|[0x80003d80]<br>0x0080000000000003|- rs2_val == 36028797018963968<br>                                                                                                                                                                                                                      |[0x80001198]:UKADD64 t6, t5, t4<br> [0x8000119c]:sd t6, 864(ra)<br>   |
| 124|[0x80003d98]<br>0x0040020000000000|- rs2_val == 18014398509481984<br> - rs1_val == 2199023255552<br>                                                                                                                                                                                       |[0x800011b4]:UKADD64 t6, t5, t4<br> [0x800011b8]:sd t6, 888(ra)<br>   |
| 125|[0x80003db0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 9007199254740992<br>                                                                                                                                                                                                                       |[0x800011d4]:UKADD64 t6, t5, t4<br> [0x800011d8]:sd t6, 912(ra)<br>   |
| 126|[0x80003dc8]<br>0x0008000000000010|- rs2_val == 2251799813685248<br>                                                                                                                                                                                                                       |[0x800011ec]:UKADD64 t6, t5, t4<br> [0x800011f0]:sd t6, 936(ra)<br>   |
| 127|[0x80003de0]<br>0x0024000000000000|- rs2_val == 1125899906842624<br> - rs1_val == 9007199254740992<br>                                                                                                                                                                                     |[0x80001208]:UKADD64 t6, t5, t4<br> [0x8000120c]:sd t6, 960(ra)<br>   |
| 128|[0x80003df8]<br>0x0002800000000000|- rs1_val == 140737488355328<br>                                                                                                                                                                                                                        |[0x80001224]:UKADD64 t6, t5, t4<br> [0x80001228]:sd t6, 984(ra)<br>   |
| 129|[0x80003e10]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 281474976710656<br>                                                                                                                                                                                                                        |[0x80001240]:UKADD64 t6, t5, t4<br> [0x80001244]:sd t6, 1008(ra)<br>  |
| 130|[0x80003e28]<br>0x000080000000000C|- rs2_val == 140737488355328<br>                                                                                                                                                                                                                        |[0x80001258]:UKADD64 t6, t5, t4<br> [0x8000125c]:sd t6, 1032(ra)<br>  |
| 131|[0x80003e40]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 70368744177664<br>                                                                                                                                                                                                                         |[0x80001274]:UKADD64 t6, t5, t4<br> [0x80001278]:sd t6, 1056(ra)<br>  |
| 132|[0x80003e58]<br>0x0000200000400000|- rs2_val == 35184372088832<br>                                                                                                                                                                                                                         |[0x8000128c]:UKADD64 t6, t5, t4<br> [0x80001290]:sd t6, 1080(ra)<br>  |
| 133|[0x80003e70]<br>0x0000100000020000|- rs2_val == 17592186044416<br> - rs1_val == 131072<br>                                                                                                                                                                                                 |[0x800012a4]:UKADD64 t6, t5, t4<br> [0x800012a8]:sd t6, 1104(ra)<br>  |
| 134|[0x80003e88]<br>0x0000021000000000|- rs2_val == 2199023255552<br>                                                                                                                                                                                                                          |[0x800012c0]:UKADD64 t6, t5, t4<br> [0x800012c4]:sd t6, 1128(ra)<br>  |
| 135|[0x80003ea0]<br>0x8000007FFFFFFFFF|- rs2_val == 549755813888<br>                                                                                                                                                                                                                           |[0x800012e0]:UKADD64 t6, t5, t4<br> [0x800012e4]:sd t6, 1152(ra)<br>  |
| 136|[0x80003eb8]<br>0x000000400000000B|- rs2_val == 274877906944<br>                                                                                                                                                                                                                           |[0x800012f8]:UKADD64 t6, t5, t4<br> [0x800012fc]:sd t6, 1176(ra)<br>  |
| 137|[0x80003ed0]<br>0x0000002000001000|- rs2_val == 137438953472<br>                                                                                                                                                                                                                           |[0x80001310]:UKADD64 t6, t5, t4<br> [0x80001314]:sd t6, 1200(ra)<br>  |
| 138|[0x80003ee8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 68719476736<br>                                                                                                                                                                                                                            |[0x80001328]:UKADD64 t6, t5, t4<br> [0x8000132c]:sd t6, 1224(ra)<br>  |
| 139|[0x80003f00]<br>0x0000000800000012|- rs2_val == 34359738368<br>                                                                                                                                                                                                                            |[0x80001340]:UKADD64 t6, t5, t4<br> [0x80001344]:sd t6, 1248(ra)<br>  |
| 140|[0x80003f18]<br>0xF8000001FFFFFFFF|- rs2_val == 8589934592<br>                                                                                                                                                                                                                             |[0x80001360]:UKADD64 t6, t5, t4<br> [0x80001364]:sd t6, 1272(ra)<br>  |
| 141|[0x80003f30]<br>0x0020000100000000|- rs2_val == 4294967296<br>                                                                                                                                                                                                                             |[0x8000137c]:UKADD64 t6, t5, t4<br> [0x80001380]:sd t6, 1296(ra)<br>  |
| 142|[0x80003f48]<br>0x0000004080000000|- rs2_val == 2147483648<br> - rs1_val == 274877906944<br>                                                                                                                                                                                               |[0x80001398]:UKADD64 t6, t5, t4<br> [0x8000139c]:sd t6, 1320(ra)<br>  |
| 143|[0x80003f60]<br>0x0000000020400000|- rs2_val == 536870912<br>                                                                                                                                                                                                                              |[0x800013ac]:UKADD64 t6, t5, t4<br> [0x800013b0]:sd t6, 1344(ra)<br>  |
| 144|[0x80003f78]<br>0x0000000008000400|- rs2_val == 134217728<br>                                                                                                                                                                                                                              |[0x800013c0]:UKADD64 t6, t5, t4<br> [0x800013c4]:sd t6, 1368(ra)<br>  |
| 145|[0x80003f90]<br>0x0008000002000000|- rs2_val == 33554432<br>                                                                                                                                                                                                                               |[0x800013d8]:UKADD64 t6, t5, t4<br> [0x800013dc]:sd t6, 1392(ra)<br>  |
| 146|[0x80003fa8]<br>0x0008000000400000|- rs2_val == 4194304<br>                                                                                                                                                                                                                                |[0x800013f0]:UKADD64 t6, t5, t4<br> [0x800013f4]:sd t6, 1416(ra)<br>  |
| 147|[0x80003fc0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 2097152<br>                                                                                                                                                                                                                                |[0x80001408]:UKADD64 t6, t5, t4<br> [0x8000140c]:sd t6, 1440(ra)<br>  |
| 148|[0x80003fd8]<br>0x0000001000100000|- rs2_val == 1048576<br>                                                                                                                                                                                                                                |[0x80001420]:UKADD64 t6, t5, t4<br> [0x80001424]:sd t6, 1464(ra)<br>  |
| 149|[0x80003ff0]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 524288<br>                                                                                                                                                                                                                                 |[0x80001438]:UKADD64 t6, t5, t4<br> [0x8000143c]:sd t6, 1488(ra)<br>  |
| 150|[0x80004008]<br>0x0010000000040000|- rs2_val == 262144<br>                                                                                                                                                                                                                                 |[0x80001450]:UKADD64 t6, t5, t4<br> [0x80001454]:sd t6, 1512(ra)<br>  |
| 151|[0x80004020]<br>0x0000000000050000|- rs2_val == 65536<br> - rs1_val == 262144<br>                                                                                                                                                                                                          |[0x80001464]:UKADD64 t6, t5, t4<br> [0x80001468]:sd t6, 1536(ra)<br>  |
| 152|[0x80004038]<br>0x0002000000008000|- rs2_val == 32768<br>                                                                                                                                                                                                                                  |[0x8000147c]:UKADD64 t6, t5, t4<br> [0x80001480]:sd t6, 1560(ra)<br>  |
| 153|[0x80004050]<br>0x0000010000004000|- rs2_val == 16384<br> - rs1_val == 1099511627776<br>                                                                                                                                                                                                   |[0x80001494]:UKADD64 t6, t5, t4<br> [0x80001498]:sd t6, 1584(ra)<br>  |
| 154|[0x80004068]<br>0xFFFFFFFFFFFF9FFF|- rs2_val == 8192<br>                                                                                                                                                                                                                                   |[0x800014ac]:UKADD64 t6, t5, t4<br> [0x800014b0]:sd t6, 1608(ra)<br>  |
| 155|[0x80004080]<br>0x0000000000001006|- rs2_val == 4096<br>                                                                                                                                                                                                                                   |[0x800014c0]:UKADD64 t6, t5, t4<br> [0x800014c4]:sd t6, 1632(ra)<br>  |
| 156|[0x80004098]<br>0x0000000000000804|- rs2_val == 2048<br> - rs1_val == 4<br>                                                                                                                                                                                                                |[0x800014d8]:UKADD64 t6, t5, t4<br> [0x800014dc]:sd t6, 1656(ra)<br>  |
| 157|[0x800040b0]<br>0xFFFFFFFFFFFF00FF|- rs2_val == 256<br>                                                                                                                                                                                                                                    |[0x800014f0]:UKADD64 t6, t5, t4<br> [0x800014f4]:sd t6, 1680(ra)<br>  |
| 158|[0x800040c8]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 64<br>                                                                                                                                                                                                                                     |[0x80001504]:UKADD64 t6, t5, t4<br> [0x80001508]:sd t6, 1704(ra)<br>  |
| 159|[0x800040e0]<br>0xFFF800000000001F|- rs2_val == 32<br>                                                                                                                                                                                                                                     |[0x80001520]:UKADD64 t6, t5, t4<br> [0x80001524]:sd t6, 1728(ra)<br>  |
| 160|[0x800040f8]<br>0x2000000000000010|- rs2_val == 16<br>                                                                                                                                                                                                                                     |[0x80001538]:UKADD64 t6, t5, t4<br> [0x8000153c]:sd t6, 1752(ra)<br>  |
| 161|[0x80004110]<br>0x555555555555555D|- rs2_val == 8<br>                                                                                                                                                                                                                                      |[0x80001568]:UKADD64 t6, t5, t4<br> [0x8000156c]:sd t6, 1776(ra)<br>  |
| 162|[0x80004128]<br>0xFFFFFFFF80000003|- rs2_val == 4<br>                                                                                                                                                                                                                                      |[0x80001584]:UKADD64 t6, t5, t4<br> [0x80001588]:sd t6, 1800(ra)<br>  |
| 163|[0x80004140]<br>0x0000004000000002|- rs2_val == 2<br>                                                                                                                                                                                                                                      |[0x8000159c]:UKADD64 t6, t5, t4<br> [0x800015a0]:sd t6, 1824(ra)<br>  |
| 164|[0x80004158]<br>0x0000000040000001|- rs2_val == 1<br> - rs1_val == 1073741824<br>                                                                                                                                                                                                          |[0x800015b0]:UKADD64 t6, t5, t4<br> [0x800015b4]:sd t6, 1848(ra)<br>  |
| 165|[0x80004170]<br>0x800000000000000D|- rs1_val == 9223372036854775808<br>                                                                                                                                                                                                                    |[0x800015c8]:UKADD64 t6, t5, t4<br> [0x800015cc]:sd t6, 1872(ra)<br>  |
| 166|[0x80004188]<br>0x4000000000000020|- rs1_val == 4611686018427387904<br>                                                                                                                                                                                                                    |[0x800015e0]:UKADD64 t6, t5, t4<br> [0x800015e4]:sd t6, 1896(ra)<br>  |
| 167|[0x800041a0]<br>0x1008000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                                                                                    |[0x800015fc]:UKADD64 t6, t5, t4<br> [0x80001600]:sd t6, 1920(ra)<br>  |
| 168|[0x800041b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 576460752303423488<br>                                                                                                                                                                                                                     |[0x8000161c]:UKADD64 t6, t5, t4<br> [0x80001620]:sd t6, 1944(ra)<br>  |
| 169|[0x800041d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 72057594037927936<br>                                                                                                                                                                                                                      |[0x8000163c]:UKADD64 t6, t5, t4<br> [0x80001640]:sd t6, 1968(ra)<br>  |
| 170|[0x800041e8]<br>0x0040000000010000|- rs1_val == 18014398509481984<br>                                                                                                                                                                                                                      |[0x80001654]:UKADD64 t6, t5, t4<br> [0x80001658]:sd t6, 1992(ra)<br>  |
| 171|[0x80004200]<br>0xFE03FFFFFFFFFFFF|- rs1_val == 1125899906842624<br>                                                                                                                                                                                                                       |[0x80001674]:UKADD64 t6, t5, t4<br> [0x80001678]:sd t6, 2016(ra)<br>  |
| 172|[0x80004218]<br>0x0001001000000000|- rs1_val == 281474976710656<br>                                                                                                                                                                                                                        |[0x80001698]:UKADD64 t6, t5, t4<br> [0x8000169c]:sd t6, 0(ra)<br>     |
| 173|[0x80004230]<br>0xF8003FFFFFFFFFFF|- rs1_val == 70368744177664<br>                                                                                                                                                                                                                         |[0x800016c0]:UKADD64 t6, t5, t4<br> [0x800016c4]:sd t6, 0(ra)<br>     |
| 174|[0x80004248]<br>0x0080200000000000|- rs1_val == 35184372088832<br>                                                                                                                                                                                                                         |[0x800016dc]:UKADD64 t6, t5, t4<br> [0x800016e0]:sd t6, 24(ra)<br>    |
| 175|[0x80004260]<br>0x0000090000000000|- rs1_val == 8796093022208<br>                                                                                                                                                                                                                          |[0x800016f8]:UKADD64 t6, t5, t4<br> [0x800016fc]:sd t6, 48(ra)<br>    |
| 176|[0x80004278]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 4398046511104<br>                                                                                                                                                                                                                          |[0x80001718]:UKADD64 t6, t5, t4<br> [0x8000171c]:sd t6, 72(ra)<br>    |
| 177|[0x80004290]<br>0x0000002200000000|- rs1_val == 137438953472<br>                                                                                                                                                                                                                           |[0x80001734]:UKADD64 t6, t5, t4<br> [0x80001738]:sd t6, 96(ra)<br>    |
| 178|[0x800042a8]<br>0x0000000800800000|- rs1_val == 34359738368<br>                                                                                                                                                                                                                            |[0x8000174c]:UKADD64 t6, t5, t4<br> [0x80001750]:sd t6, 120(ra)<br>   |
| 179|[0x800042c0]<br>0x0000000400002000|- rs1_val == 17179869184<br>                                                                                                                                                                                                                            |[0x80001764]:UKADD64 t6, t5, t4<br> [0x80001768]:sd t6, 144(ra)<br>   |
| 180|[0x800042d8]<br>0x4000000100000000|- rs1_val == 4294967296<br>                                                                                                                                                                                                                             |[0x80001780]:UKADD64 t6, t5, t4<br> [0x80001784]:sd t6, 168(ra)<br>   |
| 181|[0x800042f0]<br>0xFFFFC0001FFFFFFF|- rs1_val == 536870912<br>                                                                                                                                                                                                                              |[0x8000179c]:UKADD64 t6, t5, t4<br> [0x800017a0]:sd t6, 192(ra)<br>   |
| 182|[0x80004308]<br>0x0000010008000000|- rs1_val == 134217728<br>                                                                                                                                                                                                                              |[0x800017b4]:UKADD64 t6, t5, t4<br> [0x800017b8]:sd t6, 216(ra)<br>   |
| 183|[0x80004320]<br>0x0000000002040000|- rs1_val == 33554432<br>                                                                                                                                                                                                                               |[0x800017c8]:UKADD64 t6, t5, t4<br> [0x800017cc]:sd t6, 240(ra)<br>   |
| 184|[0x80004338]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 16777216<br>                                                                                                                                                                                                                               |[0x800017dc]:UKADD64 t6, t5, t4<br> [0x800017e0]:sd t6, 264(ra)<br>   |
| 185|[0x80004350]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 1048576<br>                                                                                                                                                                                                                                |[0x800017f4]:UKADD64 t6, t5, t4<br> [0x800017f8]:sd t6, 288(ra)<br>   |
| 186|[0x80004368]<br>0x0000000000020000|- rs1_val == 65536<br>                                                                                                                                                                                                                                  |[0x80001808]:UKADD64 t6, t5, t4<br> [0x8000180c]:sd t6, 312(ra)<br>   |
| 187|[0x80004380]<br>0xFFFFFC0000007FFF|- rs1_val == 32768<br>                                                                                                                                                                                                                                  |[0x80001824]:UKADD64 t6, t5, t4<br> [0x80001828]:sd t6, 336(ra)<br>   |
| 188|[0x80004398]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 2048<br>                                                                                                                                                                                                                                   |[0x8000183c]:UKADD64 t6, t5, t4<br> [0x80001840]:sd t6, 360(ra)<br>   |
| 189|[0x800043b0]<br>0x0000000000400200|- rs1_val == 512<br>                                                                                                                                                                                                                                    |[0x80001850]:UKADD64 t6, t5, t4<br> [0x80001854]:sd t6, 384(ra)<br>   |
| 190|[0x800043c8]<br>0xFFC00000000000FF|- rs1_val == 256<br>                                                                                                                                                                                                                                    |[0x8000186c]:UKADD64 t6, t5, t4<br> [0x80001870]:sd t6, 408(ra)<br>   |
| 191|[0x800043e0]<br>0x0200000000000080|- rs1_val == 128<br>                                                                                                                                                                                                                                    |[0x80001884]:UKADD64 t6, t5, t4<br> [0x80001888]:sd t6, 432(ra)<br>   |
| 192|[0x800043f8]<br>0x00000000000000C0|- rs1_val == 64<br>                                                                                                                                                                                                                                     |[0x80001898]:UKADD64 t6, t5, t4<br> [0x8000189c]:sd t6, 456(ra)<br>   |
| 193|[0x80004410]<br>0xFFFFFFFC0000001F|- rs1_val == 32<br>                                                                                                                                                                                                                                     |[0x800018b4]:UKADD64 t6, t5, t4<br> [0x800018b8]:sd t6, 480(ra)<br>   |
| 194|[0x80004428]<br>0x1000000000000008|- rs1_val == 8<br>                                                                                                                                                                                                                                      |[0x800018cc]:UKADD64 t6, t5, t4<br> [0x800018d0]:sd t6, 504(ra)<br>   |
| 195|[0x80004440]<br>0x5557555555555555|- rs2_val == 6148914691236517205<br>                                                                                                                                                                                                                    |[0x80001900]:UKADD64 t6, t5, t4<br> [0x80001904]:sd t6, 528(ra)<br>   |
| 196|[0x80004458]<br>0xFFFFFFFFFFFFFFFF|- rs2_val == 9223372036854775807<br>                                                                                                                                                                                                                    |[0x8000191c]:UKADD64 t6, t5, t4<br> [0x80001920]:sd t6, 552(ra)<br>   |
