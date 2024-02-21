	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global reverse
	.type reverse , %function
reverse:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L8:                               	@ successors = .L13, .L14
	str r0, [fp, #-8]
	ldr r4, [fp, #-8]
	cmp r4, #1
	ble .L14
	b .L13
.L11:                               	@ predecessors = .L14, .L16
	b .Lreverse_END
.L13:                               	@ predecessors = .L8                               	@ successors = .L16
	b .L16
.L14:                               	@ predecessors = .L8                               	@ successors = .L11
	bl getint
	mov r5, r0
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	b .L11
.L16:                               	@ predecessors = .L13                               	@ successors = .L11
	bl getint
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-8]
	sub r9, r8, #1
	mov r0, r9
	bl reverse
	ldr r10, [fp, #-4]
	mov r0, r10
	bl putint
	b .L11
.Lreverse_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L19:
	mov r4, #200
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl reverse
	mov r0, #0
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr

