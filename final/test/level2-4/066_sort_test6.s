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
	.global counting_sort
	.type counting_sort , %function
counting_sort:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #64
.L23:                               	@ successors = .L31
	str r0, [fp, #-64]
	str r1, [fp, #-60]
	str r2, [fp, #-56]
	mov r4, #0
	str r4, [fp, #-4]
	mov r5, #0
	str r5, [fp, #-12]
	mov r6, #0
	str r6, [fp, #-8]
	b .L31
.L31:                               	@ predecessors = .L23, .L35                               	@ successors = .L34, .L35
	ldr r7, [fp, #-4]
	cmp r7, #10
	blt .L35
	b .L34
.L32:                               	@ predecessors = .L34                               	@ successors = .L39
	b .L39
.L34:                               	@ predecessors = .L31                               	@ successors = .L32
	b .L32
.L35:                               	@ predecessors = .L31                               	@ successors = .L31
	ldr r8, [fp, #-4]
	add r9, fp, #-52
	mov r10, #4
	mul r4, r8, r10
	add r5, r9, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, [fp, #-4]
	add r8, r7, #1
	str r8, [fp, #-4]
	b .L31
.L39:                               	@ predecessors = .L32, .L44                               	@ successors = .L43, .L44
	ldr r10, [fp, #-12]
	ldr r9, [fp, #-56]
	cmp r10, r9
	blt .L44
	b .L43
.L40:                               	@ predecessors = .L43                               	@ successors = .L57
	mov r4, #1
	str r4, [fp, #-4]
	b .L57
.L43:                               	@ predecessors = .L39                               	@ successors = .L40
	b .L40
.L44:                               	@ predecessors = .L39                               	@ successors = .L39
	ldr r5, [fp, #-64]
	ldr r6, [fp, #-12]
	mov r7, #4
	mul r8, r6, r7
	add r10, r5, r8
	ldr r9, [r10]
	add r4, fp, #-52
	mov r6, #4
	mul r7, r9, r6
	add r5, r4, r7
	ldr r8, [r5]
	add r10, r8, #1
	ldr r9, [fp, #-64]
	ldr r6, [fp, #-12]
	mov r4, #4
	mul r7, r6, r4
	add r5, r9, r7
	ldr r8, [r5]
	add r6, fp, #-52
	mov r4, #4
	mul r9, r8, r4
	add r7, r6, r9
	str r10, [r7]
	ldr r5, [fp, #-12]
	add r8, r5, #1
	str r8, [fp, #-12]
	b .L39
.L57:                               	@ predecessors = .L40, .L61                               	@ successors = .L60, .L61
	ldr r4, [fp, #-4]
	cmp r4, #10
	blt .L61
	b .L60
.L58:                               	@ predecessors = .L60                               	@ successors = .L72
	ldr r6, [fp, #-56]
	str r6, [fp, #-8]
	b .L72
.L60:                               	@ predecessors = .L57                               	@ successors = .L58
	b .L58
.L61:                               	@ predecessors = .L57                               	@ successors = .L57
	ldr r9, [fp, #-4]
	add r10, fp, #-52
	mov r7, #4
	mul r5, r9, r7
	add r8, r10, r5
	ldr r4, [r8]
	ldr r6, [fp, #-4]
	sub r9, r6, #1
	add r7, fp, #-52
	mov r10, #4
	mul r5, r9, r10
	add r8, r7, r5
	ldr r6, [r8]
	add r9, r4, r6
	ldr r10, [fp, #-4]
	add r7, fp, #-52
	mov r5, #4
	mul r8, r10, r5
	add r4, r7, r8
	str r9, [r4]
	ldr r6, [fp, #-4]
	add r10, r6, #1
	str r10, [fp, #-4]
	b .L57
.L72:                               	@ predecessors = .L58, .L76                               	@ successors = .L75, .L76
	ldr r5, [fp, #-8]
	cmp r5, #0
	bgt .L76
	b .L75
.L73:                               	@ predecessors = .L75
	mov r0, #0
	b .Lcounting_sort_END
.L75:                               	@ predecessors = .L72                               	@ successors = .L73
	b .L73
.L76:                               	@ predecessors = .L72                               	@ successors = .L72
	ldr r7, [fp, #-64]
	ldr r8, [fp, #-8]
	sub r9, r8, #1
	mov r4, #4
	mul r6, r9, r4
	add r10, r7, r6
	ldr r5, [r10]
	add r8, fp, #-52
	mov r9, #4
	mul r4, r5, r9
	add r7, r8, r4
	ldr r6, [r7]
	sub r10, r6, #1
	ldr r5, [fp, #-64]
	ldr r9, [fp, #-8]
	sub r8, r9, #1
	mov r4, #4
	mul r7, r8, r4
	add r6, r5, r7
	ldr r9, [r6]
	add r8, fp, #-52
	mov r4, #4
	mul r5, r9, r4
	add r7, r8, r5
	str r10, [r7]
	ldr r6, [fp, #-64]
	ldr r9, [fp, #-8]
	sub r4, r9, #1
	mov r8, #4
	mul r5, r4, r8
	add r10, r6, r5
	ldr r7, [r10]
	ldr r9, [fp, #-60]
	ldr r4, [fp, #-64]
	ldr r8, [fp, #-8]
	sub r6, r8, #1
	mov r5, #4
	mul r10, r6, r5
	add r8, r4, r10
	ldr r6, [r8]
	add r5, fp, #-52
	mov r4, #4
	mul r10, r6, r4
	add r8, r5, r10
	ldr r6, [r8]
	mov r4, #4
	mul r5, r6, r4
	add r10, r9, r5
	str r7, [r10]
	ldr r8, [fp, #-8]
	sub r6, r8, #1
	str r6, [fp, #-8]
	b .L72
.Lcounting_sort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #88
.L101:                               	@ successors = .L118
	mov r4, #10
	ldr r5, addr_0_n
	str r4, [r5]
	add r6, fp, #-88
	mov r7, r6
	mov r8, #4
	str r8, [r7]
	add r9, fp, #-88
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #3
	str r7, [r6]
	add r8, fp, #-88
	mov r10, #2
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #9
	str r6, [r5]
	add r7, fp, #-88
	mov r10, #3
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #2
	str r5, [r9]
	add r6, fp, #-88
	mov r10, #4
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #0
	str r9, [r8]
	add r5, fp, #-88
	mov r10, #5
	mov r4, #4
	mul r6, r10, r4
	add r7, r5, r6
	mov r8, #1
	str r8, [r7]
	add r9, fp, #-88
	mov r10, #6
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #6
	str r7, [r6]
	add r8, fp, #-88
	mov r10, #7
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #5
	str r6, [r5]
	add r7, fp, #-88
	mov r10, #8
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #7
	str r5, [r9]
	add r6, fp, #-88
	mov r10, #9
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #8
	str r9, [r8]
	mov r5, #0
	str r5, [fp, #-48]
	add r10, fp, #-88
	mov r4, r10
	add r6, fp, #-44
	mov r7, r6
	ldr r8, addr_0_n
	ldr r9, [r8]
	mov r2, r9
	mov r1, r7
	mov r0, r4
	bl counting_sort
	mov r5, r0
	str r5, [fp, #-48]
	b .L118
.L118:                               	@ predecessors = .L101, .L123                               	@ successors = .L122, .L123
	ldr r10, [fp, #-48]
	ldr r6, addr_0_n
	ldr r8, [r6]
	cmp r10, r8
	blt .L123
	b .L122
.L119:                               	@ predecessors = .L122
	mov r0, #0
	b .Lmain_END
.L122:                               	@ predecessors = .L118                               	@ successors = .L119
	b .L119
.L123:                               	@ predecessors = .L118                               	@ successors = .L118
	ldr r9, [fp, #-48]
	add r7, fp, #-44
	mov r4, #4
	mul r5, r9, r4
	add r6, r7, r5
	ldr r10, [r6]
	str r10, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putint
	mov r9, #10
	str r9, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	ldr r7, [fp, #-48]
	add r5, r7, #1
	str r5, [fp, #-48]
	b .L118
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_n:
	.word n
