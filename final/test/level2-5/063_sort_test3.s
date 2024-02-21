	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global QuickSort
	.type QuickSort , %function
QuickSort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #28
.L25:                               	@ successors = .L32, .L33
	str r0, [fp, #-28]
	str r1, [fp, #-24]
	str r2, [fp, #-20]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	cmp r4, r5
	blt .L33
	b .L32
.L29:                               	@ predecessors = .L32, .L44
	mov r0, #0
	b .LQuickSort_END
.L32:                               	@ predecessors = .L25                               	@ successors = .L29
	b .L29
.L33:                               	@ predecessors = .L25                               	@ successors = .L43
	ldr r6, [fp, #-24]
	str r6, [fp, #-16]
	ldr r7, [fp, #-20]
	str r7, [fp, #-12]
	ldr r8, [fp, #-28]
	ldr r9, [fp, #-24]
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	ldr r6, [r5]
	str r6, [fp, #-8]
	b .L43
.L43:                               	@ predecessors = .L33, .L90                               	@ successors = .L47, .L48
	ldr r7, [fp, #-16]
	ldr r9, [fp, #-12]
	cmp r7, r9
	blt .L48
	b .L47
.L44:                               	@ predecessors = .L47                               	@ successors = .L29
	ldr r10, [fp, #-8]
	ldr r8, [fp, #-28]
	ldr r4, [fp, #-16]
	mov r5, #4
	mul r6, r4, r5
	add r7, r8, r6
	str r10, [r7]
	ldr r9, [fp, #-16]
	sub r4, r9, #1
	str r4, [fp, #-4]
	ldr r5, [fp, #-28]
	ldr r8, [fp, #-24]
	ldr r6, [fp, #-4]
	mov r2, r6
	mov r1, r8
	mov r0, r5
	bl QuickSort
	mov r10, r0
	str r10, [fp, #-4]
	ldr r7, [fp, #-16]
	add r9, r7, #1
	str r9, [fp, #-4]
	ldr r4, [fp, #-28]
	ldr r6, [fp, #-4]
	ldr r8, [fp, #-20]
	mov r2, r8
	mov r1, r6
	mov r0, r4
	bl QuickSort
	mov r5, r0
	str r5, [fp, #-4]
	b .L29
.L47:                               	@ predecessors = .L43                               	@ successors = .L44
	b .L44
.L48:                               	@ predecessors = .L43                               	@ successors = .L49
	b .L49
.L49:                               	@ predecessors = .L48, .L61                               	@ successors = .L53, .L54
	ldr r10, [fp, #-16]
	ldr r7, [fp, #-12]
	cmp r10, r7
	blt .L54
	b .L53
.L50:                               	@ predecessors = .L53, .L60                               	@ successors = .L66, .L67
	ldr r9, [fp, #-16]
	ldr r8, [fp, #-12]
	cmp r9, r8
	blt .L67
	b .L66
.L53:                               	@ predecessors = .L49                               	@ successors = .L50
	b .L50
.L54:                               	@ predecessors = .L49                               	@ successors = .L60, .L61
	ldr r6, [fp, #-28]
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r10, r4, r5
	add r7, r6, r10
	ldr r9, [r7]
	ldr r8, [fp, #-8]
	sub r4, r8, #1
	cmp r9, r4
	bgt .L61
	b .L60
.L60:                               	@ predecessors = .L54                               	@ successors = .L50
	b .L50
.L61:                               	@ predecessors = .L54                               	@ successors = .L49
	ldr r5, [fp, #-12]
	sub r6, r5, #1
	str r6, [fp, #-12]
	b .L49
.L63:                               	@ predecessors = .L66, .L67                               	@ successors = .L76
	b .L76
.L66:                               	@ predecessors = .L50                               	@ successors = .L63
	b .L63
.L67:                               	@ predecessors = .L50                               	@ successors = .L63
	ldr r10, [fp, #-28]
	ldr r7, [fp, #-12]
	mov r8, #4
	mul r9, r7, r8
	add r4, r10, r9
	ldr r5, [r4]
	ldr r6, [fp, #-28]
	ldr r7, [fp, #-16]
	mov r8, #4
	mul r10, r7, r8
	add r9, r6, r10
	str r5, [r9]
	ldr r4, [fp, #-16]
	add r7, r4, #1
	str r7, [fp, #-16]
	b .L63
.L76:                               	@ predecessors = .L63, .L88                               	@ successors = .L80, .L81
	ldr r8, [fp, #-16]
	ldr r6, [fp, #-12]
	cmp r8, r6
	blt .L81
	b .L80
.L77:                               	@ predecessors = .L80, .L87                               	@ successors = .L93, .L94
	ldr r10, [fp, #-16]
	ldr r5, [fp, #-12]
	cmp r10, r5
	blt .L94
	b .L93
.L80:                               	@ predecessors = .L76                               	@ successors = .L77
	b .L77
.L81:                               	@ predecessors = .L76                               	@ successors = .L87, .L88
	ldr r9, [fp, #-28]
	ldr r4, [fp, #-16]
	mov r7, #4
	mul r8, r4, r7
	add r6, r9, r8
	ldr r10, [r6]
	ldr r5, [fp, #-8]
	cmp r10, r5
	blt .L88
	b .L87
.L87:                               	@ predecessors = .L81                               	@ successors = .L77
	b .L77
.L88:                               	@ predecessors = .L81                               	@ successors = .L76
	ldr r4, [fp, #-16]
	add r7, r4, #1
	str r7, [fp, #-16]
	b .L76
.L90:                               	@ predecessors = .L93, .L94                               	@ successors = .L43
	b .L43
.L93:                               	@ predecessors = .L77                               	@ successors = .L90
	b .L90
.L94:                               	@ predecessors = .L77                               	@ successors = .L90
	ldr r9, [fp, #-28]
	ldr r8, [fp, #-16]
	mov r6, #4
	mul r10, r8, r6
	add r5, r9, r10
	ldr r4, [r5]
	ldr r7, [fp, #-28]
	ldr r8, [fp, #-12]
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	str r4, [r10]
	ldr r5, [fp, #-12]
	sub r8, r5, #1
	str r8, [fp, #-12]
	b .L90
.LQuickSort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #52
.L116:                               	@ successors = .L133
	mov r4, #10
	ldr r5, addr_0_n
	str r4, [r5]
	add r6, fp, #-52
	mov r7, r6
	mov r8, #4
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
	mov r6, #9
	str r6, [r5]
	add r7, fp, #-52
	mov r10, #3
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #2
	str r5, [r9]
	add r6, fp, #-52
	mov r10, #4
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #0
	str r9, [r8]
	add r5, fp, #-52
	mov r10, #5
	mov r4, #4
	mul r6, r10, r4
	add r7, r5, r6
	mov r8, #1
	str r8, [r7]
	add r9, fp, #-52
	mov r10, #6
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #6
	str r7, [r6]
	add r8, fp, #-52
	mov r10, #7
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #5
	str r6, [r5]
	add r7, fp, #-52
	mov r10, #8
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #7
	str r5, [r9]
	add r6, fp, #-52
	mov r10, #9
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #8
	str r9, [r8]
	mov r5, #0
	str r5, [fp, #-12]
	mov r10, #9
	str r10, [fp, #-8]
	add r4, fp, #-52
	mov r6, r4
	ldr r7, [fp, #-12]
	ldr r8, [fp, #-8]
	mov r2, r8
	mov r1, r7
	mov r0, r6
	bl QuickSort
	mov r9, r0
	str r9, [fp, #-12]
	b .L133
.L133:                               	@ predecessors = .L116, .L138                               	@ successors = .L137, .L138
	ldr r5, [fp, #-12]
	ldr r10, addr_0_n
	ldr r4, [r10]
	cmp r5, r4
	blt .L138
	b .L137
.L134:                               	@ predecessors = .L137
	mov r0, #0
	b .Lmain_END
.L137:                               	@ predecessors = .L133                               	@ successors = .L134
	b .L134
.L138:                               	@ predecessors = .L133                               	@ successors = .L133
	ldr r8, [fp, #-12]
	add r7, fp, #-52
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	ldr r5, [r10]
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r8, #10
	str r8, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putch
	ldr r7, [fp, #-12]
	add r9, r7, #1
	str r9, [fp, #-12]
	b .L133
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_n:
	.word n
