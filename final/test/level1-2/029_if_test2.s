	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global ifElseIf
	.type ifElseIf , %function
ifElseIf:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #8
.L13:                               	@ successors = .L18, .L22
	mov r4, #5
	str r4, [fp, #-8]
	mov r4, #10
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #6
	beq .L22
	b .L18
.L16:                               	@ predecessors = .L25
	ldr r4, [fp, #-8]
	mov r0, r4
	b .LifElseIf_END
.L18:                               	@ predecessors = .L13                               	@ successors = .L19
	b .L19
.L19:                               	@ predecessors = .L18                               	@ successors = .L21, .L22
	ldr r4, [fp, #-4]
	cmp r4, #11
	beq .L22
	b .L21
.L21:                               	@ predecessors = .L19                               	@ successors = .L24
	b .L24
.L22:                               	@ predecessors = .L13, .L19
	ldr r4, [fp, #-8]
	mov r0, r4
	b .LifElseIf_END
.L24:                               	@ predecessors = .L21                               	@ successors = .L27, .L28
	ldr r4, [fp, #-4]
	cmp r4, #10
	beq .L28
	b .L27
.L25:                               	@ predecessors = .L31, .L33                               	@ successors = .L16
	b .L16
.L27:                               	@ predecessors = .L24                               	@ successors = .L32
	b .L32
.L28:                               	@ predecessors = .L24                               	@ successors = .L30, .L31
	ldr r4, [fp, #-8]
	cmp r4, #1
	beq .L31
	b .L30
.L30:                               	@ predecessors = .L28                               	@ successors = .L32
	b .L32
.L31:                               	@ predecessors = .L28                               	@ successors = .L25
	mov r4, #25
	str r4, [fp, #-8]
	b .L25
.L32:                               	@ predecessors = .L27, .L30                               	@ successors = .L35, .L36
	ldr r4, [fp, #-4]
	cmp r4, #10
	beq .L36
	b .L35
.L33:                               	@ predecessors = .L39, .L41                               	@ successors = .L25
	b .L25
.L35:                               	@ predecessors = .L32                               	@ successors = .L41
	b .L41
.L36:                               	@ predecessors = .L32                               	@ successors = .L38, .L39
	ldr r4, [fp, #-8]
	cmp r4, #-5
	beq .L39
	b .L38
.L38:                               	@ predecessors = .L36                               	@ successors = .L41
	b .L41
.L39:                               	@ predecessors = .L36                               	@ successors = .L33
	ldr r4, [fp, #-8]
	add r5, r4, #15
	str r5, [fp, #-8]
	b .L33
.L41:                               	@ predecessors = .L35, .L38                               	@ successors = .L33
	ldr r4, [fp, #-8]
	mov r5, #0
	sub r6, r5, r4
	str r6, [fp, #-8]
	b .L33
.LifElseIf_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
.L44:
	bl ifElseIf
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #0
	pop {r4, fp, lr}
	bx lr

