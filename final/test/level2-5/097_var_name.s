	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #88
.L9:                               	@ successors = .L33
	mov r4, #2
	str r4, [fp, #-88]
	add r5, fp, #-84
	mov r6, r5
	mov r7, #1
	str r7, [r6]
	add r8, fp, #-84
	mov r9, #1
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #2
	str r6, [r5]
	add r7, fp, #-84
	mov r9, #2
	mov r10, #4
	mul r8, r9, r10
	add r4, r7, r8
	mov r5, #0
	str r5, [r4]
	add r6, fp, #-84
	mov r9, #3
	mov r10, #4
	mul r7, r9, r10
	add r8, r6, r7
	mov r4, #0
	str r4, [r8]
	add r5, fp, #-84
	mov r9, #4
	mov r10, #4
	mul r6, r9, r10
	add r7, r5, r6
	mov r8, #0
	str r8, [r7]
	add r4, fp, #-84
	mov r9, #5
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	add r8, fp, #-84
	mov r9, #6
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	add r7, fp, #-84
	mov r9, #7
	mov r10, #4
	mul r8, r9, r10
	add r4, r7, r8
	mov r5, #0
	str r5, [r4]
	add r6, fp, #-84
	mov r9, #8
	mov r10, #4
	mul r7, r9, r10
	add r8, r6, r7
	mov r4, #0
	str r4, [r8]
	add r5, fp, #-84
	mov r9, #9
	mov r10, #4
	mul r6, r9, r10
	add r7, r5, r6
	mov r8, #0
	str r8, [r7]
	add r4, fp, #-84
	mov r9, #10
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	add r8, fp, #-84
	mov r9, #11
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	add r7, fp, #-84
	mov r9, #12
	mov r10, #4
	mul r8, r9, r10
	add r4, r7, r8
	mov r5, #0
	str r5, [r4]
	add r6, fp, #-84
	mov r9, #13
	mov r10, #4
	mul r7, r9, r10
	add r8, r6, r7
	mov r4, #0
	str r4, [r8]
	add r5, fp, #-84
	mov r9, #14
	mov r10, #4
	mul r6, r9, r10
	add r7, r5, r6
	mov r8, #0
	str r8, [r7]
	add r4, fp, #-84
	mov r9, #15
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	add r8, fp, #-84
	mov r9, #16
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	mov r6, #0
	str r6, [r5]
	add r7, fp, #-84
	mov r9, #17
	mov r10, #4
	mul r8, r9, r10
	add r4, r7, r8
	mov r5, #0
	str r5, [r4]
	add r6, fp, #-84
	mov r9, #18
	mov r10, #4
	mul r7, r9, r10
	add r8, r6, r7
	mov r4, #0
	str r4, [r8]
	add r5, fp, #-84
	mov r9, #19
	mov r10, #4
	mul r6, r9, r10
	add r7, r5, r6
	mov r8, #0
	str r8, [r7]
	mov r4, #0
	str r4, [fp, #-4]
	b .L33
.L33:                               	@ predecessors = .L9, .L37                               	@ successors = .L36, .L37
	ldr r9, [fp, #-88]
	cmp r9, #20
	blt .L37
	b .L36
.L34:                               	@ predecessors = .L36
	ldr r10, [fp, #-4]
	mov r0, r10
	b .Lmain_END
.L36:                               	@ predecessors = .L33                               	@ successors = .L34
	b .L34
.L37:                               	@ predecessors = .L33                               	@ successors = .L33
	ldr r5, [fp, #-88]
	add r6, fp, #-84
	mov r7, #4
	mul r8, r5, r7
	add r4, r6, r8
	ldr r9, [r4]
	ldr r10, [fp, #-88]
	sub r5, r10, #1
	add r7, fp, #-84
	mov r6, #4
	mul r8, r5, r6
	add r4, r7, r8
	ldr r10, [r4]
	add r5, r9, r10
	ldr r6, [fp, #-88]
	sub r7, r6, #2
	add r8, fp, #-84
	mov r4, #4
	mul r9, r7, r4
	add r10, r8, r9
	ldr r6, [r10]
	add r7, r5, r6
	ldr r4, [fp, #-88]
	add r8, fp, #-84
	mov r9, #4
	mul r10, r4, r9
	add r5, r8, r10
	str r7, [r5]
	ldr r6, [fp, #-4]
	ldr r4, [fp, #-88]
	add r9, fp, #-84
	mov r8, #4
	mul r10, r4, r8
	add r7, r9, r10
	ldr r5, [r7]
	add r4, r6, r5
	str r4, [fp, #-4]
	ldr r8, [fp, #-88]
	add r9, fp, #-84
	mov r10, #4
	mul r7, r8, r10
	add r6, r9, r7
	ldr r5, [r6]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [fp, #-88]
	add r8, r4, #1
	str r8, [fp, #-88]
	b .L33
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

