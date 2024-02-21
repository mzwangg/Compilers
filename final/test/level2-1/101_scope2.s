	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global k
	.align 4
	.size k, 4
k:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L9:                               	@ successors = .L12, .L13
	ldr r4, =3389
	ldr r5, addr_0_k
	str r4, [r5]
	ldr r6, addr_0_k
	ldr r7, [r6]
	ldr r8, =10000
	cmp r7, r8
	blt .L13
	b .L12
.L10:                               	@ predecessors = .L12, .L17
	ldr r9, addr_0_k
	ldr r10, [r9]
	mov r0, r10
	b .Lmain_END
.L12:                               	@ predecessors = .L9                               	@ successors = .L10
	b .L10
.L13:                               	@ predecessors = .L9                               	@ successors = .L16
	ldr r4, addr_0_k
	ldr r5, [r4]
	add r6, r5, #1
	ldr r7, addr_0_k
	str r6, [r7]
	mov r8, #112
	str r8, [fp, #-16]
	b .L16
.L16:                               	@ predecessors = .L13, .L22                               	@ successors = .L19, .L20
	ldr r9, [fp, #-16]
	cmp r9, #10
	bgt .L20
	b .L19
.L17:                               	@ predecessors = .L19                               	@ successors = .L10
	ldr r10, [fp, #-16]
	mov r0, r10
	bl putint
	b .L10
.L19:                               	@ predecessors = .L16                               	@ successors = .L17
	b .L17
.L20:                               	@ predecessors = .L16                               	@ successors = .L24, .L25
	ldr r4, [fp, #-16]
	sub r5, r4, #88
	str r5, [fp, #-16]
	ldr r6, [fp, #-16]
	cmp r6, #1000
	blt .L25
	b .L24
.L22:                               	@ predecessors = .L24, .L25                               	@ successors = .L16
	b .L16
.L24:                               	@ predecessors = .L20                               	@ successors = .L22
	b .L22
.L25:                               	@ predecessors = .L20                               	@ successors = .L22
	mov r7, #9
	str r7, [fp, #-12]
	mov r8, #11
	str r8, [fp, #-8]
	mov r9, #10
	str r9, [fp, #-12]
	ldr r10, [fp, #-16]
	ldr r4, [fp, #-12]
	sub r5, r10, r4
	str r5, [fp, #-16]
	mov r6, #11
	str r6, [fp, #-4]
	ldr r7, [fp, #-16]
	ldr r8, [fp, #-4]
	add r9, r7, r8
	ldr r10, [fp, #-8]
	add r4, r9, r10
	str r4, [fp, #-16]
	b .L22
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_k:
	.word k
