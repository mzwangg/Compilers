	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #76
.L16:                               	@ successors = .L20
	mov r4, #0
	str r4, [fp, #-72]
	mov r5, #0
	str r5, [fp, #-76]
	b .L20
.L20:                               	@ predecessors = .L16, .L24                               	@ successors = .L23, .L24
	ldr r6, [fp, #-76]
	cmp r6, #10
	blt .L24
	b .L23
.L21:                               	@ predecessors = .L23                               	@ successors = .L39
	mov r7, #10
	str r7, [fp, #-12]
	bl getint
	mov r8, r0
	str r8, [fp, #-28]
	ldr r9, [fp, #-12]
	sub r10, r9, #1
	str r10, [fp, #-24]
	mov r4, #0
	str r4, [fp, #-20]
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-20]
	add r7, r5, r6
	mov r8, #2
	sdiv r9, r7, r8
	str r9, [fp, #-16]
	mov r10, #0
	str r10, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-76]
	mov r5, #0
	str r5, [fp, #-4]
	b .L39
.L23:                               	@ predecessors = .L20                               	@ successors = .L21
	b .L21
.L24:                               	@ predecessors = .L20                               	@ successors = .L20
	ldr r6, [fp, #-76]
	add r7, r6, #1
	ldr r8, [fp, #-76]
	add r9, fp, #-68
	mov r10, #4
	mul r4, r8, r10
	add r5, r9, r4
	str r7, [r5]
	ldr r6, [fp, #-76]
	add r8, r6, #1
	str r8, [fp, #-76]
	b .L20
.L39:                               	@ predecessors = .L21, .L47                               	@ successors = .L42, .L43
	ldr r10, [fp, #-76]
	cmp r10, #10
	blt .L43
	b .L42
.L40:                               	@ predecessors = .L42, .L45                               	@ successors = .L58, .L59
	ldr r9, [fp, #-8]
	cmp r9, #1
	beq .L59
	b .L58
.L42:                               	@ predecessors = .L39                               	@ successors = .L40
	b .L40
.L43:                               	@ predecessors = .L39                               	@ successors = .L45, .L46
	ldr r4, [fp, #-8]
	cmp r4, #0
	beq .L46
	b .L45
.L45:                               	@ predecessors = .L43                               	@ successors = .L40
	b .L40
.L46:                               	@ predecessors = .L43                               	@ successors = .L52, .L53
	ldr r7, [fp, #-76]
	add r5, fp, #-68
	mov r6, #4
	mul r8, r7, r6
	add r10, r5, r8
	ldr r9, [r10]
	ldr r4, [fp, #-28]
	cmp r9, r4
	beq .L53
	b .L52
.L47:                               	@ predecessors = .L52, .L53                               	@ successors = .L39
	ldr r7, [fp, #-76]
	add r6, r7, #1
	str r6, [fp, #-76]
	b .L39
.L52:                               	@ predecessors = .L46                               	@ successors = .L47
	b .L47
.L53:                               	@ predecessors = .L46                               	@ successors = .L47
	mov r5, #1
	str r5, [fp, #-8]
	ldr r8, [fp, #-76]
	str r8, [fp, #-4]
	b .L47
.L56:                               	@ predecessors = .L59, .L61
	mov r10, #10
	str r10, [fp, #-28]
	ldr r9, [fp, #-28]
	mov r0, r9
	bl putch
	mov r0, #0
	b .Lmain_END
.L58:                               	@ predecessors = .L40                               	@ successors = .L61
	b .L61
.L59:                               	@ predecessors = .L40                               	@ successors = .L56
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	b .L56
.L61:                               	@ predecessors = .L58                               	@ successors = .L56
	mov r7, #0
	str r7, [fp, #-28]
	ldr r6, [fp, #-28]
	mov r0, r6
	bl putint
	b .L56
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

