
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000a10')]      |
| SIG_REGION                | [('0x80002410', '0x80002820', '130 dwords')]      |
| COV_LABELS                | fcvt.d.wu_b26      |
| TEST_NAME                 | /scratch/compliance_fd/temp/riscof_work/d_fcvt.d.wu_b26-01.S/ref.S    |
| Total Number of coverpoints| 133     |
| Total Coverpoints Hit     | 129      |
| Total Signature Updates   | 130      |
| STAT1                     | 65      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 65     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : fcvt.d.wu', 'rs1 : x26', 'rd : f18', 'rs1_val == 0 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003b8]:fcvt.d.wu fs2, s10, rne
	-[0x800003bc]:csrrs a7, fflags, zero
	-[0x800003c0]:fsd fs2, 0(a5)
Current Store : [0x800003c4] : sd a7, 8(a5) -- Store: [0x80002418]:0x0000000000000000




Last Coverpoint : ['rs1 : x17', 'rd : f22', 'rs1_val == 9184267462870993263 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800003dc]:fcvt.d.wu fs6, a7, rne
	-[0x800003e0]:csrrs s5, fflags, zero
	-[0x800003e4]:fsd fs6, 0(s3)
Current Store : [0x800003e8] : sd s5, 8(s3) -- Store: [0x80002428]:0x0000000000000000




Last Coverpoint : ['rs1 : x31', 'rd : f19', 'rs1_val == 3035559518675506972 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000400]:fcvt.d.wu fs3, t6, rne
	-[0x80000404]:csrrs a7, fflags, zero
	-[0x80000408]:fsd fs3, 0(a5)
Current Store : [0x8000040c] : sd a7, 8(a5) -- Store: [0x80002438]:0x0000000000000000




Last Coverpoint : ['rs1 : x10', 'rd : f3', 'rs1_val == 2086309477244717835 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000418]:fcvt.d.wu ft3, a0, rne
	-[0x8000041c]:csrrs a7, fflags, zero
	-[0x80000420]:fsd ft3, 16(a5)
Current Store : [0x80000424] : sd a7, 24(a5) -- Store: [0x80002448]:0x0000000000000000




Last Coverpoint : ['rs1 : x2', 'rd : f29', 'rs1_val == 878257878219487117 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000430]:fcvt.d.wu ft9, sp, rne
	-[0x80000434]:csrrs a7, fflags, zero
	-[0x80000438]:fsd ft9, 32(a5)
Current Store : [0x8000043c] : sd a7, 40(a5) -- Store: [0x80002458]:0x0000000000000000




Last Coverpoint : ['rs1 : x19', 'rd : f17', 'rs1_val == 428092830716901554 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000448]:fcvt.d.wu fa7, s3, rne
	-[0x8000044c]:csrrs a7, fflags, zero
	-[0x80000450]:fsd fa7, 48(a5)
Current Store : [0x80000454] : sd a7, 56(a5) -- Store: [0x80002468]:0x0000000000000000




Last Coverpoint : ['rs1 : x30', 'rd : f31', 'rs1_val == 156703057381110404 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000460]:fcvt.d.wu ft11, t5, rne
	-[0x80000464]:csrrs a7, fflags, zero
	-[0x80000468]:fsd ft11, 64(a5)
Current Store : [0x8000046c] : sd a7, 72(a5) -- Store: [0x80002478]:0x0000000000000000




Last Coverpoint : ['rs1 : x8', 'rd : f11', 'rs1_val == 104291213792325832 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000478]:fcvt.d.wu fa1, fp, rne
	-[0x8000047c]:csrrs a7, fflags, zero
	-[0x80000480]:fsd fa1, 80(a5)
Current Store : [0x80000484] : sd a7, 88(a5) -- Store: [0x80002488]:0x0000000000000000




Last Coverpoint : ['rs1 : x20', 'rd : f5', 'rs1_val == 59668294213987868 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000490]:fcvt.d.wu ft5, s4, rne
	-[0x80000494]:csrrs a7, fflags, zero
	-[0x80000498]:fsd ft5, 96(a5)
Current Store : [0x8000049c] : sd a7, 104(a5) -- Store: [0x80002498]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rd : f12', 'rs1_val == 24358691315317906 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004a8]:fcvt.d.wu fa2, s7, rne
	-[0x800004ac]:csrrs a7, fflags, zero
	-[0x800004b0]:fsd fa2, 112(a5)
Current Store : [0x800004b4] : sd a7, 120(a5) -- Store: [0x800024a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x11', 'rd : f4', 'rs1_val == 12147253371253868 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004c0]:fcvt.d.wu ft4, a1, rne
	-[0x800004c4]:csrrs a7, fflags, zero
	-[0x800004c8]:fsd ft4, 128(a5)
Current Store : [0x800004cc] : sd a7, 136(a5) -- Store: [0x800024b8]:0x0000000000000000




Last Coverpoint : ['rs1 : x16', 'rd : f6', 'rs1_val == 7228908657904184 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800004e4]:fcvt.d.wu ft6, a6, rne
	-[0x800004e8]:csrrs s5, fflags, zero
	-[0x800004ec]:fsd ft6, 0(s3)
Current Store : [0x800004f0] : sd s5, 8(s3) -- Store: [0x800024c8]:0x0000000000000000




Last Coverpoint : ['rs1 : x13', 'rd : f15', 'rs1_val == 3454382579804098 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000508]:fcvt.d.wu fa5, a3, rne
	-[0x8000050c]:csrrs a7, fflags, zero
	-[0x80000510]:fsd fa5, 0(a5)
Current Store : [0x80000514] : sd a7, 8(a5) -- Store: [0x800024d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x27', 'rd : f23', 'rs1_val == 1449063015970349 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000520]:fcvt.d.wu fs7, s11, rne
	-[0x80000524]:csrrs a7, fflags, zero
	-[0x80000528]:fsd fs7, 16(a5)
Current Store : [0x8000052c] : sd a7, 24(a5) -- Store: [0x800024e8]:0x0000000000000000




Last Coverpoint : ['rs1 : x0', 'rd : f28']
Last Code Sequence : 
	-[0x80000538]:fcvt.d.wu ft8, zero, rne
	-[0x8000053c]:csrrs a7, fflags, zero
	-[0x80000540]:fsd ft8, 32(a5)
Current Store : [0x80000544] : sd a7, 40(a5) -- Store: [0x800024f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x15', 'rd : f24', 'rs1_val == 477767642386861 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x8000055c]:fcvt.d.wu fs8, a5, rne
	-[0x80000560]:csrrs s5, fflags, zero
	-[0x80000564]:fsd fs8, 0(s3)
Current Store : [0x80000568] : sd s5, 8(s3) -- Store: [0x80002508]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rd : f9', 'rs1_val == 194479587133174 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000580]:fcvt.d.wu fs1, a4, rne
	-[0x80000584]:csrrs a7, fflags, zero
	-[0x80000588]:fsd fs1, 0(a5)
Current Store : [0x8000058c] : sd a7, 8(a5) -- Store: [0x80002518]:0x0000000000000000




Last Coverpoint : ['rs1 : x21', 'rd : f8', 'rs1_val == 132508745935081 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000598]:fcvt.d.wu fs0, s5, rne
	-[0x8000059c]:csrrs a7, fflags, zero
	-[0x800005a0]:fsd fs0, 16(a5)
Current Store : [0x800005a4] : sd a7, 24(a5) -- Store: [0x80002528]:0x0000000000000000




Last Coverpoint : ['rs1 : x7', 'rd : f25', 'rs1_val == 45718214482007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005b0]:fcvt.d.wu fs9, t2, rne
	-[0x800005b4]:csrrs a7, fflags, zero
	-[0x800005b8]:fsd fs9, 32(a5)
Current Store : [0x800005bc] : sd a7, 40(a5) -- Store: [0x80002538]:0x0000000000000000




Last Coverpoint : ['rs1 : x29', 'rd : f26', 'rs1_val == 31117680965175 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005c8]:fcvt.d.wu fs10, t4, rne
	-[0x800005cc]:csrrs a7, fflags, zero
	-[0x800005d0]:fsd fs10, 48(a5)
Current Store : [0x800005d4] : sd a7, 56(a5) -- Store: [0x80002548]:0x0000000000000000




Last Coverpoint : ['rs1 : x3', 'rd : f27', 'rs1_val == 10221399934292 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005e0]:fcvt.d.wu fs11, gp, rne
	-[0x800005e4]:csrrs a7, fflags, zero
	-[0x800005e8]:fsd fs11, 64(a5)
Current Store : [0x800005ec] : sd a7, 72(a5) -- Store: [0x80002558]:0x0000000000000000




Last Coverpoint : ['rs1 : x28', 'rd : f0', 'rs1_val == 5032232323694 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800005f8]:fcvt.d.wu ft0, t3, rne
	-[0x800005fc]:csrrs a7, fflags, zero
	-[0x80000600]:fsd ft0, 80(a5)
Current Store : [0x80000604] : sd a7, 88(a5) -- Store: [0x80002568]:0x0000000000000000




Last Coverpoint : ['rs1 : x12', 'rd : f1', 'rs1_val == 3524006078498 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000610]:fcvt.d.wu ft1, a2, rne
	-[0x80000614]:csrrs a7, fflags, zero
	-[0x80000618]:fsd ft1, 96(a5)
Current Store : [0x8000061c] : sd a7, 104(a5) -- Store: [0x80002578]:0x0000000000000000




Last Coverpoint : ['rs1 : x22', 'rd : f10', 'rs1_val == 1168389695644 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000628]:fcvt.d.wu fa0, s6, rne
	-[0x8000062c]:csrrs a7, fflags, zero
	-[0x80000630]:fsd fa0, 112(a5)
Current Store : [0x80000634] : sd a7, 120(a5) -- Store: [0x80002588]:0x0000000000000000




Last Coverpoint : ['rs1 : x6', 'rd : f7', 'rs1_val == 813522083007 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000640]:fcvt.d.wu ft7, t1, rne
	-[0x80000644]:csrrs a7, fflags, zero
	-[0x80000648]:fsd ft7, 128(a5)
Current Store : [0x8000064c] : sd a7, 136(a5) -- Store: [0x80002598]:0x0000000000000000




Last Coverpoint : ['rs1 : x9', 'rd : f30', 'rs1_val == 453482173015 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000658]:fcvt.d.wu ft10, s1, rne
	-[0x8000065c]:csrrs a7, fflags, zero
	-[0x80000660]:fsd ft10, 144(a5)
Current Store : [0x80000664] : sd a7, 152(a5) -- Store: [0x800025a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x18', 'rd : f21', 'rs1_val == 268160711063 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000670]:fcvt.d.wu fs5, s2, rne
	-[0x80000674]:csrrs a7, fflags, zero
	-[0x80000678]:fsd fs5, 160(a5)
Current Store : [0x8000067c] : sd a7, 168(a5) -- Store: [0x800025b8]:0x0000000000000000




Last Coverpoint : ['rs1 : x4', 'rd : f13', 'rs1_val == 131206879410 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000688]:fcvt.d.wu fa3, tp, rne
	-[0x8000068c]:csrrs a7, fflags, zero
	-[0x80000690]:fsd fa3, 176(a5)
Current Store : [0x80000694] : sd a7, 184(a5) -- Store: [0x800025c8]:0x0000000000000000




Last Coverpoint : ['rs1 : x1', 'rd : f14', 'rs1_val == 51102363774 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006a0]:fcvt.d.wu fa4, ra, rne
	-[0x800006a4]:csrrs a7, fflags, zero
	-[0x800006a8]:fsd fa4, 192(a5)
Current Store : [0x800006ac] : sd a7, 200(a5) -- Store: [0x800025d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x5', 'rd : f2', 'rs1_val == 22050244097 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006b8]:fcvt.d.wu ft2, t0, rne
	-[0x800006bc]:csrrs a7, fflags, zero
	-[0x800006c0]:fsd ft2, 208(a5)
Current Store : [0x800006c4] : sd a7, 216(a5) -- Store: [0x800025e8]:0x0000000000000000




Last Coverpoint : ['rs1 : x25', 'rd : f20', 'rs1_val == 8607351303 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006d0]:fcvt.d.wu fs4, s9, rne
	-[0x800006d4]:csrrs a7, fflags, zero
	-[0x800006d8]:fsd fs4, 224(a5)
Current Store : [0x800006dc] : sd a7, 232(a5) -- Store: [0x800025f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x24', 'rd : f16', 'rs1_val == 6929185936 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800006e8]:fcvt.d.wu fa6, s8, rne
	-[0x800006ec]:csrrs a7, fflags, zero
	-[0x800006f0]:fsd fa6, 240(a5)
Current Store : [0x800006f4] : sd a7, 248(a5) -- Store: [0x80002608]:0x0000000000000000




Last Coverpoint : ['rs1_val == 4035756470 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000700]:fcvt.d.wu fa1, a0, rne
	-[0x80000704]:csrrs a7, fflags, zero
	-[0x80000708]:fsd fa1, 256(a5)
Current Store : [0x8000070c] : sd a7, 264(a5) -- Store: [0x80002618]:0x0000000000000000




Last Coverpoint : ['rs1_val == 1587807073 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000718]:fcvt.d.wu fa1, a0, rne
	-[0x8000071c]:csrrs a7, fflags, zero
	-[0x80000720]:fsd fa1, 272(a5)
Current Store : [0x80000724] : sd a7, 280(a5) -- Store: [0x80002628]:0x0000000000000000




Last Coverpoint : ['rs1_val == 1027494066 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000730]:fcvt.d.wu fa1, a0, rne
	-[0x80000734]:csrrs a7, fflags, zero
	-[0x80000738]:fsd fa1, 288(a5)
Current Store : [0x8000073c] : sd a7, 296(a5) -- Store: [0x80002638]:0x0000000000000000




Last Coverpoint : ['rs1_val == 339827553 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000748]:fcvt.d.wu fa1, a0, rne
	-[0x8000074c]:csrrs a7, fflags, zero
	-[0x80000750]:fsd fa1, 304(a5)
Current Store : [0x80000754] : sd a7, 312(a5) -- Store: [0x80002648]:0x0000000000000000




Last Coverpoint : ['rs1_val == 231549045 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000760]:fcvt.d.wu fa1, a0, rne
	-[0x80000764]:csrrs a7, fflags, zero
	-[0x80000768]:fsd fa1, 320(a5)
Current Store : [0x8000076c] : sd a7, 328(a5) -- Store: [0x80002658]:0x0000000000000000




Last Coverpoint : ['rs1_val == 107790943 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000778]:fcvt.d.wu fa1, a0, rne
	-[0x8000077c]:csrrs a7, fflags, zero
	-[0x80000780]:fsd fa1, 336(a5)
Current Store : [0x80000784] : sd a7, 344(a5) -- Store: [0x80002668]:0x0000000000000000




Last Coverpoint : ['rs1_val == 45276376 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000790]:fcvt.d.wu fa1, a0, rne
	-[0x80000794]:csrrs a7, fflags, zero
	-[0x80000798]:fsd fa1, 352(a5)
Current Store : [0x8000079c] : sd a7, 360(a5) -- Store: [0x80002678]:0x0000000000000000




Last Coverpoint : ['rs1_val == 32105925 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007a8]:fcvt.d.wu fa1, a0, rne
	-[0x800007ac]:csrrs a7, fflags, zero
	-[0x800007b0]:fsd fa1, 368(a5)
Current Store : [0x800007b4] : sd a7, 376(a5) -- Store: [0x80002688]:0x0000000000000000




Last Coverpoint : ['rs1_val == 12789625 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007c0]:fcvt.d.wu fa1, a0, rne
	-[0x800007c4]:csrrs a7, fflags, zero
	-[0x800007c8]:fsd fa1, 384(a5)
Current Store : [0x800007cc] : sd a7, 392(a5) -- Store: [0x80002698]:0x0000000000000000




Last Coverpoint : ['rs1_val == 6573466 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007d8]:fcvt.d.wu fa1, a0, rne
	-[0x800007dc]:csrrs a7, fflags, zero
	-[0x800007e0]:fsd fa1, 400(a5)
Current Store : [0x800007e4] : sd a7, 408(a5) -- Store: [0x800026a8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 3864061 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800007f0]:fcvt.d.wu fa1, a0, rne
	-[0x800007f4]:csrrs a7, fflags, zero
	-[0x800007f8]:fsd fa1, 416(a5)
Current Store : [0x800007fc] : sd a7, 424(a5) -- Store: [0x800026b8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 1848861 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000808]:fcvt.d.wu fa1, a0, rne
	-[0x8000080c]:csrrs a7, fflags, zero
	-[0x80000810]:fsd fa1, 432(a5)
Current Store : [0x80000814] : sd a7, 440(a5) -- Store: [0x800026c8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 896618 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000820]:fcvt.d.wu fa1, a0, rne
	-[0x80000824]:csrrs a7, fflags, zero
	-[0x80000828]:fsd fa1, 448(a5)
Current Store : [0x8000082c] : sd a7, 456(a5) -- Store: [0x800026d8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 334857 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000838]:fcvt.d.wu fa1, a0, rne
	-[0x8000083c]:csrrs a7, fflags, zero
	-[0x80000840]:fsd fa1, 464(a5)
Current Store : [0x80000844] : sd a7, 472(a5) -- Store: [0x800026e8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 241276 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000850]:fcvt.d.wu fa1, a0, rne
	-[0x80000854]:csrrs a7, fflags, zero
	-[0x80000858]:fsd fa1, 480(a5)
Current Store : [0x8000085c] : sd a7, 488(a5) -- Store: [0x800026f8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 71376 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000868]:fcvt.d.wu fa1, a0, rne
	-[0x8000086c]:csrrs a7, fflags, zero
	-[0x80000870]:fsd fa1, 496(a5)
Current Store : [0x80000874] : sd a7, 504(a5) -- Store: [0x80002708]:0x0000000000000000




Last Coverpoint : ['rs1_val == 56436 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000880]:fcvt.d.wu fa1, a0, rne
	-[0x80000884]:csrrs a7, fflags, zero
	-[0x80000888]:fsd fa1, 512(a5)
Current Store : [0x8000088c] : sd a7, 520(a5) -- Store: [0x80002718]:0x0000000000000000




Last Coverpoint : ['rs1_val == 24575 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000898]:fcvt.d.wu fa1, a0, rne
	-[0x8000089c]:csrrs a7, fflags, zero
	-[0x800008a0]:fsd fa1, 528(a5)
Current Store : [0x800008a4] : sd a7, 536(a5) -- Store: [0x80002728]:0x0000000000000000




Last Coverpoint : ['rs1_val == 9438 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008b0]:fcvt.d.wu fa1, a0, rne
	-[0x800008b4]:csrrs a7, fflags, zero
	-[0x800008b8]:fsd fa1, 544(a5)
Current Store : [0x800008bc] : sd a7, 552(a5) -- Store: [0x80002738]:0x0000000000000000




Last Coverpoint : ['rs1_val == 6781 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008c8]:fcvt.d.wu fa1, a0, rne
	-[0x800008cc]:csrrs a7, fflags, zero
	-[0x800008d0]:fsd fa1, 560(a5)
Current Store : [0x800008d4] : sd a7, 568(a5) -- Store: [0x80002748]:0x0000000000000000




Last Coverpoint : ['rs1_val == 4055 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008e0]:fcvt.d.wu fa1, a0, rne
	-[0x800008e4]:csrrs a7, fflags, zero
	-[0x800008e8]:fsd fa1, 576(a5)
Current Store : [0x800008ec] : sd a7, 584(a5) -- Store: [0x80002758]:0x0000000000000000




Last Coverpoint : ['rs1_val == 1094 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800008f8]:fcvt.d.wu fa1, a0, rne
	-[0x800008fc]:csrrs a7, fflags, zero
	-[0x80000900]:fsd fa1, 592(a5)
Current Store : [0x80000904] : sd a7, 600(a5) -- Store: [0x80002768]:0x0000000000000000




Last Coverpoint : ['rs1_val == 676 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000910]:fcvt.d.wu fa1, a0, rne
	-[0x80000914]:csrrs a7, fflags, zero
	-[0x80000918]:fsd fa1, 608(a5)
Current Store : [0x8000091c] : sd a7, 616(a5) -- Store: [0x80002778]:0x0000000000000000




Last Coverpoint : ['rs1_val == 398 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000928]:fcvt.d.wu fa1, a0, rne
	-[0x8000092c]:csrrs a7, fflags, zero
	-[0x80000930]:fsd fa1, 624(a5)
Current Store : [0x80000934] : sd a7, 632(a5) -- Store: [0x80002788]:0x0000000000000000




Last Coverpoint : ['rs1_val == 253 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000940]:fcvt.d.wu fa1, a0, rne
	-[0x80000944]:csrrs a7, fflags, zero
	-[0x80000948]:fsd fa1, 640(a5)
Current Store : [0x8000094c] : sd a7, 648(a5) -- Store: [0x80002798]:0x0000000000000000




Last Coverpoint : ['rs1_val == 123 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000958]:fcvt.d.wu fa1, a0, rne
	-[0x8000095c]:csrrs a7, fflags, zero
	-[0x80000960]:fsd fa1, 656(a5)
Current Store : [0x80000964] : sd a7, 664(a5) -- Store: [0x800027a8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 45 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000970]:fcvt.d.wu fa1, a0, rne
	-[0x80000974]:csrrs a7, fflags, zero
	-[0x80000978]:fsd fa1, 672(a5)
Current Store : [0x8000097c] : sd a7, 680(a5) -- Store: [0x800027b8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 16 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000988]:fcvt.d.wu fa1, a0, rne
	-[0x8000098c]:csrrs a7, fflags, zero
	-[0x80000990]:fsd fa1, 688(a5)
Current Store : [0x80000994] : sd a7, 696(a5) -- Store: [0x800027c8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 15 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009a0]:fcvt.d.wu fa1, a0, rne
	-[0x800009a4]:csrrs a7, fflags, zero
	-[0x800009a8]:fsd fa1, 704(a5)
Current Store : [0x800009ac] : sd a7, 712(a5) -- Store: [0x800027d8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 7 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009b8]:fcvt.d.wu fa1, a0, rne
	-[0x800009bc]:csrrs a7, fflags, zero
	-[0x800009c0]:fsd fa1, 720(a5)
Current Store : [0x800009c4] : sd a7, 728(a5) -- Store: [0x800027e8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 2 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009d0]:fcvt.d.wu fa1, a0, rne
	-[0x800009d4]:csrrs a7, fflags, zero
	-[0x800009d8]:fsd fa1, 736(a5)
Current Store : [0x800009dc] : sd a7, 744(a5) -- Store: [0x800027f8]:0x0000000000000000




Last Coverpoint : ['rs1_val == 1 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x800009e8]:fcvt.d.wu fa1, a0, rne
	-[0x800009ec]:csrrs a7, fflags, zero
	-[0x800009f0]:fsd fa1, 752(a5)
Current Store : [0x800009f4] : sd a7, 760(a5) -- Store: [0x80002808]:0x0000000000000000




Last Coverpoint : ['rs1_val == 1064659746632576 and rm_val == 0  #nosat']
Last Code Sequence : 
	-[0x80000a00]:fcvt.d.wu fa1, a0, rne
	-[0x80000a04]:csrrs a7, fflags, zero
	-[0x80000a08]:fsd fa1, 768(a5)
Current Store : [0x80000a0c] : sd a7, 776(a5) -- Store: [0x80002818]:0x0000000000000000





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

|s.no|            signature             |                                            coverpoints                                            |                                                        code                                                        |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002410]<br>0xDF56FF76DF56FF76|- opcode : fcvt.d.wu<br> - rs1 : x26<br> - rd : f18<br> - rs1_val == 0 and rm_val == 0  #nosat<br> |[0x800003b8]:fcvt.d.wu fs2, s10, rne<br> [0x800003bc]:csrrs a7, fflags, zero<br> [0x800003c0]:fsd fs2, 0(a5)<br>    |
|   2|[0x80002420]<br>0x6DF56FF76DF56FF7|- rs1 : x17<br> - rd : f22<br> - rs1_val == 9184267462870993263 and rm_val == 0  #nosat<br>        |[0x800003dc]:fcvt.d.wu fs6, a7, rne<br> [0x800003e0]:csrrs s5, fflags, zero<br> [0x800003e4]:fsd fs6, 0(s3)<br>     |
|   3|[0x80002430]<br>0x0000000080002420|- rs1 : x31<br> - rd : f19<br> - rs1_val == 3035559518675506972 and rm_val == 0  #nosat<br>        |[0x80000400]:fcvt.d.wu fs3, t6, rne<br> [0x80000404]:csrrs a7, fflags, zero<br> [0x80000408]:fsd fs3, 0(a5)<br>     |
|   4|[0x80002440]<br>0x0000000A00000000|- rs1 : x10<br> - rd : f3<br> - rs1_val == 2086309477244717835 and rm_val == 0  #nosat<br>         |[0x80000418]:fcvt.d.wu ft3, a0, rne<br> [0x8000041c]:csrrs a7, fflags, zero<br> [0x80000420]:fsd ft3, 16(a5)<br>    |
|   5|[0x80002450]<br>0xEEDBEADFEEDBEADF|- rs1 : x2<br> - rd : f29<br> - rs1_val == 878257878219487117 and rm_val == 0  #nosat<br>          |[0x80000430]:fcvt.d.wu ft9, sp, rne<br> [0x80000434]:csrrs a7, fflags, zero<br> [0x80000438]:fsd ft9, 32(a5)<br>    |
|   6|[0x80002460]<br>0x0000000000000000|- rs1 : x19<br> - rd : f17<br> - rs1_val == 428092830716901554 and rm_val == 0  #nosat<br>         |[0x80000448]:fcvt.d.wu fa7, s3, rne<br> [0x8000044c]:csrrs a7, fflags, zero<br> [0x80000450]:fsd fa7, 48(a5)<br>    |
|   7|[0x80002470]<br>0x2A20794C9535971C|- rs1 : x30<br> - rd : f31<br> - rs1_val == 156703057381110404 and rm_val == 0  #nosat<br>         |[0x80000460]:fcvt.d.wu ft11, t5, rne<br> [0x80000464]:csrrs a7, fflags, zero<br> [0x80000468]:fsd ft11, 64(a5)<br>  |
|   8|[0x80002480]<br>0xAB7FBB6FAB7FBB6F|- rs1 : x8<br> - rd : f11<br> - rs1_val == 104291213792325832 and rm_val == 0  #nosat<br>          |[0x80000478]:fcvt.d.wu fa1, fp, rne<br> [0x8000047c]:csrrs a7, fflags, zero<br> [0x80000480]:fsd fa1, 80(a5)<br>    |
|   9|[0x80002490]<br>0x0000000080000390|- rs1 : x20<br> - rd : f5<br> - rs1_val == 59668294213987868 and rm_val == 0  #nosat<br>           |[0x80000490]:fcvt.d.wu ft5, s4, rne<br> [0x80000494]:csrrs a7, fflags, zero<br> [0x80000498]:fsd ft5, 96(a5)<br>    |
|  10|[0x800024a0]<br>0xD5BFDDB7D5BFDDB7|- rs1 : x23<br> - rd : f12<br> - rs1_val == 24358691315317906 and rm_val == 0  #nosat<br>          |[0x800004a8]:fcvt.d.wu fa2, s7, rne<br> [0x800004ac]:csrrs a7, fflags, zero<br> [0x800004b0]:fsd fa2, 112(a5)<br>   |
|  11|[0x800024b0]<br>0xBFDDB7D5BFDDB7D5|- rs1 : x11<br> - rd : f4<br> - rs1_val == 12147253371253868 and rm_val == 0  #nosat<br>           |[0x800004c0]:fcvt.d.wu ft4, a1, rne<br> [0x800004c4]:csrrs a7, fflags, zero<br> [0x800004c8]:fsd ft4, 128(a5)<br>   |
|  12|[0x800024c0]<br>0x0000000080002000|- rs1 : x16<br> - rd : f6<br> - rs1_val == 7228908657904184 and rm_val == 0  #nosat<br>            |[0x800004e4]:fcvt.d.wu ft6, a6, rne<br> [0x800004e8]:csrrs s5, fflags, zero<br> [0x800004ec]:fsd ft6, 0(s3)<br>     |
|  13|[0x800024d0]<br>0x00000000800024D0|- rs1 : x13<br> - rd : f15<br> - rs1_val == 3454382579804098 and rm_val == 0  #nosat<br>           |[0x80000508]:fcvt.d.wu fa5, a3, rne<br> [0x8000050c]:csrrs a7, fflags, zero<br> [0x80000510]:fsd fa5, 0(a5)<br>     |
|  14|[0x800024e0]<br>0x00568A19C70AFC92|- rs1 : x27<br> - rd : f23<br> - rs1_val == 1449063015970349 and rm_val == 0  #nosat<br>           |[0x80000520]:fcvt.d.wu fs7, s11, rne<br> [0x80000524]:csrrs a7, fflags, zero<br> [0x80000528]:fsd fs7, 16(a5)<br>   |
|  15|[0x800024f0]<br>0xDDB7D5BFDDB7D5BF|- rs1 : x0<br> - rd : f28<br>                                                                      |[0x80000538]:fcvt.d.wu ft8, zero, rne<br> [0x8000053c]:csrrs a7, fflags, zero<br> [0x80000540]:fsd ft8, 32(a5)<br>  |
|  16|[0x80002500]<br>0xDB7D5BFDDB7D5BFD|- rs1 : x15<br> - rd : f24<br> - rs1_val == 477767642386861 and rm_val == 0  #nosat<br>            |[0x8000055c]:fcvt.d.wu fs8, a5, rne<br> [0x80000560]:csrrs s5, fflags, zero<br> [0x80000564]:fsd fs8, 0(s3)<br>     |
|  17|[0x80002510]<br>0xADFEEDBEADFEEDBE|- rs1 : x14<br> - rd : f9<br> - rs1_val == 194479587133174 and rm_val == 0  #nosat<br>             |[0x80000580]:fcvt.d.wu fs1, a4, rne<br> [0x80000584]:csrrs a7, fflags, zero<br> [0x80000588]:fsd fs1, 0(a5)<br>     |
|  18|[0x80002520]<br>0x0172844E6F4930C8|- rs1 : x21<br> - rd : f8<br> - rs1_val == 132508745935081 and rm_val == 0  #nosat<br>             |[0x80000598]:fcvt.d.wu fs0, s5, rne<br> [0x8000059c]:csrrs a7, fflags, zero<br> [0x800005a0]:fsd fs0, 16(a5)<br>    |
|  19|[0x80002530]<br>0xEDBEADFEEDBEADFE|- rs1 : x7<br> - rd : f25<br> - rs1_val == 45718214482007 and rm_val == 0  #nosat<br>              |[0x800005b0]:fcvt.d.wu fs9, t2, rne<br> [0x800005b4]:csrrs a7, fflags, zero<br> [0x800005b8]:fsd fs9, 32(a5)<br>    |
|  20|[0x80002540]<br>0x0000000000000000|- rs1 : x29<br> - rd : f26<br> - rs1_val == 31117680965175 and rm_val == 0  #nosat<br>             |[0x800005c8]:fcvt.d.wu fs10, t4, rne<br> [0x800005cc]:csrrs a7, fflags, zero<br> [0x800005d0]:fsd fs10, 48(a5)<br>  |
|  21|[0x80002550]<br>0x000525EA4652F62D|- rs1 : x3<br> - rd : f27<br> - rs1_val == 10221399934292 and rm_val == 0  #nosat<br>              |[0x800005e0]:fcvt.d.wu fs11, gp, rne<br> [0x800005e4]:csrrs a7, fflags, zero<br> [0x800005e8]:fsd fs11, 64(a5)<br>  |
|  22|[0x80002560]<br>0x0000000000000000|- rs1 : x28<br> - rd : f0<br> - rs1_val == 5032232323694 and rm_val == 0  #nosat<br>               |[0x800005f8]:fcvt.d.wu ft0, t3, rne<br> [0x800005fc]:csrrs a7, fflags, zero<br> [0x80000600]:fsd ft0, 80(a5)<br>    |
|  23|[0x80002570]<br>0xFEEDBEADFEEDBEAD|- rs1 : x12<br> - rd : f1<br> - rs1_val == 3524006078498 and rm_val == 0  #nosat<br>               |[0x80000610]:fcvt.d.wu ft1, a2, rne<br> [0x80000614]:csrrs a7, fflags, zero<br> [0x80000618]:fsd ft1, 96(a5)<br>    |
|  24|[0x80002580]<br>0x1CF40F6A72B3CB0B|- rs1 : x22<br> - rd : f10<br> - rs1_val == 1168389695644 and rm_val == 0  #nosat<br>              |[0x80000628]:fcvt.d.wu fa0, s6, rne<br> [0x8000062c]:csrrs a7, fflags, zero<br> [0x80000630]:fsd fa0, 112(a5)<br>   |
|  25|[0x80002590]<br>0x0000299499EF1857|- rs1 : x6<br> - rd : f7<br> - rs1_val == 813522083007 and rm_val == 0  #nosat<br>                 |[0x80000640]:fcvt.d.wu ft7, t1, rne<br> [0x80000644]:csrrs a7, fflags, zero<br> [0x80000648]:fsd ft7, 128(a5)<br>   |
|  26|[0x800025a0]<br>0x022CB899B66B3284|- rs1 : x9<br> - rd : f30<br> - rs1_val == 453482173015 and rm_val == 0  #nosat<br>                |[0x80000658]:fcvt.d.wu ft10, s1, rne<br> [0x8000065c]:csrrs a7, fflags, zero<br> [0x80000660]:fsd ft10, 144(a5)<br> |
|  27|[0x800025b0]<br>0x0000788418BB28E9|- rs1 : x18<br> - rd : f21<br> - rs1_val == 268160711063 and rm_val == 0  #nosat<br>               |[0x80000670]:fcvt.d.wu fs5, s2, rne<br> [0x80000674]:csrrs a7, fflags, zero<br> [0x80000678]:fsd fs5, 160(a5)<br>   |
|  28|[0x800025c0]<br>0x000C45BE1E9667C2|- rs1 : x4<br> - rd : f13<br> - rs1_val == 131206879410 and rm_val == 0  #nosat<br>                |[0x80000688]:fcvt.d.wu fa3, tp, rne<br> [0x8000068c]:csrrs a7, fflags, zero<br> [0x80000690]:fsd fa3, 176(a5)<br>   |
|  29|[0x800025d0]<br>0x0000B0E0CEB506F6|- rs1 : x1<br> - rd : f14<br> - rs1_val == 51102363774 and rm_val == 0  #nosat<br>                 |[0x800006a0]:fcvt.d.wu fa4, ra, rne<br> [0x800006a4]:csrrs a7, fflags, zero<br> [0x800006a8]:fsd fa4, 192(a5)<br>   |
|  30|[0x800025e0]<br>0x0C3032E31475F78D|- rs1 : x5<br> - rd : f2<br> - rs1_val == 22050244097 and rm_val == 0  #nosat<br>                  |[0x800006b8]:fcvt.d.wu ft2, t0, rne<br> [0x800006bc]:csrrs a7, fflags, zero<br> [0x800006c0]:fsd ft2, 208(a5)<br>   |
|  31|[0x800025f0]<br>0x0000000080002010|- rs1 : x25<br> - rd : f20<br> - rs1_val == 8607351303 and rm_val == 0  #nosat<br>                 |[0x800006d0]:fcvt.d.wu fs4, s9, rne<br> [0x800006d4]:csrrs a7, fflags, zero<br> [0x800006d8]:fsd fs4, 224(a5)<br>   |
|  32|[0x80002600]<br>0x0000000080002010|- rs1 : x24<br> - rd : f16<br> - rs1_val == 6929185936 and rm_val == 0  #nosat<br>                 |[0x800006e8]:fcvt.d.wu fa6, s8, rne<br> [0x800006ec]:csrrs a7, fflags, zero<br> [0x800006f0]:fsd fa6, 240(a5)<br>   |
|  33|[0x80002610]<br>0x002B27DCD230B46C|- rs1_val == 4035756470 and rm_val == 0  #nosat<br>                                                |[0x80000700]:fcvt.d.wu fa1, a0, rne<br> [0x80000704]:csrrs a7, fflags, zero<br> [0x80000708]:fsd fa1, 256(a5)<br>   |
|  34|[0x80002620]<br>0x002B27DCD230B46C|- rs1_val == 1587807073 and rm_val == 0  #nosat<br>                                                |[0x80000718]:fcvt.d.wu fa1, a0, rne<br> [0x8000071c]:csrrs a7, fflags, zero<br> [0x80000720]:fsd fa1, 272(a5)<br>   |
|  35|[0x80002630]<br>0x002B27DCD230B46C|- rs1_val == 1027494066 and rm_val == 0  #nosat<br>                                                |[0x80000730]:fcvt.d.wu fa1, a0, rne<br> [0x80000734]:csrrs a7, fflags, zero<br> [0x80000738]:fsd fa1, 288(a5)<br>   |
|  36|[0x80002640]<br>0x002B27DCD230B46C|- rs1_val == 339827553 and rm_val == 0  #nosat<br>                                                 |[0x80000748]:fcvt.d.wu fa1, a0, rne<br> [0x8000074c]:csrrs a7, fflags, zero<br> [0x80000750]:fsd fa1, 304(a5)<br>   |
|  37|[0x80002650]<br>0x002B27DCD230B46C|- rs1_val == 231549045 and rm_val == 0  #nosat<br>                                                 |[0x80000760]:fcvt.d.wu fa1, a0, rne<br> [0x80000764]:csrrs a7, fflags, zero<br> [0x80000768]:fsd fa1, 320(a5)<br>   |
|  38|[0x80002660]<br>0x002B27DCD230B46C|- rs1_val == 107790943 and rm_val == 0  #nosat<br>                                                 |[0x80000778]:fcvt.d.wu fa1, a0, rne<br> [0x8000077c]:csrrs a7, fflags, zero<br> [0x80000780]:fsd fa1, 336(a5)<br>   |
|  39|[0x80002670]<br>0x002B27DCD230B46C|- rs1_val == 45276376 and rm_val == 0  #nosat<br>                                                  |[0x80000790]:fcvt.d.wu fa1, a0, rne<br> [0x80000794]:csrrs a7, fflags, zero<br> [0x80000798]:fsd fa1, 352(a5)<br>   |
|  40|[0x80002680]<br>0x002B27DCD230B46C|- rs1_val == 32105925 and rm_val == 0  #nosat<br>                                                  |[0x800007a8]:fcvt.d.wu fa1, a0, rne<br> [0x800007ac]:csrrs a7, fflags, zero<br> [0x800007b0]:fsd fa1, 368(a5)<br>   |
|  41|[0x80002690]<br>0x002B27DCD230B46C|- rs1_val == 12789625 and rm_val == 0  #nosat<br>                                                  |[0x800007c0]:fcvt.d.wu fa1, a0, rne<br> [0x800007c4]:csrrs a7, fflags, zero<br> [0x800007c8]:fsd fa1, 384(a5)<br>   |
|  42|[0x800026a0]<br>0x002B27DCD230B46C|- rs1_val == 6573466 and rm_val == 0  #nosat<br>                                                   |[0x800007d8]:fcvt.d.wu fa1, a0, rne<br> [0x800007dc]:csrrs a7, fflags, zero<br> [0x800007e0]:fsd fa1, 400(a5)<br>   |
|  43|[0x800026b0]<br>0x002B27DCD230B46C|- rs1_val == 3864061 and rm_val == 0  #nosat<br>                                                   |[0x800007f0]:fcvt.d.wu fa1, a0, rne<br> [0x800007f4]:csrrs a7, fflags, zero<br> [0x800007f8]:fsd fa1, 416(a5)<br>   |
|  44|[0x800026c0]<br>0x002B27DCD230B46C|- rs1_val == 1848861 and rm_val == 0  #nosat<br>                                                   |[0x80000808]:fcvt.d.wu fa1, a0, rne<br> [0x8000080c]:csrrs a7, fflags, zero<br> [0x80000810]:fsd fa1, 432(a5)<br>   |
|  45|[0x800026d0]<br>0x002B27DCD230B46C|- rs1_val == 896618 and rm_val == 0  #nosat<br>                                                    |[0x80000820]:fcvt.d.wu fa1, a0, rne<br> [0x80000824]:csrrs a7, fflags, zero<br> [0x80000828]:fsd fa1, 448(a5)<br>   |
|  46|[0x800026e0]<br>0x002B27DCD230B46C|- rs1_val == 334857 and rm_val == 0  #nosat<br>                                                    |[0x80000838]:fcvt.d.wu fa1, a0, rne<br> [0x8000083c]:csrrs a7, fflags, zero<br> [0x80000840]:fsd fa1, 464(a5)<br>   |
|  47|[0x800026f0]<br>0x002B27DCD230B46C|- rs1_val == 241276 and rm_val == 0  #nosat<br>                                                    |[0x80000850]:fcvt.d.wu fa1, a0, rne<br> [0x80000854]:csrrs a7, fflags, zero<br> [0x80000858]:fsd fa1, 480(a5)<br>   |
|  48|[0x80002700]<br>0x002B27DCD230B46C|- rs1_val == 71376 and rm_val == 0  #nosat<br>                                                     |[0x80000868]:fcvt.d.wu fa1, a0, rne<br> [0x8000086c]:csrrs a7, fflags, zero<br> [0x80000870]:fsd fa1, 496(a5)<br>   |
|  49|[0x80002710]<br>0x002B27DCD230B46C|- rs1_val == 56436 and rm_val == 0  #nosat<br>                                                     |[0x80000880]:fcvt.d.wu fa1, a0, rne<br> [0x80000884]:csrrs a7, fflags, zero<br> [0x80000888]:fsd fa1, 512(a5)<br>   |
|  50|[0x80002720]<br>0x002B27DCD230B46C|- rs1_val == 24575 and rm_val == 0  #nosat<br>                                                     |[0x80000898]:fcvt.d.wu fa1, a0, rne<br> [0x8000089c]:csrrs a7, fflags, zero<br> [0x800008a0]:fsd fa1, 528(a5)<br>   |
|  51|[0x80002730]<br>0x002B27DCD230B46C|- rs1_val == 9438 and rm_val == 0  #nosat<br>                                                      |[0x800008b0]:fcvt.d.wu fa1, a0, rne<br> [0x800008b4]:csrrs a7, fflags, zero<br> [0x800008b8]:fsd fa1, 544(a5)<br>   |
|  52|[0x80002740]<br>0x002B27DCD230B46C|- rs1_val == 6781 and rm_val == 0  #nosat<br>                                                      |[0x800008c8]:fcvt.d.wu fa1, a0, rne<br> [0x800008cc]:csrrs a7, fflags, zero<br> [0x800008d0]:fsd fa1, 560(a5)<br>   |
|  53|[0x80002750]<br>0x002B27DCD230B46C|- rs1_val == 4055 and rm_val == 0  #nosat<br>                                                      |[0x800008e0]:fcvt.d.wu fa1, a0, rne<br> [0x800008e4]:csrrs a7, fflags, zero<br> [0x800008e8]:fsd fa1, 576(a5)<br>   |
|  54|[0x80002760]<br>0x002B27DCD230B46C|- rs1_val == 1094 and rm_val == 0  #nosat<br>                                                      |[0x800008f8]:fcvt.d.wu fa1, a0, rne<br> [0x800008fc]:csrrs a7, fflags, zero<br> [0x80000900]:fsd fa1, 592(a5)<br>   |
|  55|[0x80002770]<br>0x002B27DCD230B46C|- rs1_val == 676 and rm_val == 0  #nosat<br>                                                       |[0x80000910]:fcvt.d.wu fa1, a0, rne<br> [0x80000914]:csrrs a7, fflags, zero<br> [0x80000918]:fsd fa1, 608(a5)<br>   |
|  56|[0x80002780]<br>0x002B27DCD230B46C|- rs1_val == 398 and rm_val == 0  #nosat<br>                                                       |[0x80000928]:fcvt.d.wu fa1, a0, rne<br> [0x8000092c]:csrrs a7, fflags, zero<br> [0x80000930]:fsd fa1, 624(a5)<br>   |
|  57|[0x80002790]<br>0x002B27DCD230B46C|- rs1_val == 253 and rm_val == 0  #nosat<br>                                                       |[0x80000940]:fcvt.d.wu fa1, a0, rne<br> [0x80000944]:csrrs a7, fflags, zero<br> [0x80000948]:fsd fa1, 640(a5)<br>   |
|  58|[0x800027a0]<br>0x002B27DCD230B46C|- rs1_val == 123 and rm_val == 0  #nosat<br>                                                       |[0x80000958]:fcvt.d.wu fa1, a0, rne<br> [0x8000095c]:csrrs a7, fflags, zero<br> [0x80000960]:fsd fa1, 656(a5)<br>   |
|  59|[0x800027b0]<br>0x002B27DCD230B46C|- rs1_val == 45 and rm_val == 0  #nosat<br>                                                        |[0x80000970]:fcvt.d.wu fa1, a0, rne<br> [0x80000974]:csrrs a7, fflags, zero<br> [0x80000978]:fsd fa1, 672(a5)<br>   |
|  60|[0x800027c0]<br>0x002B27DCD230B46C|- rs1_val == 16 and rm_val == 0  #nosat<br>                                                        |[0x80000988]:fcvt.d.wu fa1, a0, rne<br> [0x8000098c]:csrrs a7, fflags, zero<br> [0x80000990]:fsd fa1, 688(a5)<br>   |
|  61|[0x800027d0]<br>0x002B27DCD230B46C|- rs1_val == 15 and rm_val == 0  #nosat<br>                                                        |[0x800009a0]:fcvt.d.wu fa1, a0, rne<br> [0x800009a4]:csrrs a7, fflags, zero<br> [0x800009a8]:fsd fa1, 704(a5)<br>   |
|  62|[0x800027e0]<br>0x002B27DCD230B46C|- rs1_val == 7 and rm_val == 0  #nosat<br>                                                         |[0x800009b8]:fcvt.d.wu fa1, a0, rne<br> [0x800009bc]:csrrs a7, fflags, zero<br> [0x800009c0]:fsd fa1, 720(a5)<br>   |
|  63|[0x800027f0]<br>0x002B27DCD230B46C|- rs1_val == 2 and rm_val == 0  #nosat<br>                                                         |[0x800009d0]:fcvt.d.wu fa1, a0, rne<br> [0x800009d4]:csrrs a7, fflags, zero<br> [0x800009d8]:fsd fa1, 736(a5)<br>   |
|  64|[0x80002800]<br>0x002B27DCD230B46C|- rs1_val == 1 and rm_val == 0  #nosat<br>                                                         |[0x800009e8]:fcvt.d.wu fa1, a0, rne<br> [0x800009ec]:csrrs a7, fflags, zero<br> [0x800009f0]:fsd fa1, 752(a5)<br>   |
|  65|[0x80002810]<br>0x002B27DCD230B46C|- rs1_val == 1064659746632576 and rm_val == 0  #nosat<br>                                          |[0x80000a00]:fcvt.d.wu fa1, a0, rne<br> [0x80000a04]:csrrs a7, fflags, zero<br> [0x80000a08]:fsd fa1, 768(a5)<br>   |
