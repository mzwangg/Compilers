	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global FourWhile
	.type FourWhile , %function
FourWhile:
	push {r4, r5, r6, r7, fp}
	mov fp, sp
	sub sp, sp, #16
.L15:                               	@ successors = .L20
	mov r4, #5
	str r4, [fp, #-16]
	mov r4, #6
	str r4, [fp, #-12]
	mov r4, #7
	str r4, [fp, #-8]
	mov r4, #10
	str r4, [fp, #-4]
	b .L20
.L20:                               	@ predecessors = .L15, .L27                               	@ successors = .L23, .L24
	ldr r4, [fp, #-16]
	cmp r4, #20
	blt .L24
	b .L23
.L21:                               	@ predecessors = .L23
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-4]
	add r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	add r6, r5, r4
	mov r0, r6
	b .LFourWhile_END
.L23:                               	@ predecessors = .L20                               	@ successors = .L21
	b .L21
.L24:                               	@ predecessors = .L20                               	@ successors = .L26
	ldr r4, [fp, #-16]
	add r5, r4, #3
	str r5, [fp, #-16]
	b .L26
.L26:                               	@ predecessors = .L24, .L33                               	@ successors = .L29, .L30
	ldr r4, [fp, #-12]
	cmp r4, #10
	blt .L30
	b .L29
.L27:                               	@ predecessors = .L29                               	@ successors = .L20
	ldr r4, [fp, #-12]
	sub r5, r4, #2
	str r5, [fp, #-12]
	b .L20
.L29:                               	@ predecessors = .L26                               	@ successors = .L27
	b .L27
.L30:                               	@ predecessors = .L26                               	@ successors = .L32
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	b .L32
.L32:                               	@ predecessors = .L30, .L39                               	@ successors = .L35, .L36
	ldr r4, [fp, #-8]
	cmp r4, #7
	beq .L36
	b .L35
.L33:                               	@ predecessors = .L35                               	@ successors = .L26
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L26
.L35:                               	@ predecessors = .L32                               	@ successors = .L33
	b .L33
.L36:                               	@ predecessors = .L32                               	@ successors = .L38
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	str r5, [fp, #-8]
	b .L38
.L38:                               	@ predecessors = .L36, .L42                               	@ successors = .L41, .L42
	ldr r4, [fp, #-4]
	cmp r4, #20
	blt .L42
	b .L41
.L39:                               	@ predecessors = .L41                               	@ successors = .L32
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	b .L32
.L41:                               	@ predecessors = .L38                               	@ successors = .L39
	b .L39
.L42:                               	@ predecessors = .L38                               	@ successors = .L38
	ldr r4, [fp, #-4]
	add r5, r4, #3
	str r5, [fp, #-4]
	b .L38
.LFourWhile_END:
	mov sp, fp
	pop {r4, r5, r6, r7, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
.L51:
	bl FourWhile
	mov r4, r0
	mov r0, r4
	pop {r4, fp, lr}
	bx lr

