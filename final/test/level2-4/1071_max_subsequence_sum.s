	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global maxSubArray
	.type maxSubArray , %function
maxSubArray:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #20
.L9:                               	@ successors = .L14, .L15
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, [fp, #-16]
	cmp r4, #0
	beq .L15
	b .L14
.L12:                               	@ predecessors = .L14                               	@ successors = .L18, .L19
	ldr r5, [fp, #-16]
	cmp r5, #1
	beq .L19
	b .L18
.L14:                               	@ predecessors = .L9                               	@ successors = .L12
	b .L12
.L15:                               	@ predecessors = .L9
	mov r0, #0
	b .LmaxSubArray_END
.L16:                               	@ predecessors = .L18                               	@ successors = .L30
	ldr r6, [fp, #-20]
	mov r7, r6
	ldr r8, [r7]
	str r8, [fp, #-12]
	ldr r9, [fp, #-12]
	str r9, [fp, #-8]
	mov r10, #1
	str r10, [fp, #-4]
	b .L30
.L18:                               	@ predecessors = .L12                               	@ successors = .L16
	b .L16
.L19:                               	@ predecessors = .L12
	ldr r4, [fp, #-20]
	mov r5, r4
	ldr r6, [r5]
	mov r0, r6
	b .LmaxSubArray_END
.L30:                               	@ predecessors = .L16, .L45                               	@ successors = .L34, .L35
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-16]
	cmp r7, r8
	blt .L35
	b .L34
.L31:                               	@ predecessors = .L34
	ldr r9, [fp, #-8]
	mov r0, r9
	b .LmaxSubArray_END
.L34:                               	@ predecessors = .L30                               	@ successors = .L31
	b .L31
.L35:                               	@ predecessors = .L30                               	@ successors = .L38, .L39
	ldr r10, [fp, #-12]
	cmp r10, #0
	blt .L39
	b .L38
.L36:                               	@ predecessors = .L38, .L39                               	@ successors = .L48, .L49
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-20]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r8, r6, r7
	add r9, r5, r8
	ldr r10, [r9]
	add r6, r4, r10
	str r6, [fp, #-12]
	ldr r7, [fp, #-8]
	ldr r5, [fp, #-12]
	cmp r7, r5
	blt .L49
	b .L48
.L38:                               	@ predecessors = .L35                               	@ successors = .L36
	b .L36
.L39:                               	@ predecessors = .L35                               	@ successors = .L36
	mov r8, #0
	str r8, [fp, #-12]
	b .L36
.L45:                               	@ predecessors = .L48, .L49                               	@ successors = .L30
	ldr r9, [fp, #-4]
	add r4, r9, #1
	str r4, [fp, #-4]
	b .L30
.L48:                               	@ predecessors = .L36                               	@ successors = .L45
	b .L45
.L49:                               	@ predecessors = .L36                               	@ successors = .L45
	ldr r10, [fp, #-12]
	str r10, [fp, #-8]
	b .L45
.LmaxSubArray_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L53:
	add r4, fp, #-40
	mov r5, r4
	mov r6, #-4
	str r6, [r5]
	add r7, fp, #-40
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #3
	str r5, [r4]
	add r6, fp, #-40
	mov r8, #2
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #9
	str r4, [r10]
	add r5, fp, #-40
	mov r8, #3
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #-2
	str r10, [r7]
	add r4, fp, #-40
	mov r8, #4
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	add r10, fp, #-40
	mov r8, #5
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	mov r6, #1
	str r6, [r5]
	add r7, fp, #-40
	mov r8, #6
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #-6
	str r5, [r4]
	add r6, fp, #-40
	mov r8, #7
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #5
	str r4, [r10]
	add r5, fp, #-40
	mov r8, #8
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #7
	str r10, [r7]
	add r4, fp, #-40
	mov r8, #9
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #8
	str r7, [r6]
	mov r10, #10
	str r10, [fp, #-44]
	add r8, fp, #-40
	mov r9, r8
	ldr r4, [fp, #-44]
	mov r1, r4
	mov r0, r9
	bl maxSubArray
	mov r5, r0
	str r5, [fp, #-44]
	ldr r6, [fp, #-44]
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

