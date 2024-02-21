	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm	a, 400, 4
	.text
	.global main
	.type main , %function
main:
	push {fp}
	mov fp, sp
.L0:
	mov r0, #0
	pop {fp}
	bx lr

addr_0_a:
	.word a
