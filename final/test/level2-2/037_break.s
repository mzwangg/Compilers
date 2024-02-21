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
.L4:                               	@ successors = .L7
	mov r4, #0
	str r4, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L7
.L7:                               	@ predecessors = .L4, .L12                               	@ successors = .L10, .L11
	ldr r6, [fp, #-8]
	cmp r6, #100
	blt .L11
	b .L10
.L8:                               	@ predecessors = .L10, .L15
	ldr r7, [fp, #-4]
	mov r0, r7
	b .Lmain_END
.L10:                               	@ predecessors = .L7                               	@ successors = .L8
	b .L8
.L11:                               	@ predecessors = .L7                               	@ successors = .L14, .L15
	ldr r8, [fp, #-8]
	cmp r8, #50
	beq .L15
	b .L14
.L12:                               	@ predecessors = .L14, .L16                               	@ successors = .L7
	ldr r9, [fp, #-4]
	ldr r10, [fp, #-8]
	add r4, r9, r10
	str r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r5, #1
	str r6, [fp, #-8]
	b .L7
.L14:                               	@ predecessors = .L11                               	@ successors = .L12
	b .L12
.L15:                               	@ predecessors = .L11                               	@ successors = .L8
	b .L8
.L16:                               	@ successors = .L12
	b .L12
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

