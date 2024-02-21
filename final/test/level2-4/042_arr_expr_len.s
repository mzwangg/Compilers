	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global arr
	.align 4
	.size arr, 24
arr:
	.word 1
	.word 2
	.word 33
	.word 4
	.word 5
	.word 6
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #8
.L3:                               	@ successors = .L6
	mov r4, #0
	str r4, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L6
.L6:                               	@ predecessors = .L3, .L10                               	@ successors = .L9, .L10
	ldr r6, [fp, #-8]
	cmp r6, #6
	blt .L10
	b .L9
.L7:                               	@ predecessors = .L9
	ldr r7, [fp, #-4]
	mov r0, r7
	b .Lmain_END
.L9:                               	@ predecessors = .L6                               	@ successors = .L7
	b .L7
.L10:                               	@ predecessors = .L6                               	@ successors = .L6
	ldr r8, [fp, #-4]
	ldr r9, [fp, #-8]
	ldr r10, addr_0_arr
	mov r4, #4
	mul r5, r9, r4
	add r6, r10, r5
	ldr r7, [r6]
	add r9, r8, r7
	str r9, [fp, #-4]
	ldr r4, [fp, #-8]
	add r10, r4, #1
	str r10, [fp, #-8]
	b .L6
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

addr_0_arr:
	.word arr
