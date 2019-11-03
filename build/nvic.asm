
build/nvic.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00001610  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000004  080016d0  080016d0  000116d0  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  080016d4  080016d4  000116d4  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080016dc  080016dc  000116dc  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  080016e0  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              0000001c  20000434  08001b14  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000450  08001b14  00020450  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .comment          000000ae  00000000  00000000  0002045c  2**0  CONTENTS, READONLY
 10 .debug_info       00004ce9  00000000  00000000  0002050a  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_abbrev     000010c5  00000000  00000000  000251f3  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_loc        000012f1  00000000  00000000  000262b8  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_aranges    000003b0  00000000  00000000  000275b0  2**3  CONTENTS, READONLY, DEBUGGING
 14 .debug_ranges     000002b8  00000000  00000000  00027960  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line       000012f4  00000000  00000000  00027c18  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str        00001130  00000000  00000000  00028f0c  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame      00000a90  00000000  00000000  0002a03c  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <deregister_tm_clones>:
 80000c0:	4804      	ldr	r0, [pc, #16]	; (80000d4 <deregister_tm_clones+0x14>)
 80000c2:	4b05      	ldr	r3, [pc, #20]	; (80000d8 <deregister_tm_clones+0x18>)
 80000c4:	b510      	push	{r4, lr}
 80000c6:	4283      	cmp	r3, r0
 80000c8:	d003      	beq.n	80000d2 <deregister_tm_clones+0x12>
 80000ca:	4b04      	ldr	r3, [pc, #16]	; (80000dc <deregister_tm_clones+0x1c>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d000      	beq.n	80000d2 <deregister_tm_clones+0x12>
 80000d0:	4798      	blx	r3
 80000d2:	bd10      	pop	{r4, pc}
 80000d4:	20000434 	.word	0x20000434
 80000d8:	20000434 	.word	0x20000434
 80000dc:	00000000 	.word	0x00000000

080000e0 <register_tm_clones>:
 80000e0:	4806      	ldr	r0, [pc, #24]	; (80000fc <register_tm_clones+0x1c>)
 80000e2:	4907      	ldr	r1, [pc, #28]	; (8000100 <register_tm_clones+0x20>)
 80000e4:	1a09      	subs	r1, r1, r0
 80000e6:	1089      	asrs	r1, r1, #2
 80000e8:	0fcb      	lsrs	r3, r1, #31
 80000ea:	1859      	adds	r1, r3, r1
 80000ec:	b510      	push	{r4, lr}
 80000ee:	1049      	asrs	r1, r1, #1
 80000f0:	d003      	beq.n	80000fa <register_tm_clones+0x1a>
 80000f2:	4b04      	ldr	r3, [pc, #16]	; (8000104 <register_tm_clones+0x24>)
 80000f4:	2b00      	cmp	r3, #0
 80000f6:	d000      	beq.n	80000fa <register_tm_clones+0x1a>
 80000f8:	4798      	blx	r3
 80000fa:	bd10      	pop	{r4, pc}
 80000fc:	20000434 	.word	0x20000434
 8000100:	20000434 	.word	0x20000434
 8000104:	00000000 	.word	0x00000000

08000108 <__do_global_dtors_aux>:
 8000108:	b510      	push	{r4, lr}
 800010a:	4c07      	ldr	r4, [pc, #28]	; (8000128 <__do_global_dtors_aux+0x20>)
 800010c:	7823      	ldrb	r3, [r4, #0]
 800010e:	2b00      	cmp	r3, #0
 8000110:	d109      	bne.n	8000126 <__do_global_dtors_aux+0x1e>
 8000112:	f7ff ffd5 	bl	80000c0 <deregister_tm_clones>
 8000116:	4b05      	ldr	r3, [pc, #20]	; (800012c <__do_global_dtors_aux+0x24>)
 8000118:	2b00      	cmp	r3, #0
 800011a:	d002      	beq.n	8000122 <__do_global_dtors_aux+0x1a>
 800011c:	4804      	ldr	r0, [pc, #16]	; (8000130 <__do_global_dtors_aux+0x28>)
 800011e:	e000      	b.n	8000122 <__do_global_dtors_aux+0x1a>
 8000120:	bf00      	nop
 8000122:	2301      	movs	r3, #1
 8000124:	7023      	strb	r3, [r4, #0]
 8000126:	bd10      	pop	{r4, pc}
 8000128:	20000434 	.word	0x20000434
 800012c:	00000000 	.word	0x00000000
 8000130:	080016b8 	.word	0x080016b8

08000134 <frame_dummy>:
 8000134:	4b05      	ldr	r3, [pc, #20]	; (800014c <frame_dummy+0x18>)
 8000136:	b510      	push	{r4, lr}
 8000138:	2b00      	cmp	r3, #0
 800013a:	d003      	beq.n	8000144 <frame_dummy+0x10>
 800013c:	4904      	ldr	r1, [pc, #16]	; (8000150 <frame_dummy+0x1c>)
 800013e:	4805      	ldr	r0, [pc, #20]	; (8000154 <frame_dummy+0x20>)
 8000140:	e000      	b.n	8000144 <frame_dummy+0x10>
 8000142:	bf00      	nop
 8000144:	f7ff ffcc 	bl	80000e0 <register_tm_clones>
 8000148:	bd10      	pop	{r4, pc}
 800014a:	46c0      	nop			; (mov r8, r8)
 800014c:	00000000 	.word	0x00000000
 8000150:	20000438 	.word	0x20000438
 8000154:	080016b8 	.word	0x080016b8

08000158 <__udivsi3>:
 8000158:	2200      	movs	r2, #0
 800015a:	0843      	lsrs	r3, r0, #1
 800015c:	428b      	cmp	r3, r1
 800015e:	d374      	bcc.n	800024a <__udivsi3+0xf2>
 8000160:	0903      	lsrs	r3, r0, #4
 8000162:	428b      	cmp	r3, r1
 8000164:	d35f      	bcc.n	8000226 <__udivsi3+0xce>
 8000166:	0a03      	lsrs	r3, r0, #8
 8000168:	428b      	cmp	r3, r1
 800016a:	d344      	bcc.n	80001f6 <__udivsi3+0x9e>
 800016c:	0b03      	lsrs	r3, r0, #12
 800016e:	428b      	cmp	r3, r1
 8000170:	d328      	bcc.n	80001c4 <__udivsi3+0x6c>
 8000172:	0c03      	lsrs	r3, r0, #16
 8000174:	428b      	cmp	r3, r1
 8000176:	d30d      	bcc.n	8000194 <__udivsi3+0x3c>
 8000178:	22ff      	movs	r2, #255	; 0xff
 800017a:	0209      	lsls	r1, r1, #8
 800017c:	ba12      	rev	r2, r2
 800017e:	0c03      	lsrs	r3, r0, #16
 8000180:	428b      	cmp	r3, r1
 8000182:	d302      	bcc.n	800018a <__udivsi3+0x32>
 8000184:	1212      	asrs	r2, r2, #8
 8000186:	0209      	lsls	r1, r1, #8
 8000188:	d065      	beq.n	8000256 <__udivsi3+0xfe>
 800018a:	0b03      	lsrs	r3, r0, #12
 800018c:	428b      	cmp	r3, r1
 800018e:	d319      	bcc.n	80001c4 <__udivsi3+0x6c>
 8000190:	e000      	b.n	8000194 <__udivsi3+0x3c>
 8000192:	0a09      	lsrs	r1, r1, #8
 8000194:	0bc3      	lsrs	r3, r0, #15
 8000196:	428b      	cmp	r3, r1
 8000198:	d301      	bcc.n	800019e <__udivsi3+0x46>
 800019a:	03cb      	lsls	r3, r1, #15
 800019c:	1ac0      	subs	r0, r0, r3
 800019e:	4152      	adcs	r2, r2
 80001a0:	0b83      	lsrs	r3, r0, #14
 80001a2:	428b      	cmp	r3, r1
 80001a4:	d301      	bcc.n	80001aa <__udivsi3+0x52>
 80001a6:	038b      	lsls	r3, r1, #14
 80001a8:	1ac0      	subs	r0, r0, r3
 80001aa:	4152      	adcs	r2, r2
 80001ac:	0b43      	lsrs	r3, r0, #13
 80001ae:	428b      	cmp	r3, r1
 80001b0:	d301      	bcc.n	80001b6 <__udivsi3+0x5e>
 80001b2:	034b      	lsls	r3, r1, #13
 80001b4:	1ac0      	subs	r0, r0, r3
 80001b6:	4152      	adcs	r2, r2
 80001b8:	0b03      	lsrs	r3, r0, #12
 80001ba:	428b      	cmp	r3, r1
 80001bc:	d301      	bcc.n	80001c2 <__udivsi3+0x6a>
 80001be:	030b      	lsls	r3, r1, #12
 80001c0:	1ac0      	subs	r0, r0, r3
 80001c2:	4152      	adcs	r2, r2
 80001c4:	0ac3      	lsrs	r3, r0, #11
 80001c6:	428b      	cmp	r3, r1
 80001c8:	d301      	bcc.n	80001ce <__udivsi3+0x76>
 80001ca:	02cb      	lsls	r3, r1, #11
 80001cc:	1ac0      	subs	r0, r0, r3
 80001ce:	4152      	adcs	r2, r2
 80001d0:	0a83      	lsrs	r3, r0, #10
 80001d2:	428b      	cmp	r3, r1
 80001d4:	d301      	bcc.n	80001da <__udivsi3+0x82>
 80001d6:	028b      	lsls	r3, r1, #10
 80001d8:	1ac0      	subs	r0, r0, r3
 80001da:	4152      	adcs	r2, r2
 80001dc:	0a43      	lsrs	r3, r0, #9
 80001de:	428b      	cmp	r3, r1
 80001e0:	d301      	bcc.n	80001e6 <__udivsi3+0x8e>
 80001e2:	024b      	lsls	r3, r1, #9
 80001e4:	1ac0      	subs	r0, r0, r3
 80001e6:	4152      	adcs	r2, r2
 80001e8:	0a03      	lsrs	r3, r0, #8
 80001ea:	428b      	cmp	r3, r1
 80001ec:	d301      	bcc.n	80001f2 <__udivsi3+0x9a>
 80001ee:	020b      	lsls	r3, r1, #8
 80001f0:	1ac0      	subs	r0, r0, r3
 80001f2:	4152      	adcs	r2, r2
 80001f4:	d2cd      	bcs.n	8000192 <__udivsi3+0x3a>
 80001f6:	09c3      	lsrs	r3, r0, #7
 80001f8:	428b      	cmp	r3, r1
 80001fa:	d301      	bcc.n	8000200 <__udivsi3+0xa8>
 80001fc:	01cb      	lsls	r3, r1, #7
 80001fe:	1ac0      	subs	r0, r0, r3
 8000200:	4152      	adcs	r2, r2
 8000202:	0983      	lsrs	r3, r0, #6
 8000204:	428b      	cmp	r3, r1
 8000206:	d301      	bcc.n	800020c <__udivsi3+0xb4>
 8000208:	018b      	lsls	r3, r1, #6
 800020a:	1ac0      	subs	r0, r0, r3
 800020c:	4152      	adcs	r2, r2
 800020e:	0943      	lsrs	r3, r0, #5
 8000210:	428b      	cmp	r3, r1
 8000212:	d301      	bcc.n	8000218 <__udivsi3+0xc0>
 8000214:	014b      	lsls	r3, r1, #5
 8000216:	1ac0      	subs	r0, r0, r3
 8000218:	4152      	adcs	r2, r2
 800021a:	0903      	lsrs	r3, r0, #4
 800021c:	428b      	cmp	r3, r1
 800021e:	d301      	bcc.n	8000224 <__udivsi3+0xcc>
 8000220:	010b      	lsls	r3, r1, #4
 8000222:	1ac0      	subs	r0, r0, r3
 8000224:	4152      	adcs	r2, r2
 8000226:	08c3      	lsrs	r3, r0, #3
 8000228:	428b      	cmp	r3, r1
 800022a:	d301      	bcc.n	8000230 <__udivsi3+0xd8>
 800022c:	00cb      	lsls	r3, r1, #3
 800022e:	1ac0      	subs	r0, r0, r3
 8000230:	4152      	adcs	r2, r2
 8000232:	0883      	lsrs	r3, r0, #2
 8000234:	428b      	cmp	r3, r1
 8000236:	d301      	bcc.n	800023c <__udivsi3+0xe4>
 8000238:	008b      	lsls	r3, r1, #2
 800023a:	1ac0      	subs	r0, r0, r3
 800023c:	4152      	adcs	r2, r2
 800023e:	0843      	lsrs	r3, r0, #1
 8000240:	428b      	cmp	r3, r1
 8000242:	d301      	bcc.n	8000248 <__udivsi3+0xf0>
 8000244:	004b      	lsls	r3, r1, #1
 8000246:	1ac0      	subs	r0, r0, r3
 8000248:	4152      	adcs	r2, r2
 800024a:	1a41      	subs	r1, r0, r1
 800024c:	d200      	bcs.n	8000250 <__udivsi3+0xf8>
 800024e:	4601      	mov	r1, r0
 8000250:	4152      	adcs	r2, r2
 8000252:	4610      	mov	r0, r2
 8000254:	4770      	bx	lr
 8000256:	e7ff      	b.n	8000258 <__udivsi3+0x100>
 8000258:	b501      	push	{r0, lr}
 800025a:	2000      	movs	r0, #0
 800025c:	f000 f806 	bl	800026c <__aeabi_idiv0>
 8000260:	bd02      	pop	{r1, pc}
 8000262:	46c0      	nop			; (mov r8, r8)

08000264 <__aeabi_uidivmod>:
 8000264:	2900      	cmp	r1, #0
 8000266:	d0f7      	beq.n	8000258 <__udivsi3+0x100>
 8000268:	e776      	b.n	8000158 <__udivsi3>
 800026a:	4770      	bx	lr

0800026c <__aeabi_idiv0>:
 800026c:	4770      	bx	lr
 800026e:	46c0      	nop			; (mov r8, r8)

08000270 <atexit>:
 8000270:	b510      	push	{r4, lr}
 8000272:	0001      	movs	r1, r0
 8000274:	2300      	movs	r3, #0
 8000276:	2200      	movs	r2, #0
 8000278:	2000      	movs	r0, #0
 800027a:	f000 f83f 	bl	80002fc <__register_exitproc>
 800027e:	bd10      	pop	{r4, pc}

08000280 <__libc_fini_array>:
 8000280:	b570      	push	{r4, r5, r6, lr}
 8000282:	4b09      	ldr	r3, [pc, #36]	; (80002a8 <__libc_fini_array+0x28>)
 8000284:	4c09      	ldr	r4, [pc, #36]	; (80002ac <__libc_fini_array+0x2c>)
 8000286:	1ae4      	subs	r4, r4, r3
 8000288:	10a4      	asrs	r4, r4, #2
 800028a:	d009      	beq.n	80002a0 <__libc_fini_array+0x20>
 800028c:	4a08      	ldr	r2, [pc, #32]	; (80002b0 <__libc_fini_array+0x30>)
 800028e:	18a5      	adds	r5, r4, r2
 8000290:	00ad      	lsls	r5, r5, #2
 8000292:	18ed      	adds	r5, r5, r3
 8000294:	682b      	ldr	r3, [r5, #0]
 8000296:	3c01      	subs	r4, #1
 8000298:	4798      	blx	r3
 800029a:	3d04      	subs	r5, #4
 800029c:	2c00      	cmp	r4, #0
 800029e:	d1f9      	bne.n	8000294 <__libc_fini_array+0x14>
 80002a0:	f001 fa10 	bl	80016c4 <_fini>
 80002a4:	bd70      	pop	{r4, r5, r6, pc}
 80002a6:	46c0      	nop			; (mov r8, r8)
 80002a8:	080016dc 	.word	0x080016dc
 80002ac:	080016e0 	.word	0x080016e0
 80002b0:	3fffffff 	.word	0x3fffffff

080002b4 <__libc_init_array>:
 80002b4:	b570      	push	{r4, r5, r6, lr}
 80002b6:	4e0d      	ldr	r6, [pc, #52]	; (80002ec <__libc_init_array+0x38>)
 80002b8:	4d0d      	ldr	r5, [pc, #52]	; (80002f0 <__libc_init_array+0x3c>)
 80002ba:	1bad      	subs	r5, r5, r6
 80002bc:	10ad      	asrs	r5, r5, #2
 80002be:	d006      	beq.n	80002ce <__libc_init_array+0x1a>
 80002c0:	2400      	movs	r4, #0
 80002c2:	00a3      	lsls	r3, r4, #2
 80002c4:	58f3      	ldr	r3, [r6, r3]
 80002c6:	3401      	adds	r4, #1
 80002c8:	4798      	blx	r3
 80002ca:	42a5      	cmp	r5, r4
 80002cc:	d1f9      	bne.n	80002c2 <__libc_init_array+0xe>
 80002ce:	f001 f9f3 	bl	80016b8 <_init>
 80002d2:	4e08      	ldr	r6, [pc, #32]	; (80002f4 <__libc_init_array+0x40>)
 80002d4:	4d08      	ldr	r5, [pc, #32]	; (80002f8 <__libc_init_array+0x44>)
 80002d6:	1bad      	subs	r5, r5, r6
 80002d8:	10ad      	asrs	r5, r5, #2
 80002da:	d006      	beq.n	80002ea <__libc_init_array+0x36>
 80002dc:	2400      	movs	r4, #0
 80002de:	00a3      	lsls	r3, r4, #2
 80002e0:	58f3      	ldr	r3, [r6, r3]
 80002e2:	3401      	adds	r4, #1
 80002e4:	4798      	blx	r3
 80002e6:	42a5      	cmp	r5, r4
 80002e8:	d1f9      	bne.n	80002de <__libc_init_array+0x2a>
 80002ea:	bd70      	pop	{r4, r5, r6, pc}
 80002ec:	080016d4 	.word	0x080016d4
 80002f0:	080016d4 	.word	0x080016d4
 80002f4:	080016d4 	.word	0x080016d4
 80002f8:	080016dc 	.word	0x080016dc

080002fc <__register_exitproc>:
 80002fc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80002fe:	46c6      	mov	lr, r8
 8000300:	b500      	push	{lr}
 8000302:	4c1f      	ldr	r4, [pc, #124]	; (8000380 <__register_exitproc+0x84>)
 8000304:	b082      	sub	sp, #8
 8000306:	6824      	ldr	r4, [r4, #0]
 8000308:	9401      	str	r4, [sp, #4]
 800030a:	24a4      	movs	r4, #164	; 0xa4
 800030c:	9d01      	ldr	r5, [sp, #4]
 800030e:	0064      	lsls	r4, r4, #1
 8000310:	592d      	ldr	r5, [r5, r4]
 8000312:	2d00      	cmp	r5, #0
 8000314:	d02b      	beq.n	800036e <__register_exitproc+0x72>
 8000316:	686c      	ldr	r4, [r5, #4]
 8000318:	2c1f      	cmp	r4, #31
 800031a:	dc2e      	bgt.n	800037a <__register_exitproc+0x7e>
 800031c:	2800      	cmp	r0, #0
 800031e:	d109      	bne.n	8000334 <__register_exitproc+0x38>
 8000320:	2000      	movs	r0, #0
 8000322:	1c63      	adds	r3, r4, #1
 8000324:	3402      	adds	r4, #2
 8000326:	00a4      	lsls	r4, r4, #2
 8000328:	606b      	str	r3, [r5, #4]
 800032a:	5161      	str	r1, [r4, r5]
 800032c:	b002      	add	sp, #8
 800032e:	bc04      	pop	{r2}
 8000330:	4690      	mov	r8, r2
 8000332:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000334:	2788      	movs	r7, #136	; 0x88
 8000336:	00a6      	lsls	r6, r4, #2
 8000338:	19ae      	adds	r6, r5, r6
 800033a:	51f2      	str	r2, [r6, r7]
 800033c:	3701      	adds	r7, #1
 800033e:	37ff      	adds	r7, #255	; 0xff
 8000340:	46bc      	mov	ip, r7
 8000342:	2201      	movs	r2, #1
 8000344:	44ac      	add	ip, r5
 8000346:	4667      	mov	r7, ip
 8000348:	40a2      	lsls	r2, r4
 800034a:	683f      	ldr	r7, [r7, #0]
 800034c:	4690      	mov	r8, r2
 800034e:	4317      	orrs	r7, r2
 8000350:	4662      	mov	r2, ip
 8000352:	6017      	str	r7, [r2, #0]
 8000354:	2784      	movs	r7, #132	; 0x84
 8000356:	007f      	lsls	r7, r7, #1
 8000358:	51f3      	str	r3, [r6, r7]
 800035a:	2802      	cmp	r0, #2
 800035c:	d1e0      	bne.n	8000320 <__register_exitproc+0x24>
 800035e:	002b      	movs	r3, r5
 8000360:	4640      	mov	r0, r8
 8000362:	338d      	adds	r3, #141	; 0x8d
 8000364:	33ff      	adds	r3, #255	; 0xff
 8000366:	681a      	ldr	r2, [r3, #0]
 8000368:	4310      	orrs	r0, r2
 800036a:	6018      	str	r0, [r3, #0]
 800036c:	e7d8      	b.n	8000320 <__register_exitproc+0x24>
 800036e:	9d01      	ldr	r5, [sp, #4]
 8000370:	9e01      	ldr	r6, [sp, #4]
 8000372:	354d      	adds	r5, #77	; 0x4d
 8000374:	35ff      	adds	r5, #255	; 0xff
 8000376:	5135      	str	r5, [r6, r4]
 8000378:	e7cd      	b.n	8000316 <__register_exitproc+0x1a>
 800037a:	2001      	movs	r0, #1
 800037c:	4240      	negs	r0, r0
 800037e:	e7d5      	b.n	800032c <__register_exitproc+0x30>
 8000380:	080016d0 	.word	0x080016d0

08000384 <Reset_Handler>:
 8000384:	480d      	ldr	r0, [pc, #52]	; (80003bc <LoopForever+0x2>)
 8000386:	4685      	mov	sp, r0
 8000388:	480d      	ldr	r0, [pc, #52]	; (80003c0 <LoopForever+0x6>)
 800038a:	490e      	ldr	r1, [pc, #56]	; (80003c4 <LoopForever+0xa>)
 800038c:	4a0e      	ldr	r2, [pc, #56]	; (80003c8 <LoopForever+0xe>)
 800038e:	2300      	movs	r3, #0
 8000390:	e002      	b.n	8000398 <LoopCopyDataInit>

08000392 <CopyDataInit>:
 8000392:	58d4      	ldr	r4, [r2, r3]
 8000394:	50c4      	str	r4, [r0, r3]
 8000396:	3304      	adds	r3, #4

08000398 <LoopCopyDataInit>:
 8000398:	18c4      	adds	r4, r0, r3
 800039a:	428c      	cmp	r4, r1
 800039c:	d3f9      	bcc.n	8000392 <CopyDataInit>
 800039e:	4a0b      	ldr	r2, [pc, #44]	; (80003cc <LoopForever+0x12>)
 80003a0:	4c0b      	ldr	r4, [pc, #44]	; (80003d0 <LoopForever+0x16>)
 80003a2:	2300      	movs	r3, #0
 80003a4:	e001      	b.n	80003aa <LoopFillZerobss>

080003a6 <FillZerobss>:
 80003a6:	6013      	str	r3, [r2, #0]
 80003a8:	3204      	adds	r2, #4

080003aa <LoopFillZerobss>:
 80003aa:	42a2      	cmp	r2, r4
 80003ac:	d3fb      	bcc.n	80003a6 <FillZerobss>
 80003ae:	f000 fb21 	bl	80009f4 <SystemInit>
 80003b2:	f7ff ff7f 	bl	80002b4 <__libc_init_array>
 80003b6:	f000 faff 	bl	80009b8 <main>

080003ba <LoopForever>:
 80003ba:	e7fe      	b.n	80003ba <LoopForever>
 80003bc:	20002000 	.word	0x20002000
 80003c0:	20000000 	.word	0x20000000
 80003c4:	20000434 	.word	0x20000434
 80003c8:	080016e0 	.word	0x080016e0
 80003cc:	20000434 	.word	0x20000434
 80003d0:	20000450 	.word	0x20000450

080003d4 <ADC1_COMP_IRQHandler>:
 80003d4:	e7fe      	b.n	80003d4 <ADC1_COMP_IRQHandler>
	...

080003d8 <LL_RCC_HSI_Enable>:
 80003d8:	b580      	push	{r7, lr}
 80003da:	af00      	add	r7, sp, #0
 80003dc:	4b04      	ldr	r3, [pc, #16]	; (80003f0 <LL_RCC_HSI_Enable+0x18>)
 80003de:	681a      	ldr	r2, [r3, #0]
 80003e0:	4b03      	ldr	r3, [pc, #12]	; (80003f0 <LL_RCC_HSI_Enable+0x18>)
 80003e2:	2101      	movs	r1, #1
 80003e4:	430a      	orrs	r2, r1
 80003e6:	601a      	str	r2, [r3, #0]
 80003e8:	46c0      	nop			; (mov r8, r8)
 80003ea:	46bd      	mov	sp, r7
 80003ec:	bd80      	pop	{r7, pc}
 80003ee:	46c0      	nop			; (mov r8, r8)
 80003f0:	40021000 	.word	0x40021000

080003f4 <LL_RCC_HSI_IsReady>:
 80003f4:	b580      	push	{r7, lr}
 80003f6:	af00      	add	r7, sp, #0
 80003f8:	4b05      	ldr	r3, [pc, #20]	; (8000410 <LL_RCC_HSI_IsReady+0x1c>)
 80003fa:	681b      	ldr	r3, [r3, #0]
 80003fc:	2202      	movs	r2, #2
 80003fe:	4013      	ands	r3, r2
 8000400:	3b02      	subs	r3, #2
 8000402:	425a      	negs	r2, r3
 8000404:	4153      	adcs	r3, r2
 8000406:	b2db      	uxtb	r3, r3
 8000408:	0018      	movs	r0, r3
 800040a:	46bd      	mov	sp, r7
 800040c:	bd80      	pop	{r7, pc}
 800040e:	46c0      	nop			; (mov r8, r8)
 8000410:	40021000 	.word	0x40021000

08000414 <LL_RCC_SetSysClkSource>:
 8000414:	b580      	push	{r7, lr}
 8000416:	b082      	sub	sp, #8
 8000418:	af00      	add	r7, sp, #0
 800041a:	6078      	str	r0, [r7, #4]
 800041c:	4b06      	ldr	r3, [pc, #24]	; (8000438 <LL_RCC_SetSysClkSource+0x24>)
 800041e:	685b      	ldr	r3, [r3, #4]
 8000420:	2203      	movs	r2, #3
 8000422:	4393      	bics	r3, r2
 8000424:	0019      	movs	r1, r3
 8000426:	4b04      	ldr	r3, [pc, #16]	; (8000438 <LL_RCC_SetSysClkSource+0x24>)
 8000428:	687a      	ldr	r2, [r7, #4]
 800042a:	430a      	orrs	r2, r1
 800042c:	605a      	str	r2, [r3, #4]
 800042e:	46c0      	nop			; (mov r8, r8)
 8000430:	46bd      	mov	sp, r7
 8000432:	b002      	add	sp, #8
 8000434:	bd80      	pop	{r7, pc}
 8000436:	46c0      	nop			; (mov r8, r8)
 8000438:	40021000 	.word	0x40021000

0800043c <LL_RCC_GetSysClkSource>:
 800043c:	b580      	push	{r7, lr}
 800043e:	af00      	add	r7, sp, #0
 8000440:	4b03      	ldr	r3, [pc, #12]	; (8000450 <LL_RCC_GetSysClkSource+0x14>)
 8000442:	685b      	ldr	r3, [r3, #4]
 8000444:	220c      	movs	r2, #12
 8000446:	4013      	ands	r3, r2
 8000448:	0018      	movs	r0, r3
 800044a:	46bd      	mov	sp, r7
 800044c:	bd80      	pop	{r7, pc}
 800044e:	46c0      	nop			; (mov r8, r8)
 8000450:	40021000 	.word	0x40021000

08000454 <LL_RCC_SetAHBPrescaler>:
 8000454:	b580      	push	{r7, lr}
 8000456:	b082      	sub	sp, #8
 8000458:	af00      	add	r7, sp, #0
 800045a:	6078      	str	r0, [r7, #4]
 800045c:	4b06      	ldr	r3, [pc, #24]	; (8000478 <LL_RCC_SetAHBPrescaler+0x24>)
 800045e:	685b      	ldr	r3, [r3, #4]
 8000460:	22f0      	movs	r2, #240	; 0xf0
 8000462:	4393      	bics	r3, r2
 8000464:	0019      	movs	r1, r3
 8000466:	4b04      	ldr	r3, [pc, #16]	; (8000478 <LL_RCC_SetAHBPrescaler+0x24>)
 8000468:	687a      	ldr	r2, [r7, #4]
 800046a:	430a      	orrs	r2, r1
 800046c:	605a      	str	r2, [r3, #4]
 800046e:	46c0      	nop			; (mov r8, r8)
 8000470:	46bd      	mov	sp, r7
 8000472:	b002      	add	sp, #8
 8000474:	bd80      	pop	{r7, pc}
 8000476:	46c0      	nop			; (mov r8, r8)
 8000478:	40021000 	.word	0x40021000

0800047c <LL_RCC_SetAPB1Prescaler>:
 800047c:	b580      	push	{r7, lr}
 800047e:	b082      	sub	sp, #8
 8000480:	af00      	add	r7, sp, #0
 8000482:	6078      	str	r0, [r7, #4]
 8000484:	4b06      	ldr	r3, [pc, #24]	; (80004a0 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000486:	685b      	ldr	r3, [r3, #4]
 8000488:	4a06      	ldr	r2, [pc, #24]	; (80004a4 <LL_RCC_SetAPB1Prescaler+0x28>)
 800048a:	4013      	ands	r3, r2
 800048c:	0019      	movs	r1, r3
 800048e:	4b04      	ldr	r3, [pc, #16]	; (80004a0 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000490:	687a      	ldr	r2, [r7, #4]
 8000492:	430a      	orrs	r2, r1
 8000494:	605a      	str	r2, [r3, #4]
 8000496:	46c0      	nop			; (mov r8, r8)
 8000498:	46bd      	mov	sp, r7
 800049a:	b002      	add	sp, #8
 800049c:	bd80      	pop	{r7, pc}
 800049e:	46c0      	nop			; (mov r8, r8)
 80004a0:	40021000 	.word	0x40021000
 80004a4:	fffff8ff 	.word	0xfffff8ff

080004a8 <LL_RCC_SetI2CClockSource>:
 80004a8:	b580      	push	{r7, lr}
 80004aa:	b082      	sub	sp, #8
 80004ac:	af00      	add	r7, sp, #0
 80004ae:	6078      	str	r0, [r7, #4]
 80004b0:	4b06      	ldr	r3, [pc, #24]	; (80004cc <LL_RCC_SetI2CClockSource+0x24>)
 80004b2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80004b4:	2210      	movs	r2, #16
 80004b6:	4393      	bics	r3, r2
 80004b8:	0019      	movs	r1, r3
 80004ba:	4b04      	ldr	r3, [pc, #16]	; (80004cc <LL_RCC_SetI2CClockSource+0x24>)
 80004bc:	687a      	ldr	r2, [r7, #4]
 80004be:	430a      	orrs	r2, r1
 80004c0:	631a      	str	r2, [r3, #48]	; 0x30
 80004c2:	46c0      	nop			; (mov r8, r8)
 80004c4:	46bd      	mov	sp, r7
 80004c6:	b002      	add	sp, #8
 80004c8:	bd80      	pop	{r7, pc}
 80004ca:	46c0      	nop			; (mov r8, r8)
 80004cc:	40021000 	.word	0x40021000

080004d0 <LL_RCC_PLL_Enable>:
 80004d0:	b580      	push	{r7, lr}
 80004d2:	af00      	add	r7, sp, #0
 80004d4:	4b04      	ldr	r3, [pc, #16]	; (80004e8 <LL_RCC_PLL_Enable+0x18>)
 80004d6:	681a      	ldr	r2, [r3, #0]
 80004d8:	4b03      	ldr	r3, [pc, #12]	; (80004e8 <LL_RCC_PLL_Enable+0x18>)
 80004da:	2180      	movs	r1, #128	; 0x80
 80004dc:	0449      	lsls	r1, r1, #17
 80004de:	430a      	orrs	r2, r1
 80004e0:	601a      	str	r2, [r3, #0]
 80004e2:	46c0      	nop			; (mov r8, r8)
 80004e4:	46bd      	mov	sp, r7
 80004e6:	bd80      	pop	{r7, pc}
 80004e8:	40021000 	.word	0x40021000

080004ec <LL_RCC_PLL_IsReady>:
 80004ec:	b580      	push	{r7, lr}
 80004ee:	af00      	add	r7, sp, #0
 80004f0:	4b07      	ldr	r3, [pc, #28]	; (8000510 <LL_RCC_PLL_IsReady+0x24>)
 80004f2:	681a      	ldr	r2, [r3, #0]
 80004f4:	2380      	movs	r3, #128	; 0x80
 80004f6:	049b      	lsls	r3, r3, #18
 80004f8:	4013      	ands	r3, r2
 80004fa:	22fe      	movs	r2, #254	; 0xfe
 80004fc:	0612      	lsls	r2, r2, #24
 80004fe:	4694      	mov	ip, r2
 8000500:	4463      	add	r3, ip
 8000502:	425a      	negs	r2, r3
 8000504:	4153      	adcs	r3, r2
 8000506:	b2db      	uxtb	r3, r3
 8000508:	0018      	movs	r0, r3
 800050a:	46bd      	mov	sp, r7
 800050c:	bd80      	pop	{r7, pc}
 800050e:	46c0      	nop			; (mov r8, r8)
 8000510:	40021000 	.word	0x40021000

08000514 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000514:	b580      	push	{r7, lr}
 8000516:	b082      	sub	sp, #8
 8000518:	af00      	add	r7, sp, #0
 800051a:	6078      	str	r0, [r7, #4]
 800051c:	6039      	str	r1, [r7, #0]
 800051e:	4b0e      	ldr	r3, [pc, #56]	; (8000558 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000520:	685b      	ldr	r3, [r3, #4]
 8000522:	4a0e      	ldr	r2, [pc, #56]	; (800055c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000524:	4013      	ands	r3, r2
 8000526:	0019      	movs	r1, r3
 8000528:	687a      	ldr	r2, [r7, #4]
 800052a:	2380      	movs	r3, #128	; 0x80
 800052c:	025b      	lsls	r3, r3, #9
 800052e:	401a      	ands	r2, r3
 8000530:	683b      	ldr	r3, [r7, #0]
 8000532:	431a      	orrs	r2, r3
 8000534:	4b08      	ldr	r3, [pc, #32]	; (8000558 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000536:	430a      	orrs	r2, r1
 8000538:	605a      	str	r2, [r3, #4]
 800053a:	4b07      	ldr	r3, [pc, #28]	; (8000558 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800053c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800053e:	220f      	movs	r2, #15
 8000540:	4393      	bics	r3, r2
 8000542:	0019      	movs	r1, r3
 8000544:	687b      	ldr	r3, [r7, #4]
 8000546:	220f      	movs	r2, #15
 8000548:	401a      	ands	r2, r3
 800054a:	4b03      	ldr	r3, [pc, #12]	; (8000558 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800054c:	430a      	orrs	r2, r1
 800054e:	62da      	str	r2, [r3, #44]	; 0x2c
 8000550:	46c0      	nop			; (mov r8, r8)
 8000552:	46bd      	mov	sp, r7
 8000554:	b002      	add	sp, #8
 8000556:	bd80      	pop	{r7, pc}
 8000558:	40021000 	.word	0x40021000
 800055c:	ffc2ffff 	.word	0xffc2ffff

08000560 <LL_FLASH_SetLatency>:
 8000560:	b580      	push	{r7, lr}
 8000562:	b082      	sub	sp, #8
 8000564:	af00      	add	r7, sp, #0
 8000566:	6078      	str	r0, [r7, #4]
 8000568:	4b06      	ldr	r3, [pc, #24]	; (8000584 <LL_FLASH_SetLatency+0x24>)
 800056a:	681b      	ldr	r3, [r3, #0]
 800056c:	2201      	movs	r2, #1
 800056e:	4393      	bics	r3, r2
 8000570:	0019      	movs	r1, r3
 8000572:	4b04      	ldr	r3, [pc, #16]	; (8000584 <LL_FLASH_SetLatency+0x24>)
 8000574:	687a      	ldr	r2, [r7, #4]
 8000576:	430a      	orrs	r2, r1
 8000578:	601a      	str	r2, [r3, #0]
 800057a:	46c0      	nop			; (mov r8, r8)
 800057c:	46bd      	mov	sp, r7
 800057e:	b002      	add	sp, #8
 8000580:	bd80      	pop	{r7, pc}
 8000582:	46c0      	nop			; (mov r8, r8)
 8000584:	40022000 	.word	0x40022000

08000588 <LL_AHB1_GRP1_EnableClock>:
 8000588:	b580      	push	{r7, lr}
 800058a:	b084      	sub	sp, #16
 800058c:	af00      	add	r7, sp, #0
 800058e:	6078      	str	r0, [r7, #4]
 8000590:	4b07      	ldr	r3, [pc, #28]	; (80005b0 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000592:	6959      	ldr	r1, [r3, #20]
 8000594:	4b06      	ldr	r3, [pc, #24]	; (80005b0 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000596:	687a      	ldr	r2, [r7, #4]
 8000598:	430a      	orrs	r2, r1
 800059a:	615a      	str	r2, [r3, #20]
 800059c:	4b04      	ldr	r3, [pc, #16]	; (80005b0 <LL_AHB1_GRP1_EnableClock+0x28>)
 800059e:	695b      	ldr	r3, [r3, #20]
 80005a0:	687a      	ldr	r2, [r7, #4]
 80005a2:	4013      	ands	r3, r2
 80005a4:	60fb      	str	r3, [r7, #12]
 80005a6:	68fb      	ldr	r3, [r7, #12]
 80005a8:	46c0      	nop			; (mov r8, r8)
 80005aa:	46bd      	mov	sp, r7
 80005ac:	b004      	add	sp, #16
 80005ae:	bd80      	pop	{r7, pc}
 80005b0:	40021000 	.word	0x40021000

080005b4 <LL_APB1_GRP1_EnableClock>:
 80005b4:	b580      	push	{r7, lr}
 80005b6:	b084      	sub	sp, #16
 80005b8:	af00      	add	r7, sp, #0
 80005ba:	6078      	str	r0, [r7, #4]
 80005bc:	4b07      	ldr	r3, [pc, #28]	; (80005dc <LL_APB1_GRP1_EnableClock+0x28>)
 80005be:	69d9      	ldr	r1, [r3, #28]
 80005c0:	4b06      	ldr	r3, [pc, #24]	; (80005dc <LL_APB1_GRP1_EnableClock+0x28>)
 80005c2:	687a      	ldr	r2, [r7, #4]
 80005c4:	430a      	orrs	r2, r1
 80005c6:	61da      	str	r2, [r3, #28]
 80005c8:	4b04      	ldr	r3, [pc, #16]	; (80005dc <LL_APB1_GRP1_EnableClock+0x28>)
 80005ca:	69db      	ldr	r3, [r3, #28]
 80005cc:	687a      	ldr	r2, [r7, #4]
 80005ce:	4013      	ands	r3, r2
 80005d0:	60fb      	str	r3, [r7, #12]
 80005d2:	68fb      	ldr	r3, [r7, #12]
 80005d4:	46c0      	nop			; (mov r8, r8)
 80005d6:	46bd      	mov	sp, r7
 80005d8:	b004      	add	sp, #16
 80005da:	bd80      	pop	{r7, pc}
 80005dc:	40021000 	.word	0x40021000

080005e0 <LL_GPIO_SetPinMode>:
 80005e0:	b580      	push	{r7, lr}
 80005e2:	b084      	sub	sp, #16
 80005e4:	af00      	add	r7, sp, #0
 80005e6:	60f8      	str	r0, [r7, #12]
 80005e8:	60b9      	str	r1, [r7, #8]
 80005ea:	607a      	str	r2, [r7, #4]
 80005ec:	68fb      	ldr	r3, [r7, #12]
 80005ee:	6819      	ldr	r1, [r3, #0]
 80005f0:	68bb      	ldr	r3, [r7, #8]
 80005f2:	68ba      	ldr	r2, [r7, #8]
 80005f4:	435a      	muls	r2, r3
 80005f6:	0013      	movs	r3, r2
 80005f8:	005b      	lsls	r3, r3, #1
 80005fa:	189b      	adds	r3, r3, r2
 80005fc:	43db      	mvns	r3, r3
 80005fe:	400b      	ands	r3, r1
 8000600:	001a      	movs	r2, r3
 8000602:	68bb      	ldr	r3, [r7, #8]
 8000604:	68b9      	ldr	r1, [r7, #8]
 8000606:	434b      	muls	r3, r1
 8000608:	6879      	ldr	r1, [r7, #4]
 800060a:	434b      	muls	r3, r1
 800060c:	431a      	orrs	r2, r3
 800060e:	68fb      	ldr	r3, [r7, #12]
 8000610:	601a      	str	r2, [r3, #0]
 8000612:	46c0      	nop			; (mov r8, r8)
 8000614:	46bd      	mov	sp, r7
 8000616:	b004      	add	sp, #16
 8000618:	bd80      	pop	{r7, pc}

0800061a <LL_GPIO_SetPinOutputType>:
 800061a:	b580      	push	{r7, lr}
 800061c:	b084      	sub	sp, #16
 800061e:	af00      	add	r7, sp, #0
 8000620:	60f8      	str	r0, [r7, #12]
 8000622:	60b9      	str	r1, [r7, #8]
 8000624:	607a      	str	r2, [r7, #4]
 8000626:	68fb      	ldr	r3, [r7, #12]
 8000628:	685b      	ldr	r3, [r3, #4]
 800062a:	68ba      	ldr	r2, [r7, #8]
 800062c:	43d2      	mvns	r2, r2
 800062e:	401a      	ands	r2, r3
 8000630:	68bb      	ldr	r3, [r7, #8]
 8000632:	6879      	ldr	r1, [r7, #4]
 8000634:	434b      	muls	r3, r1
 8000636:	431a      	orrs	r2, r3
 8000638:	68fb      	ldr	r3, [r7, #12]
 800063a:	605a      	str	r2, [r3, #4]
 800063c:	46c0      	nop			; (mov r8, r8)
 800063e:	46bd      	mov	sp, r7
 8000640:	b004      	add	sp, #16
 8000642:	bd80      	pop	{r7, pc}

08000644 <LL_GPIO_SetPinSpeed>:
 8000644:	b580      	push	{r7, lr}
 8000646:	b084      	sub	sp, #16
 8000648:	af00      	add	r7, sp, #0
 800064a:	60f8      	str	r0, [r7, #12]
 800064c:	60b9      	str	r1, [r7, #8]
 800064e:	607a      	str	r2, [r7, #4]
 8000650:	68fb      	ldr	r3, [r7, #12]
 8000652:	6899      	ldr	r1, [r3, #8]
 8000654:	68bb      	ldr	r3, [r7, #8]
 8000656:	68ba      	ldr	r2, [r7, #8]
 8000658:	435a      	muls	r2, r3
 800065a:	0013      	movs	r3, r2
 800065c:	005b      	lsls	r3, r3, #1
 800065e:	189b      	adds	r3, r3, r2
 8000660:	43db      	mvns	r3, r3
 8000662:	400b      	ands	r3, r1
 8000664:	001a      	movs	r2, r3
 8000666:	68bb      	ldr	r3, [r7, #8]
 8000668:	68b9      	ldr	r1, [r7, #8]
 800066a:	434b      	muls	r3, r1
 800066c:	6879      	ldr	r1, [r7, #4]
 800066e:	434b      	muls	r3, r1
 8000670:	431a      	orrs	r2, r3
 8000672:	68fb      	ldr	r3, [r7, #12]
 8000674:	609a      	str	r2, [r3, #8]
 8000676:	46c0      	nop			; (mov r8, r8)
 8000678:	46bd      	mov	sp, r7
 800067a:	b004      	add	sp, #16
 800067c:	bd80      	pop	{r7, pc}

0800067e <LL_GPIO_SetPinPull>:
 800067e:	b580      	push	{r7, lr}
 8000680:	b084      	sub	sp, #16
 8000682:	af00      	add	r7, sp, #0
 8000684:	60f8      	str	r0, [r7, #12]
 8000686:	60b9      	str	r1, [r7, #8]
 8000688:	607a      	str	r2, [r7, #4]
 800068a:	68fb      	ldr	r3, [r7, #12]
 800068c:	68d9      	ldr	r1, [r3, #12]
 800068e:	68bb      	ldr	r3, [r7, #8]
 8000690:	68ba      	ldr	r2, [r7, #8]
 8000692:	435a      	muls	r2, r3
 8000694:	0013      	movs	r3, r2
 8000696:	005b      	lsls	r3, r3, #1
 8000698:	189b      	adds	r3, r3, r2
 800069a:	43db      	mvns	r3, r3
 800069c:	400b      	ands	r3, r1
 800069e:	001a      	movs	r2, r3
 80006a0:	68bb      	ldr	r3, [r7, #8]
 80006a2:	68b9      	ldr	r1, [r7, #8]
 80006a4:	434b      	muls	r3, r1
 80006a6:	6879      	ldr	r1, [r7, #4]
 80006a8:	434b      	muls	r3, r1
 80006aa:	431a      	orrs	r2, r3
 80006ac:	68fb      	ldr	r3, [r7, #12]
 80006ae:	60da      	str	r2, [r3, #12]
 80006b0:	46c0      	nop			; (mov r8, r8)
 80006b2:	46bd      	mov	sp, r7
 80006b4:	b004      	add	sp, #16
 80006b6:	bd80      	pop	{r7, pc}

080006b8 <LL_GPIO_SetAFPin_0_7>:
 80006b8:	b580      	push	{r7, lr}
 80006ba:	b084      	sub	sp, #16
 80006bc:	af00      	add	r7, sp, #0
 80006be:	60f8      	str	r0, [r7, #12]
 80006c0:	60b9      	str	r1, [r7, #8]
 80006c2:	607a      	str	r2, [r7, #4]
 80006c4:	68fb      	ldr	r3, [r7, #12]
 80006c6:	6a19      	ldr	r1, [r3, #32]
 80006c8:	68bb      	ldr	r3, [r7, #8]
 80006ca:	68ba      	ldr	r2, [r7, #8]
 80006cc:	4353      	muls	r3, r2
 80006ce:	68ba      	ldr	r2, [r7, #8]
 80006d0:	4353      	muls	r3, r2
 80006d2:	68ba      	ldr	r2, [r7, #8]
 80006d4:	435a      	muls	r2, r3
 80006d6:	0013      	movs	r3, r2
 80006d8:	011b      	lsls	r3, r3, #4
 80006da:	1a9b      	subs	r3, r3, r2
 80006dc:	43db      	mvns	r3, r3
 80006de:	400b      	ands	r3, r1
 80006e0:	001a      	movs	r2, r3
 80006e2:	68bb      	ldr	r3, [r7, #8]
 80006e4:	68b9      	ldr	r1, [r7, #8]
 80006e6:	434b      	muls	r3, r1
 80006e8:	68b9      	ldr	r1, [r7, #8]
 80006ea:	434b      	muls	r3, r1
 80006ec:	68b9      	ldr	r1, [r7, #8]
 80006ee:	434b      	muls	r3, r1
 80006f0:	6879      	ldr	r1, [r7, #4]
 80006f2:	434b      	muls	r3, r1
 80006f4:	431a      	orrs	r2, r3
 80006f6:	68fb      	ldr	r3, [r7, #12]
 80006f8:	621a      	str	r2, [r3, #32]
 80006fa:	46c0      	nop			; (mov r8, r8)
 80006fc:	46bd      	mov	sp, r7
 80006fe:	b004      	add	sp, #16
 8000700:	bd80      	pop	{r7, pc}

08000702 <LL_GPIO_TogglePin>:
 8000702:	b580      	push	{r7, lr}
 8000704:	b082      	sub	sp, #8
 8000706:	af00      	add	r7, sp, #0
 8000708:	6078      	str	r0, [r7, #4]
 800070a:	6039      	str	r1, [r7, #0]
 800070c:	687b      	ldr	r3, [r7, #4]
 800070e:	695a      	ldr	r2, [r3, #20]
 8000710:	683b      	ldr	r3, [r7, #0]
 8000712:	405a      	eors	r2, r3
 8000714:	687b      	ldr	r3, [r7, #4]
 8000716:	615a      	str	r2, [r3, #20]
 8000718:	46c0      	nop			; (mov r8, r8)
 800071a:	46bd      	mov	sp, r7
 800071c:	b002      	add	sp, #8
 800071e:	bd80      	pop	{r7, pc}

08000720 <LL_I2C_Enable>:
 8000720:	b580      	push	{r7, lr}
 8000722:	b082      	sub	sp, #8
 8000724:	af00      	add	r7, sp, #0
 8000726:	6078      	str	r0, [r7, #4]
 8000728:	687b      	ldr	r3, [r7, #4]
 800072a:	681b      	ldr	r3, [r3, #0]
 800072c:	2201      	movs	r2, #1
 800072e:	431a      	orrs	r2, r3
 8000730:	687b      	ldr	r3, [r7, #4]
 8000732:	601a      	str	r2, [r3, #0]
 8000734:	46c0      	nop			; (mov r8, r8)
 8000736:	46bd      	mov	sp, r7
 8000738:	b002      	add	sp, #8
 800073a:	bd80      	pop	{r7, pc}

0800073c <LL_I2C_Disable>:
 800073c:	b580      	push	{r7, lr}
 800073e:	b082      	sub	sp, #8
 8000740:	af00      	add	r7, sp, #0
 8000742:	6078      	str	r0, [r7, #4]
 8000744:	687b      	ldr	r3, [r7, #4]
 8000746:	681b      	ldr	r3, [r3, #0]
 8000748:	2201      	movs	r2, #1
 800074a:	4393      	bics	r3, r2
 800074c:	001a      	movs	r2, r3
 800074e:	687b      	ldr	r3, [r7, #4]
 8000750:	601a      	str	r2, [r3, #0]
 8000752:	46c0      	nop			; (mov r8, r8)
 8000754:	46bd      	mov	sp, r7
 8000756:	b002      	add	sp, #8
 8000758:	bd80      	pop	{r7, pc}
	...

0800075c <LL_I2C_SetDigitalFilter>:
 800075c:	b580      	push	{r7, lr}
 800075e:	b082      	sub	sp, #8
 8000760:	af00      	add	r7, sp, #0
 8000762:	6078      	str	r0, [r7, #4]
 8000764:	6039      	str	r1, [r7, #0]
 8000766:	687b      	ldr	r3, [r7, #4]
 8000768:	681b      	ldr	r3, [r3, #0]
 800076a:	4a05      	ldr	r2, [pc, #20]	; (8000780 <LL_I2C_SetDigitalFilter+0x24>)
 800076c:	401a      	ands	r2, r3
 800076e:	683b      	ldr	r3, [r7, #0]
 8000770:	021b      	lsls	r3, r3, #8
 8000772:	431a      	orrs	r2, r3
 8000774:	687b      	ldr	r3, [r7, #4]
 8000776:	601a      	str	r2, [r3, #0]
 8000778:	46c0      	nop			; (mov r8, r8)
 800077a:	46bd      	mov	sp, r7
 800077c:	b002      	add	sp, #8
 800077e:	bd80      	pop	{r7, pc}
 8000780:	fffff0ff 	.word	0xfffff0ff

08000784 <LL_I2C_DisableAnalogFilter>:
 8000784:	b580      	push	{r7, lr}
 8000786:	b082      	sub	sp, #8
 8000788:	af00      	add	r7, sp, #0
 800078a:	6078      	str	r0, [r7, #4]
 800078c:	687b      	ldr	r3, [r7, #4]
 800078e:	681b      	ldr	r3, [r3, #0]
 8000790:	2280      	movs	r2, #128	; 0x80
 8000792:	0152      	lsls	r2, r2, #5
 8000794:	431a      	orrs	r2, r3
 8000796:	687b      	ldr	r3, [r7, #4]
 8000798:	601a      	str	r2, [r3, #0]
 800079a:	46c0      	nop			; (mov r8, r8)
 800079c:	46bd      	mov	sp, r7
 800079e:	b002      	add	sp, #8
 80007a0:	bd80      	pop	{r7, pc}

080007a2 <LL_I2C_DisableClockStretching>:
 80007a2:	b580      	push	{r7, lr}
 80007a4:	b082      	sub	sp, #8
 80007a6:	af00      	add	r7, sp, #0
 80007a8:	6078      	str	r0, [r7, #4]
 80007aa:	687b      	ldr	r3, [r7, #4]
 80007ac:	681b      	ldr	r3, [r3, #0]
 80007ae:	2280      	movs	r2, #128	; 0x80
 80007b0:	0292      	lsls	r2, r2, #10
 80007b2:	431a      	orrs	r2, r3
 80007b4:	687b      	ldr	r3, [r7, #4]
 80007b6:	601a      	str	r2, [r3, #0]
 80007b8:	46c0      	nop			; (mov r8, r8)
 80007ba:	46bd      	mov	sp, r7
 80007bc:	b002      	add	sp, #8
 80007be:	bd80      	pop	{r7, pc}

080007c0 <LL_I2C_SetMasterAddressingMode>:
 80007c0:	b580      	push	{r7, lr}
 80007c2:	b082      	sub	sp, #8
 80007c4:	af00      	add	r7, sp, #0
 80007c6:	6078      	str	r0, [r7, #4]
 80007c8:	6039      	str	r1, [r7, #0]
 80007ca:	687b      	ldr	r3, [r7, #4]
 80007cc:	685b      	ldr	r3, [r3, #4]
 80007ce:	4a05      	ldr	r2, [pc, #20]	; (80007e4 <LL_I2C_SetMasterAddressingMode+0x24>)
 80007d0:	401a      	ands	r2, r3
 80007d2:	683b      	ldr	r3, [r7, #0]
 80007d4:	431a      	orrs	r2, r3
 80007d6:	687b      	ldr	r3, [r7, #4]
 80007d8:	605a      	str	r2, [r3, #4]
 80007da:	46c0      	nop			; (mov r8, r8)
 80007dc:	46bd      	mov	sp, r7
 80007de:	b002      	add	sp, #8
 80007e0:	bd80      	pop	{r7, pc}
 80007e2:	46c0      	nop			; (mov r8, r8)
 80007e4:	fffff7ff 	.word	0xfffff7ff

080007e8 <LL_I2C_SetTiming>:
 80007e8:	b580      	push	{r7, lr}
 80007ea:	b082      	sub	sp, #8
 80007ec:	af00      	add	r7, sp, #0
 80007ee:	6078      	str	r0, [r7, #4]
 80007f0:	6039      	str	r1, [r7, #0]
 80007f2:	687b      	ldr	r3, [r7, #4]
 80007f4:	683a      	ldr	r2, [r7, #0]
 80007f6:	611a      	str	r2, [r3, #16]
 80007f8:	46c0      	nop			; (mov r8, r8)
 80007fa:	46bd      	mov	sp, r7
 80007fc:	b002      	add	sp, #8
 80007fe:	bd80      	pop	{r7, pc}

08000800 <LL_I2C_SetMode>:
 8000800:	b580      	push	{r7, lr}
 8000802:	b082      	sub	sp, #8
 8000804:	af00      	add	r7, sp, #0
 8000806:	6078      	str	r0, [r7, #4]
 8000808:	6039      	str	r1, [r7, #0]
 800080a:	687b      	ldr	r3, [r7, #4]
 800080c:	681b      	ldr	r3, [r3, #0]
 800080e:	4a05      	ldr	r2, [pc, #20]	; (8000824 <LL_I2C_SetMode+0x24>)
 8000810:	401a      	ands	r2, r3
 8000812:	683b      	ldr	r3, [r7, #0]
 8000814:	431a      	orrs	r2, r3
 8000816:	687b      	ldr	r3, [r7, #4]
 8000818:	601a      	str	r2, [r3, #0]
 800081a:	46c0      	nop			; (mov r8, r8)
 800081c:	46bd      	mov	sp, r7
 800081e:	b002      	add	sp, #8
 8000820:	bd80      	pop	{r7, pc}
 8000822:	46c0      	nop			; (mov r8, r8)
 8000824:	ffcfffff 	.word	0xffcfffff

08000828 <rcc_config>:
 8000828:	b580      	push	{r7, lr}
 800082a:	af00      	add	r7, sp, #0
 800082c:	2001      	movs	r0, #1
 800082e:	f7ff fe97 	bl	8000560 <LL_FLASH_SetLatency>
 8000832:	f7ff fdd1 	bl	80003d8 <LL_RCC_HSI_Enable>
 8000836:	46c0      	nop			; (mov r8, r8)
 8000838:	f7ff fddc 	bl	80003f4 <LL_RCC_HSI_IsReady>
 800083c:	0003      	movs	r3, r0
 800083e:	2b01      	cmp	r3, #1
 8000840:	d1fa      	bne.n	8000838 <rcc_config+0x10>
 8000842:	23a0      	movs	r3, #160	; 0xa0
 8000844:	039b      	lsls	r3, r3, #14
 8000846:	0019      	movs	r1, r3
 8000848:	2000      	movs	r0, #0
 800084a:	f7ff fe63 	bl	8000514 <LL_RCC_PLL_ConfigDomain_SYS>
 800084e:	f7ff fe3f 	bl	80004d0 <LL_RCC_PLL_Enable>
 8000852:	46c0      	nop			; (mov r8, r8)
 8000854:	f7ff fe4a 	bl	80004ec <LL_RCC_PLL_IsReady>
 8000858:	0003      	movs	r3, r0
 800085a:	2b01      	cmp	r3, #1
 800085c:	d1fa      	bne.n	8000854 <rcc_config+0x2c>
 800085e:	2000      	movs	r0, #0
 8000860:	f7ff fdf8 	bl	8000454 <LL_RCC_SetAHBPrescaler>
 8000864:	2002      	movs	r0, #2
 8000866:	f7ff fdd5 	bl	8000414 <LL_RCC_SetSysClkSource>
 800086a:	46c0      	nop			; (mov r8, r8)
 800086c:	f7ff fde6 	bl	800043c <LL_RCC_GetSysClkSource>
 8000870:	0003      	movs	r3, r0
 8000872:	2b08      	cmp	r3, #8
 8000874:	d1fa      	bne.n	800086c <rcc_config+0x44>
 8000876:	2000      	movs	r0, #0
 8000878:	f7ff fe00 	bl	800047c <LL_RCC_SetAPB1Prescaler>
 800087c:	4b02      	ldr	r3, [pc, #8]	; (8000888 <rcc_config+0x60>)
 800087e:	4a03      	ldr	r2, [pc, #12]	; (800088c <rcc_config+0x64>)
 8000880:	601a      	str	r2, [r3, #0]
 8000882:	46c0      	nop			; (mov r8, r8)
 8000884:	46bd      	mov	sp, r7
 8000886:	bd80      	pop	{r7, pc}
 8000888:	20000430 	.word	0x20000430
 800088c:	02dc6c00 	.word	0x02dc6c00

08000890 <gpio_config>:
 8000890:	b580      	push	{r7, lr}
 8000892:	af00      	add	r7, sp, #0
 8000894:	2380      	movs	r3, #128	; 0x80
 8000896:	031b      	lsls	r3, r3, #12
 8000898:	0018      	movs	r0, r3
 800089a:	f7ff fe75 	bl	8000588 <LL_AHB1_GRP1_EnableClock>
 800089e:	2380      	movs	r3, #128	; 0x80
 80008a0:	005b      	lsls	r3, r3, #1
 80008a2:	4807      	ldr	r0, [pc, #28]	; (80008c0 <gpio_config+0x30>)
 80008a4:	2201      	movs	r2, #1
 80008a6:	0019      	movs	r1, r3
 80008a8:	f7ff fe9a 	bl	80005e0 <LL_GPIO_SetPinMode>
 80008ac:	2380      	movs	r3, #128	; 0x80
 80008ae:	009b      	lsls	r3, r3, #2
 80008b0:	4803      	ldr	r0, [pc, #12]	; (80008c0 <gpio_config+0x30>)
 80008b2:	2201      	movs	r2, #1
 80008b4:	0019      	movs	r1, r3
 80008b6:	f7ff fe93 	bl	80005e0 <LL_GPIO_SetPinMode>
 80008ba:	46c0      	nop			; (mov r8, r8)
 80008bc:	46bd      	mov	sp, r7
 80008be:	bd80      	pop	{r7, pc}
 80008c0:	48000800 	.word	0x48000800

080008c4 <i2c_config>:
 80008c4:	b580      	push	{r7, lr}
 80008c6:	af00      	add	r7, sp, #0
 80008c8:	2380      	movs	r3, #128	; 0x80
 80008ca:	02db      	lsls	r3, r3, #11
 80008cc:	0018      	movs	r0, r3
 80008ce:	f7ff fe5b 	bl	8000588 <LL_AHB1_GRP1_EnableClock>
 80008d2:	4b36      	ldr	r3, [pc, #216]	; (80009ac <i2c_config+0xe8>)
 80008d4:	2202      	movs	r2, #2
 80008d6:	2140      	movs	r1, #64	; 0x40
 80008d8:	0018      	movs	r0, r3
 80008da:	f7ff fe81 	bl	80005e0 <LL_GPIO_SetPinMode>
 80008de:	4b33      	ldr	r3, [pc, #204]	; (80009ac <i2c_config+0xe8>)
 80008e0:	2203      	movs	r2, #3
 80008e2:	2140      	movs	r1, #64	; 0x40
 80008e4:	0018      	movs	r0, r3
 80008e6:	f7ff fead 	bl	8000644 <LL_GPIO_SetPinSpeed>
 80008ea:	4b30      	ldr	r3, [pc, #192]	; (80009ac <i2c_config+0xe8>)
 80008ec:	2201      	movs	r2, #1
 80008ee:	2140      	movs	r1, #64	; 0x40
 80008f0:	0018      	movs	r0, r3
 80008f2:	f7ff fe92 	bl	800061a <LL_GPIO_SetPinOutputType>
 80008f6:	4b2d      	ldr	r3, [pc, #180]	; (80009ac <i2c_config+0xe8>)
 80008f8:	2201      	movs	r2, #1
 80008fa:	2140      	movs	r1, #64	; 0x40
 80008fc:	0018      	movs	r0, r3
 80008fe:	f7ff febe 	bl	800067e <LL_GPIO_SetPinPull>
 8000902:	4b2a      	ldr	r3, [pc, #168]	; (80009ac <i2c_config+0xe8>)
 8000904:	2201      	movs	r2, #1
 8000906:	2140      	movs	r1, #64	; 0x40
 8000908:	0018      	movs	r0, r3
 800090a:	f7ff fed5 	bl	80006b8 <LL_GPIO_SetAFPin_0_7>
 800090e:	4b27      	ldr	r3, [pc, #156]	; (80009ac <i2c_config+0xe8>)
 8000910:	2202      	movs	r2, #2
 8000912:	2180      	movs	r1, #128	; 0x80
 8000914:	0018      	movs	r0, r3
 8000916:	f7ff fe63 	bl	80005e0 <LL_GPIO_SetPinMode>
 800091a:	4b24      	ldr	r3, [pc, #144]	; (80009ac <i2c_config+0xe8>)
 800091c:	2203      	movs	r2, #3
 800091e:	2180      	movs	r1, #128	; 0x80
 8000920:	0018      	movs	r0, r3
 8000922:	f7ff fe8f 	bl	8000644 <LL_GPIO_SetPinSpeed>
 8000926:	4b21      	ldr	r3, [pc, #132]	; (80009ac <i2c_config+0xe8>)
 8000928:	2201      	movs	r2, #1
 800092a:	2180      	movs	r1, #128	; 0x80
 800092c:	0018      	movs	r0, r3
 800092e:	f7ff fe74 	bl	800061a <LL_GPIO_SetPinOutputType>
 8000932:	4b1e      	ldr	r3, [pc, #120]	; (80009ac <i2c_config+0xe8>)
 8000934:	2201      	movs	r2, #1
 8000936:	2180      	movs	r1, #128	; 0x80
 8000938:	0018      	movs	r0, r3
 800093a:	f7ff fea0 	bl	800067e <LL_GPIO_SetPinPull>
 800093e:	4b1b      	ldr	r3, [pc, #108]	; (80009ac <i2c_config+0xe8>)
 8000940:	2201      	movs	r2, #1
 8000942:	2180      	movs	r1, #128	; 0x80
 8000944:	0018      	movs	r0, r3
 8000946:	f7ff feb7 	bl	80006b8 <LL_GPIO_SetAFPin_0_7>
 800094a:	2010      	movs	r0, #16
 800094c:	f7ff fdac 	bl	80004a8 <LL_RCC_SetI2CClockSource>
 8000950:	4b17      	ldr	r3, [pc, #92]	; (80009b0 <i2c_config+0xec>)
 8000952:	0018      	movs	r0, r3
 8000954:	f7ff fef2 	bl	800073c <LL_I2C_Disable>
 8000958:	2380      	movs	r3, #128	; 0x80
 800095a:	039b      	lsls	r3, r3, #14
 800095c:	0018      	movs	r0, r3
 800095e:	f7ff fe29 	bl	80005b4 <LL_APB1_GRP1_EnableClock>
 8000962:	4b13      	ldr	r3, [pc, #76]	; (80009b0 <i2c_config+0xec>)
 8000964:	0018      	movs	r0, r3
 8000966:	f7ff ff0d 	bl	8000784 <LL_I2C_DisableAnalogFilter>
 800096a:	4b11      	ldr	r3, [pc, #68]	; (80009b0 <i2c_config+0xec>)
 800096c:	2101      	movs	r1, #1
 800096e:	0018      	movs	r0, r3
 8000970:	f7ff fef4 	bl	800075c <LL_I2C_SetDigitalFilter>
 8000974:	4a0f      	ldr	r2, [pc, #60]	; (80009b4 <i2c_config+0xf0>)
 8000976:	4b0e      	ldr	r3, [pc, #56]	; (80009b0 <i2c_config+0xec>)
 8000978:	0011      	movs	r1, r2
 800097a:	0018      	movs	r0, r3
 800097c:	f7ff ff34 	bl	80007e8 <LL_I2C_SetTiming>
 8000980:	4b0b      	ldr	r3, [pc, #44]	; (80009b0 <i2c_config+0xec>)
 8000982:	0018      	movs	r0, r3
 8000984:	f7ff ff0d 	bl	80007a2 <LL_I2C_DisableClockStretching>
 8000988:	4b09      	ldr	r3, [pc, #36]	; (80009b0 <i2c_config+0xec>)
 800098a:	2100      	movs	r1, #0
 800098c:	0018      	movs	r0, r3
 800098e:	f7ff ff17 	bl	80007c0 <LL_I2C_SetMasterAddressingMode>
 8000992:	4b07      	ldr	r3, [pc, #28]	; (80009b0 <i2c_config+0xec>)
 8000994:	2100      	movs	r1, #0
 8000996:	0018      	movs	r0, r3
 8000998:	f7ff ff32 	bl	8000800 <LL_I2C_SetMode>
 800099c:	4b04      	ldr	r3, [pc, #16]	; (80009b0 <i2c_config+0xec>)
 800099e:	0018      	movs	r0, r3
 80009a0:	f7ff febe 	bl	8000720 <LL_I2C_Enable>
 80009a4:	46c0      	nop			; (mov r8, r8)
 80009a6:	46bd      	mov	sp, r7
 80009a8:	bd80      	pop	{r7, pc}
 80009aa:	46c0      	nop			; (mov r8, r8)
 80009ac:	48000400 	.word	0x48000400
 80009b0:	40005400 	.word	0x40005400
 80009b4:	50330309 	.word	0x50330309

080009b8 <main>:
 80009b8:	b580      	push	{r7, lr}
 80009ba:	af00      	add	r7, sp, #0
 80009bc:	f7ff ff34 	bl	8000828 <rcc_config>
 80009c0:	f7ff ff66 	bl	8000890 <gpio_config>
 80009c4:	f7ff ff7e 	bl	80008c4 <i2c_config>
 80009c8:	f000 fc00 	bl	80011cc <EE_Test>
 80009cc:	1e03      	subs	r3, r0, #0
 80009ce:	d107      	bne.n	80009e0 <main+0x28>
 80009d0:	2380      	movs	r3, #128	; 0x80
 80009d2:	009b      	lsls	r3, r3, #2
 80009d4:	4a06      	ldr	r2, [pc, #24]	; (80009f0 <main+0x38>)
 80009d6:	0019      	movs	r1, r3
 80009d8:	0010      	movs	r0, r2
 80009da:	f7ff fe92 	bl	8000702 <LL_GPIO_TogglePin>
 80009de:	e006      	b.n	80009ee <main+0x36>
 80009e0:	2380      	movs	r3, #128	; 0x80
 80009e2:	005b      	lsls	r3, r3, #1
 80009e4:	4a02      	ldr	r2, [pc, #8]	; (80009f0 <main+0x38>)
 80009e6:	0019      	movs	r1, r3
 80009e8:	0010      	movs	r0, r2
 80009ea:	f7ff fe8a 	bl	8000702 <LL_GPIO_TogglePin>
 80009ee:	e7fe      	b.n	80009ee <main+0x36>
 80009f0:	48000800 	.word	0x48000800

080009f4 <SystemInit>:
 80009f4:	b580      	push	{r7, lr}
 80009f6:	af00      	add	r7, sp, #0
 80009f8:	4b1a      	ldr	r3, [pc, #104]	; (8000a64 <SystemInit+0x70>)
 80009fa:	681a      	ldr	r2, [r3, #0]
 80009fc:	4b19      	ldr	r3, [pc, #100]	; (8000a64 <SystemInit+0x70>)
 80009fe:	2101      	movs	r1, #1
 8000a00:	430a      	orrs	r2, r1
 8000a02:	601a      	str	r2, [r3, #0]
 8000a04:	4b17      	ldr	r3, [pc, #92]	; (8000a64 <SystemInit+0x70>)
 8000a06:	685a      	ldr	r2, [r3, #4]
 8000a08:	4b16      	ldr	r3, [pc, #88]	; (8000a64 <SystemInit+0x70>)
 8000a0a:	4917      	ldr	r1, [pc, #92]	; (8000a68 <SystemInit+0x74>)
 8000a0c:	400a      	ands	r2, r1
 8000a0e:	605a      	str	r2, [r3, #4]
 8000a10:	4b14      	ldr	r3, [pc, #80]	; (8000a64 <SystemInit+0x70>)
 8000a12:	681a      	ldr	r2, [r3, #0]
 8000a14:	4b13      	ldr	r3, [pc, #76]	; (8000a64 <SystemInit+0x70>)
 8000a16:	4915      	ldr	r1, [pc, #84]	; (8000a6c <SystemInit+0x78>)
 8000a18:	400a      	ands	r2, r1
 8000a1a:	601a      	str	r2, [r3, #0]
 8000a1c:	4b11      	ldr	r3, [pc, #68]	; (8000a64 <SystemInit+0x70>)
 8000a1e:	681a      	ldr	r2, [r3, #0]
 8000a20:	4b10      	ldr	r3, [pc, #64]	; (8000a64 <SystemInit+0x70>)
 8000a22:	4913      	ldr	r1, [pc, #76]	; (8000a70 <SystemInit+0x7c>)
 8000a24:	400a      	ands	r2, r1
 8000a26:	601a      	str	r2, [r3, #0]
 8000a28:	4b0e      	ldr	r3, [pc, #56]	; (8000a64 <SystemInit+0x70>)
 8000a2a:	685a      	ldr	r2, [r3, #4]
 8000a2c:	4b0d      	ldr	r3, [pc, #52]	; (8000a64 <SystemInit+0x70>)
 8000a2e:	4911      	ldr	r1, [pc, #68]	; (8000a74 <SystemInit+0x80>)
 8000a30:	400a      	ands	r2, r1
 8000a32:	605a      	str	r2, [r3, #4]
 8000a34:	4b0b      	ldr	r3, [pc, #44]	; (8000a64 <SystemInit+0x70>)
 8000a36:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000a38:	4b0a      	ldr	r3, [pc, #40]	; (8000a64 <SystemInit+0x70>)
 8000a3a:	210f      	movs	r1, #15
 8000a3c:	438a      	bics	r2, r1
 8000a3e:	62da      	str	r2, [r3, #44]	; 0x2c
 8000a40:	4b08      	ldr	r3, [pc, #32]	; (8000a64 <SystemInit+0x70>)
 8000a42:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000a44:	4b07      	ldr	r3, [pc, #28]	; (8000a64 <SystemInit+0x70>)
 8000a46:	490c      	ldr	r1, [pc, #48]	; (8000a78 <SystemInit+0x84>)
 8000a48:	400a      	ands	r2, r1
 8000a4a:	631a      	str	r2, [r3, #48]	; 0x30
 8000a4c:	4b05      	ldr	r3, [pc, #20]	; (8000a64 <SystemInit+0x70>)
 8000a4e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000a50:	4b04      	ldr	r3, [pc, #16]	; (8000a64 <SystemInit+0x70>)
 8000a52:	2101      	movs	r1, #1
 8000a54:	438a      	bics	r2, r1
 8000a56:	635a      	str	r2, [r3, #52]	; 0x34
 8000a58:	4b02      	ldr	r3, [pc, #8]	; (8000a64 <SystemInit+0x70>)
 8000a5a:	2200      	movs	r2, #0
 8000a5c:	609a      	str	r2, [r3, #8]
 8000a5e:	46c0      	nop			; (mov r8, r8)
 8000a60:	46bd      	mov	sp, r7
 8000a62:	bd80      	pop	{r7, pc}
 8000a64:	40021000 	.word	0x40021000
 8000a68:	f8ffb80c 	.word	0xf8ffb80c
 8000a6c:	fef6ffff 	.word	0xfef6ffff
 8000a70:	fffbffff 	.word	0xfffbffff
 8000a74:	ffc0ffff 	.word	0xffc0ffff
 8000a78:	fffffeac 	.word	0xfffffeac

08000a7c <LL_I2C_IsActiveFlag_TXE>:
 8000a7c:	b580      	push	{r7, lr}
 8000a7e:	b082      	sub	sp, #8
 8000a80:	af00      	add	r7, sp, #0
 8000a82:	6078      	str	r0, [r7, #4]
 8000a84:	687b      	ldr	r3, [r7, #4]
 8000a86:	699b      	ldr	r3, [r3, #24]
 8000a88:	2201      	movs	r2, #1
 8000a8a:	4013      	ands	r3, r2
 8000a8c:	3b01      	subs	r3, #1
 8000a8e:	425a      	negs	r2, r3
 8000a90:	4153      	adcs	r3, r2
 8000a92:	b2db      	uxtb	r3, r3
 8000a94:	0018      	movs	r0, r3
 8000a96:	46bd      	mov	sp, r7
 8000a98:	b002      	add	sp, #8
 8000a9a:	bd80      	pop	{r7, pc}

08000a9c <LL_I2C_IsActiveFlag_RXNE>:
 8000a9c:	b580      	push	{r7, lr}
 8000a9e:	b082      	sub	sp, #8
 8000aa0:	af00      	add	r7, sp, #0
 8000aa2:	6078      	str	r0, [r7, #4]
 8000aa4:	687b      	ldr	r3, [r7, #4]
 8000aa6:	699b      	ldr	r3, [r3, #24]
 8000aa8:	2204      	movs	r2, #4
 8000aaa:	4013      	ands	r3, r2
 8000aac:	3b04      	subs	r3, #4
 8000aae:	425a      	negs	r2, r3
 8000ab0:	4153      	adcs	r3, r2
 8000ab2:	b2db      	uxtb	r3, r3
 8000ab4:	0018      	movs	r0, r3
 8000ab6:	46bd      	mov	sp, r7
 8000ab8:	b002      	add	sp, #8
 8000aba:	bd80      	pop	{r7, pc}

08000abc <LL_I2C_IsActiveFlag_STOP>:
 8000abc:	b580      	push	{r7, lr}
 8000abe:	b082      	sub	sp, #8
 8000ac0:	af00      	add	r7, sp, #0
 8000ac2:	6078      	str	r0, [r7, #4]
 8000ac4:	687b      	ldr	r3, [r7, #4]
 8000ac6:	699b      	ldr	r3, [r3, #24]
 8000ac8:	2220      	movs	r2, #32
 8000aca:	4013      	ands	r3, r2
 8000acc:	3b20      	subs	r3, #32
 8000ace:	425a      	negs	r2, r3
 8000ad0:	4153      	adcs	r3, r2
 8000ad2:	b2db      	uxtb	r3, r3
 8000ad4:	0018      	movs	r0, r3
 8000ad6:	46bd      	mov	sp, r7
 8000ad8:	b002      	add	sp, #8
 8000ada:	bd80      	pop	{r7, pc}

08000adc <LL_I2C_IsActiveFlag_BUSY>:
 8000adc:	b580      	push	{r7, lr}
 8000ade:	b082      	sub	sp, #8
 8000ae0:	af00      	add	r7, sp, #0
 8000ae2:	6078      	str	r0, [r7, #4]
 8000ae4:	687b      	ldr	r3, [r7, #4]
 8000ae6:	699a      	ldr	r2, [r3, #24]
 8000ae8:	2380      	movs	r3, #128	; 0x80
 8000aea:	021b      	lsls	r3, r3, #8
 8000aec:	4013      	ands	r3, r2
 8000aee:	4a05      	ldr	r2, [pc, #20]	; (8000b04 <LL_I2C_IsActiveFlag_BUSY+0x28>)
 8000af0:	4694      	mov	ip, r2
 8000af2:	4463      	add	r3, ip
 8000af4:	425a      	negs	r2, r3
 8000af6:	4153      	adcs	r3, r2
 8000af8:	b2db      	uxtb	r3, r3
 8000afa:	0018      	movs	r0, r3
 8000afc:	46bd      	mov	sp, r7
 8000afe:	b002      	add	sp, #8
 8000b00:	bd80      	pop	{r7, pc}
 8000b02:	46c0      	nop			; (mov r8, r8)
 8000b04:	ffff8000 	.word	0xffff8000

08000b08 <LL_I2C_ClearFlag_STOP>:
 8000b08:	b580      	push	{r7, lr}
 8000b0a:	b082      	sub	sp, #8
 8000b0c:	af00      	add	r7, sp, #0
 8000b0e:	6078      	str	r0, [r7, #4]
 8000b10:	687b      	ldr	r3, [r7, #4]
 8000b12:	69db      	ldr	r3, [r3, #28]
 8000b14:	2220      	movs	r2, #32
 8000b16:	431a      	orrs	r2, r3
 8000b18:	687b      	ldr	r3, [r7, #4]
 8000b1a:	61da      	str	r2, [r3, #28]
 8000b1c:	46c0      	nop			; (mov r8, r8)
 8000b1e:	46bd      	mov	sp, r7
 8000b20:	b002      	add	sp, #8
 8000b22:	bd80      	pop	{r7, pc}

08000b24 <LL_I2C_ClearFlag_TXE>:
 8000b24:	b580      	push	{r7, lr}
 8000b26:	b082      	sub	sp, #8
 8000b28:	af00      	add	r7, sp, #0
 8000b2a:	6078      	str	r0, [r7, #4]
 8000b2c:	687b      	ldr	r3, [r7, #4]
 8000b2e:	2201      	movs	r2, #1
 8000b30:	619a      	str	r2, [r3, #24]
 8000b32:	46c0      	nop			; (mov r8, r8)
 8000b34:	46bd      	mov	sp, r7
 8000b36:	b002      	add	sp, #8
 8000b38:	bd80      	pop	{r7, pc}
	...

08000b3c <LL_I2C_DisableAutoEndMode>:
 8000b3c:	b580      	push	{r7, lr}
 8000b3e:	b082      	sub	sp, #8
 8000b40:	af00      	add	r7, sp, #0
 8000b42:	6078      	str	r0, [r7, #4]
 8000b44:	687b      	ldr	r3, [r7, #4]
 8000b46:	685b      	ldr	r3, [r3, #4]
 8000b48:	4a03      	ldr	r2, [pc, #12]	; (8000b58 <LL_I2C_DisableAutoEndMode+0x1c>)
 8000b4a:	401a      	ands	r2, r3
 8000b4c:	687b      	ldr	r3, [r7, #4]
 8000b4e:	605a      	str	r2, [r3, #4]
 8000b50:	46c0      	nop			; (mov r8, r8)
 8000b52:	46bd      	mov	sp, r7
 8000b54:	b002      	add	sp, #8
 8000b56:	bd80      	pop	{r7, pc}
 8000b58:	fdffffff 	.word	0xfdffffff

08000b5c <LL_I2C_SetTransferSize>:
 8000b5c:	b580      	push	{r7, lr}
 8000b5e:	b082      	sub	sp, #8
 8000b60:	af00      	add	r7, sp, #0
 8000b62:	6078      	str	r0, [r7, #4]
 8000b64:	6039      	str	r1, [r7, #0]
 8000b66:	687b      	ldr	r3, [r7, #4]
 8000b68:	685b      	ldr	r3, [r3, #4]
 8000b6a:	4a05      	ldr	r2, [pc, #20]	; (8000b80 <LL_I2C_SetTransferSize+0x24>)
 8000b6c:	401a      	ands	r2, r3
 8000b6e:	683b      	ldr	r3, [r7, #0]
 8000b70:	041b      	lsls	r3, r3, #16
 8000b72:	431a      	orrs	r2, r3
 8000b74:	687b      	ldr	r3, [r7, #4]
 8000b76:	605a      	str	r2, [r3, #4]
 8000b78:	46c0      	nop			; (mov r8, r8)
 8000b7a:	46bd      	mov	sp, r7
 8000b7c:	b002      	add	sp, #8
 8000b7e:	bd80      	pop	{r7, pc}
 8000b80:	ff00ffff 	.word	0xff00ffff

08000b84 <LL_I2C_GenerateStartCondition>:
 8000b84:	b580      	push	{r7, lr}
 8000b86:	b082      	sub	sp, #8
 8000b88:	af00      	add	r7, sp, #0
 8000b8a:	6078      	str	r0, [r7, #4]
 8000b8c:	687b      	ldr	r3, [r7, #4]
 8000b8e:	685b      	ldr	r3, [r3, #4]
 8000b90:	2280      	movs	r2, #128	; 0x80
 8000b92:	0192      	lsls	r2, r2, #6
 8000b94:	431a      	orrs	r2, r3
 8000b96:	687b      	ldr	r3, [r7, #4]
 8000b98:	605a      	str	r2, [r3, #4]
 8000b9a:	46c0      	nop			; (mov r8, r8)
 8000b9c:	46bd      	mov	sp, r7
 8000b9e:	b002      	add	sp, #8
 8000ba0:	bd80      	pop	{r7, pc}

08000ba2 <LL_I2C_GenerateStopCondition>:
 8000ba2:	b580      	push	{r7, lr}
 8000ba4:	b082      	sub	sp, #8
 8000ba6:	af00      	add	r7, sp, #0
 8000ba8:	6078      	str	r0, [r7, #4]
 8000baa:	687b      	ldr	r3, [r7, #4]
 8000bac:	685b      	ldr	r3, [r3, #4]
 8000bae:	2280      	movs	r2, #128	; 0x80
 8000bb0:	01d2      	lsls	r2, r2, #7
 8000bb2:	431a      	orrs	r2, r3
 8000bb4:	687b      	ldr	r3, [r7, #4]
 8000bb6:	605a      	str	r2, [r3, #4]
 8000bb8:	46c0      	nop			; (mov r8, r8)
 8000bba:	46bd      	mov	sp, r7
 8000bbc:	b002      	add	sp, #8
 8000bbe:	bd80      	pop	{r7, pc}

08000bc0 <LL_I2C_SetTransferRequest>:
 8000bc0:	b580      	push	{r7, lr}
 8000bc2:	b082      	sub	sp, #8
 8000bc4:	af00      	add	r7, sp, #0
 8000bc6:	6078      	str	r0, [r7, #4]
 8000bc8:	6039      	str	r1, [r7, #0]
 8000bca:	687b      	ldr	r3, [r7, #4]
 8000bcc:	685b      	ldr	r3, [r3, #4]
 8000bce:	4a05      	ldr	r2, [pc, #20]	; (8000be4 <LL_I2C_SetTransferRequest+0x24>)
 8000bd0:	401a      	ands	r2, r3
 8000bd2:	683b      	ldr	r3, [r7, #0]
 8000bd4:	431a      	orrs	r2, r3
 8000bd6:	687b      	ldr	r3, [r7, #4]
 8000bd8:	605a      	str	r2, [r3, #4]
 8000bda:	46c0      	nop			; (mov r8, r8)
 8000bdc:	46bd      	mov	sp, r7
 8000bde:	b002      	add	sp, #8
 8000be0:	bd80      	pop	{r7, pc}
 8000be2:	46c0      	nop			; (mov r8, r8)
 8000be4:	fffffbff 	.word	0xfffffbff

08000be8 <LL_I2C_SetSlaveAddr>:
 8000be8:	b580      	push	{r7, lr}
 8000bea:	b082      	sub	sp, #8
 8000bec:	af00      	add	r7, sp, #0
 8000bee:	6078      	str	r0, [r7, #4]
 8000bf0:	6039      	str	r1, [r7, #0]
 8000bf2:	687b      	ldr	r3, [r7, #4]
 8000bf4:	685b      	ldr	r3, [r3, #4]
 8000bf6:	0a9b      	lsrs	r3, r3, #10
 8000bf8:	029a      	lsls	r2, r3, #10
 8000bfa:	683b      	ldr	r3, [r7, #0]
 8000bfc:	431a      	orrs	r2, r3
 8000bfe:	687b      	ldr	r3, [r7, #4]
 8000c00:	605a      	str	r2, [r3, #4]
 8000c02:	46c0      	nop			; (mov r8, r8)
 8000c04:	46bd      	mov	sp, r7
 8000c06:	b002      	add	sp, #8
 8000c08:	bd80      	pop	{r7, pc}

08000c0a <LL_I2C_ReceiveData8>:
 8000c0a:	b580      	push	{r7, lr}
 8000c0c:	b082      	sub	sp, #8
 8000c0e:	af00      	add	r7, sp, #0
 8000c10:	6078      	str	r0, [r7, #4]
 8000c12:	687b      	ldr	r3, [r7, #4]
 8000c14:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000c16:	b2db      	uxtb	r3, r3
 8000c18:	0018      	movs	r0, r3
 8000c1a:	46bd      	mov	sp, r7
 8000c1c:	b002      	add	sp, #8
 8000c1e:	bd80      	pop	{r7, pc}

08000c20 <LL_I2C_TransmitData8>:
 8000c20:	b580      	push	{r7, lr}
 8000c22:	b082      	sub	sp, #8
 8000c24:	af00      	add	r7, sp, #0
 8000c26:	6078      	str	r0, [r7, #4]
 8000c28:	000a      	movs	r2, r1
 8000c2a:	1cfb      	adds	r3, r7, #3
 8000c2c:	701a      	strb	r2, [r3, #0]
 8000c2e:	1cfb      	adds	r3, r7, #3
 8000c30:	781a      	ldrb	r2, [r3, #0]
 8000c32:	687b      	ldr	r3, [r7, #4]
 8000c34:	629a      	str	r2, [r3, #40]	; 0x28
 8000c36:	46c0      	nop			; (mov r8, r8)
 8000c38:	46bd      	mov	sp, r7
 8000c3a:	b002      	add	sp, #8
 8000c3c:	bd80      	pop	{r7, pc}

08000c3e <I2C_Start>:
 8000c3e:	b580      	push	{r7, lr}
 8000c40:	b082      	sub	sp, #8
 8000c42:	af00      	add	r7, sp, #0
 8000c44:	6078      	str	r0, [r7, #4]
 8000c46:	46c0      	nop			; (mov r8, r8)
 8000c48:	687b      	ldr	r3, [r7, #4]
 8000c4a:	681b      	ldr	r3, [r3, #0]
 8000c4c:	0018      	movs	r0, r3
 8000c4e:	f7ff ff45 	bl	8000adc <LL_I2C_IsActiveFlag_BUSY>
 8000c52:	1e03      	subs	r3, r0, #0
 8000c54:	d1f8      	bne.n	8000c48 <I2C_Start+0xa>
 8000c56:	687b      	ldr	r3, [r7, #4]
 8000c58:	681b      	ldr	r3, [r3, #0]
 8000c5a:	0018      	movs	r0, r3
 8000c5c:	f7ff ff6e 	bl	8000b3c <LL_I2C_DisableAutoEndMode>
 8000c60:	687b      	ldr	r3, [r7, #4]
 8000c62:	681b      	ldr	r3, [r3, #0]
 8000c64:	0018      	movs	r0, r3
 8000c66:	f7ff ff8d 	bl	8000b84 <LL_I2C_GenerateStartCondition>
 8000c6a:	46c0      	nop			; (mov r8, r8)
 8000c6c:	46bd      	mov	sp, r7
 8000c6e:	b002      	add	sp, #8
 8000c70:	bd80      	pop	{r7, pc}

08000c72 <I2C_Stop>:
 8000c72:	b580      	push	{r7, lr}
 8000c74:	b082      	sub	sp, #8
 8000c76:	af00      	add	r7, sp, #0
 8000c78:	6078      	str	r0, [r7, #4]
 8000c7a:	687b      	ldr	r3, [r7, #4]
 8000c7c:	681b      	ldr	r3, [r3, #0]
 8000c7e:	0018      	movs	r0, r3
 8000c80:	f7ff ff42 	bl	8000b08 <LL_I2C_ClearFlag_STOP>
 8000c84:	687b      	ldr	r3, [r7, #4]
 8000c86:	681b      	ldr	r3, [r3, #0]
 8000c88:	0018      	movs	r0, r3
 8000c8a:	f7ff ff8a 	bl	8000ba2 <LL_I2C_GenerateStopCondition>
 8000c8e:	46c0      	nop			; (mov r8, r8)
 8000c90:	687b      	ldr	r3, [r7, #4]
 8000c92:	681b      	ldr	r3, [r3, #0]
 8000c94:	0018      	movs	r0, r3
 8000c96:	f7ff ff11 	bl	8000abc <LL_I2C_IsActiveFlag_STOP>
 8000c9a:	1e03      	subs	r3, r0, #0
 8000c9c:	d0f8      	beq.n	8000c90 <I2C_Stop+0x1e>
 8000c9e:	46c0      	nop			; (mov r8, r8)
 8000ca0:	46bd      	mov	sp, r7
 8000ca2:	b002      	add	sp, #8
 8000ca4:	bd80      	pop	{r7, pc}

08000ca6 <I2C_SetDevAddr>:
 8000ca6:	b580      	push	{r7, lr}
 8000ca8:	b082      	sub	sp, #8
 8000caa:	af00      	add	r7, sp, #0
 8000cac:	6078      	str	r0, [r7, #4]
 8000cae:	6039      	str	r1, [r7, #0]
 8000cb0:	683b      	ldr	r3, [r7, #0]
 8000cb2:	3301      	adds	r3, #1
 8000cb4:	d010      	beq.n	8000cd8 <I2C_SetDevAddr+0x32>
 8000cb6:	687b      	ldr	r3, [r7, #4]
 8000cb8:	799b      	ldrb	r3, [r3, #6]
 8000cba:	00db      	lsls	r3, r3, #3
 8000cbc:	3b01      	subs	r3, #1
 8000cbe:	683a      	ldr	r2, [r7, #0]
 8000cc0:	40da      	lsrs	r2, r3
 8000cc2:	0013      	movs	r3, r2
 8000cc4:	b2da      	uxtb	r2, r3
 8000cc6:	687b      	ldr	r3, [r7, #4]
 8000cc8:	715a      	strb	r2, [r3, #5]
 8000cca:	687b      	ldr	r3, [r7, #4]
 8000ccc:	795b      	ldrb	r3, [r3, #5]
 8000cce:	220e      	movs	r2, #14
 8000cd0:	4013      	ands	r3, r2
 8000cd2:	b2da      	uxtb	r2, r3
 8000cd4:	687b      	ldr	r3, [r7, #4]
 8000cd6:	715a      	strb	r2, [r3, #5]
 8000cd8:	687b      	ldr	r3, [r7, #4]
 8000cda:	6818      	ldr	r0, [r3, #0]
 8000cdc:	687b      	ldr	r3, [r7, #4]
 8000cde:	791a      	ldrb	r2, [r3, #4]
 8000ce0:	687b      	ldr	r3, [r7, #4]
 8000ce2:	795b      	ldrb	r3, [r3, #5]
 8000ce4:	4313      	orrs	r3, r2
 8000ce6:	b2db      	uxtb	r3, r3
 8000ce8:	0019      	movs	r1, r3
 8000cea:	f7ff ff7d 	bl	8000be8 <LL_I2C_SetSlaveAddr>
 8000cee:	46c0      	nop			; (mov r8, r8)
 8000cf0:	46bd      	mov	sp, r7
 8000cf2:	b002      	add	sp, #8
 8000cf4:	bd80      	pop	{r7, pc}

08000cf6 <I2C_SendData>:
 8000cf6:	b580      	push	{r7, lr}
 8000cf8:	b082      	sub	sp, #8
 8000cfa:	af00      	add	r7, sp, #0
 8000cfc:	6078      	str	r0, [r7, #4]
 8000cfe:	000a      	movs	r2, r1
 8000d00:	1cfb      	adds	r3, r7, #3
 8000d02:	701a      	strb	r2, [r3, #0]
 8000d04:	687b      	ldr	r3, [r7, #4]
 8000d06:	681b      	ldr	r3, [r3, #0]
 8000d08:	0018      	movs	r0, r3
 8000d0a:	f7ff ff0b 	bl	8000b24 <LL_I2C_ClearFlag_TXE>
 8000d0e:	687b      	ldr	r3, [r7, #4]
 8000d10:	681a      	ldr	r2, [r3, #0]
 8000d12:	1cfb      	adds	r3, r7, #3
 8000d14:	781b      	ldrb	r3, [r3, #0]
 8000d16:	0019      	movs	r1, r3
 8000d18:	0010      	movs	r0, r2
 8000d1a:	f7ff ff81 	bl	8000c20 <LL_I2C_TransmitData8>
 8000d1e:	46c0      	nop			; (mov r8, r8)
 8000d20:	687b      	ldr	r3, [r7, #4]
 8000d22:	681b      	ldr	r3, [r3, #0]
 8000d24:	0018      	movs	r0, r3
 8000d26:	f7ff fea9 	bl	8000a7c <LL_I2C_IsActiveFlag_TXE>
 8000d2a:	1e03      	subs	r3, r0, #0
 8000d2c:	d0f8      	beq.n	8000d20 <I2C_SendData+0x2a>
 8000d2e:	46c0      	nop			; (mov r8, r8)
 8000d30:	46bd      	mov	sp, r7
 8000d32:	b002      	add	sp, #8
 8000d34:	bd80      	pop	{r7, pc}

08000d36 <I2C_GetData>:
 8000d36:	b580      	push	{r7, lr}
 8000d38:	b082      	sub	sp, #8
 8000d3a:	af00      	add	r7, sp, #0
 8000d3c:	6078      	str	r0, [r7, #4]
 8000d3e:	46c0      	nop			; (mov r8, r8)
 8000d40:	687b      	ldr	r3, [r7, #4]
 8000d42:	681b      	ldr	r3, [r3, #0]
 8000d44:	0018      	movs	r0, r3
 8000d46:	f7ff fea9 	bl	8000a9c <LL_I2C_IsActiveFlag_RXNE>
 8000d4a:	1e03      	subs	r3, r0, #0
 8000d4c:	d0f8      	beq.n	8000d40 <I2C_GetData+0xa>
 8000d4e:	687b      	ldr	r3, [r7, #4]
 8000d50:	681b      	ldr	r3, [r3, #0]
 8000d52:	0018      	movs	r0, r3
 8000d54:	f7ff ff59 	bl	8000c0a <LL_I2C_ReceiveData8>
 8000d58:	0003      	movs	r3, r0
 8000d5a:	0018      	movs	r0, r3
 8000d5c:	46bd      	mov	sp, r7
 8000d5e:	b002      	add	sp, #8
 8000d60:	bd80      	pop	{r7, pc}

08000d62 <I2C_SendAddr>:
 8000d62:	b580      	push	{r7, lr}
 8000d64:	b082      	sub	sp, #8
 8000d66:	af00      	add	r7, sp, #0
 8000d68:	6078      	str	r0, [r7, #4]
 8000d6a:	6039      	str	r1, [r7, #0]
 8000d6c:	687b      	ldr	r3, [r7, #4]
 8000d6e:	799b      	ldrb	r3, [r3, #6]
 8000d70:	2b03      	cmp	r3, #3
 8000d72:	d00c      	beq.n	8000d8e <I2C_SendAddr+0x2c>
 8000d74:	2b04      	cmp	r3, #4
 8000d76:	d002      	beq.n	8000d7e <I2C_SendAddr+0x1c>
 8000d78:	2b02      	cmp	r3, #2
 8000d7a:	d010      	beq.n	8000d9e <I2C_SendAddr+0x3c>
 8000d7c:	e017      	b.n	8000dae <I2C_SendAddr+0x4c>
 8000d7e:	683b      	ldr	r3, [r7, #0]
 8000d80:	0e1b      	lsrs	r3, r3, #24
 8000d82:	b2da      	uxtb	r2, r3
 8000d84:	687b      	ldr	r3, [r7, #4]
 8000d86:	0011      	movs	r1, r2
 8000d88:	0018      	movs	r0, r3
 8000d8a:	f7ff ffb4 	bl	8000cf6 <I2C_SendData>
 8000d8e:	683b      	ldr	r3, [r7, #0]
 8000d90:	0c1b      	lsrs	r3, r3, #16
 8000d92:	b2da      	uxtb	r2, r3
 8000d94:	687b      	ldr	r3, [r7, #4]
 8000d96:	0011      	movs	r1, r2
 8000d98:	0018      	movs	r0, r3
 8000d9a:	f7ff ffac 	bl	8000cf6 <I2C_SendData>
 8000d9e:	683b      	ldr	r3, [r7, #0]
 8000da0:	0a1b      	lsrs	r3, r3, #8
 8000da2:	b2da      	uxtb	r2, r3
 8000da4:	687b      	ldr	r3, [r7, #4]
 8000da6:	0011      	movs	r1, r2
 8000da8:	0018      	movs	r0, r3
 8000daa:	f7ff ffa4 	bl	8000cf6 <I2C_SendData>
 8000dae:	683b      	ldr	r3, [r7, #0]
 8000db0:	b2da      	uxtb	r2, r3
 8000db2:	687b      	ldr	r3, [r7, #4]
 8000db4:	0011      	movs	r1, r2
 8000db6:	0018      	movs	r0, r3
 8000db8:	f7ff ff9d 	bl	8000cf6 <I2C_SendData>
 8000dbc:	46c0      	nop			; (mov r8, r8)
 8000dbe:	46c0      	nop			; (mov r8, r8)
 8000dc0:	46bd      	mov	sp, r7
 8000dc2:	b002      	add	sp, #8
 8000dc4:	bd80      	pop	{r7, pc}

08000dc6 <I2C_DeviceInit>:
 8000dc6:	b580      	push	{r7, lr}
 8000dc8:	b084      	sub	sp, #16
 8000dca:	af00      	add	r7, sp, #0
 8000dcc:	60f8      	str	r0, [r7, #12]
 8000dce:	60b9      	str	r1, [r7, #8]
 8000dd0:	0019      	movs	r1, r3
 8000dd2:	1dfb      	adds	r3, r7, #7
 8000dd4:	701a      	strb	r2, [r3, #0]
 8000dd6:	1dbb      	adds	r3, r7, #6
 8000dd8:	1c0a      	adds	r2, r1, #0
 8000dda:	701a      	strb	r2, [r3, #0]
 8000ddc:	68fb      	ldr	r3, [r7, #12]
 8000dde:	68ba      	ldr	r2, [r7, #8]
 8000de0:	601a      	str	r2, [r3, #0]
 8000de2:	68fb      	ldr	r3, [r7, #12]
 8000de4:	1dfa      	adds	r2, r7, #7
 8000de6:	7812      	ldrb	r2, [r2, #0]
 8000de8:	711a      	strb	r2, [r3, #4]
 8000dea:	68fb      	ldr	r3, [r7, #12]
 8000dec:	2200      	movs	r2, #0
 8000dee:	715a      	strb	r2, [r3, #5]
 8000df0:	1dbb      	adds	r3, r7, #6
 8000df2:	781b      	ldrb	r3, [r3, #0]
 8000df4:	2b00      	cmp	r3, #0
 8000df6:	d002      	beq.n	8000dfe <I2C_DeviceInit+0x38>
 8000df8:	1dbb      	adds	r3, r7, #6
 8000dfa:	781a      	ldrb	r2, [r3, #0]
 8000dfc:	e000      	b.n	8000e00 <I2C_DeviceInit+0x3a>
 8000dfe:	2201      	movs	r2, #1
 8000e00:	68fb      	ldr	r3, [r7, #12]
 8000e02:	719a      	strb	r2, [r3, #6]
 8000e04:	46c0      	nop			; (mov r8, r8)
 8000e06:	46bd      	mov	sp, r7
 8000e08:	b004      	add	sp, #16
 8000e0a:	bd80      	pop	{r7, pc}

08000e0c <I2C_WriteByte>:
 8000e0c:	b580      	push	{r7, lr}
 8000e0e:	b084      	sub	sp, #16
 8000e10:	af00      	add	r7, sp, #0
 8000e12:	60f8      	str	r0, [r7, #12]
 8000e14:	60b9      	str	r1, [r7, #8]
 8000e16:	1dfb      	adds	r3, r7, #7
 8000e18:	701a      	strb	r2, [r3, #0]
 8000e1a:	68ba      	ldr	r2, [r7, #8]
 8000e1c:	68fb      	ldr	r3, [r7, #12]
 8000e1e:	0011      	movs	r1, r2
 8000e20:	0018      	movs	r0, r3
 8000e22:	f7ff ff40 	bl	8000ca6 <I2C_SetDevAddr>
 8000e26:	68fb      	ldr	r3, [r7, #12]
 8000e28:	681b      	ldr	r3, [r3, #0]
 8000e2a:	2100      	movs	r1, #0
 8000e2c:	0018      	movs	r0, r3
 8000e2e:	f7ff fec7 	bl	8000bc0 <LL_I2C_SetTransferRequest>
 8000e32:	68fb      	ldr	r3, [r7, #12]
 8000e34:	681a      	ldr	r2, [r3, #0]
 8000e36:	68fb      	ldr	r3, [r7, #12]
 8000e38:	799b      	ldrb	r3, [r3, #6]
 8000e3a:	3301      	adds	r3, #1
 8000e3c:	0019      	movs	r1, r3
 8000e3e:	0010      	movs	r0, r2
 8000e40:	f7ff fe8c 	bl	8000b5c <LL_I2C_SetTransferSize>
 8000e44:	68fb      	ldr	r3, [r7, #12]
 8000e46:	0018      	movs	r0, r3
 8000e48:	f7ff fef9 	bl	8000c3e <I2C_Start>
 8000e4c:	68ba      	ldr	r2, [r7, #8]
 8000e4e:	68fb      	ldr	r3, [r7, #12]
 8000e50:	0011      	movs	r1, r2
 8000e52:	0018      	movs	r0, r3
 8000e54:	f7ff ff85 	bl	8000d62 <I2C_SendAddr>
 8000e58:	1dfb      	adds	r3, r7, #7
 8000e5a:	781a      	ldrb	r2, [r3, #0]
 8000e5c:	68fb      	ldr	r3, [r7, #12]
 8000e5e:	0011      	movs	r1, r2
 8000e60:	0018      	movs	r0, r3
 8000e62:	f7ff ff48 	bl	8000cf6 <I2C_SendData>
 8000e66:	68fb      	ldr	r3, [r7, #12]
 8000e68:	0018      	movs	r0, r3
 8000e6a:	f7ff ff02 	bl	8000c72 <I2C_Stop>
 8000e6e:	46c0      	nop			; (mov r8, r8)
 8000e70:	46bd      	mov	sp, r7
 8000e72:	b004      	add	sp, #16
 8000e74:	bd80      	pop	{r7, pc}

08000e76 <I2C_WriteData>:
 8000e76:	b580      	push	{r7, lr}
 8000e78:	b084      	sub	sp, #16
 8000e7a:	af00      	add	r7, sp, #0
 8000e7c:	60f8      	str	r0, [r7, #12]
 8000e7e:	60b9      	str	r1, [r7, #8]
 8000e80:	607a      	str	r2, [r7, #4]
 8000e82:	001a      	movs	r2, r3
 8000e84:	1cbb      	adds	r3, r7, #2
 8000e86:	801a      	strh	r2, [r3, #0]
 8000e88:	68ba      	ldr	r2, [r7, #8]
 8000e8a:	68fb      	ldr	r3, [r7, #12]
 8000e8c:	0011      	movs	r1, r2
 8000e8e:	0018      	movs	r0, r3
 8000e90:	f7ff ff09 	bl	8000ca6 <I2C_SetDevAddr>
 8000e94:	68fb      	ldr	r3, [r7, #12]
 8000e96:	681b      	ldr	r3, [r3, #0]
 8000e98:	2100      	movs	r1, #0
 8000e9a:	0018      	movs	r0, r3
 8000e9c:	f7ff fe90 	bl	8000bc0 <LL_I2C_SetTransferRequest>
 8000ea0:	68fb      	ldr	r3, [r7, #12]
 8000ea2:	681a      	ldr	r2, [r3, #0]
 8000ea4:	68fb      	ldr	r3, [r7, #12]
 8000ea6:	799b      	ldrb	r3, [r3, #6]
 8000ea8:	0019      	movs	r1, r3
 8000eaa:	1cbb      	adds	r3, r7, #2
 8000eac:	881b      	ldrh	r3, [r3, #0]
 8000eae:	18cb      	adds	r3, r1, r3
 8000eb0:	0019      	movs	r1, r3
 8000eb2:	0010      	movs	r0, r2
 8000eb4:	f7ff fe52 	bl	8000b5c <LL_I2C_SetTransferSize>
 8000eb8:	68fb      	ldr	r3, [r7, #12]
 8000eba:	0018      	movs	r0, r3
 8000ebc:	f7ff febf 	bl	8000c3e <I2C_Start>
 8000ec0:	68ba      	ldr	r2, [r7, #8]
 8000ec2:	68fb      	ldr	r3, [r7, #12]
 8000ec4:	0011      	movs	r1, r2
 8000ec6:	0018      	movs	r0, r3
 8000ec8:	f7ff ff4b 	bl	8000d62 <I2C_SendAddr>
 8000ecc:	e008      	b.n	8000ee0 <I2C_WriteData+0x6a>
 8000ece:	687b      	ldr	r3, [r7, #4]
 8000ed0:	1c5a      	adds	r2, r3, #1
 8000ed2:	607a      	str	r2, [r7, #4]
 8000ed4:	781a      	ldrb	r2, [r3, #0]
 8000ed6:	68fb      	ldr	r3, [r7, #12]
 8000ed8:	0011      	movs	r1, r2
 8000eda:	0018      	movs	r0, r3
 8000edc:	f7ff ff0b 	bl	8000cf6 <I2C_SendData>
 8000ee0:	1cbb      	adds	r3, r7, #2
 8000ee2:	881b      	ldrh	r3, [r3, #0]
 8000ee4:	1cba      	adds	r2, r7, #2
 8000ee6:	1e59      	subs	r1, r3, #1
 8000ee8:	8011      	strh	r1, [r2, #0]
 8000eea:	2b00      	cmp	r3, #0
 8000eec:	d1ef      	bne.n	8000ece <I2C_WriteData+0x58>
 8000eee:	68fb      	ldr	r3, [r7, #12]
 8000ef0:	0018      	movs	r0, r3
 8000ef2:	f7ff febe 	bl	8000c72 <I2C_Stop>
 8000ef6:	46c0      	nop			; (mov r8, r8)
 8000ef8:	46bd      	mov	sp, r7
 8000efa:	b004      	add	sp, #16
 8000efc:	bd80      	pop	{r7, pc}

08000efe <I2C_ReadNextByte>:
 8000efe:	b5b0      	push	{r4, r5, r7, lr}
 8000f00:	b084      	sub	sp, #16
 8000f02:	af00      	add	r7, sp, #0
 8000f04:	6078      	str	r0, [r7, #4]
 8000f06:	2301      	movs	r3, #1
 8000f08:	425a      	negs	r2, r3
 8000f0a:	687b      	ldr	r3, [r7, #4]
 8000f0c:	0011      	movs	r1, r2
 8000f0e:	0018      	movs	r0, r3
 8000f10:	f7ff fec9 	bl	8000ca6 <I2C_SetDevAddr>
 8000f14:	687b      	ldr	r3, [r7, #4]
 8000f16:	681a      	ldr	r2, [r3, #0]
 8000f18:	2380      	movs	r3, #128	; 0x80
 8000f1a:	00db      	lsls	r3, r3, #3
 8000f1c:	0019      	movs	r1, r3
 8000f1e:	0010      	movs	r0, r2
 8000f20:	f7ff fe4e 	bl	8000bc0 <LL_I2C_SetTransferRequest>
 8000f24:	687b      	ldr	r3, [r7, #4]
 8000f26:	681b      	ldr	r3, [r3, #0]
 8000f28:	2101      	movs	r1, #1
 8000f2a:	0018      	movs	r0, r3
 8000f2c:	f7ff fe16 	bl	8000b5c <LL_I2C_SetTransferSize>
 8000f30:	687b      	ldr	r3, [r7, #4]
 8000f32:	0018      	movs	r0, r3
 8000f34:	f7ff fe83 	bl	8000c3e <I2C_Start>
 8000f38:	250f      	movs	r5, #15
 8000f3a:	197c      	adds	r4, r7, r5
 8000f3c:	687b      	ldr	r3, [r7, #4]
 8000f3e:	0018      	movs	r0, r3
 8000f40:	f7ff fef9 	bl	8000d36 <I2C_GetData>
 8000f44:	0003      	movs	r3, r0
 8000f46:	7023      	strb	r3, [r4, #0]
 8000f48:	687b      	ldr	r3, [r7, #4]
 8000f4a:	0018      	movs	r0, r3
 8000f4c:	f7ff fe91 	bl	8000c72 <I2C_Stop>
 8000f50:	197b      	adds	r3, r7, r5
 8000f52:	781b      	ldrb	r3, [r3, #0]
 8000f54:	0018      	movs	r0, r3
 8000f56:	46bd      	mov	sp, r7
 8000f58:	b004      	add	sp, #16
 8000f5a:	bdb0      	pop	{r4, r5, r7, pc}

08000f5c <I2C_ReadByte>:
 8000f5c:	b5b0      	push	{r4, r5, r7, lr}
 8000f5e:	b084      	sub	sp, #16
 8000f60:	af00      	add	r7, sp, #0
 8000f62:	6078      	str	r0, [r7, #4]
 8000f64:	6039      	str	r1, [r7, #0]
 8000f66:	683a      	ldr	r2, [r7, #0]
 8000f68:	687b      	ldr	r3, [r7, #4]
 8000f6a:	0011      	movs	r1, r2
 8000f6c:	0018      	movs	r0, r3
 8000f6e:	f7ff fe9a 	bl	8000ca6 <I2C_SetDevAddr>
 8000f72:	687b      	ldr	r3, [r7, #4]
 8000f74:	681b      	ldr	r3, [r3, #0]
 8000f76:	2100      	movs	r1, #0
 8000f78:	0018      	movs	r0, r3
 8000f7a:	f7ff fe21 	bl	8000bc0 <LL_I2C_SetTransferRequest>
 8000f7e:	687b      	ldr	r3, [r7, #4]
 8000f80:	681a      	ldr	r2, [r3, #0]
 8000f82:	687b      	ldr	r3, [r7, #4]
 8000f84:	799b      	ldrb	r3, [r3, #6]
 8000f86:	0019      	movs	r1, r3
 8000f88:	0010      	movs	r0, r2
 8000f8a:	f7ff fde7 	bl	8000b5c <LL_I2C_SetTransferSize>
 8000f8e:	687b      	ldr	r3, [r7, #4]
 8000f90:	0018      	movs	r0, r3
 8000f92:	f7ff fe54 	bl	8000c3e <I2C_Start>
 8000f96:	683a      	ldr	r2, [r7, #0]
 8000f98:	687b      	ldr	r3, [r7, #4]
 8000f9a:	0011      	movs	r1, r2
 8000f9c:	0018      	movs	r0, r3
 8000f9e:	f7ff fee0 	bl	8000d62 <I2C_SendAddr>
 8000fa2:	687b      	ldr	r3, [r7, #4]
 8000fa4:	681a      	ldr	r2, [r3, #0]
 8000fa6:	2380      	movs	r3, #128	; 0x80
 8000fa8:	00db      	lsls	r3, r3, #3
 8000faa:	0019      	movs	r1, r3
 8000fac:	0010      	movs	r0, r2
 8000fae:	f7ff fe07 	bl	8000bc0 <LL_I2C_SetTransferRequest>
 8000fb2:	687b      	ldr	r3, [r7, #4]
 8000fb4:	681b      	ldr	r3, [r3, #0]
 8000fb6:	2101      	movs	r1, #1
 8000fb8:	0018      	movs	r0, r3
 8000fba:	f7ff fdcf 	bl	8000b5c <LL_I2C_SetTransferSize>
 8000fbe:	687b      	ldr	r3, [r7, #4]
 8000fc0:	681b      	ldr	r3, [r3, #0]
 8000fc2:	0018      	movs	r0, r3
 8000fc4:	f7ff fdde 	bl	8000b84 <LL_I2C_GenerateStartCondition>
 8000fc8:	250f      	movs	r5, #15
 8000fca:	197c      	adds	r4, r7, r5
 8000fcc:	687b      	ldr	r3, [r7, #4]
 8000fce:	0018      	movs	r0, r3
 8000fd0:	f7ff feb1 	bl	8000d36 <I2C_GetData>
 8000fd4:	0003      	movs	r3, r0
 8000fd6:	7023      	strb	r3, [r4, #0]
 8000fd8:	687b      	ldr	r3, [r7, #4]
 8000fda:	0018      	movs	r0, r3
 8000fdc:	f7ff fe49 	bl	8000c72 <I2C_Stop>
 8000fe0:	197b      	adds	r3, r7, r5
 8000fe2:	781b      	ldrb	r3, [r3, #0]
 8000fe4:	0018      	movs	r0, r3
 8000fe6:	46bd      	mov	sp, r7
 8000fe8:	b004      	add	sp, #16
 8000fea:	bdb0      	pop	{r4, r5, r7, pc}

08000fec <I2C_ReadData>:
 8000fec:	b590      	push	{r4, r7, lr}
 8000fee:	b085      	sub	sp, #20
 8000ff0:	af00      	add	r7, sp, #0
 8000ff2:	60f8      	str	r0, [r7, #12]
 8000ff4:	60b9      	str	r1, [r7, #8]
 8000ff6:	607a      	str	r2, [r7, #4]
 8000ff8:	001a      	movs	r2, r3
 8000ffa:	1cbb      	adds	r3, r7, #2
 8000ffc:	801a      	strh	r2, [r3, #0]
 8000ffe:	68ba      	ldr	r2, [r7, #8]
 8001000:	68fb      	ldr	r3, [r7, #12]
 8001002:	0011      	movs	r1, r2
 8001004:	0018      	movs	r0, r3
 8001006:	f7ff fe4e 	bl	8000ca6 <I2C_SetDevAddr>
 800100a:	68fb      	ldr	r3, [r7, #12]
 800100c:	681b      	ldr	r3, [r3, #0]
 800100e:	2100      	movs	r1, #0
 8001010:	0018      	movs	r0, r3
 8001012:	f7ff fdd5 	bl	8000bc0 <LL_I2C_SetTransferRequest>
 8001016:	68fb      	ldr	r3, [r7, #12]
 8001018:	681a      	ldr	r2, [r3, #0]
 800101a:	68fb      	ldr	r3, [r7, #12]
 800101c:	799b      	ldrb	r3, [r3, #6]
 800101e:	0019      	movs	r1, r3
 8001020:	0010      	movs	r0, r2
 8001022:	f7ff fd9b 	bl	8000b5c <LL_I2C_SetTransferSize>
 8001026:	68fb      	ldr	r3, [r7, #12]
 8001028:	0018      	movs	r0, r3
 800102a:	f7ff fe08 	bl	8000c3e <I2C_Start>
 800102e:	68ba      	ldr	r2, [r7, #8]
 8001030:	68fb      	ldr	r3, [r7, #12]
 8001032:	0011      	movs	r1, r2
 8001034:	0018      	movs	r0, r3
 8001036:	f7ff fe94 	bl	8000d62 <I2C_SendAddr>
 800103a:	68fb      	ldr	r3, [r7, #12]
 800103c:	681a      	ldr	r2, [r3, #0]
 800103e:	2380      	movs	r3, #128	; 0x80
 8001040:	00db      	lsls	r3, r3, #3
 8001042:	0019      	movs	r1, r3
 8001044:	0010      	movs	r0, r2
 8001046:	f7ff fdbb 	bl	8000bc0 <LL_I2C_SetTransferRequest>
 800104a:	68fb      	ldr	r3, [r7, #12]
 800104c:	681a      	ldr	r2, [r3, #0]
 800104e:	1cbb      	adds	r3, r7, #2
 8001050:	881b      	ldrh	r3, [r3, #0]
 8001052:	0019      	movs	r1, r3
 8001054:	0010      	movs	r0, r2
 8001056:	f7ff fd81 	bl	8000b5c <LL_I2C_SetTransferSize>
 800105a:	68fb      	ldr	r3, [r7, #12]
 800105c:	681b      	ldr	r3, [r3, #0]
 800105e:	0018      	movs	r0, r3
 8001060:	f7ff fd90 	bl	8000b84 <LL_I2C_GenerateStartCondition>
 8001064:	e008      	b.n	8001078 <I2C_ReadData+0x8c>
 8001066:	687c      	ldr	r4, [r7, #4]
 8001068:	1c63      	adds	r3, r4, #1
 800106a:	607b      	str	r3, [r7, #4]
 800106c:	68fb      	ldr	r3, [r7, #12]
 800106e:	0018      	movs	r0, r3
 8001070:	f7ff fe61 	bl	8000d36 <I2C_GetData>
 8001074:	0003      	movs	r3, r0
 8001076:	7023      	strb	r3, [r4, #0]
 8001078:	1cbb      	adds	r3, r7, #2
 800107a:	881b      	ldrh	r3, [r3, #0]
 800107c:	1cba      	adds	r2, r7, #2
 800107e:	1e59      	subs	r1, r3, #1
 8001080:	8011      	strh	r1, [r2, #0]
 8001082:	2b00      	cmp	r3, #0
 8001084:	d1ef      	bne.n	8001066 <I2C_ReadData+0x7a>
 8001086:	68fb      	ldr	r3, [r7, #12]
 8001088:	0018      	movs	r0, r3
 800108a:	f7ff fdf2 	bl	8000c72 <I2C_Stop>
 800108e:	46c0      	nop			; (mov r8, r8)
 8001090:	46bd      	mov	sp, r7
 8001092:	b005      	add	sp, #20
 8001094:	bd90      	pop	{r4, r7, pc}

08001096 <LL_GPIO_SetPinMode>:
 8001096:	b580      	push	{r7, lr}
 8001098:	b084      	sub	sp, #16
 800109a:	af00      	add	r7, sp, #0
 800109c:	60f8      	str	r0, [r7, #12]
 800109e:	60b9      	str	r1, [r7, #8]
 80010a0:	607a      	str	r2, [r7, #4]
 80010a2:	68fb      	ldr	r3, [r7, #12]
 80010a4:	6819      	ldr	r1, [r3, #0]
 80010a6:	68bb      	ldr	r3, [r7, #8]
 80010a8:	68ba      	ldr	r2, [r7, #8]
 80010aa:	435a      	muls	r2, r3
 80010ac:	0013      	movs	r3, r2
 80010ae:	005b      	lsls	r3, r3, #1
 80010b0:	189b      	adds	r3, r3, r2
 80010b2:	43db      	mvns	r3, r3
 80010b4:	400b      	ands	r3, r1
 80010b6:	001a      	movs	r2, r3
 80010b8:	68bb      	ldr	r3, [r7, #8]
 80010ba:	68b9      	ldr	r1, [r7, #8]
 80010bc:	434b      	muls	r3, r1
 80010be:	6879      	ldr	r1, [r7, #4]
 80010c0:	434b      	muls	r3, r1
 80010c2:	431a      	orrs	r2, r3
 80010c4:	68fb      	ldr	r3, [r7, #12]
 80010c6:	601a      	str	r2, [r3, #0]
 80010c8:	46c0      	nop			; (mov r8, r8)
 80010ca:	46bd      	mov	sp, r7
 80010cc:	b004      	add	sp, #16
 80010ce:	bd80      	pop	{r7, pc}

080010d0 <LL_GPIO_SetPinOutputType>:
 80010d0:	b580      	push	{r7, lr}
 80010d2:	b084      	sub	sp, #16
 80010d4:	af00      	add	r7, sp, #0
 80010d6:	60f8      	str	r0, [r7, #12]
 80010d8:	60b9      	str	r1, [r7, #8]
 80010da:	607a      	str	r2, [r7, #4]
 80010dc:	68fb      	ldr	r3, [r7, #12]
 80010de:	685b      	ldr	r3, [r3, #4]
 80010e0:	68ba      	ldr	r2, [r7, #8]
 80010e2:	43d2      	mvns	r2, r2
 80010e4:	401a      	ands	r2, r3
 80010e6:	68bb      	ldr	r3, [r7, #8]
 80010e8:	6879      	ldr	r1, [r7, #4]
 80010ea:	434b      	muls	r3, r1
 80010ec:	431a      	orrs	r2, r3
 80010ee:	68fb      	ldr	r3, [r7, #12]
 80010f0:	605a      	str	r2, [r3, #4]
 80010f2:	46c0      	nop			; (mov r8, r8)
 80010f4:	46bd      	mov	sp, r7
 80010f6:	b004      	add	sp, #16
 80010f8:	bd80      	pop	{r7, pc}

080010fa <LL_GPIO_SetPinSpeed>:
 80010fa:	b580      	push	{r7, lr}
 80010fc:	b084      	sub	sp, #16
 80010fe:	af00      	add	r7, sp, #0
 8001100:	60f8      	str	r0, [r7, #12]
 8001102:	60b9      	str	r1, [r7, #8]
 8001104:	607a      	str	r2, [r7, #4]
 8001106:	68fb      	ldr	r3, [r7, #12]
 8001108:	6899      	ldr	r1, [r3, #8]
 800110a:	68bb      	ldr	r3, [r7, #8]
 800110c:	68ba      	ldr	r2, [r7, #8]
 800110e:	435a      	muls	r2, r3
 8001110:	0013      	movs	r3, r2
 8001112:	005b      	lsls	r3, r3, #1
 8001114:	189b      	adds	r3, r3, r2
 8001116:	43db      	mvns	r3, r3
 8001118:	400b      	ands	r3, r1
 800111a:	001a      	movs	r2, r3
 800111c:	68bb      	ldr	r3, [r7, #8]
 800111e:	68b9      	ldr	r1, [r7, #8]
 8001120:	434b      	muls	r3, r1
 8001122:	6879      	ldr	r1, [r7, #4]
 8001124:	434b      	muls	r3, r1
 8001126:	431a      	orrs	r2, r3
 8001128:	68fb      	ldr	r3, [r7, #12]
 800112a:	609a      	str	r2, [r3, #8]
 800112c:	46c0      	nop			; (mov r8, r8)
 800112e:	46bd      	mov	sp, r7
 8001130:	b004      	add	sp, #16
 8001132:	bd80      	pop	{r7, pc}

08001134 <LL_GPIO_SetPinPull>:
 8001134:	b580      	push	{r7, lr}
 8001136:	b084      	sub	sp, #16
 8001138:	af00      	add	r7, sp, #0
 800113a:	60f8      	str	r0, [r7, #12]
 800113c:	60b9      	str	r1, [r7, #8]
 800113e:	607a      	str	r2, [r7, #4]
 8001140:	68fb      	ldr	r3, [r7, #12]
 8001142:	68d9      	ldr	r1, [r3, #12]
 8001144:	68bb      	ldr	r3, [r7, #8]
 8001146:	68ba      	ldr	r2, [r7, #8]
 8001148:	435a      	muls	r2, r3
 800114a:	0013      	movs	r3, r2
 800114c:	005b      	lsls	r3, r3, #1
 800114e:	189b      	adds	r3, r3, r2
 8001150:	43db      	mvns	r3, r3
 8001152:	400b      	ands	r3, r1
 8001154:	001a      	movs	r2, r3
 8001156:	68bb      	ldr	r3, [r7, #8]
 8001158:	68b9      	ldr	r1, [r7, #8]
 800115a:	434b      	muls	r3, r1
 800115c:	6879      	ldr	r1, [r7, #4]
 800115e:	434b      	muls	r3, r1
 8001160:	431a      	orrs	r2, r3
 8001162:	68fb      	ldr	r3, [r7, #12]
 8001164:	60da      	str	r2, [r3, #12]
 8001166:	46c0      	nop			; (mov r8, r8)
 8001168:	46bd      	mov	sp, r7
 800116a:	b004      	add	sp, #16
 800116c:	bd80      	pop	{r7, pc}

0800116e <LL_GPIO_SetOutputPin>:
 800116e:	b580      	push	{r7, lr}
 8001170:	b082      	sub	sp, #8
 8001172:	af00      	add	r7, sp, #0
 8001174:	6078      	str	r0, [r7, #4]
 8001176:	6039      	str	r1, [r7, #0]
 8001178:	687b      	ldr	r3, [r7, #4]
 800117a:	683a      	ldr	r2, [r7, #0]
 800117c:	619a      	str	r2, [r3, #24]
 800117e:	46c0      	nop			; (mov r8, r8)
 8001180:	46bd      	mov	sp, r7
 8001182:	b002      	add	sp, #8
 8001184:	bd80      	pop	{r7, pc}

08001186 <LL_GPIO_ResetOutputPin>:
 8001186:	b580      	push	{r7, lr}
 8001188:	b082      	sub	sp, #8
 800118a:	af00      	add	r7, sp, #0
 800118c:	6078      	str	r0, [r7, #4]
 800118e:	6039      	str	r1, [r7, #0]
 8001190:	687b      	ldr	r3, [r7, #4]
 8001192:	683a      	ldr	r2, [r7, #0]
 8001194:	629a      	str	r2, [r3, #40]	; 0x28
 8001196:	46c0      	nop			; (mov r8, r8)
 8001198:	46bd      	mov	sp, r7
 800119a:	b002      	add	sp, #8
 800119c:	bd80      	pop	{r7, pc}
	...

080011a0 <LL_AHB1_GRP1_EnableClock>:
 80011a0:	b580      	push	{r7, lr}
 80011a2:	b084      	sub	sp, #16
 80011a4:	af00      	add	r7, sp, #0
 80011a6:	6078      	str	r0, [r7, #4]
 80011a8:	4b07      	ldr	r3, [pc, #28]	; (80011c8 <LL_AHB1_GRP1_EnableClock+0x28>)
 80011aa:	6959      	ldr	r1, [r3, #20]
 80011ac:	4b06      	ldr	r3, [pc, #24]	; (80011c8 <LL_AHB1_GRP1_EnableClock+0x28>)
 80011ae:	687a      	ldr	r2, [r7, #4]
 80011b0:	430a      	orrs	r2, r1
 80011b2:	615a      	str	r2, [r3, #20]
 80011b4:	4b04      	ldr	r3, [pc, #16]	; (80011c8 <LL_AHB1_GRP1_EnableClock+0x28>)
 80011b6:	695b      	ldr	r3, [r3, #20]
 80011b8:	687a      	ldr	r2, [r7, #4]
 80011ba:	4013      	ands	r3, r2
 80011bc:	60fb      	str	r3, [r7, #12]
 80011be:	68fb      	ldr	r3, [r7, #12]
 80011c0:	46c0      	nop			; (mov r8, r8)
 80011c2:	46bd      	mov	sp, r7
 80011c4:	b004      	add	sp, #16
 80011c6:	bd80      	pop	{r7, pc}
 80011c8:	40021000 	.word	0x40021000

080011cc <EE_Test>:
 80011cc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011ce:	b095      	sub	sp, #84	; 0x54
 80011d0:	af04      	add	r7, sp, #16
 80011d2:	2300      	movs	r3, #0
 80011d4:	63fb      	str	r3, [r7, #60]	; 0x3c
 80011d6:	2380      	movs	r3, #128	; 0x80
 80011d8:	005a      	lsls	r2, r3, #1
 80011da:	4989      	ldr	r1, [pc, #548]	; (8001400 <EE_Test+0x234>)
 80011dc:	2314      	movs	r3, #20
 80011de:	18f8      	adds	r0, r7, r3
 80011e0:	2320      	movs	r3, #32
 80011e2:	9302      	str	r3, [sp, #8]
 80011e4:	4b87      	ldr	r3, [pc, #540]	; (8001404 <EE_Test+0x238>)
 80011e6:	9301      	str	r3, [sp, #4]
 80011e8:	2308      	movs	r3, #8
 80011ea:	9300      	str	r3, [sp, #0]
 80011ec:	0013      	movs	r3, r2
 80011ee:	22a0      	movs	r2, #160	; 0xa0
 80011f0:	f000 f928 	bl	8001444 <EE_Init>
 80011f4:	233a      	movs	r3, #58	; 0x3a
 80011f6:	18fb      	adds	r3, r7, r3
 80011f8:	2200      	movs	r2, #0
 80011fa:	801a      	strh	r2, [r3, #0]
 80011fc:	2338      	movs	r3, #56	; 0x38
 80011fe:	18fb      	adds	r3, r7, r3
 8001200:	22c3      	movs	r2, #195	; 0xc3
 8001202:	801a      	strh	r2, [r3, #0]
 8001204:	e02b      	b.n	800125e <EE_Test+0x92>
 8001206:	243a      	movs	r4, #58	; 0x3a
 8001208:	193b      	adds	r3, r7, r4
 800120a:	8819      	ldrh	r1, [r3, #0]
 800120c:	2538      	movs	r5, #56	; 0x38
 800120e:	197b      	adds	r3, r7, r5
 8001210:	881b      	ldrh	r3, [r3, #0]
 8001212:	b2da      	uxtb	r2, r3
 8001214:	2614      	movs	r6, #20
 8001216:	19bb      	adds	r3, r7, r6
 8001218:	0018      	movs	r0, r3
 800121a:	f000 f99f 	bl	800155c <EE_WriteByte>
 800121e:	193b      	adds	r3, r7, r4
 8001220:	881a      	ldrh	r2, [r3, #0]
 8001222:	19bb      	adds	r3, r7, r6
 8001224:	0011      	movs	r1, r2
 8001226:	0018      	movs	r0, r3
 8001228:	f000 f9bd 	bl	80015a6 <EE_ReadByte>
 800122c:	0003      	movs	r3, r0
 800122e:	b29b      	uxth	r3, r3
 8001230:	0029      	movs	r1, r5
 8001232:	187a      	adds	r2, r7, r1
 8001234:	8812      	ldrh	r2, [r2, #0]
 8001236:	1ad3      	subs	r3, r2, r3
 8001238:	1e5a      	subs	r2, r3, #1
 800123a:	4193      	sbcs	r3, r2
 800123c:	b2db      	uxtb	r3, r3
 800123e:	001a      	movs	r2, r3
 8001240:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8001242:	189b      	adds	r3, r3, r2
 8001244:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001246:	193b      	adds	r3, r7, r4
 8001248:	193a      	adds	r2, r7, r4
 800124a:	8812      	ldrh	r2, [r2, #0]
 800124c:	3201      	adds	r2, #1
 800124e:	801a      	strh	r2, [r3, #0]
 8001250:	187b      	adds	r3, r7, r1
 8001252:	1879      	adds	r1, r7, r1
 8001254:	193a      	adds	r2, r7, r4
 8001256:	8809      	ldrh	r1, [r1, #0]
 8001258:	8812      	ldrh	r2, [r2, #0]
 800125a:	404a      	eors	r2, r1
 800125c:	801a      	strh	r2, [r3, #0]
 800125e:	233a      	movs	r3, #58	; 0x3a
 8001260:	18fb      	adds	r3, r7, r3
 8001262:	881b      	ldrh	r3, [r3, #0]
 8001264:	2bff      	cmp	r3, #255	; 0xff
 8001266:	d9ce      	bls.n	8001206 <EE_Test+0x3a>
 8001268:	2337      	movs	r3, #55	; 0x37
 800126a:	18fb      	adds	r3, r7, r3
 800126c:	2200      	movs	r2, #0
 800126e:	701a      	strb	r2, [r3, #0]
 8001270:	2336      	movs	r3, #54	; 0x36
 8001272:	18fb      	adds	r3, r7, r3
 8001274:	22c4      	movs	r2, #196	; 0xc4
 8001276:	701a      	strb	r2, [r3, #0]
 8001278:	e013      	b.n	80012a2 <EE_Test+0xd6>
 800127a:	2037      	movs	r0, #55	; 0x37
 800127c:	183b      	adds	r3, r7, r0
 800127e:	781b      	ldrb	r3, [r3, #0]
 8001280:	1d3a      	adds	r2, r7, #4
 8001282:	2436      	movs	r4, #54	; 0x36
 8001284:	1939      	adds	r1, r7, r4
 8001286:	7809      	ldrb	r1, [r1, #0]
 8001288:	54d1      	strb	r1, [r2, r3]
 800128a:	183b      	adds	r3, r7, r0
 800128c:	183a      	adds	r2, r7, r0
 800128e:	7812      	ldrb	r2, [r2, #0]
 8001290:	3201      	adds	r2, #1
 8001292:	701a      	strb	r2, [r3, #0]
 8001294:	193b      	adds	r3, r7, r4
 8001296:	1939      	adds	r1, r7, r4
 8001298:	183a      	adds	r2, r7, r0
 800129a:	7809      	ldrb	r1, [r1, #0]
 800129c:	7812      	ldrb	r2, [r2, #0]
 800129e:	404a      	eors	r2, r1
 80012a0:	701a      	strb	r2, [r3, #0]
 80012a2:	2337      	movs	r3, #55	; 0x37
 80012a4:	18fb      	adds	r3, r7, r3
 80012a6:	781b      	ldrb	r3, [r3, #0]
 80012a8:	2b07      	cmp	r3, #7
 80012aa:	d9e6      	bls.n	800127a <EE_Test+0xae>
 80012ac:	2334      	movs	r3, #52	; 0x34
 80012ae:	18fb      	adds	r3, r7, r3
 80012b0:	2200      	movs	r2, #0
 80012b2:	801a      	strh	r2, [r3, #0]
 80012b4:	e03c      	b.n	8001330 <EE_Test+0x164>
 80012b6:	2434      	movs	r4, #52	; 0x34
 80012b8:	193b      	adds	r3, r7, r4
 80012ba:	8819      	ldrh	r1, [r3, #0]
 80012bc:	1d3a      	adds	r2, r7, #4
 80012be:	2514      	movs	r5, #20
 80012c0:	1978      	adds	r0, r7, r5
 80012c2:	2308      	movs	r3, #8
 80012c4:	f000 f98c 	bl	80015e0 <EE_WriteData>
 80012c8:	0003      	movs	r3, r0
 80012ca:	001a      	movs	r2, r3
 80012cc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80012ce:	189b      	adds	r3, r3, r2
 80012d0:	63fb      	str	r3, [r7, #60]	; 0x3c
 80012d2:	193b      	adds	r3, r7, r4
 80012d4:	8819      	ldrh	r1, [r3, #0]
 80012d6:	230c      	movs	r3, #12
 80012d8:	18fa      	adds	r2, r7, r3
 80012da:	1978      	adds	r0, r7, r5
 80012dc:	2308      	movs	r3, #8
 80012de:	f000 f9cb 	bl	8001678 <EE_ReadData>
 80012e2:	2332      	movs	r3, #50	; 0x32
 80012e4:	18fb      	adds	r3, r7, r3
 80012e6:	2200      	movs	r2, #0
 80012e8:	801a      	strh	r2, [r3, #0]
 80012ea:	e016      	b.n	800131a <EE_Test+0x14e>
 80012ec:	2032      	movs	r0, #50	; 0x32
 80012ee:	183b      	adds	r3, r7, r0
 80012f0:	881b      	ldrh	r3, [r3, #0]
 80012f2:	1d3a      	adds	r2, r7, #4
 80012f4:	5cd2      	ldrb	r2, [r2, r3]
 80012f6:	183b      	adds	r3, r7, r0
 80012f8:	881b      	ldrh	r3, [r3, #0]
 80012fa:	210c      	movs	r1, #12
 80012fc:	1879      	adds	r1, r7, r1
 80012fe:	5ccb      	ldrb	r3, [r1, r3]
 8001300:	1ad3      	subs	r3, r2, r3
 8001302:	1e5a      	subs	r2, r3, #1
 8001304:	4193      	sbcs	r3, r2
 8001306:	b2db      	uxtb	r3, r3
 8001308:	001a      	movs	r2, r3
 800130a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800130c:	189b      	adds	r3, r3, r2
 800130e:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001310:	183b      	adds	r3, r7, r0
 8001312:	183a      	adds	r2, r7, r0
 8001314:	8812      	ldrh	r2, [r2, #0]
 8001316:	3201      	adds	r2, #1
 8001318:	801a      	strh	r2, [r3, #0]
 800131a:	2332      	movs	r3, #50	; 0x32
 800131c:	18fb      	adds	r3, r7, r3
 800131e:	881b      	ldrh	r3, [r3, #0]
 8001320:	2b07      	cmp	r3, #7
 8001322:	d9e3      	bls.n	80012ec <EE_Test+0x120>
 8001324:	2234      	movs	r2, #52	; 0x34
 8001326:	18bb      	adds	r3, r7, r2
 8001328:	18ba      	adds	r2, r7, r2
 800132a:	8812      	ldrh	r2, [r2, #0]
 800132c:	3208      	adds	r2, #8
 800132e:	801a      	strh	r2, [r3, #0]
 8001330:	2334      	movs	r3, #52	; 0x34
 8001332:	18fb      	adds	r3, r7, r3
 8001334:	881b      	ldrh	r3, [r3, #0]
 8001336:	2bff      	cmp	r3, #255	; 0xff
 8001338:	d9bd      	bls.n	80012b6 <EE_Test+0xea>
 800133a:	2330      	movs	r3, #48	; 0x30
 800133c:	18fb      	adds	r3, r7, r3
 800133e:	2200      	movs	r2, #0
 8001340:	801a      	strh	r2, [r3, #0]
 8001342:	e00b      	b.n	800135c <EE_Test+0x190>
 8001344:	2030      	movs	r0, #48	; 0x30
 8001346:	183b      	adds	r3, r7, r0
 8001348:	881b      	ldrh	r3, [r3, #0]
 800134a:	220c      	movs	r2, #12
 800134c:	18ba      	adds	r2, r7, r2
 800134e:	21ff      	movs	r1, #255	; 0xff
 8001350:	54d1      	strb	r1, [r2, r3]
 8001352:	183b      	adds	r3, r7, r0
 8001354:	183a      	adds	r2, r7, r0
 8001356:	8812      	ldrh	r2, [r2, #0]
 8001358:	3201      	adds	r2, #1
 800135a:	801a      	strh	r2, [r3, #0]
 800135c:	2330      	movs	r3, #48	; 0x30
 800135e:	18fb      	adds	r3, r7, r3
 8001360:	881b      	ldrh	r3, [r3, #0]
 8001362:	2b07      	cmp	r3, #7
 8001364:	d9ee      	bls.n	8001344 <EE_Test+0x178>
 8001366:	2314      	movs	r3, #20
 8001368:	18fb      	adds	r3, r7, r3
 800136a:	2100      	movs	r1, #0
 800136c:	0018      	movs	r0, r3
 800136e:	f000 f91a 	bl	80015a6 <EE_ReadByte>
 8001372:	0003      	movs	r3, r0
 8001374:	001a      	movs	r2, r3
 8001376:	230c      	movs	r3, #12
 8001378:	18fb      	adds	r3, r7, r3
 800137a:	701a      	strb	r2, [r3, #0]
 800137c:	232e      	movs	r3, #46	; 0x2e
 800137e:	18fb      	adds	r3, r7, r3
 8001380:	2201      	movs	r2, #1
 8001382:	801a      	strh	r2, [r3, #0]
 8001384:	e011      	b.n	80013aa <EE_Test+0x1de>
 8001386:	252e      	movs	r5, #46	; 0x2e
 8001388:	197b      	adds	r3, r7, r5
 800138a:	881c      	ldrh	r4, [r3, #0]
 800138c:	2314      	movs	r3, #20
 800138e:	18fb      	adds	r3, r7, r3
 8001390:	0018      	movs	r0, r3
 8001392:	f000 f918 	bl	80015c6 <EE_ReadNextByte>
 8001396:	0003      	movs	r3, r0
 8001398:	001a      	movs	r2, r3
 800139a:	230c      	movs	r3, #12
 800139c:	18fb      	adds	r3, r7, r3
 800139e:	551a      	strb	r2, [r3, r4]
 80013a0:	197b      	adds	r3, r7, r5
 80013a2:	197a      	adds	r2, r7, r5
 80013a4:	8812      	ldrh	r2, [r2, #0]
 80013a6:	3201      	adds	r2, #1
 80013a8:	801a      	strh	r2, [r3, #0]
 80013aa:	232e      	movs	r3, #46	; 0x2e
 80013ac:	18fb      	adds	r3, r7, r3
 80013ae:	881b      	ldrh	r3, [r3, #0]
 80013b0:	2b07      	cmp	r3, #7
 80013b2:	d9e8      	bls.n	8001386 <EE_Test+0x1ba>
 80013b4:	232c      	movs	r3, #44	; 0x2c
 80013b6:	18fb      	adds	r3, r7, r3
 80013b8:	2200      	movs	r2, #0
 80013ba:	801a      	strh	r2, [r3, #0]
 80013bc:	e016      	b.n	80013ec <EE_Test+0x220>
 80013be:	202c      	movs	r0, #44	; 0x2c
 80013c0:	183b      	adds	r3, r7, r0
 80013c2:	881b      	ldrh	r3, [r3, #0]
 80013c4:	1d3a      	adds	r2, r7, #4
 80013c6:	5cd2      	ldrb	r2, [r2, r3]
 80013c8:	183b      	adds	r3, r7, r0
 80013ca:	881b      	ldrh	r3, [r3, #0]
 80013cc:	210c      	movs	r1, #12
 80013ce:	1879      	adds	r1, r7, r1
 80013d0:	5ccb      	ldrb	r3, [r1, r3]
 80013d2:	1ad3      	subs	r3, r2, r3
 80013d4:	1e5a      	subs	r2, r3, #1
 80013d6:	4193      	sbcs	r3, r2
 80013d8:	b2db      	uxtb	r3, r3
 80013da:	001a      	movs	r2, r3
 80013dc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80013de:	189b      	adds	r3, r3, r2
 80013e0:	63fb      	str	r3, [r7, #60]	; 0x3c
 80013e2:	183b      	adds	r3, r7, r0
 80013e4:	183a      	adds	r2, r7, r0
 80013e6:	8812      	ldrh	r2, [r2, #0]
 80013e8:	3201      	adds	r2, #1
 80013ea:	801a      	strh	r2, [r3, #0]
 80013ec:	232c      	movs	r3, #44	; 0x2c
 80013ee:	18fb      	adds	r3, r7, r3
 80013f0:	881b      	ldrh	r3, [r3, #0]
 80013f2:	2b07      	cmp	r3, #7
 80013f4:	d9e3      	bls.n	80013be <EE_Test+0x1f2>
 80013f6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80013f8:	0018      	movs	r0, r3
 80013fa:	46bd      	mov	sp, r7
 80013fc:	b011      	add	sp, #68	; 0x44
 80013fe:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001400:	40005400 	.word	0x40005400
 8001404:	48000400 	.word	0x48000400

08001408 <_ee_delay_ms>:
 8001408:	b580      	push	{r7, lr}
 800140a:	b084      	sub	sp, #16
 800140c:	af00      	add	r7, sp, #0
 800140e:	0002      	movs	r2, r0
 8001410:	1dbb      	adds	r3, r7, #6
 8001412:	801a      	strh	r2, [r3, #0]
 8001414:	e009      	b.n	800142a <_ee_delay_ms+0x22>
 8001416:	4b0a      	ldr	r3, [pc, #40]	; (8001440 <_ee_delay_ms+0x38>)
 8001418:	60fb      	str	r3, [r7, #12]
 800141a:	e003      	b.n	8001424 <_ee_delay_ms+0x1c>
 800141c:	46c0      	nop			; (mov r8, r8)
 800141e:	68fb      	ldr	r3, [r7, #12]
 8001420:	3b01      	subs	r3, #1
 8001422:	60fb      	str	r3, [r7, #12]
 8001424:	68fb      	ldr	r3, [r7, #12]
 8001426:	2b00      	cmp	r3, #0
 8001428:	d1f8      	bne.n	800141c <_ee_delay_ms+0x14>
 800142a:	1dbb      	adds	r3, r7, #6
 800142c:	881b      	ldrh	r3, [r3, #0]
 800142e:	1dba      	adds	r2, r7, #6
 8001430:	1e59      	subs	r1, r3, #1
 8001432:	8011      	strh	r1, [r2, #0]
 8001434:	2b00      	cmp	r3, #0
 8001436:	d1ee      	bne.n	8001416 <_ee_delay_ms+0xe>
 8001438:	46c0      	nop			; (mov r8, r8)
 800143a:	46bd      	mov	sp, r7
 800143c:	b004      	add	sp, #16
 800143e:	bd80      	pop	{r7, pc}
 8001440:	00001130 	.word	0x00001130

08001444 <EE_Init>:
 8001444:	b590      	push	{r4, r7, lr}
 8001446:	b087      	sub	sp, #28
 8001448:	af00      	add	r7, sp, #0
 800144a:	60f8      	str	r0, [r7, #12]
 800144c:	60b9      	str	r1, [r7, #8]
 800144e:	603b      	str	r3, [r7, #0]
 8001450:	1dfb      	adds	r3, r7, #7
 8001452:	701a      	strb	r2, [r3, #0]
 8001454:	683a      	ldr	r2, [r7, #0]
 8001456:	2380      	movs	r3, #128	; 0x80
 8001458:	011b      	lsls	r3, r3, #4
 800145a:	429a      	cmp	r2, r3
 800145c:	d901      	bls.n	8001462 <EE_Init+0x1e>
 800145e:	2202      	movs	r2, #2
 8001460:	e000      	b.n	8001464 <EE_Init+0x20>
 8001462:	2201      	movs	r2, #1
 8001464:	2113      	movs	r1, #19
 8001466:	187b      	adds	r3, r7, r1
 8001468:	701a      	strb	r2, [r3, #0]
 800146a:	68f8      	ldr	r0, [r7, #12]
 800146c:	187b      	adds	r3, r7, r1
 800146e:	781c      	ldrb	r4, [r3, #0]
 8001470:	1dfb      	adds	r3, r7, #7
 8001472:	781a      	ldrb	r2, [r3, #0]
 8001474:	68b9      	ldr	r1, [r7, #8]
 8001476:	0023      	movs	r3, r4
 8001478:	f7ff fca5 	bl	8000dc6 <I2C_DeviceInit>
 800147c:	68fb      	ldr	r3, [r7, #12]
 800147e:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 8001480:	609a      	str	r2, [r3, #8]
 8001482:	68fb      	ldr	r3, [r7, #12]
 8001484:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8001486:	60da      	str	r2, [r3, #12]
 8001488:	68fb      	ldr	r3, [r7, #12]
 800148a:	683a      	ldr	r2, [r7, #0]
 800148c:	611a      	str	r2, [r3, #16]
 800148e:	2328      	movs	r3, #40	; 0x28
 8001490:	18fb      	adds	r3, r7, r3
 8001492:	881b      	ldrh	r3, [r3, #0]
 8001494:	b29a      	uxth	r2, r3
 8001496:	2a80      	cmp	r2, #128	; 0x80
 8001498:	d900      	bls.n	800149c <EE_Init+0x58>
 800149a:	2380      	movs	r3, #128	; 0x80
 800149c:	b29a      	uxth	r2, r3
 800149e:	68fb      	ldr	r3, [r7, #12]
 80014a0:	829a      	strh	r2, [r3, #20]
 80014a2:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 80014a4:	2390      	movs	r3, #144	; 0x90
 80014a6:	05db      	lsls	r3, r3, #23
 80014a8:	429a      	cmp	r2, r3
 80014aa:	d102      	bne.n	80014b2 <EE_Init+0x6e>
 80014ac:	2380      	movs	r3, #128	; 0x80
 80014ae:	029b      	lsls	r3, r3, #10
 80014b0:	617b      	str	r3, [r7, #20]
 80014b2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80014b4:	4a25      	ldr	r2, [pc, #148]	; (800154c <EE_Init+0x108>)
 80014b6:	4293      	cmp	r3, r2
 80014b8:	d102      	bne.n	80014c0 <EE_Init+0x7c>
 80014ba:	2380      	movs	r3, #128	; 0x80
 80014bc:	02db      	lsls	r3, r3, #11
 80014be:	617b      	str	r3, [r7, #20]
 80014c0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80014c2:	4a23      	ldr	r2, [pc, #140]	; (8001550 <EE_Init+0x10c>)
 80014c4:	4293      	cmp	r3, r2
 80014c6:	d102      	bne.n	80014ce <EE_Init+0x8a>
 80014c8:	2380      	movs	r3, #128	; 0x80
 80014ca:	031b      	lsls	r3, r3, #12
 80014cc:	617b      	str	r3, [r7, #20]
 80014ce:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80014d0:	4a20      	ldr	r2, [pc, #128]	; (8001554 <EE_Init+0x110>)
 80014d2:	4293      	cmp	r3, r2
 80014d4:	d102      	bne.n	80014dc <EE_Init+0x98>
 80014d6:	2380      	movs	r3, #128	; 0x80
 80014d8:	035b      	lsls	r3, r3, #13
 80014da:	617b      	str	r3, [r7, #20]
 80014dc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80014de:	4a1e      	ldr	r2, [pc, #120]	; (8001558 <EE_Init+0x114>)
 80014e0:	4293      	cmp	r3, r2
 80014e2:	d102      	bne.n	80014ea <EE_Init+0xa6>
 80014e4:	2380      	movs	r3, #128	; 0x80
 80014e6:	03db      	lsls	r3, r3, #15
 80014e8:	617b      	str	r3, [r7, #20]
 80014ea:	697b      	ldr	r3, [r7, #20]
 80014ec:	0018      	movs	r0, r3
 80014ee:	f7ff fe57 	bl	80011a0 <LL_AHB1_GRP1_EnableClock>
 80014f2:	68fb      	ldr	r3, [r7, #12]
 80014f4:	6898      	ldr	r0, [r3, #8]
 80014f6:	68fb      	ldr	r3, [r7, #12]
 80014f8:	68db      	ldr	r3, [r3, #12]
 80014fa:	2201      	movs	r2, #1
 80014fc:	0019      	movs	r1, r3
 80014fe:	f7ff fdca 	bl	8001096 <LL_GPIO_SetPinMode>
 8001502:	68fb      	ldr	r3, [r7, #12]
 8001504:	6898      	ldr	r0, [r3, #8]
 8001506:	68fb      	ldr	r3, [r7, #12]
 8001508:	68db      	ldr	r3, [r3, #12]
 800150a:	2200      	movs	r2, #0
 800150c:	0019      	movs	r1, r3
 800150e:	f7ff fddf 	bl	80010d0 <LL_GPIO_SetPinOutputType>
 8001512:	68fb      	ldr	r3, [r7, #12]
 8001514:	6898      	ldr	r0, [r3, #8]
 8001516:	68fb      	ldr	r3, [r7, #12]
 8001518:	68db      	ldr	r3, [r3, #12]
 800151a:	2203      	movs	r2, #3
 800151c:	0019      	movs	r1, r3
 800151e:	f7ff fdec 	bl	80010fa <LL_GPIO_SetPinSpeed>
 8001522:	68fb      	ldr	r3, [r7, #12]
 8001524:	6898      	ldr	r0, [r3, #8]
 8001526:	68fb      	ldr	r3, [r7, #12]
 8001528:	68db      	ldr	r3, [r3, #12]
 800152a:	2200      	movs	r2, #0
 800152c:	0019      	movs	r1, r3
 800152e:	f7ff fe01 	bl	8001134 <LL_GPIO_SetPinPull>
 8001532:	68fb      	ldr	r3, [r7, #12]
 8001534:	689a      	ldr	r2, [r3, #8]
 8001536:	68fb      	ldr	r3, [r7, #12]
 8001538:	68db      	ldr	r3, [r3, #12]
 800153a:	0019      	movs	r1, r3
 800153c:	0010      	movs	r0, r2
 800153e:	f7ff fe16 	bl	800116e <LL_GPIO_SetOutputPin>
 8001542:	46c0      	nop			; (mov r8, r8)
 8001544:	46bd      	mov	sp, r7
 8001546:	b007      	add	sp, #28
 8001548:	bd90      	pop	{r4, r7, pc}
 800154a:	46c0      	nop			; (mov r8, r8)
 800154c:	48000400 	.word	0x48000400
 8001550:	48000800 	.word	0x48000800
 8001554:	48000c00 	.word	0x48000c00
 8001558:	48001400 	.word	0x48001400

0800155c <EE_WriteByte>:
 800155c:	b580      	push	{r7, lr}
 800155e:	b084      	sub	sp, #16
 8001560:	af00      	add	r7, sp, #0
 8001562:	60f8      	str	r0, [r7, #12]
 8001564:	60b9      	str	r1, [r7, #8]
 8001566:	1dfb      	adds	r3, r7, #7
 8001568:	701a      	strb	r2, [r3, #0]
 800156a:	68fb      	ldr	r3, [r7, #12]
 800156c:	689a      	ldr	r2, [r3, #8]
 800156e:	68fb      	ldr	r3, [r7, #12]
 8001570:	68db      	ldr	r3, [r3, #12]
 8001572:	0019      	movs	r1, r3
 8001574:	0010      	movs	r0, r2
 8001576:	f7ff fe06 	bl	8001186 <LL_GPIO_ResetOutputPin>
 800157a:	68f8      	ldr	r0, [r7, #12]
 800157c:	1dfb      	adds	r3, r7, #7
 800157e:	781a      	ldrb	r2, [r3, #0]
 8001580:	68bb      	ldr	r3, [r7, #8]
 8001582:	0019      	movs	r1, r3
 8001584:	f7ff fc42 	bl	8000e0c <I2C_WriteByte>
 8001588:	68fb      	ldr	r3, [r7, #12]
 800158a:	689a      	ldr	r2, [r3, #8]
 800158c:	68fb      	ldr	r3, [r7, #12]
 800158e:	68db      	ldr	r3, [r3, #12]
 8001590:	0019      	movs	r1, r3
 8001592:	0010      	movs	r0, r2
 8001594:	f7ff fdeb 	bl	800116e <LL_GPIO_SetOutputPin>
 8001598:	2006      	movs	r0, #6
 800159a:	f7ff ff35 	bl	8001408 <_ee_delay_ms>
 800159e:	46c0      	nop			; (mov r8, r8)
 80015a0:	46bd      	mov	sp, r7
 80015a2:	b004      	add	sp, #16
 80015a4:	bd80      	pop	{r7, pc}

080015a6 <EE_ReadByte>:
 80015a6:	b580      	push	{r7, lr}
 80015a8:	b082      	sub	sp, #8
 80015aa:	af00      	add	r7, sp, #0
 80015ac:	6078      	str	r0, [r7, #4]
 80015ae:	6039      	str	r1, [r7, #0]
 80015b0:	687b      	ldr	r3, [r7, #4]
 80015b2:	683a      	ldr	r2, [r7, #0]
 80015b4:	0011      	movs	r1, r2
 80015b6:	0018      	movs	r0, r3
 80015b8:	f7ff fcd0 	bl	8000f5c <I2C_ReadByte>
 80015bc:	0003      	movs	r3, r0
 80015be:	0018      	movs	r0, r3
 80015c0:	46bd      	mov	sp, r7
 80015c2:	b002      	add	sp, #8
 80015c4:	bd80      	pop	{r7, pc}

080015c6 <EE_ReadNextByte>:
 80015c6:	b580      	push	{r7, lr}
 80015c8:	b082      	sub	sp, #8
 80015ca:	af00      	add	r7, sp, #0
 80015cc:	6078      	str	r0, [r7, #4]
 80015ce:	687b      	ldr	r3, [r7, #4]
 80015d0:	0018      	movs	r0, r3
 80015d2:	f7ff fc94 	bl	8000efe <I2C_ReadNextByte>
 80015d6:	0003      	movs	r3, r0
 80015d8:	0018      	movs	r0, r3
 80015da:	46bd      	mov	sp, r7
 80015dc:	b002      	add	sp, #8
 80015de:	bd80      	pop	{r7, pc}

080015e0 <EE_WriteData>:
 80015e0:	b590      	push	{r4, r7, lr}
 80015e2:	b087      	sub	sp, #28
 80015e4:	af00      	add	r7, sp, #0
 80015e6:	60f8      	str	r0, [r7, #12]
 80015e8:	60b9      	str	r1, [r7, #8]
 80015ea:	607a      	str	r2, [r7, #4]
 80015ec:	001a      	movs	r2, r3
 80015ee:	1cbb      	adds	r3, r7, #2
 80015f0:	801a      	strh	r2, [r3, #0]
 80015f2:	68fb      	ldr	r3, [r7, #12]
 80015f4:	8a9b      	ldrh	r3, [r3, #20]
 80015f6:	001a      	movs	r2, r3
 80015f8:	68bb      	ldr	r3, [r7, #8]
 80015fa:	0011      	movs	r1, r2
 80015fc:	0018      	movs	r0, r3
 80015fe:	f7fe fe31 	bl	8000264 <__aeabi_uidivmod>
 8001602:	000b      	movs	r3, r1
 8001604:	001a      	movs	r2, r3
 8001606:	2416      	movs	r4, #22
 8001608:	193b      	adds	r3, r7, r4
 800160a:	801a      	strh	r2, [r3, #0]
 800160c:	1cbb      	adds	r3, r7, #2
 800160e:	881a      	ldrh	r2, [r3, #0]
 8001610:	68bb      	ldr	r3, [r7, #8]
 8001612:	18d2      	adds	r2, r2, r3
 8001614:	68fb      	ldr	r3, [r7, #12]
 8001616:	8a9b      	ldrh	r3, [r3, #20]
 8001618:	0019      	movs	r1, r3
 800161a:	0010      	movs	r0, r2
 800161c:	f7fe fe22 	bl	8000264 <__aeabi_uidivmod>
 8001620:	000b      	movs	r3, r1
 8001622:	001a      	movs	r2, r3
 8001624:	2114      	movs	r1, #20
 8001626:	187b      	adds	r3, r7, r1
 8001628:	801a      	strh	r2, [r3, #0]
 800162a:	193a      	adds	r2, r7, r4
 800162c:	187b      	adds	r3, r7, r1
 800162e:	8812      	ldrh	r2, [r2, #0]
 8001630:	881b      	ldrh	r3, [r3, #0]
 8001632:	429a      	cmp	r2, r3
 8001634:	d001      	beq.n	800163a <EE_WriteData+0x5a>
 8001636:	2301      	movs	r3, #1
 8001638:	e01a      	b.n	8001670 <EE_WriteData+0x90>
 800163a:	68fb      	ldr	r3, [r7, #12]
 800163c:	689a      	ldr	r2, [r3, #8]
 800163e:	68fb      	ldr	r3, [r7, #12]
 8001640:	68db      	ldr	r3, [r3, #12]
 8001642:	0019      	movs	r1, r3
 8001644:	0010      	movs	r0, r2
 8001646:	f7ff fd9e 	bl	8001186 <LL_GPIO_ResetOutputPin>
 800164a:	68f8      	ldr	r0, [r7, #12]
 800164c:	1cbb      	adds	r3, r7, #2
 800164e:	881b      	ldrh	r3, [r3, #0]
 8001650:	687a      	ldr	r2, [r7, #4]
 8001652:	68b9      	ldr	r1, [r7, #8]
 8001654:	f7ff fc0f 	bl	8000e76 <I2C_WriteData>
 8001658:	68fb      	ldr	r3, [r7, #12]
 800165a:	689a      	ldr	r2, [r3, #8]
 800165c:	68fb      	ldr	r3, [r7, #12]
 800165e:	68db      	ldr	r3, [r3, #12]
 8001660:	0019      	movs	r1, r3
 8001662:	0010      	movs	r0, r2
 8001664:	f7ff fd83 	bl	800116e <LL_GPIO_SetOutputPin>
 8001668:	2006      	movs	r0, #6
 800166a:	f7ff fecd 	bl	8001408 <_ee_delay_ms>
 800166e:	2300      	movs	r3, #0
 8001670:	0018      	movs	r0, r3
 8001672:	46bd      	mov	sp, r7
 8001674:	b007      	add	sp, #28
 8001676:	bd90      	pop	{r4, r7, pc}

08001678 <EE_ReadData>:
 8001678:	b580      	push	{r7, lr}
 800167a:	b084      	sub	sp, #16
 800167c:	af00      	add	r7, sp, #0
 800167e:	60f8      	str	r0, [r7, #12]
 8001680:	60b9      	str	r1, [r7, #8]
 8001682:	607a      	str	r2, [r7, #4]
 8001684:	001a      	movs	r2, r3
 8001686:	1cbb      	adds	r3, r7, #2
 8001688:	801a      	strh	r2, [r3, #0]
 800168a:	68f8      	ldr	r0, [r7, #12]
 800168c:	1cbb      	adds	r3, r7, #2
 800168e:	881b      	ldrh	r3, [r3, #0]
 8001690:	687a      	ldr	r2, [r7, #4]
 8001692:	68b9      	ldr	r1, [r7, #8]
 8001694:	f7ff fcaa 	bl	8000fec <I2C_ReadData>
 8001698:	46c0      	nop			; (mov r8, r8)
 800169a:	46bd      	mov	sp, r7
 800169c:	b004      	add	sp, #16
 800169e:	bd80      	pop	{r7, pc}

080016a0 <register_fini>:
 80016a0:	4b03      	ldr	r3, [pc, #12]	; (80016b0 <register_fini+0x10>)
 80016a2:	b510      	push	{r4, lr}
 80016a4:	2b00      	cmp	r3, #0
 80016a6:	d002      	beq.n	80016ae <register_fini+0xe>
 80016a8:	4802      	ldr	r0, [pc, #8]	; (80016b4 <register_fini+0x14>)
 80016aa:	f7fe fde1 	bl	8000270 <atexit>
 80016ae:	bd10      	pop	{r4, pc}
 80016b0:	00000000 	.word	0x00000000
 80016b4:	08000281 	.word	0x08000281

080016b8 <_init>:
 80016b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80016ba:	46c0      	nop			; (mov r8, r8)
 80016bc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80016be:	bc08      	pop	{r3}
 80016c0:	469e      	mov	lr, r3
 80016c2:	4770      	bx	lr

080016c4 <_fini>:
 80016c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80016c6:	46c0      	nop			; (mov r8, r8)
 80016c8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80016ca:	bc08      	pop	{r3}
 80016cc:	469e      	mov	lr, r3
 80016ce:	4770      	bx	lr
