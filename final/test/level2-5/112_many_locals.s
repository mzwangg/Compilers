	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global foo
	.type foo , %function
foo:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #136
.L45:
	add r4, fp, #-136
	mov r5, r4
	mov r6, #0
	str r6, [r5]
	add r7, fp, #-136
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #1
	str r5, [r4]
	add r6, fp, #-136
	mov r8, #2
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #2
	str r4, [r10]
	add r5, fp, #-136
	mov r8, #3
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #3
	str r10, [r7]
	add r4, fp, #-136
	mov r8, #4
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	add r10, fp, #-136
	mov r8, #5
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	mov r6, #1
	str r6, [r5]
	add r7, fp, #-136
	mov r8, #6
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #2
	str r5, [r4]
	add r6, fp, #-136
	mov r8, #7
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #3
	str r4, [r10]
	add r5, fp, #-136
	mov r8, #8
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #0
	str r10, [r7]
	add r4, fp, #-136
	mov r8, #9
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #1
	str r7, [r6]
	add r10, fp, #-136
	mov r8, #10
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	mov r6, #2
	str r6, [r5]
	add r7, fp, #-136
	mov r8, #11
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	mov r5, #3
	str r5, [r4]
	add r6, fp, #-136
	mov r8, #12
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	mov r4, #0
	str r4, [r10]
	add r5, fp, #-136
	mov r8, #13
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	mov r10, #1
	str r10, [r7]
	add r4, fp, #-136
	mov r8, #14
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	mov r7, #2
	str r7, [r6]
	add r10, fp, #-136
	mov r8, #15
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	mov r6, #3
	str r6, [r5]
	mov r7, #3
	str r7, [fp, #-72]
	mov r8, #7
	str r8, [fp, #-68]
	mov r9, #5
	str r9, [fp, #-64]
	mov r10, #6
	str r10, [fp, #-60]
	mov r4, #1
	str r4, [fp, #-56]
	mov r5, #0
	str r5, [fp, #-52]
	mov r6, #3
	str r6, [fp, #-48]
	mov r7, #5
	str r7, [fp, #-44]
	mov r8, #4
	str r8, [fp, #-40]
	mov r9, #2
	str r9, [fp, #-36]
	mov r10, #7
	str r10, [fp, #-32]
	mov r4, #9
	str r4, [fp, #-28]
	mov r5, #8
	str r5, [fp, #-24]
	mov r6, #1
	str r6, [fp, #-20]
	mov r7, #4
	str r7, [fp, #-16]
	mov r8, #6
	str r8, [fp, #-12]
	ldr r9, [fp, #-72]
	ldr r10, [fp, #-68]
	add r4, r9, r10
	ldr r5, [fp, #-64]
	add r6, r4, r5
	ldr r7, [fp, #-60]
	add r8, r6, r7
	ldr r9, [fp, #-56]
	add r10, r8, r9
	ldr r4, [fp, #-52]
	add r5, r10, r4
	ldr r6, [fp, #-48]
	add r7, r5, r6
	ldr r8, [fp, #-44]
	add r9, r7, r8
	str r9, [fp, #-8]
	ldr r10, [fp, #-40]
	ldr r4, [fp, #-36]
	add r5, r10, r4
	ldr r6, [fp, #-32]
	add r7, r5, r6
	ldr r8, [fp, #-28]
	add r9, r7, r8
	ldr r10, [fp, #-24]
	add r4, r9, r10
	ldr r5, [fp, #-20]
	add r6, r4, r5
	ldr r7, [fp, #-16]
	add r8, r6, r7
	ldr r9, [fp, #-12]
	add r10, r8, r9
	str r10, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	add r6, r4, r5
	ldr r7, [fp, #-72]
	add r8, fp, #-136
	mov r9, #4
	mul r10, r7, r9
	add r4, r8, r10
	ldr r5, [r4]
	add r7, r6, r5
	mov r0, r7
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L102:
	mov r4, #3
	str r4, [fp, #-112]
	mov r5, #7
	str r5, [fp, #-108]
	mov r6, #5
	str r6, [fp, #-104]
	mov r7, #6
	str r7, [fp, #-100]
	mov r8, #1
	str r8, [fp, #-96]
	mov r9, #0
	str r9, [fp, #-92]
	mov r10, #3
	str r10, [fp, #-88]
	mov r4, #5
	str r4, [fp, #-84]
	mov r5, #4
	str r5, [fp, #-80]
	mov r6, #2
	str r6, [fp, #-76]
	mov r7, #7
	str r7, [fp, #-72]
	mov r8, #9
	str r8, [fp, #-68]
	mov r9, #8
	str r9, [fp, #-64]
	mov r10, #1
	str r10, [fp, #-60]
	mov r4, #4
	str r4, [fp, #-56]
	mov r5, #6
	str r5, [fp, #-52]
	ldr r6, [fp, #-112]
	ldr r7, [fp, #-108]
	add r8, r6, r7
	ldr r9, [fp, #-104]
	add r10, r8, r9
	ldr r4, [fp, #-100]
	add r5, r10, r4
	ldr r6, [fp, #-96]
	add r7, r5, r6
	ldr r8, [fp, #-92]
	add r9, r7, r8
	ldr r10, [fp, #-88]
	add r4, r9, r10
	ldr r5, [fp, #-84]
	add r6, r4, r5
	str r6, [fp, #-48]
	ldr r7, [fp, #-80]
	ldr r8, [fp, #-76]
	add r9, r7, r8
	ldr r10, [fp, #-72]
	add r4, r9, r10
	ldr r5, [fp, #-68]
	add r6, r4, r5
	ldr r7, [fp, #-64]
	add r8, r6, r7
	ldr r9, [fp, #-60]
	add r10, r8, r9
	ldr r4, [fp, #-56]
	add r5, r10, r4
	ldr r6, [fp, #-52]
	add r7, r5, r6
	str r7, [fp, #-44]
	ldr r8, [fp, #-48]
	bl foo
	mov r9, r0
	add r10, r8, r9
	str r10, [fp, #-48]
	mov r4, #4
	str r4, [fp, #-40]
	mov r5, #7
	str r5, [fp, #-36]
	mov r6, #2
	str r6, [fp, #-32]
	mov r7, #5
	str r7, [fp, #-28]
	mov r8, #8
	str r8, [fp, #-24]
	mov r9, #0
	str r9, [fp, #-20]
	mov r10, #6
	str r10, [fp, #-16]
	mov r4, #3
	str r4, [fp, #-12]
	ldr r5, [fp, #-44]
	bl foo
	mov r6, r0
	add r7, r5, r6
	str r7, [fp, #-44]
	ldr r8, [fp, #-80]
	str r8, [fp, #-112]
	ldr r9, [fp, #-76]
	str r9, [fp, #-108]
	ldr r10, [fp, #-72]
	str r10, [fp, #-104]
	ldr r4, [fp, #-68]
	str r4, [fp, #-100]
	ldr r5, [fp, #-64]
	str r5, [fp, #-96]
	ldr r6, [fp, #-60]
	str r6, [fp, #-92]
	ldr r7, [fp, #-56]
	str r7, [fp, #-88]
	ldr r8, [fp, #-52]
	str r8, [fp, #-84]
	ldr r9, [fp, #-40]
	ldr r10, [fp, #-36]
	add r4, r9, r10
	ldr r5, [fp, #-32]
	add r6, r4, r5
	ldr r7, [fp, #-28]
	add r8, r6, r7
	ldr r9, [fp, #-24]
	add r10, r8, r9
	ldr r4, [fp, #-20]
	add r5, r10, r4
	ldr r6, [fp, #-16]
	add r7, r5, r6
	ldr r8, [fp, #-12]
	add r9, r7, r8
	str r9, [fp, #-8]
	ldr r10, [fp, #-48]
	ldr r4, [fp, #-44]
	add r5, r10, r4
	ldr r6, [fp, #-8]
	add r7, r5, r6
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
.LiteralPool0:
