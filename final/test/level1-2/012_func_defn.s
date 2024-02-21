	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #4
.L2:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L6:
	mov r4, #10
	ldr r5, addr_0_a
	str r4, [r5]
	ldr r4, addr_0_a
	ldr r5, [r4]
	mov r0, r5
	bl func
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr

addr_0_a:
	.word a
