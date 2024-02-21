	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #408
.L8:                               	@ successors = .L12
	mov r4, #0
	str r4, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L12
.L12:                               	@ predecessors = .L8, .L15                               	@ successors = .L14, .L15
	bl getint
	mov r6, r0
	cmp r6, #0
	bne .L15
	b .L14
.L13:                               	@ predecessors = .L14                               	@ successors = .L19
	b .L19
.L14:                               	@ predecessors = .L12                               	@ successors = .L13
	b .L13
.L15:                               	@ predecessors = .L12                               	@ successors = .L12
	bl getint
	mov r7, r0
	ldr r8, [fp, #-8]
	ldr r9, =-408
	add r10, fp, r9
	mov r4, #4
	mul r5, r8, r4
	add r6, r10, r5
	str r7, [r6]
	ldr r9, [fp, #-8]
	add r8, r9, #1
	str r8, [fp, #-8]
	b .L12
.L19:                               	@ predecessors = .L13, .L23                               	@ successors = .L22, .L23
	ldr r4, [fp, #-8]
	cmp r4, #0
	bne .L23
	b .L22
.L20:                               	@ predecessors = .L22
	ldr r10, [fp, #-4]
	mov r5, #79
	sdiv r7, r10, r5
	mul r6, r7, r5
	sub r9, r10, r6
	mov r0, r9
	b .Lmain_END
.L22:                               	@ predecessors = .L19                               	@ successors = .L20
	b .L20
.L23:                               	@ predecessors = .L19                               	@ successors = .L19
	ldr r8, [fp, #-8]
	sub r4, r8, #1
	str r4, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r7, [fp, #-8]
	ldr r10, =-408
	add r6, fp, r10
	mov r9, #4
	mul r8, r7, r9
	add r4, r6, r8
	ldr r10, [r4]
	add r7, r5, r10
	str r7, [fp, #-4]
	b .L19
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

