	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global if_ifElse_
	.type if_ifElse_ , %function
if_ifElse_:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #8
.L4:                               	@ successors = .L9, .L10
	mov r4, #5
	str r4, [fp, #-8]
	mov r4, #10
	str r4, [fp, #-4]
	ldr r4, [fp, #-8]
	cmp r4, #5
	beq .L10
	b .L9
.L7:                               	@ predecessors = .L9, .L11
	ldr r4, [fp, #-8]
	mov r0, r4
	b .Lif_ifElse__END
.L9:                               	@ predecessors = .L4                               	@ successors = .L7
	b .L7
.L10:                               	@ predecessors = .L4                               	@ successors = .L13, .L14
	ldr r4, [fp, #-4]
	cmp r4, #10
	beq .L14
	b .L13
.L11:                               	@ predecessors = .L14, .L15                               	@ successors = .L7
	b .L7
.L13:                               	@ predecessors = .L10                               	@ successors = .L15
	b .L15
.L14:                               	@ predecessors = .L10                               	@ successors = .L11
	mov r4, #25
	str r4, [fp, #-8]
	b .L11
.L15:                               	@ predecessors = .L13                               	@ successors = .L11
	ldr r4, [fp, #-8]
	add r5, r4, #15
	str r5, [fp, #-8]
	b .L11
.Lif_ifElse__END:
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
.L18:
	bl if_ifElse_
	mov r4, r0
	mov r0, r4
	pop {r4, fp, lr}
	bx lr

