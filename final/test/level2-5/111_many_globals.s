	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global a39
	.align 4
	.size a39, 4
a39:
	.word 0
	.global a38
	.align 4
	.size a38, 4
a38:
	.word 0
	.global a37
	.align 4
	.size a37, 4
a37:
	.word 0
	.global a36
	.align 4
	.size a36, 4
a36:
	.word 0
	.global a34
	.align 4
	.size a34, 4
a34:
	.word 0
	.global a33
	.align 4
	.size a33, 4
a33:
	.word 0
	.global a32
	.align 4
	.size a32, 4
a32:
	.word 0
	.global a31
	.align 4
	.size a31, 4
a31:
	.word 0
	.global a11
	.align 4
	.size a11, 4
a11:
	.word 0
	.global a10
	.align 4
	.size a10, 4
a10:
	.word 0
	.global a1
	.align 4
	.size a1, 4
a1:
	.word 0
	.global a8
	.align 4
	.size a8, 4
a8:
	.word 0
	.global a5
	.align 4
	.size a5, 4
a5:
	.word 0
	.global a24
	.align 4
	.size a24, 4
a24:
	.word 0
	.global a7
	.align 4
	.size a7, 4
a7:
	.word 0
	.global a35
	.align 4
	.size a35, 4
a35:
	.word 0
	.global a0
	.align 4
	.size a0, 4
a0:
	.word 0
	.global a23
	.align 4
	.size a23, 4
a23:
	.word 0
	.global a9
	.align 4
	.size a9, 4
a9:
	.word 0
	.global a14
	.align 4
	.size a14, 4
a14:
	.word 0
	.global a30
	.align 4
	.size a30, 4
a30:
	.word 0
	.global a4
	.align 4
	.size a4, 4
a4:
	.word 0
	.global a29
	.align 4
	.size a29, 4
a29:
	.word 0
	.global a3
	.align 4
	.size a3, 4
a3:
	.word 0
	.global a6
	.align 4
	.size a6, 4
a6:
	.word 0
	.global a22
	.align 4
	.size a22, 4
a22:
	.word 0
	.global a2
	.align 4
	.size a2, 4
a2:
	.word 0
	.global a13
	.align 4
	.size a13, 4
a13:
	.word 0
	.global a12
	.align 4
	.size a12, 4
a12:
	.word 0
	.global a15
	.align 4
	.size a15, 4
a15:
	.word 0
	.global a16
	.align 4
	.size a16, 4
a16:
	.word 0
	.global a17
	.align 4
	.size a17, 4
a17:
	.word 0
	.global a18
	.align 4
	.size a18, 4
a18:
	.word 0
	.global a19
	.align 4
	.size a19, 4
a19:
	.word 0
	.global a20
	.align 4
	.size a20, 4
a20:
	.word 0
	.global a21
	.align 4
	.size a21, 4
a21:
	.word 0
	.global a25
	.align 4
	.size a25, 4
a25:
	.word 0
	.global a26
	.align 4
	.size a26, 4
a26:
	.word 0
	.global a27
	.align 4
	.size a27, 4
a27:
	.word 0
	.global a28
	.align 4
	.size a28, 4
a28:
	.word 0
	.text
	.global testParam8
	.type testParam8 , %function
testParam8:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L59:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	add r6, r4, r5
	ldr r7, [fp, #-8]
	add r8, r6, r7
	ldr r9, [fp, #-4]
	add r10, r8, r9
	ldr r4, [fp, #32]
	add r5, r10, r4
	ldr r6, [fp, #36]
	add r7, r5, r6
	ldr r8, [fp, #40]
	add r9, r7, r8
	ldr r10, [fp, #44]
	add r4, r9, r10
	mov r0, r4
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global testParam16
	.type testParam16 , %function
testParam16:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L76:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	add r6, r4, r5
	ldr r7, [fp, #-8]
	add r8, r6, r7
	ldr r9, [fp, #-4]
	sub r10, r8, r9
	ldr r4, [fp, #32]
	sub r5, r10, r4
	ldr r6, [fp, #36]
	sub r7, r5, r6
	ldr r8, [fp, #40]
	sub r9, r7, r8
	ldr r10, [fp, #44]
	sub r4, r9, r10
	ldr r5, [fp, #48]
	add r6, r4, r5
	ldr r7, [fp, #52]
	add r8, r6, r7
	ldr r9, [fp, #56]
	add r10, r8, r9
	ldr r4, [fp, #60]
	add r5, r10, r4
	ldr r6, [fp, #64]
	add r7, r5, r6
	ldr r8, [fp, #68]
	add r9, r7, r8
	ldr r10, [fp, #72]
	add r4, r9, r10
	ldr r5, [fp, #76]
	add r6, r4, r5
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global testParam32
	.type testParam32 , %function
testParam32:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L109:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	add r6, r4, r5
	ldr r7, [fp, #-8]
	add r8, r6, r7
	ldr r9, [fp, #-4]
	add r10, r8, r9
	ldr r4, [fp, #32]
	add r5, r10, r4
	ldr r6, [fp, #36]
	add r7, r5, r6
	ldr r8, [fp, #40]
	add r9, r7, r8
	ldr r10, [fp, #44]
	add r4, r9, r10
	ldr r5, [fp, #48]
	add r6, r4, r5
	ldr r7, [fp, #52]
	add r8, r6, r7
	ldr r9, [fp, #56]
	add r10, r8, r9
	ldr r4, [fp, #60]
	add r5, r10, r4
	ldr r6, [fp, #64]
	add r7, r5, r6
	ldr r8, [fp, #68]
	add r9, r7, r8
	ldr r10, [fp, #72]
	add r4, r9, r10
	ldr r5, [fp, #76]
	add r6, r4, r5
	ldr r7, [fp, #80]
	add r8, r6, r7
	ldr r9, [fp, #84]
	add r10, r8, r9
	ldr r4, [fp, #88]
	sub r5, r10, r4
	ldr r6, [fp, #92]
	sub r7, r5, r6
	ldr r8, [fp, #96]
	sub r9, r7, r8
	ldr r10, [fp, #100]
	sub r4, r9, r10
	ldr r5, [fp, #104]
	sub r6, r4, r5
	ldr r7, [fp, #108]
	add r8, r6, r7
	ldr r9, [fp, #112]
	add r10, r8, r9
	ldr r4, [fp, #116]
	add r5, r10, r4
	ldr r6, [fp, #120]
	add r7, r5, r6
	ldr r8, [fp, #124]
	add r9, r7, r8
	ldr r10, [fp, #128]
	add r4, r9, r10
	ldr r5, [fp, #132]
	add r6, r4, r5
	ldr r7, [fp, #136]
	add r8, r6, r7
	ldr r9, [fp, #140]
	add r10, r8, r9
	mov r0, r10
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #152
.L174:
	mov r4, #0
	ldr r5, addr_0_a0
	str r4, [r5]
	mov r6, #1
	ldr r7, addr_0_a1
	str r6, [r7]
	mov r8, #2
	ldr r9, addr_0_a2
	str r8, [r9]
	mov r10, #3
	ldr r4, addr_0_a3
	str r10, [r4]
	mov r5, #4
	ldr r6, addr_0_a4
	str r5, [r6]
	mov r7, #5
	ldr r8, addr_0_a5
	str r7, [r8]
	mov r9, #6
	ldr r10, addr_0_a6
	str r9, [r10]
	mov r4, #7
	ldr r5, addr_0_a7
	str r4, [r5]
	mov r6, #8
	ldr r7, addr_0_a8
	str r6, [r7]
	mov r8, #9
	ldr r9, addr_0_a9
	str r8, [r9]
	mov r10, #0
	ldr r4, addr_0_a10
	str r10, [r4]
	mov r5, #1
	ldr r6, addr_0_a11
	str r5, [r6]
	mov r7, #2
	ldr r8, addr_0_a12
	str r7, [r8]
	mov r9, #3
	ldr r10, addr_0_a13
	str r9, [r10]
	mov r4, #4
	ldr r5, addr_0_a14
	str r4, [r5]
	mov r6, #5
	ldr r7, addr_0_a15
	str r6, [r7]
	mov r8, #6
	ldr r9, addr_0_a16
	str r8, [r9]
	mov r10, #7
	ldr r4, addr_0_a17
	str r10, [r4]
	mov r5, #8
	ldr r6, addr_0_a18
	str r5, [r6]
	mov r7, #9
	ldr r8, addr_0_a19
	str r7, [r8]
	mov r9, #0
	ldr r10, addr_0_a20
	str r9, [r10]
	mov r4, #1
	ldr r5, addr_0_a21
	str r4, [r5]
	mov r6, #2
	ldr r7, addr_0_a22
	str r6, [r7]
	mov r8, #3
	ldr r9, addr_0_a23
	str r8, [r9]
	mov r10, #4
	ldr r4, addr_0_a24
	str r10, [r4]
	mov r5, #5
	ldr r6, addr_0_a25
	str r5, [r6]
	mov r7, #6
	ldr r8, addr_0_a26
	str r7, [r8]
	mov r9, #7
	ldr r10, addr_0_a27
	str r9, [r10]
	mov r4, #8
	ldr r5, addr_0_a28
	str r4, [r5]
	mov r6, #9
	ldr r7, addr_0_a29
	str r6, [r7]
	mov r8, #0
	ldr r9, addr_0_a30
	str r8, [r9]
	mov r10, #1
	ldr r4, addr_0_a31
	str r10, [r4]
	mov r5, #4
	ldr r6, addr_0_a32
	str r5, [r6]
	mov r7, #5
	ldr r8, addr_0_a33
	str r7, [r8]
	mov r9, #6
	ldr r10, addr_0_a34
	str r9, [r10]
	mov r4, #7
	ldr r5, addr_0_a35
	str r4, [r5]
	mov r6, #8
	ldr r7, addr_0_a36
	str r6, [r7]
	mov r8, #9
	ldr r9, addr_0_a37
	str r8, [r9]
	mov r10, #0
	ldr r4, addr_0_a38
	str r10, [r4]
	mov r5, #1
	ldr r6, addr_0_a39
	str r5, [r6]
	ldr r7, addr_0_a0
	ldr r8, [r7]
	str r8, [fp, #-4]
	ldr r9, addr_0_a1
	ldr r10, [r9]
	str r10, [fp, #-16]
	ldr r4, addr_0_a2
	ldr r5, [r4]
	ldr r6, addr_0_a3
	ldr r7, [r6]
	ldr r8, addr_0_a4
	ldr r9, [r8]
	ldr r10, addr_0_a5
	ldr r4, [r10]
	ldr r6, addr_0_a6
	ldr r8, [r6]
	ldr r10, addr_0_a7
	ldr r6, [r10]
	push {r6}
	push {r8}
	push {r4}
	push {r9}
	mov r3, r7
	mov r2, r5
	ldr r10, [fp, #-16]
	mov r1, r10
	ldr r6, [fp, #-4]
	mov r0, r6
	bl testParam8
	add sp, sp, #16
	mov r8, r0
	ldr r4, addr_0_a0
	str r8, [r4]
	ldr r9, addr_0_a0
	ldr r7, [r9]
	mov r0, r7
	bl putint
	ldr r5, addr_0_a32
	ldr r10, [r5]
	str r10, [fp, #-8]
	ldr r6, addr_0_a33
	ldr r8, [r6]
	str r8, [fp, #-20]
	ldr r4, addr_0_a34
	ldr r9, [r4]
	str r9, [fp, #-28]
	ldr r7, addr_0_a35
	ldr r5, [r7]
	str r5, [fp, #-36]
	ldr r10, addr_0_a36
	ldr r6, [r10]
	str r6, [fp, #-44]
	ldr r8, addr_0_a37
	ldr r4, [r8]
	str r4, [fp, #-52]
	ldr r9, addr_0_a38
	ldr r7, [r9]
	str r7, [fp, #-60]
	ldr r5, addr_0_a39
	ldr r10, [r5]
	str r10, [fp, #-68]
	ldr r6, addr_0_a8
	ldr r8, [r6]
	str r8, [fp, #-76]
	ldr r4, addr_0_a9
	ldr r9, [r4]
	str r9, [fp, #-84]
	ldr r7, addr_0_a10
	ldr r5, [r7]
	ldr r10, addr_0_a11
	ldr r6, [r10]
	ldr r8, addr_0_a12
	ldr r4, [r8]
	ldr r9, addr_0_a13
	ldr r7, [r9]
	ldr r10, addr_0_a14
	ldr r8, [r10]
	ldr r9, addr_0_a15
	ldr r10, [r9]
	push {r10}
	push {r8}
	push {r7}
	push {r4}
	push {r6}
	push {r5}
	ldr r9, [fp, #-84]
	push {r9}
	ldr r10, [fp, #-76]
	push {r10}
	ldr r8, [fp, #-68]
	push {r8}
	ldr r7, [fp, #-60]
	push {r7}
	ldr r4, [fp, #-52]
	push {r4}
	ldr r6, [fp, #-44]
	push {r6}
	ldr r5, [fp, #-36]
	mov r3, r5
	ldr r9, [fp, #-28]
	mov r2, r9
	ldr r10, [fp, #-20]
	mov r1, r10
	ldr r8, [fp, #-8]
	mov r0, r8
	bl testParam16
	add sp, sp, #48
	mov r7, r0
	ldr r4, addr_0_a0
	str r7, [r4]
	ldr r6, addr_0_a0
	ldr r5, [r6]
	mov r0, r5
	bl putint
	ldr r9, addr_0_a0
	ldr r10, [r9]
	str r10, [fp, #-12]
	ldr r8, addr_0_a1
	ldr r7, [r8]
	str r7, [fp, #-24]
	ldr r4, addr_0_a2
	ldr r6, [r4]
	str r6, [fp, #-32]
	ldr r5, addr_0_a3
	ldr r9, [r5]
	str r9, [fp, #-40]
	ldr r10, addr_0_a4
	ldr r8, [r10]
	str r8, [fp, #-48]
	ldr r7, addr_0_a5
	ldr r4, [r7]
	str r4, [fp, #-56]
	ldr r6, addr_0_a6
	ldr r5, [r6]
	str r5, [fp, #-64]
	ldr r9, addr_0_a7
	ldr r10, [r9]
	str r10, [fp, #-72]
	ldr r8, addr_0_a8
	ldr r7, [r8]
	str r7, [fp, #-80]
	ldr r4, addr_0_a9
	ldr r6, [r4]
	str r6, [fp, #-88]
	ldr r5, addr_0_a10
	ldr r9, [r5]
	str r9, [fp, #-92]
	ldr r10, addr_0_a11
	ldr r8, [r10]
	str r8, [fp, #-96]
	ldr r7, addr_0_a12
	ldr r4, [r7]
	str r4, [fp, #-100]
	ldr r6, addr_0_a13
	ldr r5, [r6]
	str r5, [fp, #-104]
	ldr r9, addr_0_a14
	ldr r10, [r9]
	str r10, [fp, #-108]
	ldr r8, addr_0_a15
	ldr r7, [r8]
	str r7, [fp, #-112]
	ldr r4, addr_0_a16
	ldr r6, [r4]
	str r6, [fp, #-116]
	ldr r5, addr_0_a17
	ldr r9, [r5]
	str r9, [fp, #-120]
	ldr r10, addr_0_a18
	ldr r8, [r10]
	str r8, [fp, #-124]
	ldr r7, addr_0_a19
	ldr r4, [r7]
	str r4, [fp, #-128]
	ldr r6, addr_0_a20
	ldr r5, [r6]
	str r5, [fp, #-132]
	ldr r9, addr_0_a21
	ldr r10, [r9]
	str r10, [fp, #-136]
	ldr r8, addr_0_a22
	b .LiteralPool0
.LTORG
addr_0_a39:
	.word a39
addr_0_a38:
	.word a38
addr_0_a37:
	.word a37
addr_0_a36:
	.word a36
addr_0_a34:
	.word a34
addr_0_a33:
	.word a33
addr_0_a32:
	.word a32
addr_0_a31:
	.word a31
addr_0_a11:
	.word a11
addr_0_a10:
	.word a10
addr_0_a1:
	.word a1
addr_0_a8:
	.word a8
addr_0_a5:
	.word a5
addr_0_a24:
	.word a24
addr_0_a7:
	.word a7
addr_0_a35:
	.word a35
addr_0_a0:
	.word a0
addr_0_a23:
	.word a23
addr_0_a9:
	.word a9
addr_0_a14:
	.word a14
addr_0_a30:
	.word a30
addr_0_a4:
	.word a4
addr_0_a29:
	.word a29
addr_0_a3:
	.word a3
addr_0_a6:
	.word a6
addr_0_a22:
	.word a22
addr_0_a2:
	.word a2
addr_0_a13:
	.word a13
addr_0_a12:
	.word a12
addr_0_a15:
	.word a15
addr_0_a16:
	.word a16
addr_0_a17:
	.word a17
addr_0_a18:
	.word a18
addr_0_a19:
	.word a19
addr_0_a20:
	.word a20
addr_0_a21:
	.word a21
addr_0_a25:
	.word a25
addr_0_a26:
	.word a26
addr_0_a27:
	.word a27
addr_0_a28:
	.word a28
.LiteralPool0:
	ldr r7, [r8]
	str r7, [fp, #-140]
	ldr r4, addr_1_a23
	ldr r6, [r4]
	str r6, [fp, #-144]
	ldr r5, addr_1_a24
	ldr r9, [r5]
	str r9, [fp, #-148]
	ldr r10, addr_1_a25
	ldr r8, [r10]
	str r8, [fp, #-152]
	ldr r7, addr_1_a26
	ldr r4, [r7]
	ldr r6, addr_1_a27
	ldr r5, [r6]
	ldr r9, addr_1_a28
	ldr r10, [r9]
	ldr r8, addr_1_a29
	ldr r7, [r8]
	ldr r6, addr_1_a30
	ldr r9, [r6]
	ldr r8, addr_1_a31
	ldr r6, [r8]
	push {r6}
	push {r9}
	push {r7}
	push {r10}
	push {r5}
	push {r4}
	ldr r8, [fp, #-152]
	push {r8}
	ldr r6, [fp, #-148]
	push {r6}
	ldr r9, [fp, #-144]
	push {r9}
	ldr r7, [fp, #-140]
	push {r7}
	ldr r10, [fp, #-136]
	push {r10}
	ldr r5, [fp, #-132]
	push {r5}
	ldr r4, [fp, #-128]
	push {r4}
	ldr r8, [fp, #-124]
	push {r8}
	ldr r6, [fp, #-120]
	push {r6}
	ldr r9, [fp, #-116]
	push {r9}
	ldr r7, [fp, #-112]
	push {r7}
	ldr r10, [fp, #-108]
	push {r10}
	ldr r5, [fp, #-104]
	push {r5}
	ldr r4, [fp, #-100]
	push {r4}
	ldr r8, [fp, #-96]
	push {r8}
	ldr r6, [fp, #-92]
	push {r6}
	ldr r9, [fp, #-88]
	push {r9}
	ldr r7, [fp, #-80]
	push {r7}
	ldr r10, [fp, #-72]
	push {r10}
	ldr r5, [fp, #-64]
	push {r5}
	ldr r4, [fp, #-56]
	push {r4}
	ldr r8, [fp, #-48]
	push {r8}
	ldr r6, [fp, #-40]
	mov r3, r6
	ldr r9, [fp, #-32]
	mov r2, r9
	ldr r7, [fp, #-24]
	mov r1, r7
	ldr r10, [fp, #-12]
	mov r0, r10
	bl testParam32
	add sp, sp, #112
	mov r5, r0
	ldr r4, addr_1_a0
	str r5, [r4]
	ldr r8, addr_1_a0
	ldr r6, [r8]
	mov r0, r6
	bl putint
	mov r0, #0
	b .LiteralPool1
.LTORG
addr_1_a39:
	.word a39
addr_1_a38:
	.word a38
addr_1_a37:
	.word a37
addr_1_a36:
	.word a36
addr_1_a34:
	.word a34
addr_1_a33:
	.word a33
addr_1_a32:
	.word a32
addr_1_a31:
	.word a31
addr_1_a11:
	.word a11
addr_1_a10:
	.word a10
addr_1_a1:
	.word a1
addr_1_a8:
	.word a8
addr_1_a5:
	.word a5
addr_1_a24:
	.word a24
addr_1_a7:
	.word a7
addr_1_a35:
	.word a35
addr_1_a0:
	.word a0
addr_1_a23:
	.word a23
addr_1_a9:
	.word a9
addr_1_a14:
	.word a14
addr_1_a30:
	.word a30
addr_1_a4:
	.word a4
addr_1_a29:
	.word a29
addr_1_a3:
	.word a3
addr_1_a6:
	.word a6
addr_1_a22:
	.word a22
addr_1_a2:
	.word a2
addr_1_a13:
	.word a13
addr_1_a12:
	.word a12
addr_1_a15:
	.word a15
addr_1_a16:
	.word a16
addr_1_a17:
	.word a17
addr_1_a18:
	.word a18
addr_1_a19:
	.word a19
addr_1_a20:
	.word a20
addr_1_a21:
	.word a21
addr_1_a25:
	.word a25
addr_1_a26:
	.word a26
addr_1_a27:
	.word a27
addr_1_a28:
	.word a28
.LiteralPool1:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool2
.LTORG
addr_2_a39:
	.word a39
addr_2_a38:
	.word a38
addr_2_a37:
	.word a37
addr_2_a36:
	.word a36
addr_2_a34:
	.word a34
addr_2_a33:
	.word a33
addr_2_a32:
	.word a32
addr_2_a31:
	.word a31
addr_2_a11:
	.word a11
addr_2_a10:
	.word a10
addr_2_a1:
	.word a1
addr_2_a8:
	.word a8
addr_2_a5:
	.word a5
addr_2_a24:
	.word a24
addr_2_a7:
	.word a7
addr_2_a35:
	.word a35
addr_2_a0:
	.word a0
addr_2_a23:
	.word a23
addr_2_a9:
	.word a9
addr_2_a14:
	.word a14
addr_2_a30:
	.word a30
addr_2_a4:
	.word a4
addr_2_a29:
	.word a29
addr_2_a3:
	.word a3
addr_2_a6:
	.word a6
addr_2_a22:
	.word a22
addr_2_a2:
	.word a2
addr_2_a13:
	.word a13
addr_2_a12:
	.word a12
addr_2_a15:
	.word a15
addr_2_a16:
	.word a16
addr_2_a17:
	.word a17
addr_2_a18:
	.word a18
addr_2_a19:
	.word a19
addr_2_a20:
	.word a20
addr_2_a21:
	.word a21
addr_2_a25:
	.word a25
addr_2_a26:
	.word a26
addr_2_a27:
	.word a27
addr_2_a28:
	.word a28
.LiteralPool2:
addr_3_a39:
	.word a39
addr_3_a38:
	.word a38
addr_3_a37:
	.word a37
addr_3_a36:
	.word a36
addr_3_a34:
	.word a34
addr_3_a33:
	.word a33
addr_3_a32:
	.word a32
addr_3_a31:
	.word a31
addr_3_a11:
	.word a11
addr_3_a10:
	.word a10
addr_3_a1:
	.word a1
addr_3_a8:
	.word a8
addr_3_a5:
	.word a5
addr_3_a24:
	.word a24
addr_3_a7:
	.word a7
addr_3_a35:
	.word a35
addr_3_a0:
	.word a0
addr_3_a23:
	.word a23
addr_3_a9:
	.word a9
addr_3_a14:
	.word a14
addr_3_a30:
	.word a30
addr_3_a4:
	.word a4
addr_3_a29:
	.word a29
addr_3_a3:
	.word a3
addr_3_a6:
	.word a6
addr_3_a22:
	.word a22
addr_3_a2:
	.word a2
addr_3_a13:
	.word a13
addr_3_a12:
	.word a12
addr_3_a15:
	.word a15
addr_3_a16:
	.word a16
addr_3_a17:
	.word a17
addr_3_a18:
	.word a18
addr_3_a19:
	.word a19
addr_3_a20:
	.word a20
addr_3_a21:
	.word a21
addr_3_a25:
	.word a25
addr_3_a26:
	.word a26
addr_3_a27:
	.word a27
addr_3_a28:
	.word a28
