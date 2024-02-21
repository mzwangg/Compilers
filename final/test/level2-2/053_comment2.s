	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #8
.L0:
	mov r4, #10
	str r4, [fp, #-8]
	mov r5, #2
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

