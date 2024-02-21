	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global dec2bin
	.type dec2bin , %function
dec2bin:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #20
.L9:                               	@ successors = .L16
	str r0, [fp, #-20]
	mov r4, #0
	str r4, [fp, #-16]
	mov r4, #1
	str r4, [fp, #-12]
	ldr r4, [fp, #-20]
	str r4, [fp, #-4]
	b .L16
.L16:                               	@ predecessors = .L9, .L20                               	@ successors = .L19, .L20
	ldr r4, [fp, #-4]
	cmp r4, #0
	bne .L20
	b .L19
.L17:                               	@ predecessors = .L19
	ldr r4, [fp, #-16]
	mov r0, r4
	b .Ldec2bin_END
.L19:                               	@ predecessors = .L16                               	@ successors = .L17
	b .L17
.L20:                               	@ predecessors = .L16                               	@ successors = .L16
	ldr r4, [fp, #-4]
	mov r5, #2
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	str r6, [fp, #-8]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	mul r6, r4, r5
	ldr r4, [fp, #-16]
	add r5, r6, r4
	str r5, [fp, #-16]
	ldr r4, [fp, #-12]
	mov r5, #10
	mul r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-4]
	mov r5, #2
	sdiv r6, r4, r5
	str r6, [fp, #-4]
	b .L16
.Ldec2bin_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L28:
	mov r4, #400
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl dec2bin
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

