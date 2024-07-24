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
	.file	"main.c"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L12
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+8
	mov	r2, #1
	ldr	r1, [r3, #12]
	ldr	r0, [r3, #16]
	ldr	r3, .L12+12
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r4, .L12+16
	ldr	r3, .L12+20
	str	r2, [r4]
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+24
	mov	lr, pc
	bx	r3
	ldr	fp, .L12+28
	ldr	r5, .L12+32
	ldr	r10, .L12+36
	ldr	r9, .L12+40
	ldr	r8, .L12+44
	ldr	r7, .L12+48
	ldr	r6, .L12+52
.L9:
	ldrh	r3, [r5]
	strh	r3, [fp]	@ movhi
	ldr	r3, .L12+56
	ldrh	r2, [r3, #48]
	ldr	r3, [r10]
	strh	r2, [r5]	@ movhi
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L2
.L4:
	.word	.L8
	.word	.L7
	.word	.L6
	.word	.L5
	.word	.L3
.L3:
	ldr	r3, .L12+60
	mov	lr, pc
	bx	r3
.L2:
	mov	lr, pc
	bx	r9
	mov	r2, #117440512
	mov	r3, #512
	mov	r1, r7
	mov	r0, #3
	mov	lr, pc
	bx	r8
	ldr	r3, [r4]
	add	r3, r3, #1
	smull	r2, r1, r6, r3
	asr	r2, r3, #31
	add	r1, r1, r3
	rsb	r2, r2, r1, asr #5
	rsb	r2, r2, r2, lsl #4
	sub	r3, r3, r2, lsl #2
	str	r3, [r4]
	b	.L9
.L5:
	ldr	r3, .L12+64
	mov	lr, pc
	bx	r3
	b	.L2
.L6:
	ldr	r3, .L12+68
	mov	lr, pc
	bx	r3
	b	.L2
.L8:
	ldr	r3, .L12+72
	mov	lr, pc
	bx	r3
	b	.L2
.L7:
	ldr	r3, .L12+76
	mov	lr, pc
	bx	r3
	b	.L2
.L13:
	.align	2
.L12:
	.word	initializeMenu
	.word	setupSounds
	.word	japanGarden
	.word	playSong
	.word	frameCount
	.word	time
	.word	srand
	.word	oldButtons
	.word	buttons
	.word	GAMESTATE
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	-2004318071
	.word	67109120
	.word	waitOnEnd
	.word	waitOnPause
	.word	updateGame
	.word	waitOnMenu
	.word	waitOnInstructions
	.size	main, .-main
	.comm	buttons,2,2
	.comm	oldButtons,2,2
	.comm	shadowOAM,1024,4
	.comm	DIRECTION,4,4
	.comm	GAMESTATE,4,4
	.comm	NOTES,2,2
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	japanGarden,20,4
	.comm	catchTime,4,4
	.comm	frameCount,4,4
	.comm	rock,56,4
	.comm	falcons,224,4
	.comm	fisher,56,4
	.comm	koi,840,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
