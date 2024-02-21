	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global b
	.align 4
	.size b, 4
b:
	.word 1
	.global a
	.align 4
	.size a, 4
a:
	.word -1
	.text
	.global inc_a
	.type inc_a , %function
inc_a:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #4
.L34:
	ldr r4, addr_0_a
	ldr r5, [r4]
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	add r7, r6, #1
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	ldr r9, addr_0_a
	str r8, [r9]
	ldr r10, addr_0_a
	ldr r4, [r10]
	mov r0, r4
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L40:                               	@ successors = .L42
	mov r4, #5
	str r4, [fp, #-4]
	b .L42
.L42:                               	@ predecessors = .L40, .L56                               	@ successors = .L45, .L46
	ldr r5, [fp, #-4]
	cmp r5, #0
	bge .L46
	b .L45
.L43:                               	@ predecessors = .L45
	ldr r6, addr_0_a
	ldr r7, [r6]
	mov r0, r7
	bl putint
	mov r0, #32
	bl putch
	ldr r8, addr_0_b
	ldr r9, [r8]
	mov r0, r9
	bl putint
	mov r0, #10
	bl putch
	ldr r10, addr_0_a
	ldr r4, [r10]
	mov r0, r4
	b .Lmain_END
.L45:                               	@ predecessors = .L42                               	@ successors = .L43
	b .L43
.L46:                               	@ predecessors = .L42                               	@ successors = .L48, .L49
	bl inc_a
	mov r5, r0
	cmp r5, #0
	bne .L49
	b .L48
.L47:                               	@ predecessors = .L48, .L50, .L52, .L53                               	@ successors = .L57, .L62
	bl inc_a
	mov r6, r0
	cmp r6, #14
	blt .L62
	b .L57
.L48:                               	@ predecessors = .L46                               	@ successors = .L47
	b .L47
.L49:                               	@ predecessors = .L46                               	@ successors = .L50, .L51
	bl inc_a
	mov r7, r0
	cmp r7, #0
	bne .L51
	b .L50
.L50:                               	@ predecessors = .L49                               	@ successors = .L47
	b .L47
.L51:                               	@ predecessors = .L49                               	@ successors = .L52, .L53
	bl inc_a
	mov r8, r0
	cmp r8, #0
	bne .L53
	b .L52
.L52:                               	@ predecessors = .L51                               	@ successors = .L47
	b .L47
.L53:                               	@ predecessors = .L51                               	@ successors = .L47
	ldr r9, addr_0_a
	ldr r10, [r9]
	mov r0, r10
	bl putint
	mov r0, #32
	bl putch
	ldr r4, addr_0_b
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	b .L47
.L56:                               	@ predecessors = .L62, .L65                               	@ successors = .L42
	ldr r6, [fp, #-4]
	sub r7, r6, #1
	str r7, [fp, #-4]
	b .L42
.L57:                               	@ predecessors = .L47                               	@ successors = .L58
	b .L58
.L58:                               	@ predecessors = .L57                               	@ successors = .L59, .L60
	bl inc_a
	mov r8, r0
	cmp r8, #0
	bne .L60
	b .L59
.L59:                               	@ predecessors = .L58                               	@ successors = .L65
	b .L65
.L60:                               	@ predecessors = .L58                               	@ successors = .L61, .L62
	bl inc_a
	mov r9, r0
	bl inc_a
	mov r10, r0
	sub r4, r9, r10
	add r5, r4, #1
	cmp r5, #0
	bne .L62
	b .L61
.L61:                               	@ predecessors = .L60                               	@ successors = .L65
	b .L65
.L62:                               	@ predecessors = .L47, .L60                               	@ successors = .L56
	ldr r6, addr_0_a
	ldr r7, [r6]
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	ldr r8, addr_0_b
	ldr r9, [r8]
	mov r10, #2
	mul r4, r9, r10
	ldr r5, addr_0_b
	str r4, [r5]
	b .L56
.L65:                               	@ predecessors = .L59, .L61                               	@ successors = .L56
	bl inc_a
	mov r6, r0
	b .L56
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_b:
	.word b
addr_0_a:
	.word a
