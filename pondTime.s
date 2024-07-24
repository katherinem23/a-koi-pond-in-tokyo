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
	.file	"pondTime.c"
	.text
	.align	2
	.global	initializeHome
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeHome, %function
initializeHome:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L4
	ldr	r4, .L4+4
	mov	r1, r5
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #672
	mov	r0, #3
	ldr	r2, .L4+8
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	mov	r6, #67108864
	mov	r3, #4608
	ldr	r2, .L4+28
	ldr	r7, .L4+32
	strh	r3, [r6]	@ movhi
	mov	r0, #3
	strh	r2, [r6, #10]	@ movhi
	mov	r3, #16384
	ldr	r2, .L4+36
	ldr	r1, .L4+40
	mov	lr, pc
	bx	r4
	mov	r2, r7
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L4+44
	mov	lr, pc
	bx	r4
	mvn	lr, #32768
	mov	r3, #0
	mov	r1, #134
	ldr	ip, .L4+48
	ldr	r0, .L4+52
	add	r2, r5, #808
	add	r5, r5, #812
	strh	lr, [r7, #14]	@ movhi
	strh	r1, [r5]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	r3, [r6, #20]	@ movhi
	strh	r3, [r6, #22]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	shadowOAM
	.word	DMANow
	.word	100679680
	.word	pondSceneDraftTiles
	.word	100687872
	.word	pondSceneDraftMap
	.word	pondSceneDraftPal
	.word	3076
	.word	83886592
	.word	100728832
	.word	koiSpritedraftTiles
	.word	koiSpritedraftPal
	.word	16386
	.word	-32558
	.size	initializeHome, .-initializeHome
	.align	2
	.global	cursorMoveSprite
	.syntax unified
	.arm
	.fpu softvfp
	.type	cursorMoveSprite, %function
cursorMoveSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L33
	ldrh	r3, [r3]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L33+4
	tst	r3, #16
	ldr	ip, .L33+8
	ldr	r2, [r7]
	bne	.L8
	ldr	r1, [ip, r2, lsl #6]
	add	r1, r1, #1
	cmp	r1, #223
	str	r1, [ip, r2, lsl #6]
	movgt	r1, #223
	strgt	r1, [ip, r0, lsl #6]
.L8:
	ands	r1, r3, #32
	bne	.L11
	ldr	lr, [ip, r2, lsl #6]
	subs	lr, lr, #1
	movpl	r1, lr
	str	r1, [ip, r2, lsl #6]
.L11:
	add	r1, ip, r2, lsl #6
	ands	lr, r3, #64
	ldr	r4, [r1, #4]
	lsl	r9, r2, #6
	bne	.L14
	subs	r4, r4, #1
	strpl	r4, [r1, #4]
	bmi	.L32
.L14:
	tst	r3, #128
	beq	.L18
.L31:
	and	r8, r4, #255
.L19:
	ldr	r6, [ip, r2, lsl #6]
	ldr	r5, .L33+12
	lsl	lr, r6, #23
	add	r1, r2, #20
	lsr	lr, lr, #23
	add	r10, r5, r1, lsl #3
	orr	lr, lr, #16384
	lsl	r1, r1, #3
	cmp	r0, #2
	strh	lr, [r10, #2]	@ movhi
	strh	r8, [r5, r1]	@ movhi
	bgt	.L21
	ldr	r1, .L33+16
	and	r0, r1, r0, lsl #1
	strh	r0, [r10, #4]	@ movhi
.L22:
	ldr	r1, .L33+20
	ldrh	r1, [r1]
	tst	r1, #2
	beq	.L6
	tst	r3, #2
	bne	.L6
	cmp	r6, #100
	cmpgt	r4, #70
	bgt	.L25
	add	r3, ip, r9
	ldr	r3, [r3, #52]
	cmp	r3, #1
	bne	.L6
.L25:
	mov	r3, #1
	ldr	r1, .L33+24
	add	ip, ip, r9
	add	r2, r2, r3
	str	r2, [r7]
	str	r3, [ip, #56]
	str	r3, [r1]
.L6:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L18:
	add	r4, r4, #1
	cmp	r4, #143
	ble	.L16
	mov	r1, #143
	add	lr, ip, r9
	mov	r4, r1
	mov	r8, r1
	str	r1, [lr, #4]
	b	.L19
.L32:
	tst	r3, #128
	movne	r4, lr
	str	lr, [r1, #4]
	bne	.L31
	mov	r4, #1
.L16:
	add	r1, ip, r9
	str	r4, [r1, #4]
	b	.L31
.L21:
	cmp	r0, #3
	moveq	r1, #10
	ldrne	r1, .L33+16
	addne	r0, r0, #3
	andne	r0, r1, r0, lsl #1
	strheq	r1, [r10, #4]	@ movhi
	strhne	r0, [r10, #4]	@ movhi
	b	.L22
.L34:
	.align	2
.L33:
	.word	buttons
	.word	pondStuffCount
	.word	pondStuff
	.word	shadowOAM
	.word	1022
	.word	oldButtons
	.word	cursorMove
	.size	cursorMoveSprite, .-cursorMoveSprite
	.align	2
	.global	createSprite
	.syntax unified
	.arm
	.fpu softvfp
	.type	createSprite, %function
createSprite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	add	r2, r0, r0, lsl #2
	ldr	r6, .L43
	lsl	r2, r2, #2
	cmp	r0, #2
	mov	r4, r0
	ldr	r3, [r6]
	add	r2, r2, #10
	ble	.L41
	mov	r1, #25
	mov	r6, #1
	mov	lr, #10
	ldr	r5, .L43+4
	str	r2, [r5, r3, lsl #6]
	ldr	r2, [r5, r0, lsl #6]
	ldr	ip, .L43+8
	add	r0, r5, r3, lsl #6
	lsl	r2, r2, #23
	str	r1, [r0, #4]
	lsr	r2, r2, #23
	add	r1, r3, #20
	orr	r2, r2, #16384
	add	r7, ip, r1, lsl #3
	strh	r2, [r7, #2]	@ movhi
	add	r2, r5, r4, lsl #6
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	lsl	r1, r1, #3
	cmp	r4, #3
	strh	r2, [ip, r1]	@ movhi
	str	r6, [r0, #52]
	str	lr, [r0, #32]
	lsl	r3, r3, #6
	beq	.L42
	ldr	r2, .L43+12
	add	r0, r4, #3
	and	r0, r2, r0, lsl #1
	strh	r0, [r7, #4]	@ movhi
.L37:
	mov	r2, #0
	mov	r1, #1
	add	r3, r5, r3
	str	r1, [r3, #44]
	str	r2, [r3, #56]
	str	r2, [r3, #36]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L42:
	strh	lr, [r7, #4]	@ movhi
	b	.L37
.L41:
	mov	r0, #25
	ldr	r5, .L43+4
	add	r1, r5, r3, lsl #6
	ldr	r7, .L43+16
	str	r2, [r5, r3, lsl #6]
	str	r0, [r1, #4]
	mov	lr, pc
	bx	r7
	mov	r1, #0
	mov	r2, #1
	subs	r3, r1, r0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	ldr	r3, [r6]
	add	r3, r5, r3, lsl #6
	str	r1, [r3, #52]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r0, [r3, #24]
	mov	lr, pc
	bx	r7
	mov	ip, #20
	ldr	r2, .L43+20
	smull	r3, r2, r0, r2
	sub	r2, r2, r0, asr #31
	ldr	r3, [r6]
	ldr	r1, [r5, r4, lsl #6]
	add	r2, r2, r2, lsl #1
	sub	r2, r0, r2
	add	r0, r5, r4, lsl #6
	add	r7, r5, r3, lsl #6
	ldr	lr, .L43+8
	ldrb	r6, [r0, #4]	@ zero_extendqisi2
	lsl	r1, r1, #23
	ldr	r0, .L43+12
	str	r2, [r7, #36]
	lsr	r1, r1, #23
	add	r2, r3, ip
	str	ip, [r7, #32]
	orr	r1, r1, #16384
	add	ip, lr, r2, lsl #3
	and	r0, r0, r4, lsl #1
	lsl	r2, r2, #3
	strh	r1, [ip, #2]	@ movhi
	strh	r6, [lr, r2]	@ movhi
	strh	r0, [ip, #4]	@ movhi
	lsl	r3, r3, #6
	b	.L37
.L44:
	.align	2
.L43:
	.word	pondStuffCount
	.word	pondStuff
	.word	shadowOAM
	.word	1022
	.word	rand
	.word	1431655766
	.size	createSprite, .-createSprite
	.align	2
	.global	createMenuBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	createMenuBar, %function
createMenuBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #10
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L54
	mov	r7, r1
	mov	r2, r6
	mov	r3, #0
	mov	ip, #5
	ldr	r4, .L54+4
	add	r5, r4, #4
.L51:
	cmp	r3, #2
	orr	r0, r1, #16384
	lsl	lr, r3, #1
	str	r1, [r4, r3, lsl #6]
	strh	ip, [r2, #80]	@ movhi
	str	ip, [r5, r3, lsl #6]
	strh	r0, [r2, #82]	@ movhi
	strhle	lr, [r2, #84]	@ movhi
	ble	.L47
	cmp	r3, #3
	beq	.L53
	lsl	r0, r3, #1
	add	r0, r0, #6
	strh	r0, [r2, #84]	@ movhi
.L47:
	add	r3, r3, #1
	cmp	r3, #7
	add	r1, r1, #20
	add	r2, r2, #8
	bne	.L51
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L53:
	mov	r3, #4
	strh	r7, [r6, #108]	@ movhi
	add	r1, r1, #20
	add	r2, r2, #8
	b	.L51
.L55:
	.align	2
.L54:
	.word	shadowOAM
	.word	pondObjects
	.size	createMenuBar, .-createMenuBar
	.align	2
	.global	createPondSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	createPondSprites, %function
createPondSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	createMenuBar
	mov	r1, #5
	mov	r2, #10
	mov	r4, #12
	mov	r3, #0
	mov	lr, #1
	ldr	r0, .L58
	str	r2, [r0]
	str	r1, [r0, #4]
	ldr	r2, .L58+4
	ldr	r0, .L58+8
	strh	r1, [r2, #8]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	strh	r4, [r2, #12]	@ movhi
	ldr	ip, .L58+12
	ldr	r0, .L58+16
	ldr	r1, .L58+20
	ldr	r2, .L58+24
	str	lr, [ip]
	str	r3, [r0]
	str	r3, [r1]
	str	r3, [r2]
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	cursor
	.word	shadowOAM
	.word	16394
	.word	cursorMove
	.word	pondStuffCount
	.word	selectedSprite
	.word	frameCount
	.size	createPondSprites, .-createPondSprites
	.align	2
	.global	createCursor
	.syntax unified
	.arm
	.fpu softvfp
	.type	createCursor, %function
createCursor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #5
	mov	lr, #10
	mov	r0, #12
	ldr	r3, .L62
	ldr	r1, .L62+4
	ldr	ip, .L62+8
	str	lr, [r1]
	str	r2, [r1, #4]
	strh	r2, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L63:
	.align	2
.L62:
	.word	shadowOAM
	.word	cursor
	.word	16394
	.size	createCursor, .-createCursor
	.align	2
	.global	updateActiveKoi
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateActiveKoi, %function
updateActiveKoi:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L69
	push	{r4, r5, lr}
	ldr	lr, [r3]
	cmp	lr, #0
	ble	.L64
	ldr	r2, .L69+4
	ldr	r0, .L69+8
	ldr	r5, .L69+12
	ldr	r4, .L69+16
	add	lr, r2, lr, lsl #3
.L66:
	ldr	r3, [r0, #24]
	ldr	r1, [r0]
	lsl	r3, r3, #6
	ldrb	ip, [r0, #4]	@ zero_extendqisi2
	add	r3, r3, #1
	and	r1, r1, r5
	and	r3, r3, r4
	orr	r1, r1, #16384
	strh	r3, [r2, #164]	@ movhi
	strh	r1, [r2, #162]	@ movhi
	strh	ip, [r2, #160]	@ movhi
	add	r2, r2, #8
	cmp	lr, r2
	add	r0, r0, #64
	bne	.L66
.L64:
	pop	{r4, r5, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	pondStuffCount
	.word	shadowOAM
	.word	pondStuff
	.word	511
	.word	1023
	.size	updateActiveKoi, .-updateActiveKoi
	.align	2
	.global	animatePond
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePond, %function
animatePond:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r8, .L101
	ldr	r3, [r8]
	cmp	r3, #0
	ble	.L71
	mov	r6, #0
	ldr	r4, .L101+4
	ldr	r5, .L101+8
	ldr	r10, .L101+12
	ldr	r9, .L101+16
	ldr	r7, .L101+20
.L83:
	ldr	r3, [r4, #32]
	subs	r3, r3, #1
	moveq	r1, #20
	ldreq	r3, [r4, #36]
	addeq	r3, r3, #1
	smulleq	r0, r2, r10, r3
	subeq	r2, r2, r3, asr #31
	addeq	r2, r2, r2, lsl #1
	subeq	r3, r3, r2
	strne	r3, [r4, #32]
	streq	r3, [r4, #36]
	ldr	r3, [r4, #52]
	streq	r1, [r4, #32]
	cmp	r3, #0
	bne	.L75
	ldr	r2, [r4, #24]
	cmp	r2, #3
	ldrls	pc, [pc, r2, asl #2]
	b	.L99
.L78:
	.word	.L81
	.word	.L80
	.word	.L79
	.word	.L77
.L77:
	ldm	r4, {r0, r1, r3, ip}
	sub	r1, r1, ip
	sub	r3, r0, r3
	cmp	r3, #74
	cmpgt	r1, #59
	str	r1, [r4, #4]
	str	r3, [r4]
	bgt	.L82
.L100:
	mov	lr, pc
	bx	r7
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r2, r0, #3
	rsbpl	r2, r3, #0
	str	r2, [r4, #24]
.L99:
	ldr	r3, [r4]
	ldr	r1, [r4, #4]
.L82:
	ldr	ip, [r4, #36]
	ldr	r0, .L101+24
	and	r3, r3, r9
	add	r2, ip, r2, lsl #5
	orr	r3, r3, #16384
	and	r1, r1, #255
	and	r2, r0, r2, lsl #1
	strh	r3, [r5, #162]	@ movhi
	strh	r1, [r5, #160]	@ movhi
	strh	r2, [r5, #164]	@ movhi
.L75:
	ldr	r3, [r8]
	add	r6, r6, #1
	cmp	r3, r6
	add	r4, r4, #64
	add	r5, r5, #8
	bgt	.L83
.L71:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L81:
	ldm	r4, {r0, r1, r3, ip}
	add	r1, r1, ip
	add	r3, r0, r3
	cmp	r3, #230
	cmple	r1, #150
	str	r1, [r4, #4]
	str	r3, [r4]
	bgt	.L100
	b	.L82
.L79:
	ldr	r1, [r4]
	ldr	r3, [r4, #8]
	add	r3, r1, r3
	cmp	r3, #230
	movle	r0, #0
	movgt	r0, #1
	ldr	r1, [r4, #4]
	ldr	ip, [r4, #12]
	sub	r1, r1, ip
	cmp	r1, #59
	orrle	r0, r0, #1
	cmp	r0, #0
	str	r3, [r4]
	str	r1, [r4, #4]
	bne	.L100
	b	.L82
.L80:
	ldr	r1, [r4, #4]
	ldr	r3, [r4, #12]
	add	r1, r1, r3
	cmp	r1, #150
	movle	r0, #0
	movgt	r0, #1
	ldr	ip, [r4]
	ldr	r3, [r4, #8]
	sub	r3, ip, r3
	cmp	r3, #74
	orrle	r0, r0, #1
	cmp	r0, #0
	str	r1, [r4, #4]
	str	r3, [r4]
	bne	.L100
	b	.L82
.L102:
	.align	2
.L101:
	.word	pondStuffCount
	.word	pondStuff
	.word	shadowOAM
	.word	1431655766
	.word	511
	.word	rand
	.word	1022
	.size	animatePond, .-animatePond
	.align	2
	.global	updateHomePond
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHomePond, %function
updateHomePond:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L141
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L107
	ldr	r2, .L141+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L139
.L107:
	ldr	r1, .L141+8
	ldr	r0, .L141+12
	ldr	r2, [r1]
	ldr	r0, [r0]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r1]
	bne	.L105
.L106:
	tst	r3, #256
	beq	.L108
	ldr	r2, .L141+4
	ldrh	r2, [r2]
	ands	r5, r2, #256
	beq	.L140
.L108:
	ldr	r4, .L141+16
	ldr	r2, [r4]
	cmp	r2, #0
	and	r1, r3, #1
	beq	.L109
	ldr	r0, .L141+20
	tst	r3, #16
	ldr	r2, [r0]
	beq	.L110
	ldr	ip, .L141+4
	ldrh	ip, [ip]
	tst	ip, #16
	bne	.L110
	cmp	r2, #110
	bgt	.L110
	ldr	lr, .L141+24
	ldr	ip, [lr]
	add	r2, r2, #20
	add	ip, ip, #1
	str	r2, [r0]
	str	ip, [lr]
.L110:
	tst	r3, #32
	beq	.L111
	ldr	r3, .L141+4
	ldrh	r3, [r3]
	tst	r3, #32
	bne	.L111
	cmp	r2, #29
	ble	.L111
	ldr	ip, .L141+24
	ldr	r3, [ip]
	sub	r2, r2, #20
	sub	r3, r3, #1
	str	r2, [r0]
	str	r3, [ip]
.L111:
	lsl	r3, r2, #23
	ldrb	r0, [r0, #4]	@ zero_extendqisi2
	ldr	r2, .L141+28
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	cmp	r1, #0
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	beq	.L103
	ldr	r3, .L141+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L116
.L103:
	pop	{r4, r5, r6, lr}
	bx	lr
.L139:
	mov	r1, #1
	ldr	r3, .L141+32
	ldr	r2, .L141+12
	ldr	r0, .L141+36
	str	r1, [r2]
	ldrh	r2, [r3]
	ldr	r1, .L141+40
	ldrh	ip, [r3, #2]
	ldrh	r3, [r3, #4]
	strh	r2, [r0, #2]	@ movhi
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, .L141+44
	add	r1, r1, #692
	strh	ip, [r0, #-52]	@ movhi
	strh	r3, [r1, #10]	@ movhi
	strh	r3, [r2]	@ movhi
	ldr	r2, .L141+8
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
.L105:
	bl	animatePond
	ldrh	r3, [r4]
	b	.L106
.L109:
	cmp	r1, #0
	beq	.L115
	ldr	r3, .L141+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L116
.L115:
	ldr	r2, .L141+48
	ldr	r3, .L141+52
	ldr	r2, [r2]
	add	r3, r3, r2, lsl #6
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L103
	ldr	r3, .L141+24
	pop	{r4, r5, r6, lr}
	ldr	r0, [r3]
	b	cursorMoveSprite
.L140:
	ldr	r3, .L141+56
	mov	lr, pc
	bx	r3
	ldr	r2, .L141+60
	ldrh	r3, [r4]
	str	r5, [r2]
	b	.L108
.L116:
	mov	r3, #0
	ldr	r2, .L141+24
	ldr	r0, [r2]
	str	r3, [r4]
	bl	createSprite
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L103
	b	.L115
.L142:
	.align	2
.L141:
	.word	oldButtons
	.word	buttons
	.word	frameCount
	.word	animateP
	.word	cursorMove
	.word	cursor
	.word	selectedSprite
	.word	shadowOAM
	.word	100689152
	.word	100688708
	.word	100688396
	.word	100688452
	.word	pondStuffCount
	.word	pondStuff
	.word	initializeEnd
	.word	SCENE
	.size	updateHomePond, .-updateHomePond
	.comm	pondStuffCount,4,4
	.comm	selectedSprite,4,4
	.comm	cursorMove,4,4
	.comm	animateP,4,4
	.comm	SCENE,4,4
	.comm	DIRECTION,4,4
	.comm	GAMESTATE,4,4
	.comm	cursor,56,4
	.comm	plants,1120,4
	.comm	pondStuff,2560,4
	.comm	pondObjects,448,4
	.comm	catchTime,4,4
	.comm	frameCount,4,4
	.comm	rock,56,4
	.comm	falcons,224,4
	.comm	fisher,56,4
	.comm	koi,840,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
