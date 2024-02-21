	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global doubleWhile
	.type doubleWhile , %function
doubleWhile:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #8
.L6:                               	@ successors = .L9
	mov r4, #5
	str r4, [fp, #-8]
	mov r5, #7
	str r5, [fp, #-4]
	b .L9
.L9:                               	@ predecessors = .L6, .L16                               	@ successors = .L12, .L13
	ldr r6, [fp, #-8]
	cmp r6, #100
	blt .L13
	b .L12
.L10:                               	@ predecessors = .L12
	ldr r7, [fp, #-4]
	mov r0, r7
	b .LdoubleWhile_END
.L12:                               	@ predecessors = .L9                               	@ successors = .L10
	b .L10
.L13:                               	@ predecessors = .L9                               	@ successors = .L15
	ldr r8, [fp, #-8]
	add r9, r8, #30
	str r9, [fp, #-8]
	b .L15
.L15:                               	@ predecessors = .L13, .L19                               	@ successors = .L18, .L19
	ldr r10, [fp, #-4]
	cmp r10, #100
	blt .L19
	b .L18
.L16:                               	@ predecessors = .L18                               	@ successors = .L9
	ldr r4, [fp, #-4]
	sub r5, r4, #100
	str r5, [fp, #-4]
	b .L9
.L18:                               	@ predecessors = .L15                               	@ successors = .L16
	b .L16
.L19:                               	@ predecessors = .L15                               	@ successors = .L15
	ldr r6, [fp, #-4]
	add r7, r6, #6
	str r7, [fp, #-4]
	b .L15
.LdoubleWhile_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
.L23:
	bl doubleWhile
	mov r4, r0
	mov r0, r4
	pop {r4, fp, lr}
	bx lr

