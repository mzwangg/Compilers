	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global lengthOfLastWord
	.type lengthOfLastWord , %function
lengthOfLastWord:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L18:                               	@ successors = .L23, .L24
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #0
	beq .L24
	b .L23
.L21:                               	@ predecessors = .L23                               	@ successors = .L27
	ldr r5, [fp, #-12]
	sub r6, r5, #1
	str r6, [fp, #-8]
	b .L27
.L23:                               	@ predecessors = .L18                               	@ successors = .L21
	b .L21
.L24:                               	@ predecessors = .L18
	mov r0, #0
	b .LlengthOfLastWord_END
.L27:                               	@ predecessors = .L21, .L37                               	@ successors = .L30, .L31
	ldr r7, [fp, #-8]
	cmp r7, #-1
	bgt .L31
	b .L30
.L28:                               	@ predecessors = .L30, .L36                               	@ successors = .L41, .L42
	ldr r8, [fp, #-8]
	cmp r8, #-1
	beq .L42
	b .L41
.L30:                               	@ predecessors = .L27                               	@ successors = .L28
	b .L28
.L31:                               	@ predecessors = .L27                               	@ successors = .L36, .L37
	ldr r9, [fp, #-16]
	ldr r10, [fp, #-8]
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	ldr r7, [r6]
	cmp r7, #0
	beq .L37
	b .L36
.L36:                               	@ predecessors = .L31                               	@ successors = .L28
	b .L28
.L37:                               	@ predecessors = .L31                               	@ successors = .L27
	ldr r8, [fp, #-8]
	sub r10, r8, #1
	str r10, [fp, #-8]
	b .L27
.L39:                               	@ predecessors = .L41                               	@ successors = .L45
	ldr r4, [fp, #-8]
	str r4, [fp, #-4]
	b .L45
.L41:                               	@ predecessors = .L28                               	@ successors = .L39
	b .L39
.L42:                               	@ predecessors = .L28
	mov r0, #0
	b .LlengthOfLastWord_END
.L45:                               	@ predecessors = .L39, .L50                               	@ successors = .L48, .L49
	ldr r9, [fp, #-4]
	cmp r9, #-1
	bgt .L49
	b .L48
.L46:                               	@ predecessors = .L48
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-4]
	sub r7, r5, r6
	mov r0, r7
	b .LlengthOfLastWord_END
.L48:                               	@ predecessors = .L45                               	@ successors = .L46
	b .L46
.L49:                               	@ predecessors = .L45                               	@ successors = .L55, .L56
	ldr r8, [fp, #-16]
	ldr r10, [fp, #-4]
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	ldr r6, [r5]
	cmp r6, #0
	beq .L56
	b .L55
.L50:                               	@ predecessors = .L55                               	@ successors = .L45
	ldr r7, [fp, #-4]
	sub r10, r7, #1
	str r10, [fp, #-4]
	b .L45
.L55:                               	@ predecessors = .L49                               	@ successors = .L50
	b .L50
.L56:                               	@ predecessors = .L49
	ldr r4, [fp, #-12]
	ldr r8, [fp, #-4]
	sub r9, r4, r8
	sub r5, r9, #1
	ldr r6, [fp, #-12]
	sub r7, r6, #1
	ldr r10, [fp, #-8]
	sub r4, r7, r10
	sub r8, r5, r4
	mov r0, r8
.LlengthOfLastWord_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L64:
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
	bl lengthOfLastWord
	mov r5, r0
	str r5, [fp, #-44]
	ldr r6, [fp, #-44]
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

