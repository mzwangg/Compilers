	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global concat
	.type concat , %function
concat:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #20
.L15:                               	@ successors = .L20
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	mov r4, #0
	str r4, [fp, #-8]
	b .L20
.L20:                               	@ predecessors = .L15, .L24                               	@ successors = .L23, .L24
	ldr r5, [fp, #-8]
	cmp r5, #3
	blt .L24
	b .L23
.L21:                               	@ predecessors = .L23                               	@ successors = .L34
	mov r6, #0
	str r6, [fp, #-4]
	b .L34
.L23:                               	@ predecessors = .L20                               	@ successors = .L21
	b .L21
.L24:                               	@ predecessors = .L20                               	@ successors = .L20
	ldr r7, [fp, #-20]
	ldr r8, [fp, #-8]
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [r4]
	ldr r6, [fp, #-12]
	ldr r8, [fp, #-8]
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	str r5, [r10]
	ldr r4, [fp, #-8]
	add r8, r4, #1
	str r8, [fp, #-8]
	b .L20
.L34:                               	@ predecessors = .L21, .L38                               	@ successors = .L37, .L38
	ldr r9, [fp, #-4]
	cmp r9, #3
	blt .L38
	b .L37
.L35:                               	@ predecessors = .L37
	mov r0, #0
	b .Lconcat_END
.L37:                               	@ predecessors = .L34                               	@ successors = .L35
	b .L35
.L38:                               	@ predecessors = .L34                               	@ successors = .L34
	ldr r6, [fp, #-16]
	ldr r7, [fp, #-4]
	mov r5, #4
	mul r10, r7, r5
	add r4, r6, r10
	ldr r8, [r4]
	ldr r9, [fp, #-12]
	ldr r7, [fp, #-8]
	mov r5, #4
	mul r6, r7, r5
	add r10, r9, r6
	str r8, [r10]
	ldr r4, [fp, #-8]
	add r7, r4, #1
	str r7, [fp, #-8]
	ldr r5, [fp, #-4]
	add r9, r5, #1
	str r9, [fp, #-4]
	b .L34
.Lconcat_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #128
.L48:                               	@ successors = .L59
	mov r4, #0
	str r4, [fp, #-8]
	b .L59
.L59:                               	@ predecessors = .L48, .L63                               	@ successors = .L62, .L63
	ldr r5, [fp, #-8]
	cmp r5, #3
	blt .L63
	b .L62
.L60:                               	@ predecessors = .L62                               	@ successors = .L87
	add r6, fp, #-128
	mov r7, r6
	add r8, fp, #-92
	mov r9, r8
	add r10, fp, #-56
	mov r4, r10
	mov r2, r4
	mov r1, r9
	mov r0, r7
	bl concat
	mov r5, r0
	str r5, [fp, #-8]
	b .L87
.L62:                               	@ predecessors = .L59                               	@ successors = .L60
	b .L60
.L63:                               	@ predecessors = .L59                               	@ successors = .L59
	ldr r6, [fp, #-8]
	ldr r8, [fp, #-8]
	add r10, fp, #-128
	mov r4, #4
	mul r9, r8, r4
	add r7, r10, r9
	str r6, [r7]
	ldr r5, [fp, #-8]
	ldr r8, [fp, #-8]
	add r4, fp, #-116
	mov r10, #4
	mul r9, r8, r10
	add r6, r4, r9
	str r5, [r6]
	ldr r7, [fp, #-8]
	ldr r8, [fp, #-8]
	add r10, fp, #-104
	mov r4, #4
	mul r9, r8, r4
	add r5, r10, r9
	str r7, [r5]
	ldr r6, [fp, #-8]
	ldr r8, [fp, #-8]
	add r4, fp, #-92
	mov r10, #4
	mul r9, r8, r10
	add r7, r4, r9
	str r6, [r7]
	ldr r5, [fp, #-8]
	ldr r8, [fp, #-8]
	add r10, fp, #-80
	mov r4, #4
	mul r9, r8, r4
	add r6, r10, r9
	str r5, [r6]
	ldr r7, [fp, #-8]
	ldr r8, [fp, #-8]
	add r4, fp, #-68
	mov r10, #4
	mul r9, r8, r10
	add r5, r4, r9
	str r7, [r5]
	ldr r6, [fp, #-8]
	add r8, r6, #1
	str r8, [fp, #-8]
	b .L59
.L87:                               	@ predecessors = .L60, .L91                               	@ successors = .L90, .L91
	ldr r10, [fp, #-8]
	cmp r10, #6
	blt .L91
	b .L90
.L88:                               	@ predecessors = .L90
	mov r4, #10
	str r4, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putch
	mov r0, #0
	b .Lmain_END
.L90:                               	@ predecessors = .L87                               	@ successors = .L88
	b .L88
.L91:                               	@ predecessors = .L87                               	@ successors = .L87
	ldr r7, [fp, #-8]
	add r5, fp, #-56
	mov r6, #4
	mul r8, r7, r6
	add r10, r5, r8
	ldr r4, [r10]
	str r4, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putint
	ldr r7, [fp, #-8]
	add r6, r7, #1
	str r6, [fp, #-8]
	b .L87
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

