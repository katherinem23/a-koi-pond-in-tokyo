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
	.file	"music.c"
	.text
	.align	2
	.global	setupSounds
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r3, #128
	str	lr, [sp, #-4]!
	mvn	lr, #170
	ldr	r0, .L4
	ldr	r1, .L4+4
	ldr	ip, [r0]
	ldr	r0, [r1]
	ldr	r1, .L4+8
	strh	r3, [r2, #132]	@ movhi
	strh	r1, [r2, #130]	@ movhi
	ldr	r3, .L4+12
	ldr	r1, .L4+16
	strh	lr, [r2, #128]	@ movhi
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	japaneseGarden_sampleRate
	.word	japaneseGarden_length
	.word	-1266
	.word	japanGarden
	.word	japaneseGarden_data
	.size	setupSounds, .-setupSounds
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSong
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSong, %function
playSong:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #910163968
	mov	r5, r1
	mov	r6, r0
	mov	r7, r2
	mov	r1, r0
	ldr	r2, .L8+8
	mov	r0, #1
	ldr	r4, .L8+12
	mov	lr, pc
	bx	r4
	mov	ip, #0
	mov	r2, #1
	mvn	r0, #1520
	mov	r1, #128
	ldr	r4, .L8+16
	ldr	r3, .L8+20
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	mov	r0, r5
	str	r5, [r4, #4]
	str	r2, [r4, #8]
	ldr	r3, .L8+24
	str	r6, [r4]
	str	r7, [r4, #12]
	mov	lr, pc
	bx	r3
	ldr	r5, .L8+28
	adr	r3, .L8
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L8+32
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r5
	ldr	r3, .L8+40
	mov	lr, pc
	bx	r3
	str	r0, [r4, #16]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	.align	3
.L8:
	.word	1443109011
	.word	1078844686
	.word	67109024
	.word	DMANow
	.word	soundA
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSong, .-playSong
	.comm	NOTES,2,2
	.comm	soundB,24,4
	.comm	soundA,24,4
	.comm	japanGarden,20,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
