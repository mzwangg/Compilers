	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
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
	.global N
	.align 4
	.size N, 4
N:
	.word 0
	.text
	.global sub
	.type sub , %function
sub:
	push {r4, r5, r6, r7, fp}
	vpush {s5, s6, s7}
	mov fp, sp
	sub sp, sp, #20
.L38:                               	@ successors = .L49
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	str r3, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	b .L49
.L49:                               	@ predecessors = .L38, .L53                               	@ successors = .L52, .L53
	ldr r4, [fp, #-4]
	cmp r4, #3
	blt .L53
	b .L52
.L50:                               	@ predecessors = .L52
	mov r0, #0
	b .Lsub_END
.L52:                               	@ predecessors = .L49                               	@ successors = .L50
	b .L50
.L53:                               	@ predecessors = .L49                               	@ successors = .L49
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vsub.f32 s7, s5, s6
	ldr r4, [fp, #40]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s7, [r5]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #32]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vsub.f32 s7, s5, s6
	ldr r4, [fp, #44]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s7, [r5]
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #36]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vsub.f32 s7, s5, s6
	ldr r4, [fp, #48]
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s7, [r5]
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L49
.Lsub_END:
	mov sp, fp
	vpop {s5, s6, s7}
	pop {r4, r5, r6, r7, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s5, s6}
	mov fp, sp
	sub sp, sp, #140
.L88:                               	@ successors = .L99
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
	b .L99
.L99:                               	@ predecessors = .L88, .L103                               	@ successors = .L102, .L103
	ldr r4, [fp, #-8]
	cmp r4, #3
	blt .L103
	b .L102
.L100:                               	@ predecessors = .L102                               	@ successors = .L133
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
	bl sub
	add sp, sp, #20
	mov r4, r0
	str r4, [fp, #-8]
	b .L133
.L102:                               	@ predecessors = .L99                               	@ successors = .L100
	b .L100
.L103:                               	@ predecessors = .L99                               	@ successors = .L99
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
	b .L99
.L133:                               	@ predecessors = .L100, .L137                               	@ successors = .L136, .L137
	ldr r4, [fp, #-8]
	cmp r4, #3
	blt .L137
	b .L136
.L134:                               	@ predecessors = .L136                               	@ successors = .L144
	mov r4, #10
	str r4, [fp, #-4]
	mov r4, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	b .L144
.L136:                               	@ predecessors = .L133                               	@ successors = .L134
	b .L134
.L137:                               	@ predecessors = .L133                               	@ successors = .L133
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
	b .L133
.L144:                               	@ predecessors = .L134, .L148                               	@ successors = .L147, .L148
	ldr r4, [fp, #-8]
	cmp r4, #3
	blt .L148
	b .L147
.L145:                               	@ predecessors = .L147                               	@ successors = .L155
	mov r4, #10
	str r4, [fp, #-4]
	mov r4, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	b .L155
.L147:                               	@ predecessors = .L144                               	@ successors = .L145
	b .L145
.L148:                               	@ predecessors = .L144                               	@ successors = .L144
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
	b .L144
.L155:                               	@ predecessors = .L145, .L159                               	@ successors = .L158, .L159
	ldr r4, [fp, #-8]
	cmp r4, #3
	blt .L159
	b .L158
.L156:                               	@ predecessors = .L158
	mov r4, #10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	mov r0, #0
	b .Lmain_END
.L158:                               	@ predecessors = .L155                               	@ successors = .L156
	b .L156
.L159:                               	@ predecessors = .L155                               	@ successors = .L155
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
	b .L155
.Lmain_END:
	mov sp, fp
	vpop {s5, s6}
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_L:
	.word L
addr_0_M:
	.word M
addr_0_N:
	.word N
