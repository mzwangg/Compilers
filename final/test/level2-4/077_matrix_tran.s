	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.global L
	.align 4
	.size L, 4
L:
	.word 0
	.global M
	.align 4
	.size M, 4
M:
	.word 0
	.text
	.global tran
	.type tran , %function
tran:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #20
.L24:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	str r3, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r6, #1
	mov r7, #4
	mul r8, r6, r7
	add r9, r5, r8
	ldr r10, [r9]
	ldr r4, [fp, #44]
	mov r6, #2
	mov r7, #4
	mul r5, r6, r7
	add r8, r4, r5
	str r10, [r8]
	ldr r9, [fp, #-16]
	mov r6, #2
	mov r7, #4
	mul r4, r6, r7
	add r5, r9, r4
	ldr r10, [r5]
	ldr r8, [fp, #48]
	mov r6, #1
	mov r7, #4
	mul r9, r6, r7
	add r4, r8, r9
	str r10, [r4]
	ldr r5, [fp, #-16]
	mov r6, r5
	ldr r7, [r6]
	ldr r8, [fp, #40]
	mov r9, #1
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	str r7, [r5]
	ldr r6, [fp, #-12]
	mov r9, r6
	ldr r10, [r9]
	ldr r8, [fp, #40]
	mov r4, #2
	mov r7, #4
	mul r5, r4, r7
	add r6, r8, r5
	str r10, [r6]
	ldr r9, [fp, #-20]
	mov r4, #1
	mov r7, #4
	mul r8, r4, r7
	add r5, r9, r8
	ldr r10, [r5]
	ldr r6, [fp, #44]
	mov r4, r6
	str r10, [r4]
	ldr r7, [fp, #-20]
	mov r9, #2
	mov r8, #4
	mul r5, r9, r8
	add r6, r7, r5
	ldr r10, [r6]
	ldr r4, [fp, #48]
	mov r9, r4
	str r10, [r9]
	ldr r8, [fp, #-16]
	mov r7, #1
	mov r5, #4
	mul r6, r7, r5
	add r4, r8, r6
	ldr r10, [r4]
	ldr r9, [fp, #44]
	mov r7, #1
	mov r5, #4
	mul r8, r7, r5
	add r6, r9, r8
	str r10, [r6]
	ldr r4, [fp, #-12]
	mov r7, #2
	mov r5, #4
	mul r9, r7, r5
	add r8, r4, r9
	ldr r10, [r8]
	ldr r6, [fp, #48]
	mov r7, #2
	mov r5, #4
	mul r4, r7, r5
	add r9, r6, r4
	str r10, [r9]
	ldr r8, [fp, #-20]
	mov r7, r8
	ldr r5, [r7]
	ldr r6, [fp, #40]
	mov r4, r6
	str r5, [r4]
	mov r0, #0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #140
.L80:                               	@ successors = .L91
	mov r4, #3
	ldr r5, addr_0_N
	str r4, [r5]
	mov r6, #3
	ldr r7, addr_0_M
	str r6, [r7]
	mov r8, #3
	ldr r9, addr_0_L
	str r8, [r9]
	mov r10, #0
	str r10, [fp, #-8]
	b .L91
.L91:                               	@ predecessors = .L80, .L96                               	@ successors = .L95, .L96
	ldr r4, [fp, #-8]
	ldr r5, addr_0_M
	ldr r6, [r5]
	cmp r4, r6
	blt .L96
	b .L95
.L92:                               	@ predecessors = .L95                               	@ successors = .L126
	add r7, fp, #-128
	mov r8, r7
	str r8, [fp, #-132]
	add r9, fp, #-116
	mov r10, r9
	str r10, [fp, #-136]
	add r5, fp, #-104
	mov r4, r5
	str r4, [fp, #-140]
	add r6, fp, #-92
	mov r7, r6
	add r8, fp, #-80
	mov r9, r8
	add r10, fp, #-68
	mov r5, r10
	add r4, fp, #-56
	mov r6, r4
	add r8, fp, #-32
	mov r10, r8
	add r4, fp, #-20
	mov r8, r4
	push {r8}
	push {r10}
	push {r6}
	push {r5}
	push {r9}
	mov r3, r7
	ldr r4, [fp, #-140]
	mov r2, r4
	ldr r8, [fp, #-136]
	mov r1, r8
	ldr r10, [fp, #-132]
	mov r0, r10
	bl tran
	add sp, sp, #20
	mov r6, r0
	str r6, [fp, #-8]
	b .L126
.L95:                               	@ predecessors = .L91                               	@ successors = .L92
	b .L92
.L96:                               	@ predecessors = .L91                               	@ successors = .L91
	ldr r5, [fp, #-8]
	ldr r9, [fp, #-8]
	add r7, fp, #-128
	mov r4, #4
	mul r8, r9, r4
	add r10, r7, r8
	str r5, [r10]
	ldr r6, [fp, #-8]
	ldr r9, [fp, #-8]
	add r4, fp, #-116
	mov r7, #4
	mul r8, r9, r7
	add r5, r4, r8
	str r6, [r5]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	add r7, fp, #-104
	mov r4, #4
	mul r8, r9, r4
	add r6, r7, r8
	str r10, [r6]
	ldr r5, [fp, #-8]
	ldr r9, [fp, #-8]
	add r4, fp, #-92
	mov r7, #4
	mul r8, r9, r7
	add r10, r4, r8
	str r5, [r10]
	ldr r6, [fp, #-8]
	ldr r9, [fp, #-8]
	add r7, fp, #-80
	mov r4, #4
	mul r8, r9, r4
	add r5, r7, r8
	str r6, [r5]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	add r4, fp, #-68
	mov r7, #4
	mul r8, r9, r7
	add r6, r4, r8
	str r10, [r6]
	ldr r5, [fp, #-8]
	add r9, r5, #1
	str r9, [fp, #-8]
	b .L91
.L126:                               	@ predecessors = .L92, .L131                               	@ successors = .L130, .L131
	ldr r7, [fp, #-8]
	ldr r4, addr_0_N
	ldr r8, [r4]
	cmp r7, r8
	blt .L131
	b .L130
.L127:                               	@ predecessors = .L130                               	@ successors = .L138
	mov r10, #10
	str r10, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	mov r5, #0
	str r5, [fp, #-8]
	b .L138
.L130:                               	@ predecessors = .L126                               	@ successors = .L127
	b .L127
.L131:                               	@ predecessors = .L126                               	@ successors = .L126
	ldr r9, [fp, #-8]
	add r4, fp, #-56
	mov r7, #4
	mul r8, r9, r7
	add r10, r4, r8
	ldr r6, [r10]
	str r6, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	ldr r9, [fp, #-8]
	add r7, r9, #1
	str r7, [fp, #-8]
	b .L126
.L138:                               	@ predecessors = .L127, .L143                               	@ successors = .L142, .L143
	ldr r4, [fp, #-8]
	ldr r8, addr_0_N
	ldr r10, [r8]
	cmp r4, r10
	blt .L143
	b .L142
.L139:                               	@ predecessors = .L142                               	@ successors = .L150
	mov r6, #10
	str r6, [fp, #-4]
	mov r5, #0
	str r5, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putch
	b .L150
.L142:                               	@ predecessors = .L138                               	@ successors = .L139
	b .L139
.L143:                               	@ predecessors = .L138                               	@ successors = .L138
	ldr r7, [fp, #-8]
	add r8, fp, #-32
	mov r4, #4
	mul r10, r7, r4
	add r6, r8, r10
	ldr r5, [r6]
	str r5, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L138
.L150:                               	@ predecessors = .L139, .L155                               	@ successors = .L154, .L155
	ldr r8, [fp, #-8]
	ldr r10, addr_0_N
	ldr r6, [r10]
	cmp r8, r6
	blt .L155
	b .L154
.L151:                               	@ predecessors = .L154
	mov r5, #10
	str r5, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putch
	mov r0, #0
	b .Lmain_END
.L154:                               	@ predecessors = .L150                               	@ successors = .L151
	b .L151
.L155:                               	@ predecessors = .L150                               	@ successors = .L150
	ldr r7, [fp, #-8]
	add r4, fp, #-20
	mov r10, #4
	mul r8, r7, r10
	add r6, r4, r8
	ldr r5, [r6]
	str r5, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putint
	ldr r7, [fp, #-8]
	add r10, r7, #1
	str r10, [fp, #-8]
	b .L150
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_N:
	.word N
addr_0_L:
	.word L
addr_0_M:
	.word M
