	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #160
.L3:
	add r4, fp, #-160
	mov r5, r4
	mov r6, r5
	mov r7, #1
	str r7, [r6]
	add r8, fp, #-160
	mov r9, r8
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #2
	str r7, [r6]
	add r8, fp, #-160
	mov r10, #1
	mov r4, #8
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, r5
	mov r7, #3
	str r7, [r6]
	add r10, fp, #-160
	mov r4, #1
	mov r8, #8
	mul r9, r4, r8
	add r5, r10, r9
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r8, r5, r4
	mov r10, #4
	str r10, [r8]
	add r9, fp, #-160
	mov r6, #2
	mov r7, #8
	mul r5, r6, r7
	add r4, r9, r5
	mov r8, r4
	mov r10, #0
	str r10, [r8]
	add r6, fp, #-160
	mov r7, #2
	mov r9, #8
	mul r5, r7, r9
	add r4, r6, r5
	mov r8, #1
	mov r10, #4
	mul r7, r8, r10
	add r9, r4, r7
	mov r6, #0
	str r6, [r9]
	add r5, fp, #-160
	mov r8, #3
	mov r10, #8
	mul r4, r8, r10
	add r7, r5, r4
	mov r9, r7
	mov r6, #7
	str r6, [r9]
	add r8, fp, #-160
	mov r10, #3
	mov r5, #8
	mul r4, r10, r5
	add r7, r8, r4
	mov r9, #1
	mov r6, #4
	mul r10, r9, r6
	add r5, r7, r10
	mov r8, #0
	str r8, [r5]
	add r4, fp, #-160
	mov r9, #4
	mov r6, #8
	mul r7, r9, r6
	add r10, r4, r7
	mov r5, r10
	mov r8, #0
	str r8, [r5]
	add r9, fp, #-128
	mov r6, r9
	mov r4, r6
	mov r7, #0
	str r7, [r4]
	add r10, fp, #-128
	mov r5, r10
	mov r8, #1
	mov r9, #4
	mul r6, r8, r9
	add r4, r5, r6
	mov r7, #0
	str r7, [r4]
	add r10, fp, #-128
	mov r8, #1
	mov r9, #8
	mul r5, r8, r9
	add r6, r10, r5
	mov r4, r6
	mov r7, #0
	str r7, [r4]
	add r8, fp, #-128
	mov r9, #1
	mov r10, #8
	mul r5, r9, r10
	add r6, r8, r5
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r10, r6, r9
	mov r8, #0
	str r8, [r10]
	add r5, fp, #-128
	mov r4, #2
	mov r7, #8
	mul r6, r4, r7
	add r9, r5, r6
	mov r10, r9
	mov r8, #0
	str r8, [r10]
	add r4, fp, #-128
	mov r7, #2
	mov r5, #8
	mul r6, r7, r5
	add r9, r4, r6
	mov r10, #1
	mov r8, #4
	mul r7, r10, r8
	add r5, r9, r7
	mov r4, #0
	str r4, [r5]
	add r6, fp, #-128
	mov r10, #3
	mov r8, #8
	mul r9, r10, r8
	add r7, r6, r9
	mov r5, r7
	mov r4, #0
	str r4, [r5]
	add r10, fp, #-128
	mov r8, #3
	mov r6, #8
	mul r9, r8, r6
	add r7, r10, r9
	mov r5, #1
	mov r4, #4
	mul r8, r5, r4
	add r6, r7, r8
	mov r10, #0
	str r10, [r6]
	add r9, fp, #-96
	mov r5, r9
	mov r4, r5
	mov r7, #1
	str r7, [r4]
	add r8, fp, #-96
	mov r6, r8
	mov r10, #1
	mov r9, #4
	mul r5, r10, r9
	add r4, r6, r5
	mov r7, #2
	str r7, [r4]
	add r8, fp, #-96
	mov r10, #1
	mov r9, #8
	mul r6, r10, r9
	add r5, r8, r6
	mov r4, r5
	mov r7, #3
	str r7, [r4]
	add r10, fp, #-96
	mov r9, #1
	mov r8, #8
	mul r6, r9, r8
	add r5, r10, r6
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r8, r5, r9
	mov r10, #4
	str r10, [r8]
	add r6, fp, #-96
	mov r4, #2
	mov r7, #8
	mul r5, r4, r7
	add r9, r6, r5
	mov r8, r9
	mov r10, #5
	str r10, [r8]
	add r4, fp, #-96
	mov r7, #2
	mov r6, #8
	mul r5, r7, r6
	add r9, r4, r5
	mov r8, #1
	mov r10, #4
	mul r7, r8, r10
	add r6, r9, r7
	mov r4, #6
	str r4, [r6]
	add r5, fp, #-96
	mov r8, #3
	mov r10, #8
	mul r9, r8, r10
	add r7, r5, r9
	mov r6, r7
	mov r4, #7
	str r4, [r6]
	add r8, fp, #-96
	mov r10, #3
	mov r5, #8
	mul r9, r10, r5
	add r7, r8, r9
	mov r6, #1
	mov r4, #4
	mul r10, r6, r4
	add r5, r7, r10
	mov r8, #8
	str r8, [r5]
	add r9, fp, #-64
	mov r6, r9
	mov r4, r6
	mov r7, #1
	str r7, [r4]
	add r10, fp, #-64
	mov r5, r10
	mov r8, #1
	mov r9, #4
	mul r6, r8, r9
	add r4, r5, r6
	mov r7, #2
	str r7, [r4]
	add r10, fp, #-64
	mov r8, #1
	mov r9, #8
	mul r5, r8, r9
	add r6, r10, r5
	mov r4, r6
	mov r7, #3
	str r7, [r4]
	add r8, fp, #-64
	mov r9, #1
	mov r10, #8
	mul r5, r9, r10
	add r6, r8, r5
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r10, r6, r9
	mov r8, #0
	str r8, [r10]
	add r5, fp, #-64
	mov r4, #2
	mov r7, #8
	mul r6, r4, r7
	add r9, r5, r6
	mov r10, r9
	mov r8, #5
	str r8, [r10]
	add r4, fp, #-64
	mov r7, #2
	mov r5, #8
	mul r6, r7, r5
	add r9, r4, r6
	mov r10, #1
	mov r8, #4
	mul r7, r10, r8
	add r5, r9, r7
	mov r4, #0
	str r4, [r5]
	add r6, fp, #-64
	mov r10, #3
	mov r8, #8
	mul r9, r10, r8
	add r7, r6, r9
	mov r5, r7
	add r4, fp, #-160
	mov r10, #3
	mov r8, #8
	mul r6, r10, r8
	add r9, r4, r6
	mov r7, r9
	ldr r10, [r7]
	str r10, [r5]
	add r8, fp, #-64
	mov r4, #3
	mov r6, #8
	mul r9, r4, r6
	add r7, r8, r9
	mov r5, #1
	mov r10, #4
	mul r4, r5, r10
	add r6, r7, r4
	mov r8, #8
	str r8, [r6]
	add r9, fp, #-32
	mov r5, r9
	mov r10, r5
	mov r7, r10
	add r4, fp, #-64
	mov r6, #2
	mov r8, #8
	b .LiteralPool0
.LTORG
.LiteralPool0:
	mul r9, r6, r8
	add r5, r4, r9
	mov r10, #1
	mov r6, #4
	mul r8, r10, r6
	add r4, r5, r8
	ldr r9, [r4]
	str r9, [r7]
	add r10, fp, #-32
	mov r6, r10
	mov r5, #1
	mov r8, #4
	mul r4, r5, r8
	add r7, r6, r4
	mov r9, r7
	add r10, fp, #-96
	mov r5, #2
	mov r8, #8
	mul r6, r5, r8
	add r4, r10, r6
	mov r7, #1
	mov r5, #4
	mul r8, r7, r5
	add r10, r4, r8
	ldr r6, [r10]
	str r6, [r9]
	add r7, fp, #-32
	mov r5, #1
	mov r4, #8
	mul r8, r5, r4
	add r10, r7, r8
	mov r9, r10
	mov r6, r9
	mov r5, #3
	str r5, [r6]
	add r4, fp, #-32
	mov r7, #1
	mov r8, #8
	mul r10, r7, r8
	add r9, r4, r10
	mov r6, #1
	mov r5, #4
	mul r7, r6, r5
	add r8, r9, r7
	mov r4, r8
	mov r10, #4
	str r10, [r4]
	add r6, fp, #-32
	mov r5, #2
	mov r9, #8
	mul r7, r5, r9
	add r8, r6, r7
	mov r4, r8
	mov r10, r4
	mov r5, #5
	str r5, [r10]
	add r9, fp, #-32
	mov r6, #2
	mov r7, #8
	mul r8, r6, r7
	add r4, r9, r8
	mov r10, #1
	mov r5, #4
	mul r6, r10, r5
	add r7, r4, r6
	mov r9, r7
	mov r8, #6
	str r8, [r9]
	add r10, fp, #-32
	mov r5, #3
	mov r4, #8
	mul r6, r5, r4
	add r7, r10, r6
	mov r9, r7
	mov r8, r9
	mov r5, #7
	str r5, [r8]
	add r4, fp, #-32
	mov r10, #3
	mov r6, #8
	mul r7, r10, r6
	add r9, r4, r7
	mov r8, #1
	mov r5, #4
	mul r10, r8, r5
	add r6, r9, r10
	mov r4, r6
	mov r7, #8
	str r7, [r4]
	add r8, fp, #-32
	mov r5, #3
	mov r9, #8
	mul r10, r5, r9
	add r6, r8, r10
	mov r4, #1
	mov r7, #4
	mul r5, r4, r7
	add r9, r6, r5
	mov r8, r9
	ldr r10, [r8]
	add r4, fp, #-32
	mov r7, r4
	mov r6, r7
	mov r5, r6
	ldr r9, [r5]
	add r8, r10, r9
	add r4, fp, #-32
	mov r7, r4
	mov r6, #1
	mov r5, #4
	mul r10, r6, r5
	add r9, r7, r10
	mov r4, r9
	ldr r6, [r4]
	add r5, r8, r6
	add r7, fp, #-64
	mov r10, #3
	mov r9, #8
	mul r4, r10, r9
	add r8, r7, r4
	mov r6, r8
	ldr r10, [r6]
	add r9, r5, r10
	mov r0, r9
	b .LiteralPool1
.LTORG
.LiteralPool1:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	b .LiteralPool2
.LTORG
.LiteralPool2:
