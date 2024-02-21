	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm	dp, 400, 4
	.global a
	.align 4
	.size a, 24
a:
	.word 10
	.word 1
	.word 50
	.word 50
	.word 20
	.word 5
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L20:                               	@ successors = .L27
	mov r4, #6
	str r4, [fp, #-24]
	mov r5, #3
	str r5, [fp, #-20]
	b .L27
.L27:                               	@ predecessors = .L20, .L34                               	@ successors = .L31, .L32
	ldr r6, [fp, #-20]
	ldr r7, [fp, #-24]
	cmp r6, r7
	ble .L32
	b .L31
.L28:                               	@ predecessors = .L31
	ldr r8, addr_0_dp
	mov r9, r8
	ldr r10, [fp, #-24]
	sub r4, r10, #1
	mov r5, #4
	mul r6, r4, r5
	add r7, r9, r6
	ldr r8, [r7]
	mov r0, r8
	bl putint
	mov r0, #0
	b .Lmain_END
.L31:                               	@ predecessors = .L27                               	@ successors = .L28
	b .L28
.L32:                               	@ predecessors = .L27                               	@ successors = .L33
	mov r10, #0
	str r10, [fp, #-16]
	b .L33
.L33:                               	@ predecessors = .L32, .L44                               	@ successors = .L38, .L39
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-24]
	ldr r9, [fp, #-20]
	sub r6, r5, r9
	add r7, r6, #1
	cmp r4, r7
	blt .L39
	b .L38
.L34:                               	@ predecessors = .L38                               	@ successors = .L27
	ldr r8, [fp, #-20]
	add r10, r8, #1
	str r10, [fp, #-20]
	b .L27
.L38:                               	@ predecessors = .L33                               	@ successors = .L34
	b .L34
.L39:                               	@ predecessors = .L33                               	@ successors = .L43
	ldr r5, [fp, #-16]
	ldr r9, [fp, #-20]
	add r6, r5, r9
	sub r4, r6, #1
	str r4, [fp, #-8]
	ldr r7, [fp, #-16]
	add r8, r7, #1
	str r8, [fp, #-12]
	b .L43
.L43:                               	@ predecessors = .L39, .L68                               	@ successors = .L47, .L48
	ldr r10, [fp, #-12]
	ldr r5, [fp, #-8]
	cmp r10, r5
	blt .L48
	b .L47
.L44:                               	@ predecessors = .L47                               	@ successors = .L33
	ldr r9, [fp, #-16]
	add r6, r9, #1
	str r6, [fp, #-16]
	b .L33
.L47:                               	@ predecessors = .L43                               	@ successors = .L44
	b .L44
.L48:                               	@ predecessors = .L43                               	@ successors = .L74, .L83
	ldr r4, [fp, #-16]
	ldr r7, addr_0_dp
	mov r8, #40
	mul r10, r4, r8
	add r5, r7, r10
	ldr r9, [fp, #-12]
	mov r6, #4
	mul r4, r9, r6
	add r8, r5, r4
	ldr r7, [r8]
	ldr r10, [fp, #-12]
	ldr r9, addr_0_dp
	mov r6, #40
	mul r5, r10, r6
	add r4, r9, r5
	ldr r8, [fp, #-8]
	mov r10, #4
	mul r6, r8, r10
	add r9, r4, r6
	ldr r5, [r9]
	add r8, r7, r5
	ldr r10, [fp, #-16]
	ldr r4, addr_0_a
	mov r6, #4
	mul r9, r10, r6
	add r7, r4, r9
	ldr r5, [r7]
	ldr r10, [fp, #-12]
	ldr r6, addr_0_a
	mov r4, #4
	mul r9, r10, r4
	add r7, r6, r9
	ldr r10, [r7]
	mul r4, r5, r10
	ldr r6, [fp, #-8]
	ldr r9, addr_0_a
	mov r7, #4
	mul r5, r6, r7
	add r10, r9, r5
	ldr r6, [r10]
	mul r7, r4, r6
	add r9, r8, r7
	str r9, [fp, #-4]
	ldr r5, [fp, #-16]
	ldr r10, addr_0_dp
	mov r4, #40
	mul r6, r5, r4
	add r8, r10, r6
	ldr r7, [fp, #-8]
	mov r9, #4
	mul r5, r7, r9
	add r4, r8, r5
	ldr r10, [r4]
	cmp r10, #0
	beq .L83
	b .L74
.L68:                               	@ predecessors = .L82, .L83                               	@ successors = .L43
	ldr r6, [fp, #-12]
	add r7, r6, #1
	str r7, [fp, #-12]
	b .L43
.L74:                               	@ predecessors = .L48                               	@ successors = .L75
	b .L75
.L75:                               	@ predecessors = .L74                               	@ successors = .L82, .L83
	ldr r9, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r5, addr_0_dp
	mov r4, #40
	mul r10, r8, r4
	add r6, r5, r10
	ldr r7, [fp, #-8]
	mov r8, #4
	mul r4, r7, r8
	add r5, r6, r4
	ldr r10, [r5]
	cmp r9, r10
	blt .L83
	b .L82
.L82:                               	@ predecessors = .L75                               	@ successors = .L68
	b .L68
.L83:                               	@ predecessors = .L48, .L75                               	@ successors = .L68
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-16]
	ldr r6, addr_0_dp
	mov r4, #40
	mul r5, r8, r4
	add r9, r6, r5
	ldr r10, [fp, #-8]
	mov r8, #4
	mul r4, r10, r8
	add r6, r9, r4
	str r7, [r6]
	b .L68
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_dp:
	.word dp
addr_0_a:
	.word a
