	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global gcd
	.type gcd , %function
gcd:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #24
.L9:                               	@ successors = .L21, .L22
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r4, [fp, #-24]
	str r4, [fp, #-16]
	ldr r4, [fp, #-20]
	str r4, [fp, #-12]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	cmp r4, r5
	blt .L22
	b .L21
.L18:                               	@ predecessors = .L21, .L22                               	@ successors = .L28
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L28
.L21:                               	@ predecessors = .L9                               	@ successors = .L18
	b .L18
.L22:                               	@ predecessors = .L9                               	@ successors = .L18
	ldr r4, [fp, #-24]
	str r4, [fp, #-8]
	ldr r4, [fp, #-20]
	str r4, [fp, #-24]
	ldr r4, [fp, #-8]
	str r4, [fp, #-20]
	b .L18
.L28:                               	@ predecessors = .L18, .L32                               	@ successors = .L31, .L32
	ldr r4, [fp, #-4]
	cmp r4, #0
	bne .L32
	b .L31
.L29:                               	@ predecessors = .L31
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	mul r6, r4, r5
	ldr r4, [fp, #-20]
	sdiv r5, r6, r4
	mov r0, r5
	b .Lgcd_END
.L31:                               	@ predecessors = .L28                               	@ successors = .L29
	b .L29
.L32:                               	@ predecessors = .L28                               	@ successors = .L28
	ldr r4, [fp, #-20]
	str r4, [fp, #-24]
	ldr r4, [fp, #-4]
	str r4, [fp, #-20]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-4]
	b .L28
.Lgcd_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L40:
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r1, r5
	mov r0, r4
	bl gcd
	mov r4, r0
	mov r0, r4
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr

addr_0_n:
	.word n
