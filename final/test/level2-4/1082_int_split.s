	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global newline
	.align 4
	.size newline, 4
newline:
	.word 0
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global split
	.type split , %function
split:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #12
.L11:                               	@ successors = .L16
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	ldr r4, addr_0_N
	ldr r5, [r4]
	sub r6, r5, #1
	str r6, [fp, #-4]
	b .L16
.L16:                               	@ predecessors = .L11, .L20                               	@ successors = .L19, .L20
	ldr r7, [fp, #-4]
	cmp r7, #-1
	bne .L20
	b .L19
.L17:                               	@ predecessors = .L19
	mov r0, #0
	b .Lsplit_END
.L19:                               	@ predecessors = .L16                               	@ successors = .L17
	b .L17
.L20:                               	@ predecessors = .L16                               	@ successors = .L16
	ldr r8, [fp, #-12]
	mov r9, #10
	sdiv r10, r8, r9
	mul r4, r10, r9
	sub r5, r8, r4
	ldr r6, [fp, #-8]
	ldr r7, [fp, #-4]
	mov r9, #4
	mul r10, r7, r9
	add r8, r6, r10
	str r5, [r8]
	ldr r4, [fp, #-12]
	mov r7, #10
	sdiv r9, r4, r7
	str r9, [fp, #-12]
	ldr r6, [fp, #-4]
	sub r10, r6, #1
	str r10, [fp, #-4]
	b .L16
.Lsplit_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L27:                               	@ successors = .L34
	mov r4, #4
	ldr r5, addr_0_N
	str r4, [r5]
	mov r6, #10
	ldr r7, addr_0_newline
	str r6, [r7]
	ldr r8, =1478
	str r8, [fp, #-24]
	ldr r9, [fp, #-24]
	add r10, fp, #-20
	mov r4, r10
	mov r1, r4
	mov r0, r9
	bl split
	mov r5, r0
	str r5, [fp, #-24]
	mov r6, #0
	str r6, [fp, #-28]
	b .L34
.L34:                               	@ predecessors = .L27, .L38                               	@ successors = .L37, .L38
	ldr r7, [fp, #-28]
	cmp r7, #4
	blt .L38
	b .L37
.L35:                               	@ predecessors = .L37
	mov r0, #0
	b .Lmain_END
.L37:                               	@ predecessors = .L34                               	@ successors = .L35
	b .L35
.L38:                               	@ predecessors = .L34                               	@ successors = .L34
	ldr r8, [fp, #-28]
	add r10, fp, #-20
	mov r4, #4
	mul r9, r8, r4
	add r5, r10, r9
	ldr r6, [r5]
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putint
	ldr r8, addr_0_newline
	ldr r4, [r8]
	mov r0, r4
	bl putch
	ldr r10, [fp, #-28]
	add r9, r10, #1
	str r9, [fp, #-28]
	b .L34
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_newline:
	.word newline
addr_0_N:
	.word N
