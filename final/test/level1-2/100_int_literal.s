	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
	.global s
	.align 4
	.size s, 4
s:
	.word 0
	.text
	.global get_ans_se
	.type get_ans_se , %function
get_ans_se:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #16
.L32:                               	@ successors = .L40, .L41
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	cmp r4, r5
	beq .L41
	b .L40
.L37:                               	@ predecessors = .L40, .L41
	ldr r4, [fp, #-16]
	mov r5, #2
	mul r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	add r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, addr_0_s
	ldr r5, [r4]
	ldr r4, [fp, #-16]
	add r6, r5, r4
	ldr r4, addr_0_s
	str r6, [r4]
	ldr r4, [fp, #-16]
	mov r0, r4
	b .Lget_ans_se_END
.L40:                               	@ predecessors = .L32                               	@ successors = .L37
	b .L37
.L41:                               	@ predecessors = .L32                               	@ successors = .L37
	mov r4, #1
	str r4, [fp, #-4]
	b .L37
.Lget_ans_se_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global get_ans
	.type get_ans , %function
get_ans:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #16
.L48:                               	@ successors = .L56, .L57
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	cmp r4, r5
	beq .L57
	b .L56
.L53:                               	@ predecessors = .L56, .L57
	ldr r4, [fp, #-16]
	mov r5, #2
	mul r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	add r6, r4, r5
	str r6, [fp, #-16]
	ldr r4, [fp, #-16]
	mov r0, r4
	b .Lget_ans_END
.L56:                               	@ predecessors = .L48                               	@ successors = .L53
	b .L53
.L57:                               	@ predecessors = .L48                               	@ successors = .L53
	mov r4, #1
	str r4, [fp, #-4]
	b .L53
.Lget_ans_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L62:
	ldr r2, =-2147483648
	ldr r1, =-2147483648
	mov r0, #0
	bl get_ans
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r2, =-2147483647
	ldr r1, =-2147483647
	mov r0, r4
	bl get_ans
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r2, =-2147483648
	ldr r1, =-2147483648
	mov r0, r4
	bl get_ans
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r2, =2147483647
	ldr r1, =-2147483648
	mov r0, r4
	bl get_ans
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r2, =-1073741823
	ldr r1, =-1073741824
	mov r0, r4
	bl get_ans
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r2, =-2147483648
	ldr r1, =-2147483648
	mov r0, r4
	bl get_ans
	mov r4, r0
	str r4, [fp, #-16]
	ldr r4, [fp, #-16]
	ldr r2, =2147483647
	ldr r1, =-2147483648
	mov r0, r4
	bl get_ans
	mov r4, r0
	str r4, [fp, #-16]
	ldr r2, =2147483647
	ldr r1, =-2147483647
	mov r0, #0
	bl get_ans
	mov r4, r0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r2, =2147483646
	ldr r1, =-2147483647
	mov r0, r4
	bl get_ans
	mov r4, r0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r2, =2147483646
	ldr r1, =2147483647
	mov r0, r4
	bl get_ans
	mov r4, r0
	str r4, [fp, #-12]
	ldr r4, [fp, #-12]
	ldr r2, =-1073741824
	ldr r1, =-1073741824
	mov r0, r4
	bl get_ans
	mov r4, r0
	str r4, [fp, #-12]
	ldr r2, =-2147483648
	ldr r1, =-2147483648
	mov r0, #0
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r2, =-2147483647
	ldr r1, =-2147483647
	mov r0, r4
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r2, =-2147483648
	ldr r1, =-2147483648
	mov r0, r4
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r2, =2147483647
	ldr r1, =-2147483648
	mov r0, r4
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r2, =-1073741823
	ldr r1, =-1073741824
	mov r0, r4
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r2, =-2147483648
	ldr r1, =-2147483648
	mov r0, r4
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r2, =2147483647
	ldr r1, =-2147483648
	mov r0, r4
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-8]
	ldr r2, =2147483647
	ldr r1, =-2147483647
	mov r0, #0
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r2, =2147483646
	ldr r1, =-2147483647
	mov r0, r4
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r2, =2147483646
	ldr r1, =2147483647
	mov r0, r4
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r2, =-1073741824
	ldr r1, =-1073741824
	mov r0, r4
	bl get_ans_se
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	add r6, r4, r5
	ldr r4, [fp, #-8]
	add r5, r6, r4
	ldr r4, [fp, #-4]
	add r6, r5, r4
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, fp, lr}
	bx lr

addr_0_s:
	.word s
