	.arch armv8-a
	.arch_extension crc
	.arm
	.data
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
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global sub
	.type sub , %function
sub:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #20
.L29:                               	@ successors = .L40
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	str r3, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	b .L40
.L40:                               	@ predecessors = .L29, .L44                               	@ successors = .L43, .L44
	ldr r5, [fp, #-4]
	cmp r5, #3
	blt .L44
	b .L43
.L41:                               	@ predecessors = .L43
	mov r0, #0
	b .Lsub_END
.L43:                               	@ predecessors = .L40                               	@ successors = .L41
	b .L41
.L44:                               	@ predecessors = .L40                               	@ successors = .L40
	ldr r6, [fp, #-20]
	ldr r7, [fp, #-4]
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	ldr r4, [r10]
	ldr r5, [fp, #-8]
	ldr r7, [fp, #-4]
	mov r8, #4
	mul r6, r7, r8
	add r9, r5, r6
	ldr r10, [r9]
	sub r7, r4, r10
	ldr r8, [fp, #40]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r9, r5, r6
	add r4, r8, r9
	str r7, [r4]
	ldr r10, [fp, #-16]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r8, r5, r6
	add r9, r10, r8
	ldr r7, [r9]
	ldr r4, [fp, #32]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r10, r5, r6
	add r8, r4, r10
	ldr r9, [r8]
	sub r5, r7, r9
	ldr r6, [fp, #44]
	ldr r4, [fp, #-4]
	mov r10, #4
	mul r8, r4, r10
	add r7, r6, r8
	str r5, [r7]
	ldr r9, [fp, #-12]
	ldr r4, [fp, #-4]
	mov r10, #4
	mul r6, r4, r10
	add r8, r9, r6
	ldr r5, [r8]
	ldr r7, [fp, #36]
	ldr r4, [fp, #-4]
	mov r10, #4
	mul r9, r4, r10
	add r6, r7, r9
	ldr r8, [r6]
	sub r4, r5, r8
	ldr r10, [fp, #48]
	ldr r7, [fp, #-4]
	mov r9, #4
	mul r6, r7, r9
	add r5, r10, r6
	str r4, [r5]
	ldr r8, [fp, #-4]
	add r7, r8, #1
	str r7, [fp, #-4]
	b .L40
.Lsub_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #140
.L79:                               	@ successors = .L90
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
	b .L90
.L90:                               	@ predecessors = .L79, .L94                               	@ successors = .L93, .L94
	ldr r4, [fp, #-8]
	cmp r4, #3
	blt .L94
	b .L93
.L91:                               	@ predecessors = .L93                               	@ successors = .L124
	add r5, fp, #-128
	mov r6, r5
	str r6, [fp, #-132]
	add r7, fp, #-116
	mov r8, r7
	str r8, [fp, #-136]
	add r9, fp, #-104
	mov r10, r9
	str r10, [fp, #-140]
	add r4, fp, #-92
	mov r5, r4
	add r6, fp, #-80
	mov r7, r6
	add r8, fp, #-68
	mov r9, r8
	add r10, fp, #-56
	mov r4, r10
	add r6, fp, #-32
	mov r8, r6
	add r10, fp, #-20
	mov r6, r10
	push {r6}
	push {r8}
	push {r4}
	push {r9}
	push {r7}
	mov r3, r5
	ldr r10, [fp, #-140]
	mov r2, r10
	ldr r6, [fp, #-136]
	mov r1, r6
	ldr r8, [fp, #-132]
	mov r0, r8
	bl sub
	add sp, sp, #20
	mov r4, r0
	str r4, [fp, #-8]
	b .L124
.L93:                               	@ predecessors = .L90                               	@ successors = .L91
	b .L91
.L94:                               	@ predecessors = .L90                               	@ successors = .L90
	ldr r9, [fp, #-8]
	ldr r7, [fp, #-8]
	add r5, fp, #-128
	mov r10, #4
	mul r6, r7, r10
	add r8, r5, r6
	str r9, [r8]
	ldr r4, [fp, #-8]
	ldr r7, [fp, #-8]
	add r10, fp, #-116
	mov r5, #4
	mul r6, r7, r5
	add r9, r10, r6
	str r4, [r9]
	ldr r8, [fp, #-8]
	ldr r7, [fp, #-8]
	add r5, fp, #-104
	mov r10, #4
	mul r6, r7, r10
	add r4, r5, r6
	str r8, [r4]
	ldr r9, [fp, #-8]
	ldr r7, [fp, #-8]
	add r10, fp, #-92
	mov r5, #4
	mul r6, r7, r5
	add r8, r10, r6
	str r9, [r8]
	ldr r4, [fp, #-8]
	ldr r7, [fp, #-8]
	add r5, fp, #-80
	mov r10, #4
	mul r6, r7, r10
	add r9, r5, r6
	str r4, [r9]
	ldr r8, [fp, #-8]
	ldr r7, [fp, #-8]
	add r10, fp, #-68
	mov r5, #4
	mul r6, r7, r5
	add r4, r10, r6
	str r8, [r4]
	ldr r9, [fp, #-8]
	add r7, r9, #1
	str r7, [fp, #-8]
	b .L90
.L124:                               	@ predecessors = .L91, .L128                               	@ successors = .L127, .L128
	ldr r5, [fp, #-8]
	cmp r5, #3
	blt .L128
	b .L127
.L125:                               	@ predecessors = .L127                               	@ successors = .L135
	mov r10, #10
	str r10, [fp, #-4]
	mov r6, #0
	str r6, [fp, #-8]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putch
	b .L135
.L127:                               	@ predecessors = .L124                               	@ successors = .L125
	b .L125
.L128:                               	@ predecessors = .L124                               	@ successors = .L124
	ldr r4, [fp, #-8]
	add r9, fp, #-56
	mov r7, #4
	mul r5, r4, r7
	add r10, r9, r5
	ldr r6, [r10]
	str r6, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putint
	ldr r4, [fp, #-8]
	add r7, r4, #1
	str r7, [fp, #-8]
	b .L124
.L135:                               	@ predecessors = .L125, .L139                               	@ successors = .L138, .L139
	ldr r9, [fp, #-8]
	cmp r9, #3
	blt .L139
	b .L138
.L136:                               	@ predecessors = .L138                               	@ successors = .L146
	mov r5, #10
	str r5, [fp, #-4]
	mov r10, #0
	str r10, [fp, #-8]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	b .L146
.L138:                               	@ predecessors = .L135                               	@ successors = .L136
	b .L136
.L139:                               	@ predecessors = .L135                               	@ successors = .L135
	ldr r8, [fp, #-8]
	add r4, fp, #-32
	mov r7, #4
	mul r9, r8, r7
	add r5, r4, r9
	ldr r10, [r5]
	str r10, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	ldr r8, [fp, #-8]
	add r7, r8, #1
	str r7, [fp, #-8]
	b .L135
.L146:                               	@ predecessors = .L136, .L150                               	@ successors = .L149, .L150
	ldr r4, [fp, #-8]
	cmp r4, #3
	blt .L150
	b .L149
.L147:                               	@ predecessors = .L149
	mov r9, #10
	str r9, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putch
	mov r0, #0
	b .Lmain_END
.L149:                               	@ predecessors = .L146                               	@ successors = .L147
	b .L147
.L150:                               	@ predecessors = .L146                               	@ successors = .L146
	ldr r10, [fp, #-8]
	add r6, fp, #-20
	mov r8, #4
	mul r7, r10, r8
	add r4, r6, r7
	ldr r9, [r4]
	str r9, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	ldr r10, [fp, #-8]
	add r8, r10, #1
	str r8, [fp, #-8]
	b .L146
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_L:
	.word L
addr_0_M:
	.word M
addr_0_N:
	.word N
