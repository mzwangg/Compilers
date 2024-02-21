	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global MAX
	.type MAX , %function
MAX:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #8
.L32:                               	@ successors = .L38, .L39
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	cmp r4, r5
	beq .L39
	b .L38
.L35:                               	@ predecessors = .L42
	b .LMAX_END
.L38:                               	@ predecessors = .L32                               	@ successors = .L41
	b .L41
.L39:                               	@ predecessors = .L32
	ldr r6, [fp, #-8]
	mov r0, r6
	b .LMAX_END
.L41:                               	@ predecessors = .L38                               	@ successors = .L45, .L46
	ldr r7, [fp, #-8]
	ldr r8, [fp, #-4]
	cmp r7, r8
	bgt .L46
	b .L45
.L42:                               	@ successors = .L35
	b .L35
.L45:                               	@ predecessors = .L41                               	@ successors = .L48
	b .L48
.L46:                               	@ predecessors = .L41
	ldr r9, [fp, #-8]
	mov r0, r9
	b .LMAX_END
.L48:                               	@ predecessors = .L45
	ldr r10, [fp, #-4]
	mov r0, r10
.LMAX_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global max_sum_nonadjacent
	.type max_sum_nonadjacent , %function
max_sum_nonadjacent:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #76
.L50:                               	@ successors = .L82
	str r0, [fp, #-76]
	str r1, [fp, #-72]
	add r4, fp, #-68
	mov r5, r4
	mov r6, #0
	str r6, [r5]
	add r7, fp, #-68
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #0
	str r5, [r4]
	add r6, fp, #-68
	mov r8, #2
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #0
	str r4, [r10]
	add r5, fp, #-68
	mov r8, #3
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #0
	str r10, [r7]
	add r4, fp, #-68
	mov r8, #4
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	add r10, fp, #-68
	mov r8, #5
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	mov r6, #0
	str r6, [r5]
	add r7, fp, #-68
	mov r8, #6
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #0
	str r5, [r4]
	add r6, fp, #-68
	mov r8, #7
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #0
	str r4, [r10]
	add r5, fp, #-68
	mov r8, #8
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #0
	str r10, [r7]
	add r4, fp, #-68
	mov r8, #9
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	add r10, fp, #-68
	mov r8, #10
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	mov r6, #0
	str r6, [r5]
	add r7, fp, #-68
	mov r8, #11
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #0
	str r5, [r4]
	add r6, fp, #-68
	mov r8, #12
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #0
	str r4, [r10]
	add r5, fp, #-68
	mov r8, #13
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #0
	str r10, [r7]
	add r4, fp, #-68
	mov r8, #14
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	add r10, fp, #-68
	mov r8, #15
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, [fp, #-76]
	mov r8, r7
	ldr r9, [r8]
	add r10, fp, #-68
	mov r4, r10
	str r9, [r4]
	ldr r5, [fp, #-76]
	mov r6, r5
	ldr r7, [r6]
	ldr r8, [fp, #-76]
	mov r10, #1
	mov r9, #4
	mul r4, r10, r9
	add r5, r8, r4
	ldr r6, [r5]
	mov r1, r6
	mov r0, r7
	bl MAX
	mov r10, r0
	add r9, fp, #-68
	mov r8, #1
	mov r4, #4
	mul r5, r8, r4
	add r6, r9, r5
	str r10, [r6]
	mov r7, #2
	str r7, [fp, #-4]
	b .L82
.L82:                               	@ predecessors = .L50, .L87                               	@ successors = .L86, .L87
	ldr r8, [fp, #-4]
	ldr r4, [fp, #-72]
	cmp r8, r4
	blt .L87
	b .L86
.L83:                               	@ predecessors = .L86
	ldr r9, [fp, #-72]
	sub r5, r9, #1
	add r10, fp, #-68
	mov r6, #4
	mul r7, r5, r6
	add r8, r10, r7
	ldr r4, [r8]
	mov r0, r4
	b .Lmax_sum_nonadjacent_END
.L86:                               	@ predecessors = .L82                               	@ successors = .L83
	b .L83
.L87:                               	@ predecessors = .L82                               	@ successors = .L82
	ldr r9, [fp, #-4]
	sub r5, r9, #2
	add r6, fp, #-68
	mov r10, #4
	mul r7, r5, r10
	add r8, r6, r7
	ldr r4, [r8]
	ldr r9, [fp, #-76]
	ldr r5, [fp, #-4]
	mov r10, #4
	mul r6, r5, r10
	add r7, r9, r6
	ldr r8, [r7]
	add r5, r4, r8
	ldr r10, [fp, #-4]
	sub r9, r10, #1
	add r6, fp, #-68
	mov r7, #4
	mul r4, r9, r7
	add r8, r6, r4
	ldr r10, [r8]
	mov r1, r10
	mov r0, r5
	bl MAX
	mov r9, r0
	ldr r7, [fp, #-4]
	add r6, fp, #-68
	mov r4, #4
	mul r8, r7, r4
	add r10, r6, r8
	str r9, [r10]
	ldr r5, [fp, #-4]
	add r7, r5, #1
	str r7, [fp, #-4]
	b .L82
.Lmax_sum_nonadjacent_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global longest_common_subseq
	.type longest_common_subseq , %function
longest_common_subseq:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =1048
	sub sp, sp, r4
.L104:                               	@ successors = .L624
	ldr r4, =-1048
	str r0, [fp, r4]
	ldr r5, =-1044
	str r1, [fp, r5]
	ldr r6, =-1040
	str r2, [fp, r6]
	ldr r7, =-1036
	str r3, [fp, r7]
	ldr r8, =-1032
	add r9, fp, r8
	mov r10, r9
	mov r4, r10
	mov r5, #0
	str r5, [r4]
	ldr r6, =-1032
	add r7, fp, r6
	mov r8, r7
	mov r9, #1
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, r9
	mov r8, #2
	mov r4, #4
	mul r5, r8, r4
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r4, r8
	mov r10, #3
	mov r5, #4
	mul r6, r10, r5
	add r7, r4, r6
	mov r9, #0
	str r9, [r7]
	ldr r8, =-1032
	add r10, fp, r8
	mov r5, r10
	mov r4, #4
	mov r6, #4
	mul r7, r4, r6
	add r9, r5, r7
	mov r8, #0
	str r8, [r9]
	ldr r10, =-1032
	add r4, fp, r10
	mov r6, r4
	mov r5, #5
	mov r7, #4
	mul r9, r5, r7
	add r8, r6, r9
	mov r10, #0
	str r10, [r8]
	ldr r4, =-1032
	add r5, fp, r4
	mov r7, r5
	mov r6, #6
	mov r9, #4
	mul r8, r6, r9
	add r10, r7, r8
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1032
	add r6, fp, r5
	mov r9, r6
	mov r7, #7
	mov r8, #4
	mul r10, r7, r8
	add r4, r9, r10
	mov r5, #0
	str r5, [r4]
	ldr r6, =-1032
	add r7, fp, r6
	mov r8, r7
	mov r9, #8
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, r9
	mov r8, #9
	mov r4, #4
	mul r5, r8, r4
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r4, r8
	mov r10, #10
	mov r5, #4
	mul r6, r10, r5
	add r7, r4, r6
	mov r9, #0
	str r9, [r7]
	ldr r8, =-1032
	add r10, fp, r8
	mov r5, r10
	mov r4, #11
	mov r6, #4
	mul r7, r4, r6
	add r9, r5, r7
	mov r8, #0
	str r8, [r9]
	ldr r10, =-1032
	add r4, fp, r10
	mov r6, r4
	mov r5, #12
	mov r7, #4
	mul r9, r5, r7
	add r8, r6, r9
	mov r10, #0
	str r10, [r8]
	ldr r4, =-1032
	add r5, fp, r4
	mov r7, r5
	mov r6, #13
	mov r9, #4
	mul r8, r6, r9
	add r10, r7, r8
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1032
	add r6, fp, r5
	mov r9, r6
	mov r7, #14
	mov r8, #4
	mul r10, r7, r8
	add r4, r9, r10
	mov r5, #0
	str r5, [r4]
	ldr r6, =-1032
	add r7, fp, r6
	mov r8, r7
	mov r9, #15
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #1
	mov r8, #64
	mul r4, r10, r8
	add r5, r9, r4
	mov r6, r5
	mov r7, #0
	str r7, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r9, #1
	mov r4, #64
	mul r5, r9, r4
	add r6, r8, r5
	mov r7, #1
	mov r10, #4
	mul r9, r7, r10
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r7, fp, r5
	mov r10, #1
	mov r6, #64
	mul r9, r10, r6
	add r4, r7, r9
	mov r8, #2
	mov r5, #4
	mul r10, r8, r5
	add r6, r4, r10
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r5, #1
	mov r4, #64
	mul r10, r5, r4
	add r6, r8, r10
	mov r7, #3
	mov r9, #4
	mul r5, r7, r9
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #1
	mov r6, #64
	mul r5, r9, r6
	add r4, r7, r5
	mov r8, #4
	mov r10, #4
	mul r9, r8, r10
	add r6, r4, r9
	mov r7, #0
	str r7, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r10, #1
	mov r4, #64
	mul r9, r10, r4
	add r6, r8, r9
	mov r7, #5
	mov r5, #4
	mul r10, r7, r5
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r7, fp, r9
	mov r5, #1
	mov r6, #64
	mul r10, r5, r6
	add r4, r7, r10
	mov r8, #6
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r9, #1
	mov r4, #64
	mul r5, r9, r4
	add r6, r8, r5
	mov r7, #7
	mov r10, #4
	mul r9, r7, r10
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r7, fp, r5
	mov r10, #1
	mov r6, #64
	mul r9, r10, r6
	add r4, r7, r9
	mov r8, #8
	mov r5, #4
	mul r10, r8, r5
	add r6, r4, r10
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r5, #1
	mov r4, #64
	mul r10, r5, r4
	add r6, r8, r10
	mov r7, #9
	mov r9, #4
	mul r5, r7, r9
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #1
	mov r6, #64
	mul r5, r9, r6
	add r4, r7, r5
	mov r8, #10
	mov r10, #4
	mul r9, r8, r10
	add r6, r4, r9
	mov r7, #0
	str r7, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r10, #1
	mov r4, #64
	mul r9, r10, r4
	add r6, r8, r9
	mov r7, #11
	mov r5, #4
	mul r10, r7, r5
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r7, fp, r9
	mov r5, #1
	mov r6, #64
	mul r10, r5, r6
	add r4, r7, r10
	mov r8, #12
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	b .LiteralPool0
.LTORG
.LiteralPool0:
	str r7, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r9, #1
	mov r4, #64
	mul r5, r9, r4
	add r6, r8, r5
	mov r7, #13
	mov r10, #4
	mul r9, r7, r10
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r7, fp, r5
	mov r10, #1
	mov r6, #64
	mul r9, r10, r6
	add r4, r7, r9
	mov r8, #14
	mov r5, #4
	mul r10, r8, r5
	add r6, r4, r10
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r5, #1
	mov r4, #64
	mul r10, r5, r4
	add r6, r8, r10
	mov r7, #15
	mov r9, #4
	mul r5, r7, r9
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #2
	mov r6, #64
	mul r5, r9, r6
	add r4, r7, r5
	mov r8, r4
	mov r10, #0
	str r10, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r7, #2
	mov r5, #64
	mul r4, r7, r5
	add r8, r6, r4
	mov r10, #1
	mov r9, #4
	mul r7, r10, r9
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r10, fp, r4
	mov r9, #2
	mov r8, #64
	mul r7, r9, r8
	add r5, r10, r7
	mov r6, #2
	mov r4, #4
	mul r9, r6, r4
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r4, #2
	mov r5, #64
	mul r9, r4, r5
	add r8, r6, r9
	mov r10, #3
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #2
	mov r8, #64
	mul r4, r7, r8
	add r5, r10, r4
	mov r6, #4
	mov r9, #4
	mul r7, r6, r9
	add r8, r5, r7
	mov r10, #0
	str r10, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r9, #2
	mov r5, #64
	mul r7, r9, r5
	add r8, r6, r7
	mov r10, #5
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r10, fp, r7
	mov r4, #2
	mov r8, #64
	mul r9, r4, r8
	add r5, r10, r9
	mov r6, #6
	mov r7, #4
	mul r4, r6, r7
	add r8, r5, r4
	mov r10, #0
	str r10, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r7, #2
	mov r5, #64
	mul r4, r7, r5
	add r8, r6, r4
	mov r10, #7
	mov r9, #4
	mul r7, r10, r9
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r10, fp, r4
	mov r9, #2
	mov r8, #64
	mul r7, r9, r8
	add r5, r10, r7
	mov r6, #8
	mov r4, #4
	mul r9, r6, r4
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r4, #2
	mov r5, #64
	mul r9, r4, r5
	add r8, r6, r9
	mov r10, #9
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #2
	mov r8, #64
	mul r4, r7, r8
	add r5, r10, r4
	mov r6, #10
	mov r9, #4
	mul r7, r6, r9
	add r8, r5, r7
	mov r10, #0
	str r10, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r9, #2
	mov r5, #64
	mul r7, r9, r5
	add r8, r6, r7
	mov r10, #11
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r10, fp, r7
	mov r4, #2
	mov r8, #64
	mul r9, r4, r8
	add r5, r10, r9
	mov r6, #12
	mov r7, #4
	mul r4, r6, r7
	add r8, r5, r4
	mov r10, #0
	str r10, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r7, #2
	mov r5, #64
	mul r4, r7, r5
	add r8, r6, r4
	mov r10, #13
	mov r9, #4
	mul r7, r10, r9
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r10, fp, r4
	mov r9, #2
	mov r8, #64
	mul r7, r9, r8
	add r5, r10, r7
	mov r6, #14
	mov r4, #4
	mul r9, r6, r4
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r4, #2
	mov r5, #64
	mul r9, r4, r5
	add r8, r6, r9
	mov r10, #15
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #3
	mov r8, #64
	mul r4, r7, r8
	add r5, r10, r4
	mov r6, r5
	mov r9, #0
	str r9, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r10, #3
	mov r4, #64
	mul r5, r10, r4
	add r6, r8, r5
	mov r9, #1
	mov r7, #4
	mul r10, r9, r7
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r9, fp, r5
	mov r7, #3
	mov r6, #64
	mul r10, r7, r6
	add r4, r9, r10
	mov r8, #2
	mov r5, #4
	mul r7, r8, r5
	add r6, r4, r7
	mov r9, #0
	str r9, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r5, #3
	mov r4, #64
	mul r7, r5, r4
	add r6, r8, r7
	mov r9, #3
	mov r10, #4
	mul r5, r9, r10
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #3
	mov r6, #64
	mul r5, r10, r6
	add r4, r9, r5
	mov r8, #4
	mov r7, #4
	mul r10, r8, r7
	add r6, r4, r10
	mov r9, #0
	str r9, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r7, #3
	mov r4, #64
	mul r10, r7, r4
	add r6, r8, r10
	mov r9, #5
	mov r5, #4
	mul r7, r9, r5
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r9, fp, r10
	mov r5, #3
	mov r6, #64
	mul r7, r5, r6
	add r4, r9, r7
	b .LiteralPool1
.LTORG
.LiteralPool1:
	mov r8, #6
	mov r10, #4
	mul r5, r8, r10
	add r6, r4, r5
	mov r9, #0
	str r9, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r10, #3
	mov r4, #64
	mul r5, r10, r4
	add r6, r8, r5
	mov r9, #7
	mov r7, #4
	mul r10, r9, r7
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r9, fp, r5
	mov r7, #3
	mov r6, #64
	mul r10, r7, r6
	add r4, r9, r10
	mov r8, #8
	mov r5, #4
	mul r7, r8, r5
	add r6, r4, r7
	mov r9, #0
	str r9, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r5, #3
	mov r4, #64
	mul r7, r5, r4
	add r6, r8, r7
	mov r9, #9
	mov r10, #4
	mul r5, r9, r10
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #3
	mov r6, #64
	mul r5, r10, r6
	add r4, r9, r5
	mov r8, #10
	mov r7, #4
	mul r10, r8, r7
	add r6, r4, r10
	mov r9, #0
	str r9, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r7, #3
	mov r4, #64
	mul r10, r7, r4
	add r6, r8, r10
	mov r9, #11
	mov r5, #4
	mul r7, r9, r5
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r9, fp, r10
	mov r5, #3
	mov r6, #64
	mul r7, r5, r6
	add r4, r9, r7
	mov r8, #12
	mov r10, #4
	mul r5, r8, r10
	add r6, r4, r5
	mov r9, #0
	str r9, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r10, #3
	mov r4, #64
	mul r5, r10, r4
	add r6, r8, r5
	mov r9, #13
	mov r7, #4
	mul r10, r9, r7
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r9, fp, r5
	mov r7, #3
	mov r6, #64
	mul r10, r7, r6
	add r4, r9, r10
	mov r8, #14
	mov r5, #4
	mul r7, r8, r5
	add r6, r4, r7
	mov r9, #0
	str r9, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r5, #3
	mov r4, #64
	mul r7, r5, r4
	add r6, r8, r7
	mov r9, #15
	mov r10, #4
	mul r5, r9, r10
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #4
	mov r6, #64
	mul r5, r10, r6
	add r4, r9, r5
	mov r8, r4
	mov r7, #0
	str r7, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r9, #4
	mov r5, #64
	mul r4, r9, r5
	add r8, r6, r4
	mov r7, #1
	mov r10, #4
	mul r9, r7, r10
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r7, fp, r4
	mov r10, #4
	mov r8, #64
	mul r9, r10, r8
	add r5, r7, r9
	mov r6, #2
	mov r4, #4
	mul r10, r6, r4
	add r8, r5, r10
	mov r7, #0
	str r7, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r4, #4
	mov r5, #64
	mul r10, r4, r5
	add r8, r6, r10
	mov r7, #3
	mov r9, #4
	mul r4, r7, r9
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #4
	mov r8, #64
	mul r4, r9, r8
	add r5, r7, r4
	mov r6, #4
	mov r10, #4
	mul r9, r6, r10
	add r8, r5, r9
	mov r7, #0
	str r7, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r10, #4
	mov r5, #64
	mul r9, r10, r5
	add r8, r6, r9
	mov r7, #5
	mov r4, #4
	mul r10, r7, r4
	add r5, r8, r10
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r7, fp, r9
	mov r4, #4
	mov r8, #64
	mul r10, r4, r8
	add r5, r7, r10
	mov r6, #6
	mov r9, #4
	mul r4, r6, r9
	add r8, r5, r4
	mov r7, #0
	str r7, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r9, #4
	mov r5, #64
	mul r4, r9, r5
	add r8, r6, r4
	mov r7, #7
	mov r10, #4
	mul r9, r7, r10
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r7, fp, r4
	mov r10, #4
	mov r8, #64
	mul r9, r10, r8
	add r5, r7, r9
	mov r6, #8
	mov r4, #4
	mul r10, r6, r4
	add r8, r5, r10
	mov r7, #0
	str r7, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r4, #4
	mov r5, #64
	mul r10, r4, r5
	add r8, r6, r10
	mov r7, #9
	mov r9, #4
	mul r4, r7, r9
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #4
	mov r8, #64
	mul r4, r9, r8
	add r5, r7, r4
	mov r6, #10
	mov r10, #4
	mul r9, r6, r10
	add r8, r5, r9
	mov r7, #0
	str r7, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r10, #4
	mov r5, #64
	mul r9, r10, r5
	add r8, r6, r9
	mov r7, #11
	mov r4, #4
	mul r10, r7, r4
	add r5, r8, r10
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r7, fp, r9
	mov r4, #4
	mov r8, #64
	mul r10, r4, r8
	add r5, r7, r10
	mov r6, #12
	mov r9, #4
	mul r4, r6, r9
	add r8, r5, r4
	mov r7, #0
	str r7, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r9, #4
	mov r5, #64
	mul r4, r9, r5
	add r8, r6, r4
	mov r7, #13
	mov r10, #4
	mul r9, r7, r10
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r7, fp, r4
	mov r10, #4
	mov r8, #64
	mul r9, r10, r8
	add r5, r7, r9
	mov r6, #14
	mov r4, #4
	mul r10, r6, r4
	add r8, r5, r10
	mov r7, #0
	str r7, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r4, #4
	mov r5, #64
	mul r10, r4, r5
	add r8, r6, r10
	mov r7, #15
	mov r9, #4
	mul r4, r7, r9
	add r5, r8, r4
	b .LiteralPool2
.LTORG
.LiteralPool2:
	mov r6, #0
	str r6, [r5]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #5
	mov r8, #64
	mul r4, r9, r8
	add r5, r7, r4
	mov r6, r5
	mov r10, #0
	str r10, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r7, #5
	mov r4, #64
	mul r5, r7, r4
	add r6, r8, r5
	mov r10, #1
	mov r9, #4
	mul r7, r10, r9
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r10, fp, r5
	mov r9, #5
	mov r6, #64
	mul r7, r9, r6
	add r4, r10, r7
	mov r8, #2
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	mov r10, #0
	str r10, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r5, #5
	mov r4, #64
	mul r9, r5, r4
	add r6, r8, r9
	mov r10, #3
	mov r7, #4
	mul r5, r10, r7
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #5
	mov r6, #64
	mul r5, r7, r6
	add r4, r10, r5
	mov r8, #4
	mov r9, #4
	mul r7, r8, r9
	add r6, r4, r7
	mov r10, #0
	str r10, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r9, #5
	mov r4, #64
	mul r7, r9, r4
	add r6, r8, r7
	mov r10, #5
	mov r5, #4
	mul r9, r10, r5
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r10, fp, r7
	mov r5, #5
	mov r6, #64
	mul r9, r5, r6
	add r4, r10, r9
	mov r8, #6
	mov r7, #4
	mul r5, r8, r7
	add r6, r4, r5
	mov r10, #0
	str r10, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r7, #5
	mov r4, #64
	mul r5, r7, r4
	add r6, r8, r5
	mov r10, #7
	mov r9, #4
	mul r7, r10, r9
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r10, fp, r5
	mov r9, #5
	mov r6, #64
	mul r7, r9, r6
	add r4, r10, r7
	mov r8, #8
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	mov r10, #0
	str r10, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r5, #5
	mov r4, #64
	mul r9, r5, r4
	add r6, r8, r9
	mov r10, #9
	mov r7, #4
	mul r5, r10, r7
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #5
	mov r6, #64
	mul r5, r7, r6
	add r4, r10, r5
	mov r8, #10
	mov r9, #4
	mul r7, r8, r9
	add r6, r4, r7
	mov r10, #0
	str r10, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r9, #5
	mov r4, #64
	mul r7, r9, r4
	add r6, r8, r7
	mov r10, #11
	mov r5, #4
	mul r9, r10, r5
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r10, fp, r7
	mov r5, #5
	mov r6, #64
	mul r9, r5, r6
	add r4, r10, r9
	mov r8, #12
	mov r7, #4
	mul r5, r8, r7
	add r6, r4, r5
	mov r10, #0
	str r10, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r7, #5
	mov r4, #64
	mul r5, r7, r4
	add r6, r8, r5
	mov r10, #13
	mov r9, #4
	mul r7, r10, r9
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r10, fp, r5
	mov r9, #5
	mov r6, #64
	mul r7, r9, r6
	add r4, r10, r7
	mov r8, #14
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	mov r10, #0
	str r10, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r5, #5
	mov r4, #64
	mul r9, r5, r4
	add r6, r8, r9
	mov r10, #15
	mov r7, #4
	mul r5, r10, r7
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #6
	mov r6, #64
	mul r5, r7, r6
	add r4, r10, r5
	mov r8, r4
	mov r9, #0
	str r9, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r10, #6
	mov r5, #64
	mul r4, r10, r5
	add r8, r6, r4
	mov r9, #1
	mov r7, #4
	mul r10, r9, r7
	add r5, r8, r10
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r9, fp, r4
	mov r7, #6
	mov r8, #64
	mul r10, r7, r8
	add r5, r9, r10
	mov r6, #2
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #0
	str r9, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r4, #6
	mov r5, #64
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #3
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #6
	mov r8, #64
	mul r4, r10, r8
	add r5, r9, r4
	mov r6, #4
	mov r7, #4
	mul r10, r6, r7
	add r8, r5, r10
	mov r9, #0
	str r9, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r7, #6
	mov r5, #64
	mul r10, r7, r5
	add r8, r6, r10
	mov r9, #5
	mov r4, #4
	mul r7, r9, r4
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r10, =-1032
	add r9, fp, r10
	mov r4, #6
	mov r8, #64
	mul r7, r4, r8
	add r5, r9, r7
	mov r6, #6
	mov r10, #4
	mul r4, r6, r10
	add r8, r5, r4
	mov r9, #0
	str r9, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r10, #6
	mov r5, #64
	mul r4, r10, r5
	add r8, r6, r4
	mov r9, #7
	mov r7, #4
	mul r10, r9, r7
	add r5, r8, r10
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r9, fp, r4
	mov r7, #6
	mov r8, #64
	mul r10, r7, r8
	add r5, r9, r10
	mov r6, #8
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #0
	str r9, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r4, #6
	mov r5, #64
	mul r7, r4, r5
	b .LiteralPool3
.LTORG
.LiteralPool3:
	add r8, r6, r7
	mov r9, #9
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #6
	mov r8, #64
	mul r4, r10, r8
	add r5, r9, r4
	mov r6, #10
	mov r7, #4
	mul r10, r6, r7
	add r8, r5, r10
	mov r9, #0
	str r9, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r7, #6
	mov r5, #64
	mul r10, r7, r5
	add r8, r6, r10
	mov r9, #11
	mov r4, #4
	mul r7, r9, r4
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r10, =-1032
	add r9, fp, r10
	mov r4, #6
	mov r8, #64
	mul r7, r4, r8
	add r5, r9, r7
	mov r6, #12
	mov r10, #4
	mul r4, r6, r10
	add r8, r5, r4
	mov r9, #0
	str r9, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r10, #6
	mov r5, #64
	mul r4, r10, r5
	add r8, r6, r4
	mov r9, #13
	mov r7, #4
	mul r10, r9, r7
	add r5, r8, r10
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r9, fp, r4
	mov r7, #6
	mov r8, #64
	mul r10, r7, r8
	add r5, r9, r10
	mov r6, #14
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #0
	str r9, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r4, #6
	mov r5, #64
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #15
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #7
	mov r8, #64
	mul r4, r10, r8
	add r5, r9, r4
	mov r6, r5
	mov r7, #0
	str r7, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r9, #7
	mov r4, #64
	mul r5, r9, r4
	add r6, r8, r5
	mov r7, #1
	mov r10, #4
	mul r9, r7, r10
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r7, fp, r5
	mov r10, #7
	mov r6, #64
	mul r9, r10, r6
	add r4, r7, r9
	mov r8, #2
	mov r5, #4
	mul r10, r8, r5
	add r6, r4, r10
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r5, #7
	mov r4, #64
	mul r10, r5, r4
	add r6, r8, r10
	mov r7, #3
	mov r9, #4
	mul r5, r7, r9
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #7
	mov r6, #64
	mul r5, r9, r6
	add r4, r7, r5
	mov r8, #4
	mov r10, #4
	mul r9, r8, r10
	add r6, r4, r9
	mov r7, #0
	str r7, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r10, #7
	mov r4, #64
	mul r9, r10, r4
	add r6, r8, r9
	mov r7, #5
	mov r5, #4
	mul r10, r7, r5
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r7, fp, r9
	mov r5, #7
	mov r6, #64
	mul r10, r5, r6
	add r4, r7, r10
	mov r8, #6
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r9, #7
	mov r4, #64
	mul r5, r9, r4
	add r6, r8, r5
	mov r7, #7
	mov r10, #4
	mul r9, r7, r10
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r7, fp, r5
	mov r10, #7
	mov r6, #64
	mul r9, r10, r6
	add r4, r7, r9
	mov r8, #8
	mov r5, #4
	mul r10, r8, r5
	add r6, r4, r10
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r5, #7
	mov r4, #64
	mul r10, r5, r4
	add r6, r8, r10
	mov r7, #9
	mov r9, #4
	mul r5, r7, r9
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #7
	mov r6, #64
	mul r5, r9, r6
	add r4, r7, r5
	mov r8, #10
	mov r10, #4
	mul r9, r8, r10
	add r6, r4, r9
	mov r7, #0
	str r7, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r10, #7
	mov r4, #64
	mul r9, r10, r4
	add r6, r8, r9
	mov r7, #11
	mov r5, #4
	mul r10, r7, r5
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r7, fp, r9
	mov r5, #7
	mov r6, #64
	mul r10, r5, r6
	add r4, r7, r10
	mov r8, #12
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r9, #7
	mov r4, #64
	mul r5, r9, r4
	add r6, r8, r5
	mov r7, #13
	mov r10, #4
	mul r9, r7, r10
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r7, fp, r5
	mov r10, #7
	mov r6, #64
	mul r9, r10, r6
	add r4, r7, r9
	mov r8, #14
	mov r5, #4
	mul r10, r8, r5
	add r6, r4, r10
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r5, #7
	mov r4, #64
	mul r10, r5, r4
	add r6, r8, r10
	mov r7, #15
	mov r9, #4
	mul r5, r7, r9
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #8
	mov r6, #64
	mul r5, r9, r6
	add r4, r7, r5
	mov r8, r4
	mov r10, #0
	str r10, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r7, #8
	mov r5, #64
	mul r4, r7, r5
	add r8, r6, r4
	mov r10, #1
	mov r9, #4
	mul r7, r10, r9
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r10, fp, r4
	mov r9, #8
	mov r8, #64
	mul r7, r9, r8
	add r5, r10, r7
	mov r6, #2
	mov r4, #4
	mul r9, r6, r4
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	b .LiteralPool4
.LTORG
.LiteralPool4:
	ldr r7, =-1032
	add r6, fp, r7
	mov r4, #8
	mov r5, #64
	mul r9, r4, r5
	add r8, r6, r9
	mov r10, #3
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #8
	mov r8, #64
	mul r4, r7, r8
	add r5, r10, r4
	mov r6, #4
	mov r9, #4
	mul r7, r6, r9
	add r8, r5, r7
	mov r10, #0
	str r10, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r9, #8
	mov r5, #64
	mul r7, r9, r5
	add r8, r6, r7
	mov r10, #5
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r10, fp, r7
	mov r4, #8
	mov r8, #64
	mul r9, r4, r8
	add r5, r10, r9
	mov r6, #6
	mov r7, #4
	mul r4, r6, r7
	add r8, r5, r4
	mov r10, #0
	str r10, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r7, #8
	mov r5, #64
	mul r4, r7, r5
	add r8, r6, r4
	mov r10, #7
	mov r9, #4
	mul r7, r10, r9
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r10, fp, r4
	mov r9, #8
	mov r8, #64
	mul r7, r9, r8
	add r5, r10, r7
	mov r6, #8
	mov r4, #4
	mul r9, r6, r4
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r4, #8
	mov r5, #64
	mul r9, r4, r5
	add r8, r6, r9
	mov r10, #9
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #8
	mov r8, #64
	mul r4, r7, r8
	add r5, r10, r4
	mov r6, #10
	mov r9, #4
	mul r7, r6, r9
	add r8, r5, r7
	mov r10, #0
	str r10, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r9, #8
	mov r5, #64
	mul r7, r9, r5
	add r8, r6, r7
	mov r10, #11
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r10, fp, r7
	mov r4, #8
	mov r8, #64
	mul r9, r4, r8
	add r5, r10, r9
	mov r6, #12
	mov r7, #4
	mul r4, r6, r7
	add r8, r5, r4
	mov r10, #0
	str r10, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r7, #8
	mov r5, #64
	mul r4, r7, r5
	add r8, r6, r4
	mov r10, #13
	mov r9, #4
	mul r7, r10, r9
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r10, fp, r4
	mov r9, #8
	mov r8, #64
	mul r7, r9, r8
	add r5, r10, r7
	mov r6, #14
	mov r4, #4
	mul r9, r6, r4
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r4, #8
	mov r5, #64
	mul r9, r4, r5
	add r8, r6, r9
	mov r10, #15
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #9
	mov r8, #64
	mul r4, r7, r8
	add r5, r10, r4
	mov r6, r5
	mov r9, #0
	str r9, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r10, #9
	mov r4, #64
	mul r5, r10, r4
	add r6, r8, r5
	mov r9, #1
	mov r7, #4
	mul r10, r9, r7
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r9, fp, r5
	mov r7, #9
	mov r6, #64
	mul r10, r7, r6
	add r4, r9, r10
	mov r8, #2
	mov r5, #4
	mul r7, r8, r5
	add r6, r4, r7
	mov r9, #0
	str r9, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r5, #9
	mov r4, #64
	mul r7, r5, r4
	add r6, r8, r7
	mov r9, #3
	mov r10, #4
	mul r5, r9, r10
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #9
	mov r6, #64
	mul r5, r10, r6
	add r4, r9, r5
	mov r8, #4
	mov r7, #4
	mul r10, r8, r7
	add r6, r4, r10
	mov r9, #0
	str r9, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r7, #9
	mov r4, #64
	mul r10, r7, r4
	add r6, r8, r10
	mov r9, #5
	mov r5, #4
	mul r7, r9, r5
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r9, fp, r10
	mov r5, #9
	mov r6, #64
	mul r7, r5, r6
	add r4, r9, r7
	mov r8, #6
	mov r10, #4
	mul r5, r8, r10
	add r6, r4, r5
	mov r9, #0
	str r9, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r10, #9
	mov r4, #64
	mul r5, r10, r4
	add r6, r8, r5
	mov r9, #7
	mov r7, #4
	mul r10, r9, r7
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r9, fp, r5
	mov r7, #9
	mov r6, #64
	mul r10, r7, r6
	add r4, r9, r10
	mov r8, #8
	mov r5, #4
	mul r7, r8, r5
	add r6, r4, r7
	mov r9, #0
	str r9, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r5, #9
	mov r4, #64
	mul r7, r5, r4
	add r6, r8, r7
	mov r9, #9
	mov r10, #4
	mul r5, r9, r10
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #9
	mov r6, #64
	mul r5, r10, r6
	add r4, r9, r5
	mov r8, #10
	mov r7, #4
	mul r10, r8, r7
	add r6, r4, r10
	mov r9, #0
	str r9, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r7, #9
	mov r4, #64
	mul r10, r7, r4
	add r6, r8, r10
	mov r9, #11
	mov r5, #4
	mul r7, r9, r5
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r9, fp, r10
	mov r5, #9
	mov r6, #64
	b .LiteralPool5
.LTORG
.LiteralPool5:
	mul r7, r5, r6
	add r4, r9, r7
	mov r8, #12
	mov r10, #4
	mul r5, r8, r10
	add r6, r4, r5
	mov r9, #0
	str r9, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r10, #9
	mov r4, #64
	mul r5, r10, r4
	add r6, r8, r5
	mov r9, #13
	mov r7, #4
	mul r10, r9, r7
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r9, fp, r5
	mov r7, #9
	mov r6, #64
	mul r10, r7, r6
	add r4, r9, r10
	mov r8, #14
	mov r5, #4
	mul r7, r8, r5
	add r6, r4, r7
	mov r9, #0
	str r9, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r5, #9
	mov r4, #64
	mul r7, r5, r4
	add r6, r8, r7
	mov r9, #15
	mov r10, #4
	mul r5, r9, r10
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #10
	mov r6, #64
	mul r5, r10, r6
	add r4, r9, r5
	mov r8, r4
	mov r7, #0
	str r7, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r9, #10
	mov r5, #64
	mul r4, r9, r5
	add r8, r6, r4
	mov r7, #1
	mov r10, #4
	mul r9, r7, r10
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r7, fp, r4
	mov r10, #10
	mov r8, #64
	mul r9, r10, r8
	add r5, r7, r9
	mov r6, #2
	mov r4, #4
	mul r10, r6, r4
	add r8, r5, r10
	mov r7, #0
	str r7, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r4, #10
	mov r5, #64
	mul r10, r4, r5
	add r8, r6, r10
	mov r7, #3
	mov r9, #4
	mul r4, r7, r9
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #10
	mov r8, #64
	mul r4, r9, r8
	add r5, r7, r4
	mov r6, #4
	mov r10, #4
	mul r9, r6, r10
	add r8, r5, r9
	mov r7, #0
	str r7, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r10, #10
	mov r5, #64
	mul r9, r10, r5
	add r8, r6, r9
	mov r7, #5
	mov r4, #4
	mul r10, r7, r4
	add r5, r8, r10
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r7, fp, r9
	mov r4, #10
	mov r8, #64
	mul r10, r4, r8
	add r5, r7, r10
	mov r6, #6
	mov r9, #4
	mul r4, r6, r9
	add r8, r5, r4
	mov r7, #0
	str r7, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r9, #10
	mov r5, #64
	mul r4, r9, r5
	add r8, r6, r4
	mov r7, #7
	mov r10, #4
	mul r9, r7, r10
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r7, fp, r4
	mov r10, #10
	mov r8, #64
	mul r9, r10, r8
	add r5, r7, r9
	mov r6, #8
	mov r4, #4
	mul r10, r6, r4
	add r8, r5, r10
	mov r7, #0
	str r7, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r4, #10
	mov r5, #64
	mul r10, r4, r5
	add r8, r6, r10
	mov r7, #9
	mov r9, #4
	mul r4, r7, r9
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #10
	mov r8, #64
	mul r4, r9, r8
	add r5, r7, r4
	mov r6, #10
	mov r10, #4
	mul r9, r6, r10
	add r8, r5, r9
	mov r7, #0
	str r7, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r10, #10
	mov r5, #64
	mul r9, r10, r5
	add r8, r6, r9
	mov r7, #11
	mov r4, #4
	mul r10, r7, r4
	add r5, r8, r10
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r7, fp, r9
	mov r4, #10
	mov r8, #64
	mul r10, r4, r8
	add r5, r7, r10
	mov r6, #12
	mov r9, #4
	mul r4, r6, r9
	add r8, r5, r4
	mov r7, #0
	str r7, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r9, #10
	mov r5, #64
	mul r4, r9, r5
	add r8, r6, r4
	mov r7, #13
	mov r10, #4
	mul r9, r7, r10
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r7, fp, r4
	mov r10, #10
	mov r8, #64
	mul r9, r10, r8
	add r5, r7, r9
	mov r6, #14
	mov r4, #4
	mul r10, r6, r4
	add r8, r5, r10
	mov r7, #0
	str r7, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r4, #10
	mov r5, #64
	mul r10, r4, r5
	add r8, r6, r10
	mov r7, #15
	mov r9, #4
	mul r4, r7, r9
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #11
	mov r8, #64
	mul r4, r9, r8
	add r5, r7, r4
	mov r6, r5
	mov r10, #0
	str r10, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r7, #11
	mov r4, #64
	mul r5, r7, r4
	add r6, r8, r5
	mov r10, #1
	mov r9, #4
	mul r7, r10, r9
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r10, fp, r5
	mov r9, #11
	mov r6, #64
	mul r7, r9, r6
	add r4, r10, r7
	mov r8, #2
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	mov r10, #0
	str r10, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r5, #11
	mov r4, #64
	mul r9, r5, r4
	add r6, r8, r9
	mov r10, #3
	mov r7, #4
	mul r5, r10, r7
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #11
	mov r6, #64
	mul r5, r7, r6
	add r4, r10, r5
	mov r8, #4
	mov r9, #4
	mul r7, r8, r9
	add r6, r4, r7
	mov r10, #0
	str r10, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r9, #11
	mov r4, #64
	mul r7, r9, r4
	add r6, r8, r7
	mov r10, #5
	mov r5, #4
	mul r9, r10, r5
	add r4, r6, r9
	mov r8, #0
	b .LiteralPool6
.LTORG
.LiteralPool6:
	str r8, [r4]
	ldr r7, =-1032
	add r10, fp, r7
	mov r5, #11
	mov r6, #64
	mul r9, r5, r6
	add r4, r10, r9
	mov r8, #6
	mov r7, #4
	mul r5, r8, r7
	add r6, r4, r5
	mov r10, #0
	str r10, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r7, #11
	mov r4, #64
	mul r5, r7, r4
	add r6, r8, r5
	mov r10, #7
	mov r9, #4
	mul r7, r10, r9
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r10, fp, r5
	mov r9, #11
	mov r6, #64
	mul r7, r9, r6
	add r4, r10, r7
	mov r8, #8
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	mov r10, #0
	str r10, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r5, #11
	mov r4, #64
	mul r9, r5, r4
	add r6, r8, r9
	mov r10, #9
	mov r7, #4
	mul r5, r10, r7
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #11
	mov r6, #64
	mul r5, r7, r6
	add r4, r10, r5
	mov r8, #10
	mov r9, #4
	mul r7, r8, r9
	add r6, r4, r7
	mov r10, #0
	str r10, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r9, #11
	mov r4, #64
	mul r7, r9, r4
	add r6, r8, r7
	mov r10, #11
	mov r5, #4
	mul r9, r10, r5
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r10, fp, r7
	mov r5, #11
	mov r6, #64
	mul r9, r5, r6
	add r4, r10, r9
	mov r8, #12
	mov r7, #4
	mul r5, r8, r7
	add r6, r4, r5
	mov r10, #0
	str r10, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r7, #11
	mov r4, #64
	mul r5, r7, r4
	add r6, r8, r5
	mov r10, #13
	mov r9, #4
	mul r7, r10, r9
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r10, fp, r5
	mov r9, #11
	mov r6, #64
	mul r7, r9, r6
	add r4, r10, r7
	mov r8, #14
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	mov r10, #0
	str r10, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r5, #11
	mov r4, #64
	mul r9, r5, r4
	add r6, r8, r9
	mov r10, #15
	mov r7, #4
	mul r5, r10, r7
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #12
	mov r6, #64
	mul r5, r7, r6
	add r4, r10, r5
	mov r8, r4
	mov r9, #0
	str r9, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r10, #12
	mov r5, #64
	mul r4, r10, r5
	add r8, r6, r4
	mov r9, #1
	mov r7, #4
	mul r10, r9, r7
	add r5, r8, r10
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r9, fp, r4
	mov r7, #12
	mov r8, #64
	mul r10, r7, r8
	add r5, r9, r10
	mov r6, #2
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #0
	str r9, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r4, #12
	mov r5, #64
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #3
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #12
	mov r8, #64
	mul r4, r10, r8
	add r5, r9, r4
	mov r6, #4
	mov r7, #4
	mul r10, r6, r7
	add r8, r5, r10
	mov r9, #0
	str r9, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r7, #12
	mov r5, #64
	mul r10, r7, r5
	add r8, r6, r10
	mov r9, #5
	mov r4, #4
	mul r7, r9, r4
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r10, =-1032
	add r9, fp, r10
	mov r4, #12
	mov r8, #64
	mul r7, r4, r8
	add r5, r9, r7
	mov r6, #6
	mov r10, #4
	mul r4, r6, r10
	add r8, r5, r4
	mov r9, #0
	str r9, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r10, #12
	mov r5, #64
	mul r4, r10, r5
	add r8, r6, r4
	mov r9, #7
	mov r7, #4
	mul r10, r9, r7
	add r5, r8, r10
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r9, fp, r4
	mov r7, #12
	mov r8, #64
	mul r10, r7, r8
	add r5, r9, r10
	mov r6, #8
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #0
	str r9, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r4, #12
	mov r5, #64
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #9
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #12
	mov r8, #64
	mul r4, r10, r8
	add r5, r9, r4
	mov r6, #10
	mov r7, #4
	mul r10, r6, r7
	add r8, r5, r10
	mov r9, #0
	str r9, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r7, #12
	mov r5, #64
	mul r10, r7, r5
	add r8, r6, r10
	mov r9, #11
	mov r4, #4
	mul r7, r9, r4
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r10, =-1032
	add r9, fp, r10
	mov r4, #12
	mov r8, #64
	mul r7, r4, r8
	add r5, r9, r7
	mov r6, #12
	mov r10, #4
	mul r4, r6, r10
	add r8, r5, r4
	mov r9, #0
	str r9, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r10, #12
	mov r5, #64
	mul r4, r10, r5
	add r8, r6, r4
	mov r9, #13
	mov r7, #4
	mul r10, r9, r7
	add r5, r8, r10
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r9, fp, r4
	mov r7, #12
	mov r8, #64
	mul r10, r7, r8
	add r5, r9, r10
	mov r6, #14
	mov r4, #4
	mul r7, r6, r4
	add r8, r5, r7
	mov r9, #0
	str r9, [r8]
	ldr r10, =-1032
	add r6, fp, r10
	mov r4, #12
	b .LiteralPool7
.LTORG
.LiteralPool7:
	mov r5, #64
	mul r7, r4, r5
	add r8, r6, r7
	mov r9, #15
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #13
	mov r8, #64
	mul r4, r10, r8
	add r5, r9, r4
	mov r6, r5
	mov r7, #0
	str r7, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r9, #13
	mov r4, #64
	mul r5, r9, r4
	add r6, r8, r5
	mov r7, #1
	mov r10, #4
	mul r9, r7, r10
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r7, fp, r5
	mov r10, #13
	mov r6, #64
	mul r9, r10, r6
	add r4, r7, r9
	mov r8, #2
	mov r5, #4
	mul r10, r8, r5
	add r6, r4, r10
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r5, #13
	mov r4, #64
	mul r10, r5, r4
	add r6, r8, r10
	mov r7, #3
	mov r9, #4
	mul r5, r7, r9
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #13
	mov r6, #64
	mul r5, r9, r6
	add r4, r7, r5
	mov r8, #4
	mov r10, #4
	mul r9, r8, r10
	add r6, r4, r9
	mov r7, #0
	str r7, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r10, #13
	mov r4, #64
	mul r9, r10, r4
	add r6, r8, r9
	mov r7, #5
	mov r5, #4
	mul r10, r7, r5
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r7, fp, r9
	mov r5, #13
	mov r6, #64
	mul r10, r5, r6
	add r4, r7, r10
	mov r8, #6
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r9, #13
	mov r4, #64
	mul r5, r9, r4
	add r6, r8, r5
	mov r7, #7
	mov r10, #4
	mul r9, r7, r10
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r7, fp, r5
	mov r10, #13
	mov r6, #64
	mul r9, r10, r6
	add r4, r7, r9
	mov r8, #8
	mov r5, #4
	mul r10, r8, r5
	add r6, r4, r10
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r5, #13
	mov r4, #64
	mul r10, r5, r4
	add r6, r8, r10
	mov r7, #9
	mov r9, #4
	mul r5, r7, r9
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #13
	mov r6, #64
	mul r5, r9, r6
	add r4, r7, r5
	mov r8, #10
	mov r10, #4
	mul r9, r8, r10
	add r6, r4, r9
	mov r7, #0
	str r7, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r10, #13
	mov r4, #64
	mul r9, r10, r4
	add r6, r8, r9
	mov r7, #11
	mov r5, #4
	mul r10, r7, r5
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r9, =-1032
	add r7, fp, r9
	mov r5, #13
	mov r6, #64
	mul r10, r5, r6
	add r4, r7, r10
	mov r8, #12
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r9, #13
	mov r4, #64
	mul r5, r9, r4
	add r6, r8, r5
	mov r7, #13
	mov r10, #4
	mul r9, r7, r10
	add r4, r6, r9
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r7, fp, r5
	mov r10, #13
	mov r6, #64
	mul r9, r10, r6
	add r4, r7, r9
	mov r8, #14
	mov r5, #4
	mul r10, r8, r5
	add r6, r4, r10
	mov r7, #0
	str r7, [r6]
	ldr r9, =-1032
	add r8, fp, r9
	mov r5, #13
	mov r4, #64
	mul r10, r5, r4
	add r6, r8, r10
	mov r7, #15
	mov r9, #4
	mul r5, r7, r9
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r7, fp, r10
	mov r9, #14
	mov r6, #64
	mul r5, r9, r6
	add r4, r7, r5
	mov r8, r4
	mov r10, #0
	str r10, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r7, #14
	mov r5, #64
	mul r4, r7, r5
	add r8, r6, r4
	mov r10, #1
	mov r9, #4
	mul r7, r10, r9
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r10, fp, r4
	mov r9, #14
	mov r8, #64
	mul r7, r9, r8
	add r5, r10, r7
	mov r6, #2
	mov r4, #4
	mul r9, r6, r4
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r4, #14
	mov r5, #64
	mul r9, r4, r5
	add r8, r6, r9
	mov r10, #3
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #14
	mov r8, #64
	mul r4, r7, r8
	add r5, r10, r4
	mov r6, #4
	mov r9, #4
	mul r7, r6, r9
	add r8, r5, r7
	mov r10, #0
	str r10, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r9, #14
	mov r5, #64
	mul r7, r9, r5
	add r8, r6, r7
	mov r10, #5
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r10, fp, r7
	mov r4, #14
	mov r8, #64
	mul r9, r4, r8
	add r5, r10, r9
	mov r6, #6
	mov r7, #4
	mul r4, r6, r7
	add r8, r5, r4
	mov r10, #0
	str r10, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r7, #14
	mov r5, #64
	mul r4, r7, r5
	add r8, r6, r4
	mov r10, #7
	mov r9, #4
	mul r7, r10, r9
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r10, fp, r4
	mov r9, #14
	mov r8, #64
	mul r7, r9, r8
	add r5, r10, r7
	mov r6, #8
	mov r4, #4
	mul r9, r6, r4
	add r8, r5, r9
	b .LiteralPool8
.LTORG
.LiteralPool8:
	mov r10, #0
	str r10, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r4, #14
	mov r5, #64
	mul r9, r4, r5
	add r8, r6, r9
	mov r10, #9
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #14
	mov r8, #64
	mul r4, r7, r8
	add r5, r10, r4
	mov r6, #10
	mov r9, #4
	mul r7, r6, r9
	add r8, r5, r7
	mov r10, #0
	str r10, [r8]
	ldr r4, =-1032
	add r6, fp, r4
	mov r9, #14
	mov r5, #64
	mul r7, r9, r5
	add r8, r6, r7
	mov r10, #11
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #0
	str r6, [r5]
	ldr r7, =-1032
	add r10, fp, r7
	mov r4, #14
	mov r8, #64
	mul r9, r4, r8
	add r5, r10, r9
	mov r6, #12
	mov r7, #4
	mul r4, r6, r7
	add r8, r5, r4
	mov r10, #0
	str r10, [r8]
	ldr r9, =-1032
	add r6, fp, r9
	mov r7, #14
	mov r5, #64
	mul r4, r7, r5
	add r8, r6, r4
	mov r10, #13
	mov r9, #4
	mul r7, r10, r9
	add r5, r8, r7
	mov r6, #0
	str r6, [r5]
	ldr r4, =-1032
	add r10, fp, r4
	mov r9, #14
	mov r8, #64
	mul r7, r9, r8
	add r5, r10, r7
	mov r6, #14
	mov r4, #4
	mul r9, r6, r4
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r7, =-1032
	add r6, fp, r7
	mov r4, #14
	mov r5, #64
	mul r9, r4, r5
	add r8, r6, r9
	mov r10, #15
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	ldr r9, =-1032
	add r10, fp, r9
	mov r7, #15
	mov r8, #64
	mul r4, r7, r8
	add r5, r10, r4
	mov r6, r5
	mov r9, #0
	str r9, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r10, #15
	mov r4, #64
	mul r5, r10, r4
	add r6, r8, r5
	mov r9, #1
	mov r7, #4
	mul r10, r9, r7
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r9, fp, r5
	mov r7, #15
	mov r6, #64
	mul r10, r7, r6
	add r4, r9, r10
	mov r8, #2
	mov r5, #4
	mul r7, r8, r5
	add r6, r4, r7
	mov r9, #0
	str r9, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r5, #15
	mov r4, #64
	mul r7, r5, r4
	add r6, r8, r7
	mov r9, #3
	mov r10, #4
	mul r5, r9, r10
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #15
	mov r6, #64
	mul r5, r10, r6
	add r4, r9, r5
	mov r8, #4
	mov r7, #4
	mul r10, r8, r7
	add r6, r4, r10
	mov r9, #0
	str r9, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r7, #15
	mov r4, #64
	mul r10, r7, r4
	add r6, r8, r10
	mov r9, #5
	mov r5, #4
	mul r7, r9, r5
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r9, fp, r10
	mov r5, #15
	mov r6, #64
	mul r7, r5, r6
	add r4, r9, r7
	mov r8, #6
	mov r10, #4
	mul r5, r8, r10
	add r6, r4, r5
	mov r9, #0
	str r9, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r10, #15
	mov r4, #64
	mul r5, r10, r4
	add r6, r8, r5
	mov r9, #7
	mov r7, #4
	mul r10, r9, r7
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r9, fp, r5
	mov r7, #15
	mov r6, #64
	mul r10, r7, r6
	add r4, r9, r10
	mov r8, #8
	mov r5, #4
	mul r7, r8, r5
	add r6, r4, r7
	mov r9, #0
	str r9, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r5, #15
	mov r4, #64
	mul r7, r5, r4
	add r6, r8, r7
	mov r9, #9
	mov r10, #4
	mul r5, r9, r10
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	ldr r7, =-1032
	add r9, fp, r7
	mov r10, #15
	mov r6, #64
	mul r5, r10, r6
	add r4, r9, r5
	mov r8, #10
	mov r7, #4
	mul r10, r8, r7
	add r6, r4, r10
	mov r9, #0
	str r9, [r6]
	ldr r5, =-1032
	add r8, fp, r5
	mov r7, #15
	mov r4, #64
	mul r10, r7, r4
	add r6, r8, r10
	mov r9, #11
	mov r5, #4
	mul r7, r9, r5
	add r4, r6, r7
	mov r8, #0
	str r8, [r4]
	ldr r10, =-1032
	add r9, fp, r10
	mov r5, #15
	mov r6, #64
	mul r7, r5, r6
	add r4, r9, r7
	mov r8, #12
	mov r10, #4
	mul r5, r8, r10
	add r6, r4, r5
	mov r9, #0
	str r9, [r6]
	ldr r7, =-1032
	add r8, fp, r7
	mov r10, #15
	mov r4, #64
	mul r5, r10, r4
	add r6, r8, r5
	mov r9, #13
	mov r7, #4
	mul r10, r9, r7
	add r4, r6, r10
	mov r8, #0
	str r8, [r4]
	ldr r5, =-1032
	add r9, fp, r5
	mov r7, #15
	mov r6, #64
	mul r10, r7, r6
	add r4, r9, r10
	mov r8, #14
	mov r5, #4
	mul r7, r8, r5
	add r6, r4, r7
	mov r9, #0
	str r9, [r6]
	ldr r10, =-1032
	add r8, fp, r10
	mov r5, #15
	mov r4, #64
	mul r7, r5, r4
	add r6, r8, r7
	mov r9, #15
	mov r10, #4
	mul r5, r9, r10
	add r4, r6, r5
	mov r8, #0
	str r8, [r4]
	mov r7, #1
	str r7, [fp, #-8]
	b .L624
	b .LiteralPool9
.LTORG
.LiteralPool9:
.L624:                               	@ predecessors = .L104, .L631                               	@ successors = .L628, .L629
	ldr r9, [fp, #-8]
	ldr r10, =-1044
	ldr r6, [fp, r10]
	cmp r9, r6
	ble .L629
	b .L628
.L625:                               	@ predecessors = .L628
	ldr r5, =-1044
	ldr r4, [fp, r5]
	ldr r8, =-1032
	add r7, fp, r8
	mov r10, #64
	mul r9, r4, r10
	add r6, r7, r9
	ldr r5, =-1036
	ldr r8, [fp, r5]
	mov r4, #4
	mul r10, r8, r4
	add r7, r6, r10
	ldr r9, [r7]
	mov r0, r9
	b .Llongest_common_subseq_END
.L628:                               	@ predecessors = .L624                               	@ successors = .L625
	b .L625
.L629:                               	@ predecessors = .L624                               	@ successors = .L630
	mov r5, #1
	str r5, [fp, #-4]
	b .L630
.L630:                               	@ predecessors = .L629, .L636                               	@ successors = .L634, .L635
	ldr r8, [fp, #-4]
	ldr r4, =-1036
	ldr r6, [fp, r4]
	cmp r8, r6
	ble .L635
	b .L634
.L631:                               	@ predecessors = .L634                               	@ successors = .L624
	ldr r10, [fp, #-8]
	add r7, r10, #1
	str r7, [fp, #-8]
	b .L624
.L634:                               	@ predecessors = .L630                               	@ successors = .L631
	b .L631
.L635:                               	@ predecessors = .L630                               	@ successors = .L645, .L646
	ldr r9, =-1048
	ldr r5, [fp, r9]
	ldr r4, [fp, #-8]
	sub r8, r4, #1
	mov r6, #4
	mul r10, r8, r6
	add r7, r5, r10
	ldr r9, [r7]
	ldr r4, =-1040
	ldr r8, [fp, r4]
	ldr r6, [fp, #-4]
	sub r5, r6, #1
	mov r10, #4
	mul r7, r5, r10
	add r4, r8, r7
	ldr r6, [r4]
	cmp r9, r6
	beq .L646
	b .L645
.L636:                               	@ predecessors = .L646, .L656                               	@ successors = .L630
	ldr r5, [fp, #-4]
	add r10, r5, #1
	str r10, [fp, #-4]
	b .L630
.L645:                               	@ predecessors = .L635                               	@ successors = .L656
	b .L656
.L646:                               	@ predecessors = .L635                               	@ successors = .L636
	ldr r8, [fp, #-8]
	sub r7, r8, #1
	ldr r4, =-1032
	add r9, fp, r4
	mov r6, #64
	mul r5, r7, r6
	add r10, r9, r5
	ldr r8, [fp, #-4]
	sub r4, r8, #1
	mov r7, #4
	mul r6, r4, r7
	add r9, r10, r6
	ldr r5, [r9]
	add r8, r5, #1
	ldr r4, [fp, #-8]
	ldr r7, =-1032
	add r10, fp, r7
	mov r6, #64
	mul r9, r4, r6
	add r5, r10, r9
	ldr r7, [fp, #-4]
	mov r4, #4
	mul r6, r7, r4
	add r10, r5, r6
	str r8, [r10]
	b .L636
.L656:                               	@ predecessors = .L645                               	@ successors = .L636
	ldr r9, [fp, #-8]
	sub r7, r9, #1
	ldr r4, =-1032
	add r5, fp, r4
	mov r6, #64
	mul r8, r7, r6
	add r10, r5, r8
	ldr r9, [fp, #-4]
	mov r4, #4
	mul r7, r9, r4
	add r6, r10, r7
	ldr r5, [r6]
	ldr r8, [fp, #-8]
	ldr r9, =-1032
	add r4, fp, r9
	mov r10, #64
	mul r7, r8, r10
	add r6, r4, r7
	ldr r9, [fp, #-4]
	sub r8, r9, #1
	mov r10, #4
	mul r4, r8, r10
	add r7, r6, r4
	ldr r9, [r7]
	mov r1, r9
	mov r0, r5
	bl MAX
	mov r8, r0
	ldr r10, [fp, #-8]
	ldr r6, =-1032
	add r4, fp, r6
	mov r7, #64
	mul r9, r10, r7
	add r5, r4, r9
	ldr r6, [fp, #-4]
	mov r10, #4
	mul r7, r6, r10
	add r4, r5, r7
	str r8, [r4]
	b .L636
.Llongest_common_subseq_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool10
.LTORG
.LiteralPool10:
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #120
.L678:
	add r4, fp, #-120
	mov r5, r4
	mov r6, #8
	str r6, [r5]
	add r7, fp, #-120
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #7
	str r5, [r4]
	add r6, fp, #-120
	mov r8, #2
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #4
	str r4, [r10]
	add r5, fp, #-120
	mov r8, #3
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #1
	str r10, [r7]
	add r4, fp, #-120
	mov r8, #4
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #2
	str r7, [r6]
	add r10, fp, #-120
	mov r8, #5
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	mov r6, #7
	str r6, [r5]
	add r7, fp, #-120
	mov r8, #6
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #0
	str r5, [r4]
	add r6, fp, #-120
	mov r8, #7
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #1
	str r4, [r10]
	add r5, fp, #-120
	mov r8, #8
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #9
	str r10, [r7]
	add r4, fp, #-120
	mov r8, #9
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #3
	str r7, [r6]
	add r10, fp, #-120
	mov r8, #10
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	mov r6, #4
	str r6, [r5]
	add r7, fp, #-120
	mov r8, #11
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #8
	str r5, [r4]
	add r6, fp, #-120
	mov r8, #12
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #3
	str r4, [r10]
	add r5, fp, #-120
	mov r8, #13
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #7
	str r10, [r7]
	add r4, fp, #-120
	mov r8, #14
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	add r10, fp, #-60
	mov r8, r10
	mov r9, #3
	str r9, [r8]
	add r4, fp, #-60
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r10, r4, r7
	mov r8, #9
	str r8, [r10]
	add r9, fp, #-60
	mov r5, #2
	mov r6, #4
	mul r4, r5, r6
	add r7, r9, r4
	mov r10, #7
	str r10, [r7]
	add r8, fp, #-60
	mov r5, #3
	mov r6, #4
	mul r9, r5, r6
	add r4, r8, r9
	mov r7, #1
	str r7, [r4]
	add r10, fp, #-60
	mov r5, #4
	mov r6, #4
	mul r8, r5, r6
	add r9, r10, r8
	mov r4, #4
	str r4, [r9]
	add r7, fp, #-60
	mov r5, #5
	mov r6, #4
	mul r10, r5, r6
	add r8, r7, r10
	mov r9, #2
	str r9, [r8]
	add r4, fp, #-60
	mov r5, #6
	mov r6, #4
	mul r7, r5, r6
	add r10, r4, r7
	mov r8, #4
	str r8, [r10]
	add r9, fp, #-60
	mov r5, #7
	mov r6, #4
	mul r4, r5, r6
	add r7, r9, r4
	mov r10, #3
	str r10, [r7]
	add r8, fp, #-60
	mov r5, #8
	mov r6, #4
	mul r9, r5, r6
	add r4, r8, r9
	mov r7, #6
	str r7, [r4]
	add r10, fp, #-60
	mov r5, #9
	mov r6, #4
	mul r8, r5, r6
	add r9, r10, r8
	mov r4, #8
	str r4, [r9]
	add r7, fp, #-60
	mov r5, #10
	mov r6, #4
	mul r10, r5, r6
	add r8, r7, r10
	mov r9, #0
	str r9, [r8]
	add r4, fp, #-60
	mov r5, #11
	mov r6, #4
	mul r7, r5, r6
	add r10, r4, r7
	mov r8, #1
	str r8, [r10]
	add r9, fp, #-60
	mov r5, #12
	mov r6, #4
	mul r4, r5, r6
	add r7, r9, r4
	mov r10, #5
	str r10, [r7]
	add r8, fp, #-120
	mov r5, r8
	mov r1, #15
	mov r0, r5
	bl max_sum_nonadjacent
	mov r6, r0
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	add r9, fp, #-120
	mov r4, r9
	add r7, fp, #-60
	mov r10, r7
	mov r3, #13
	mov r2, r10
	mov r1, #15
	mov r0, r4
	bl longest_common_subseq
	mov r8, r0
	mov r0, r8
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

