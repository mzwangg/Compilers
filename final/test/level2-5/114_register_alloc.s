	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a32
	.align 4
	.size a32, 4
a32:
	.word 16
	.global a31
	.align 4
	.size a31, 4
a31:
	.word 15
	.global a30
	.align 4
	.size a30, 4
a30:
	.word 14
	.global a26
	.align 4
	.size a26, 4
a26:
	.word 10
	.global a9
	.align 4
	.size a9, 4
a9:
	.word 9
	.global a10
	.align 4
	.size a10, 4
a10:
	.word 10
	.global a16
	.align 4
	.size a16, 4
a16:
	.word 16
	.global a29
	.align 4
	.size a29, 4
a29:
	.word 13
	.global a11
	.align 4
	.size a11, 4
a11:
	.word 11
	.global a24
	.align 4
	.size a24, 4
a24:
	.word 8
	.global a13
	.align 4
	.size a13, 4
a13:
	.word 13
	.global a3
	.align 4
	.size a3, 4
a3:
	.word 3
	.global a6
	.align 4
	.size a6, 4
a6:
	.word 6
	.global a19
	.align 4
	.size a19, 4
a19:
	.word 3
	.global a12
	.align 4
	.size a12, 4
a12:
	.word 12
	.global a5
	.align 4
	.size a5, 4
a5:
	.word 5
	.global a25
	.align 4
	.size a25, 4
a25:
	.word 9
	.global a2
	.align 4
	.size a2, 4
a2:
	.word 2
	.global a4
	.align 4
	.size a4, 4
a4:
	.word 4
	.global a1
	.align 4
	.size a1, 4
a1:
	.word 1
	.global a23
	.align 4
	.size a23, 4
a23:
	.word 7
	.global a14
	.align 4
	.size a14, 4
a14:
	.word 14
	.global a27
	.align 4
	.size a27, 4
a27:
	.word 11
	.global a15
	.align 4
	.size a15, 4
a15:
	.word 15
	.global a28
	.align 4
	.size a28, 4
a28:
	.word 12
	.global a17
	.align 4
	.size a17, 4
a17:
	.word 1
	.global a18
	.align 4
	.size a18, 4
a18:
	.word 2
	.global a7
	.align 4
	.size a7, 4
a7:
	.word 7
	.global a20
	.align 4
	.size a20, 4
a20:
	.word 4
	.global a8
	.align 4
	.size a8, 4
a8:
	.word 8
	.global a21
	.align 4
	.size a21, 4
a21:
	.word 5
	.global a22
	.align 4
	.size a22, 4
a22:
	.word 6
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #156
.L215:
	str r0, [fp, #-156]
	str r1, [fp, #-152]
	ldr r4, [fp, #-156]
	ldr r5, [fp, #-152]
	add r6, r4, r5
	str r6, [fp, #-148]
	bl getint
	mov r7, r0
	str r7, [fp, #-144]
	bl getint
	mov r8, r0
	str r8, [fp, #-140]
	bl getint
	mov r9, r0
	str r9, [fp, #-136]
	bl getint
	mov r10, r0
	str r10, [fp, #-132]
	ldr r4, [fp, #-144]
	add r5, r4, #1
	ldr r6, addr_0_a1
	ldr r7, [r6]
	add r8, r5, r7
	str r8, [fp, #-128]
	ldr r9, [fp, #-140]
	add r10, r9, #2
	ldr r4, addr_0_a2
	ldr r6, [r4]
	add r5, r10, r6
	str r5, [fp, #-124]
	ldr r7, [fp, #-136]
	add r8, r7, #3
	ldr r9, addr_0_a3
	ldr r4, [r9]
	add r10, r8, r4
	str r10, [fp, #-120]
	ldr r6, [fp, #-132]
	add r5, r6, #4
	ldr r7, addr_0_a4
	ldr r9, [r7]
	add r8, r5, r9
	str r8, [fp, #-116]
	ldr r4, [fp, #-128]
	add r10, r4, #1
	ldr r6, addr_0_a5
	ldr r7, [r6]
	add r5, r10, r7
	str r5, [fp, #-112]
	ldr r9, [fp, #-124]
	add r8, r9, #2
	ldr r4, addr_0_a6
	ldr r6, [r4]
	add r10, r8, r6
	str r10, [fp, #-108]
	ldr r7, [fp, #-120]
	add r5, r7, #3
	ldr r9, addr_0_a7
	ldr r4, [r9]
	add r8, r5, r4
	str r8, [fp, #-104]
	ldr r6, [fp, #-116]
	add r10, r6, #4
	ldr r7, addr_0_a8
	ldr r9, [r7]
	add r5, r10, r9
	str r5, [fp, #-100]
	ldr r4, [fp, #-112]
	add r8, r4, #1
	ldr r6, addr_0_a9
	ldr r7, [r6]
	add r10, r8, r7
	str r10, [fp, #-96]
	ldr r9, [fp, #-108]
	add r5, r9, #2
	ldr r4, addr_0_a10
	ldr r6, [r4]
	add r8, r5, r6
	str r8, [fp, #-92]
	ldr r7, [fp, #-104]
	add r10, r7, #3
	ldr r9, addr_0_a11
	ldr r4, [r9]
	add r5, r10, r4
	str r5, [fp, #-88]
	ldr r6, [fp, #-100]
	add r8, r6, #4
	ldr r7, addr_0_a12
	ldr r9, [r7]
	add r10, r8, r9
	str r10, [fp, #-84]
	ldr r4, [fp, #-96]
	add r5, r4, #1
	ldr r6, addr_0_a13
	ldr r7, [r6]
	add r8, r5, r7
	str r8, [fp, #-80]
	ldr r9, [fp, #-92]
	add r10, r9, #2
	ldr r4, addr_0_a14
	ldr r6, [r4]
	add r5, r10, r6
	str r5, [fp, #-76]
	ldr r7, [fp, #-88]
	add r8, r7, #3
	ldr r9, addr_0_a15
	ldr r4, [r9]
	add r10, r8, r4
	str r10, [fp, #-72]
	ldr r6, [fp, #-84]
	add r5, r6, #4
	ldr r7, addr_0_a16
	ldr r9, [r7]
	add r8, r5, r9
	str r8, [fp, #-68]
	ldr r4, [fp, #-80]
	add r10, r4, #1
	ldr r6, addr_0_a17
	ldr r7, [r6]
	add r5, r10, r7
	str r5, [fp, #-64]
	ldr r9, [fp, #-76]
	add r8, r9, #2
	ldr r4, addr_0_a18
	ldr r6, [r4]
	add r10, r8, r6
	str r10, [fp, #-60]
	ldr r7, [fp, #-72]
	add r5, r7, #3
	ldr r9, addr_0_a19
	ldr r4, [r9]
	add r8, r5, r4
	str r8, [fp, #-56]
	ldr r6, [fp, #-68]
	add r10, r6, #4
	ldr r7, addr_0_a20
	ldr r9, [r7]
	add r5, r10, r9
	str r5, [fp, #-52]
	ldr r4, [fp, #-64]
	add r8, r4, #1
	ldr r6, addr_0_a21
	ldr r7, [r6]
	add r10, r8, r7
	str r10, [fp, #-48]
	ldr r9, [fp, #-60]
	add r5, r9, #2
	ldr r4, addr_0_a22
	ldr r6, [r4]
	add r8, r5, r6
	str r8, [fp, #-44]
	ldr r7, [fp, #-56]
	add r10, r7, #3
	ldr r9, addr_0_a23
	ldr r4, [r9]
	add r5, r10, r4
	str r5, [fp, #-40]
	ldr r6, [fp, #-52]
	add r8, r6, #4
	ldr r7, addr_0_a24
	ldr r9, [r7]
	add r10, r8, r9
	str r10, [fp, #-36]
	ldr r4, [fp, #-48]
	add r5, r4, #1
	ldr r6, addr_0_a25
	ldr r7, [r6]
	add r8, r5, r7
	str r8, [fp, #-32]
	ldr r9, [fp, #-44]
	add r10, r9, #2
	ldr r4, addr_0_a26
	ldr r6, [r4]
	add r5, r10, r6
	str r5, [fp, #-28]
	ldr r7, [fp, #-40]
	add r8, r7, #3
	ldr r9, addr_0_a27
	ldr r4, [r9]
	add r10, r8, r4
	str r10, [fp, #-24]
	ldr r6, [fp, #-36]
	add r5, r6, #4
	ldr r7, addr_0_a28
	ldr r9, [r7]
	add r8, r5, r9
	str r8, [fp, #-20]
	ldr r4, [fp, #-32]
	add r10, r4, #1
	ldr r6, addr_0_a29
	ldr r7, [r6]
	add r5, r10, r7
	str r5, [fp, #-16]
	ldr r9, [fp, #-28]
	add r8, r9, #2
	ldr r4, addr_0_a30
	ldr r6, [r4]
	add r10, r8, r6
	str r10, [fp, #-12]
	ldr r7, [fp, #-24]
	add r5, r7, #3
	ldr r9, addr_0_a31
	ldr r4, [r9]
	add r8, r5, r4
	str r8, [fp, #-8]
	ldr r6, [fp, #-20]
	add r10, r6, #4
	ldr r7, addr_0_a32
	ldr r9, [r7]
	add r5, r10, r9
	str r5, [fp, #-4]
	ldr r4, [fp, #-156]
	ldr r8, [fp, #-152]
	sub r6, r4, r8
	add r7, r6, #10
	str r7, [fp, #-148]
	ldr r10, [fp, #-32]
	add r9, r10, #1
	ldr r5, addr_0_a29
	ldr r4, [r5]
	add r8, r9, r4
	str r8, [fp, #-16]
	ldr r6, [fp, #-28]
	add r7, r6, #2
	ldr r10, addr_0_a30
	ldr r5, [r10]
	add r9, r7, r5
	str r9, [fp, #-12]
	ldr r4, [fp, #-24]
	add r8, r4, #3
	ldr r6, addr_0_a31
	ldr r10, [r6]
	add r7, r8, r10
	str r7, [fp, #-8]
	ldr r5, [fp, #-20]
	add r9, r5, #4
	ldr r4, addr_0_a32
	ldr r6, [r4]
	add r8, r9, r6
	str r8, [fp, #-4]
	ldr r10, [fp, #-48]
	add r7, r10, #1
	ldr r5, addr_0_a25
	ldr r4, [r5]
	add r9, r7, r4
	str r9, [fp, #-32]
	ldr r6, [fp, #-44]
	add r8, r6, #2
	ldr r10, addr_0_a26
	ldr r5, [r10]
	add r7, r8, r5
	str r7, [fp, #-28]
	ldr r4, [fp, #-40]
	add r9, r4, #3
	ldr r6, addr_0_a27
	ldr r10, [r6]
	add r8, r9, r10
	str r8, [fp, #-24]
	ldr r5, [fp, #-36]
	add r7, r5, #4
	ldr r4, addr_0_a28
	ldr r6, [r4]
	add r9, r7, r6
	str r9, [fp, #-20]
	ldr r10, [fp, #-64]
	add r8, r10, #1
	ldr r5, addr_0_a21
	ldr r4, [r5]
	add r7, r8, r4
	str r7, [fp, #-48]
	ldr r6, [fp, #-60]
	add r9, r6, #2
	ldr r10, addr_0_a22
	ldr r5, [r10]
	add r8, r9, r5
	str r8, [fp, #-44]
	ldr r4, [fp, #-56]
	add r7, r4, #3
	ldr r6, addr_0_a23
	ldr r10, [r6]
	add r9, r7, r10
	str r9, [fp, #-40]
	ldr r5, [fp, #-52]
	add r8, r5, #4
	ldr r4, addr_0_a24
	ldr r6, [r4]
	add r7, r8, r6
	str r7, [fp, #-36]
	ldr r10, [fp, #-80]
	add r9, r10, #1
	ldr r5, addr_0_a17
	ldr r4, [r5]
	add r8, r9, r4
	str r8, [fp, #-64]
	ldr r6, [fp, #-76]
	add r7, r6, #2
	ldr r10, addr_0_a18
	ldr r5, [r10]
	add r9, r7, r5
	str r9, [fp, #-60]
	ldr r4, [fp, #-72]
	add r8, r4, #3
	b .LiteralPool0
.LTORG
addr_0_a32:
	.word a32
addr_0_a31:
	.word a31
addr_0_a30:
	.word a30
addr_0_a26:
	.word a26
addr_0_a9:
	.word a9
addr_0_a10:
	.word a10
addr_0_a16:
	.word a16
addr_0_a29:
	.word a29
addr_0_a11:
	.word a11
addr_0_a24:
	.word a24
addr_0_a13:
	.word a13
addr_0_a3:
	.word a3
addr_0_a6:
	.word a6
addr_0_a19:
	.word a19
addr_0_a12:
	.word a12
addr_0_a5:
	.word a5
addr_0_a25:
	.word a25
addr_0_a2:
	.word a2
addr_0_a4:
	.word a4
addr_0_a1:
	.word a1
addr_0_a23:
	.word a23
addr_0_a14:
	.word a14
addr_0_a27:
	.word a27
addr_0_a15:
	.word a15
addr_0_a28:
	.word a28
addr_0_a17:
	.word a17
addr_0_a18:
	.word a18
addr_0_a7:
	.word a7
addr_0_a20:
	.word a20
addr_0_a8:
	.word a8
addr_0_a21:
	.word a21
addr_0_a22:
	.word a22
.LiteralPool0:
	ldr r6, addr_1_a19
	ldr r10, [r6]
	add r7, r8, r10
	str r7, [fp, #-56]
	ldr r5, [fp, #-68]
	add r9, r5, #4
	ldr r4, addr_1_a20
	ldr r6, [r4]
	add r8, r9, r6
	str r8, [fp, #-52]
	ldr r10, [fp, #-96]
	add r7, r10, #1
	ldr r5, addr_1_a13
	ldr r4, [r5]
	add r9, r7, r4
	str r9, [fp, #-80]
	ldr r6, [fp, #-92]
	add r8, r6, #2
	ldr r10, addr_1_a14
	ldr r5, [r10]
	add r7, r8, r5
	str r7, [fp, #-76]
	ldr r4, [fp, #-88]
	add r9, r4, #3
	ldr r6, addr_1_a15
	ldr r10, [r6]
	add r8, r9, r10
	str r8, [fp, #-72]
	ldr r5, [fp, #-84]
	add r7, r5, #4
	ldr r4, addr_1_a16
	ldr r6, [r4]
	add r9, r7, r6
	str r9, [fp, #-68]
	ldr r10, [fp, #-112]
	add r8, r10, #1
	ldr r5, addr_1_a9
	ldr r4, [r5]
	add r7, r8, r4
	str r7, [fp, #-96]
	ldr r6, [fp, #-108]
	add r9, r6, #2
	ldr r10, addr_1_a10
	ldr r5, [r10]
	add r8, r9, r5
	str r8, [fp, #-92]
	ldr r4, [fp, #-104]
	add r7, r4, #3
	ldr r6, addr_1_a11
	ldr r10, [r6]
	add r9, r7, r10
	str r9, [fp, #-88]
	ldr r5, [fp, #-100]
	add r8, r5, #4
	ldr r4, addr_1_a12
	ldr r6, [r4]
	add r7, r8, r6
	str r7, [fp, #-84]
	ldr r10, [fp, #-128]
	add r9, r10, #1
	ldr r5, addr_1_a5
	ldr r4, [r5]
	add r8, r9, r4
	str r8, [fp, #-112]
	ldr r6, [fp, #-124]
	add r7, r6, #2
	ldr r10, addr_1_a6
	ldr r5, [r10]
	add r9, r7, r5
	str r9, [fp, #-108]
	ldr r4, [fp, #-120]
	add r8, r4, #3
	ldr r6, addr_1_a7
	ldr r10, [r6]
	add r7, r8, r10
	str r7, [fp, #-104]
	ldr r5, [fp, #-116]
	add r9, r5, #4
	ldr r4, addr_1_a8
	ldr r6, [r4]
	add r8, r9, r6
	str r8, [fp, #-100]
	ldr r10, [fp, #-144]
	add r7, r10, #1
	ldr r5, addr_1_a1
	ldr r4, [r5]
	add r9, r7, r4
	str r9, [fp, #-128]
	ldr r6, [fp, #-140]
	add r8, r6, #2
	ldr r10, addr_1_a2
	ldr r5, [r10]
	add r7, r8, r5
	str r7, [fp, #-124]
	ldr r4, [fp, #-136]
	add r9, r4, #3
	ldr r6, addr_1_a3
	ldr r10, [r6]
	add r8, r9, r10
	str r8, [fp, #-120]
	ldr r5, [fp, #-132]
	add r7, r5, #4
	ldr r4, addr_1_a4
	ldr r6, [r4]
	add r9, r7, r6
	str r9, [fp, #-116]
	ldr r10, [fp, #-144]
	add r8, r10, #1
	ldr r5, addr_1_a1
	ldr r4, [r5]
	add r7, r8, r4
	str r7, [fp, #-128]
	ldr r6, [fp, #-140]
	add r9, r6, #2
	ldr r10, addr_1_a2
	ldr r5, [r10]
	add r8, r9, r5
	str r8, [fp, #-124]
	ldr r4, [fp, #-136]
	add r7, r4, #3
	ldr r6, addr_1_a3
	ldr r10, [r6]
	add r9, r7, r10
	str r9, [fp, #-120]
	ldr r5, [fp, #-132]
	add r8, r5, #4
	ldr r4, addr_1_a4
	ldr r6, [r4]
	add r7, r8, r6
	str r7, [fp, #-116]
	ldr r10, [fp, #-148]
	ldr r9, [fp, #-144]
	add r5, r10, r9
	ldr r4, [fp, #-140]
	add r8, r5, r4
	ldr r6, [fp, #-136]
	add r7, r8, r6
	ldr r10, [fp, #-132]
	add r9, r7, r10
	ldr r5, [fp, #-128]
	sub r4, r9, r5
	ldr r8, [fp, #-124]
	sub r6, r4, r8
	ldr r7, [fp, #-120]
	sub r10, r6, r7
	ldr r9, [fp, #-116]
	sub r5, r10, r9
	ldr r4, [fp, #-112]
	add r8, r5, r4
	ldr r6, [fp, #-108]
	add r7, r8, r6
	ldr r10, [fp, #-104]
	add r9, r7, r10
	ldr r5, [fp, #-100]
	add r4, r9, r5
	ldr r8, [fp, #-96]
	sub r6, r4, r8
	ldr r7, [fp, #-92]
	sub r10, r6, r7
	ldr r9, [fp, #-88]
	sub r5, r10, r9
	ldr r4, [fp, #-84]
	sub r8, r5, r4
	ldr r6, [fp, #-80]
	add r7, r8, r6
	ldr r10, [fp, #-76]
	add r9, r7, r10
	ldr r5, [fp, #-72]
	add r4, r9, r5
	ldr r8, [fp, #-68]
	add r6, r4, r8
	ldr r7, [fp, #-64]
	sub r10, r6, r7
	ldr r9, [fp, #-60]
	sub r5, r10, r9
	ldr r4, [fp, #-56]
	sub r8, r5, r4
	ldr r6, [fp, #-52]
	sub r7, r8, r6
	ldr r10, [fp, #-48]
	add r9, r7, r10
	ldr r5, [fp, #-44]
	add r4, r9, r5
	ldr r8, [fp, #-40]
	add r6, r4, r8
	ldr r7, [fp, #-36]
	add r10, r6, r7
	ldr r9, [fp, #-32]
	sub r5, r10, r9
	ldr r4, [fp, #-28]
	sub r8, r5, r4
	ldr r6, [fp, #-24]
	sub r7, r8, r6
	ldr r10, [fp, #-20]
	sub r9, r7, r10
	ldr r5, [fp, #-16]
	add r4, r9, r5
	ldr r8, [fp, #-12]
	add r6, r4, r8
	ldr r7, [fp, #-8]
	add r10, r6, r7
	ldr r9, [fp, #-4]
	add r5, r10, r9
	ldr r4, addr_1_a1
	ldr r8, [r4]
	add r6, r5, r8
	ldr r7, addr_1_a2
	ldr r10, [r7]
	sub r9, r6, r10
	ldr r4, addr_1_a3
	ldr r5, [r4]
	add r8, r9, r5
	ldr r7, addr_1_a4
	ldr r6, [r7]
	sub r10, r8, r6
	ldr r4, addr_1_a5
	ldr r9, [r4]
	add r5, r10, r9
	ldr r7, addr_1_a6
	ldr r8, [r7]
	sub r6, r5, r8
	ldr r4, addr_1_a7
	ldr r10, [r4]
	add r9, r6, r10
	ldr r7, addr_1_a8
	ldr r5, [r7]
	sub r8, r9, r5
	ldr r4, addr_1_a9
	ldr r6, [r4]
	add r10, r8, r6
	ldr r7, addr_1_a10
	ldr r9, [r7]
	sub r5, r10, r9
	ldr r4, addr_1_a11
	ldr r8, [r4]
	add r6, r5, r8
	ldr r7, addr_1_a12
	ldr r10, [r7]
	sub r9, r6, r10
	ldr r4, addr_1_a13
	ldr r5, [r4]
	add r8, r9, r5
	ldr r7, addr_1_a14
	ldr r6, [r7]
	sub r10, r8, r6
	ldr r4, addr_1_a15
	ldr r9, [r4]
	add r5, r10, r9
	ldr r7, addr_1_a16
	ldr r8, [r7]
	sub r6, r5, r8
	ldr r4, addr_1_a17
	ldr r10, [r4]
	add r9, r6, r10
	ldr r7, addr_1_a18
	ldr r5, [r7]
	sub r8, r9, r5
	ldr r4, addr_1_a19
	ldr r6, [r4]
	add r10, r8, r6
	ldr r7, addr_1_a20
	ldr r9, [r7]
	sub r5, r10, r9
	ldr r4, addr_1_a21
	ldr r8, [r4]
	add r6, r5, r8
	ldr r7, addr_1_a22
	ldr r10, [r7]
	sub r9, r6, r10
	ldr r4, addr_1_a23
	ldr r5, [r4]
	add r8, r9, r5
	ldr r7, addr_1_a24
	ldr r6, [r7]
	sub r10, r8, r6
	ldr r4, addr_1_a25
	ldr r9, [r4]
	add r5, r10, r9
	ldr r7, addr_1_a26
	ldr r8, [r7]
	sub r6, r5, r8
	ldr r4, addr_1_a27
	ldr r10, [r4]
	add r9, r6, r10
	ldr r7, addr_1_a28
	ldr r5, [r7]
	sub r8, r9, r5
	ldr r4, addr_1_a29
	ldr r6, [r4]
	add r10, r8, r6
	ldr r7, addr_1_a30
	ldr r9, [r7]
	sub r5, r10, r9
	ldr r4, addr_1_a31
	ldr r8, [r4]
	add r6, r5, r8
	ldr r7, addr_1_a32
	ldr r10, [r7]
	sub r9, r6, r10
	mov r0, r9
	b .LiteralPool1
.LTORG
addr_1_a32:
	.word a32
addr_1_a31:
	.word a31
addr_1_a30:
	.word a30
addr_1_a26:
	.word a26
addr_1_a9:
	.word a9
addr_1_a10:
	.word a10
addr_1_a16:
	.word a16
addr_1_a29:
	.word a29
addr_1_a11:
	.word a11
addr_1_a24:
	.word a24
addr_1_a13:
	.word a13
addr_1_a3:
	.word a3
addr_1_a6:
	.word a6
addr_1_a19:
	.word a19
addr_1_a12:
	.word a12
addr_1_a5:
	.word a5
addr_1_a25:
	.word a25
addr_1_a2:
	.word a2
addr_1_a4:
	.word a4
addr_1_a1:
	.word a1
addr_1_a23:
	.word a23
addr_1_a14:
	.word a14
addr_1_a27:
	.word a27
addr_1_a15:
	.word a15
addr_1_a28:
	.word a28
addr_1_a17:
	.word a17
addr_1_a18:
	.word a18
addr_1_a7:
	.word a7
addr_1_a20:
	.word a20
addr_1_a8:
	.word a8
addr_1_a21:
	.word a21
addr_1_a22:
	.word a22
.LiteralPool1:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool2
.LTORG
addr_2_a32:
	.word a32
addr_2_a31:
	.word a31
addr_2_a30:
	.word a30
addr_2_a26:
	.word a26
addr_2_a9:
	.word a9
addr_2_a10:
	.word a10
addr_2_a16:
	.word a16
addr_2_a29:
	.word a29
addr_2_a11:
	.word a11
addr_2_a24:
	.word a24
addr_2_a13:
	.word a13
addr_2_a3:
	.word a3
addr_2_a6:
	.word a6
addr_2_a19:
	.word a19
addr_2_a12:
	.word a12
addr_2_a5:
	.word a5
addr_2_a25:
	.word a25
addr_2_a2:
	.word a2
addr_2_a4:
	.word a4
addr_2_a1:
	.word a1
addr_2_a23:
	.word a23
addr_2_a14:
	.word a14
addr_2_a27:
	.word a27
addr_2_a15:
	.word a15
addr_2_a28:
	.word a28
addr_2_a17:
	.word a17
addr_2_a18:
	.word a18
addr_2_a7:
	.word a7
addr_2_a20:
	.word a20
addr_2_a8:
	.word a8
addr_2_a21:
	.word a21
addr_2_a22:
	.word a22
.LiteralPool2:
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L464:
	bl getint
	mov r4, r0
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	add r6, r5, #18
	str r6, [fp, #-4]
	ldr r7, [fp, #-8]
	ldr r8, [fp, #-4]
	mov r1, r8
	mov r0, r7
	bl func
	mov r9, r0
	str r9, [fp, #-8]
	ldr r10, [fp, #-8]
	mov r0, r10
	bl putint
	ldr r4, [fp, #-8]
	mov r0, r4
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_3_a32:
	.word a32
addr_3_a31:
	.word a31
addr_3_a30:
	.word a30
addr_3_a26:
	.word a26
addr_3_a9:
	.word a9
addr_3_a10:
	.word a10
addr_3_a16:
	.word a16
addr_3_a29:
	.word a29
addr_3_a11:
	.word a11
addr_3_a24:
	.word a24
addr_3_a13:
	.word a13
addr_3_a3:
	.word a3
addr_3_a6:
	.word a6
addr_3_a19:
	.word a19
addr_3_a12:
	.word a12
addr_3_a5:
	.word a5
addr_3_a25:
	.word a25
addr_3_a2:
	.word a2
addr_3_a4:
	.word a4
addr_3_a1:
	.word a1
addr_3_a23:
	.word a23
addr_3_a14:
	.word a14
addr_3_a27:
	.word a27
addr_3_a15:
	.word a15
addr_3_a28:
	.word a28
addr_3_a17:
	.word a17
addr_3_a18:
	.word a18
addr_3_a7:
	.word a7
addr_3_a20:
	.word a20
addr_3_a8:
	.word a8
addr_3_a21:
	.word a21
addr_3_a22:
	.word a22
