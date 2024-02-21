	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #68
.L19:                               	@ successors = .L23
	mov r4, #0
	str r4, [fp, #-64]
	mov r5, #0
	str r5, [fp, #-68]
	b .L23
.L23:                               	@ predecessors = .L19, .L27                               	@ successors = .L26, .L27
	ldr r6, [fp, #-68]
	cmp r6, #10
	blt .L27
	b .L26
.L24:                               	@ predecessors = .L26                               	@ successors = .L40
	mov r7, #10
	str r7, [fp, #-4]
	bl getint
	mov r8, r0
	str r8, [fp, #-20]
	ldr r9, [fp, #-4]
	sub r10, r9, #1
	str r10, [fp, #-16]
	mov r4, #0
	str r4, [fp, #-12]
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-12]
	add r7, r5, r6
	mov r8, #2
	sdiv r9, r7, r8
	str r9, [fp, #-8]
	b .L40
.L26:                               	@ predecessors = .L23                               	@ successors = .L24
	b .L24
.L27:                               	@ predecessors = .L23                               	@ successors = .L23
	ldr r10, [fp, #-68]
	add r4, r10, #1
	ldr r5, [fp, #-68]
	add r6, fp, #-60
	mov r7, #4
	mul r8, r5, r7
	add r9, r6, r8
	str r4, [r9]
	ldr r10, [fp, #-68]
	add r5, r10, #1
	str r5, [fp, #-68]
	b .L23
.L40:                               	@ predecessors = .L24, .L54                               	@ successors = .L46, .L47
	ldr r7, [fp, #-8]
	add r6, fp, #-60
	mov r8, #4
	mul r4, r7, r8
	add r9, r6, r4
	ldr r10, [r9]
	ldr r5, [fp, #-20]
	cmp r10, r5
	bne .L47
	b .L46
.L41:                               	@ predecessors = .L46, .L50                               	@ successors = .L69, .L70
	ldr r7, [fp, #-20]
	ldr r8, [fp, #-8]
	add r6, fp, #-60
	mov r4, #4
	mul r9, r8, r4
	add r10, r6, r9
	ldr r5, [r10]
	cmp r7, r5
	beq .L70
	b .L69
.L46:                               	@ predecessors = .L40                               	@ successors = .L41
	b .L41
.L47:                               	@ predecessors = .L40                               	@ successors = .L50, .L51
	ldr r8, [fp, #-12]
	ldr r4, [fp, #-16]
	cmp r8, r4
	blt .L51
	b .L50
.L50:                               	@ predecessors = .L47                               	@ successors = .L41
	b .L41
.L51:                               	@ predecessors = .L47                               	@ successors = .L59, .L60
	ldr r6, [fp, #-16]
	ldr r9, [fp, #-12]
	add r10, r6, r9
	mov r7, #2
	sdiv r5, r10, r7
	str r5, [fp, #-8]
	ldr r8, [fp, #-20]
	ldr r4, [fp, #-8]
	add r6, fp, #-60
	mov r9, #4
	mul r10, r4, r9
	add r7, r6, r10
	ldr r5, [r7]
	cmp r8, r5
	blt .L60
	b .L59
.L54:                               	@ predecessors = .L60, .L62                               	@ successors = .L40
	b .L40
.L59:                               	@ predecessors = .L51                               	@ successors = .L62
	b .L62
.L60:                               	@ predecessors = .L51                               	@ successors = .L54
	ldr r4, [fp, #-8]
	sub r9, r4, #1
	str r9, [fp, #-16]
	b .L54
.L62:                               	@ predecessors = .L59                               	@ successors = .L54
	ldr r6, [fp, #-8]
	add r10, r6, #1
	str r10, [fp, #-12]
	b .L54
.L64:                               	@ predecessors = .L70, .L72
	mov r7, #10
	str r7, [fp, #-20]
	ldr r8, [fp, #-20]
	mov r0, r8
	bl putch
	mov r0, #0
	b .Lmain_END
.L69:                               	@ predecessors = .L41                               	@ successors = .L72
	b .L72
.L70:                               	@ predecessors = .L41                               	@ successors = .L64
	ldr r5, [fp, #-20]
	mov r0, r5
	bl putint
	b .L64
.L72:                               	@ predecessors = .L69                               	@ successors = .L64
	mov r4, #0
	str r4, [fp, #-20]
	ldr r9, [fp, #-20]
	mov r0, r9
	bl putint
	b .L64
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

