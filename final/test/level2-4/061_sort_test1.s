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
	.global bubblesort
	.type bubblesort , %function
bubblesort:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L17:                               	@ successors = .L21
	str r0, [fp, #-16]
	mov r4, #0
	str r4, [fp, #-12]
	b .L21
.L21:                               	@ predecessors = .L17, .L28                               	@ successors = .L25, .L26
	ldr r5, [fp, #-12]
	ldr r6, addr_0_n
	ldr r7, [r6]
	sub r8, r7, #1
	cmp r5, r8
	blt .L26
	b .L25
.L22:                               	@ predecessors = .L25
	mov r0, #0
	b .Lbubblesort_END
.L25:                               	@ predecessors = .L21                               	@ successors = .L22
	b .L22
.L26:                               	@ predecessors = .L21                               	@ successors = .L27
	mov r9, #0
	str r9, [fp, #-8]
	b .L27
.L27:                               	@ predecessors = .L26, .L34                               	@ successors = .L32, .L33
	ldr r10, [fp, #-8]
	ldr r4, addr_0_n
	ldr r6, [r4]
	ldr r7, [fp, #-12]
	sub r5, r6, r7
	sub r8, r5, #1
	cmp r10, r8
	blt .L33
	b .L32
.L28:                               	@ predecessors = .L32                               	@ successors = .L21
	ldr r9, [fp, #-12]
	add r4, r9, #1
	str r4, [fp, #-12]
	b .L21
.L32:                               	@ predecessors = .L27                               	@ successors = .L28
	b .L28
.L33:                               	@ predecessors = .L27                               	@ successors = .L43, .L44
	ldr r6, [fp, #-16]
	ldr r7, [fp, #-8]
	mov r5, #4
	mul r10, r7, r5
	add r8, r6, r10
	ldr r9, [r8]
	ldr r4, [fp, #-16]
	ldr r7, [fp, #-8]
	add r5, r7, #1
	mov r6, #4
	mul r10, r5, r6
	add r8, r4, r10
	ldr r7, [r8]
	cmp r9, r7
	bgt .L44
	b .L43
.L34:                               	@ predecessors = .L43, .L44                               	@ successors = .L27
	ldr r5, [fp, #-8]
	add r6, r5, #1
	str r6, [fp, #-8]
	b .L27
.L43:                               	@ predecessors = .L33                               	@ successors = .L34
	b .L34
.L44:                               	@ predecessors = .L33                               	@ successors = .L34
	ldr r4, [fp, #-16]
	ldr r10, [fp, #-8]
	add r8, r10, #1
	mov r9, #4
	mul r7, r8, r9
	add r5, r4, r7
	ldr r6, [r5]
	str r6, [fp, #-4]
	ldr r10, [fp, #-16]
	ldr r8, [fp, #-8]
	mov r9, #4
	mul r4, r8, r9
	add r7, r10, r4
	ldr r5, [r7]
	ldr r6, [fp, #-16]
	ldr r8, [fp, #-8]
	add r9, r8, #1
	mov r10, #4
	mul r4, r9, r10
	add r7, r6, r4
	str r5, [r7]
	ldr r8, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r10, [fp, #-8]
	mov r6, #4
	mul r4, r10, r6
	add r5, r9, r4
	str r8, [r5]
	b .L34
.Lbubblesort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L63:                               	@ successors = .L77
	mov r4, #10
	ldr r5, addr_0_n
	str r4, [r5]
	add r6, fp, #-48
	mov r7, r6
	mov r8, #4
	str r8, [r7]
	add r9, fp, #-48
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #3
	str r7, [r6]
	add r8, fp, #-48
	mov r10, #2
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #9
	str r6, [r5]
	add r7, fp, #-48
	mov r10, #3
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #2
	str r5, [r9]
	add r6, fp, #-48
	mov r10, #4
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #0
	str r9, [r8]
	add r5, fp, #-48
	mov r10, #5
	mov r4, #4
	mul r6, r10, r4
	add r7, r5, r6
	mov r8, #1
	str r8, [r7]
	add r9, fp, #-48
	mov r10, #6
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #6
	str r7, [r6]
	add r8, fp, #-48
	mov r10, #7
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #5
	str r6, [r5]
	add r7, fp, #-48
	mov r10, #8
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #7
	str r5, [r9]
	add r6, fp, #-48
	mov r10, #9
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #8
	str r9, [r8]
	add r5, fp, #-48
	mov r10, r5
	mov r0, r10
	bl bubblesort
	mov r4, r0
	str r4, [fp, #-8]
	b .L77
.L77:                               	@ predecessors = .L63, .L82                               	@ successors = .L81, .L82
	ldr r6, [fp, #-8]
	ldr r7, addr_0_n
	ldr r8, [r7]
	cmp r6, r8
	blt .L82
	b .L81
.L78:                               	@ predecessors = .L81
	mov r0, #0
	b .Lmain_END
.L81:                               	@ predecessors = .L77                               	@ successors = .L78
	b .L78
.L82:                               	@ predecessors = .L77                               	@ successors = .L77
	ldr r9, [fp, #-8]
	add r5, fp, #-48
	mov r10, #4
	mul r4, r9, r10
	add r7, r5, r4
	ldr r6, [r7]
	str r6, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putint
	mov r9, #10
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl putch
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	b .L77
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_n:
	.word n
