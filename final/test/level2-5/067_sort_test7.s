	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm	buf, 800, 4
	.text
	.global merge_sort
	.type merge_sort , %function
merge_sort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L24:                               	@ successors = .L30, .L31
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	ldr r4, [fp, #-24]
	add r5, r4, #1
	ldr r6, [fp, #-20]
	cmp r5, r6
	bge .L31
	b .L30
.L27:                               	@ predecessors = .L30                               	@ successors = .L45
	ldr r7, [fp, #-24]
	ldr r8, [fp, #-20]
	add r9, r7, r8
	mov r10, #2
	sdiv r4, r9, r10
	str r4, [fp, #-16]
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-16]
	mov r1, r6
	mov r0, r5
	bl merge_sort
	ldr r7, [fp, #-16]
	ldr r8, [fp, #-20]
	mov r1, r8
	mov r0, r7
	bl merge_sort
	ldr r9, [fp, #-24]
	str r9, [fp, #-12]
	ldr r10, [fp, #-16]
	str r10, [fp, #-8]
	ldr r4, [fp, #-24]
	str r4, [fp, #-4]
	b .L45
.L30:                               	@ predecessors = .L24                               	@ successors = .L27
	b .L27
.L31:                               	@ predecessors = .L24
	b .Lmerge_sort_END
.L45:                               	@ predecessors = .L27, .L55                               	@ successors = .L49, .L50
	ldr r6, [fp, #-12]
	ldr r5, [fp, #-16]
	cmp r6, r5
	blt .L50
	b .L49
.L46:                               	@ predecessors = .L49, .L53                               	@ successors = .L84
	b .L84
.L49:                               	@ predecessors = .L45                               	@ successors = .L46
	b .L46
.L50:                               	@ predecessors = .L45                               	@ successors = .L53, .L54
	ldr r8, [fp, #-8]
	ldr r7, [fp, #-20]
	cmp r8, r7
	blt .L54
	b .L53
.L53:                               	@ predecessors = .L50                               	@ successors = .L46
	b .L46
.L54:                               	@ predecessors = .L50                               	@ successors = .L64, .L65
	ldr r9, addr_0_buf
	mov r10, r9
	ldr r4, [fp, #-12]
	mov r6, #4
	mul r5, r4, r6
	add r8, r10, r5
	ldr r7, [r8]
	ldr r9, addr_0_buf
	mov r4, r9
	ldr r6, [fp, #-8]
	mov r10, #4
	mul r5, r6, r10
	add r8, r4, r5
	ldr r9, [r8]
	cmp r7, r9
	blt .L65
	b .L64
.L55:                               	@ predecessors = .L65, .L74                               	@ successors = .L45
	ldr r6, [fp, #-4]
	add r10, r6, #1
	str r10, [fp, #-4]
	b .L45
.L64:                               	@ predecessors = .L54                               	@ successors = .L74
	b .L74
.L65:                               	@ predecessors = .L54                               	@ successors = .L55
	ldr r4, addr_0_buf
	mov r5, r4
	ldr r8, [fp, #-12]
	mov r7, #4
	mul r9, r8, r7
	add r6, r5, r9
	ldr r10, [r6]
	ldr r4, addr_0_buf
	mov r8, #1
	mov r7, #400
	mul r5, r8, r7
	add r9, r4, r5
	ldr r6, [fp, #-4]
	mov r8, #4
	mul r7, r6, r8
	add r4, r9, r7
	str r10, [r4]
	ldr r5, [fp, #-12]
	add r6, r5, #1
	str r6, [fp, #-12]
	b .L55
.L74:                               	@ predecessors = .L64                               	@ successors = .L55
	ldr r8, addr_0_buf
	mov r9, r8
	ldr r7, [fp, #-8]
	mov r10, #4
	mul r4, r7, r10
	add r5, r9, r4
	ldr r6, [r5]
	ldr r8, addr_0_buf
	mov r7, #1
	mov r10, #400
	mul r9, r7, r10
	add r4, r8, r9
	ldr r5, [fp, #-4]
	mov r7, #4
	mul r10, r5, r7
	add r8, r4, r10
	str r6, [r8]
	ldr r9, [fp, #-8]
	add r5, r9, #1
	str r5, [fp, #-8]
	b .L55
.L84:                               	@ predecessors = .L46, .L89                               	@ successors = .L88, .L89
	ldr r7, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r7, r4
	blt .L89
	b .L88
.L85:                               	@ predecessors = .L88                               	@ successors = .L99
	b .L99
.L88:                               	@ predecessors = .L84                               	@ successors = .L85
	b .L85
.L89:                               	@ predecessors = .L84                               	@ successors = .L84
	ldr r10, addr_0_buf
	mov r6, r10
	ldr r8, [fp, #-12]
	mov r9, #4
	mul r5, r8, r9
	add r7, r6, r5
	ldr r4, [r7]
	ldr r10, addr_0_buf
	mov r8, #1
	mov r9, #400
	mul r6, r8, r9
	add r5, r10, r6
	ldr r7, [fp, #-4]
	mov r8, #4
	mul r9, r7, r8
	add r10, r5, r9
	str r4, [r10]
	ldr r6, [fp, #-12]
	add r7, r6, #1
	str r7, [fp, #-12]
	ldr r8, [fp, #-4]
	add r5, r8, #1
	str r5, [fp, #-4]
	b .L84
.L99:                               	@ predecessors = .L85, .L104                               	@ successors = .L103, .L104
	ldr r9, [fp, #-8]
	ldr r4, [fp, #-20]
	cmp r9, r4
	blt .L104
	b .L103
.L100:                               	@ predecessors = .L103                               	@ successors = .L114
	b .L114
.L103:                               	@ predecessors = .L99                               	@ successors = .L100
	b .L100
.L104:                               	@ predecessors = .L99                               	@ successors = .L99
	ldr r10, addr_0_buf
	mov r6, r10
	ldr r7, [fp, #-8]
	mov r8, #4
	mul r5, r7, r8
	add r9, r6, r5
	ldr r4, [r9]
	ldr r10, addr_0_buf
	mov r7, #1
	mov r8, #400
	mul r6, r7, r8
	add r5, r10, r6
	ldr r9, [fp, #-4]
	mov r7, #4
	mul r8, r9, r7
	add r10, r5, r8
	str r4, [r10]
	ldr r6, [fp, #-8]
	add r9, r6, #1
	str r9, [fp, #-8]
	ldr r7, [fp, #-4]
	add r5, r7, #1
	str r5, [fp, #-4]
	b .L99
.L114:                               	@ predecessors = .L100, .L119                               	@ successors = .L118, .L119
	ldr r8, [fp, #-24]
	ldr r4, [fp, #-20]
	cmp r8, r4
	blt .L119
	b .L118
.L115:                               	@ predecessors = .L118
	b .Lmerge_sort_END
.L118:                               	@ predecessors = .L114                               	@ successors = .L115
	b .L115
.L119:                               	@ predecessors = .L114                               	@ successors = .L114
	ldr r10, addr_0_buf
	mov r6, #1
	mov r9, #400
	mul r7, r6, r9
	add r5, r10, r7
	ldr r8, [fp, #-24]
	mov r4, #4
	mul r6, r8, r4
	add r9, r5, r6
	ldr r10, [r9]
	ldr r7, addr_0_buf
	mov r8, r7
	ldr r4, [fp, #-24]
	mov r5, #4
	mul r6, r4, r5
	add r9, r8, r6
	str r10, [r9]
	ldr r7, [fp, #-24]
	add r4, r7, #1
	str r4, [fp, #-24]
	b .L114
.Lmerge_sort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L128:
	ldr r4, addr_0_buf
	mov r5, r4
	mov r6, r5
	mov r0, r6
	bl getarray
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r1, r8
	mov r0, #0
	bl merge_sort
	ldr r9, [fp, #-4]
	ldr r10, addr_0_buf
	mov r4, r10
	mov r5, r4
	mov r1, r5
	mov r0, r9
	bl putarray
	mov r0, #0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_buf:
	.word buf
