	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global f
	.type f , %function
f:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #8
.L9:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mul r6, r4, r5
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global g
	.type g , %function
g:
	push {r4, r5, r6, r7, r8, fp}
	mov fp, sp
	sub sp, sp, #8
.L14:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	sdiv r6, r4, r5
	mul r7, r6, r5
	sub r8, r4, r7
	mov r0, r8
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp}
	bx lr

	.global h
	.type h , %function
h:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L19:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r1, r5
	mov r0, r4
	bl g
	mov r6, r0
	mov r1, r6
	mov r0, #2
	bl f
	mov r7, r0
	ldr r8, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r1, r9
	mov r0, r8
	bl f
	mov r10, r0
	mov r1, #4
	mov r0, r10
	bl g
	mov r5, r0
	mov r1, r5
	mov r0, r7
	bl f
	mov r4, r0
	mov r0, r4
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
.L26:
	mov r1, #3
	mov r0, #11
	bl h
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #0
	pop {r4, fp, lr}
	bx lr

