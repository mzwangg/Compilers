	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global b
	.align 4
	.size b, 4
b:
	.word 5
	.global a
	.align 4
	.size a, 4
a:
	.word 3
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp}
	mov fp, sp
	sub sp, sp, #4
.L1:
	mov r4, #5
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r6, addr_0_b
	ldr r7, [r6]
	add r8, r5, r7
	mov r0, r8
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp}
	bx lr

addr_0_b:
	.word b
addr_0_a:
	.word a
