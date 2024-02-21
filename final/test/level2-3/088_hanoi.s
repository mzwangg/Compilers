	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global move
	.type move , %function
move:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L18:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	mov r0, #44
	bl putch
	mov r0, #32
	bl putch
	b .Lmove_END
.Lmove_END:
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr

	.global hanoi
	.type hanoi , %function
hanoi:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L23:                               	@ successors = .L30, .L31
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-16]
	cmp r4, #1
	beq .L31
	b .L30
.L28:                               	@ predecessors = .L31, .L34
	b .Lhanoi_END
.L30:                               	@ predecessors = .L23                               	@ successors = .L34
	b .L34
.L31:                               	@ predecessors = .L23                               	@ successors = .L28
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-4]
	mov r1, r6
	mov r0, r5
	bl move
	b .L28
.L34:                               	@ predecessors = .L30                               	@ successors = .L28
	ldr r7, [fp, #-16]
	sub r8, r7, #1
	ldr r9, [fp, #-12]
	ldr r10, [fp, #-4]
	ldr r4, [fp, #-8]
	mov r3, r4
	mov r2, r10
	mov r1, r9
	mov r0, r8
	bl hanoi
	ldr r6, [fp, #-12]
	ldr r5, [fp, #-4]
	mov r1, r5
	mov r0, r6
	bl move
	ldr r7, [fp, #-16]
	sub r4, r7, #1
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-12]
	ldr r8, [fp, #-4]
	mov r3, r8
	mov r2, r9
	mov r1, r10
	mov r0, r4
	bl hanoi
	b .L28
.Lhanoi_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L45:                               	@ successors = .L47
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	b .L47
.L47:                               	@ predecessors = .L45, .L51                               	@ successors = .L50, .L51
	ldr r5, [fp, #-4]
	cmp r5, #0
	bgt .L51
	b .L50
.L48:                               	@ predecessors = .L50
	mov r0, #0
	b .Lmain_END
.L50:                               	@ predecessors = .L47                               	@ successors = .L48
	b .L48
.L51:                               	@ predecessors = .L47                               	@ successors = .L47
	bl getint
	mov r6, r0
	mov r3, #3
	mov r2, #2
	mov r1, #1
	mov r0, r6
	bl hanoi
	mov r0, #10
	bl putch
	ldr r7, [fp, #-4]
	sub r8, r7, #1
	str r8, [fp, #-4]
	b .L47
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

