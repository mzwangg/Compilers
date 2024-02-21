	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global ifWhile
	.type ifWhile , %function
ifWhile:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #8
.L8:                               	@ successors = .L13, .L14
	mov r4, #0
	str r4, [fp, #-8]
	mov r4, #3
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #5
	beq .L14
	b .L13
.L11:                               	@ predecessors = .L16, .L24
	ldr r4, [fp, #-4]
	mov r0, r4
	b .LifWhile_END
.L13:                               	@ predecessors = .L8                               	@ successors = .L22
	b .L22
.L14:                               	@ predecessors = .L8                               	@ successors = .L15
	b .L15
.L15:                               	@ predecessors = .L14, .L19                               	@ successors = .L18, .L19
	ldr r4, [fp, #-4]
	cmp r4, #2
	beq .L19
	b .L18
.L16:                               	@ predecessors = .L18                               	@ successors = .L11
	ldr r4, [fp, #-4]
	add r5, r4, #25
	str r5, [fp, #-4]
	b .L11
.L18:                               	@ predecessors = .L15                               	@ successors = .L16
	b .L16
.L19:                               	@ predecessors = .L15                               	@ successors = .L15
	ldr r4, [fp, #-4]
	add r5, r4, #2
	str r5, [fp, #-4]
	b .L15
.L22:                               	@ predecessors = .L13                               	@ successors = .L23
	b .L23
.L23:                               	@ predecessors = .L22, .L27                               	@ successors = .L26, .L27
	ldr r4, [fp, #-8]
	cmp r4, #5
	blt .L27
	b .L26
.L24:                               	@ predecessors = .L26                               	@ successors = .L11
	b .L11
.L26:                               	@ predecessors = .L23                               	@ successors = .L24
	b .L24
.L27:                               	@ predecessors = .L23                               	@ successors = .L23
	ldr r4, [fp, #-4]
	mov r5, #2
	mul r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L23
.LifWhile_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
.L31:
	bl ifWhile
	mov r4, r0
	mov r0, r4
	pop {r4, fp, lr}
	bx lr

