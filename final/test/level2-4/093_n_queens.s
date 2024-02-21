	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm	line2, 400, 4
	.comm	line1, 200, 4
	.comm	row, 200, 4
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.global sum
	.align 4
	.size sum, 4
sum:
	.word 0
	.comm	ans, 200, 4
	.text
	.global printans
	.type printans , %function
printans:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L32:                               	@ successors = .L35
	ldr r4, addr_0_sum
	ldr r5, [r4]
	add r6, r5, #1
	ldr r7, addr_0_sum
	str r6, [r7]
	mov r8, #1
	str r8, [fp, #-4]
	b .L35
.L35:                               	@ predecessors = .L32, .L44                               	@ successors = .L39, .L40
	ldr r9, [fp, #-4]
	ldr r10, addr_0_n
	ldr r4, [r10]
	cmp r9, r4
	ble .L40
	b .L39
.L36:                               	@ predecessors = .L39
	b .Lprintans_END
.L39:                               	@ predecessors = .L35                               	@ successors = .L36
	b .L36
.L40:                               	@ predecessors = .L35                               	@ successors = .L47, .L48
	ldr r5, [fp, #-4]
	ldr r6, addr_0_ans
	mov r7, #4
	mul r8, r5, r7
	add r10, r6, r8
	ldr r9, [r10]
	mov r0, r9
	bl putint
	ldr r4, [fp, #-4]
	ldr r5, addr_0_n
	ldr r7, [r5]
	cmp r4, r7
	beq .L48
	b .L47
.L44:                               	@ predecessors = .L49                               	@ successors = .L35
	ldr r6, [fp, #-4]
	add r8, r6, #1
	str r8, [fp, #-4]
	b .L35
.L47:                               	@ predecessors = .L40                               	@ successors = .L49
	b .L49
.L48:                               	@ predecessors = .L40
	mov r0, #10
	bl putch
	b .Lprintans_END
.L49:                               	@ predecessors = .L47                               	@ successors = .L44
	mov r0, #32
	bl putch
	b .L44
.Lprintans_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global f
	.type f , %function
f:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L51:                               	@ successors = .L54
	str r0, [fp, #-8]
	mov r4, #1
	str r4, [fp, #-4]
	b .L54
.L54:                               	@ predecessors = .L51, .L60                               	@ successors = .L58, .L59
	ldr r5, [fp, #-4]
	ldr r6, addr_0_n
	ldr r7, [r6]
	cmp r5, r7
	ble .L59
	b .L58
.L55:                               	@ predecessors = .L58
	b .Lf_END
.L58:                               	@ predecessors = .L54                               	@ successors = .L55
	b .L55
.L59:                               	@ predecessors = .L54                               	@ successors = .L64, .L65
	ldr r8, [fp, #-4]
	ldr r9, addr_0_row
	mov r10, #4
	mul r4, r8, r10
	add r6, r9, r4
	ldr r5, [r6]
	cmp r5, #1
	bne .L65
	b .L64
.L60:                               	@ predecessors = .L64, .L70, .L77, .L82                               	@ successors = .L54
	ldr r7, [fp, #-4]
	add r8, r7, #1
	str r8, [fp, #-4]
	b .L54
.L64:                               	@ predecessors = .L59                               	@ successors = .L60
	b .L60
.L65:                               	@ predecessors = .L59                               	@ successors = .L70, .L71
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r4, r10, r9
	ldr r6, addr_0_line1
	mov r5, #4
	mul r7, r4, r5
	add r8, r6, r7
	ldr r10, [r8]
	cmp r10, #0
	beq .L71
	b .L70
.L70:                               	@ predecessors = .L65                               	@ successors = .L60
	b .L60
.L71:                               	@ predecessors = .L65                               	@ successors = .L77, .L78
	ldr r9, addr_0_n
	ldr r4, [r9]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	ldr r7, [fp, #-4]
	sub r8, r6, r7
	ldr r10, addr_0_line2
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	ldr r6, [r5]
	cmp r6, #0
	beq .L78
	b .L77
.L77:                               	@ predecessors = .L71                               	@ successors = .L60
	b .L60
.L78:                               	@ predecessors = .L71                               	@ successors = .L85, .L86
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r9, addr_0_ans
	mov r10, #4
	mul r4, r8, r10
	add r5, r9, r4
	str r7, [r5]
	ldr r6, [fp, #-8]
	ldr r8, addr_0_n
	ldr r10, [r8]
	cmp r6, r10
	beq .L86
	b .L85
.L82:                               	@ predecessors = .L85, .L86                               	@ successors = .L60
	ldr r9, [fp, #-4]
	ldr r4, addr_0_row
	mov r7, #4
	mul r5, r9, r7
	add r8, r4, r5
	mov r6, #1
	str r6, [r8]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-4]
	add r7, r10, r9
	ldr r4, addr_0_line1
	mov r5, #4
	mul r8, r7, r5
	add r6, r4, r8
	mov r10, #1
	str r10, [r6]
	ldr r9, addr_0_n
	ldr r7, [r9]
	ldr r5, [fp, #-8]
	add r4, r7, r5
	ldr r8, [fp, #-4]
	sub r6, r4, r8
	ldr r10, addr_0_line2
	mov r9, #4
	mul r7, r6, r9
	add r5, r10, r7
	mov r4, #1
	str r4, [r5]
	ldr r8, [fp, #-8]
	add r6, r8, #1
	mov r0, r6
	bl f
	ldr r9, [fp, #-4]
	ldr r10, addr_0_row
	mov r7, #4
	mul r5, r9, r7
	add r4, r10, r5
	mov r8, #0
	str r8, [r4]
	ldr r6, [fp, #-8]
	ldr r9, [fp, #-4]
	add r7, r6, r9
	ldr r10, addr_0_line1
	mov r5, #4
	mul r4, r7, r5
	add r8, r10, r4
	mov r6, #0
	str r6, [r8]
	ldr r9, addr_0_n
	ldr r7, [r9]
	ldr r5, [fp, #-8]
	add r10, r7, r5
	ldr r4, [fp, #-4]
	sub r8, r10, r4
	ldr r6, addr_0_line2
	mov r9, #4
	mul r7, r8, r9
	add r5, r6, r7
	mov r10, #0
	str r10, [r5]
	b .L60
.L85:                               	@ predecessors = .L78                               	@ successors = .L82
	b .L82
.L86:                               	@ predecessors = .L78                               	@ successors = .L82
	bl printans
	b .L82
.Lf_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L107:                               	@ successors = .L109
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	b .L109
.L109:                               	@ predecessors = .L107, .L113                               	@ successors = .L112, .L113
	ldr r5, [fp, #-4]
	cmp r5, #0
	bgt .L113
	b .L112
.L110:                               	@ predecessors = .L112
	ldr r6, addr_0_sum
	ldr r7, [r6]
	mov r0, r7
	b .Lmain_END
.L112:                               	@ predecessors = .L109                               	@ successors = .L110
	b .L110
.L113:                               	@ predecessors = .L109                               	@ successors = .L109
	bl getint
	mov r8, r0
	ldr r9, addr_0_n
	str r8, [r9]
	mov r0, #1
	bl f
	ldr r10, [fp, #-4]
	sub r4, r10, #1
	str r4, [fp, #-4]
	b .L109
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_line2:
	.word line2
addr_0_line1:
	.word line1
addr_0_row:
	.word row
addr_0_n:
	.word n
addr_0_sum:
	.word sum
addr_0_ans:
	.word ans
