	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global ifElse
	.type ifElse , %function
ifElse:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #4
.L3:                               	@ successors = .L7, .L8
	mov r4, #5
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #5
	beq .L8
	b .L7
.L5:                               	@ predecessors = .L8, .L9
	ldr r4, [fp, #-4]
	mov r0, r4
	b .LifElse_END
.L7:                               	@ predecessors = .L3                               	@ successors = .L9
	b .L9
.L8:                               	@ predecessors = .L3                               	@ successors = .L5
	mov r4, #25
	str r4, [fp, #-4]
	b .L5
.L9:                               	@ predecessors = .L7                               	@ successors = .L5
	ldr r4, [fp, #-4]
	mov r5, #2
	mul r6, r4, r5
	str r6, [fp, #-4]
	b .L5
.LifElse_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
.L12:
	bl ifElse
	mov r4, r0
	mov r0, r4
	pop {r4, fp, lr}
	bx lr

