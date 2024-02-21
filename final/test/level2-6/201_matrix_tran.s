	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.global L
	.align 4
	.size L, 4
L:
	.word 0
	.global M
	.align 4
	.size M, 4
M:
	.word 0
	.text
	.global tran
	.type tran , %function
tran:
	push {r4, r5, r6, r7, fp}
	vpush {s5}
	mov fp, sp
	sub sp, sp, #20
.L33:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	str r3, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #36]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #40]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #32]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s5, [r5]
	ldr r4, [fp, #-12]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #32]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #36]
	mov r5, r4
	vstr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #40]
	mov r5, r4
	vstr.32 s5, [r5]
	ldr r4, [fp, #-16]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #36]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s5, [r5]
	ldr r4, [fp, #-12]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #40]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s5, [r5]
	ldr r4, [fp, #-20]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #32]
	mov r5, r4
	vstr.32 s5, [r5]
	mov r0, #0
	mov sp, fp
	vpop {s5}
	pop {r4, r5, r6, r7, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s5, s6}
	mov fp, sp
	sub sp, sp, #140
.L89:                               	@ successors = .L100
	mov r4, #3
	ldr r5, addr_0_N
	str r4, [r5]
	mov r4, #3
	ldr r5, addr_0_M
	str r4, [r5]
	mov r4, #3
	ldr r5, addr_0_L
	str r4, [r5]
	mov r4, #0
	str r4, [fp, #-8]
	b .L100
.L100:                               	@ predecessors = .L89, .L105                               	@ successors = .L104, .L105
	ldr r4, [fp, #-8]
	ldr r5, addr_0_M
	ldr r6, [r5]
	cmp r4, r6
	blt .L105
	b .L104
.L101:                               	@ predecessors = .L104                               	@ successors = .L135
	add r4, fp, #-128
	mov r5, r4
	str r5, [fp, #-132]
	add r4, fp, #-116
	mov r5, r4
	str r5, [fp, #-136]
	add r4, fp, #-104
	mov r5, r4
	str r5, [fp, #-140]
	add r4, fp, #-92
	mov r5, r4
	add r4, fp, #-80
	mov r6, r4
	add r4, fp, #-68
	mov r7, r4
	add r4, fp, #-56
	mov r8, r4
	add r4, fp, #-32
	mov r9, r4
	add r4, fp, #-20
	mov r10, r4
	push {r10}
	push {r9}
	push {r8}
	push {r7}
	push {r6}
	mov r3, r5
	ldr r4, [fp, #-140]
	mov r2, r4
	ldr r4, [fp, #-136]
	mov r1, r4
	ldr r4, [fp, #-132]
	mov r0, r4
	bl tran
	add sp, sp, #20
	mov r4, r0
	str r4, [fp, #-8]
	b .L135
.L104:                               	@ predecessors = .L100                               	@ successors = .L101
	b .L101
.L105:                               	@ predecessors = .L100                               	@ successors = .L100
	ldr r4, [fp, #-8]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	ldr r4, [fp, #-8]
	add r5, fp, #-128
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s5, [r4]
	ldr r4, [fp, #-8]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	ldr r4, [fp, #-8]
	add r5, fp, #-116
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s5, [r4]
	ldr r4, [fp, #-8]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	ldr r4, [fp, #-8]
	add r5, fp, #-104
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s5, [r4]
	ldr r4, [fp, #-8]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	ldr r4, [fp, #-8]
	add r5, fp, #-92
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s5, [r4]
	ldr r4, [fp, #-8]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	ldr r4, [fp, #-8]
	add r5, fp, #-80
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s5, [r4]
	ldr r4, [fp, #-8]
	vmov s5, r4
	vcvt.f32.s32 s5, s5
	ldr r4, [fp, #-8]
	add r5, fp, #-68
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vstr.32 s5, [r4]
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L100
.L135:                               	@ predecessors = .L101, .L140                               	@ successors = .L139, .L140
	ldr r4, [fp, #-8]
	ldr r5, addr_0_N
	ldr r6, [r5]
	cmp r4, r6
	blt .L140
	b .L139
.L136:                               	@ predecessors = .L139                               	@ successors = .L147
	mov r4, #10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	mov r4, #0
	str r4, [fp, #-8]
	b .L147
.L139:                               	@ predecessors = .L135                               	@ successors = .L136
	b .L136
.L140:                               	@ predecessors = .L135                               	@ successors = .L135
	ldr r4, [fp, #-8]
	add r5, fp, #-56
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	vcvt.s32.f32 s6, s5
	vmov r4, s6
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L135
.L147:                               	@ predecessors = .L136, .L152                               	@ successors = .L151, .L152
	ldr r4, [fp, #-8]
	ldr r5, addr_0_N
	ldr r6, [r5]
	cmp r4, r6
	blt .L152
	b .L151
.L148:                               	@ predecessors = .L151                               	@ successors = .L159
	mov r4, #10
	str r4, [fp, #-4]
	mov r4, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	b .L159
.L151:                               	@ predecessors = .L147                               	@ successors = .L148
	b .L148
.L152:                               	@ predecessors = .L147                               	@ successors = .L147
	ldr r4, [fp, #-8]
	add r5, fp, #-32
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	vcvt.s32.f32 s6, s5
	vmov r4, s6
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L147
.L159:                               	@ predecessors = .L148, .L164                               	@ successors = .L163, .L164
	ldr r4, [fp, #-8]
	ldr r5, addr_0_N
	ldr r6, [r5]
	cmp r4, r6
	blt .L164
	b .L163
.L160:                               	@ predecessors = .L163
	mov r4, #10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	mov r0, #0
	b .Lmain_END
.L163:                               	@ predecessors = .L159                               	@ successors = .L160
	b .L160
.L164:                               	@ predecessors = .L159                               	@ successors = .L159
	ldr r4, [fp, #-8]
	add r5, fp, #-20
	mov r6, #4
	mul r7, r4, r6
	add r4, r5, r7
	vldr.32 s5, [r4]
	vcvt.s32.f32 s6, s5
	vmov r4, s6
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putint
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L159
.Lmain_END:
	mov sp, fp
	vpop {s5, s6}
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
addr_0_N:
	.word N
addr_0_L:
	.word L
addr_0_M:
	.word M
.LiteralPool0:
addr_1_N:
	.word N
addr_1_L:
	.word L
addr_1_M:
	.word M
