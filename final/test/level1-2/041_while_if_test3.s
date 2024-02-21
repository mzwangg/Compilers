	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.text
	.global deepWhileBr
	.type deepWhileBr , %function
deepWhileBr:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #20
.L8:                               	@ successors = .L14
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-16]
	add r6, r4, r5
	str r6, [fp, #-12]
	b .L14
.L14:                               	@ predecessors = .L8, .L20                               	@ successors = .L17, .L18
	ldr r4, [fp, #-12]
	cmp r4, #75
	blt .L18
	b .L17
.L15:                               	@ predecessors = .L17
	ldr r4, [fp, #-12]
	mov r0, r4
	b .LdeepWhileBr_END
.L17:                               	@ predecessors = .L14                               	@ successors = .L15
	b .L15
.L18:                               	@ predecessors = .L14                               	@ successors = .L22, .L23
	mov r4, #42
	str r4, [fp, #-8]
	ldr r4, [fp, #-12]
	cmp r4, #100
	blt .L23
	b .L22
.L20:                               	@ predecessors = .L22, .L26                               	@ successors = .L14
	b .L14
.L22:                               	@ predecessors = .L18                               	@ successors = .L20
	b .L20
.L23:                               	@ predecessors = .L18                               	@ successors = .L28, .L29
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-8]
	add r6, r4, r5
	str r6, [fp, #-12]
	ldr r4, [fp, #-12]
	cmp r4, #99
	bgt .L29
	b .L28
.L26:                               	@ predecessors = .L28, .L32                               	@ successors = .L20
	b .L20
.L28:                               	@ predecessors = .L23                               	@ successors = .L26
	b .L26
.L29:                               	@ predecessors = .L23                               	@ successors = .L33
	ldr r4, [fp, #-8]
	mov r5, #2
	mul r6, r4, r5
	str r6, [fp, #-4]
	b .L33
.L32:                               	@ predecessors = .L33                               	@ successors = .L26
	b .L26
.L33:                               	@ predecessors = .L29                               	@ successors = .L32
	ldr r4, [fp, #-4]
	mov r5, #2
	mul r6, r4, r5
	str r6, [fp, #-12]
	b .L32
.LdeepWhileBr_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L36:
	mov r4, #2
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r1, r5
	mov r0, r4
	bl deepWhileBr
	mov r4, r0
	mov r0, r4
	mov sp, fp
	pop {r4, r5, fp, lr}
	bx lr

