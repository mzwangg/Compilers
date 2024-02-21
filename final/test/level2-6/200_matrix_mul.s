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
	.global mul
	.type mul , %function
mul:
	push {r4, r5, r6, r7, fp}
	vpush {s5, s6, s7, s8}
	mov fp, sp
	sub sp, sp, #20
.L78:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	str r3, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	ldr r4, [fp, #-20]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #-8]
	mov r5, r4
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-20]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #36]
	mov r5, r4
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-20]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #40]
	mov r5, r4
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #44]
	mov r5, r4
	vstr.32 s6, [r5]
	ldr r4, [fp, #-20]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #-8]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-20]
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
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-20]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #40]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #44]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-20]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #-8]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-20]
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
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-20]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #40]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #44]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-16]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #-8]
	mov r5, r4
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-16]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #36]
	mov r5, r4
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-16]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #40]
	mov r5, r4
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #48]
	mov r5, r4
	vstr.32 s6, [r5]
	ldr r4, [fp, #-16]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #-8]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
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
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-16]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #40]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #48]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-16]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #-8]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-16]
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
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-16]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #40]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #48]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-12]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #-8]
	mov r5, r4
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-12]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s5, [r5]
	ldr r4, [fp, #36]
	mov r5, r4
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-12]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #40]
	mov r5, r4
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #52]
	mov r5, r4
	vstr.32 s6, [r5]
	ldr r4, [fp, #-12]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #-8]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
	ldr r4, [fp, #-12]
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
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	b .LiteralPool0
.LTORG
addr_0_N:
	.word N
addr_0_L:
	.word L
addr_0_M:
	.word M
.LiteralPool0:
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-12]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #40]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #52]
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	ldr r4, [fp, #-12]
	mov r5, r4
	vldr.32 s5, [r5]
	ldr r4, [fp, #-8]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	vmul.f32 s7, s5, s6
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
	vldr.32 s6, [r5]
	vmul.f32 s8, s5, s6
	vadd.f32 s5, s7, s8
	ldr r4, [fp, #-12]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s6, [r5]
	ldr r4, [fp, #40]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vldr.32 s7, [r5]
	vmul.f32 s8, s6, s7
	vadd.f32 s6, s5, s8
	ldr r4, [fp, #52]
	mov r5, #2
	mov r6, #4
	mul r7, r5, r6
	add r5, r4, r7
	vstr.32 s6, [r5]
	mov r0, #0
	b .LiteralPool1
.LTORG
addr_1_N:
	.word N
addr_1_L:
	.word L
addr_1_M:
	.word M
.LiteralPool1:
	mov sp, fp
	vpop {s5, s6, s7, s8}
	pop {r4, r5, r6, r7, fp}
	bx lr

	b .LiteralPool2
.LTORG
addr_2_N:
	.word N
addr_2_L:
	.word L
addr_2_M:
	.word M
.LiteralPool2:
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vpush {s5, s6}
	mov fp, sp
	sub sp, sp, #140
.L269:                               	@ successors = .L280
	mov r4, #3
	ldr r5, addr_3_N
	str r4, [r5]
	mov r4, #3
	ldr r5, addr_3_M
	str r4, [r5]
	mov r4, #3
	ldr r5, addr_3_L
	str r4, [r5]
	mov r4, #0
	str r4, [fp, #-8]
	b .L280
.L280:                               	@ predecessors = .L269, .L285                               	@ successors = .L284, .L285
	ldr r4, [fp, #-8]
	ldr r5, addr_3_M
	ldr r6, [r5]
	cmp r4, r6
	blt .L285
	b .L284
.L281:                               	@ predecessors = .L284                               	@ successors = .L315
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
	bl mul
	add sp, sp, #20
	mov r4, r0
	str r4, [fp, #-8]
	b .L315
.L284:                               	@ predecessors = .L280                               	@ successors = .L281
	b .L281
.L285:                               	@ predecessors = .L280                               	@ successors = .L280
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
	b .L280
.L315:                               	@ predecessors = .L281, .L320                               	@ successors = .L319, .L320
	ldr r4, [fp, #-8]
	ldr r5, addr_3_N
	ldr r6, [r5]
	cmp r4, r6
	blt .L320
	b .L319
.L316:                               	@ predecessors = .L319                               	@ successors = .L327
	mov r4, #10
	str r4, [fp, #-4]
	mov r4, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	b .L327
.L319:                               	@ predecessors = .L315                               	@ successors = .L316
	b .L316
.L320:                               	@ predecessors = .L315                               	@ successors = .L315
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
	b .L315
.L327:                               	@ predecessors = .L316, .L332                               	@ successors = .L331, .L332
	ldr r4, [fp, #-8]
	ldr r5, addr_3_N
	ldr r6, [r5]
	cmp r4, r6
	blt .L332
	b .L331
.L328:                               	@ predecessors = .L331                               	@ successors = .L339
	mov r4, #10
	str r4, [fp, #-4]
	mov r4, #0
	str r4, [fp, #-8]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	b .L339
.L331:                               	@ predecessors = .L327                               	@ successors = .L328
	b .L328
.L332:                               	@ predecessors = .L327                               	@ successors = .L327
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
	b .L327
.L339:                               	@ predecessors = .L328, .L344                               	@ successors = .L343, .L344
	ldr r4, [fp, #-8]
	ldr r5, addr_3_N
	ldr r6, [r5]
	cmp r4, r6
	blt .L344
	b .L343
.L340:                               	@ predecessors = .L343
	mov r4, #10
	str r4, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	mov r0, #0
	b .Lmain_END
.L343:                               	@ predecessors = .L339                               	@ successors = .L340
	b .L340
.L344:                               	@ predecessors = .L339                               	@ successors = .L339
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
	b .L339
.Lmain_END:
	mov sp, fp
	vpop {s5, s6}
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_3_N:
	.word N
addr_3_L:
	.word L
addr_3_M:
	.word M
