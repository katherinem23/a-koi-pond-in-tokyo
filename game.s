	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.global	initializeMenu
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeMenu, %function
initializeMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #7168
	ldr	r4, .L4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	ip, #512
	mov	r0, #7680
	mov	r1, #0
	ldr	r2, .L4+20
	strh	ip, [r3]	@ movhi
	pop	{r4, lr}
	strh	r0, [r3, #10]	@ movhi
	str	r1, [r2]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startScreenTiles
	.word	100724736
	.word	startScreenMap
	.word	startScreenPal
	.word	GAMESTATE
	.size	initializeMenu, .-initializeMenu
	.align	2
	.global	initializeInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeInstructions, %function
initializeInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #6848
	ldr	r4, .L8
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L8+4
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L8+8
	ldr	r1, .L8+12
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L8+16
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	ip, #512
	mov	r0, #7680
	mov	r1, #1
	ldr	r2, .L8+20
	strh	ip, [r3]	@ movhi
	pop	{r4, lr}
	strh	r0, [r3, #10]	@ movhi
	str	r1, [r2]
	bx	lr
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	instructionScreenTiles
	.word	100724736
	.word	instructionScreenMap
	.word	instructionScreenPal
	.word	GAMESTATE
	.size	initializeInstructions, .-initializeInstructions
	.align	2
	.global	initializeGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeGame, %function
initializeGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L12
	ldr	r3, .L12+4
	ldr	r4, .L12+8
	mov	lr, pc
	bx	r3
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2240
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+16
	ldr	r1, .L12+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r4
	mov	r6, #67108864
	mov	r3, #4352
	mov	r2, #7680
	strh	r3, [r6]	@ movhi
	mov	r0, #3
	strh	r2, [r6, #8]	@ movhi
	mov	r3, #368
	ldr	r2, .L12+28
	ldr	r1, .L12+32
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	lr, pc
	bx	r4
	mov	ip, #198
	ldr	r3, .L12+44
	ldr	r2, .L12+48
	ldr	r0, .L12+52
	add	r1, r5, #800
	ldr	r7, .L12+56
	add	r5, r5, #804
	strh	r3, [r6, #10]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	ip, [r5]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L12+60
	ldr	r1, .L12+64
	mov	lr, pc
	bx	r4
	mov	r2, r7
	mov	r3, #256
	ldr	r1, .L12+68
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #2
	mvn	r3, #32768
	ldr	r2, .L12+72
	str	r1, [r2]
	strh	r3, [r7, #14]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	shadowOAM
	.word	hideSprites
	.word	DMANow
	.word	pondSceneTiles
	.word	100724736
	.word	pondSceneMap
	.word	pondScenePal
	.word	100696064
	.word	mtnBackgroundTiles
	.word	100714496
	.word	mtnBackgroundMap
	.word	-9976
	.word	16388
	.word	-32764
	.word	83886592
	.word	100728832
	.word	koiSpritedraftTiles
	.word	koiSpritedraftPal
	.word	GAMESTATE
	.size	initializeGame, .-initializeGame
	.align	2
	.global	createSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	createSprites, %function
createSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #120
	mov	r2, #125
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #5
	ldr	r3, .L20
	ldr	r4, .L20+4
	stm	r3, {r1, r2}
	ldr	r5, .L20+8
	ldr	r6, .L20+12
	ldr	r8, .L20+16
	add	r7, r4, #840
.L15:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #4
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #6
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #3
	str	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	str	r0, [r4, #24]
	mov	lr, pc
	bx	r5
	mov	r10, #1
	mov	r2, #3
	smull	r1, r3, r8, r0
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl r10
	sub	r0, r0, r3
	str	r2, [r4, #40]
	str	r9, [r4, #32]
	str	r0, [r4, #36]
	str	r10, [r4, #44]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, r10
	rsblt	r0, r0, #0
	add	r0, r0, r10
	str	r0, [r4, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, r10
	rsblt	r0, r0, #0
	add	r0, r0, r10
	str	r0, [r4, #12]
	add	r4, r4, #56
	cmp	r4, r7
	bne	.L15
	mov	r8, #135
	ldr	r4, .L20+20
	ldr	r7, .L20+12
	add	r6, r4, #224
.L16:
	mov	lr, pc
	bx	r5
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #7
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #4
	stm	r4, {r0, r8}
	mov	lr, pc
	bx	r5
	mov	r3, #0
	mov	r1, #10
	mov	r2, #3
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	str	r0, [r4, #24]
	str	r10, [r4, #8]
	str	r10, [r4, #44]
	str	r3, [r4, #36]
	str	r1, [r4, #32]
	str	r2, [r4, #40]
	add	r4, r4, #56
	cmp	r4, r6
	bne	.L16
	mvn	r0, #32768
	ldr	r1, .L20+24
	ldr	r2, .L20+28
	strh	r0, [r1, #14]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r3, [r2, #24]
	bx	lr
.L21:
	.align	2
.L20:
	.word	fisher
	.word	koi
	.word	rand
	.word	-2004318071
	.word	1431655766
	.word	falcons
	.word	83886592
	.word	rock
	.size	createSprites, .-createSprites
	.align	2
	.global	waitOnMenu
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitOnMenu, %function
waitOnMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L34
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L23
	ldr	r2, .L34+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L32
.L23:
	tst	r3, #2
	beq	.L22
	ldr	r3, .L34+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L33
.L22:
	pop	{r4, lr}
	bx	lr
.L33:
	pop	{r4, lr}
	b	initializeInstructions
.L32:
	bl	initializeGame
	bl	createSprites
	ldrh	r3, [r4]
	b	.L23
.L35:
	.align	2
.L34:
	.word	oldButtons
	.word	buttons
	.size	waitOnMenu, .-waitOnMenu
	.align	2
	.global	waitOnInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitOnInstructions, %function
waitOnInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L48
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L37
	ldr	r2, .L48+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L46
.L37:
	tst	r3, #2
	beq	.L36
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L47
.L36:
	pop	{r4, lr}
	bx	lr
.L47:
	pop	{r4, lr}
	b	initializeMenu
.L46:
	bl	initializeGame
	bl	createSprites
	ldrh	r3, [r4]
	b	.L37
.L49:
	.align	2
.L48:
	.word	oldButtons
	.word	buttons
	.size	waitOnInstructions, .-waitOnInstructions
	.align	2
	.global	initializeEnd
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeEnd, %function
initializeEnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #100663296
	ldr	r4, .L52
	mov	r0, #3
	ldr	r3, .L52+4
	ldr	r1, .L52+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L52+12
	ldr	r1, .L52+16
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L52+20
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	ip, #512
	mov	r0, #7680
	mov	r1, #4
	ldr	r2, .L52+24
	strh	ip, [r3]	@ movhi
	pop	{r4, lr}
	strh	r0, [r3, #10]	@ movhi
	str	r1, [r2]
	bx	lr
.L53:
	.align	2
.L52:
	.word	DMANow
	.word	4912
	.word	endSceneTiles
	.word	100724736
	.word	endSceneMap
	.word	endScenePal
	.word	GAMESTATE
	.size	initializeEnd, .-initializeEnd
	.align	2
	.global	waitOnEnd
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitOnEnd, %function
waitOnEnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L59
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L59+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	initializeMenu
.L60:
	.align	2
.L59:
	.word	oldButtons
	.word	buttons
	.size	waitOnEnd, .-waitOnEnd
	.align	2
	.global	initializePause
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializePause, %function
initializePause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #100663296
	ldr	r4, .L63
	mov	r0, #3
	ldr	r3, .L63+4
	ldr	r1, .L63+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L63+12
	ldr	r1, .L63+16
	mov	lr, pc
	bx	r4
	mov	r3, #240
	mov	r2, #83886080
	ldr	r1, .L63+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #512
	mov	r2, #7680
	strh	r1, [r3]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L64:
	.align	2
.L63:
	.word	DMANow
	.word	5040
	.word	pauseScreenTiles
	.word	100724736
	.word	pauseScreenMap
	.word	pauseScreenPal
	.size	initializePause, .-initializePause
	.align	2
	.global	waitOnPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitOnPause, %function
waitOnPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L76
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L76+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	push	{r4, r5, r6, lr}
	ldr	r5, .L76+8
	ldr	r4, [r5]
	cmp	r4, #0
	beq	.L74
.L69:
	cmp	r4, #2
	beq	.L75
.L65:
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	bl	initializeGame
	mov	r2, #2
	ldr	r3, .L76+12
	ldr	r4, [r5]
	str	r2, [r3]
	b	.L69
.L75:
	ldr	r3, .L76+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+12
	str	r4, [r3]
	b	.L65
.L77:
	.align	2
.L76:
	.word	oldButtons
	.word	buttons
	.word	SCENE
	.word	GAMESTATE
	.word	initializeHome
	.size	waitOnPause, .-waitOnPause
	.align	2
	.global	updateFisher
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFisher, %function
updateFisher:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L93
	ldrh	r0, [r3]
	ldr	r2, .L93+4
	tst	r0, #16
	push	{r4, r5, lr}
	ldr	r3, [r2]
	bne	.L79
	add	r3, r3, #1
	cmp	r3, #210
	strle	r3, [r2]
	bgt	.L92
.L79:
	ands	ip, r0, #32
	beq	.L83
.L82:
	lsl	r1, r3, #23
	lsr	r1, r1, #23
	orr	r1, r1, #32768
.L84:
	ldr	lr, [r2, #4]
	and	r2, lr, #255
	mvn	r2, r2, lsl #17
	mov	r4, #8
	mvn	r2, r2, lsr #17
	ldr	ip, .L93+8
	ldrh	r5, [ip]
	ldr	ip, .L93+12
	tst	r5, #2
	strh	r2, [ip]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	strh	r4, [ip, #4]	@ movhi
	beq	.L78
	tst	r0, #2
	moveq	r1, #1
	ldreq	r2, .L93+16
	stmeq	r2, {r3, lr}
	streq	r1, [r2, #44]
	streq	r1, [r2, #24]
.L78:
	pop	{r4, r5, lr}
	bx	lr
.L83:
	subs	r3, r3, #1
	bpl	.L81
	mov	r3, ip
	mov	r1, #32768
	str	ip, [r2]
	b	.L84
.L92:
	mov	r3, #210
	tst	r0, #32
	str	r3, [r2]
	bne	.L82
	mov	r3, #209
.L81:
	lsl	r1, r3, #23
	lsr	r1, r1, #23
	str	r3, [r2]
	orr	r1, r1, #32768
	b	.L84
.L94:
	.align	2
.L93:
	.word	buttons
	.word	fisher
	.word	oldButtons
	.word	shadowOAM
	.word	rock
	.size	updateFisher, .-updateFisher
	.align	2
	.global	updateRock
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRock, %function
updateRock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L98
	ldr	r2, [r0, #4]
	ldr	r3, [r0]
	sub	r2, r2, #1
	ldr	r1, .L98+4
	lsl	r3, r3, #23
	and	ip, r2, #255
	lsr	r3, r3, #23
	orr	r3, r3, r1
	orr	ip, ip, r1
	ldr	r1, .L98+8
	cmp	r2, #0
	str	lr, [sp, #-4]!
	mov	lr, #20
	str	r2, [r0, #4]
	strh	r3, [r1, #74]	@ movhi
	mvnlt	r2, #99
	movlt	r3, #512
	strh	ip, [r1, #72]	@ movhi
	strh	lr, [r1, #76]	@ movhi
	strlt	r2, [r0, #44]
	strhlt	r3, [r1, #72]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L99:
	.align	2
.L98:
	.word	rock
	.word	-32768
	.word	shadowOAM
	.size	updateRock, .-updateRock
	.align	2
	.global	updateKoi
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateKoi, %function
updateKoi:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L150
	ldr	r8, .L150+4
	ldr	fp, .L150+8
	ldr	r9, .L150+12
	ldr	r10, .L150+16
	sub	sp, sp, #20
.L131:
	ldr	r1, [fp]
	ldr	r0, .L150+20
	smull	r3, r0, r1, r0
	ldr	r2, [r5, #32]
	asr	r3, r1, #31
	sub	r2, r2, #1
	rsb	r3, r3, r0, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r2, #0
	str	r2, [r5, #32]
	sub	r3, r1, r3, lsl #1
	bne	.L101
	ldr	r2, [r5, #44]
	cmp	r2, #0
	beq	.L102
	mov	r0, #5
	ldr	r2, [r5, #36]
	ldr	r1, .L150+24
	add	r2, r2, #1
	smull	ip, r1, r2, r1
	sub	r1, r1, r2, asr #31
	add	r1, r1, r1, lsl #1
	sub	r2, r2, r1
	cmp	r3, #0
	str	r2, [r5, #36]
	str	r0, [r5, #32]
	bne	.L102
	ldr	r3, .L150+28
	ldr	r3, [r3, #24]
	cmp	r3, #1
	beq	.L148
.L106:
	ldr	r3, [r5, #24]
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L112
.L114:
	.word	.L117
	.word	.L116
	.word	.L115
	.word	.L113
.L102:
	ldm	r5, {r0, r1}
.L104:
	ldr	r3, .L150+32
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L126
	ldr	r3, .L150+36
	ldrh	r3, [r3]
	ands	r4, r3, #4
	beq	.L149
.L126:
	mov	r7, #20
	mov	r6, #14
	ldr	r4, .L150+40
.L130:
	mov	r3, #15
	ldm	r4, {ip, lr}
	mov	r2, r3
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r6, [sp, #8]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	movne	r2, #512
	movne	r3, #0
	add	r4, r4, #56
	strhne	r2, [r8, #80]	@ movhi
	strne	r3, [r5, #44]
	cmp	r10, r4
	ldmne	r5, {r0, r1}
	bne	.L130
.L129:
	ldr	r3, .L150+44
	add	r5, r5, #56
	cmp	r3, r5
	add	r8, r8, #8
	bne	.L131
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L101:
	cmp	r3, #0
	bne	.L102
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L102
	ldr	r3, .L150+28
	ldr	r3, [r3, #24]
	cmp	r3, #1
	ldr	r2, [r5, #36]
	bne	.L106
.L148:
	ldr	r3, .L150+48
	ldr	r0, [r5]
	ldr	ip, [r3]
	cmp	r0, ip
	bge	.L107
	ldr	r3, [r5, #8]
	mov	r1, #2
	add	r3, r3, r0
	mov	r0, r3
	str	r3, [r5]
	str	r1, [r5, #24]
.L107:
	ldr	r3, .L150+48
	ldr	r1, [r5, #4]
	ldr	r3, [r3, #4]
	cmp	r1, r3
	bge	.L108
	ldr	lr, [r5, #12]
	mov	r4, #0
	add	lr, lr, r1
	mov	r1, lr
	str	lr, [r5, #4]
	str	r4, [r5, #24]
.L108:
	cmp	ip, r0
	bge	.L109
	ldr	ip, [r5, #8]
	mov	lr, #1
	sub	ip, r0, ip
	mov	r0, ip
	str	ip, [r5]
	str	lr, [r5, #24]
.L109:
	cmp	r3, r1
	bge	.L147
	ldr	r3, [r5, #12]
	mov	ip, #3
	sub	r1, r1, r3
	mov	r3, #96
	str	r1, [r5, #4]
	str	ip, [r5, #24]
.L111:
	ldr	ip, .L150+52
	add	r2, r3, r2
	lsl	r3, r0, #23
	lsr	r3, r3, #23
	and	r2, ip, r2, lsl #1
	orr	r3, r3, #16384
	and	ip, r1, #255
	strh	r2, [r8, #84]	@ movhi
	strh	r3, [r8, #82]	@ movhi
	strh	ip, [r8, #80]	@ movhi
	b	.L104
.L149:
	mov	ip, #20
	mov	r2, #14
	mov	r3, #15
	ldr	r6, .L150+48
	ldr	lr, [r6, #4]
	str	ip, [sp, #12]
	ldr	ip, [r6]
	str	r2, [sp, #8]
	stm	sp, {ip, lr}
	mov	r2, r3
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L127
	ldm	r5, {r0, r1}
	b	.L126
.L115:
	ldm	r5, {r0, r1, ip}
	add	r0, r0, ip
	cmp	r0, #240
	movgt	ip, #1
	ldr	r3, [r5, #12]
	sub	r3, r1, r3
	strgt	ip, [r5, #24]
	cmp	r3, #29
	mov	r1, r3
	stm	r5, {r0, r3}
	movle	r3, #0
	strle	r3, [r5, #24]
	ble	.L111
.L147:
	ldr	r3, [r5, #24]
	lsl	r3, r3, #5
	b	.L111
.L127:
	mov	r3, #67108864
	mov	r1, #21248
	mov	r2, #512
	strh	r1, [r3, #104]	@ movhi
	ldr	r1, .L150+56
	ldr	r0, [r5]
	strh	r1, [r3, #108]	@ movhi
	str	r4, [r5, #44]
	strh	r2, [r8, #80]	@ movhi
	ldr	r1, [r5, #4]
	b	.L126
.L113:
	ldm	r5, {r0, r1, r3, ip}
	sub	r1, r1, ip
	cmp	r1, #29
	movle	ip, #0
	sub	r3, r0, r3
	strle	ip, [r5, #24]
	cmp	r3, #0
	mov	r0, r3
	str	r1, [r5, #4]
	str	r3, [r5]
	bge	.L147
	mov	ip, #2
	mov	r3, #64
	str	ip, [r5, #24]
	b	.L111
.L116:
	ldm	r5, {r0, r1, r3, ip}
	add	r1, r1, ip
	cmp	r1, #125
	movgt	ip, #3
	sub	r3, r0, r3
	strgt	ip, [r5, #24]
	cmp	r3, #0
	mov	r0, r3
	str	r1, [r5, #4]
	str	r3, [r5]
	bge	.L147
	mov	r3, #2
	str	r3, [r5, #24]
	mov	r3, #64
	b	.L111
.L117:
	ldm	r5, {r0, r1, ip}
	add	r0, r0, ip
	cmp	r0, #240
	movgt	ip, #1
	ldr	r3, [r5, #12]
	add	r3, r1, r3
	strgt	ip, [r5, #24]
	cmp	r3, #125
	mov	r1, r3
	stm	r5, {r0, r3}
	ble	.L147
	mov	r3, #3
	str	r3, [r5, #24]
	mov	r3, #96
	b	.L111
.L112:
	ldm	r5, {r0, r1}
	lsl	r3, r3, #5
	b	.L111
.L151:
	.align	2
.L150:
	.word	koi
	.word	shadowOAM
	.word	frameCount
	.word	collision
	.word	falcons+224
	.word	1717986919
	.word	1431655766
	.word	rock
	.word	oldButtons
	.word	buttons
	.word	falcons
	.word	koi+840
	.word	fisher
	.word	1022
	.word	-30878
	.size	updateKoi, .-updateKoi
	.align	2
	.global	updateFalcons
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFalcons, %function
updateFalcons:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, #6
	ldr	r3, .L159
	ldr	r1, .L159+4
	ldr	r4, .L159+8
	add	ip, r3, #224
.L156:
	ldr	r2, [r3]
	cmn	r2, #99
	blt	.L153
	ldr	r0, [r3, #24]
	cmp	r0, #0
	ldr	r0, [r3, #8]
	addeq	r2, r2, r0
	subne	r2, r2, r0
	ldrb	lr, [r3, #4]	@ zero_extendqisi2
	and	r0, r2, r4
	orr	r0, r0, #16384
	str	r2, [r3]
	strh	r0, [r1, #42]	@ movhi
	strh	r5, [r1, #44]	@ movhi
	strh	lr, [r1, #40]	@ movhi
.L153:
	add	r3, r3, #56
	cmp	r3, ip
	add	r1, r1, #8
	bne	.L156
	pop	{r4, r5, lr}
	bx	lr
.L160:
	.align	2
.L159:
	.word	falcons
	.word	shadowOAM
	.word	511
	.size	updateFalcons, .-updateFalcons
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L207
	ldr	r3, [r5]
	cmp	r3, #0
	sub	sp, sp, #20
	beq	.L202
	ldr	r4, .L207+4
.L162:
	ldrh	r3, [r4]
	tst	r3, #512
	bne	.L176
.L175:
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L204
.L177:
	cmp	r3, #1
	beq	.L173
.L161:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L176:
	ldr	r3, .L207+8
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L175
	ldr	r8, .L207+12
	ldr	r7, .L207+16
	ldr	r6, .L207+20
.L174:
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	mvn	r1, #32768
	mov	r3, #1
	ldr	r2, .L207+24
	strh	r1, [r2, #14]	@ movhi
	str	r3, [r5]
.L173:
	ldr	r3, .L207+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L207+32
	ldr	r3, [r3]
	cmp	r3, #12
	ble	.L179
	ldr	r3, .L207+36
	ldr	r3, [r3]
	cmp	r3, #496
	bge	.L205
.L179:
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L161
	ldr	r3, .L207+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L161
	ldr	r3, .L207+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L207+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L207+44
	mov	lr, pc
	bx	r3
	mov	r3, #2
	str	r3, [r5]
	b	.L161
.L202:
	bl	updateFisher
	bl	updateKoi
	ldr	r2, .L207+48
	ldr	r3, .L207+52
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #1
	beq	.L206
.L163:
	ldr	r6, .L207+56
	ldr	r2, [r6, #4]
	cmn	r2, #99
	blt	.L165
	ldr	r9, .L207+60
	mov	r8, #16
	mov	r7, r9
	ldr	r4, .L207+64
	ldr	fp, .L207+68
	add	r10, r4, #224
.L167:
	mov	r3, #16
	ldr	r1, [r6]
	stmib	sp, {r2, r8}
	str	r8, [sp, #12]
	str	r1, [sp]
	mov	r2, r3
	ldmda	r4, {r0, r1}
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	mvnne	r3, #99
	strne	r3, [r4, #-4]
	movne	r3, #512	@ movhi
	add	r4, r4, #56
	strhne	r3, [r7, #40]	@ movhi
	cmp	r4, r10
	ldr	r2, [r6, #4]
	add	r7, r7, #8
	bne	.L167
	ldr	r3, [r6]
	sub	r2, r2, #1
	ldr	r1, .L207+72
	lsl	r3, r3, #23
	cmp	r2, #0
	str	r2, [r6, #4]
	lsr	r3, r3, #23
	and	r2, r2, #255
	orr	r3, r3, r1
	orr	r2, r2, r1
	strh	r2, [r9, #72]	@ movhi
	mov	r0, #20
	mvnlt	r2, #99
	strh	r3, [r9, #74]	@ movhi
	movlt	r3, #512
	strh	r0, [r9, #76]	@ movhi
	strlt	r2, [r6, #44]
	strhlt	r3, [r9, #72]	@ movhi
.L165:
	ldr	r4, .L207+4
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L169
	ldr	r3, .L207+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L169
	bl	initializePause
	mov	r2, #3
	ldr	r3, .L207+76
	str	r2, [r3]
.L169:
	mov	r1, #15
	ldr	r3, .L207+80
	add	r0, r3, #840
.L171:
	ldr	r2, [r3, #44]
	add	r3, r3, #56
	cmp	r2, #0
	subeq	r1, r1, #1
	cmp	r3, r0
	bne	.L171
	cmp	r1, #0
	bne	.L162
	ldr	r8, .L207+12
	ldr	r7, .L207+16
	ldr	r6, .L207+20
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	mov	r3, #1
	ldrh	r2, [r4]
	tst	r2, #512
	str	r3, [r5]
	beq	.L173
	ldr	r3, .L207+8
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L173
	b	.L174
.L204:
	ldr	r3, .L207+84
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	b	.L177
.L206:
	bl	updateFalcons
	b	.L163
.L205:
	ldr	r3, .L207+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L207+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L207+44
	mov	lr, pc
	bx	r3
	mov	r3, #2
	str	r3, [r5]
	b	.L179
.L208:
	.align	2
.L207:
	.word	SCENE
	.word	oldButtons
	.word	buttons
	.word	hideSprites
	.word	initializeTravel
	.word	createGrassSprites
	.word	83886592
	.word	updateTravel
	.word	plantsCollected
	.word	player
	.word	initializeHome
	.word	createPondSprites
	.word	frameCount
	.word	1717986919
	.word	rock
	.word	shadowOAM
	.word	falcons+4
	.word	collision
	.word	-32768
	.word	GAMESTATE
	.word	koi
	.word	updateHomePond
	.size	updateGame, .-updateGame
	.comm	catchTime,4,4
	.comm	frameCount,4,4
	.comm	rock,56,4
	.comm	falcons,224,4
	.comm	fisher,56,4
	.comm	koi,840,4
	.comm	SCENE,4,4
	.comm	DIRECTION,4,4
	.comm	GAMESTATE,4,4
	.comm	NOTES,2,2
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	japanGarden,20,4
	.comm	player,56,4
	.comm	plantsCollected,4,4
	.comm	grassVoff,4,4
	.comm	grassHoff,4,4
	.comm	mtnVoff,4,4
	.comm	mtnHoff,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
