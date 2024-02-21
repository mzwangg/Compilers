	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global fun
	.type fun , %function
fun:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #12
.L6:                               	@ successors = .L10
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	b .L10
.L10:                               	@ predecessors = .L6, .L14                               	@ successors = .L13, .L14
	ldr r4, [fp, #-8]
	cmp r4, #0
	bgt .L14
	b .L13
.L11:                               	@ predecessors = .L13
	ldr r4, [fp, #-12]
	mov r0, r4
	b .Lfun_END
.L13:                               	@ predecessors = .L10                               	@ successors = .L11
	b .L11
.L14:                               	@ predecessors = .L10                               	@ successors = .L10
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-4]
	ldr r4, [fp, #-8]
	str r4, [fp, #-12]
	ldr r4, [fp, #-4]
	str r4, [fp, #-8]
	b .L10
.Lfun_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L20:
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	mov r1, r5
	mov r0, r4
	bl fun
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r0, #0
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr

