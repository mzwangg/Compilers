	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global uniquePaths
	.type uniquePaths , %function
uniquePaths:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #52
.L29:                               	@ successors = .L34, .L38
	str r0, [fp, #-52]
	str r1, [fp, #-48]
	ldr r4, [fp, #-52]
	cmp r4, #1
	beq .L38
	b .L34
.L32:                               	@ predecessors = .L37                               	@ successors = .L42
	mov r5, #0
	str r5, [fp, #-8]
	b .L42
.L34:                               	@ predecessors = .L29                               	@ successors = .L35
	b .L35
.L35:                               	@ predecessors = .L34                               	@ successors = .L37, .L38
	ldr r6, [fp, #-48]
	cmp r6, #1
	beq .L38
	b .L37
.L37:                               	@ predecessors = .L35                               	@ successors = .L32
	b .L32
.L38:                               	@ predecessors = .L29, .L35
	mov r0, #1
	b .LuniquePaths_END
.L42:                               	@ predecessors = .L32, .L47                               	@ successors = .L46, .L47
	ldr r7, [fp, #-8]
	ldr r8, [fp, #-52]
	cmp r7, r8
	blt .L47
	b .L46
.L43:                               	@ predecessors = .L46                               	@ successors = .L52
	mov r9, #0
	str r9, [fp, #-8]
	b .L52
.L46:                               	@ predecessors = .L42                               	@ successors = .L43
	b .L43
.L47:                               	@ predecessors = .L42                               	@ successors = .L42
	ldr r10, [fp, #-8]
	mov r4, #3
	mul r5, r10, r4
	ldr r6, [fp, #-48]
	add r7, r5, r6
	sub r8, r7, #1
	add r9, fp, #-44
	mov r10, #4
	mul r4, r8, r10
	add r5, r9, r4
	mov r6, #1
	str r6, [r5]
	ldr r7, [fp, #-8]
	add r8, r7, #1
	str r8, [fp, #-8]
	b .L42
.L52:                               	@ predecessors = .L43, .L57                               	@ successors = .L56, .L57
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-48]
	cmp r10, r9
	blt .L57
	b .L56
.L53:                               	@ predecessors = .L56                               	@ successors = .L63
	ldr r4, [fp, #-52]
	sub r5, r4, #2
	str r5, [fp, #-8]
	b .L63
.L56:                               	@ predecessors = .L52                               	@ successors = .L53
	b .L53
.L57:                               	@ predecessors = .L52                               	@ successors = .L52
	ldr r6, [fp, #-52]
	sub r7, r6, #1
	mov r8, #3
	mul r10, r7, r8
	ldr r9, [fp, #-8]
	add r4, r10, r9
	add r5, fp, #-44
	mov r6, #4
	mul r7, r4, r6
	add r8, r5, r7
	mov r10, #1
	str r10, [r8]
	ldr r9, [fp, #-8]
	add r4, r9, #1
	str r4, [fp, #-8]
	b .L52
.L63:                               	@ predecessors = .L53, .L70                               	@ successors = .L66, .L67
	ldr r6, [fp, #-8]
	cmp r6, #-1
	bgt .L67
	b .L66
.L64:                               	@ predecessors = .L66
	add r5, fp, #-44
	mov r7, r5
	ldr r8, [r7]
	mov r0, r8
	b .LuniquePaths_END
.L66:                               	@ predecessors = .L63                               	@ successors = .L64
	b .L64
.L67:                               	@ predecessors = .L63                               	@ successors = .L69
	ldr r10, [fp, #-48]
	sub r9, r10, #2
	str r9, [fp, #-4]
	b .L69
.L69:                               	@ predecessors = .L67, .L73                               	@ successors = .L72, .L73
	ldr r4, [fp, #-4]
	cmp r4, #-1
	bgt .L73
	b .L72
.L70:                               	@ predecessors = .L72                               	@ successors = .L63
	ldr r6, [fp, #-8]
	sub r5, r6, #1
	str r5, [fp, #-8]
	b .L63
.L72:                               	@ predecessors = .L69                               	@ successors = .L70
	b .L70
.L73:                               	@ predecessors = .L69                               	@ successors = .L69
	ldr r7, [fp, #-8]
	add r8, r7, #1
	mov r10, #3
	mul r9, r8, r10
	ldr r4, [fp, #-4]
	add r6, r9, r4
	add r5, fp, #-44
	mov r7, #4
	mul r8, r6, r7
	add r10, r5, r8
	ldr r9, [r10]
	ldr r4, [fp, #-8]
	mov r6, #3
	mul r7, r4, r6
	ldr r5, [fp, #-4]
	add r8, r7, r5
	add r10, r8, #1
	add r4, fp, #-44
	mov r6, #4
	mul r7, r10, r6
	add r5, r4, r7
	ldr r8, [r5]
	add r10, r9, r8
	ldr r6, [fp, #-8]
	mov r4, #3
	mul r7, r6, r4
	ldr r5, [fp, #-4]
	add r9, r7, r5
	add r8, fp, #-44
	mov r6, #4
	mul r4, r9, r6
	add r7, r8, r4
	str r10, [r7]
	ldr r5, [fp, #-4]
	sub r9, r5, #1
	str r9, [fp, #-4]
	b .L69
.LuniquePaths_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L89:
	mov r4, #3
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r1, r6
	mov r0, r5
	bl uniquePaths
	mov r7, r0
	str r7, [fp, #-8]
	ldr r8, [fp, #-8]
	mov r0, r8
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

