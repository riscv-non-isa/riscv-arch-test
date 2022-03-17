
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e30')]      |
| SIG_REGION                | [('0x80002210', '0x800025f0', '124 dwords')]      |
| COV_LABELS                | kabs8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kabs8-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 124      |
| STAT1                     | 61      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 62     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e14]:KABS8 t6, t5
      [0x80000e18]:csrrs t5, vxsat, zero
      [0x80000e1c]:sd t6, 640(ra)
 -- Signature Address: 0x800025e0 Data: 0x7F087F2041071140
 -- Redundant Coverpoints hit by the op
      - opcode : kabs8
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == -128
      - rs1_b6_val == 8
      - rs1_b5_val == 127
      - rs1_b4_val == 32
      - rs1_b3_val == -65
      - rs1_b1_val == -17
      - rs1_b0_val == 64






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kabs8', 'rs1 : x10', 'rd : x27', 'rs1_b0_val == -128', 'rs1_b6_val == 64', 'rs1_b5_val == -33', 'rs1_b4_val == -3', 'rs1_b3_val == 64']
Last Code Sequence : 
	-[0x800003bc]:KABS8 s11, a0
	-[0x800003c0]:csrrs a0, vxsat, zero
	-[0x800003c4]:sd s11, 0(s1)
Current Store : [0x800003c8] : sd a0, 8(s1) -- Store: [0x80002218]:0x0000000000000001




Last Coverpoint : ['rs1 : x4', 'rd : x16', 'rs1_b7_val == -86', 'rs1_b6_val == -65', 'rs1_b4_val == 16', 'rs1_b1_val == 64', 'rs1_b0_val == -17']
Last Code Sequence : 
	-[0x800003ec]:KABS8 a6, tp
	-[0x800003f0]:csrrs tp, vxsat, zero
	-[0x800003f4]:sd a6, 16(s1)
Current Store : [0x800003f8] : sd tp, 24(s1) -- Store: [0x80002228]:0x0000000000000001




Last Coverpoint : ['rs1 : x5', 'rd : x6', 'rs1_b7_val == 85', 'rs1_b6_val == -86', 'rs1_b4_val == 4', 'rs1_b2_val == 64', 'rs1_b0_val == 0']
Last Code Sequence : 
	-[0x8000041c]:KABS8 t1, t0
	-[0x80000420]:csrrs t0, vxsat, zero
	-[0x80000424]:sd t1, 32(s1)
Current Store : [0x80000428] : sd t0, 40(s1) -- Store: [0x80002238]:0x0000000000000001




Last Coverpoint : ['rs1 : x1', 'rd : x28', 'rs1_b7_val == 127', 'rs1_b5_val == -1', 'rs1_b4_val == -86', 'rs1_b3_val == -3', 'rs1_b2_val == -17', 'rs1_b0_val == 85']
Last Code Sequence : 
	-[0x8000044c]:KABS8 t3, ra
	-[0x80000450]:csrrs ra, vxsat, zero
	-[0x80000454]:sd t3, 48(s1)
Current Store : [0x80000458] : sd ra, 56(s1) -- Store: [0x80002248]:0x0000000000000001




Last Coverpoint : ['rs1 : x26', 'rd : x20', 'rs1_b7_val == -65', 'rs1_b1_val == -3', 'rs1_b0_val == 127']
Last Code Sequence : 
	-[0x8000047c]:KABS8 s4, s10
	-[0x80000480]:csrrs s10, vxsat, zero
	-[0x80000484]:sd s4, 64(s1)
Current Store : [0x80000488] : sd s10, 72(s1) -- Store: [0x80002258]:0x0000000000000001




Last Coverpoint : ['rs1 : x19', 'rd : x21', 'rs1_b7_val == -33', 'rs1_b3_val == -128', 'rs1_b1_val == 2']
Last Code Sequence : 
	-[0x800004a4]:KABS8 s5, s3
	-[0x800004a8]:csrrs s3, vxsat, zero
	-[0x800004ac]:sd s5, 80(s1)
Current Store : [0x800004b0] : sd s3, 88(s1) -- Store: [0x80002268]:0x0000000000000001




Last Coverpoint : ['rs1 : x29', 'rd : x10', 'rs1_b7_val == -17', 'rs1_b6_val == -128', 'rs1_b4_val == -2', 'rs1_b3_val == -86', 'rs1_b0_val == 2']
Last Code Sequence : 
	-[0x800004cc]:KABS8 a0, t4
	-[0x800004d0]:csrrs t4, vxsat, zero
	-[0x800004d4]:sd a0, 96(s1)
Current Store : [0x800004d8] : sd t4, 104(s1) -- Store: [0x80002278]:0x0000000000000001




Last Coverpoint : ['rs1 : x6', 'rd : x22', 'rs1_b7_val == -9', 'rs1_b6_val == -5', 'rs1_b1_val == 127']
Last Code Sequence : 
	-[0x800004f4]:KABS8 s6, t1
	-[0x800004f8]:csrrs t1, vxsat, zero
	-[0x800004fc]:sd s6, 112(s1)
Current Store : [0x80000500] : sd t1, 120(s1) -- Store: [0x80002288]:0x0000000000000001




Last Coverpoint : ['rs1 : x27', 'rd : x12', 'rs1_b7_val == -5', 'rs1_b6_val == -17', 'rs1_b5_val == -3', 'rs1_b3_val == -1', 'rs1_b2_val == -2', 'rs1_b0_val == 32']
Last Code Sequence : 
	-[0x8000051c]:KABS8 a2, s11
	-[0x80000520]:csrrs s11, vxsat, zero
	-[0x80000524]:sd a2, 128(s1)
Current Store : [0x80000528] : sd s11, 136(s1) -- Store: [0x80002298]:0x0000000000000001




Last Coverpoint : ['rs1 : x25', 'rd : x18', 'rs1_b7_val == -3', 'rs1_b6_val == -3', 'rs1_b4_val == -17', 'rs1_b3_val == -2', 'rs1_b1_val == -33']
Last Code Sequence : 
	-[0x8000054c]:KABS8 s2, s9
	-[0x80000550]:csrrs s9, vxsat, zero
	-[0x80000554]:sd s2, 144(s1)
Current Store : [0x80000558] : sd s9, 152(s1) -- Store: [0x800022a8]:0x0000000000000001




Last Coverpoint : ['rs1 : x11', 'rd : x17', 'rs1_b7_val == -2', 'rs1_b6_val == 32', 'rs1_b5_val == -65', 'rs1_b4_val == -65', 'rs1_b2_val == 4', 'rs1_b1_val == -65']
Last Code Sequence : 
	-[0x80000574]:KABS8 a7, a1
	-[0x80000578]:csrrs a1, vxsat, zero
	-[0x8000057c]:sd a7, 160(s1)
Current Store : [0x80000580] : sd a1, 168(s1) -- Store: [0x800022b8]:0x0000000000000001




Last Coverpoint : ['rs1 : x14', 'rd : x0', 'rs1_b7_val == -128', 'rs1_b6_val == 8', 'rs1_b5_val == 127', 'rs1_b4_val == 32', 'rs1_b3_val == -65', 'rs1_b1_val == -17', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x800005a4]:KABS8 zero, a4
	-[0x800005a8]:csrrs a4, vxsat, zero
	-[0x800005ac]:sd zero, 176(s1)
Current Store : [0x800005b0] : sd a4, 184(s1) -- Store: [0x800022c8]:0x0000000000000001




Last Coverpoint : ['rs1 : x13', 'rd : x15', 'rs1_b7_val == 64', 'rs1_b5_val == 4', 'rs1_b3_val == -33', 'rs1_b2_val == 32', 'rs1_b0_val == -1']
Last Code Sequence : 
	-[0x800005d4]:KABS8 a5, a3
	-[0x800005d8]:csrrs a3, vxsat, zero
	-[0x800005dc]:sd a5, 192(s1)
Current Store : [0x800005e0] : sd a3, 200(s1) -- Store: [0x800022d8]:0x0000000000000001




Last Coverpoint : ['rs1 : x15', 'rd : x26', 'rs1_b7_val == 32', 'rs1_b6_val == 127', 'rs1_b2_val == -3', 'rs1_b1_val == 4']
Last Code Sequence : 
	-[0x80000604]:KABS8 s10, a5
	-[0x80000608]:csrrs a5, vxsat, zero
	-[0x8000060c]:sd s10, 208(s1)
Current Store : [0x80000610] : sd a5, 216(s1) -- Store: [0x800022e8]:0x0000000000000001




Last Coverpoint : ['rs1 : x31', 'rd : x11', 'rs1_b7_val == 16', 'rs1_b6_val == -33', 'rs1_b3_val == 4', 'rs1_b2_val == -9']
Last Code Sequence : 
	-[0x8000062c]:KABS8 a1, t6
	-[0x80000630]:csrrs t6, vxsat, zero
	-[0x80000634]:sd a1, 224(s1)
Current Store : [0x80000638] : sd t6, 232(s1) -- Store: [0x800022f8]:0x0000000000000001




Last Coverpoint : ['rs1 : x12', 'rd : x4', 'rs1_b7_val == 8', 'rs1_b2_val == -33', 'rs1_b1_val == -9']
Last Code Sequence : 
	-[0x8000065c]:KABS8 tp, a2
	-[0x80000660]:csrrs a2, vxsat, zero
	-[0x80000664]:sd tp, 240(s1)
Current Store : [0x80000668] : sd a2, 248(s1) -- Store: [0x80002308]:0x0000000000000001




Last Coverpoint : ['rs1 : x2', 'rd : x1', 'rs1_b7_val == 4', 'rs1_b3_val == 2']
Last Code Sequence : 
	-[0x8000068c]:KABS8 ra, sp
	-[0x80000690]:csrrs sp, vxsat, zero
	-[0x80000694]:sd ra, 256(s1)
Current Store : [0x80000698] : sd sp, 264(s1) -- Store: [0x80002318]:0x0000000000000001




Last Coverpoint : ['rs1 : x0', 'rd : x19', 'rs1_b7_val == 0', 'rs1_b6_val == 0', 'rs1_b5_val == 0', 'rs1_b4_val == 0', 'rs1_b3_val == 0', 'rs1_b2_val == 0', 'rs1_b1_val == 0']
Last Code Sequence : 
	-[0x800006b4]:KABS8 s3, zero
	-[0x800006b8]:csrrs zero, vxsat, zero
	-[0x800006bc]:sd s3, 272(s1)
Current Store : [0x800006c0] : sd zero, 280(s1) -- Store: [0x80002328]:0x0000000000000000




Last Coverpoint : ['rs1 : x24', 'rd : x8', 'rs1_b7_val == 1', 'rs1_b5_val == 8', 'rs1_b4_val == 127', 'rs1_b2_val == -65']
Last Code Sequence : 
	-[0x800006dc]:KABS8 fp, s8
	-[0x800006e0]:csrrs s8, vxsat, zero
	-[0x800006e4]:sd fp, 288(s1)
Current Store : [0x800006e8] : sd s8, 296(s1) -- Store: [0x80002338]:0x0000000000000001




Last Coverpoint : ['rs1 : x20', 'rd : x3', 'rs1_b2_val == -86', 'rs1_b1_val == 85']
Last Code Sequence : 
	-[0x8000070c]:KABS8 gp, s4
	-[0x80000710]:csrrs s4, vxsat, zero
	-[0x80000714]:sd gp, 304(s1)
Current Store : [0x80000718] : sd s4, 312(s1) -- Store: [0x80002348]:0x0000000000000001




Last Coverpoint : ['rs1 : x7', 'rd : x29', 'rs1_b7_val == -1', 'rs1_b3_val == 85']
Last Code Sequence : 
	-[0x80000734]:KABS8 t4, t2
	-[0x80000738]:csrrs t2, vxsat, zero
	-[0x8000073c]:sd t4, 320(s1)
Current Store : [0x80000740] : sd t2, 328(s1) -- Store: [0x80002358]:0x0000000000000001




Last Coverpoint : ['rs1 : x22', 'rd : x9', 'rs1_b6_val == 85', 'rs1_b4_val == 64', 'rs1_b3_val == 127']
Last Code Sequence : 
	-[0x8000076c]:KABS8 s1, s6
	-[0x80000770]:csrrs s6, vxsat, zero
	-[0x80000774]:sd s1, 0(ra)
Current Store : [0x80000778] : sd s6, 8(ra) -- Store: [0x80002368]:0x0000000000000001




Last Coverpoint : ['rs1 : x21', 'rd : x30', 'rs1_b6_val == -9', 'rs1_b5_val == 1']
Last Code Sequence : 
	-[0x80000794]:KABS8 t5, s5
	-[0x80000798]:csrrs s5, vxsat, zero
	-[0x8000079c]:sd t5, 16(ra)
Current Store : [0x800007a0] : sd s5, 24(ra) -- Store: [0x80002378]:0x0000000000000001




Last Coverpoint : ['rs1 : x16', 'rd : x7', 'rs1_b6_val == -2', 'rs1_b4_val == -5']
Last Code Sequence : 
	-[0x800007c4]:KABS8 t2, a6
	-[0x800007c8]:csrrs a6, vxsat, zero
	-[0x800007cc]:sd t2, 32(ra)
Current Store : [0x800007d0] : sd a6, 40(ra) -- Store: [0x80002388]:0x0000000000000001




Last Coverpoint : ['rs1 : x30', 'rd : x31', 'rs1_b6_val == 16', 'rs1_b2_val == -1', 'rs1_b1_val == 32']
Last Code Sequence : 
	-[0x800007f4]:KABS8 t6, t5
	-[0x800007f8]:csrrs t5, vxsat, zero
	-[0x800007fc]:sd t6, 48(ra)
Current Store : [0x80000800] : sd t5, 56(ra) -- Store: [0x80002398]:0x0000000000000001




Last Coverpoint : ['rs1 : x18', 'rd : x13', 'rs1_b4_val == 8', 'rs1_b1_val == -5']
Last Code Sequence : 
	-[0x8000081c]:KABS8 a3, s2
	-[0x80000820]:csrrs s2, vxsat, zero
	-[0x80000824]:sd a3, 64(ra)
Current Store : [0x80000828] : sd s2, 72(ra) -- Store: [0x800023a8]:0x0000000000000001




Last Coverpoint : ['rs1 : x3', 'rd : x25', 'rs1_b2_val == 2', 'rs1_b1_val == -2']
Last Code Sequence : 
	-[0x80000844]:KABS8 s9, gp
	-[0x80000848]:csrrs gp, vxsat, zero
	-[0x8000084c]:sd s9, 80(ra)
Current Store : [0x80000850] : sd gp, 88(ra) -- Store: [0x800023b8]:0x0000000000000001




Last Coverpoint : ['rs1 : x9', 'rd : x5', 'rs1_b1_val == -128', 'rs1_b0_val == 4']
Last Code Sequence : 
	-[0x8000086c]:KABS8 t0, s1
	-[0x80000870]:csrrs s1, vxsat, zero
	-[0x80000874]:sd t0, 96(ra)
Current Store : [0x80000878] : sd s1, 104(ra) -- Store: [0x800023c8]:0x0000000000000001




Last Coverpoint : ['rs1 : x23', 'rd : x2', 'rs1_b5_val == -128', 'rs1_b4_val == -9', 'rs1_b1_val == 16']
Last Code Sequence : 
	-[0x8000089c]:KABS8 sp, s7
	-[0x800008a0]:csrrs s7, vxsat, zero
	-[0x800008a4]:sd sp, 112(ra)
Current Store : [0x800008a8] : sd s7, 120(ra) -- Store: [0x800023d8]:0x0000000000000001




Last Coverpoint : ['rs1 : x8', 'rd : x14', 'rs1_b6_val == -1', 'rs1_b3_val == 16', 'rs1_b1_val == 8', 'rs1_b0_val == -33']
Last Code Sequence : 
	-[0x800008cc]:KABS8 a4, fp
	-[0x800008d0]:csrrs fp, vxsat, zero
	-[0x800008d4]:sd a4, 128(ra)
Current Store : [0x800008d8] : sd fp, 136(ra) -- Store: [0x800023e8]:0x0000000000000001




Last Coverpoint : ['rs1 : x28', 'rd : x24', 'rs1_b6_val == 2', 'rs1_b1_val == 1', 'rs1_b0_val == -65']
Last Code Sequence : 
	-[0x800008f4]:KABS8 s8, t3
	-[0x800008f8]:csrrs t3, vxsat, zero
	-[0x800008fc]:sd s8, 144(ra)
Current Store : [0x80000900] : sd t3, 152(ra) -- Store: [0x800023f8]:0x0000000000000001




Last Coverpoint : ['rs1 : x17', 'rd : x23', 'rs1_b3_val == 1', 'rs1_b1_val == -1']
Last Code Sequence : 
	-[0x8000091c]:KABS8 s7, a7
	-[0x80000920]:csrrs a7, vxsat, zero
	-[0x80000924]:sd s7, 160(ra)
Current Store : [0x80000928] : sd a7, 168(ra) -- Store: [0x80002408]:0x0000000000000001




Last Coverpoint : ['rs1_b1_val == -86', 'rs1_b0_val == -86']
Last Code Sequence : 
	-[0x8000094c]:KABS8 t6, t5
	-[0x80000950]:csrrs t5, vxsat, zero
	-[0x80000954]:sd t6, 176(ra)
Current Store : [0x80000958] : sd t5, 184(ra) -- Store: [0x80002418]:0x0000000000000001




Last Coverpoint : ['rs1_b4_val == 1', 'rs1_b0_val == -9']
Last Code Sequence : 
	-[0x80000974]:KABS8 t6, t5
	-[0x80000978]:csrrs t5, vxsat, zero
	-[0x8000097c]:sd t6, 192(ra)
Current Store : [0x80000980] : sd t5, 200(ra) -- Store: [0x80002428]:0x0000000000000001




Last Coverpoint : ['rs1_b0_val == -5']
Last Code Sequence : 
	-[0x8000099c]:KABS8 t6, t5
	-[0x800009a0]:csrrs t5, vxsat, zero
	-[0x800009a4]:sd t6, 208(ra)
Current Store : [0x800009a8] : sd t5, 216(ra) -- Store: [0x80002438]:0x0000000000000001




Last Coverpoint : ['rs1_b0_val == -3']
Last Code Sequence : 
	-[0x800009c4]:KABS8 t6, t5
	-[0x800009c8]:csrrs t5, vxsat, zero
	-[0x800009cc]:sd t6, 224(ra)
Current Store : [0x800009d0] : sd t5, 232(ra) -- Store: [0x80002448]:0x0000000000000001




Last Coverpoint : ['rs1_b2_val == 16', 'rs1_b0_val == -2']
Last Code Sequence : 
	-[0x800009ec]:KABS8 t6, t5
	-[0x800009f0]:csrrs t5, vxsat, zero
	-[0x800009f4]:sd t6, 240(ra)
Current Store : [0x800009f8] : sd t5, 248(ra) -- Store: [0x80002458]:0x0000000000000001




Last Coverpoint : ['rs1_b0_val == 16']
Last Code Sequence : 
	-[0x80000a14]:KABS8 t6, t5
	-[0x80000a18]:csrrs t5, vxsat, zero
	-[0x80000a1c]:sd t6, 256(ra)
Current Store : [0x80000a20] : sd t5, 264(ra) -- Store: [0x80002468]:0x0000000000000001




Last Coverpoint : ['rs1_b2_val == 85', 'rs1_b0_val == 8']
Last Code Sequence : 
	-[0x80000a44]:KABS8 t6, t5
	-[0x80000a48]:csrrs t5, vxsat, zero
	-[0x80000a4c]:sd t6, 272(ra)
Current Store : [0x80000a50] : sd t5, 280(ra) -- Store: [0x80002478]:0x0000000000000001




Last Coverpoint : ['rs1_b3_val == 8', 'rs1_b0_val == 1']
Last Code Sequence : 
	-[0x80000a6c]:KABS8 t6, t5
	-[0x80000a70]:csrrs t5, vxsat, zero
	-[0x80000a74]:sd t6, 288(ra)
Current Store : [0x80000a78] : sd t5, 296(ra) -- Store: [0x80002488]:0x0000000000000001




Last Coverpoint : ['rs1_b5_val == -9', 'rs1_b4_val == -33']
Last Code Sequence : 
	-[0x80000a94]:KABS8 t6, t5
	-[0x80000a98]:csrrs t5, vxsat, zero
	-[0x80000a9c]:sd t6, 304(ra)
Current Store : [0x80000aa0] : sd t5, 312(ra) -- Store: [0x80002498]:0x0000000000000001




Last Coverpoint : ['rs1_b4_val == -128', 'rs1_b2_val == 1']
Last Code Sequence : 
	-[0x80000abc]:KABS8 t6, t5
	-[0x80000ac0]:csrrs t5, vxsat, zero
	-[0x80000ac4]:sd t6, 320(ra)
Current Store : [0x80000ac8] : sd t5, 328(ra) -- Store: [0x800024a8]:0x0000000000000001




Last Coverpoint : ['rs1_b4_val == 2', 'rs1_b3_val == -5']
Last Code Sequence : 
	-[0x80000aec]:KABS8 t6, t5
	-[0x80000af0]:csrrs t5, vxsat, zero
	-[0x80000af4]:sd t6, 336(ra)
Current Store : [0x80000af8] : sd t5, 344(ra) -- Store: [0x800024b8]:0x0000000000000001




Last Coverpoint : ['rs1_b5_val == 16', 'rs1_b2_val == -5']
Last Code Sequence : 
	-[0x80000b14]:KABS8 t6, t5
	-[0x80000b18]:csrrs t5, vxsat, zero
	-[0x80000b1c]:sd t6, 352(ra)
Current Store : [0x80000b20] : sd t5, 360(ra) -- Store: [0x800024c8]:0x0000000000000001




Last Coverpoint : ['rs1_b4_val == -1']
Last Code Sequence : 
	-[0x80000b3c]:KABS8 t6, t5
	-[0x80000b40]:csrrs t5, vxsat, zero
	-[0x80000b44]:sd t6, 368(ra)
Current Store : [0x80000b48] : sd t5, 376(ra) -- Store: [0x800024d8]:0x0000000000000001




Last Coverpoint : ['rs1_b3_val == -17']
Last Code Sequence : 
	-[0x80000b64]:KABS8 t6, t5
	-[0x80000b68]:csrrs t5, vxsat, zero
	-[0x80000b6c]:sd t6, 384(ra)
Current Store : [0x80000b70] : sd t5, 392(ra) -- Store: [0x800024e8]:0x0000000000000001




Last Coverpoint : ['rs1_b5_val == -86', 'rs1_b3_val == -9']
Last Code Sequence : 
	-[0x80000b94]:KABS8 t6, t5
	-[0x80000b98]:csrrs t5, vxsat, zero
	-[0x80000b9c]:sd t6, 400(ra)
Current Store : [0x80000ba0] : sd t5, 408(ra) -- Store: [0x800024f8]:0x0000000000000001




Last Coverpoint : ['rs1_b6_val == 1', 'rs1_b3_val == 32']
Last Code Sequence : 
	-[0x80000bbc]:KABS8 t6, t5
	-[0x80000bc0]:csrrs t5, vxsat, zero
	-[0x80000bc4]:sd t6, 416(ra)
Current Store : [0x80000bc8] : sd t5, 424(ra) -- Store: [0x80002508]:0x0000000000000001




Last Coverpoint : ['rs1_b2_val == -128']
Last Code Sequence : 
	-[0x80000be4]:KABS8 t6, t5
	-[0x80000be8]:csrrs t5, vxsat, zero
	-[0x80000bec]:sd t6, 432(ra)
Current Store : [0x80000bf0] : sd t5, 440(ra) -- Store: [0x80002518]:0x0000000000000001




Last Coverpoint : ['rs1_b6_val == 4']
Last Code Sequence : 
	-[0x80000c0c]:KABS8 t6, t5
	-[0x80000c10]:csrrs t5, vxsat, zero
	-[0x80000c14]:sd t6, 448(ra)
Current Store : [0x80000c18] : sd t5, 456(ra) -- Store: [0x80002528]:0x0000000000000001




Last Coverpoint : ['rs1_b4_val == 85']
Last Code Sequence : 
	-[0x80000c3c]:KABS8 t6, t5
	-[0x80000c40]:csrrs t5, vxsat, zero
	-[0x80000c44]:sd t6, 464(ra)
Current Store : [0x80000c48] : sd t5, 472(ra) -- Store: [0x80002538]:0x0000000000000001




Last Coverpoint : ['rs1_b2_val == 127']
Last Code Sequence : 
	-[0x80000c64]:KABS8 t6, t5
	-[0x80000c68]:csrrs t5, vxsat, zero
	-[0x80000c6c]:sd t6, 480(ra)
Current Store : [0x80000c70] : sd t5, 488(ra) -- Store: [0x80002548]:0x0000000000000001




Last Coverpoint : ['rs1_b5_val == 85']
Last Code Sequence : 
	-[0x80000c8c]:KABS8 t6, t5
	-[0x80000c90]:csrrs t5, vxsat, zero
	-[0x80000c94]:sd t6, 496(ra)
Current Store : [0x80000c98] : sd t5, 504(ra) -- Store: [0x80002558]:0x0000000000000001




Last Coverpoint : ['rs1_b5_val == -17']
Last Code Sequence : 
	-[0x80000cb4]:KABS8 t6, t5
	-[0x80000cb8]:csrrs t5, vxsat, zero
	-[0x80000cbc]:sd t6, 512(ra)
Current Store : [0x80000cc0] : sd t5, 520(ra) -- Store: [0x80002568]:0x0000000000000001




Last Coverpoint : ['rs1_b5_val == -5']
Last Code Sequence : 
	-[0x80000cdc]:KABS8 t6, t5
	-[0x80000ce0]:csrrs t5, vxsat, zero
	-[0x80000ce4]:sd t6, 528(ra)
Current Store : [0x80000ce8] : sd t5, 536(ra) -- Store: [0x80002578]:0x0000000000000001




Last Coverpoint : ['rs1_b5_val == -2']
Last Code Sequence : 
	-[0x80000d04]:KABS8 t6, t5
	-[0x80000d08]:csrrs t5, vxsat, zero
	-[0x80000d0c]:sd t6, 544(ra)
Current Store : [0x80000d10] : sd t5, 552(ra) -- Store: [0x80002588]:0x0000000000000001




Last Coverpoint : ['rs1_b2_val == 8']
Last Code Sequence : 
	-[0x80000d2c]:KABS8 t6, t5
	-[0x80000d30]:csrrs t5, vxsat, zero
	-[0x80000d34]:sd t6, 560(ra)
Current Store : [0x80000d38] : sd t5, 568(ra) -- Store: [0x80002598]:0x0000000000000001




Last Coverpoint : ['rs1_b5_val == 2']
Last Code Sequence : 
	-[0x80000d5c]:KABS8 t6, t5
	-[0x80000d60]:csrrs t5, vxsat, zero
	-[0x80000d64]:sd t6, 576(ra)
Current Store : [0x80000d68] : sd t5, 584(ra) -- Store: [0x800025a8]:0x0000000000000001




Last Coverpoint : ['rs1_b7_val == 2']
Last Code Sequence : 
	-[0x80000d8c]:KABS8 t6, t5
	-[0x80000d90]:csrrs t5, vxsat, zero
	-[0x80000d94]:sd t6, 592(ra)
Current Store : [0x80000d98] : sd t5, 600(ra) -- Store: [0x800025b8]:0x0000000000000001




Last Coverpoint : ['rs1_b5_val == 64']
Last Code Sequence : 
	-[0x80000db4]:KABS8 t6, t5
	-[0x80000db8]:csrrs t5, vxsat, zero
	-[0x80000dbc]:sd t6, 608(ra)
Current Store : [0x80000dc0] : sd t5, 616(ra) -- Store: [0x800025c8]:0x0000000000000001




Last Coverpoint : ['rs1_b5_val == 32']
Last Code Sequence : 
	-[0x80000de4]:KABS8 t6, t5
	-[0x80000de8]:csrrs t5, vxsat, zero
	-[0x80000dec]:sd t6, 624(ra)
Current Store : [0x80000df0] : sd t5, 632(ra) -- Store: [0x800025d8]:0x0000000000000001




Last Coverpoint : ['opcode : kabs8', 'rs1 : x30', 'rd : x31', 'rs1_b7_val == -128', 'rs1_b6_val == 8', 'rs1_b5_val == 127', 'rs1_b4_val == 32', 'rs1_b3_val == -65', 'rs1_b1_val == -17', 'rs1_b0_val == 64']
Last Code Sequence : 
	-[0x80000e14]:KABS8 t6, t5
	-[0x80000e18]:csrrs t5, vxsat, zero
	-[0x80000e1c]:sd t6, 640(ra)
Current Store : [0x80000e20] : sd t5, 648(ra) -- Store: [0x800025e8]:0x0000000000000001





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

|s.no|            signature             |                                                                                            coverpoints                                                                                            |                                                  code                                                   |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x094021034006067F|- opcode : kabs8<br> - rs1 : x10<br> - rd : x27<br> - rs1_b0_val == -128<br> - rs1_b6_val == 64<br> - rs1_b5_val == -33<br> - rs1_b4_val == -3<br> - rs1_b3_val == 64<br>                          |[0x800003bc]:KABS8 s11, a0<br> [0x800003c0]:csrrs a0, vxsat, zero<br> [0x800003c4]:sd s11, 0(s1)<br>     |
|   2|[0x80002220]<br>0x5641061006074011|- rs1 : x4<br> - rd : x16<br> - rs1_b7_val == -86<br> - rs1_b6_val == -65<br> - rs1_b4_val == 16<br> - rs1_b1_val == 64<br> - rs1_b0_val == -17<br>                                                |[0x800003ec]:KABS8 a6, tp<br> [0x800003f0]:csrrs tp, vxsat, zero<br> [0x800003f4]:sd a6, 16(s1)<br>      |
|   3|[0x80002230]<br>0x5556060404400A00|- rs1 : x5<br> - rd : x6<br> - rs1_b7_val == 85<br> - rs1_b6_val == -86<br> - rs1_b4_val == 4<br> - rs1_b2_val == 64<br> - rs1_b0_val == 0<br>                                                     |[0x8000041c]:KABS8 t1, t0<br> [0x80000420]:csrrs t0, vxsat, zero<br> [0x80000424]:sd t1, 32(s1)<br>      |
|   4|[0x80002240]<br>0x7F0A015603114055|- rs1 : x1<br> - rd : x28<br> - rs1_b7_val == 127<br> - rs1_b5_val == -1<br> - rs1_b4_val == -86<br> - rs1_b3_val == -3<br> - rs1_b2_val == -17<br> - rs1_b0_val == 85<br>                         |[0x8000044c]:KABS8 t3, ra<br> [0x80000450]:csrrs ra, vxsat, zero<br> [0x80000454]:sd t3, 48(s1)<br>      |
|   5|[0x80002250]<br>0x414107060906037F|- rs1 : x26<br> - rd : x20<br> - rs1_b7_val == -65<br> - rs1_b1_val == -3<br> - rs1_b0_val == 127<br>                                                                                              |[0x8000047c]:KABS8 s4, s10<br> [0x80000480]:csrrs s10, vxsat, zero<br> [0x80000484]:sd s4, 64(s1)<br>    |
|   6|[0x80002260]<br>0x213F07077F110208|- rs1 : x19<br> - rd : x21<br> - rs1_b7_val == -33<br> - rs1_b3_val == -128<br> - rs1_b1_val == 2<br>                                                                                              |[0x800004a4]:KABS8 s5, s3<br> [0x800004a8]:csrrs s3, vxsat, zero<br> [0x800004ac]:sd s5, 80(s1)<br>      |
|   7|[0x80002270]<br>0x117F070256110702|- rs1 : x29<br> - rd : x10<br> - rs1_b7_val == -17<br> - rs1_b6_val == -128<br> - rs1_b4_val == -2<br> - rs1_b3_val == -86<br> - rs1_b0_val == 2<br>                                               |[0x800004cc]:KABS8 a0, t4<br> [0x800004d0]:csrrs t4, vxsat, zero<br> [0x800004d4]:sd a0, 96(s1)<br>      |
|   8|[0x80002280]<br>0x0905030640047F55|- rs1 : x6<br> - rd : x22<br> - rs1_b7_val == -9<br> - rs1_b6_val == -5<br> - rs1_b1_val == 127<br>                                                                                                |[0x800004f4]:KABS8 s6, t1<br> [0x800004f8]:csrrs t1, vxsat, zero<br> [0x800004fc]:sd s6, 112(s1)<br>     |
|   9|[0x80002290]<br>0x0511031001020920|- rs1 : x27<br> - rd : x12<br> - rs1_b7_val == -5<br> - rs1_b6_val == -17<br> - rs1_b5_val == -3<br> - rs1_b3_val == -1<br> - rs1_b2_val == -2<br> - rs1_b0_val == 32<br>                          |[0x8000051c]:KABS8 a2, s11<br> [0x80000520]:csrrs s11, vxsat, zero<br> [0x80000524]:sd a2, 128(s1)<br>   |
|  10|[0x800022a0]<br>0x03030711023F2107|- rs1 : x25<br> - rd : x18<br> - rs1_b7_val == -3<br> - rs1_b6_val == -3<br> - rs1_b4_val == -17<br> - rs1_b3_val == -2<br> - rs1_b1_val == -33<br>                                                |[0x8000054c]:KABS8 s2, s9<br> [0x80000550]:csrrs s9, vxsat, zero<br> [0x80000554]:sd s2, 144(s1)<br>     |
|  11|[0x800022b0]<br>0x0220414103044120|- rs1 : x11<br> - rd : x17<br> - rs1_b7_val == -2<br> - rs1_b6_val == 32<br> - rs1_b5_val == -65<br> - rs1_b4_val == -65<br> - rs1_b2_val == 4<br> - rs1_b1_val == -65<br>                         |[0x80000574]:KABS8 a7, a1<br> [0x80000578]:csrrs a1, vxsat, zero<br> [0x8000057c]:sd a7, 160(s1)<br>     |
|  12|[0x800022c0]<br>0x0000000000000000|- rs1 : x14<br> - rd : x0<br> - rs1_b7_val == -128<br> - rs1_b6_val == 8<br> - rs1_b5_val == 127<br> - rs1_b4_val == 32<br> - rs1_b3_val == -65<br> - rs1_b1_val == -17<br> - rs1_b0_val == 64<br> |[0x800005a4]:KABS8 zero, a4<br> [0x800005a8]:csrrs a4, vxsat, zero<br> [0x800005ac]:sd zero, 176(s1)<br> |
|  13|[0x800022d0]<br>0x407F041021200901|- rs1 : x13<br> - rd : x15<br> - rs1_b7_val == 64<br> - rs1_b5_val == 4<br> - rs1_b3_val == -33<br> - rs1_b2_val == 32<br> - rs1_b0_val == -1<br>                                                  |[0x800005d4]:KABS8 a5, a3<br> [0x800005d8]:csrrs a3, vxsat, zero<br> [0x800005dc]:sd a5, 192(s1)<br>     |
|  14|[0x800022e0]<br>0x207F030340030403|- rs1 : x15<br> - rd : x26<br> - rs1_b7_val == 32<br> - rs1_b6_val == 127<br> - rs1_b2_val == -3<br> - rs1_b1_val == 4<br>                                                                         |[0x80000604]:KABS8 s10, a5<br> [0x80000608]:csrrs a5, vxsat, zero<br> [0x8000060c]:sd s10, 208(s1)<br>   |
|  15|[0x800022f0]<br>0x1021040804090740|- rs1 : x31<br> - rd : x11<br> - rs1_b7_val == 16<br> - rs1_b6_val == -33<br> - rs1_b3_val == 4<br> - rs1_b2_val == -9<br>                                                                         |[0x8000062c]:KABS8 a1, t6<br> [0x80000630]:csrrs t6, vxsat, zero<br> [0x80000634]:sd a1, 224(s1)<br>     |
|  16|[0x80002300]<br>0x080509030321093F|- rs1 : x12<br> - rd : x4<br> - rs1_b7_val == 8<br> - rs1_b2_val == -33<br> - rs1_b1_val == -9<br>                                                                                                 |[0x8000065c]:KABS8 tp, a2<br> [0x80000660]:csrrs a2, vxsat, zero<br> [0x80000664]:sd tp, 240(s1)<br>     |
|  17|[0x80002310]<br>0x0406051102404111|- rs1 : x2<br> - rd : x1<br> - rs1_b7_val == 4<br> - rs1_b3_val == 2<br>                                                                                                                           |[0x8000068c]:KABS8 ra, sp<br> [0x80000690]:csrrs sp, vxsat, zero<br> [0x80000694]:sd ra, 256(s1)<br>     |
|  18|[0x80002320]<br>0x0000000000000000|- rs1 : x0<br> - rd : x19<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>            |[0x800006b4]:KABS8 s3, zero<br> [0x800006b8]:csrrs zero, vxsat, zero<br> [0x800006bc]:sd s3, 272(s1)<br> |
|  19|[0x80002330]<br>0x017F087F3F410908|- rs1 : x24<br> - rd : x8<br> - rs1_b7_val == 1<br> - rs1_b5_val == 8<br> - rs1_b4_val == 127<br> - rs1_b2_val == -65<br>                                                                          |[0x800006dc]:KABS8 fp, s8<br> [0x800006e0]:csrrs s8, vxsat, zero<br> [0x800006e4]:sd fp, 288(s1)<br>     |
|  20|[0x80002340]<br>0x0007054006565507|- rs1 : x20<br> - rd : x3<br> - rs1_b2_val == -86<br> - rs1_b1_val == 85<br>                                                                                                                       |[0x8000070c]:KABS8 gp, s4<br> [0x80000710]:csrrs s4, vxsat, zero<br> [0x80000714]:sd gp, 304(s1)<br>     |
|  21|[0x80002350]<br>0x010A7F405511007F|- rs1 : x7<br> - rd : x29<br> - rs1_b7_val == -1<br> - rs1_b3_val == 85<br>                                                                                                                        |[0x80000734]:KABS8 t4, t2<br> [0x80000738]:csrrs t2, vxsat, zero<br> [0x8000073c]:sd t4, 320(s1)<br>     |
|  22|[0x80002360]<br>0x025506407F05090A|- rs1 : x22<br> - rd : x9<br> - rs1_b6_val == 85<br> - rs1_b4_val == 64<br> - rs1_b3_val == 127<br>                                                                                                |[0x8000076c]:KABS8 s1, s6<br> [0x80000770]:csrrs s6, vxsat, zero<br> [0x80000774]:sd s1, 0(ra)<br>       |
|  23|[0x80002370]<br>0x0209015601070307|- rs1 : x21<br> - rd : x30<br> - rs1_b6_val == -9<br> - rs1_b5_val == 1<br>                                                                                                                        |[0x80000794]:KABS8 t5, s5<br> [0x80000798]:csrrs s5, vxsat, zero<br> [0x8000079c]:sd t5, 16(ra)<br>      |
|  24|[0x80002380]<br>0x1002010555040440|- rs1 : x16<br> - rd : x7<br> - rs1_b6_val == -2<br> - rs1_b4_val == -5<br>                                                                                                                        |[0x800007c4]:KABS8 t2, a6<br> [0x800007c8]:csrrs a6, vxsat, zero<br> [0x800007cc]:sd t2, 32(ra)<br>      |
|  25|[0x80002390]<br>0x0510010907012005|- rs1 : x30<br> - rd : x31<br> - rs1_b6_val == 16<br> - rs1_b2_val == -1<br> - rs1_b1_val == 32<br>                                                                                                |[0x800007f4]:KABS8 t6, t5<br> [0x800007f8]:csrrs t5, vxsat, zero<br> [0x800007fc]:sd t6, 48(ra)<br>      |
|  26|[0x800023a0]<br>0x094104083F40057F|- rs1 : x18<br> - rd : x13<br> - rs1_b4_val == 8<br> - rs1_b1_val == -5<br>                                                                                                                        |[0x8000081c]:KABS8 a3, s2<br> [0x80000820]:csrrs s2, vxsat, zero<br> [0x80000824]:sd a3, 64(ra)<br>      |
|  27|[0x800023b0]<br>0x0705042021020209|- rs1 : x3<br> - rd : x25<br> - rs1_b2_val == 2<br> - rs1_b1_val == -2<br>                                                                                                                         |[0x80000844]:KABS8 s9, gp<br> [0x80000848]:csrrs gp, vxsat, zero<br> [0x8000084c]:sd s9, 80(ra)<br>      |
|  28|[0x800023c0]<br>0x0156015602007F04|- rs1 : x9<br> - rd : x5<br> - rs1_b1_val == -128<br> - rs1_b0_val == 4<br>                                                                                                                        |[0x8000086c]:KABS8 t0, s1<br> [0x80000870]:csrrs s1, vxsat, zero<br> [0x80000874]:sd t0, 96(ra)<br>      |
|  29|[0x800023d0]<br>0x02087F0909561007|- rs1 : x23<br> - rd : x2<br> - rs1_b5_val == -128<br> - rs1_b4_val == -9<br> - rs1_b1_val == 16<br>                                                                                               |[0x8000089c]:KABS8 sp, s7<br> [0x800008a0]:csrrs s7, vxsat, zero<br> [0x800008a4]:sd sp, 112(ra)<br>     |
|  30|[0x800023e0]<br>0x0A01040610030821|- rs1 : x8<br> - rd : x14<br> - rs1_b6_val == -1<br> - rs1_b3_val == 16<br> - rs1_b1_val == 8<br> - rs1_b0_val == -33<br>                                                                          |[0x800008cc]:KABS8 a4, fp<br> [0x800008d0]:csrrs fp, vxsat, zero<br> [0x800008d4]:sd a4, 128(ra)<br>     |
|  31|[0x800023f0]<br>0x0402030407080141|- rs1 : x28<br> - rd : x24<br> - rs1_b6_val == 2<br> - rs1_b1_val == 1<br> - rs1_b0_val == -65<br>                                                                                                 |[0x800008f4]:KABS8 s8, t3<br> [0x800008f8]:csrrs t3, vxsat, zero<br> [0x800008fc]:sd s8, 144(ra)<br>     |
|  32|[0x80002400]<br>0x05100A0801080100|- rs1 : x17<br> - rd : x23<br> - rs1_b3_val == 1<br> - rs1_b1_val == -1<br>                                                                                                                        |[0x8000091c]:KABS8 s7, a7<br> [0x80000920]:csrrs a7, vxsat, zero<br> [0x80000924]:sd s7, 160(ra)<br>     |
|  33|[0x80002410]<br>0x217F065604405656|- rs1_b1_val == -86<br> - rs1_b0_val == -86<br>                                                                                                                                                    |[0x8000094c]:KABS8 t6, t5<br> [0x80000950]:csrrs t5, vxsat, zero<br> [0x80000954]:sd t6, 176(ra)<br>     |
|  34|[0x80002420]<br>0x207F01017F070609|- rs1_b4_val == 1<br> - rs1_b0_val == -9<br>                                                                                                                                                       |[0x80000974]:KABS8 t6, t5<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sd t6, 192(ra)<br>     |
|  35|[0x80002430]<br>0x02407F0740564105|- rs1_b0_val == -5<br>                                                                                                                                                                             |[0x8000099c]:KABS8 t6, t5<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sd t6, 208(ra)<br>     |
|  36|[0x80002440]<br>0x55087F0440400003|- rs1_b0_val == -3<br>                                                                                                                                                                             |[0x800009c4]:KABS8 t6, t5<br> [0x800009c8]:csrrs t5, vxsat, zero<br> [0x800009cc]:sd t6, 224(ra)<br>     |
|  37|[0x80002450]<br>0x0607070401100702|- rs1_b2_val == 16<br> - rs1_b0_val == -2<br>                                                                                                                                                      |[0x800009ec]:KABS8 t6, t5<br> [0x800009f0]:csrrs t5, vxsat, zero<br> [0x800009f4]:sd t6, 240(ra)<br>     |
|  38|[0x80002460]<br>0x0107060341060110|- rs1_b0_val == 16<br>                                                                                                                                                                             |[0x80000a14]:KABS8 t6, t5<br> [0x80000a18]:csrrs t5, vxsat, zero<br> [0x80000a1c]:sd t6, 256(ra)<br>     |
|  39|[0x80002470]<br>0x5556070509552108|- rs1_b2_val == 85<br> - rs1_b0_val == 8<br>                                                                                                                                                       |[0x80000a44]:KABS8 t6, t5<br> [0x80000a48]:csrrs t5, vxsat, zero<br> [0x80000a4c]:sd t6, 272(ra)<br>     |
|  40|[0x80002480]<br>0x0656080308070101|- rs1_b3_val == 8<br> - rs1_b0_val == 1<br>                                                                                                                                                        |[0x80000a6c]:KABS8 t6, t5<br> [0x80000a70]:csrrs t5, vxsat, zero<br> [0x80000a74]:sd t6, 288(ra)<br>     |
|  41|[0x80002490]<br>0x090309217F047F7F|- rs1_b5_val == -9<br> - rs1_b4_val == -33<br>                                                                                                                                                     |[0x80000a94]:KABS8 t6, t5<br> [0x80000a98]:csrrs t5, vxsat, zero<br> [0x80000a9c]:sd t6, 304(ra)<br>     |
|  42|[0x800024a0]<br>0x0205037F08010701|- rs1_b4_val == -128<br> - rs1_b2_val == 1<br>                                                                                                                                                     |[0x80000abc]:KABS8 t6, t5<br> [0x80000ac0]:csrrs t5, vxsat, zero<br> [0x80000ac4]:sd t6, 320(ra)<br>     |
|  43|[0x800024b0]<br>0x567F010205092103|- rs1_b4_val == 2<br> - rs1_b3_val == -5<br>                                                                                                                                                       |[0x80000aec]:KABS8 t6, t5<br> [0x80000af0]:csrrs t5, vxsat, zero<br> [0x80000af4]:sd t6, 336(ra)<br>     |
|  44|[0x800024c0]<br>0x070110003F050356|- rs1_b5_val == 16<br> - rs1_b2_val == -5<br>                                                                                                                                                      |[0x80000b14]:KABS8 t6, t5<br> [0x80000b18]:csrrs t5, vxsat, zero<br> [0x80000b1c]:sd t6, 352(ra)<br>     |
|  45|[0x800024d0]<br>0x012006010702060A|- rs1_b4_val == -1<br>                                                                                                                                                                             |[0x80000b3c]:KABS8 t6, t5<br> [0x80000b40]:csrrs t5, vxsat, zero<br> [0x80000b44]:sd t6, 368(ra)<br>     |
|  46|[0x800024e0]<br>0x057F060A11050240|- rs1_b3_val == -17<br>                                                                                                                                                                            |[0x80000b64]:KABS8 t6, t5<br> [0x80000b68]:csrrs t5, vxsat, zero<br> [0x80000b6c]:sd t6, 384(ra)<br>     |
|  47|[0x800024f0]<br>0x0756560109401107|- rs1_b5_val == -86<br> - rs1_b3_val == -9<br>                                                                                                                                                     |[0x80000b94]:KABS8 t6, t5<br> [0x80000b98]:csrrs t5, vxsat, zero<br> [0x80000b9c]:sd t6, 400(ra)<br>     |
|  48|[0x80002500]<br>0x0401100720087F05|- rs1_b6_val == 1<br> - rs1_b3_val == 32<br>                                                                                                                                                       |[0x80000bbc]:KABS8 t6, t5<br> [0x80000bc0]:csrrs t5, vxsat, zero<br> [0x80000bc4]:sd t6, 416(ra)<br>     |
|  49|[0x80002510]<br>0x01410908007F4108|- rs1_b2_val == -128<br>                                                                                                                                                                           |[0x80000be4]:KABS8 t6, t5<br> [0x80000be8]:csrrs t5, vxsat, zero<br> [0x80000bec]:sd t6, 432(ra)<br>     |
|  50|[0x80002520]<br>0x2004084003110711|- rs1_b6_val == 4<br>                                                                                                                                                                              |[0x80000c0c]:KABS8 t6, t5<br> [0x80000c10]:csrrs t5, vxsat, zero<br> [0x80000c14]:sd t6, 448(ra)<br>     |
|  51|[0x80002530]<br>0x41007F557F011002|- rs1_b4_val == 85<br>                                                                                                                                                                             |[0x80000c3c]:KABS8 t6, t5<br> [0x80000c40]:csrrs t5, vxsat, zero<br> [0x80000c44]:sd t6, 464(ra)<br>     |
|  52|[0x80002540]<br>0x045656080A7F0309|- rs1_b2_val == 127<br>                                                                                                                                                                            |[0x80000c64]:KABS8 t6, t5<br> [0x80000c68]:csrrs t5, vxsat, zero<br> [0x80000c6c]:sd t6, 480(ra)<br>     |
|  53|[0x80002550]<br>0x010A550507013F41|- rs1_b5_val == 85<br>                                                                                                                                                                             |[0x80000c8c]:KABS8 t6, t5<br> [0x80000c90]:csrrs t5, vxsat, zero<br> [0x80000c94]:sd t6, 496(ra)<br>     |
|  54|[0x80002560]<br>0x093F110A10030605|- rs1_b5_val == -17<br>                                                                                                                                                                            |[0x80000cb4]:KABS8 t6, t5<br> [0x80000cb8]:csrrs t5, vxsat, zero<br> [0x80000cbc]:sd t6, 512(ra)<br>     |
|  55|[0x80002570]<br>0x0609050311400304|- rs1_b5_val == -5<br>                                                                                                                                                                             |[0x80000cdc]:KABS8 t6, t5<br> [0x80000ce0]:csrrs t5, vxsat, zero<br> [0x80000ce4]:sd t6, 528(ra)<br>     |
|  56|[0x80002580]<br>0x0256025603100611|- rs1_b5_val == -2<br>                                                                                                                                                                             |[0x80000d04]:KABS8 t6, t5<br> [0x80000d08]:csrrs t5, vxsat, zero<br> [0x80000d0c]:sd t6, 544(ra)<br>     |
|  57|[0x80002590]<br>0x092110207F080705|- rs1_b2_val == 8<br>                                                                                                                                                                              |[0x80000d2c]:KABS8 t6, t5<br> [0x80000d30]:csrrs t5, vxsat, zero<br> [0x80000d34]:sd t6, 560(ra)<br>     |
|  58|[0x800025a0]<br>0x117F020109550220|- rs1_b5_val == 2<br>                                                                                                                                                                              |[0x80000d5c]:KABS8 t6, t5<br> [0x80000d60]:csrrs t5, vxsat, zero<br> [0x80000d64]:sd t6, 576(ra)<br>     |
|  59|[0x800025b0]<br>0x0207002002205620|- rs1_b7_val == 2<br>                                                                                                                                                                              |[0x80000d8c]:KABS8 t6, t5<br> [0x80000d90]:csrrs t5, vxsat, zero<br> [0x80000d94]:sd t6, 592(ra)<br>     |
|  60|[0x800025c0]<br>0x0404400108065609|- rs1_b5_val == 64<br>                                                                                                                                                                             |[0x80000db4]:KABS8 t6, t5<br> [0x80000db8]:csrrs t5, vxsat, zero<br> [0x80000dbc]:sd t6, 608(ra)<br>     |
|  61|[0x800025d0]<br>0x7F0120107F560106|- rs1_b5_val == 32<br>                                                                                                                                                                             |[0x80000de4]:KABS8 t6, t5<br> [0x80000de8]:csrrs t5, vxsat, zero<br> [0x80000dec]:sd t6, 624(ra)<br>     |
