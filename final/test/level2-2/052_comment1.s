	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #4
.L0:
	mov r4, #5
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

