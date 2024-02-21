	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global defn
	.type defn , %function
defn:
	push {fp}
	mov fp, sp
.L1:
	mov r0, #4
	pop {fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L2:
	bl defn
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	mov sp, fp
	pop {r4, fp, lr}
	bx lr

