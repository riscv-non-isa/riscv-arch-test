
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000f10')]      |
| SIG_REGION                | [('0x80002210', '0x80002800', '190 dwords')]      |
| COV_LABELS                | kabsw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kabsw-01.S    |
| Total Number of coverpoints| 205     |
| Total Coverpoints Hit     | 201      |
| Total Signature Updates   | 190      |
| STAT1                     | 95      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 95     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kabsw', 'rs1 : x8', 'rd : x15', 'rs1_w0_val == -2147483648', 'rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x800003b0]:KABSW a5, fp
	-[0x800003b4]:csrrs fp, vxsat, zero
	-[0x800003b8]:sd a5, 0(tp)
Current Store : [0x800003bc] : sd fp, 8(tp) -- Store: [0x80002218]:0x0000000000000001




Last Coverpoint : ['rs1 : x11', 'rd : x9', 'rs1_w1_val == -1431655766', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800003d8]:KABSW s1, a1
	-[0x800003dc]:csrrs a1, vxsat, zero
	-[0x800003e0]:sd s1, 16(tp)
Current Store : [0x800003e4] : sd a1, 24(tp) -- Store: [0x80002228]:0x0000000000000001




Last Coverpoint : ['rs1 : x22', 'rd : x6', 'rs1_w1_val == 1431655765', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800003fc]:KABSW t1, s6
	-[0x80000400]:csrrs s6, vxsat, zero
	-[0x80000404]:sd t1, 32(tp)
Current Store : [0x80000408] : sd s6, 40(tp) -- Store: [0x80002238]:0x0000000000000001




Last Coverpoint : ['rs1 : x28', 'rd : x29', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000420]:KABSW t4, t3
	-[0x80000424]:csrrs t3, vxsat, zero
	-[0x80000428]:sd t4, 48(tp)
Current Store : [0x8000042c] : sd t3, 56(tp) -- Store: [0x80002248]:0x0000000000000001




Last Coverpoint : ['rs1 : x7', 'rd : x16', 'rs1_w1_val == -1073741825', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000444]:KABSW a6, t2
	-[0x80000448]:csrrs t2, vxsat, zero
	-[0x8000044c]:sd a6, 64(tp)
Current Store : [0x80000450] : sd t2, 72(tp) -- Store: [0x80002258]:0x0000000000000001




Last Coverpoint : ['rs1 : x31', 'rd : x28', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80000460]:KABSW t3, t6
	-[0x80000464]:csrrs t6, vxsat, zero
	-[0x80000468]:sd t3, 80(tp)
Current Store : [0x8000046c] : sd t6, 88(tp) -- Store: [0x80002268]:0x0000000000000001




Last Coverpoint : ['rs1 : x1', 'rd : x14', 'rs1_w1_val == -268435457', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000484]:KABSW a4, ra
	-[0x80000488]:csrrs ra, vxsat, zero
	-[0x8000048c]:sd a4, 96(tp)
Current Store : [0x80000490] : sd ra, 104(tp) -- Store: [0x80002278]:0x0000000000000001




Last Coverpoint : ['rs1 : x3', 'rd : x18', 'rs1_w1_val == -134217729', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800004a8]:KABSW s2, gp
	-[0x800004ac]:csrrs gp, vxsat, zero
	-[0x800004b0]:sd s2, 112(tp)
Current Store : [0x800004b4] : sd gp, 120(tp) -- Store: [0x80002288]:0x0000000000000001




Last Coverpoint : ['rs1 : x19', 'rd : x22', 'rs1_w1_val == -67108865', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x800004c8]:KABSW s6, s3
	-[0x800004cc]:csrrs s3, vxsat, zero
	-[0x800004d0]:sd s6, 128(tp)
Current Store : [0x800004d4] : sd s3, 136(tp) -- Store: [0x80002298]:0x0000000000000001




Last Coverpoint : ['rs1 : x13', 'rd : x19', 'rs1_w1_val == -33554433', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800004e8]:KABSW s3, a3
	-[0x800004ec]:csrrs a3, vxsat, zero
	-[0x800004f0]:sd s3, 144(tp)
Current Store : [0x800004f4] : sd a3, 152(tp) -- Store: [0x800022a8]:0x0000000000000001




Last Coverpoint : ['rs1 : x26', 'rd : x1', 'rs1_w1_val == -16777217', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x8000050c]:KABSW ra, s10
	-[0x80000510]:csrrs s10, vxsat, zero
	-[0x80000514]:sd ra, 160(tp)
Current Store : [0x80000518] : sd s10, 168(tp) -- Store: [0x800022b8]:0x0000000000000001




Last Coverpoint : ['rs1 : x29', 'rd : x5', 'rs1_w1_val == -8388609', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x8000052c]:KABSW t0, t4
	-[0x80000530]:csrrs t4, vxsat, zero
	-[0x80000534]:sd t0, 176(tp)
Current Store : [0x80000538] : sd t4, 184(tp) -- Store: [0x800022c8]:0x0000000000000001




Last Coverpoint : ['rs1 : x0', 'rd : x27', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000548]:KABSW s11, zero
	-[0x8000054c]:csrrs zero, vxsat, zero
	-[0x80000550]:sd s11, 192(tp)
Current Store : [0x80000554] : sd zero, 200(tp) -- Store: [0x800022d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x2', 'rd : x3', 'rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x80000564]:KABSW gp, sp
	-[0x80000568]:csrrs sp, vxsat, zero
	-[0x8000056c]:sd gp, 208(tp)
Current Store : [0x80000570] : sd sp, 216(tp) -- Store: [0x800022e8]:0x0000000000000001




Last Coverpoint : ['rs1 : x27', 'rd : x21', 'rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x80000588]:KABSW s5, s11
	-[0x8000058c]:csrrs s11, vxsat, zero
	-[0x80000590]:sd s5, 224(tp)
Current Store : [0x80000594] : sd s11, 232(tp) -- Store: [0x800022f8]:0x0000000000000001




Last Coverpoint : ['rs1 : x15', 'rd : x17', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x800005a4]:KABSW a7, a5
	-[0x800005a8]:csrrs a5, vxsat, zero
	-[0x800005ac]:sd a7, 240(tp)
Current Store : [0x800005b0] : sd a5, 248(tp) -- Store: [0x80002308]:0x0000000000000001




Last Coverpoint : ['rs1 : x5', 'rd : x0', 'rs1_w1_val == -262145', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x800005c4]:KABSW zero, t0
	-[0x800005c8]:csrrs t0, vxsat, zero
	-[0x800005cc]:sd zero, 256(tp)
Current Store : [0x800005d0] : sd t0, 264(tp) -- Store: [0x80002318]:0x0000000000000001




Last Coverpoint : ['rs1 : x17', 'rd : x30', 'rs1_w1_val == -131073', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800005e0]:KABSW t5, a7
	-[0x800005e4]:csrrs a7, vxsat, zero
	-[0x800005e8]:sd t5, 272(tp)
Current Store : [0x800005ec] : sd a7, 280(tp) -- Store: [0x80002328]:0x0000000000000001




Last Coverpoint : ['rs1 : x16', 'rd : x2', 'rs1_w1_val == -65537', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000600]:KABSW sp, a6
	-[0x80000604]:csrrs a6, vxsat, zero
	-[0x80000608]:sd sp, 288(tp)
Current Store : [0x8000060c] : sd a6, 296(tp) -- Store: [0x80002338]:0x0000000000000001




Last Coverpoint : ['rs1 : x30', 'rd : x31', 'rs1_w1_val == -32769', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x8000061c]:KABSW t6, t5
	-[0x80000620]:csrrs t5, vxsat, zero
	-[0x80000624]:sd t6, 304(tp)
Current Store : [0x80000628] : sd t5, 312(tp) -- Store: [0x80002348]:0x0000000000000001




Last Coverpoint : ['rs1 : x14', 'rd : x7', 'rs1_w1_val == -16385', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000638]:KABSW t2, a4
	-[0x8000063c]:csrrs a4, vxsat, zero
	-[0x80000640]:sd t2, 320(tp)
Current Store : [0x80000644] : sd a4, 328(tp) -- Store: [0x80002358]:0x0000000000000001




Last Coverpoint : ['rs1 : x10', 'rd : x26', 'rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80000654]:KABSW s10, a0
	-[0x80000658]:csrrs a0, vxsat, zero
	-[0x8000065c]:sd s10, 336(tp)
Current Store : [0x80000660] : sd a0, 344(tp) -- Store: [0x80002368]:0x0000000000000001




Last Coverpoint : ['rs1 : x12', 'rd : x23', 'rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x80000670]:KABSW s7, a2
	-[0x80000674]:csrrs a2, vxsat, zero
	-[0x80000678]:sd s7, 352(tp)
Current Store : [0x8000067c] : sd a2, 360(tp) -- Store: [0x80002378]:0x0000000000000001




Last Coverpoint : ['rs1 : x6', 'rd : x20', 'rs1_w1_val == -1025', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x8000068c]:KABSW s4, t1
	-[0x80000690]:csrrs t1, vxsat, zero
	-[0x80000694]:sd s4, 368(tp)
Current Store : [0x80000698] : sd t1, 376(tp) -- Store: [0x80002388]:0x0000000000000001




Last Coverpoint : ['rs1 : x9', 'rd : x8', 'rs1_w1_val == -513', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800006b0]:KABSW fp, s1
	-[0x800006b4]:csrrs s1, vxsat, zero
	-[0x800006b8]:sd fp, 0(ra)
Current Store : [0x800006bc] : sd s1, 8(ra) -- Store: [0x80002398]:0x0000000000000001




Last Coverpoint : ['rs1 : x21', 'rd : x24', 'rs1_w1_val == -257', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800006cc]:KABSW s8, s5
	-[0x800006d0]:csrrs s5, vxsat, zero
	-[0x800006d4]:sd s8, 16(ra)
Current Store : [0x800006d8] : sd s5, 24(ra) -- Store: [0x800023a8]:0x0000000000000001




Last Coverpoint : ['rs1 : x25', 'rd : x13', 'rs1_w1_val == -129', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800006e8]:KABSW a3, s9
	-[0x800006ec]:csrrs s9, vxsat, zero
	-[0x800006f0]:sd a3, 32(ra)
Current Store : [0x800006f4] : sd s9, 40(ra) -- Store: [0x800023b8]:0x0000000000000001




Last Coverpoint : ['rs1 : x4', 'rd : x10', 'rs1_w1_val == -65', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000700]:KABSW a0, tp
	-[0x80000704]:csrrs tp, vxsat, zero
	-[0x80000708]:sd a0, 48(ra)
Current Store : [0x8000070c] : sd tp, 56(ra) -- Store: [0x800023c8]:0x0000000000000001




Last Coverpoint : ['rs1 : x23', 'rd : x12', 'rs1_w1_val == -33', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000720]:KABSW a2, s7
	-[0x80000724]:csrrs s7, vxsat, zero
	-[0x80000728]:sd a2, 64(ra)
Current Store : [0x8000072c] : sd s7, 72(ra) -- Store: [0x800023d8]:0x0000000000000001




Last Coverpoint : ['rs1 : x24', 'rd : x11', 'rs1_w1_val == -17', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x8000073c]:KABSW a1, s8
	-[0x80000740]:csrrs s8, vxsat, zero
	-[0x80000744]:sd a1, 80(ra)
Current Store : [0x80000748] : sd s8, 88(ra) -- Store: [0x800023e8]:0x0000000000000001




Last Coverpoint : ['rs1 : x18', 'rd : x4', 'rs1_w1_val == -9', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000758]:KABSW tp, s2
	-[0x8000075c]:csrrs s2, vxsat, zero
	-[0x80000760]:sd tp, 96(ra)
Current Store : [0x80000764] : sd s2, 104(ra) -- Store: [0x800023f8]:0x0000000000000001




Last Coverpoint : ['rs1 : x20', 'rd : x25', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x80000770]:KABSW s9, s4
	-[0x80000774]:csrrs s4, vxsat, zero
	-[0x80000778]:sd s9, 112(ra)
Current Store : [0x8000077c] : sd s4, 120(ra) -- Store: [0x80002408]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == -3', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x8000078c]:KABSW t6, t5
	-[0x80000790]:csrrs t5, vxsat, zero
	-[0x80000794]:sd t6, 128(ra)
Current Store : [0x80000798] : sd t5, 136(ra) -- Store: [0x80002418]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == -2', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800007a8]:KABSW t6, t5
	-[0x800007ac]:csrrs t5, vxsat, zero
	-[0x800007b0]:sd t6, 144(ra)
Current Store : [0x800007b4] : sd t5, 152(ra) -- Store: [0x80002428]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x800007c8]:KABSW t6, t5
	-[0x800007cc]:csrrs t5, vxsat, zero
	-[0x800007d0]:sd t6, 160(ra)
Current Store : [0x800007d4] : sd t5, 168(ra) -- Store: [0x80002438]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800007e8]:KABSW t6, t5
	-[0x800007ec]:csrrs t5, vxsat, zero
	-[0x800007f0]:sd t6, 176(ra)
Current Store : [0x800007f4] : sd t5, 184(ra) -- Store: [0x80002448]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80000808]:KABSW t6, t5
	-[0x8000080c]:csrrs t5, vxsat, zero
	-[0x80000810]:sd t6, 192(ra)
Current Store : [0x80000814] : sd t5, 200(ra) -- Store: [0x80002458]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 268435456', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000828]:KABSW t6, t5
	-[0x8000082c]:csrrs t5, vxsat, zero
	-[0x80000830]:sd t6, 208(ra)
Current Store : [0x80000834] : sd t5, 216(ra) -- Store: [0x80002468]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80000844]:KABSW t6, t5
	-[0x80000848]:csrrs t5, vxsat, zero
	-[0x8000084c]:sd t6, 224(ra)
Current Store : [0x80000850] : sd t5, 232(ra) -- Store: [0x80002478]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 67108864', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000868]:KABSW t6, t5
	-[0x8000086c]:csrrs t5, vxsat, zero
	-[0x80000870]:sd t6, 240(ra)
Current Store : [0x80000874] : sd t5, 248(ra) -- Store: [0x80002488]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80000884]:KABSW t6, t5
	-[0x80000888]:csrrs t5, vxsat, zero
	-[0x8000088c]:sd t6, 256(ra)
Current Store : [0x80000890] : sd t5, 264(ra) -- Store: [0x80002498]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 16777216', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800008ac]:KABSW t6, t5
	-[0x800008b0]:csrrs t5, vxsat, zero
	-[0x800008b4]:sd t6, 272(ra)
Current Store : [0x800008b8] : sd t5, 280(ra) -- Store: [0x800024a8]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 8388608', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800008cc]:KABSW t6, t5
	-[0x800008d0]:csrrs t5, vxsat, zero
	-[0x800008d4]:sd t6, 288(ra)
Current Store : [0x800008d8] : sd t5, 296(ra) -- Store: [0x800024b8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800008ec]:KABSW t6, t5
	-[0x800008f0]:csrrs t5, vxsat, zero
	-[0x800008f4]:sd t6, 304(ra)
Current Store : [0x800008f8] : sd t5, 312(ra) -- Store: [0x800024c8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000908]:KABSW t6, t5
	-[0x8000090c]:csrrs t5, vxsat, zero
	-[0x80000910]:sd t6, 320(ra)
Current Store : [0x80000914] : sd t5, 328(ra) -- Store: [0x800024d8]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 256', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000924]:KABSW t6, t5
	-[0x80000928]:csrrs t5, vxsat, zero
	-[0x8000092c]:sd t6, 336(ra)
Current Store : [0x80000930] : sd t5, 344(ra) -- Store: [0x800024e8]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 4', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000940]:KABSW t6, t5
	-[0x80000944]:csrrs t5, vxsat, zero
	-[0x80000948]:sd t6, 352(ra)
Current Store : [0x8000094c] : sd t5, 360(ra) -- Store: [0x800024f8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000960]:KABSW t6, t5
	-[0x80000964]:csrrs t5, vxsat, zero
	-[0x80000968]:sd t6, 368(ra)
Current Store : [0x8000096c] : sd t5, 376(ra) -- Store: [0x80002508]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000980]:KABSW t6, t5
	-[0x80000984]:csrrs t5, vxsat, zero
	-[0x80000988]:sd t6, 384(ra)
Current Store : [0x8000098c] : sd t5, 392(ra) -- Store: [0x80002518]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 4194304', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800009a8]:KABSW t6, t5
	-[0x800009ac]:csrrs t5, vxsat, zero
	-[0x800009b0]:sd t6, 400(ra)
Current Store : [0x800009b4] : sd t5, 408(ra) -- Store: [0x80002528]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x800009c8]:KABSW t6, t5
	-[0x800009cc]:csrrs t5, vxsat, zero
	-[0x800009d0]:sd t6, 416(ra)
Current Store : [0x800009d4] : sd t5, 424(ra) -- Store: [0x80002538]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 1048576', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x800009e8]:KABSW t6, t5
	-[0x800009ec]:csrrs t5, vxsat, zero
	-[0x800009f0]:sd t6, 432(ra)
Current Store : [0x800009f4] : sd t5, 440(ra) -- Store: [0x80002548]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000a04]:KABSW t6, t5
	-[0x80000a08]:csrrs t5, vxsat, zero
	-[0x80000a0c]:sd t6, 448(ra)
Current Store : [0x80000a10] : sd t5, 456(ra) -- Store: [0x80002558]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 262144', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000a2c]:KABSW t6, t5
	-[0x80000a30]:csrrs t5, vxsat, zero
	-[0x80000a34]:sd t6, 464(ra)
Current Store : [0x80000a38] : sd t5, 472(ra) -- Store: [0x80002568]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 131072', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000a4c]:KABSW t6, t5
	-[0x80000a50]:csrrs t5, vxsat, zero
	-[0x80000a54]:sd t6, 480(ra)
Current Store : [0x80000a58] : sd t5, 488(ra) -- Store: [0x80002578]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80000a68]:KABSW t6, t5
	-[0x80000a6c]:csrrs t5, vxsat, zero
	-[0x80000a70]:sd t6, 496(ra)
Current Store : [0x80000a74] : sd t5, 504(ra) -- Store: [0x80002588]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80000a90]:KABSW t6, t5
	-[0x80000a94]:csrrs t5, vxsat, zero
	-[0x80000a98]:sd t6, 512(ra)
Current Store : [0x80000a9c] : sd t5, 520(ra) -- Store: [0x80002598]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 16384', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000ab0]:KABSW t6, t5
	-[0x80000ab4]:csrrs t5, vxsat, zero
	-[0x80000ab8]:sd t6, 528(ra)
Current Store : [0x80000abc] : sd t5, 536(ra) -- Store: [0x800025a8]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80000ad0]:KABSW t6, t5
	-[0x80000ad4]:csrrs t5, vxsat, zero
	-[0x80000ad8]:sd t6, 544(ra)
Current Store : [0x80000adc] : sd t5, 552(ra) -- Store: [0x800025b8]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80000af0]:KABSW t6, t5
	-[0x80000af4]:csrrs t5, vxsat, zero
	-[0x80000af8]:sd t6, 560(ra)
Current Store : [0x80000afc] : sd t5, 568(ra) -- Store: [0x800025c8]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x80000b10]:KABSW t6, t5
	-[0x80000b14]:csrrs t5, vxsat, zero
	-[0x80000b18]:sd t6, 576(ra)
Current Store : [0x80000b1c] : sd t5, 584(ra) -- Store: [0x800025d8]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 1024', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000b2c]:KABSW t6, t5
	-[0x80000b30]:csrrs t5, vxsat, zero
	-[0x80000b34]:sd t6, 592(ra)
Current Store : [0x80000b38] : sd t5, 600(ra) -- Store: [0x800025e8]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80000b4c]:KABSW t6, t5
	-[0x80000b50]:csrrs t5, vxsat, zero
	-[0x80000b54]:sd t6, 608(ra)
Current Store : [0x80000b58] : sd t5, 616(ra) -- Store: [0x800025f8]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80000b68]:KABSW t6, t5
	-[0x80000b6c]:csrrs t5, vxsat, zero
	-[0x80000b70]:sd t6, 624(ra)
Current Store : [0x80000b74] : sd t5, 632(ra) -- Store: [0x80002608]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000b88]:KABSW t6, t5
	-[0x80000b8c]:csrrs t5, vxsat, zero
	-[0x80000b90]:sd t6, 640(ra)
Current Store : [0x80000b94] : sd t5, 648(ra) -- Store: [0x80002618]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 32', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000ba8]:KABSW t6, t5
	-[0x80000bac]:csrrs t5, vxsat, zero
	-[0x80000bb0]:sd t6, 656(ra)
Current Store : [0x80000bb4] : sd t5, 664(ra) -- Store: [0x80002628]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80000bc0]:KABSW t6, t5
	-[0x80000bc4]:csrrs t5, vxsat, zero
	-[0x80000bc8]:sd t6, 672(ra)
Current Store : [0x80000bcc] : sd t5, 680(ra) -- Store: [0x80002638]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80000bdc]:KABSW t6, t5
	-[0x80000be0]:csrrs t5, vxsat, zero
	-[0x80000be4]:sd t6, 688(ra)
Current Store : [0x80000be8] : sd t5, 696(ra) -- Store: [0x80002648]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000bf0]:KABSW t6, t5
	-[0x80000bf4]:csrrs t5, vxsat, zero
	-[0x80000bf8]:sd t6, 704(ra)
Current Store : [0x80000bfc] : sd t5, 712(ra) -- Store: [0x80002658]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80000c08]:KABSW t6, t5
	-[0x80000c0c]:csrrs t5, vxsat, zero
	-[0x80000c10]:sd t6, 720(ra)
Current Store : [0x80000c14] : sd t5, 728(ra) -- Store: [0x80002668]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000c30]:KABSW t6, t5
	-[0x80000c34]:csrrs t5, vxsat, zero
	-[0x80000c38]:sd t6, 736(ra)
Current Store : [0x80000c3c] : sd t5, 744(ra) -- Store: [0x80002678]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 16', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000c4c]:KABSW t6, t5
	-[0x80000c50]:csrrs t5, vxsat, zero
	-[0x80000c54]:sd t6, 752(ra)
Current Store : [0x80000c58] : sd t5, 760(ra) -- Store: [0x80002688]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000c6c]:KABSW t6, t5
	-[0x80000c70]:csrrs t5, vxsat, zero
	-[0x80000c74]:sd t6, 768(ra)
Current Store : [0x80000c78] : sd t5, 776(ra) -- Store: [0x80002698]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000c90]:KABSW t6, t5
	-[0x80000c94]:csrrs t5, vxsat, zero
	-[0x80000c98]:sd t6, 784(ra)
Current Store : [0x80000c9c] : sd t5, 792(ra) -- Store: [0x800026a8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000cb0]:KABSW t6, t5
	-[0x80000cb4]:csrrs t5, vxsat, zero
	-[0x80000cb8]:sd t6, 800(ra)
Current Store : [0x80000cbc] : sd t5, 808(ra) -- Store: [0x800026b8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000cd0]:KABSW t6, t5
	-[0x80000cd4]:csrrs t5, vxsat, zero
	-[0x80000cd8]:sd t6, 816(ra)
Current Store : [0x80000cdc] : sd t5, 824(ra) -- Store: [0x800026c8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000cf8]:KABSW t6, t5
	-[0x80000cfc]:csrrs t5, vxsat, zero
	-[0x80000d00]:sd t6, 832(ra)
Current Store : [0x80000d04] : sd t5, 840(ra) -- Store: [0x800026d8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80000d10]:KABSW t6, t5
	-[0x80000d14]:csrrs t5, vxsat, zero
	-[0x80000d18]:sd t6, 848(ra)
Current Store : [0x80000d1c] : sd t5, 856(ra) -- Store: [0x800026e8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000d38]:KABSW t6, t5
	-[0x80000d3c]:csrrs t5, vxsat, zero
	-[0x80000d40]:sd t6, 864(ra)
Current Store : [0x80000d44] : sd t5, 872(ra) -- Store: [0x800026f8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000d4c]:KABSW t6, t5
	-[0x80000d50]:csrrs t5, vxsat, zero
	-[0x80000d54]:sd t6, 880(ra)
Current Store : [0x80000d58] : sd t5, 888(ra) -- Store: [0x80002708]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000d68]:KABSW t6, t5
	-[0x80000d6c]:csrrs t5, vxsat, zero
	-[0x80000d70]:sd t6, 896(ra)
Current Store : [0x80000d74] : sd t5, 904(ra) -- Store: [0x80002718]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000d84]:KABSW t6, t5
	-[0x80000d88]:csrrs t5, vxsat, zero
	-[0x80000d8c]:sd t6, 912(ra)
Current Store : [0x80000d90] : sd t5, 920(ra) -- Store: [0x80002728]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000da0]:KABSW t6, t5
	-[0x80000da4]:csrrs t5, vxsat, zero
	-[0x80000da8]:sd t6, 928(ra)
Current Store : [0x80000dac] : sd t5, 936(ra) -- Store: [0x80002738]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000dbc]:KABSW t6, t5
	-[0x80000dc0]:csrrs t5, vxsat, zero
	-[0x80000dc4]:sd t6, 944(ra)
Current Store : [0x80000dc8] : sd t5, 952(ra) -- Store: [0x80002748]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000dd4]:KABSW t6, t5
	-[0x80000dd8]:csrrs t5, vxsat, zero
	-[0x80000ddc]:sd t6, 960(ra)
Current Store : [0x80000de0] : sd t5, 968(ra) -- Store: [0x80002758]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80000df0]:KABSW t6, t5
	-[0x80000df4]:csrrs t5, vxsat, zero
	-[0x80000df8]:sd t6, 976(ra)
Current Store : [0x80000dfc] : sd t5, 984(ra) -- Store: [0x80002768]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000e0c]:KABSW t6, t5
	-[0x80000e10]:csrrs t5, vxsat, zero
	-[0x80000e14]:sd t6, 992(ra)
Current Store : [0x80000e18] : sd t5, 1000(ra) -- Store: [0x80002778]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000e28]:KABSW t6, t5
	-[0x80000e2c]:csrrs t5, vxsat, zero
	-[0x80000e30]:sd t6, 1008(ra)
Current Store : [0x80000e34] : sd t5, 1016(ra) -- Store: [0x80002788]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000e44]:KABSW t6, t5
	-[0x80000e48]:csrrs t5, vxsat, zero
	-[0x80000e4c]:sd t6, 1024(ra)
Current Store : [0x80000e50] : sd t5, 1032(ra) -- Store: [0x80002798]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000e68]:KABSW t6, t5
	-[0x80000e6c]:csrrs t5, vxsat, zero
	-[0x80000e70]:sd t6, 1040(ra)
Current Store : [0x80000e74] : sd t5, 1048(ra) -- Store: [0x800027a8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000e84]:KABSW t6, t5
	-[0x80000e88]:csrrs t5, vxsat, zero
	-[0x80000e8c]:sd t6, 1056(ra)
Current Store : [0x80000e90] : sd t5, 1064(ra) -- Store: [0x800027b8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000ea0]:KABSW t6, t5
	-[0x80000ea4]:csrrs t5, vxsat, zero
	-[0x80000ea8]:sd t6, 1072(ra)
Current Store : [0x80000eac] : sd t5, 1080(ra) -- Store: [0x800027c8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000ebc]:KABSW t6, t5
	-[0x80000ec0]:csrrs t5, vxsat, zero
	-[0x80000ec4]:sd t6, 1088(ra)
Current Store : [0x80000ec8] : sd t5, 1096(ra) -- Store: [0x800027d8]:0x0000000000000001




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000ed8]:KABSW t6, t5
	-[0x80000edc]:csrrs t5, vxsat, zero
	-[0x80000ee0]:sd t6, 1104(ra)
Current Store : [0x80000ee4] : sd t5, 1112(ra) -- Store: [0x800027e8]:0x0000000000000001




Last Coverpoint : ['rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80000ef4]:KABSW t6, t5
	-[0x80000ef8]:csrrs t5, vxsat, zero
	-[0x80000efc]:sd t6, 1120(ra)
Current Store : [0x80000f00] : sd t5, 1128(ra) -- Store: [0x800027f8]:0x0000000000000001





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

|s.no|            signature             |                                                 coverpoints                                                 |                                                   code                                                    |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000000007FFFFFFF|- opcode : kabsw<br> - rs1 : x8<br> - rd : x15<br> - rs1_w0_val == -2147483648<br> - rs1_w1_val == -8193<br> |[0x800003b0]:KABSW a5, fp<br> [0x800003b4]:csrrs fp, vxsat, zero<br> [0x800003b8]:sd a5, 0(tp)<br>         |
|   2|[0x80002220]<br>0x0000000000800001|- rs1 : x11<br> - rd : x9<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -8388609<br>                   |[0x800003d8]:KABSW s1, a1<br> [0x800003dc]:csrrs a1, vxsat, zero<br> [0x800003e0]:sd s1, 16(tp)<br>        |
|   3|[0x80002230]<br>0x0000000010000000|- rs1 : x22<br> - rd : x6<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == 268435456<br>                   |[0x800003fc]:KABSW t1, s6<br> [0x80000400]:csrrs s6, vxsat, zero<br> [0x80000404]:sd t1, 32(tp)<br>        |
|   4|[0x80002240]<br>0x0000000000004000|- rs1 : x28<br> - rd : x29<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 16384<br>                      |[0x80000420]:KABSW t4, t3<br> [0x80000424]:csrrs t3, vxsat, zero<br> [0x80000428]:sd t4, 48(tp)<br>        |
|   5|[0x80002250]<br>0x0000000000002000|- rs1 : x7<br> - rd : x16<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == 8192<br>                       |[0x80000444]:KABSW a6, t2<br> [0x80000448]:csrrs t2, vxsat, zero<br> [0x8000044c]:sd a6, 64(tp)<br>        |
|   6|[0x80002260]<br>0x0000000000000008|- rs1 : x31<br> - rd : x28<br> - rs1_w1_val == -536870913<br>                                                |[0x80000460]:KABSW t3, t6<br> [0x80000464]:csrrs t6, vxsat, zero<br> [0x80000468]:sd t3, 80(tp)<br>        |
|   7|[0x80002270]<br>0x0000000000100000|- rs1 : x1<br> - rd : x14<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == 1048576<br>                     |[0x80000484]:KABSW a4, ra<br> [0x80000488]:csrrs ra, vxsat, zero<br> [0x8000048c]:sd a4, 96(tp)<br>        |
|   8|[0x80002280]<br>0x0000000000004001|- rs1 : x3<br> - rd : x18<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -16385<br>                      |[0x800004a8]:KABSW s2, gp<br> [0x800004ac]:csrrs gp, vxsat, zero<br> [0x800004b0]:sd s2, 112(tp)<br>       |
|   9|[0x80002290]<br>0x0000000000000400|- rs1 : x19<br> - rd : x22<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == 1024<br>                        |[0x800004c8]:KABSW s6, s3<br> [0x800004cc]:csrrs s3, vxsat, zero<br> [0x800004d0]:sd s6, 128(tp)<br>       |
|  10|[0x800022a0]<br>0x0000000000800000|- rs1 : x13<br> - rd : x19<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 8388608<br>                     |[0x800004e8]:KABSW s3, a3<br> [0x800004ec]:csrrs a3, vxsat, zero<br> [0x800004f0]:sd s3, 144(tp)<br>       |
|  11|[0x800022b0]<br>0x0000000000010001|- rs1 : x26<br> - rd : x1<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == -65537<br>                       |[0x8000050c]:KABSW ra, s10<br> [0x80000510]:csrrs s10, vxsat, zero<br> [0x80000514]:sd ra, 160(tp)<br>     |
|  12|[0x800022c0]<br>0x0000000020000001|- rs1 : x29<br> - rd : x5<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -536870913<br>                    |[0x8000052c]:KABSW t0, t4<br> [0x80000530]:csrrs t4, vxsat, zero<br> [0x80000534]:sd t0, 176(tp)<br>       |
|  13|[0x800022d0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x27<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                    |[0x80000548]:KABSW s11, zero<br> [0x8000054c]:csrrs zero, vxsat, zero<br> [0x80000550]:sd s11, 192(tp)<br> |
|  14|[0x800022e0]<br>0x000000007FFFFFFF|- rs1 : x2<br> - rd : x3<br> - rs1_w1_val == -2097153<br>                                                    |[0x80000564]:KABSW gp, sp<br> [0x80000568]:csrrs sp, vxsat, zero<br> [0x8000056c]:sd gp, 208(tp)<br>       |
|  15|[0x800022f0]<br>0x0000000000100000|- rs1 : x27<br> - rd : x21<br> - rs1_w1_val == -1048577<br>                                                  |[0x80000588]:KABSW s5, s11<br> [0x8000058c]:csrrs s11, vxsat, zero<br> [0x80000590]:sd s5, 224(tp)<br>     |
|  16|[0x80002300]<br>0x0000000010000000|- rs1 : x15<br> - rd : x17<br> - rs1_w1_val == -524289<br>                                                   |[0x800005a4]:KABSW a7, a5<br> [0x800005a8]:csrrs a5, vxsat, zero<br> [0x800005ac]:sd a7, 240(tp)<br>       |
|  17|[0x80002310]<br>0x0000000000000000|- rs1 : x5<br> - rd : x0<br> - rs1_w1_val == -262145<br> - rs1_w0_val == 512<br>                             |[0x800005c4]:KABSW zero, t0<br> [0x800005c8]:csrrs t0, vxsat, zero<br> [0x800005cc]:sd zero, 256(tp)<br>   |
|  18|[0x80002320]<br>0x0000000020000000|- rs1 : x17<br> - rd : x30<br> - rs1_w1_val == -131073<br> - rs1_w0_val == 536870912<br>                     |[0x800005e0]:KABSW t5, a7<br> [0x800005e4]:csrrs a7, vxsat, zero<br> [0x800005e8]:sd t5, 272(tp)<br>       |
|  19|[0x80002330]<br>0x0000000008000001|- rs1 : x16<br> - rd : x2<br> - rs1_w1_val == -65537<br> - rs1_w0_val == -134217729<br>                      |[0x80000600]:KABSW sp, a6<br> [0x80000604]:csrrs a6, vxsat, zero<br> [0x80000608]:sd sp, 288(tp)<br>       |
|  20|[0x80002340]<br>0x0000000000000081|- rs1 : x30<br> - rd : x31<br> - rs1_w1_val == -32769<br> - rs1_w0_val == -129<br>                           |[0x8000061c]:KABSW t6, t5<br> [0x80000620]:csrrs t5, vxsat, zero<br> [0x80000624]:sd t6, 304(tp)<br>       |
|  21|[0x80002350]<br>0x0000000002000000|- rs1 : x14<br> - rd : x7<br> - rs1_w1_val == -16385<br> - rs1_w0_val == 33554432<br>                        |[0x80000638]:KABSW t2, a4<br> [0x8000063c]:csrrs a4, vxsat, zero<br> [0x80000640]:sd t2, 320(tp)<br>       |
|  22|[0x80002360]<br>0x0000000000000008|- rs1 : x10<br> - rd : x26<br> - rs1_w1_val == -4097<br>                                                     |[0x80000654]:KABSW s10, a0<br> [0x80000658]:csrrs a0, vxsat, zero<br> [0x8000065c]:sd s10, 336(tp)<br>     |
|  23|[0x80002370]<br>0x000000000000000A|- rs1 : x12<br> - rd : x23<br> - rs1_w1_val == -2049<br>                                                     |[0x80000670]:KABSW s7, a2<br> [0x80000674]:csrrs a2, vxsat, zero<br> [0x80000678]:sd s7, 352(tp)<br>       |
|  24|[0x80002380]<br>0x0000000000000041|- rs1 : x6<br> - rd : x20<br> - rs1_w1_val == -1025<br> - rs1_w0_val == -65<br>                              |[0x8000068c]:KABSW s4, t1<br> [0x80000690]:csrrs t1, vxsat, zero<br> [0x80000694]:sd s4, 368(tp)<br>       |
|  25|[0x80002390]<br>0x0000000000400000|- rs1 : x9<br> - rd : x8<br> - rs1_w1_val == -513<br> - rs1_w0_val == 4194304<br>                            |[0x800006b0]:KABSW fp, s1<br> [0x800006b4]:csrrs s1, vxsat, zero<br> [0x800006b8]:sd fp, 0(ra)<br>         |
|  26|[0x800023a0]<br>0x0000000000080000|- rs1 : x21<br> - rd : x24<br> - rs1_w1_val == -257<br> - rs1_w0_val == 524288<br>                           |[0x800006cc]:KABSW s8, s5<br> [0x800006d0]:csrrs s5, vxsat, zero<br> [0x800006d4]:sd s8, 16(ra)<br>        |
|  27|[0x800023b0]<br>0x0000000000000011|- rs1 : x25<br> - rd : x13<br> - rs1_w1_val == -129<br> - rs1_w0_val == -17<br>                              |[0x800006e8]:KABSW a3, s9<br> [0x800006ec]:csrrs s9, vxsat, zero<br> [0x800006f0]:sd a3, 32(ra)<br>        |
|  28|[0x800023c0]<br>0x0000000040000000|- rs1 : x4<br> - rd : x10<br> - rs1_w1_val == -65<br> - rs1_w0_val == 1073741824<br>                         |[0x80000700]:KABSW a0, tp<br> [0x80000704]:csrrs tp, vxsat, zero<br> [0x80000708]:sd a0, 48(ra)<br>        |
|  29|[0x800023d0]<br>0x0000000000000800|- rs1 : x23<br> - rd : x12<br> - rs1_w1_val == -33<br> - rs1_w0_val == 2048<br>                              |[0x80000720]:KABSW a2, s7<br> [0x80000724]:csrrs s7, vxsat, zero<br> [0x80000728]:sd a2, 64(ra)<br>        |
|  30|[0x800023e0]<br>0x0000000000200000|- rs1 : x24<br> - rd : x11<br> - rs1_w1_val == -17<br> - rs1_w0_val == 2097152<br>                           |[0x8000073c]:KABSW a1, s8<br> [0x80000740]:csrrs s8, vxsat, zero<br> [0x80000744]:sd a1, 80(ra)<br>        |
|  31|[0x800023f0]<br>0x0000000000000008|- rs1 : x18<br> - rd : x4<br> - rs1_w1_val == -9<br> - rs1_w0_val == 8<br>                                   |[0x80000758]:KABSW tp, s2<br> [0x8000075c]:csrrs s2, vxsat, zero<br> [0x80000760]:sd tp, 96(ra)<br>        |
|  32|[0x80002400]<br>0x0000000000000000|- rs1 : x20<br> - rd : x25<br> - rs1_w1_val == -5<br>                                                        |[0x80000770]:KABSW s9, s4<br> [0x80000774]:csrrs s4, vxsat, zero<br> [0x80000778]:sd s9, 112(ra)<br>       |
|  33|[0x80002410]<br>0x0000000000001000|- rs1_w1_val == -3<br> - rs1_w0_val == 4096<br>                                                              |[0x8000078c]:KABSW t6, t5<br> [0x80000790]:csrrs t5, vxsat, zero<br> [0x80000794]:sd t6, 128(ra)<br>       |
|  34|[0x80002420]<br>0x0000000040000001|- rs1_w1_val == -2<br> - rs1_w0_val == -1073741825<br>                                                       |[0x800007a8]:KABSW t6, t5<br> [0x800007ac]:csrrs t5, vxsat, zero<br> [0x800007b0]:sd t6, 144(ra)<br>       |
|  35|[0x80002430]<br>0x0000000000004000|- rs1_w1_val == -2147483648<br>                                                                              |[0x800007c8]:KABSW t6, t5<br> [0x800007cc]:csrrs t5, vxsat, zero<br> [0x800007d0]:sd t6, 160(ra)<br>       |
|  36|[0x80002440]<br>0x0000000000400000|- rs1_w1_val == 1073741824<br>                                                                               |[0x800007e8]:KABSW t6, t5<br> [0x800007ec]:csrrs t5, vxsat, zero<br> [0x800007f0]:sd t6, 176(ra)<br>       |
|  37|[0x80002450]<br>0x000000000000000A|- rs1_w1_val == 536870912<br>                                                                                |[0x80000808]:KABSW t6, t5<br> [0x8000080c]:csrrs t5, vxsat, zero<br> [0x80000810]:sd t6, 192(ra)<br>       |
|  38|[0x80002460]<br>0x0000000000000005|- rs1_w1_val == 268435456<br> - rs1_w0_val == -5<br>                                                         |[0x80000828]:KABSW t6, t5<br> [0x8000082c]:csrrs t5, vxsat, zero<br> [0x80000830]:sd t6, 208(ra)<br>       |
|  39|[0x80002470]<br>0x0000000000000007|- rs1_w1_val == 134217728<br>                                                                                |[0x80000844]:KABSW t6, t5<br> [0x80000848]:csrrs t5, vxsat, zero<br> [0x8000084c]:sd t6, 224(ra)<br>       |
|  40|[0x80002480]<br>0x0000000002000001|- rs1_w1_val == 67108864<br> - rs1_w0_val == -33554433<br>                                                   |[0x80000868]:KABSW t6, t5<br> [0x8000086c]:csrrs t5, vxsat, zero<br> [0x80000870]:sd t6, 240(ra)<br>       |
|  41|[0x80002490]<br>0x0000000000000200|- rs1_w1_val == 33554432<br>                                                                                 |[0x80000884]:KABSW t6, t5<br> [0x80000888]:csrrs t5, vxsat, zero<br> [0x8000088c]:sd t6, 256(ra)<br>       |
|  42|[0x800024a0]<br>0x0000000000020001|- rs1_w1_val == 16777216<br> - rs1_w0_val == -131073<br>                                                     |[0x800008ac]:KABSW t6, t5<br> [0x800008b0]:csrrs t5, vxsat, zero<br> [0x800008b4]:sd t6, 272(ra)<br>       |
|  43|[0x800024b0]<br>0x0000000010000001|- rs1_w1_val == 8388608<br> - rs1_w0_val == -268435457<br>                                                   |[0x800008cc]:KABSW t6, t5<br> [0x800008d0]:csrrs t5, vxsat, zero<br> [0x800008d4]:sd t6, 288(ra)<br>       |
|  44|[0x800024c0]<br>0x0000000000000020|- rs1_w0_val == 32<br>                                                                                       |[0x800008ec]:KABSW t6, t5<br> [0x800008f0]:csrrs t5, vxsat, zero<br> [0x800008f4]:sd t6, 304(ra)<br>       |
|  45|[0x800024d0]<br>0x0000000000000010|- rs1_w0_val == 16<br>                                                                                       |[0x80000908]:KABSW t6, t5<br> [0x8000090c]:csrrs t5, vxsat, zero<br> [0x80000910]:sd t6, 320(ra)<br>       |
|  46|[0x800024e0]<br>0x0000000000000004|- rs1_w1_val == 256<br> - rs1_w0_val == 4<br>                                                                |[0x80000924]:KABSW t6, t5<br> [0x80000928]:csrrs t5, vxsat, zero<br> [0x8000092c]:sd t6, 336(ra)<br>       |
|  47|[0x800024f0]<br>0x0000000000000002|- rs1_w1_val == 4<br> - rs1_w0_val == 2<br>                                                                  |[0x80000940]:KABSW t6, t5<br> [0x80000944]:csrrs t5, vxsat, zero<br> [0x80000948]:sd t6, 352(ra)<br>       |
|  48|[0x80002500]<br>0x0000000000000001|- rs1_w0_val == 1<br>                                                                                        |[0x80000960]:KABSW t6, t5<br> [0x80000964]:csrrs t5, vxsat, zero<br> [0x80000968]:sd t6, 368(ra)<br>       |
|  49|[0x80002510]<br>0x0000000000000001|- rs1_w0_val == -1<br>                                                                                       |[0x80000980]:KABSW t6, t5<br> [0x80000984]:csrrs t5, vxsat, zero<br> [0x80000988]:sd t6, 384(ra)<br>       |
|  50|[0x80002520]<br>0x0000000000100001|- rs1_w1_val == 4194304<br> - rs1_w0_val == -1048577<br>                                                     |[0x800009a8]:KABSW t6, t5<br> [0x800009ac]:csrrs t5, vxsat, zero<br> [0x800009b0]:sd t6, 400(ra)<br>       |
|  51|[0x80002530]<br>0x000000003FFFFFFF|- rs1_w1_val == 2097152<br>                                                                                  |[0x800009c8]:KABSW t6, t5<br> [0x800009cc]:csrrs t5, vxsat, zero<br> [0x800009d0]:sd t6, 416(ra)<br>       |
|  52|[0x80002540]<br>0x0000000000020000|- rs1_w1_val == 1048576<br> - rs1_w0_val == 131072<br>                                                       |[0x800009e8]:KABSW t6, t5<br> [0x800009ec]:csrrs t5, vxsat, zero<br> [0x800009f0]:sd t6, 432(ra)<br>       |
|  53|[0x80002550]<br>0x0000000000800000|- rs1_w1_val == 524288<br>                                                                                   |[0x80000a04]:KABSW t6, t5<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sd t6, 448(ra)<br>       |
|  54|[0x80002560]<br>0x0000000055555555|- rs1_w1_val == 262144<br> - rs1_w0_val == 1431655765<br>                                                    |[0x80000a2c]:KABSW t6, t5<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sd t6, 464(ra)<br>       |
|  55|[0x80002570]<br>0x0000000000010000|- rs1_w1_val == 131072<br> - rs1_w0_val == 65536<br>                                                         |[0x80000a4c]:KABSW t6, t5<br> [0x80000a50]:csrrs t5, vxsat, zero<br> [0x80000a54]:sd t6, 480(ra)<br>       |
|  56|[0x80002580]<br>0x0000000040000000|- rs1_w1_val == 65536<br>                                                                                    |[0x80000a68]:KABSW t6, t5<br> [0x80000a6c]:csrrs t5, vxsat, zero<br> [0x80000a70]:sd t6, 496(ra)<br>       |
|  57|[0x80002590]<br>0x0000000000010001|- rs1_w1_val == 32768<br>                                                                                    |[0x80000a90]:KABSW t6, t5<br> [0x80000a94]:csrrs t5, vxsat, zero<br> [0x80000a98]:sd t6, 512(ra)<br>       |
|  58|[0x800025a0]<br>0x0000000000080001|- rs1_w1_val == 16384<br> - rs1_w0_val == -524289<br>                                                        |[0x80000ab0]:KABSW t6, t5<br> [0x80000ab4]:csrrs t5, vxsat, zero<br> [0x80000ab8]:sd t6, 528(ra)<br>       |
|  59|[0x800025b0]<br>0x000000003FFFFFFF|- rs1_w1_val == 8192<br>                                                                                     |[0x80000ad0]:KABSW t6, t5<br> [0x80000ad4]:csrrs t5, vxsat, zero<br> [0x80000ad8]:sd t6, 544(ra)<br>       |
|  60|[0x800025c0]<br>0x0000000002000001|- rs1_w1_val == 4096<br>                                                                                     |[0x80000af0]:KABSW t6, t5<br> [0x80000af4]:csrrs t5, vxsat, zero<br> [0x80000af8]:sd t6, 560(ra)<br>       |
|  61|[0x800025d0]<br>0x0000000000100001|- rs1_w1_val == 2048<br>                                                                                     |[0x80000b10]:KABSW t6, t5<br> [0x80000b14]:csrrs t5, vxsat, zero<br> [0x80000b18]:sd t6, 576(ra)<br>       |
|  62|[0x800025e0]<br>0x0000000000000003|- rs1_w1_val == 1024<br> - rs1_w0_val == -3<br>                                                              |[0x80000b2c]:KABSW t6, t5<br> [0x80000b30]:csrrs t5, vxsat, zero<br> [0x80000b34]:sd t6, 592(ra)<br>       |
|  63|[0x800025f0]<br>0x0000000000004001|- rs1_w1_val == 512<br>                                                                                      |[0x80000b4c]:KABSW t6, t5<br> [0x80000b50]:csrrs t5, vxsat, zero<br> [0x80000b54]:sd t6, 608(ra)<br>       |
|  64|[0x80002600]<br>0x0000000040000001|- rs1_w1_val == 128<br>                                                                                      |[0x80000b68]:KABSW t6, t5<br> [0x80000b6c]:csrrs t5, vxsat, zero<br> [0x80000b70]:sd t6, 624(ra)<br>       |
|  65|[0x80002610]<br>0x0000000000100001|- rs1_w1_val == 64<br>                                                                                       |[0x80000b88]:KABSW t6, t5<br> [0x80000b8c]:csrrs t5, vxsat, zero<br> [0x80000b90]:sd t6, 640(ra)<br>       |
|  66|[0x80002620]<br>0x0000000000002001|- rs1_w1_val == 32<br> - rs1_w0_val == -8193<br>                                                             |[0x80000ba8]:KABSW t6, t5<br> [0x80000bac]:csrrs t5, vxsat, zero<br> [0x80000bb0]:sd t6, 656(ra)<br>       |
|  67|[0x80002630]<br>0x0000000020000000|- rs1_w1_val == 2<br>                                                                                        |[0x80000bc0]:KABSW t6, t5<br> [0x80000bc4]:csrrs t5, vxsat, zero<br> [0x80000bc8]:sd t6, 672(ra)<br>       |
|  68|[0x80002640]<br>0x0000000002000001|- rs1_w1_val == 1<br>                                                                                        |[0x80000bdc]:KABSW t6, t5<br> [0x80000be0]:csrrs t5, vxsat, zero<br> [0x80000be4]:sd t6, 688(ra)<br>       |
|  69|[0x80002650]<br>0x0000000000008000|- rs1_w0_val == 32768<br>                                                                                    |[0x80000bf0]:KABSW t6, t5<br> [0x80000bf4]:csrrs t5, vxsat, zero<br> [0x80000bf8]:sd t6, 704(ra)<br>       |
|  70|[0x80002660]<br>0x0000000000004001|- rs1_w1_val == -1<br>                                                                                       |[0x80000c08]:KABSW t6, t5<br> [0x80000c0c]:csrrs t5, vxsat, zero<br> [0x80000c10]:sd t6, 720(ra)<br>       |
|  71|[0x80002670]<br>0x0000000055555556|- rs1_w0_val == -1431655766<br>                                                                              |[0x80000c30]:KABSW t6, t5<br> [0x80000c34]:csrrs t5, vxsat, zero<br> [0x80000c38]:sd t6, 736(ra)<br>       |
|  72|[0x80002680]<br>0x000000007FFFFFFF|- rs1_w1_val == 16<br> - rs1_w0_val == 2147483647<br>                                                        |[0x80000c4c]:KABSW t6, t5<br> [0x80000c50]:csrrs t5, vxsat, zero<br> [0x80000c54]:sd t6, 752(ra)<br>       |
|  73|[0x80002690]<br>0x0000000004000001|- rs1_w0_val == -67108865<br>                                                                                |[0x80000c6c]:KABSW t6, t5<br> [0x80000c70]:csrrs t5, vxsat, zero<br> [0x80000c74]:sd t6, 768(ra)<br>       |
|  74|[0x800026a0]<br>0x0000000001000001|- rs1_w0_val == -16777217<br>                                                                                |[0x80000c90]:KABSW t6, t5<br> [0x80000c94]:csrrs t5, vxsat, zero<br> [0x80000c98]:sd t6, 784(ra)<br>       |
|  75|[0x800026b0]<br>0x0000000000400001|- rs1_w0_val == -4194305<br>                                                                                 |[0x80000cb0]:KABSW t6, t5<br> [0x80000cb4]:csrrs t5, vxsat, zero<br> [0x80000cb8]:sd t6, 800(ra)<br>       |
|  76|[0x800026c0]<br>0x0000000000200001|- rs1_w0_val == -2097153<br>                                                                                 |[0x80000cd0]:KABSW t6, t5<br> [0x80000cd4]:csrrs t5, vxsat, zero<br> [0x80000cd8]:sd t6, 816(ra)<br>       |
|  77|[0x800026d0]<br>0x0000000000040001|- rs1_w0_val == -262145<br>                                                                                  |[0x80000cf8]:KABSW t6, t5<br> [0x80000cfc]:csrrs t5, vxsat, zero<br> [0x80000d00]:sd t6, 832(ra)<br>       |
|  78|[0x800026e0]<br>0x0000000000008001|- rs1_w0_val == -32769<br>                                                                                   |[0x80000d10]:KABSW t6, t5<br> [0x80000d14]:csrrs t5, vxsat, zero<br> [0x80000d18]:sd t6, 848(ra)<br>       |
|  79|[0x800026f0]<br>0x0000000000001001|- rs1_w0_val == -4097<br>                                                                                    |[0x80000d38]:KABSW t6, t5<br> [0x80000d3c]:csrrs t5, vxsat, zero<br> [0x80000d40]:sd t6, 864(ra)<br>       |
|  80|[0x80002700]<br>0x0000000000000021|- rs1_w0_val == -33<br>                                                                                      |[0x80000d4c]:KABSW t6, t5<br> [0x80000d50]:csrrs t5, vxsat, zero<br> [0x80000d54]:sd t6, 880(ra)<br>       |
|  81|[0x80002710]<br>0x0000000000000009|- rs1_w0_val == -9<br>                                                                                       |[0x80000d68]:KABSW t6, t5<br> [0x80000d6c]:csrrs t5, vxsat, zero<br> [0x80000d70]:sd t6, 896(ra)<br>       |
|  82|[0x80002720]<br>0x0000000000000002|- rs1_w0_val == -2<br>                                                                                       |[0x80000d84]:KABSW t6, t5<br> [0x80000d88]:csrrs t5, vxsat, zero<br> [0x80000d8c]:sd t6, 912(ra)<br>       |
|  83|[0x80002730]<br>0x0000000008000000|- rs1_w0_val == 134217728<br>                                                                                |[0x80000da0]:KABSW t6, t5<br> [0x80000da4]:csrrs t5, vxsat, zero<br> [0x80000da8]:sd t6, 928(ra)<br>       |
|  84|[0x80002740]<br>0x0000000004000000|- rs1_w0_val == 67108864<br>                                                                                 |[0x80000dbc]:KABSW t6, t5<br> [0x80000dc0]:csrrs t5, vxsat, zero<br> [0x80000dc4]:sd t6, 944(ra)<br>       |
|  85|[0x80002750]<br>0x0000000001000000|- rs1_w0_val == 16777216<br>                                                                                 |[0x80000dd4]:KABSW t6, t5<br> [0x80000dd8]:csrrs t5, vxsat, zero<br> [0x80000ddc]:sd t6, 960(ra)<br>       |
|  86|[0x80002760]<br>0x0000000010000001|- rs1_w1_val == 8<br>                                                                                        |[0x80000df0]:KABSW t6, t5<br> [0x80000df4]:csrrs t5, vxsat, zero<br> [0x80000df8]:sd t6, 976(ra)<br>       |
|  87|[0x80002770]<br>0x0000000000040000|- rs1_w0_val == 262144<br>                                                                                   |[0x80000e0c]:KABSW t6, t5<br> [0x80000e10]:csrrs t5, vxsat, zero<br> [0x80000e14]:sd t6, 992(ra)<br>       |
|  88|[0x80002780]<br>0x0000000000000100|- rs1_w0_val == 256<br>                                                                                      |[0x80000e28]:KABSW t6, t5<br> [0x80000e2c]:csrrs t5, vxsat, zero<br> [0x80000e30]:sd t6, 1008(ra)<br>      |
|  89|[0x80002790]<br>0x0000000000000101|- rs1_w0_val == -257<br>                                                                                     |[0x80000e44]:KABSW t6, t5<br> [0x80000e48]:csrrs t5, vxsat, zero<br> [0x80000e4c]:sd t6, 1024(ra)<br>      |
|  90|[0x800027a0]<br>0x0000000000000801|- rs1_w0_val == -2049<br>                                                                                    |[0x80000e68]:KABSW t6, t5<br> [0x80000e6c]:csrrs t5, vxsat, zero<br> [0x80000e70]:sd t6, 1040(ra)<br>      |
|  91|[0x800027b0]<br>0x0000000000000401|- rs1_w0_val == -1025<br>                                                                                    |[0x80000e84]:KABSW t6, t5<br> [0x80000e88]:csrrs t5, vxsat, zero<br> [0x80000e8c]:sd t6, 1056(ra)<br>      |
|  92|[0x800027c0]<br>0x0000000000000201|- rs1_w0_val == -513<br>                                                                                     |[0x80000ea0]:KABSW t6, t5<br> [0x80000ea4]:csrrs t5, vxsat, zero<br> [0x80000ea8]:sd t6, 1072(ra)<br>      |
|  93|[0x800027d0]<br>0x0000000000000080|- rs1_w0_val == 128<br>                                                                                      |[0x80000ebc]:KABSW t6, t5<br> [0x80000ec0]:csrrs t5, vxsat, zero<br> [0x80000ec4]:sd t6, 1088(ra)<br>      |
|  94|[0x800027e0]<br>0x0000000000000040|- rs1_w0_val == 64<br>                                                                                       |[0x80000ed8]:KABSW t6, t5<br> [0x80000edc]:csrrs t5, vxsat, zero<br> [0x80000ee0]:sd t6, 1104(ra)<br>      |
|  95|[0x800027f0]<br>0x0000000010000000|- rs1_w1_val == -4194305<br>                                                                                 |[0x80000ef4]:KABSW t6, t5<br> [0x80000ef8]:csrrs t5, vxsat, zero<br> [0x80000efc]:sd t6, 1120(ra)<br>      |
