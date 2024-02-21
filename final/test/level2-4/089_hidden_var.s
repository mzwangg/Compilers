	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global c
	.align 4
	.size c, 16
c:
	.word 6
	.word 7
	.word 8
	.word 9
	.global b
	.align 4
	.size b, 4
b:
	.word 5
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #220
.L21:                               	@ successors = .L27
	mov r4, #1
	str r4, [fp, #-220]
	mov r5, #2
	str r5, [fp, #-216]
	mov r6, #3
	str r6, [fp, #-216]
	ldr r7, [fp, #-216]
	mov r0, r7
	bl putint
	ldr r8, [fp, #-216]
	mov r0, r8
	bl putint
	ldr r9, [fp, #-220]
	mov r0, r9
	bl putint
	mov r0, #10
	bl putch
	b .L27
.L27:                               	@ predecessors = .L21, .L34                               	@ successors = .L30, .L31
	ldr r10, [fp, #-220]
	cmp r10, #5
	blt .L31
	b .L30
.L28:                               	@ predecessors = .L30, .L37                               	@ successors = .L78, .L79
	ldr r4, [fp, #-220]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r5, addr_0_c
	mov r6, #2
	mov r7, #4
	mul r8, r6, r7
	add r9, r5, r8
	mov r10, #1
	str r10, [r9]
	add r4, fp, #-208
	mov r6, r4
	mov r7, r6
	mov r5, #0
	str r5, [r7]
	add r8, fp, #-208
	mov r9, r8
	mov r10, #1
	mov r4, #4
	mul r6, r10, r4
	add r7, r9, r6
	mov r5, #9
	str r5, [r7]
	add r8, fp, #-208
	mov r10, r8
	mov r4, #2
	mov r9, #4
	mul r6, r4, r9
	add r7, r10, r6
	mov r5, #0
	str r5, [r7]
	add r8, fp, #-208
	mov r4, r8
	mov r9, #3
	mov r10, #4
	mul r6, r9, r10
	add r7, r4, r6
	mov r5, #0
	str r5, [r7]
	add r8, fp, #-208
	mov r9, r8
	mov r10, #4
	mov r4, #4
	mul r6, r10, r4
	add r7, r9, r6
	mov r5, #0
	str r5, [r7]
	add r8, fp, #-208
	mov r10, r8
	mov r4, #5
	mov r9, #4
	mul r6, r4, r9
	add r7, r10, r6
	mov r5, #0
	str r5, [r7]
	add r8, fp, #-208
	mov r4, r8
	mov r9, #6
	mov r10, #4
	mul r6, r9, r10
	add r7, r4, r6
	mov r5, #0
	str r5, [r7]
	add r8, fp, #-208
	mov r9, r8
	mov r10, #7
	mov r4, #4
	mul r6, r10, r4
	add r7, r9, r6
	mov r5, #0
	str r5, [r7]
	add r8, fp, #-208
	mov r10, #1
	mov r4, #32
	mul r9, r10, r4
	add r6, r8, r9
	mov r7, r6
	mov r5, #8
	str r5, [r7]
	add r10, fp, #-208
	mov r4, #1
	mov r8, #32
	mul r9, r4, r8
	add r6, r10, r9
	mov r7, #1
	mov r5, #4
	mul r4, r7, r5
	add r8, r6, r4
	mov r10, #3
	str r10, [r8]
	add r9, fp, #-208
	mov r7, #1
	mov r5, #32
	mul r6, r7, r5
	add r4, r9, r6
	mov r8, #2
	mov r10, #4
	mul r7, r8, r10
	add r5, r4, r7
	mov r9, #0
	str r9, [r5]
	add r6, fp, #-208
	mov r8, #1
	mov r10, #32
	mul r4, r8, r10
	add r7, r6, r4
	mov r5, #3
	mov r9, #4
	mul r8, r5, r9
	add r10, r7, r8
	mov r6, #0
	str r6, [r10]
	add r4, fp, #-208
	mov r5, #1
	mov r9, #32
	mul r7, r5, r9
	add r8, r4, r7
	mov r10, #4
	mov r6, #4
	mul r5, r10, r6
	add r9, r8, r5
	mov r4, #0
	str r4, [r9]
	add r7, fp, #-208
	mov r10, #1
	mov r6, #32
	mul r8, r10, r6
	add r5, r7, r8
	mov r9, #5
	mov r4, #4
	mul r10, r9, r4
	add r6, r5, r10
	mov r7, #0
	str r7, [r6]
	add r8, fp, #-208
	mov r9, #1
	mov r4, #32
	mul r5, r9, r4
	add r10, r8, r5
	mov r6, #6
	mov r7, #4
	mul r9, r6, r7
	add r4, r10, r9
	mov r8, #0
	str r8, [r4]
	add r5, fp, #-208
	mov r6, #1
	mov r7, #32
	mul r10, r6, r7
	add r9, r5, r10
	mov r4, #7
	mov r8, #4
	mul r6, r4, r8
	add r7, r9, r6
	mov r5, #0
	str r5, [r7]
	mov r10, #2
	str r10, [fp, #-144]
	ldr r4, addr_0_c
	mov r8, #2
	mov r9, #4
	mul r6, r8, r9
	add r7, r4, r6
	ldr r5, [r7]
	cmp r5, #0
	bne .L79
	b .L78
.L30:                               	@ predecessors = .L27                               	@ successors = .L28
	b .L28
.L31:                               	@ predecessors = .L27                               	@ successors = .L36, .L37
	mov r10, #0
	str r10, [fp, #-212]
	ldr r8, [fp, #-212]
	add r9, r8, #1
	str r9, [fp, #-212]
	ldr r4, [fp, #-212]
	cmp r4, #0
	bne .L37
	b .L36
.L34:                               	@ predecessors = .L36, .L38                               	@ successors = .L27
	b .L27
.L36:                               	@ predecessors = .L31                               	@ successors = .L34
	b .L34
.L37:                               	@ predecessors = .L31                               	@ successors = .L28
	b .L28
.L38:                               	@ successors = .L34
	b .L34
.L75:                               	@ predecessors = .L78, .L79
	mov r0, #10
	bl putch
	ldr r6, addr_0_b
	ldr r7, [r6]
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	ldr r5, addr_0_c
	mov r10, r5
	ldr r8, [r10]
	mov r0, r8
	bl putint
	ldr r9, addr_0_c
	mov r4, #1
	mov r6, #4
	mul r7, r4, r6
	add r5, r9, r7
	ldr r10, [r5]
	mov r0, r10
	bl putint
	ldr r8, addr_0_c
	mov r4, #2
	mov r6, #4
	mul r9, r4, r6
	add r7, r8, r9
	ldr r5, [r7]
	mov r0, r5
	bl putint
	ldr r10, addr_0_c
	mov r4, #3
	mov r6, #4
	mul r8, r4, r6
	add r9, r10, r8
	ldr r7, [r9]
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	b .Lmain_END
.L78:                               	@ predecessors = .L28                               	@ successors = .L75
	b .L75
.L79:                               	@ predecessors = .L28                               	@ successors = .L75
	add r5, fp, #-140
	mov r4, r5
	mov r6, r4
	mov r10, r6
	mov r8, #0
	str r8, [r10]
	add r9, fp, #-140
	mov r7, r9
	mov r5, r7
	mov r4, #1
	mov r6, #4
	mul r10, r4, r6
	add r8, r5, r10
	mov r9, #0
	str r9, [r8]
	add r7, fp, #-140
	mov r4, r7
	mov r6, r4
	mov r5, #2
	mov r10, #4
	mul r8, r5, r10
	add r9, r6, r8
	mov r7, #0
	str r7, [r9]
	add r4, fp, #-140
	mov r5, r4
	mov r10, r5
	mov r6, #3
	mov r8, #4
	mul r9, r6, r8
	add r7, r10, r9
	mov r4, #0
	str r4, [r7]
	add r5, fp, #-140
	mov r6, r5
	mov r8, r6
	mov r10, #4
	mov r9, #4
	mul r7, r10, r9
	add r4, r8, r7
	mov r5, #0
	str r5, [r4]
	add r6, fp, #-140
	mov r10, #1
	mov r9, #20
	mul r8, r10, r9
	add r7, r6, r8
	mov r4, r7
	mov r5, r4
	mov r10, #0
	str r10, [r5]
	add r9, fp, #-140
	mov r6, #1
	mov r8, #20
	mul r7, r6, r8
	add r4, r9, r7
	mov r5, r4
	mov r10, #1
	mov r6, #4
	mul r8, r10, r6
	add r9, r5, r8
	mov r7, #0
	str r7, [r9]
	add r4, fp, #-140
	mov r10, #1
	mov r6, #20
	mul r5, r10, r6
	add r8, r4, r5
	mov r9, r8
	mov r7, #2
	mov r10, #4
	mul r6, r7, r10
	add r4, r9, r6
	mov r5, #0
	str r5, [r4]
	add r8, fp, #-140
	mov r7, #1
	mov r10, #20
	mul r9, r7, r10
	add r6, r8, r9
	mov r4, r6
	mov r5, #3
	mov r7, #4
	mul r10, r5, r7
	add r8, r4, r10
	mov r9, #0
	str r9, [r8]
	add r6, fp, #-140
	mov r5, #1
	mov r7, #20
	mul r4, r5, r7
	add r10, r6, r4
	mov r8, r10
	mov r9, #4
	mov r5, #4
	mul r7, r9, r5
	add r6, r8, r7
	mov r4, #0
	str r4, [r6]
	add r10, fp, #-140
	mov r9, #2
	mov r5, #20
	mul r8, r9, r5
	add r7, r10, r8
	mov r6, r7
	mov r4, r6
	mov r9, #2
	str r9, [r4]
	add r5, fp, #-140
	mov r10, #2
	mov r8, #20
	mul r7, r10, r8
	add r6, r5, r7
	mov r4, r6
	mov r9, #1
	mov r10, #4
	mul r8, r9, r10
	add r5, r4, r8
	mov r7, #1
	str r7, [r5]
	add r6, fp, #-140
	mov r9, #2
	mov r10, #20
	mul r4, r9, r10
	add r8, r6, r4
	mov r5, r8
	mov r7, #2
	mov r9, #4
	mul r10, r7, r9
	add r6, r5, r10
	mov r4, #8
	str r4, [r6]
	add r8, fp, #-140
	mov r7, #2
	mov r9, #20
	mul r5, r7, r9
	add r10, r8, r5
	mov r6, r10
	mov r4, #3
	mov r7, #4
	mul r9, r4, r7
	add r8, r6, r9
	mov r5, #0
	str r5, [r8]
	add r10, fp, #-140
	mov r4, #2
	mov r7, #20
	mul r6, r4, r7
	add r9, r10, r6
	mov r8, r9
	mov r5, #4
	mov r4, #4
	mul r7, r5, r4
	add r10, r8, r7
	mov r6, #0
	str r6, [r10]
	add r9, fp, #-140
	mov r5, #3
	mov r4, #20
	mul r8, r5, r4
	add r7, r9, r8
	mov r10, r7
	mov r6, r10
	mov r5, #0
	str r5, [r6]
	add r4, fp, #-140
	mov r9, #3
	mov r8, #20
	mul r7, r9, r8
	add r10, r4, r7
	mov r6, r10
	mov r5, #1
	mov r9, #4
	mul r8, r5, r9
	add r4, r6, r8
	mov r7, #0
	str r7, [r4]
	add r10, fp, #-140
	mov r5, #3
	mov r9, #20
	mul r6, r5, r9
	add r8, r10, r6
	mov r4, r8
	mov r7, #2
	mov r5, #4
	mul r9, r7, r5
	add r10, r4, r9
	mov r6, #0
	str r6, [r10]
	add r8, fp, #-140
	mov r7, #3
	mov r5, #20
	mul r4, r7, r5
	add r9, r8, r4
	mov r10, r9
	mov r6, #3
	mov r7, #4
	mul r5, r6, r7
	add r8, r10, r5
	mov r4, #0
	str r4, [r8]
	add r9, fp, #-140
	mov r6, #3
	mov r7, #20
	mul r10, r6, r7
	add r5, r9, r10
	mov r8, r5
	mov r4, #4
	mov r6, #4
	mul r7, r4, r6
	add r9, r8, r7
	mov r10, #0
	str r10, [r9]
	add r5, fp, #-140
	mov r4, #4
	mov r6, #20
	mul r8, r4, r6
	add r7, r5, r8
	mov r9, r7
	mov r10, r9
	mov r4, #0
	str r4, [r10]
	add r6, fp, #-140
	mov r5, #4
	mov r8, #20
	mul r7, r5, r8
	add r9, r6, r7
	mov r10, r9
	mov r4, #1
	mov r5, #4
	mul r8, r4, r5
	add r6, r10, r8
	mov r7, #0
	str r7, [r6]
	add r9, fp, #-140
	mov r4, #4
	mov r5, #20
	mul r10, r4, r5
	add r8, r9, r10
	mov r6, r8
	mov r7, #2
	mov r4, #4
	mul r5, r7, r4
	add r9, r6, r5
	mov r10, #0
	str r10, [r9]
	add r8, fp, #-140
	mov r7, #4
	mov r4, #20
	mul r6, r7, r4
	add r5, r8, r6
	mov r9, r5
	mov r10, #3
	mov r7, #4
	mul r4, r10, r7
	add r8, r9, r4
	mov r6, #0
	str r6, [r8]
	add r5, fp, #-140
	mov r10, #4
	mov r7, #20
	mul r9, r10, r7
	add r4, r5, r9
	mov r8, r4
	mov r6, #4
	mov r10, #4
	mul r7, r6, r10
	add r5, r8, r7
	mov r9, #0
	str r9, [r5]
	add r4, fp, #-140
	mov r6, #5
	mov r10, #20
	mul r8, r6, r10
	add r7, r4, r8
	mov r5, r7
	mov r9, r5
	mov r6, #0
	str r6, [r9]
	add r10, fp, #-140
	mov r4, #5
	mov r8, #20
	mul r7, r4, r8
	add r5, r10, r7
	mov r9, r5
	mov r6, #1
	mov r4, #4
	mul r8, r6, r4
	add r10, r9, r8
	mov r7, #0
	str r7, [r10]
	add r5, fp, #-140
	mov r6, #5
	mov r4, #20
	mul r9, r6, r4
	add r8, r5, r9
	mov r10, r8
	mov r7, #2
	mov r6, #4
	mul r4, r7, r6
	add r5, r10, r4
	b .LiteralPool0
.LTORG
addr_0_c:
	.word c
addr_0_b:
	.word b
.LiteralPool0:
	mov r9, #0
	str r9, [r5]
	add r8, fp, #-140
	mov r7, #5
	mov r6, #20
	mul r10, r7, r6
	add r4, r8, r10
	mov r5, r4
	mov r9, #3
	mov r7, #4
	mul r6, r9, r7
	add r8, r5, r6
	mov r10, #0
	str r10, [r8]
	add r4, fp, #-140
	mov r9, #5
	mov r7, #20
	mul r5, r9, r7
	add r6, r4, r5
	mov r8, r6
	mov r10, #4
	mov r9, #4
	mul r7, r10, r9
	add r4, r8, r7
	mov r5, #0
	str r5, [r4]
	add r6, fp, #-140
	mov r10, #6
	mov r9, #20
	mul r8, r10, r9
	add r7, r6, r8
	mov r4, r7
	mov r5, r4
	mov r10, #0
	str r10, [r5]
	add r9, fp, #-140
	mov r6, #6
	mov r8, #20
	mul r7, r6, r8
	add r4, r9, r7
	mov r5, r4
	mov r10, #1
	mov r6, #4
	mul r8, r10, r6
	add r9, r5, r8
	mov r7, #0
	str r7, [r9]
	add r4, fp, #-140
	mov r10, #6
	mov r6, #20
	mul r5, r10, r6
	add r8, r4, r5
	mov r9, r8
	mov r7, #2
	mov r10, #4
	mul r6, r7, r10
	add r4, r9, r6
	mov r5, #0
	str r5, [r4]
	add r8, fp, #-140
	mov r7, #6
	mov r10, #20
	mul r9, r7, r10
	add r6, r8, r9
	mov r4, r6
	mov r5, #3
	mov r7, #4
	mul r10, r5, r7
	add r8, r4, r10
	mov r9, #0
	str r9, [r8]
	add r6, fp, #-140
	mov r5, #6
	mov r7, #20
	mul r4, r5, r7
	add r10, r6, r4
	mov r8, r10
	mov r9, #4
	mov r5, #4
	mul r7, r9, r5
	add r6, r8, r7
	mov r4, #0
	str r4, [r6]
	add r10, fp, #-140
	mov r9, #7
	mov r5, #20
	mul r8, r9, r5
	add r7, r10, r8
	mov r6, r7
	mov r4, r6
	mov r9, #0
	str r9, [r4]
	add r5, fp, #-140
	mov r10, #7
	mov r8, #20
	mul r7, r10, r8
	add r6, r5, r7
	mov r4, r6
	mov r9, #1
	mov r10, #4
	mul r8, r9, r10
	add r5, r4, r8
	mov r7, #0
	str r7, [r5]
	add r6, fp, #-140
	mov r9, #7
	mov r10, #20
	mul r4, r9, r10
	add r8, r6, r4
	mov r5, r8
	mov r7, #2
	mov r9, #4
	mul r10, r7, r9
	add r6, r5, r10
	mov r4, #0
	str r4, [r6]
	add r8, fp, #-140
	mov r7, #7
	mov r9, #20
	mul r5, r7, r9
	add r10, r8, r5
	mov r6, r10
	mov r4, #3
	mov r7, #4
	mul r9, r4, r7
	add r8, r6, r9
	mov r5, #0
	str r5, [r8]
	ldr r10, [fp, #-144]
	add r4, fp, #-140
	mov r7, #20
	mul r6, r10, r7
	add r9, r4, r6
	mov r8, r9
	mov r5, r8
	ldr r10, [r5]
	mov r0, r10
	bl putint
	ldr r7, [fp, #-144]
	add r4, fp, #-140
	mov r6, #20
	mul r9, r7, r6
	add r8, r4, r9
	mov r5, r8
	mov r10, #1
	mov r7, #4
	mul r6, r10, r7
	add r4, r5, r6
	ldr r9, [r4]
	mov r0, r9
	bl putint
	ldr r8, [fp, #-144]
	add r10, fp, #-140
	mov r7, #20
	mul r5, r8, r7
	add r6, r10, r5
	mov r4, r6
	mov r9, #2
	mov r8, #4
	mul r7, r9, r8
	add r10, r4, r7
	ldr r5, [r10]
	mov r0, r5
	bl putint
	b .L75
	b .LiteralPool1
.LTORG
addr_1_c:
	.word c
addr_1_b:
	.word b
.LiteralPool1:
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool2
.LTORG
addr_2_c:
	.word c
addr_2_b:
	.word b
.LiteralPool2:
addr_3_c:
	.word c
addr_3_b:
	.word b
