	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global fsqrt
	.type fsqrt , %function
fsqrt:
	push {r4, r5, r6, r7, fp}
	mov fp, sp
	sub sp, sp, #12
.L9:                               	@ successors = .L14
	str r0, [fp, #-12]
	mov r4, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	mov r5, #2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	b .L14
.L14:                               	@ predecessors = .L9, .L19                               	@ successors = .L18, .L19
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	sub r6, r4, r5
	cmp r6, #0
	bne .L19
	b .L18
.L15:                               	@ predecessors = .L18
	ldr r4, [fp, #-4]
	mov r0, r4
	b .Lfsqrt_END
.L18:                               	@ predecessors = .L14                               	@ successors = .L15
	b .L15
.L19:                               	@ predecessors = .L14                               	@ successors = .L14
	ldr r4, [fp, #-4]
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-8]
	sdiv r7, r5, r6
	add r5, r4, r7
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r5, #2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	b .L14
.Lfsqrt_END:
	mov sp, fp
	pop {r4, r5, r6, r7, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L26:
	mov r4, #400
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl fsqrt
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r4, #10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	mov r0, #0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr

