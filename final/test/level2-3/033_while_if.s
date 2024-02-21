	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global get_one
	.type get_one , %function
get_one:
	push {fp}
	mov fp, sp
	sub sp, sp, #4
.L11:
	str r0, [fp, #-4]
	mov r0, #1
	mov sp, fp
	pop {fp}
	bx lr

	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L13:                               	@ successors = .L19
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-16]
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L19
.L19:                               	@ predecessors = .L13, .L25                               	@ successors = .L22, .L23
	ldr r7, [fp, #-12]
	cmp r7, #75
	blt .L23
	b .L22
.L20:                               	@ predecessors = .L22
	ldr r8, [fp, #-12]
	mov r0, r8
	b .LdeepWhileBr_END
.L22:                               	@ predecessors = .L19                               	@ successors = .L20
	b .L20
.L23:                               	@ predecessors = .L19                               	@ successors = .L27, .L28
	mov r9, #42
	str r9, [fp, #-8]
	ldr r10, [fp, #-12]
	cmp r10, #100
	blt .L28
	b .L27
.L25:                               	@ predecessors = .L27, .L31                               	@ successors = .L19
	b .L19
.L27:                               	@ predecessors = .L23                               	@ successors = .L25
	b .L25
.L28:                               	@ predecessors = .L23                               	@ successors = .L33, .L34
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	str r6, [fp, #-12]
	ldr r7, [fp, #-12]
	cmp r7, #99
	bgt .L34
	b .L33
.L31:                               	@ predecessors = .L33, .L37                               	@ successors = .L25
	b .L25
.L33:                               	@ predecessors = .L28                               	@ successors = .L31
	b .L31
.L34:                               	@ predecessors = .L28                               	@ successors = .L38, .L39
	ldr r8, [fp, #-8]
	mov r9, #2
	mul r10, r8, r9
	str r10, [fp, #-4]
	mov r0, #0
	bl get_one
	mov r4, r0
	cmp r4, #1
	beq .L39
	b .L38
.L37:                               	@ predecessors = .L38, .L39                               	@ successors = .L31
	b .L31
.L38:                               	@ predecessors = .L34                               	@ successors = .L37
	b .L37
.L39:                               	@ predecessors = .L34                               	@ successors = .L37
	ldr r5, [fp, #-4]
	mov r6, #2
	mul r7, r5, r6
	str r7, [fp, #-12]
	b .L37
.LdeepWhileBr_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L42:
	mov r4, #2
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-4]
	mov r1, r6
	mov r0, r5
	bl deepWhileBr
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putint
	mov r0, #0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp, lr}
	bx lr

