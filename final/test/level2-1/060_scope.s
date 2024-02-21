	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a
	.align 4
	.size a, 4
a:
	.word 7
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #8
.L10:                               	@ successors = .L17, .L18
	ldr r4, addr_0_a
	ldr r5, [r4]
	str r5, [fp, #-8]
	mov r6, #1
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r8, [fp, #-8]
	cmp r7, r8
	beq .L18
	b .L17
.L14:
	b .Lfunc_END
.L17:                               	@ predecessors = .L10                               	@ successors = .L20
	b .L20
.L18:                               	@ predecessors = .L10
	ldr r9, [fp, #-4]
	add r10, r9, #1
	str r10, [fp, #-4]
	mov r0, #1
	b .Lfunc_END
.L20:                               	@ predecessors = .L17
	mov r0, #0
.Lfunc_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L21:                               	@ successors = .L24
	mov r4, #0
	str r4, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L24
.L24:                               	@ predecessors = .L21, .L29                               	@ successors = .L27, .L28
	ldr r6, [fp, #-4]
	cmp r6, #100
	blt .L28
	b .L27
.L25:                               	@ predecessors = .L27                               	@ successors = .L36, .L37
	ldr r7, [fp, #-8]
	cmp r7, #100
	blt .L37
	b .L36
.L27:                               	@ predecessors = .L24                               	@ successors = .L25
	b .L25
.L28:                               	@ predecessors = .L24                               	@ successors = .L30, .L31
	bl func
	mov r8, r0
	cmp r8, #1
	beq .L31
	b .L30
.L29:                               	@ predecessors = .L30, .L31                               	@ successors = .L24
	ldr r9, [fp, #-4]
	add r10, r9, #1
	str r10, [fp, #-4]
	b .L24
.L30:                               	@ predecessors = .L28                               	@ successors = .L29
	b .L29
.L31:                               	@ predecessors = .L28                               	@ successors = .L29
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L29
.L34:                               	@ predecessors = .L37, .L38
	mov r0, #0
	b .Lmain_END
.L36:                               	@ predecessors = .L25                               	@ successors = .L38
	b .L38
.L37:                               	@ predecessors = .L25                               	@ successors = .L34
	mov r0, #1
	bl putint
	b .L34
.L38:                               	@ predecessors = .L36                               	@ successors = .L34
	mov r0, #0
	bl putint
	b .L34
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_a:
	.word a
