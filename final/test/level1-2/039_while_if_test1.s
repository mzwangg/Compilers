	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global whileIf
	.type whileIf , %function
whileIf:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #8
.L6:                               	@ successors = .L9
	mov r4, #0
	str r4, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	b .L9
.L9:                               	@ predecessors = .L6, .L14                               	@ successors = .L12, .L13
	ldr r4, [fp, #-8]
	cmp r4, #100
	blt .L13
	b .L12
.L10:                               	@ predecessors = .L12
	ldr r4, [fp, #-4]
	mov r0, r4
	b .LwhileIf_END
.L12:                               	@ predecessors = .L9                               	@ successors = .L10
	b .L10
.L13:                               	@ predecessors = .L9                               	@ successors = .L16, .L17
	ldr r4, [fp, #-8]
	cmp r4, #5
	beq .L17
	b .L16
.L14:                               	@ predecessors = .L17, .L19                               	@ successors = .L9
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L9
.L16:                               	@ predecessors = .L13                               	@ successors = .L18
	b .L18
.L17:                               	@ predecessors = .L13                               	@ successors = .L14
	mov r4, #25
	str r4, [fp, #-4]
	b .L14
.L18:                               	@ predecessors = .L16                               	@ successors = .L21, .L22
	ldr r4, [fp, #-8]
	cmp r4, #10
	beq .L22
	b .L21
.L19:                               	@ predecessors = .L22, .L23                               	@ successors = .L14
	b .L14
.L21:                               	@ predecessors = .L18                               	@ successors = .L23
	b .L23
.L22:                               	@ predecessors = .L18                               	@ successors = .L19
	mov r4, #42
	str r4, [fp, #-4]
	b .L19
.L23:                               	@ predecessors = .L21                               	@ successors = .L19
	ldr r4, [fp, #-8]
	mov r5, #2
	mul r6, r4, r5
	str r6, [fp, #-4]
	b .L19
.LwhileIf_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
.L27:
	bl whileIf
	mov r4, r0
	mov r0, r4
	pop {r4, fp, lr}
	bx lr

