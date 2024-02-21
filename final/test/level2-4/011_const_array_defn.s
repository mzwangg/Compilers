	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 20
a:
	.word 0
	.word 1
	.word 2
	.word 3
	.word 4
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp}
	mov fp, sp
.L0:
	ldr r4, addr_0_a
	mov r5, #4
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	ldr r9, [r8]
	mov r0, r9
	pop {r4, r5, r6, r7, r8, r9, fp}
	bx lr

addr_0_a:
	.word a
