	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #132
.L65:                               	@ successors = .L97
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	b .L97
.L97:                               	@ predecessors = .L65, .L101                               	@ successors = .L100, .L101
	ldr r5, [fp, #-12]
	cmp r5, #5
	beq .L101
	b .L100
.L98:                               	@ predecessors = .L100
	mov r6, #0
	str r6, [fp, #-132]
	ldr r7, [fp, #-132]
	add r8, r7, #1
	str r8, [fp, #-128]
	ldr r9, [fp, #-128]
	add r10, r9, #1
	str r10, [fp, #-124]
	ldr r4, [fp, #-124]
	add r5, r4, #1
	str r5, [fp, #-120]
	ldr r6, [fp, #-120]
	add r7, r6, #1
	str r7, [fp, #-116]
	ldr r8, [fp, #-116]
	add r9, r8, #1
	str r9, [fp, #-112]
	ldr r10, [fp, #-112]
	add r4, r10, #1
	str r4, [fp, #-108]
	ldr r5, [fp, #-108]
	add r6, r5, #1
	str r6, [fp, #-104]
	ldr r7, [fp, #-104]
	add r8, r7, #1
	str r8, [fp, #-100]
	ldr r9, [fp, #-100]
	add r10, r9, #1
	str r10, [fp, #-96]
	ldr r4, [fp, #-96]
	add r5, r4, #1
	str r5, [fp, #-92]
	ldr r6, [fp, #-92]
	add r7, r6, #1
	str r7, [fp, #-88]
	ldr r8, [fp, #-88]
	add r9, r8, #1
	str r9, [fp, #-84]
	ldr r10, [fp, #-84]
	add r4, r10, #1
	str r4, [fp, #-80]
	ldr r5, [fp, #-80]
	add r6, r5, #1
	str r6, [fp, #-76]
	ldr r7, [fp, #-76]
	add r8, r7, #1
	str r8, [fp, #-72]
	ldr r9, [fp, #-72]
	add r10, r9, #1
	str r10, [fp, #-68]
	ldr r4, [fp, #-68]
	add r5, r4, #1
	str r5, [fp, #-64]
	ldr r6, [fp, #-64]
	add r7, r6, #1
	str r7, [fp, #-60]
	ldr r8, [fp, #-60]
	add r9, r8, #1
	str r9, [fp, #-56]
	ldr r10, [fp, #-56]
	add r4, r10, #1
	str r4, [fp, #-52]
	ldr r5, [fp, #-52]
	add r6, r5, #1
	str r6, [fp, #-48]
	ldr r7, [fp, #-48]
	add r8, r7, #1
	str r8, [fp, #-44]
	ldr r9, [fp, #-44]
	add r10, r9, #1
	str r10, [fp, #-40]
	ldr r4, [fp, #-40]
	add r5, r4, #1
	str r5, [fp, #-36]
	ldr r6, [fp, #-36]
	add r7, r6, #1
	str r7, [fp, #-32]
	ldr r8, [fp, #-32]
	add r9, r8, #1
	str r9, [fp, #-28]
	ldr r10, [fp, #-28]
	add r4, r10, #1
	str r4, [fp, #-24]
	ldr r5, [fp, #-24]
	add r6, r5, #1
	str r6, [fp, #-20]
	ldr r7, [fp, #-20]
	add r8, r7, #1
	str r8, [fp, #-16]
	ldr r9, [fp, #-132]
	mov r0, r9
	bl putint
	ldr r10, [fp, #-128]
	mov r0, r10
	bl putint
	ldr r4, [fp, #-124]
	mov r0, r4
	bl putint
	ldr r5, [fp, #-120]
	mov r0, r5
	bl putint
	ldr r6, [fp, #-116]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-112]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-108]
	mov r0, r8
	bl putint
	ldr r9, [fp, #-104]
	mov r0, r9
	bl putint
	ldr r10, [fp, #-100]
	mov r0, r10
	bl putint
	ldr r4, [fp, #-96]
	mov r0, r4
	bl putint
	ldr r5, [fp, #-92]
	mov r0, r5
	bl putint
	ldr r6, [fp, #-88]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-84]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-80]
	mov r0, r8
	bl putint
	ldr r9, [fp, #-76]
	mov r0, r9
	bl putint
	ldr r10, [fp, #-72]
	mov r0, r10
	bl putint
	ldr r4, [fp, #-68]
	mov r0, r4
	bl putint
	ldr r5, [fp, #-64]
	mov r0, r5
	bl putint
	ldr r6, [fp, #-60]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-56]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-52]
	mov r0, r8
	bl putint
	ldr r9, [fp, #-48]
	mov r0, r9
	bl putint
	ldr r10, [fp, #-44]
	mov r0, r10
	bl putint
	ldr r4, [fp, #-40]
	mov r0, r4
	bl putint
	ldr r5, [fp, #-36]
	mov r0, r5
	bl putint
	ldr r6, [fp, #-32]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-28]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-24]
	mov r0, r8
	bl putint
	ldr r9, [fp, #-20]
	mov r0, r9
	bl putint
	ldr r10, [fp, #-16]
	mov r0, r10
	bl putint
	mov r4, #10
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putch
	ldr r6, [fp, #-12]
	mov r0, r6
	bl putint
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putch
	ldr r8, [fp, #-32]
	mov r0, r8
	b .Lmain_END
.L100:                               	@ predecessors = .L97                               	@ successors = .L98
	b .L98
.L101:                               	@ predecessors = .L97                               	@ successors = .L97
	ldr r9, [fp, #-12]
	add r10, r9, #1
	str r10, [fp, #-12]
	b .L97
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_n:
	.word n
