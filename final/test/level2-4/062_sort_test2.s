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
	.global insertsort
	.type insertsort , %function
insertsort:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L15:                               	@ successors = .L18
	str r0, [fp, #-16]
	mov r4, #1
	str r4, [fp, #-12]
	b .L18
.L18:                               	@ predecessors = .L15, .L32                               	@ successors = .L22, .L23
	ldr r5, [fp, #-12]
	ldr r6, addr_0_n
	ldr r7, [r6]
	cmp r5, r7
	blt .L23
	b .L22
.L19:                               	@ predecessors = .L22
	mov r0, #0
	b .Linsertsort_END
.L22:                               	@ predecessors = .L18                               	@ successors = .L19
	b .L19
.L23:                               	@ predecessors = .L18                               	@ successors = .L31
	ldr r8, [fp, #-16]
	ldr r9, [fp, #-12]
	mov r10, #4
	mul r4, r9, r10
	add r6, r8, r4
	ldr r5, [r6]
	str r5, [fp, #-8]
	ldr r7, [fp, #-12]
	sub r9, r7, #1
	str r9, [fp, #-4]
	b .L31
.L31:                               	@ predecessors = .L23, .L42                               	@ successors = .L34, .L35
	ldr r10, [fp, #-4]
	cmp r10, #-1
	bgt .L35
	b .L34
.L32:                               	@ predecessors = .L34, .L41                               	@ successors = .L18
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	add r5, r6, #1
	mov r7, #4
	mul r9, r5, r7
	add r10, r4, r9
	str r8, [r10]
	ldr r6, [fp, #-12]
	add r5, r6, #1
	str r5, [fp, #-12]
	b .L18
.L34:                               	@ predecessors = .L31                               	@ successors = .L32
	b .L32
.L35:                               	@ predecessors = .L31                               	@ successors = .L41, .L42
	ldr r7, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r9, [fp, #-4]
	mov r8, #4
	mul r10, r9, r8
	add r6, r4, r10
	ldr r5, [r6]
	cmp r7, r5
	blt .L42
	b .L41
.L41:                               	@ predecessors = .L35                               	@ successors = .L32
	b .L32
.L42:                               	@ predecessors = .L35                               	@ successors = .L31
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-4]
	mov r4, #4
	mul r10, r8, r4
	add r6, r9, r10
	ldr r7, [r6]
	ldr r5, [fp, #-16]
	ldr r8, [fp, #-4]
	add r4, r8, #1
	mov r9, #4
	mul r10, r4, r9
	add r6, r5, r10
	str r7, [r6]
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	str r4, [fp, #-4]
	b .L31
.Linsertsort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L56:                               	@ successors = .L70
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
	bl insertsort
	mov r4, r0
	str r4, [fp, #-8]
	b .L70
.L70:                               	@ predecessors = .L56, .L75                               	@ successors = .L74, .L75
	ldr r6, [fp, #-8]
	ldr r7, addr_0_n
	ldr r8, [r7]
	cmp r6, r8
	blt .L75
	b .L74
.L71:                               	@ predecessors = .L74
	mov r0, #0
	b .Lmain_END
.L74:                               	@ predecessors = .L70                               	@ successors = .L71
	b .L71
.L75:                               	@ predecessors = .L70                               	@ successors = .L70
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
	b .L70
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_n:
	.word n
