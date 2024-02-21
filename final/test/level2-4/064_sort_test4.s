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
	.global select_sort
	.type select_sort , %function
select_sort:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #24
.L14:                               	@ successors = .L20
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	mov r4, #0
	str r4, [fp, #-16]
	b .L20
.L20:                               	@ predecessors = .L14, .L47                               	@ successors = .L24, .L25
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-20]
	sub r7, r6, #1
	cmp r5, r7
	blt .L25
	b .L24
.L21:                               	@ predecessors = .L24
	mov r0, #0
	b .Lselect_sort_END
.L24:                               	@ predecessors = .L20                               	@ successors = .L21
	b .L21
.L25:                               	@ predecessors = .L20                               	@ successors = .L28
	ldr r8, [fp, #-16]
	str r8, [fp, #-8]
	ldr r9, [fp, #-16]
	add r10, r9, #1
	str r10, [fp, #-12]
	b .L28
.L28:                               	@ predecessors = .L25, .L34                               	@ successors = .L32, .L33
	ldr r4, [fp, #-12]
	ldr r6, [fp, #-20]
	cmp r4, r6
	blt .L33
	b .L32
.L29:                               	@ predecessors = .L32                               	@ successors = .L50, .L51
	ldr r5, [fp, #-8]
	ldr r7, [fp, #-16]
	cmp r5, r7
	bne .L51
	b .L50
.L32:                               	@ predecessors = .L28                               	@ successors = .L29
	b .L29
.L33:                               	@ predecessors = .L28                               	@ successors = .L43, .L44
	ldr r8, [fp, #-24]
	ldr r9, [fp, #-8]
	mov r10, #4
	mul r4, r9, r10
	add r6, r8, r4
	ldr r5, [r6]
	ldr r7, [fp, #-24]
	ldr r9, [fp, #-12]
	mov r10, #4
	mul r8, r9, r10
	add r4, r7, r8
	ldr r6, [r4]
	cmp r5, r6
	bgt .L44
	b .L43
.L34:                               	@ predecessors = .L43, .L44                               	@ successors = .L28
	ldr r9, [fp, #-12]
	add r10, r9, #1
	str r10, [fp, #-12]
	b .L28
.L43:                               	@ predecessors = .L33                               	@ successors = .L34
	b .L34
.L44:                               	@ predecessors = .L33                               	@ successors = .L34
	ldr r7, [fp, #-12]
	str r7, [fp, #-8]
	b .L34
.L47:                               	@ predecessors = .L50, .L51                               	@ successors = .L20
	ldr r8, [fp, #-16]
	add r4, r8, #1
	str r4, [fp, #-16]
	b .L20
.L50:                               	@ predecessors = .L29                               	@ successors = .L47
	b .L47
.L51:                               	@ predecessors = .L29                               	@ successors = .L47
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-8]
	mov r9, #4
	mul r10, r6, r9
	add r7, r5, r10
	ldr r8, [r7]
	str r8, [fp, #-4]
	ldr r4, [fp, #-24]
	ldr r6, [fp, #-16]
	mov r9, #4
	mul r5, r6, r9
	add r10, r4, r5
	ldr r7, [r10]
	ldr r8, [fp, #-24]
	ldr r6, [fp, #-8]
	mov r9, #4
	mul r4, r6, r9
	add r5, r8, r4
	str r7, [r5]
	ldr r10, [fp, #-4]
	ldr r6, [fp, #-24]
	ldr r9, [fp, #-16]
	mov r8, #4
	mul r4, r9, r8
	add r7, r6, r4
	str r10, [r7]
	b .L47
.Lselect_sort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L69:                               	@ successors = .L84
	mov r4, #10
	ldr r5, addr_0_n
	str r4, [r5]
	add r6, fp, #-48
	mov r7, r6
	mov r8, #4
	str r8, [r7]
	add r9, fp, #-48
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #3
	str r7, [r6]
	add r8, fp, #-48
	mov r10, #2
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #9
	str r6, [r5]
	add r7, fp, #-48
	mov r10, #3
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #2
	str r5, [r9]
	add r6, fp, #-48
	mov r10, #4
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #0
	str r9, [r8]
	add r5, fp, #-48
	mov r10, #5
	mov r4, #4
	mul r6, r10, r4
	add r7, r5, r6
	mov r8, #1
	str r8, [r7]
	add r9, fp, #-48
	mov r10, #6
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #6
	str r7, [r6]
	add r8, fp, #-48
	mov r10, #7
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #5
	str r6, [r5]
	add r7, fp, #-48
	mov r10, #8
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #7
	str r5, [r9]
	add r6, fp, #-48
	mov r10, #9
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #8
	str r9, [r8]
	mov r5, #0
	str r5, [fp, #-8]
	add r10, fp, #-48
	mov r4, r10
	ldr r6, addr_0_n
	ldr r7, [r6]
	mov r1, r7
	mov r0, r4
	bl select_sort
	mov r8, r0
	str r8, [fp, #-8]
	b .L84
.L84:                               	@ predecessors = .L69, .L89                               	@ successors = .L88, .L89
	ldr r9, [fp, #-8]
	ldr r5, addr_0_n
	ldr r10, [r5]
	cmp r9, r10
	blt .L89
	b .L88
.L85:                               	@ predecessors = .L88
	mov r0, #0
	b .Lmain_END
.L88:                               	@ predecessors = .L84                               	@ successors = .L85
	b .L85
.L89:                               	@ predecessors = .L84                               	@ successors = .L84
	ldr r6, [fp, #-8]
	add r7, fp, #-48
	mov r4, #4
	mul r8, r6, r4
	add r5, r7, r8
	ldr r9, [r5]
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl putint
	mov r6, #10
	str r6, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	ldr r7, [fp, #-8]
	add r8, r7, #1
	str r8, [fp, #-8]
	b .L84
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_n:
	.word n
