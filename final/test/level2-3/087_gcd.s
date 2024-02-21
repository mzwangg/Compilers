	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global gcd
	.type gcd , %function
gcd:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L11:                               	@ successors = .L16, .L17
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #0
	beq .L17
	b .L16
.L14:                               	@ predecessors = .L16
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r7, [fp, #-4]
	sdiv r8, r6, r7
	mul r9, r8, r7
	sub r10, r6, r9
	mov r1, r10
	mov r0, r5
	bl gcd
	mov r4, r0
	mov r0, r4
	b .Lgcd_END
.L16:                               	@ predecessors = .L11                               	@ successors = .L14
	b .L14
.L17:                               	@ predecessors = .L11
	ldr r7, [fp, #-8]
	mov r0, r7
.Lgcd_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L22:                               	@ successors = .L24
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	b .L24
.L24:                               	@ predecessors = .L22, .L28                               	@ successors = .L27, .L28
	ldr r5, [fp, #-12]
	cmp r5, #0
	bgt .L28
	b .L27
.L25:                               	@ predecessors = .L27
	mov r0, #0
	b .Lmain_END
.L27:                               	@ predecessors = .L24                               	@ successors = .L25
	b .L25
.L28:                               	@ predecessors = .L24                               	@ successors = .L24
	bl getint
	mov r6, r0
	str r6, [fp, #-8]
	bl getint
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r1, r9
	mov r0, r8
	bl gcd
	mov r10, r0
	mov r0, r10
	bl putint
	mov r0, #10
	bl putch
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-12]
	b .L24
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

