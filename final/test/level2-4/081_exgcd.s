	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global exgcd
	.type exgcd , %function
exgcd:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L13:                               	@ successors = .L20, .L21
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	str r2, [fp, #-16]
	str r3, [fp, #-12]
	ldr r4, [fp, #-20]
	cmp r4, #0
	beq .L21
	b .L20
.L18:
	b .Lexgcd_END
.L20:                               	@ predecessors = .L13                               	@ successors = .L27
	b .L27
.L21:                               	@ predecessors = .L13
	ldr r5, [fp, #-16]
	mov r6, r5
	mov r7, #1
	str r7, [r6]
	ldr r8, [fp, #-12]
	mov r9, r8
	mov r10, #0
	str r10, [r9]
	ldr r4, [fp, #-24]
	mov r0, r4
	b .Lexgcd_END
.L27:                               	@ predecessors = .L20
	ldr r5, [fp, #-20]
	ldr r6, [fp, #-24]
	ldr r7, [fp, #-20]
	sdiv r8, r6, r7
	mul r9, r8, r7
	sub r10, r6, r9
	ldr r4, [fp, #-16]
	ldr r7, [fp, #-12]
	mov r3, r7
	mov r2, r4
	mov r1, r10
	mov r0, r5
	bl exgcd
	mov r8, r0
	str r8, [fp, #-8]
	ldr r6, [fp, #-16]
	mov r9, r6
	ldr r7, [r9]
	str r7, [fp, #-4]
	ldr r4, [fp, #-12]
	mov r10, r4
	ldr r5, [r10]
	ldr r8, [fp, #-16]
	mov r6, r8
	str r5, [r6]
	ldr r9, [fp, #-4]
	ldr r7, [fp, #-24]
	ldr r4, [fp, #-20]
	sdiv r10, r7, r4
	ldr r8, [fp, #-12]
	mov r5, r8
	ldr r6, [r5]
	mul r7, r10, r6
	sub r4, r9, r7
	ldr r8, [fp, #-12]
	mov r5, r8
	str r4, [r5]
	ldr r10, [fp, #-8]
	mov r0, r10
.Lexgcd_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L52:
	mov r4, #7
	str r4, [fp, #-16]
	mov r5, #15
	str r5, [fp, #-12]
	add r6, fp, #-8
	mov r7, r6
	mov r8, #1
	str r8, [r7]
	add r9, fp, #-4
	mov r10, r9
	mov r4, #1
	str r4, [r10]
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-12]
	add r7, fp, #-8
	mov r8, r7
	add r9, fp, #-4
	mov r10, r9
	mov r3, r10
	mov r2, r8
	mov r1, r6
	mov r0, r5
	bl exgcd
	mov r4, r0
	add r7, fp, #-8
	mov r9, r7
	ldr r10, [r9]
	ldr r8, [fp, #-12]
	sdiv r6, r10, r8
	mul r5, r6, r8
	sub r4, r10, r5
	ldr r7, [fp, #-12]
	add r9, r4, r7
	ldr r8, [fp, #-12]
	sdiv r6, r9, r8
	mul r10, r6, r8
	sub r5, r9, r10
	add r4, fp, #-8
	mov r7, r4
	str r5, [r7]
	add r8, fp, #-8
	mov r6, r8
	ldr r9, [r6]
	mov r0, r9
	bl putint
	mov r0, #0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

