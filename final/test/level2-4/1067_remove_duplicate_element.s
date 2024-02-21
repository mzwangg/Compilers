	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global removeElement
	.type removeElement , %function
removeElement:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L7:                               	@ successors = .L12
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	b .L12
.L12:                               	@ predecessors = .L7, .L18                               	@ successors = .L16, .L17
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	cmp r5, r6
	blt .L17
	b .L16
.L13:                               	@ predecessors = .L16
	ldr r7, [fp, #-12]
	mov r0, r7
	b .LremoveElement_END
.L16:                               	@ predecessors = .L12                               	@ successors = .L13
	b .L13
.L17:                               	@ predecessors = .L12                               	@ successors = .L24, .L25
	ldr r8, [fp, #-16]
	ldr r9, [fp, #-4]
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	ldr r6, [r5]
	ldr r7, [fp, #-8]
	cmp r6, r7
	beq .L25
	b .L24
.L18:                               	@ predecessors = .L25, .L34                               	@ successors = .L12
	b .L12
.L24:                               	@ predecessors = .L17                               	@ successors = .L34
	b .L34
.L25:                               	@ predecessors = .L17                               	@ successors = .L18
	ldr r9, [fp, #-16]
	ldr r10, [fp, #-12]
	sub r8, r10, #1
	mov r4, #4
	mul r5, r8, r4
	add r6, r9, r5
	ldr r7, [r6]
	ldr r10, [fp, #-16]
	ldr r8, [fp, #-4]
	mov r4, #4
	mul r9, r8, r4
	add r5, r10, r9
	str r7, [r5]
	ldr r6, [fp, #-12]
	sub r8, r6, #1
	str r8, [fp, #-12]
	b .L18
.L34:                               	@ predecessors = .L24                               	@ successors = .L18
	ldr r4, [fp, #-4]
	add r10, r4, #1
	str r10, [fp, #-4]
	b .L18
.LremoveElement_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L37:
	add r4, fp, #-44
	mov r5, r4
	mov r6, #3
	str r6, [r5]
	add r7, fp, #-44
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #3
	str r5, [r4]
	add r6, fp, #-44
	mov r8, #2
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #9
	str r4, [r10]
	add r5, fp, #-44
	mov r8, #3
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #0
	str r10, [r7]
	add r4, fp, #-44
	mov r8, #4
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	add r10, fp, #-44
	mov r8, #5
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	mov r6, #1
	str r6, [r5]
	add r7, fp, #-44
	mov r8, #6
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #1
	str r5, [r4]
	add r6, fp, #-44
	mov r8, #7
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #5
	str r4, [r10]
	add r5, fp, #-44
	mov r8, #8
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #7
	str r10, [r7]
	add r4, fp, #-44
	mov r8, #9
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #8
	str r7, [r6]
	mov r10, #10
	str r10, [fp, #-48]
	mov r8, #3
	str r8, [fp, #-4]
	add r9, fp, #-44
	mov r4, r9
	ldr r5, [fp, #-48]
	ldr r6, [fp, #-4]
	mov r2, r6
	mov r1, r5
	mov r0, r4
	bl removeElement
	mov r7, r0
	str r7, [fp, #-48]
	ldr r10, [fp, #-48]
	mov r0, r10
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

