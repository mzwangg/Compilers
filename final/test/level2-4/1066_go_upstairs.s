	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global climbStairs
	.type climbStairs , %function
climbStairs:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #48
.L8:                               	@ successors = .L12, .L13
	str r0, [fp, #-48]
	ldr r4, [fp, #-48]
	cmp r4, #4
	blt .L13
	b .L12
.L10:                               	@ predecessors = .L12                               	@ successors = .L20
	add r5, fp, #-44
	mov r6, r5
	mov r7, #0
	str r7, [r6]
	add r8, fp, #-44
	mov r9, #1
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #1
	str r6, [r5]
	add r7, fp, #-44
	mov r9, #2
	mov r10, #4
	mul r8, r9, r10
	add r4, r7, r8
	mov r5, #2
	str r5, [r4]
	mov r6, #3
	str r6, [fp, #-4]
	b .L20
.L12:                               	@ predecessors = .L8                               	@ successors = .L10
	b .L10
.L13:                               	@ predecessors = .L8
	ldr r9, [fp, #-48]
	mov r0, r9
	b .LclimbStairs_END
.L20:                               	@ predecessors = .L10, .L25                               	@ successors = .L24, .L25
	ldr r10, [fp, #-4]
	ldr r7, [fp, #-48]
	add r8, r7, #1
	cmp r10, r8
	blt .L25
	b .L24
.L21:                               	@ predecessors = .L24
	ldr r4, [fp, #-48]
	add r5, fp, #-44
	mov r6, #4
	mul r9, r4, r6
	add r7, r5, r9
	ldr r10, [r7]
	mov r0, r10
	b .LclimbStairs_END
.L24:                               	@ predecessors = .L20                               	@ successors = .L21
	b .L21
.L25:                               	@ predecessors = .L20                               	@ successors = .L20
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	add r6, fp, #-44
	mov r5, #4
	mul r9, r4, r5
	add r7, r6, r9
	ldr r10, [r7]
	ldr r8, [fp, #-4]
	sub r4, r8, #2
	add r5, fp, #-44
	mov r6, #4
	mul r9, r4, r6
	add r7, r5, r9
	ldr r8, [r7]
	add r4, r10, r8
	ldr r6, [fp, #-4]
	add r5, fp, #-44
	mov r9, #4
	mul r7, r6, r9
	add r10, r5, r7
	str r4, [r10]
	ldr r8, [fp, #-4]
	add r6, r8, #1
	str r6, [fp, #-4]
	b .L20
.LclimbStairs_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L38:
	mov r4, #5
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl climbStairs
	mov r6, r0
	str r6, [fp, #-8]
	ldr r7, [fp, #-8]
	mov r0, r7
	mov sp, fp
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

