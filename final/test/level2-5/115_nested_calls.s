	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func1
	.type func1 , %function
func1:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L58:                               	@ successors = .L64, .L65
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	beq .L65
	b .L64
.L62:
	b .Lfunc1_END
.L64:                               	@ predecessors = .L58                               	@ successors = .L68
	b .L68
.L65:                               	@ predecessors = .L58
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-8]
	mul r7, r5, r6
	mov r0, r7
	b .Lfunc1_END
.L68:                               	@ predecessors = .L64
	ldr r8, [fp, #-12]
	ldr r9, [fp, #-8]
	ldr r10, [fp, #-4]
	sub r4, r9, r10
	mov r2, #0
	mov r1, r4
	mov r0, r8
	bl func1
	mov r5, r0
	mov r0, r5
.Lfunc1_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global func2
	.type func2 , %function
func2:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L72:                               	@ successors = .L77, .L78
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	bne .L78
	b .L77
.L75:
	b .Lfunc2_END
.L77:                               	@ predecessors = .L72                               	@ successors = .L81
	b .L81
.L78:                               	@ predecessors = .L72
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-4]
	sdiv r7, r5, r6
	mul r8, r7, r6
	sub r9, r5, r8
	mov r1, #0
	mov r0, r9
	bl func2
	mov r10, r0
	mov r0, r10
	b .Lfunc2_END
.L81:                               	@ predecessors = .L77
	ldr r4, [fp, #-8]
	mov r0, r4
.Lfunc2_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global func3
	.type func3 , %function
func3:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L83:                               	@ successors = .L88, .L89
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	beq .L89
	b .L88
.L86:
	b .Lfunc3_END
.L88:                               	@ predecessors = .L83                               	@ successors = .L91
	b .L91
.L89:                               	@ predecessors = .L83
	ldr r5, [fp, #-8]
	add r6, r5, #1
	mov r0, r6
	b .Lfunc3_END
.L91:                               	@ predecessors = .L88
	ldr r7, [fp, #-8]
	ldr r8, [fp, #-4]
	add r9, r7, r8
	mov r1, #0
	mov r0, r9
	bl func3
	mov r10, r0
	mov r0, r10
.Lfunc3_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global func4
	.type func4 , %function
func4:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #12
.L94:                               	@ successors = .L100, .L101
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r4, [fp, #-12]
	cmp r4, #0
	bne .L101
	b .L100
.L98:
	b .Lfunc4_END
.L100:                               	@ predecessors = .L94                               	@ successors = .L103
	b .L103
.L101:                               	@ predecessors = .L94
	ldr r5, [fp, #-8]
	mov r0, r5
	b .Lfunc4_END
.L103:                               	@ predecessors = .L100
	ldr r6, [fp, #-4]
	mov r0, r6
.Lfunc4_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global func5
	.type func5 , %function
func5:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #4
.L105:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r5, #0
	sub r6, r5, r4
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global func6
	.type func6 , %function
func6:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #8
.L108:                               	@ successors = .L113, .L114
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #0
	bne .L114
	b .L113
.L111:
	b .Lfunc6_END
.L113:                               	@ predecessors = .L108                               	@ successors = .L118
	b .L118
.L114:                               	@ predecessors = .L108                               	@ successors = .L116, .L117
	ldr r5, [fp, #-4]
	cmp r5, #0
	bne .L117
	b .L116
.L116:                               	@ predecessors = .L114                               	@ successors = .L118
	b .L118
.L117:                               	@ predecessors = .L114
	mov r0, #1
	b .Lfunc6_END
.L118:                               	@ predecessors = .L113, .L116
	mov r0, #0
.Lfunc6_END:
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global func7
	.type func7 , %function
func7:
	push {r4, fp}
	mov fp, sp
	sub sp, sp, #4
.L119:                               	@ successors = .L123, .L124
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	beq .L124
	b .L123
.L121:
	b .Lfunc7_END
.L123:                               	@ predecessors = .L119                               	@ successors = .L125
	b .L125
.L124:                               	@ predecessors = .L119
	mov r0, #1
	b .Lfunc7_END
.L125:                               	@ predecessors = .L123
	mov r0, #0
.Lfunc7_END:
	mov sp, fp
	pop {r4, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #76
.L126:                               	@ successors = .L133
	bl getint
	mov r4, r0
	str r4, [fp, #-64]
	bl getint
	mov r5, r0
	str r5, [fp, #-60]
	bl getint
	mov r6, r0
	str r6, [fp, #-56]
	bl getint
	mov r7, r0
	str r7, [fp, #-52]
	mov r8, #0
	str r8, [fp, #-8]
	b .L133
.L133:                               	@ predecessors = .L126, .L137                               	@ successors = .L136, .L137
	ldr r9, [fp, #-8]
	cmp r9, #10
	blt .L137
	b .L136
.L134:                               	@ predecessors = .L136
	ldr r10, [fp, #-64]
	mov r0, r10
	bl func7
	mov r4, r0
	ldr r5, [fp, #-60]
	mov r0, r5
	bl func5
	mov r6, r0
	mov r1, r6
	mov r0, r4
	bl func6
	mov r7, r0
	ldr r8, [fp, #-56]
	mov r1, r8
	mov r0, r7
	bl func2
	mov r9, r0
	ldr r10, [fp, #-52]
	mov r1, r10
	mov r0, r9
	bl func3
	mov r5, r0
	mov r0, r5
	bl func5
	mov r6, r0
	str r6, [fp, #-68]
	add r4, fp, #-48
	mov r8, r4
	ldr r7, [r8]
	str r7, [fp, #-72]
	add r10, fp, #-48
	mov r9, #1
	mov r5, #4
	mul r6, r9, r5
	add r4, r10, r6
	ldr r8, [r4]
	mov r0, r8
	bl func5
	mov r7, r0
	add r9, fp, #-48
	mov r5, #2
	mov r10, #4
	mul r6, r5, r10
	add r4, r9, r6
	ldr r8, [r4]
	add r5, fp, #-48
	mov r10, #3
	mov r9, #4
	mul r6, r10, r9
	add r4, r5, r6
	ldr r10, [r4]
	mov r0, r10
	bl func7
	mov r9, r0
	mov r1, r9
	mov r0, r8
	bl func6
	mov r5, r0
	add r6, fp, #-48
	mov r4, #4
	mov r10, #4
	mul r9, r4, r10
	add r8, r6, r9
	ldr r4, [r8]
	add r10, fp, #-48
	mov r6, #5
	mov r9, #4
	mul r8, r6, r9
	add r6, r10, r8
	ldr r9, [r6]
	mov r0, r9
	bl func7
	mov r10, r0
	mov r1, r10
	mov r0, r4
	bl func2
	mov r8, r0
	mov r2, r8
	mov r1, r5
	mov r0, r7
	bl func4
	mov r6, r0
	add r9, fp, #-48
	mov r10, #6
	mov r4, #4
	mul r8, r10, r4
	add r5, r9, r8
	ldr r7, [r5]
	mov r1, r7
	mov r0, r6
	bl func3
	mov r10, r0
	add r4, fp, #-48
	mov r9, #7
	mov r8, #4
	mul r5, r9, r8
	add r7, r4, r5
	ldr r6, [r7]
	mov r1, r6
	mov r0, r10
	bl func2
	mov r9, r0
	add r8, fp, #-48
	mov r4, #8
	mov r5, #4
	mul r7, r4, r5
	add r6, r8, r7
	ldr r10, [r6]
	add r4, fp, #-48
	mov r5, #9
	mov r8, #4
	mul r7, r5, r8
	add r6, r4, r7
	ldr r5, [r6]
	mov r0, r5
	bl func7
	mov r8, r0
	mov r1, r8
	mov r0, r10
	bl func3
	mov r4, r0
	ldr r7, [fp, #-64]
	mov r2, r7
	mov r1, r4
	mov r0, r9
	bl func1
	mov r6, r0
	mov r2, r6
	ldr r5, [fp, #-72]
	mov r1, r5
	ldr r8, [fp, #-68]
	mov r0, r8
	bl func4
	mov r10, r0
	ldr r7, [fp, #-60]
	ldr r4, [fp, #-56]
	mov r0, r4
	bl func7
	mov r9, r0
	ldr r6, [fp, #-52]
	mov r1, r6
	mov r0, r9
	bl func3
	mov r5, r0
	mov r1, r5
	mov r0, r7
	bl func2
	mov r8, r0
	mov r1, r8
	mov r0, r10
	bl func3
	mov r4, r0
	add r6, fp, #-48
	mov r9, r6
	ldr r5, [r9]
	add r7, fp, #-48
	mov r8, #1
	mov r10, #4
	mul r6, r8, r10
	add r9, r7, r6
	ldr r8, [r9]
	mov r2, r8
	mov r1, r5
	mov r0, r4
	bl func1
	mov r10, r0
	add r7, fp, #-48
	mov r6, #2
	mov r9, #4
	mul r8, r6, r9
	add r5, r7, r8
	ldr r4, [r5]
	mov r1, r4
	mov r0, r10
	bl func2
	mov r6, r0
	str r6, [fp, #-76]
	add r9, fp, #-48
	mov r7, #3
	mov r8, #4
	mul r5, r7, r8
	add r4, r9, r5
	ldr r10, [r4]
	add r6, fp, #-48
	mov r7, #4
	mov r8, #4
	mul r9, r7, r8
	add r5, r6, r9
	ldr r4, [r5]
	add r7, fp, #-48
	mov r8, #5
	mov r6, #4
	mul r9, r8, r6
	add r5, r7, r9
	ldr r8, [r5]
	mov r0, r8
	bl func5
	mov r6, r0
	mov r1, r6
	mov r0, r4
	bl func3
	mov r7, r0
	add r9, fp, #-48
	mov r5, #6
	mov r8, #4
	mul r6, r5, r8
	add r4, r9, r6
	ldr r5, [r4]
	mov r0, r5
	bl func5
	mov r8, r0
	mov r1, r8
	mov r0, r7
	bl func2
	mov r9, r0
	add r6, fp, #-48
	mov r4, #7
	mov r5, #4
	mul r8, r4, r5
	add r7, r6, r8
	ldr r4, [r7]
	add r5, fp, #-48
	mov r6, #8
	mov r8, #4
	mul r7, r6, r8
	add r6, r5, r7
	ldr r8, [r6]
	mov r0, r8
	bl func7
	mov r5, r0
	mov r2, r5
	mov r1, r4
	mov r0, r9
	bl func1
	mov r7, r0
	add r6, fp, #-48
	mov r8, #9
	mov r5, #4
	mul r4, r8, r5
	add r9, r6, r4
	ldr r8, [r9]
	mov r0, r8
	bl func5
	mov r5, r0
	mov r1, r5
	mov r0, r7
	bl func2
	mov r6, r0
	ldr r4, [fp, #-64]
	mov r1, r4
	mov r0, r6
	bl func3
	mov r9, r0
	mov r2, r9
	mov r1, r10
	ldr r8, [fp, #-76]
	mov r0, r8
	bl func1
	mov r5, r0
	str r5, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	b .Lmain_END
.L136:                               	@ predecessors = .L133                               	@ successors = .L134
	b .L134
.L137:                               	@ predecessors = .L133                               	@ successors = .L133
	bl getint
	mov r4, r0
	ldr r6, [fp, #-8]
	add r9, fp, #-48
	mov r10, #4
	mul r8, r6, r10
	add r5, r9, r8
	str r4, [r5]
	ldr r7, [fp, #-8]
	add r6, r7, #1
	str r6, [fp, #-8]
	b .L133
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
.LiteralPool0:
