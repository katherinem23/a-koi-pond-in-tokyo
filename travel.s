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
	.file	"travel.c"
	.text
	.align	2
	.global	createGrassSprites
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	createGrassSprites, %function
createGrassSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	mov	r2, #16
	mov	r0, #185
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r1
	ldr	r3, .L6
	ldr	r9, .L6+4
	str	r1, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	ldr	r4, .L6+8
	ldr	r7, .L6+12
	ldr	r6, .L6+16
	add	r5, r9, #960
.L2:
	mov	lr, pc
	bx	r4
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	rsb	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #5
	sub	r0, r0, r3
	add	r0, r0, #10
	str	r0, [r9]
	mov	lr, pc
	bx	r4
	smull	r3, r2, r6, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #5
	sub	r0, r0, r3
	add	r0, r0, #155
	str	r8, [r9, #36]
	str	r0, [r9, #4]
	mov	lr, pc
	bx	r4
	mov	r2, #30
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	str	r0, [r9, #52]
	str	r2, [r9, #32]
	add	r9, r9, #64
	cmp	r9, r5
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	player
	.word	plants
	.word	rand
	.word	555308903
	.word	1665926709
	.size	createGrassSprites, .-createGrassSprites
	.align	2
	.global	drawScene
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScene, %function
drawScene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r3, .L10
	ldrh	r1, [r3]
	ldr	r3, .L10+4
	push	{r4, lr}
	strh	r1, [r2, #16]	@ movhi
	ldrh	r1, [r3]
	ldr	r3, .L10+8
	strh	r1, [r2, #18]	@ movhi
	ldrh	r1, [r3]
	ldr	r3, .L10+12
	strh	r1, [r2, #20]	@ movhi
	ldrh	r1, [r3]
	ldr	r4, .L10+16
	strh	r1, [r2, #22]	@ movhi
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L10+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	grassHoff
	.word	grassVoff
	.word	mtnHoff
	.word	mtnVoff
	.word	DMANow
	.word	shadowOAM
	.size	drawScene, .-drawScene
	.align	2
	.global	updateTravel
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTravel, %function
updateTravel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L60
	ldr	r3, .L60+4
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	ldreq	r2, .L60+8
	ldreq	r3, [r2]
	addeq	r3, r3, #1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	streq	r3, [r2]
	ldr	r3, .L60+12
	ldrh	r3, [r3]
	ldr	r8, .L60+16
	tst	r3, #64
	ldr	r1, [r8, #4]
	sub	sp, sp, #20
	bne	.L14
	mov	r2, #3
	cmp	r1, #150
	subgt	r1, r1, #1
	str	r2, [r8, #24]
	strgt	r1, [r8, #4]
.L14:
	ands	r2, r3, #128
	bne	.L15
	ldr	r0, .L60+20
	cmp	r1, r0
	addle	r1, r1, #1
	str	r2, [r8, #24]
	strle	r1, [r8, #4]
.L15:
	tst	r3, #32
	ldr	r2, [r8]
	bne	.L16
	mov	r0, #1
	cmp	r2, #0
	subgt	r2, r2, #1
	str	r0, [r8, #24]
	strgt	r2, [r8]
.L16:
	tst	r3, #16
	ldr	r3, [r8, #16]
	bne	.L17
	mov	r0, #2
	rsb	ip, r3, #512
	cmp	ip, r2
	addgt	r2, r2, #1
	str	r0, [r8, #24]
	strgt	r2, [r8]
.L17:
	ldr	r0, [r8, #20]
	rsb	r3, r3, #240
	add	r3, r3, r3, lsr #31
	rsb	r0, r0, #160
	sub	r3, r2, r3, asr #1
	ldr	r10, .L60+24
	ldr	r9, .L60+28
	add	r0, r0, r0, lsr #31
	sub	r0, r1, r0, asr #1
	cmp	r3, #0
	str	r0, [r10]
	str	r3, [r9]
	blt	.L51
	cmp	r0, #0
	blt	.L52
	cmp	r3, #272
	movgt	r3, #272
	lslle	r3, r3, #16
	strgt	r3, [r9]
	lsrle	r3, r3, #16
.L19:
	cmp	r0, #190
	movgt	ip, #190
	movgt	r0, ip
	strgt	ip, [r10]
	ble	.L25
.L23:
	mov	lr, #22
	ldr	r4, .L60+32
	sub	r3, r2, r3
	ldr	ip, .L60+36
	and	r3, r3, r4
	mov	fp, r4
	sub	r0, r1, r0
	ldr	r4, .L60+40
	and	r0, r0, #255
	orr	r3, r3, #16384
	mov	r5, ip
	strh	r0, [ip]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	lr, [ip, #4]	@ movhi
	ldr	r7, .L60+44
	add	r6, r4, #960
	b	.L41
.L56:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L31
.L57:
	mov	r1, #31
	ldr	r2, .L60+48
	strh	r1, [r2, #4]	@ movhi
.L32:
	ldr	r1, [r9]
	ldr	r2, [r4, #4]
	sub	r0, r0, r1
	ldr	r1, [r10]
	sub	r2, r2, r1
	ldr	r1, [r4, #52]
	cmp	r1, #0
	moveq	r3, #10
	and	r0, r0, fp
	orr	r0, r0, #16384
	and	r2, r2, #255
	strh	r0, [r5, #10]	@ movhi
	strh	r2, [r5, #8]	@ movhi
	strheq	r3, [r5, #12]	@ movhi
	beq	.L39
	cmp	r1, #1
	moveq	r3, #14
	strheq	r3, [r5, #12]	@ movhi
	bne	.L53
.L39:
	add	r4, r4, #64
	cmp	r6, r4
	add	r5, r5, #8
	beq	.L54
.L41:
	ldrh	r3, [r7]
	tst	r3, #4
	ldr	r0, [r4]
	beq	.L27
	ldr	r3, .L60+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L55
.L27:
	cmp	r0, #0
	blt	.L39
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L56
	mov	r1, #30
	ldr	r3, [r4, #36]
	ldr	r2, .L60+52
	add	r3, r3, #1
	smull	ip, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	cmp	r3, #0
	str	r3, [r4, #36]
	str	r1, [r4, #32]
	beq	.L57
.L31:
	cmp	r3, #1
	bne	.L58
	ldr	r2, .L60+48
	ldr	r1, .L60+56
	strh	r1, [r2, #4]	@ movhi
	b	.L32
.L52:
	cmp	r3, #272
	mov	r0, #0
	movgt	r3, #272
	str	r0, [r10]
	strgt	r3, [r9]
	ble	.L20
.L25:
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	b	.L23
.L51:
	mov	r3, #0
	cmp	r0, r3
	str	r3, [r9]
	strlt	r3, [r10]
	bge	.L19
.L20:
	lsl	r3, r3, #16
	mov	r0, #0
	lsr	r3, r3, #16
	b	.L23
.L53:
	cmp	r1, #2
	bne	.L59
	lsl	r3, r3, #6
	add	r3, r3, #16
	lsl	r3, r3, #22
	add	r4, r4, #64
	lsr	r3, r3, #22
	cmp	r6, r4
	strh	r3, [r5, #12]	@ movhi
	add	r5, r5, #8
	bne	.L41
.L54:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	drawScene
.L58:
	cmp	r3, #2
	ldreq	r2, .L60+48
	ldreq	r1, .L60+60
	strheq	r1, [r2, #4]	@ movhi
	b	.L32
.L59:
	cmp	r1, #3
	bne	.L39
	lsl	r3, r3, #6
	add	r3, r3, #18
	lsl	r3, r3, #22
	lsr	r3, r3, #22
	strh	r3, [r5, #12]	@ movhi
	b	.L39
.L55:
	mov	r3, #15
	ldm	r8, {r1, ip}
	stm	sp, {r1, ip}
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	mov	r2, r3
	ldr	r1, [r4, #4]
	ldr	ip, .L60+64
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldreq	r0, [r4]
	beq	.L27
.L28:
	mov	r3, #67108864
	mov	r1, #21248
	mov	r0, #512
	mvn	r2, #0
	strh	r0, [r5, #8]	@ movhi
	strh	r1, [r3, #104]	@ movhi
	ldr	r1, .L60+68
	strh	r1, [r3, #108]	@ movhi
	ldr	r1, .L60+72
	ldr	r3, [r1]
	add	r3, r3, #1
	cmp	r3, #12
	str	r3, [r1]
	str	r2, [r4]
	moveq	r3, #1
	ldreq	r2, .L60+76
	streq	r3, [r2]
	b	.L39
.L61:
	.align	2
.L60:
	.word	frameCount
	.word	1717986919
	.word	mtnHoff
	.word	buttons
	.word	player
	.word	349
	.word	grassVoff
	.word	grassHoff
	.word	511
	.word	shadowOAM
	.word	plants
	.word	oldButtons
	.word	83886592
	.word	1431655766
	.word	32736
	.word	799
	.word	collision
	.word	-30878
	.word	plantsCollected
	.word	turnOrange
	.size	updateTravel, .-updateTravel
	.align	2
	.global	initializeTravel
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeTravel, %function
initializeTravel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r3, .L64
	mov	lr, pc
	bx	r3
	ldr	lr, .L64+4
	ldr	ip, .L64+8
	ldr	r4, .L64+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L64+16
	str	r5, [lr]
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #624
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L64+20
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L64+24
	ldr	r1, .L64+28
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+32
	mov	lr, pc
	bx	r4
	ldr	r6, .L64+36
	mov	r3, #368
	mov	r0, #3
	ldr	r2, .L64+40
	ldr	r1, .L64+44
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L64+48
	ldr	r1, .L64+52
	mov	lr, pc
	bx	r4
	mov	r2, r6
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L64+56
	mov	lr, pc
	bx	r4
	mvn	r1, #32768
	mov	r3, #67108864
	mov	lr, #4864
	mov	ip, #51712
	mov	r0, #20
	mov	r2, #50
	strh	r1, [r6, #14]	@ movhi
	ldr	r1, .L64+60
	strh	lr, [r3]	@ movhi
	ldr	r4, .L64+64
	strh	ip, [r3, #8]	@ movhi
	ldr	lr, .L64+68
	ldr	ip, .L64+72
	strh	r1, [r3, #10]	@ movhi
	ldr	r1, .L64+76
	ldr	r3, .L64+80
	str	r5, [r4]
	str	r5, [lr]
	str	r5, [ip]
	pop	{r4, r5, r6, lr}
	str	r0, [r1]
	str	r2, [r3]
	b	updateTravel
.L65:
	.align	2
.L64:
	.word	hideSprites
	.word	turnOrange
	.word	plantColor
	.word	DMANow
	.word	shadowOAM
	.word	transitionMapTiles
	.word	100683776
	.word	transitionMapMap
	.word	transitionMapPal
	.word	83886592
	.word	100696064
	.word	mtnBackgroundTiles
	.word	100714496
	.word	mtnBackgroundMap
	.word	koiSpritedraftPal
	.word	-9976
	.word	mtnHoff
	.word	plantsCollected
	.word	grassHoff
	.word	mtnVoff
	.word	grassVoff
	.size	initializeTravel, .-initializeTravel
	.align	2
	.global	updatePlants
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlants, %function
updatePlants:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L83
	mov	r10, #16
	ldr	r5, .L83+4
	ldr	r8, .L83+8
	ldr	r9, .L83+12
	ldr	fp, .L83+16
	sub	sp, sp, #20
	add	r7, r4, #960
	b	.L70
.L67:
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L68
	ldr	r3, [r4, #32]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #32]
	bne	.L69
	mov	r1, #10
	ldr	r3, [r4, #36]
	ldr	r2, .L83+20
	add	r3, r3, #1
	smull	r0, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	str	r3, [r4, #36]
	str	r1, [r4, #32]
.L69:
	ldr	r3, [r4]
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	and	r3, r3, r9
	orr	r3, r3, #16384
	strh	r10, [r5, #12]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	strh	r2, [r5, #8]	@ movhi
.L68:
	add	r4, r4, #64
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L82
.L70:
	ldrh	r3, [r8]
	tst	r3, #4
	beq	.L67
	ldr	r3, .L83+24
	ldrh	r3, [r3]
	ands	r6, r3, #4
	bne	.L67
	mov	r3, #15
	ldr	r0, [fp, #4]
	ldr	r1, [fp]
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r2, r3
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	ldm	r4, {r0, r1}
	ldr	ip, .L83+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L67
	mov	r3, #512
	str	r6, [r4, #44]
	add	r4, r4, #64
	cmp	r4, r7
	strh	r3, [r5, #8]	@ movhi
	add	r5, r5, #8
	bne	.L70
.L82:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	plants
	.word	shadowOAM
	.word	oldButtons
	.word	511
	.word	player
	.word	1431655766
	.word	buttons
	.word	collision
	.size	updatePlants, .-updatePlants
	.comm	plantColor,4,4
	.comm	plants,960,4
	.comm	turnOrange,4,4
	.comm	direction,4,4
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
	.comm	catchTime,4,4
	.comm	frameCount,4,4
	.comm	rock,56,4
	.comm	falcons,224,4
	.comm	fisher,56,4
	.comm	koi,840,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
