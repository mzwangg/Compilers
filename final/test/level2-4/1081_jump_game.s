	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global canJump
	.type canJump , %function
canJump:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #56
.L21:                               	@ successors = .L26, .L27
	str r0, [fp, #-56]
	str r1, [fp, #-52]
	ldr r4, [fp, #-52]
	cmp r4, #1
	beq .L27
	b .L26
.L24:                               	@ predecessors = .L26                               	@ successors = .L33, .L34
	ldr r5, [fp, #-56]
	mov r6, r5
	ldr r7, [r6]
	ldr r8, [fp, #-52]
	sub r9, r8, #2
	cmp r7, r9
	bgt .L34
	b .L33
.L26:                               	@ predecessors = .L21                               	@ successors = .L24
	b .L24
.L27:                               	@ predecessors = .L21
	mov r0, #1
	b .LcanJump_END
.L28:                               	@ predecessors = .L33                               	@ successors = .L37
	mov r10, #0
	str r10, [fp, #-8]
	b .L37
.L33:                               	@ predecessors = .L24                               	@ successors = .L28
	b .L28
.L34:                               	@ predecessors = .L24
	mov r0, #1
	b .LcanJump_END
.L37:                               	@ predecessors = .L28, .L42                               	@ successors = .L41, .L42
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-52]
	sub r6, r5, #1
	cmp r4, r6
	blt .L42
	b .L41
.L38:                               	@ predecessors = .L41                               	@ successors = .L49
	ldr r8, [fp, #-52]
	sub r7, r8, #1
	add r9, fp, #-48
	mov r10, #4
	mul r5, r7, r10
	add r4, r9, r5
	mov r6, #1
	str r6, [r4]
	ldr r8, [fp, #-52]
	sub r7, r8, #2
	str r7, [fp, #-8]
	b .L49
.L41:                               	@ predecessors = .L37                               	@ successors = .L38
	b .L38
.L42:                               	@ predecessors = .L37                               	@ successors = .L37
	ldr r10, [fp, #-8]
	add r9, fp, #-48
	mov r5, #4
	mul r4, r10, r5
	add r6, r9, r4
	mov r8, #0
	str r8, [r6]
	ldr r7, [fp, #-8]
	add r10, r7, #1
	str r10, [fp, #-8]
	b .L37
.L49:                               	@ predecessors = .L38, .L72                               	@ successors = .L52, .L53
	ldr r5, [fp, #-8]
	cmp r5, #-1
	bgt .L53
	b .L52
.L50:                               	@ predecessors = .L52
	add r9, fp, #-48
	mov r4, r9
	ldr r6, [r4]
	mov r0, r6
	b .LcanJump_END
.L52:                               	@ predecessors = .L49                               	@ successors = .L50
	b .L50
.L53:                               	@ predecessors = .L49                               	@ successors = .L62, .L63
	ldr r8, [fp, #-56]
	ldr r7, [fp, #-8]
	mov r10, #4
	mul r5, r7, r10
	add r9, r8, r5
	ldr r4, [r9]
	ldr r6, [fp, #-52]
	sub r7, r6, #1
	ldr r10, [fp, #-8]
	sub r8, r7, r10
	cmp r4, r8
	blt .L63
	b .L62
.L55:                               	@ predecessors = .L63, .L68                               	@ successors = .L71
	b .L71
.L62:                               	@ predecessors = .L53                               	@ successors = .L68
	b .L68
.L63:                               	@ predecessors = .L53                               	@ successors = .L55
	ldr r5, [fp, #-56]
	ldr r9, [fp, #-8]
	mov r6, #4
	mul r7, r9, r6
	add r10, r5, r7
	ldr r4, [r10]
	str r4, [fp, #-4]
	b .L55
.L68:                               	@ predecessors = .L62                               	@ successors = .L55
	ldr r8, [fp, #-52]
	sub r9, r8, #1
	ldr r6, [fp, #-8]
	sub r5, r9, r6
	str r5, [fp, #-4]
	b .L55
.L71:                               	@ predecessors = .L55, .L76                               	@ successors = .L74, .L75
	ldr r7, [fp, #-4]
	cmp r7, #-1
	bgt .L75
	b .L74
.L72:                               	@ predecessors = .L74                               	@ successors = .L49
	ldr r10, [fp, #-8]
	sub r4, r10, #1
	str r4, [fp, #-8]
	b .L49
.L74:                               	@ predecessors = .L71                               	@ successors = .L72
	b .L72
.L75:                               	@ predecessors = .L71                               	@ successors = .L81, .L82
	ldr r8, [fp, #-8]
	ldr r9, [fp, #-4]
	add r6, r8, r9
	add r5, fp, #-48
	mov r7, #4
	mul r10, r6, r7
	add r4, r5, r10
	ldr r8, [r4]
	cmp r8, #0
	bne .L82
	b .L81
.L76:                               	@ predecessors = .L81, .L82                               	@ successors = .L71
	ldr r9, [fp, #-4]
	sub r6, r9, #1
	str r6, [fp, #-4]
	b .L71
.L81:                               	@ predecessors = .L75                               	@ successors = .L76
	b .L76
.L82:                               	@ predecessors = .L75                               	@ successors = .L76
	ldr r7, [fp, #-8]
	add r5, fp, #-48
	mov r10, #4
	mul r4, r7, r10
	add r8, r5, r4
	mov r9, #1
	str r9, [r8]
	b .L76
.LcanJump_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #44
.L89:
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
	bl canJump
	mov r5, r0
	str r5, [fp, #-44]
	ldr r6, [fp, #-44]
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

