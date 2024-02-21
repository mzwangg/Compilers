	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #116
.L6:                               	@ successors = .L62
	add r4, fp, #-116
	mov r5, r4
	mov r6, r5
	mov r7, #1
	str r7, [r6]
	add r8, fp, #-116
	mov r9, r8
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #1
	str r7, [r6]
	add r8, fp, #-116
	mov r10, r8
	mov r4, #2
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #1
	str r7, [r6]
	add r8, fp, #-116
	mov r4, r8
	mov r9, #3
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #1
	str r7, [r6]
	add r8, fp, #-116
	mov r9, r8
	mov r10, #4
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #1
	str r7, [r6]
	add r8, fp, #-116
	mov r10, #1
	mov r4, #20
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, r5
	mov r7, #2
	str r7, [r6]
	add r10, fp, #-116
	mov r4, #1
	mov r8, #20
	mul r9, r4, r8
	add r5, r10, r9
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r8, r5, r4
	mov r10, #2
	str r10, [r8]
	add r9, fp, #-116
	mov r6, #1
	mov r7, #20
	mul r5, r6, r7
	add r4, r9, r5
	mov r8, #2
	mov r10, #4
	mul r6, r8, r10
	add r7, r4, r6
	mov r9, #2
	str r9, [r7]
	add r5, fp, #-116
	mov r8, #1
	mov r10, #20
	mul r4, r8, r10
	add r6, r5, r4
	mov r7, #3
	mov r9, #4
	mul r8, r7, r9
	add r10, r6, r8
	mov r5, #2
	str r5, [r10]
	add r4, fp, #-116
	mov r7, #1
	mov r9, #20
	mul r6, r7, r9
	add r8, r4, r6
	mov r10, #4
	mov r5, #4
	mul r7, r10, r5
	add r9, r8, r7
	mov r4, #2
	str r4, [r9]
	add r6, fp, #-116
	mov r10, #2
	mov r5, #20
	mul r8, r10, r5
	add r7, r6, r8
	mov r9, r7
	mov r4, #3
	str r4, [r9]
	add r10, fp, #-116
	mov r5, #2
	mov r6, #20
	mul r8, r5, r6
	add r7, r10, r8
	mov r9, #1
	mov r4, #4
	mul r5, r9, r4
	add r6, r7, r5
	mov r10, #3
	str r10, [r6]
	add r8, fp, #-116
	mov r9, #2
	mov r4, #20
	mul r7, r9, r4
	add r5, r8, r7
	mov r6, #2
	mov r10, #4
	mul r9, r6, r10
	add r4, r5, r9
	mov r8, #3
	str r8, [r4]
	add r7, fp, #-116
	mov r6, #2
	mov r10, #20
	mul r5, r6, r10
	add r9, r7, r5
	mov r4, #3
	mov r8, #4
	mul r6, r4, r8
	add r10, r9, r6
	mov r7, #3
	str r7, [r10]
	add r5, fp, #-116
	mov r4, #2
	mov r8, #20
	mul r9, r4, r8
	add r6, r5, r9
	mov r10, #4
	mov r7, #4
	mul r4, r10, r7
	add r8, r6, r4
	mov r5, #3
	str r5, [r8]
	add r9, fp, #-116
	mov r10, #3
	mov r7, #20
	mul r6, r10, r7
	add r4, r9, r6
	mov r8, r4
	mov r5, #4
	str r5, [r8]
	add r10, fp, #-116
	mov r7, #3
	mov r9, #20
	mul r6, r7, r9
	add r4, r10, r6
	mov r8, #1
	mov r5, #4
	mul r7, r8, r5
	add r9, r4, r7
	mov r10, #4
	str r10, [r9]
	add r6, fp, #-116
	mov r8, #3
	mov r5, #20
	mul r4, r8, r5
	add r7, r6, r4
	mov r9, #2
	mov r10, #4
	mul r8, r9, r10
	add r5, r7, r8
	mov r6, #4
	str r6, [r5]
	add r4, fp, #-116
	mov r9, #3
	mov r10, #20
	mul r7, r9, r10
	add r8, r4, r7
	mov r5, #3
	mov r6, #4
	mul r9, r5, r6
	add r10, r8, r9
	mov r4, #4
	str r4, [r10]
	add r7, fp, #-116
	mov r5, #3
	mov r6, #20
	mul r8, r5, r6
	add r9, r7, r8
	mov r10, #4
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #4
	str r7, [r6]
	add r8, fp, #-116
	mov r10, #4
	mov r4, #20
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, r5
	mov r7, #5
	str r7, [r6]
	add r10, fp, #-116
	mov r4, #4
	mov r8, #20
	mul r9, r4, r8
	add r5, r10, r9
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r8, r5, r4
	mov r10, #5
	str r10, [r8]
	add r9, fp, #-116
	mov r6, #4
	mov r7, #20
	mul r5, r6, r7
	add r4, r9, r5
	mov r8, #2
	mov r10, #4
	mul r6, r8, r10
	add r7, r4, r6
	mov r9, #5
	str r9, [r7]
	add r5, fp, #-116
	mov r8, #4
	mov r10, #20
	mul r4, r8, r10
	add r6, r5, r4
	mov r7, #3
	mov r9, #4
	mul r8, r7, r9
	add r10, r6, r8
	mov r5, #5
	str r5, [r10]
	add r4, fp, #-116
	mov r7, #4
	mov r9, #20
	mul r6, r7, r9
	add r8, r4, r6
	mov r10, #4
	mov r5, #4
	mul r7, r10, r5
	add r9, r8, r7
	mov r4, #5
	str r4, [r9]
	mov r6, #2
	str r6, [fp, #-16]
	mov r10, #3
	str r10, [fp, #-12]
	mov r5, #0
	str r5, [fp, #-4]
	b .L62
.L62:                               	@ predecessors = .L6, .L66                               	@ successors = .L65, .L66
	ldr r8, [fp, #-4]
	cmp r8, #5
	blt .L66
	b .L65
.L63:                               	@ predecessors = .L65
	add r7, fp, #-116
	mov r9, #2
	mov r4, #20
	mul r6, r9, r4
	add r10, r7, r6
	mov r5, r10
	ldr r8, [r5]
	mov r0, r8
	b .Lmain_END
.L65:                               	@ predecessors = .L62                               	@ successors = .L63
	b .L63
.L66:                               	@ predecessors = .L62                               	@ successors = .L62
	ldr r9, [fp, #-16]
	sub r4, r9, #1
	add r7, fp, #-116
	mov r6, #20
	mul r10, r4, r6
	add r5, r7, r10
	ldr r8, [fp, #-4]
	mov r9, #4
	mul r4, r8, r9
	add r6, r5, r4
	ldr r7, [r6]
	str r7, [fp, #-8]
	ldr r10, [fp, #-12]
	sub r8, r10, #1
	add r9, fp, #-116
	mov r5, #20
	mul r4, r8, r5
	add r6, r9, r4
	ldr r7, [fp, #-4]
	mov r10, #4
	mul r8, r7, r10
	add r5, r6, r8
	ldr r9, [r5]
	ldr r4, [fp, #-16]
	sub r7, r4, #1
	add r10, fp, #-116
	mov r6, #20
	mul r8, r7, r6
	add r5, r10, r8
	ldr r4, [fp, #-4]
	mov r7, #4
	mul r6, r4, r7
	add r10, r5, r6
	str r9, [r10]
	ldr r8, [fp, #-8]
	ldr r4, [fp, #-12]
	sub r7, r4, #1
	add r5, fp, #-116
	mov r6, #20
	mul r9, r7, r6
	add r10, r5, r9
	ldr r4, [fp, #-4]
	mov r7, #4
	mul r6, r4, r7
	add r5, r10, r6
	str r8, [r5]
	ldr r9, [fp, #-4]
	add r4, r9, #1
	str r4, [fp, #-4]
	b .L62
	b .LiteralPool0
.LTORG
.LiteralPool0:
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	b .LiteralPool1
.LTORG
.LiteralPool1:
