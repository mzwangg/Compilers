	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #8
.L5:                               	@ successors = .L8
	mov r4, #0
	str r4, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L8
.L8:                               	@ predecessors = .L5, .L13, .L16                               	@ successors = .L11, .L12
	ldr r6, [fp, #-8]
	cmp r6, #100
	blt .L12
	b .L11
.L9:                               	@ predecessors = .L11
	ldr r7, [fp, #-4]
	mov r0, r7
	b .Lmain_END
.L11:                               	@ predecessors = .L8                               	@ successors = .L9
	b .L9
.L12:                               	@ predecessors = .L8                               	@ successors = .L15, .L16
	ldr r8, [fp, #-8]
	cmp r8, #50
	beq .L16
	b .L15
.L13:                               	@ predecessors = .L15, .L18                               	@ successors = .L8
	ldr r9, [fp, #-4]
	ldr r10, [fp, #-8]
	add r4, r9, r10
	str r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r5, #1
	str r6, [fp, #-8]
	b .L8
.L15:                               	@ predecessors = .L12                               	@ successors = .L13
	b .L13
.L16:                               	@ predecessors = .L12                               	@ successors = .L8
	ldr r7, [fp, #-8]
	add r8, r7, #1
	str r8, [fp, #-8]
	b .L8
.L18:                               	@ successors = .L13
	b .L13
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

