	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global testParam8
	.type testParam8 , %function
testParam8:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L57:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	sub r6, r4, r5
	ldr r7, [fp, #-8]
	add r8, r6, r7
	ldr r9, [fp, #-4]
	sub r10, r8, r9
	ldr r4, [fp, #32]
	sub r5, r10, r4
	ldr r6, [fp, #36]
	sub r7, r5, r6
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
.L74:
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
	sub r5, r10, r4
	ldr r6, [fp, #36]
	add r7, r5, r6
	ldr r8, [fp, #40]
	add r9, r7, r8
	ldr r10, [fp, #44]
	add r4, r9, r10
	ldr r5, [fp, #48]
	sub r6, r4, r5
	ldr r7, [fp, #52]
	add r8, r6, r7
	ldr r9, [fp, #56]
	sub r10, r8, r9
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
.L107:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-8]
	mul r7, r5, r6
	add r8, r4, r7
	ldr r9, [fp, #-4]
	add r10, r8, r9
	ldr r5, [fp, #32]
	add r6, r10, r5
	ldr r4, [fp, #36]
	add r7, r6, r4
	ldr r8, [fp, #40]
	add r9, r7, r8
	ldr r10, [fp, #44]
	add r5, r9, r10
	ldr r6, [fp, #48]
	add r4, r5, r6
	ldr r7, [fp, #52]
	add r8, r4, r7
	ldr r9, [fp, #56]
	add r10, r8, r9
	ldr r5, [fp, #60]
	add r6, r10, r5
	ldr r4, [fp, #64]
	sub r7, r6, r4
	ldr r8, [fp, #68]
	sub r9, r7, r8
	ldr r10, [fp, #72]
	sub r5, r9, r10
	ldr r6, [fp, #76]
	sub r4, r5, r6
	ldr r7, [fp, #80]
	sub r8, r4, r7
	ldr r9, [fp, #84]
	sub r10, r8, r9
	ldr r5, [fp, #88]
	sub r6, r10, r5
	ldr r4, [fp, #92]
	sub r7, r6, r4
	ldr r8, [fp, #96]
	sub r9, r7, r8
	ldr r10, [fp, #100]
	sub r5, r9, r10
	ldr r6, [fp, #104]
	add r4, r5, r6
	ldr r7, [fp, #108]
	add r8, r4, r7
	ldr r9, [fp, #112]
	add r10, r8, r9
	ldr r5, [fp, #116]
	add r6, r10, r5
	ldr r4, [fp, #120]
	add r7, r6, r4
	ldr r8, [fp, #124]
	add r9, r7, r8
	ldr r10, [fp, #128]
	add r5, r9, r10
	ldr r6, [fp, #132]
	add r4, r5, r6
	ldr r7, [fp, #136]
	add r8, r4, r7
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
	sub sp, sp, #268
.L172:
	mov r4, #0
	str r4, [fp, #-128]
	mov r5, #1
	str r5, [fp, #-124]
	mov r6, #2
	str r6, [fp, #-120]
	mov r7, #3
	str r7, [fp, #-116]
	mov r8, #4
	str r8, [fp, #-112]
	mov r9, #5
	str r9, [fp, #-108]
	mov r10, #6
	str r10, [fp, #-104]
	mov r4, #7
	str r4, [fp, #-100]
	mov r5, #8
	str r5, [fp, #-96]
	mov r6, #9
	str r6, [fp, #-92]
	mov r7, #0
	str r7, [fp, #-88]
	mov r8, #1
	str r8, [fp, #-84]
	mov r9, #2
	str r9, [fp, #-80]
	mov r10, #3
	str r10, [fp, #-76]
	mov r4, #4
	str r4, [fp, #-72]
	mov r5, #5
	str r5, [fp, #-68]
	mov r6, #6
	str r6, [fp, #-64]
	mov r7, #7
	str r7, [fp, #-60]
	mov r8, #8
	str r8, [fp, #-56]
	mov r9, #9
	str r9, [fp, #-52]
	mov r10, #0
	str r10, [fp, #-48]
	mov r4, #1
	str r4, [fp, #-44]
	mov r5, #2
	str r5, [fp, #-40]
	mov r6, #3
	str r6, [fp, #-36]
	mov r7, #4
	str r7, [fp, #-32]
	mov r8, #5
	str r8, [fp, #-28]
	mov r9, #6
	str r9, [fp, #-24]
	mov r10, #7
	str r10, [fp, #-20]
	mov r4, #8
	str r4, [fp, #-16]
	mov r5, #9
	str r5, [fp, #-12]
	mov r6, #0
	str r6, [fp, #-8]
	mov r7, #1
	str r7, [fp, #-4]
	ldr r8, [fp, #-128]
	str r8, [fp, #-132]
	ldr r9, [fp, #-124]
	ldr r10, [fp, #-120]
	ldr r4, [fp, #-116]
	ldr r5, [fp, #-112]
	ldr r6, [fp, #-108]
	ldr r7, [fp, #-104]
	ldr r8, [fp, #-100]
	push {r8}
	push {r7}
	push {r6}
	push {r5}
	mov r3, r4
	mov r2, r10
	mov r1, r9
	ldr r8, [fp, #-132]
	mov r0, r8
	bl testParam8
	add sp, sp, #16
	mov r7, r0
	str r7, [fp, #-136]
	ldr r6, [fp, #-124]
	str r6, [fp, #-144]
	ldr r5, [fp, #-120]
	str r5, [fp, #-152]
	ldr r4, [fp, #-116]
	str r4, [fp, #-160]
	ldr r10, [fp, #-112]
	str r10, [fp, #-168]
	ldr r9, [fp, #-108]
	str r9, [fp, #-176]
	ldr r8, [fp, #-104]
	str r8, [fp, #-184]
	ldr r7, [fp, #-100]
	str r7, [fp, #-192]
	ldr r6, [fp, #-96]
	str r6, [fp, #-200]
	ldr r5, [fp, #-92]
	ldr r4, [fp, #-88]
	ldr r10, [fp, #-84]
	ldr r9, [fp, #-80]
	ldr r8, [fp, #-76]
	ldr r7, [fp, #-72]
	ldr r6, [fp, #-68]
	push {r6}
	push {r7}
	push {r8}
	push {r9}
	push {r10}
	push {r4}
	push {r5}
	ldr r6, [fp, #-200]
	push {r6}
	ldr r7, [fp, #-192]
	push {r7}
	ldr r8, [fp, #-184]
	push {r8}
	ldr r9, [fp, #-176]
	push {r9}
	ldr r10, [fp, #-168]
	push {r10}
	ldr r4, [fp, #-160]
	mov r3, r4
	ldr r5, [fp, #-152]
	mov r2, r5
	ldr r6, [fp, #-144]
	mov r1, r6
	ldr r7, [fp, #-136]
	mov r0, r7
	bl testParam16
	add sp, sp, #48
	mov r8, r0
	str r8, [fp, #-140]
	ldr r9, [fp, #-124]
	str r9, [fp, #-148]
	ldr r10, [fp, #-120]
	str r10, [fp, #-156]
	ldr r4, [fp, #-116]
	str r4, [fp, #-164]
	ldr r5, [fp, #-112]
	str r5, [fp, #-172]
	ldr r6, [fp, #-108]
	str r6, [fp, #-180]
	ldr r7, [fp, #-104]
	str r7, [fp, #-188]
	ldr r8, [fp, #-100]
	str r8, [fp, #-196]
	ldr r9, [fp, #-96]
	str r9, [fp, #-204]
	ldr r10, [fp, #-92]
	str r10, [fp, #-208]
	ldr r4, [fp, #-88]
	str r4, [fp, #-212]
	ldr r5, [fp, #-84]
	str r5, [fp, #-216]
	ldr r6, [fp, #-80]
	str r6, [fp, #-220]
	ldr r7, [fp, #-76]
	str r7, [fp, #-224]
	ldr r8, [fp, #-72]
	str r8, [fp, #-228]
	ldr r9, [fp, #-68]
	str r9, [fp, #-232]
	ldr r10, [fp, #-64]
	str r10, [fp, #-236]
	ldr r4, [fp, #-60]
	str r4, [fp, #-240]
	ldr r5, [fp, #-56]
	str r5, [fp, #-244]
	ldr r6, [fp, #-52]
	str r6, [fp, #-248]
	ldr r7, [fp, #-48]
	str r7, [fp, #-252]
	ldr r8, [fp, #-44]
	ldr r9, =-256
	str r8, [fp, r9]
	ldr r10, [fp, #-40]
	ldr r4, =-260
	str r10, [fp, r4]
	ldr r5, [fp, #-36]
	ldr r6, =-264
	str r5, [fp, r6]
	ldr r7, [fp, #-32]
	ldr r8, =-268
	str r7, [fp, r8]
	ldr r9, [fp, #-28]
	ldr r10, [fp, #-24]
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-12]
	ldr r7, [fp, #-8]
	ldr r8, [fp, #-4]
	push {r8}
	push {r7}
	push {r6}
	push {r5}
	push {r4}
	push {r10}
	push {r9}
	ldr r8, =-268
	ldr r7, [fp, r8]
	push {r7}
	ldr r6, =-264
	ldr r5, [fp, r6]
	push {r5}
	ldr r4, =-260
	ldr r10, [fp, r4]
	push {r10}
	ldr r9, =-256
	ldr r8, [fp, r9]
	push {r8}
	ldr r7, [fp, #-252]
	push {r7}
	ldr r6, [fp, #-248]
	push {r6}
	ldr r5, [fp, #-244]
	push {r5}
	ldr r4, [fp, #-240]
	push {r4}
	ldr r10, [fp, #-236]
	push {r10}
	ldr r9, [fp, #-232]
	push {r9}
	ldr r8, [fp, #-228]
	push {r8}
	ldr r7, [fp, #-224]
	push {r7}
	ldr r6, [fp, #-220]
	push {r6}
	ldr r5, [fp, #-216]
	push {r5}
	ldr r4, [fp, #-212]
	push {r4}
	ldr r10, [fp, #-208]
	push {r10}
	ldr r9, [fp, #-204]
	push {r9}
	ldr r8, [fp, #-196]
	push {r8}
	ldr r7, [fp, #-188]
	push {r7}
	ldr r6, [fp, #-180]
	push {r6}
	ldr r5, [fp, #-172]
	push {r5}
	ldr r4, [fp, #-164]
	mov r3, r4
	ldr r10, [fp, #-156]
	mov r2, r10
	ldr r9, [fp, #-148]
	mov r1, r9
	ldr r8, [fp, #-140]
	mov r0, r8
	bl testParam32
	add sp, sp, #112
	mov r7, r0
	str r7, [fp, #-128]
	ldr r6, [fp, #-128]
	mov r0, r6
	bl putint
	mov r0, #0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
.LiteralPool0:
