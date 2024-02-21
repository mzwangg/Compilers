	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global maxArea
	.type maxArea , %function
maxArea:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #24
.L13:                               	@ successors = .L20
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	mov r4, #0
	str r4, [fp, #-16]
	ldr r5, [fp, #-20]
	sub r6, r5, #1
	str r6, [fp, #-12]
	mov r7, #-1
	str r7, [fp, #-8]
	b .L20
.L20:                               	@ predecessors = .L13, .L57                               	@ successors = .L24, .L25
	ldr r8, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r8, r9
	blt .L25
	b .L24
.L21:                               	@ predecessors = .L24
	ldr r10, [fp, #-8]
	mov r0, r10
	b .LmaxArea_END
.L24:                               	@ predecessors = .L20                               	@ successors = .L21
	b .L21
.L25:                               	@ predecessors = .L20                               	@ successors = .L36, .L37
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-16]
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	ldr r9, [r8]
	ldr r10, [fp, #-24]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r4, r5, r6
	add r7, r10, r4
	ldr r8, [r7]
	cmp r9, r8
	blt .L37
	b .L36
.L27:                               	@ predecessors = .L37, .L44                               	@ successors = .L54, .L55
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	cmp r5, r6
	bgt .L55
	b .L54
.L36:                               	@ predecessors = .L25                               	@ successors = .L44
	b .L44
.L37:                               	@ predecessors = .L25                               	@ successors = .L27
	ldr r10, [fp, #-12]
	ldr r4, [fp, #-16]
	sub r7, r10, r4
	ldr r9, [fp, #-24]
	ldr r8, [fp, #-16]
	mov r5, #4
	mul r6, r8, r5
	add r10, r9, r6
	ldr r4, [r10]
	mul r8, r7, r4
	str r8, [fp, #-4]
	b .L27
.L44:                               	@ predecessors = .L36                               	@ successors = .L27
	ldr r5, [fp, #-12]
	ldr r9, [fp, #-16]
	sub r6, r5, r9
	ldr r10, [fp, #-24]
	ldr r7, [fp, #-12]
	mov r4, #4
	mul r8, r7, r4
	add r5, r10, r8
	ldr r9, [r5]
	mul r7, r6, r9
	str r7, [fp, #-4]
	b .L27
.L51:                               	@ predecessors = .L54, .L55                               	@ successors = .L66, .L67
	ldr r4, [fp, #-24]
	ldr r10, [fp, #-16]
	mov r8, #4
	mul r5, r10, r8
	add r6, r4, r5
	ldr r9, [r6]
	ldr r7, [fp, #-24]
	ldr r10, [fp, #-12]
	mov r8, #4
	mul r4, r10, r8
	add r5, r7, r4
	ldr r6, [r5]
	cmp r9, r6
	bgt .L67
	b .L66
.L54:                               	@ predecessors = .L27                               	@ successors = .L51
	b .L51
.L55:                               	@ predecessors = .L27                               	@ successors = .L51
	ldr r10, [fp, #-4]
	str r10, [fp, #-8]
	b .L51
.L57:                               	@ predecessors = .L67, .L69                               	@ successors = .L20
	b .L20
.L66:                               	@ predecessors = .L51                               	@ successors = .L69
	b .L69
.L67:                               	@ predecessors = .L51                               	@ successors = .L57
	ldr r8, [fp, #-12]
	sub r7, r8, #1
	str r7, [fp, #-12]
	b .L57
.L69:                               	@ predecessors = .L66                               	@ successors = .L57
	ldr r4, [fp, #-16]
	add r5, r4, #1
	str r5, [fp, #-16]
	b .L57
.LmaxArea_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L72:
	add r4, fp, #-40
	mov r5, r4
	mov r6, #3
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
	mov r10, #0
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
	mov r5, #1
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
	bl maxArea
	mov r5, r0
	str r5, [fp, #-44]
	ldr r6, [fp, #-44]
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

