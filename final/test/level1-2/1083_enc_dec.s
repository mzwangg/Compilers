	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global enc
	.type enc , %function
enc:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #4
.L10:                               	@ successors = .L14, .L15
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #25
	bgt .L15
	b .L14
.L12:                               	@ predecessors = .L15, .L17
	ldr r4, [fp, #-4]
	mov r0, r4
	b .Lenc_END
.L14:                               	@ predecessors = .L10                               	@ successors = .L17
	b .L17
.L15:                               	@ predecessors = .L10                               	@ successors = .L12
	ldr r4, [fp, #-4]
	add r5, r4, #60
	str r5, [fp, #-4]
	b .L12
.L17:                               	@ predecessors = .L14                               	@ successors = .L12
	ldr r4, [fp, #-4]
	sub r5, r4, #15
	str r5, [fp, #-4]
	b .L12
.Lenc_END:
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global dec
	.type dec , %function
dec:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #4
.L20:                               	@ successors = .L24, .L25
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #85
	bgt .L25
	b .L24
.L22:                               	@ predecessors = .L25, .L27
	ldr r4, [fp, #-4]
	mov r0, r4
	b .Ldec_END
.L24:                               	@ predecessors = .L20                               	@ successors = .L27
	b .L27
.L25:                               	@ predecessors = .L20                               	@ successors = .L22
	ldr r4, [fp, #-4]
	sub r5, r4, #59
	str r5, [fp, #-4]
	b .L22
.L27:                               	@ predecessors = .L24                               	@ successors = .L22
	ldr r4, [fp, #-4]
	add r5, r4, #14
	str r5, [fp, #-4]
	b .L22
.Ldec_END:
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L30:
	mov r4, #400
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl enc
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl dec
	mov r4, r0
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	mov r4, #10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	mov r0, #0
	mov sp, fp
	pop {r4, fp, lr}
	bx lr

