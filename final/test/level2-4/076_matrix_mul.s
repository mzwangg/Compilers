	.arch armv8-a
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
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #20
.L69:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	str r3, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	ldr r5, [fp, #-20]
	mov r6, r5
	ldr r7, [r6]
	ldr r8, [fp, #-8]
	mov r9, r8
	ldr r10, [r9]
	mul r4, r7, r10
	ldr r5, [fp, #-20]
	mov r6, #1
	mov r8, #4
	mul r9, r6, r8
	add r7, r5, r9
	ldr r10, [r7]
	ldr r6, [fp, #32]
	mov r8, r6
	ldr r5, [r8]
	mul r9, r10, r5
	add r7, r4, r9
	ldr r6, [fp, #-20]
	mov r8, #2
	mov r10, #4
	mul r5, r8, r10
	add r4, r6, r5
	ldr r9, [r4]
	ldr r8, [fp, #36]
	mov r10, r8
	ldr r6, [r10]
	mul r5, r9, r6
	add r4, r7, r5
	ldr r8, [fp, #40]
	mov r10, r8
	str r4, [r10]
	ldr r9, [fp, #-20]
	mov r6, r9
	ldr r7, [r6]
	ldr r5, [fp, #-8]
	mov r8, #1
	mov r4, #4
	mul r10, r8, r4
	add r9, r5, r10
	ldr r6, [r9]
	mul r8, r7, r6
	ldr r4, [fp, #-20]
	mov r5, #1
	mov r10, #4
	mul r9, r5, r10
	add r7, r4, r9
	ldr r6, [r7]
	ldr r5, [fp, #32]
	mov r10, #1
	mov r4, #4
	mul r9, r10, r4
	add r7, r5, r9
	ldr r10, [r7]
	mul r4, r6, r10
	add r5, r8, r4
	ldr r9, [fp, #-20]
	mov r7, #2
	mov r6, #4
	mul r10, r7, r6
	add r8, r9, r10
	ldr r4, [r8]
	ldr r7, [fp, #36]
	mov r6, #1
	mov r9, #4
	mul r10, r6, r9
	add r8, r7, r10
	ldr r6, [r8]
	mul r9, r4, r6
	add r7, r5, r9
	ldr r10, [fp, #40]
	mov r8, #1
	mov r4, #4
	mul r6, r8, r4
	add r5, r10, r6
	str r7, [r5]
	ldr r9, [fp, #-20]
	mov r8, r9
	ldr r4, [r8]
	ldr r10, [fp, #-8]
	mov r6, #2
	mov r7, #4
	mul r5, r6, r7
	add r9, r10, r5
	ldr r8, [r9]
	mul r6, r4, r8
	ldr r7, [fp, #-20]
	mov r10, #1
	mov r5, #4
	mul r9, r10, r5
	add r4, r7, r9
	ldr r8, [r4]
	ldr r10, [fp, #32]
	mov r5, #2
	mov r7, #4
	mul r9, r5, r7
	add r4, r10, r9
	ldr r5, [r4]
	mul r7, r8, r5
	add r10, r6, r7
	ldr r9, [fp, #-20]
	mov r4, #2
	mov r8, #4
	mul r5, r4, r8
	add r6, r9, r5
	ldr r7, [r6]
	ldr r4, [fp, #36]
	mov r8, #2
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	ldr r8, [r6]
	mul r9, r7, r8
	add r4, r10, r9
	ldr r5, [fp, #40]
	mov r6, #2
	mov r7, #4
	mul r8, r6, r7
	add r10, r5, r8
	str r4, [r10]
	ldr r9, [fp, #-16]
	mov r6, r9
	ldr r7, [r6]
	ldr r5, [fp, #-8]
	mov r8, r5
	ldr r4, [r8]
	mul r10, r7, r4
	ldr r9, [fp, #-16]
	mov r6, #1
	mov r5, #4
	mul r8, r6, r5
	add r7, r9, r8
	ldr r4, [r7]
	ldr r6, [fp, #32]
	mov r5, r6
	ldr r9, [r5]
	mul r8, r4, r9
	add r7, r10, r8
	ldr r6, [fp, #-16]
	mov r5, #2
	mov r4, #4
	mul r9, r5, r4
	add r10, r6, r9
	ldr r8, [r10]
	ldr r5, [fp, #36]
	mov r4, r5
	ldr r6, [r4]
	mul r9, r8, r6
	add r10, r7, r9
	ldr r5, [fp, #44]
	mov r4, r5
	str r10, [r4]
	ldr r8, [fp, #-16]
	mov r6, r8
	ldr r7, [r6]
	ldr r9, [fp, #-8]
	mov r5, #1
	mov r10, #4
	mul r4, r5, r10
	add r8, r9, r4
	ldr r6, [r8]
	mul r5, r7, r6
	ldr r10, [fp, #-16]
	mov r9, #1
	mov r4, #4
	mul r8, r9, r4
	add r7, r10, r8
	ldr r6, [r7]
	ldr r9, [fp, #32]
	mov r4, #1
	mov r10, #4
	mul r8, r4, r10
	add r7, r9, r8
	ldr r4, [r7]
	mul r10, r6, r4
	add r9, r5, r10
	ldr r8, [fp, #-16]
	mov r7, #2
	mov r6, #4
	mul r4, r7, r6
	add r5, r8, r4
	ldr r10, [r5]
	ldr r7, [fp, #36]
	mov r6, #1
	mov r8, #4
	mul r4, r6, r8
	add r5, r7, r4
	ldr r6, [r5]
	mul r8, r10, r6
	add r7, r9, r8
	ldr r4, [fp, #44]
	mov r5, #1
	mov r10, #4
	mul r6, r5, r10
	add r9, r4, r6
	str r7, [r9]
	ldr r8, [fp, #-16]
	mov r5, r8
	ldr r10, [r5]
	ldr r4, [fp, #-8]
	mov r6, #2
	mov r7, #4
	mul r9, r6, r7
	add r8, r4, r9
	ldr r5, [r8]
	mul r6, r10, r5
	ldr r7, [fp, #-16]
	mov r4, #1
	mov r9, #4
	mul r8, r4, r9
	add r10, r7, r8
	ldr r5, [r10]
	ldr r4, [fp, #32]
	mov r9, #2
	mov r7, #4
	mul r8, r9, r7
	add r10, r4, r8
	ldr r9, [r10]
	mul r7, r5, r9
	add r4, r6, r7
	ldr r8, [fp, #-16]
	mov r10, #2
	mov r5, #4
	mul r9, r10, r5
	add r6, r8, r9
	ldr r7, [r6]
	ldr r10, [fp, #36]
	mov r5, #2
	mov r8, #4
	mul r9, r5, r8
	add r6, r10, r9
	ldr r5, [r6]
	mul r8, r7, r5
	add r10, r4, r8
	ldr r9, [fp, #44]
	mov r6, #2
	mov r7, #4
	mul r5, r6, r7
	add r4, r9, r5
	str r10, [r4]
	ldr r8, [fp, #-12]
	mov r6, r8
	ldr r7, [r6]
	ldr r9, [fp, #-8]
	mov r5, r9
	ldr r10, [r5]
	mul r4, r7, r10
	ldr r8, [fp, #-12]
	mov r6, #1
	mov r9, #4
	mul r5, r6, r9
	add r7, r8, r5
	ldr r10, [r7]
	ldr r6, [fp, #32]
	mov r9, r6
	ldr r8, [r9]
	mul r5, r10, r8
	add r7, r4, r5
	ldr r6, [fp, #-12]
	mov r9, #2
	mov r10, #4
	mul r8, r9, r10
	add r4, r6, r8
	ldr r5, [r4]
	ldr r9, [fp, #36]
	mov r10, r9
	ldr r6, [r10]
	mul r8, r5, r6
	add r4, r7, r8
	ldr r9, [fp, #48]
	mov r10, r9
	str r4, [r10]
	ldr r5, [fp, #-12]
	mov r6, r5
	ldr r7, [r6]
	ldr r8, [fp, #-8]
	mov r9, #1
	mov r4, #4
	mul r10, r9, r4
	add r5, r8, r10
	ldr r6, [r5]
	mul r9, r7, r6
	ldr r4, [fp, #-12]
	mov r8, #1
	mov r10, #4
	mul r5, r8, r10
	add r7, r4, r5
	ldr r6, [r7]
	ldr r8, [fp, #32]
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	add r7, r8, r5
	ldr r10, [r7]
	mul r4, r6, r10
	b .LiteralPool0
.LTORG
addr_0_N:
	.word N
addr_0_L:
	.word L
addr_0_M:
	.word M
.LiteralPool0:
	add r8, r9, r4
	ldr r5, [fp, #-12]
	mov r7, #2
	mov r6, #4
	mul r10, r7, r6
	add r9, r5, r10
	ldr r4, [r9]
	ldr r7, [fp, #36]
	mov r6, #1
	mov r5, #4
	mul r10, r6, r5
	add r9, r7, r10
	ldr r6, [r9]
	mul r5, r4, r6
	add r7, r8, r5
	ldr r10, [fp, #48]
	mov r9, #1
	mov r4, #4
	mul r6, r9, r4
	add r8, r10, r6
	str r7, [r8]
	ldr r5, [fp, #-12]
	mov r9, r5
	ldr r4, [r9]
	ldr r10, [fp, #-8]
	mov r6, #2
	mov r7, #4
	mul r8, r6, r7
	add r5, r10, r8
	ldr r9, [r5]
	mul r6, r4, r9
	ldr r7, [fp, #-12]
	mov r10, #1
	mov r8, #4
	mul r5, r10, r8
	add r4, r7, r5
	ldr r9, [r4]
	ldr r10, [fp, #32]
	mov r8, #2
	mov r7, #4
	mul r5, r8, r7
	add r4, r10, r5
	ldr r8, [r4]
	mul r7, r9, r8
	add r10, r6, r7
	ldr r5, [fp, #-12]
	mov r4, #2
	mov r9, #4
	mul r8, r4, r9
	add r6, r5, r8
	ldr r7, [r6]
	ldr r4, [fp, #36]
	mov r9, #2
	mov r5, #4
	mul r8, r9, r5
	add r6, r4, r8
	ldr r9, [r6]
	mul r5, r7, r9
	add r4, r10, r5
	ldr r8, [fp, #48]
	mov r6, #2
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	str r4, [r10]
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
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
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
	mov fp, sp
	sub sp, sp, #140
.L260:                               	@ successors = .L271
	mov r4, #3
	ldr r5, addr_3_N
	str r4, [r5]
	mov r6, #3
	ldr r7, addr_3_M
	str r6, [r7]
	mov r8, #3
	ldr r9, addr_3_L
	str r8, [r9]
	mov r10, #0
	str r10, [fp, #-8]
	b .L271
.L271:                               	@ predecessors = .L260, .L276                               	@ successors = .L275, .L276
	ldr r4, [fp, #-8]
	ldr r5, addr_3_M
	ldr r6, [r5]
	cmp r4, r6
	blt .L276
	b .L275
.L272:                               	@ predecessors = .L275                               	@ successors = .L306
	add r7, fp, #-128
	mov r8, r7
	str r8, [fp, #-132]
	add r9, fp, #-116
	mov r10, r9
	str r10, [fp, #-136]
	add r5, fp, #-104
	mov r4, r5
	str r4, [fp, #-140]
	add r6, fp, #-92
	mov r7, r6
	add r8, fp, #-80
	mov r9, r8
	add r10, fp, #-68
	mov r5, r10
	add r4, fp, #-56
	mov r6, r4
	add r8, fp, #-32
	mov r10, r8
	add r4, fp, #-20
	mov r8, r4
	push {r8}
	push {r10}
	push {r6}
	push {r5}
	push {r9}
	mov r3, r7
	ldr r4, [fp, #-140]
	mov r2, r4
	ldr r8, [fp, #-136]
	mov r1, r8
	ldr r10, [fp, #-132]
	mov r0, r10
	bl mul
	add sp, sp, #20
	mov r6, r0
	str r6, [fp, #-8]
	b .L306
.L275:                               	@ predecessors = .L271                               	@ successors = .L272
	b .L272
.L276:                               	@ predecessors = .L271                               	@ successors = .L271
	ldr r5, [fp, #-8]
	ldr r9, [fp, #-8]
	add r7, fp, #-128
	mov r4, #4
	mul r8, r9, r4
	add r10, r7, r8
	str r5, [r10]
	ldr r6, [fp, #-8]
	ldr r9, [fp, #-8]
	add r4, fp, #-116
	mov r7, #4
	mul r8, r9, r7
	add r5, r4, r8
	str r6, [r5]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	add r7, fp, #-104
	mov r4, #4
	mul r8, r9, r4
	add r6, r7, r8
	str r10, [r6]
	ldr r5, [fp, #-8]
	ldr r9, [fp, #-8]
	add r4, fp, #-92
	mov r7, #4
	mul r8, r9, r7
	add r10, r4, r8
	str r5, [r10]
	ldr r6, [fp, #-8]
	ldr r9, [fp, #-8]
	add r7, fp, #-80
	mov r4, #4
	mul r8, r9, r4
	add r5, r7, r8
	str r6, [r5]
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	add r4, fp, #-68
	mov r7, #4
	mul r8, r9, r7
	add r6, r4, r8
	str r10, [r6]
	ldr r5, [fp, #-8]
	add r9, r5, #1
	str r9, [fp, #-8]
	b .L271
.L306:                               	@ predecessors = .L311, .L272                               	@ successors = .L310, .L311
	ldr r7, [fp, #-8]
	ldr r4, addr_3_N
	ldr r8, [r4]
	cmp r7, r8
	blt .L311
	b .L310
.L307:                               	@ predecessors = .L310                               	@ successors = .L318
	mov r10, #10
	str r10, [fp, #-4]
	mov r6, #0
	str r6, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putch
	b .L318
.L310:                               	@ predecessors = .L306                               	@ successors = .L307
	b .L307
.L311:                               	@ predecessors = .L306                               	@ successors = .L306
	ldr r9, [fp, #-8]
	add r4, fp, #-56
	mov r7, #4
	mul r8, r9, r7
	add r10, r4, r8
	ldr r6, [r10]
	str r6, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	ldr r9, [fp, #-8]
	add r7, r9, #1
	str r7, [fp, #-8]
	b .L306
.L318:                               	@ predecessors = .L307, .L323                               	@ successors = .L322, .L323
	ldr r4, [fp, #-8]
	ldr r8, addr_3_N
	ldr r10, [r8]
	cmp r4, r10
	blt .L323
	b .L322
.L319:                               	@ predecessors = .L322                               	@ successors = .L330
	mov r6, #10
	str r6, [fp, #-4]
	mov r5, #0
	str r5, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putch
	b .L330
.L322:                               	@ predecessors = .L318                               	@ successors = .L319
	b .L319
.L323:                               	@ predecessors = .L318                               	@ successors = .L318
	ldr r7, [fp, #-8]
	add r8, fp, #-32
	mov r4, #4
	mul r10, r7, r4
	add r6, r8, r10
	ldr r5, [r6]
	str r5, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putint
	ldr r7, [fp, #-8]
	add r4, r7, #1
	str r4, [fp, #-8]
	b .L318
.L330:                               	@ predecessors = .L319, .L335                               	@ successors = .L334, .L335
	ldr r8, [fp, #-8]
	ldr r10, addr_3_N
	ldr r6, [r10]
	cmp r8, r6
	blt .L335
	b .L334
.L331:                               	@ predecessors = .L334
	mov r5, #10
	str r5, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putch
	mov r0, #0
	b .Lmain_END
.L334:                               	@ predecessors = .L330                               	@ successors = .L331
	b .L331
.L335:                               	@ predecessors = .L330                               	@ successors = .L330
	ldr r7, [fp, #-8]
	add r4, fp, #-20
	mov r10, #4
	mul r8, r7, r10
	add r6, r4, r8
	ldr r5, [r6]
	str r5, [fp, #-4]
	ldr r9, [fp, #-4]
	mov r0, r9
	bl putint
	ldr r7, [fp, #-8]
	add r10, r7, #1
	str r10, [fp, #-8]
	b .L330
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_3_N:
	.word N
addr_3_L:
	.word L
addr_3_M:
	.word M
