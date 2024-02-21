	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global palindrome
	.type palindrome , %function
palindrome:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #28
.L12:                               	@ successors = .L17
	str r0, [fp, #-28]
	mov r4, #0
	str r4, [fp, #-8]
	b .L17
.L17:                               	@ predecessors = .L12, .L21                               	@ successors = .L20, .L21
	ldr r5, [fp, #-8]
	cmp r5, #4
	blt .L21
	b .L20
.L18:                               	@ predecessors = .L20                               	@ successors = .L32, .L33
	add r6, fp, #-24
	mov r7, r6
	ldr r8, [r7]
	add r9, fp, #-24
	mov r10, #3
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	ldr r7, [r6]
	cmp r8, r7
	beq .L33
	b .L32
.L20:                               	@ predecessors = .L17                               	@ successors = .L18
	b .L18
.L21:                               	@ predecessors = .L17                               	@ successors = .L17
	ldr r10, [fp, #-28]
	mov r4, #10
	sdiv r9, r10, r4
	mul r5, r9, r4
	sub r6, r10, r5
	ldr r8, [fp, #-8]
	add r7, fp, #-24
	mov r4, #4
	mul r9, r8, r4
	add r10, r7, r9
	str r6, [r10]
	ldr r5, [fp, #-28]
	mov r8, #10
	sdiv r4, r5, r8
	str r4, [fp, #-28]
	ldr r7, [fp, #-8]
	add r9, r7, #1
	str r9, [fp, #-8]
	b .L17
.L27:                               	@ predecessors = .L39, .L40
	ldr r6, [fp, #-4]
	mov r0, r6
	b .Lpalindrome_END
.L32:                               	@ predecessors = .L18                               	@ successors = .L40
	b .L40
.L33:                               	@ predecessors = .L18                               	@ successors = .L38, .L39
	add r10, fp, #-24
	mov r5, #1
	mov r8, #4
	mul r4, r5, r8
	add r7, r10, r4
	ldr r9, [r7]
	add r6, fp, #-24
	mov r5, #2
	mov r8, #4
	mul r10, r5, r8
	add r4, r6, r10
	ldr r7, [r4]
	cmp r9, r7
	beq .L39
	b .L38
.L38:                               	@ predecessors = .L33                               	@ successors = .L40
	b .L40
.L39:                               	@ predecessors = .L33                               	@ successors = .L27
	mov r5, #1
	str r5, [fp, #-4]
	b .L27
.L40:                               	@ predecessors = .L32, .L38                               	@ successors = .L27
	mov r8, #0
	str r8, [fp, #-4]
	b .L27
.Lpalindrome_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L42:                               	@ successors = .L48, .L49
	ldr r4, =1221
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r0, r5
	bl palindrome
	mov r6, r0
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	cmp r7, #1
	beq .L49
	b .L48
.L46:                               	@ predecessors = .L49, .L51
	mov r8, #10
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putch
	mov r0, #0
	b .Lmain_END
.L48:                               	@ predecessors = .L42                               	@ successors = .L51
	b .L51
.L49:                               	@ predecessors = .L42                               	@ successors = .L46
	ldr r10, [fp, #-8]
	mov r0, r10
	bl putint
	b .L46
.L51:                               	@ predecessors = .L48                               	@ successors = .L46
	mov r4, #0
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	b .L46
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

