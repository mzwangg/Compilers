	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global insert
	.type insert , %function
insert:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L14:                               	@ successors = .L19
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	mov r4, #0
	str r4, [fp, #-8]
	b .L19
.L19:                               	@ predecessors = .L14, .L31                               	@ successors = .L26, .L27
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-16]
	ldr r7, [fp, #-8]
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	ldr r4, [r10]
	cmp r5, r4
	bgt .L27
	b .L26
.L20:                               	@ predecessors = .L26, .L30                               	@ successors = .L34
	ldr r7, addr_0_N
	ldr r8, [r7]
	str r8, [fp, #-4]
	b .L34
.L26:                               	@ predecessors = .L19                               	@ successors = .L20
	b .L20
.L27:                               	@ predecessors = .L19                               	@ successors = .L30, .L31
	ldr r6, [fp, #-8]
	ldr r9, addr_0_N
	ldr r10, [r9]
	cmp r6, r10
	blt .L31
	b .L30
.L30:                               	@ predecessors = .L27                               	@ successors = .L20
	b .L20
.L31:                               	@ predecessors = .L27                               	@ successors = .L19
	ldr r5, [fp, #-8]
	add r4, r5, #1
	str r4, [fp, #-8]
	b .L19
.L34:                               	@ predecessors = .L20, .L39                               	@ successors = .L38, .L39
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-8]
	cmp r7, r8
	bgt .L39
	b .L38
.L35:                               	@ predecessors = .L38
	mov r0, #0
	b .Linsert_END
.L38:                               	@ predecessors = .L34                               	@ successors = .L35
	b .L35
.L39:                               	@ predecessors = .L34                               	@ successors = .L34
	ldr r9, [fp, #-16]
	ldr r6, [fp, #-4]
	sub r10, r6, #1
	mov r5, #4
	mul r4, r10, r5
	add r7, r9, r4
	ldr r8, [r7]
	ldr r6, [fp, #-16]
	ldr r10, [fp, #-4]
	mov r5, #4
	mul r9, r10, r5
	add r4, r6, r9
	str r8, [r4]
	ldr r7, [fp, #-12]
	ldr r10, [fp, #-16]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r9, r5, r6
	add r8, r10, r9
	str r7, [r8]
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	b .L34
.Linsert_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L52:                               	@ successors = .L68
	mov r4, #10
	ldr r5, addr_0_N
	str r4, [r5]
	add r6, fp, #-52
	mov r7, r6
	mov r8, #1
	str r8, [r7]
	add r9, fp, #-52
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #3
	str r7, [r6]
	add r8, fp, #-52
	mov r10, #2
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #4
	str r6, [r5]
	add r7, fp, #-52
	mov r10, #3
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #7
	str r5, [r9]
	add r6, fp, #-52
	mov r10, #4
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #8
	str r9, [r8]
	add r5, fp, #-52
	mov r10, #5
	mov r4, #4
	mul r6, r10, r4
	add r7, r5, r6
	mov r8, #11
	str r8, [r7]
	add r9, fp, #-52
	mov r10, #6
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #13
	str r7, [r6]
	add r8, fp, #-52
	mov r10, #7
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #18
	str r6, [r5]
	add r7, fp, #-52
	mov r10, #8
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #56
	str r5, [r9]
	add r6, fp, #-52
	mov r10, #9
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #78
	str r9, [r8]
	mov r5, #0
	str r5, [fp, #-4]
	bl getint
	mov r10, r0
	str r10, [fp, #-8]
	add r4, fp, #-52
	mov r6, r4
	ldr r7, [fp, #-8]
	mov r1, r7
	mov r0, r6
	bl insert
	mov r8, r0
	str r8, [fp, #-8]
	b .L68
.L68:                               	@ predecessors = .L52, .L73                               	@ successors = .L72, .L73
	ldr r9, [fp, #-4]
	ldr r5, addr_0_N
	ldr r10, [r5]
	cmp r9, r10
	blt .L73
	b .L72
.L69:                               	@ predecessors = .L72
	mov r0, #0
	b .Lmain_END
.L72:                               	@ predecessors = .L68                               	@ successors = .L69
	b .L69
.L73:                               	@ predecessors = .L68                               	@ successors = .L68
	ldr r4, [fp, #-4]
	add r7, fp, #-52
	mov r6, #4
	mul r8, r4, r6
	add r5, r7, r8
	ldr r9, [r5]
	str r9, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl putint
	mov r4, #10
	str r4, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r0, r6
	bl putch
	ldr r7, [fp, #-4]
	add r8, r7, #1
	str r8, [fp, #-4]
	b .L68
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_N:
	.word N
