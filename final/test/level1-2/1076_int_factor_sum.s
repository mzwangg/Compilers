	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
	.global newline
	.align 4
	.size newline, 4
newline:
	.word 0
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global factor
	.type factor , %function
factor:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #12
.L7:                               	@ successors = .L11
	str r0, [fp, #-12]
	mov r4, #0
	str r4, [fp, #-4]
	mov r4, #1
	str r4, [fp, #-8]
	b .L11
.L11:                               	@ predecessors = .L7, .L17                               	@ successors = .L15, .L16
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	add r6, r5, #1
	cmp r4, r6
	blt .L16
	b .L15
.L12:                               	@ predecessors = .L15
	ldr r4, [fp, #-4]
	mov r0, r4
	b .Lfactor_END
.L15:                               	@ predecessors = .L11                               	@ successors = .L12
	b .L12
.L16:                               	@ predecessors = .L11                               	@ successors = .L20, .L21
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	sdiv r6, r4, r5
	mul r5, r6, r5
	sub r6, r4, r5
	cmp r6, #0
	beq .L21
	b .L20
.L17:                               	@ predecessors = .L20, .L21                               	@ successors = .L11
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L11
.L20:                               	@ predecessors = .L16                               	@ successors = .L17
	b .L17
.L21:                               	@ predecessors = .L16                               	@ successors = .L17
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	str r6, [fp, #-4]
	b .L17
.Lfactor_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L26:
	mov r4, #4
	ldr r5, addr_0_N
	str r4, [r5]
	mov r4, #10
	ldr r5, addr_0_newline
	str r4, [r5]
	ldr r4, =1478
	str r4, [fp, #-8]
	ldr r4, [fp, #-8]
	mov r0, r4
	bl factor
	mov r4, r0
	mov r0, r4
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr

addr_0_newline:
	.word newline
addr_0_N:
	.word N
