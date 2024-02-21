	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global sort
	.type sort , %function
sort:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #20
.L136:                               	@ successors = .L140
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	mov r4, #0
	str r4, [fp, #-12]
	b .L140
.L140:                               	@ predecessors = .L136, .L149                               	@ successors = .L144, .L145
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-16]
	sub r7, r6, #1
	cmp r5, r7
	blt .L145
	b .L144
.L141:                               	@ predecessors = .L144
	b .Lsort_END
.L144:                               	@ predecessors = .L140                               	@ successors = .L141
	b .L141
.L145:                               	@ predecessors = .L140                               	@ successors = .L148
	ldr r8, [fp, #-12]
	add r9, r8, #1
	str r9, [fp, #-8]
	b .L148
.L148:                               	@ predecessors = .L145, .L154                               	@ successors = .L152, .L153
	ldr r10, [fp, #-8]
	ldr r4, [fp, #-16]
	cmp r10, r4
	blt .L153
	b .L152
.L149:                               	@ predecessors = .L152                               	@ successors = .L140
	ldr r6, [fp, #-12]
	add r5, r6, #1
	str r5, [fp, #-12]
	b .L140
.L152:                               	@ predecessors = .L148                               	@ successors = .L149
	b .L149
.L153:                               	@ predecessors = .L148                               	@ successors = .L163, .L164
	ldr r7, [fp, #-20]
	ldr r8, [fp, #-12]
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r6, [r4]
	ldr r5, [fp, #-20]
	ldr r8, [fp, #-8]
	mov r9, #4
	mul r7, r8, r9
	add r10, r5, r7
	ldr r4, [r10]
	cmp r6, r4
	blt .L164
	b .L163
.L154:                               	@ predecessors = .L163, .L164                               	@ successors = .L148
	ldr r8, [fp, #-8]
	add r9, r8, #1
	str r9, [fp, #-8]
	b .L148
.L163:                               	@ predecessors = .L153                               	@ successors = .L154
	b .L154
.L164:                               	@ predecessors = .L153                               	@ successors = .L154
	ldr r5, [fp, #-20]
	ldr r7, [fp, #-12]
	mov r10, #4
	mul r6, r7, r10
	add r4, r5, r6
	ldr r8, [r4]
	str r8, [fp, #-4]
	ldr r9, [fp, #-20]
	ldr r7, [fp, #-8]
	mov r10, #4
	mul r5, r7, r10
	add r6, r9, r5
	ldr r4, [r6]
	ldr r8, [fp, #-20]
	ldr r7, [fp, #-12]
	mov r10, #4
	mul r9, r7, r10
	add r5, r8, r9
	str r4, [r5]
	ldr r6, [fp, #-4]
	ldr r7, [fp, #-20]
	ldr r10, [fp, #-8]
	mov r8, #4
	mul r9, r10, r8
	add r4, r7, r9
	str r6, [r4]
	b .L154
.Lsort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global param32_rec
	.type param32_rec , %function
param32_rec:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #116
.L183:                               	@ successors = .L218, .L219
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	str r3, [fp, #-4]
	ldr r4, [fp, #-16]
	cmp r4, #0
	beq .L219
	b .L218
.L216:
	b .Lparam32_rec_END
.L218:                               	@ predecessors = .L183                               	@ successors = .L221
	b .L221
.L219:                               	@ predecessors = .L183
	ldr r5, [fp, #-12]
	mov r0, r5
	b .Lparam32_rec_END
.L221:                               	@ predecessors = .L218
	ldr r6, [fp, #-16]
	sub r7, r6, #1
	str r7, [fp, #-20]
	ldr r8, [fp, #-12]
	ldr r9, [fp, #-8]
	add r10, r8, r9
	ldr r4, =998244353
	sdiv r5, r10, r4
	mul r6, r5, r4
	sub r7, r10, r6
	str r7, [fp, #-24]
	ldr r8, [fp, #-4]
	str r8, [fp, #-28]
	ldr r9, [fp, #36]
	str r9, [fp, #-32]
	ldr r4, [fp, #40]
	str r4, [fp, #-36]
	ldr r5, [fp, #44]
	str r5, [fp, #-40]
	ldr r10, [fp, #48]
	str r10, [fp, #-44]
	ldr r6, [fp, #52]
	str r6, [fp, #-48]
	ldr r7, [fp, #56]
	str r7, [fp, #-52]
	ldr r8, [fp, #60]
	str r8, [fp, #-56]
	ldr r9, [fp, #64]
	str r9, [fp, #-60]
	ldr r4, [fp, #68]
	str r4, [fp, #-64]
	ldr r5, [fp, #72]
	str r5, [fp, #-68]
	ldr r10, [fp, #76]
	str r10, [fp, #-72]
	ldr r6, [fp, #80]
	str r6, [fp, #-76]
	ldr r7, [fp, #84]
	str r7, [fp, #-80]
	ldr r8, [fp, #88]
	str r8, [fp, #-84]
	ldr r9, [fp, #92]
	str r9, [fp, #-88]
	ldr r4, [fp, #96]
	str r4, [fp, #-92]
	ldr r5, [fp, #100]
	str r5, [fp, #-96]
	ldr r10, [fp, #104]
	str r10, [fp, #-100]
	ldr r6, [fp, #108]
	str r6, [fp, #-104]
	ldr r7, [fp, #112]
	str r7, [fp, #-108]
	ldr r8, [fp, #116]
	str r8, [fp, #-112]
	ldr r9, [fp, #120]
	str r9, [fp, #-116]
	ldr r4, [fp, #124]
	ldr r5, [fp, #128]
	ldr r10, [fp, #132]
	ldr r6, [fp, #136]
	ldr r7, [fp, #140]
	ldr r8, [fp, #144]
	mov r9, #0
	push {r9}
	push {r8}
	push {r7}
	push {r6}
	push {r10}
	push {r5}
	push {r4}
	ldr r9, [fp, #-116]
	push {r9}
	ldr r8, [fp, #-112]
	push {r8}
	ldr r7, [fp, #-108]
	push {r7}
	ldr r6, [fp, #-104]
	push {r6}
	ldr r10, [fp, #-100]
	push {r10}
	ldr r5, [fp, #-96]
	push {r5}
	ldr r4, [fp, #-92]
	push {r4}
	ldr r9, [fp, #-88]
	push {r9}
	ldr r8, [fp, #-84]
	push {r8}
	ldr r7, [fp, #-80]
	push {r7}
	ldr r6, [fp, #-76]
	push {r6}
	ldr r10, [fp, #-72]
	push {r10}
	ldr r5, [fp, #-68]
	push {r5}
	ldr r4, [fp, #-64]
	push {r4}
	ldr r9, [fp, #-60]
	push {r9}
	ldr r8, [fp, #-56]
	push {r8}
	ldr r7, [fp, #-52]
	push {r7}
	ldr r6, [fp, #-48]
	push {r6}
	ldr r10, [fp, #-44]
	push {r10}
	ldr r5, [fp, #-40]
	push {r5}
	ldr r4, [fp, #-36]
	push {r4}
	ldr r9, [fp, #-32]
	mov r3, r9
	ldr r8, [fp, #-28]
	mov r2, r8
	ldr r7, [fp, #-24]
	mov r1, r7
	ldr r6, [fp, #-20]
	mov r0, r6
	bl param32_rec
	add sp, sp, #112
	mov r10, r0
	mov r0, r10
.Lparam32_rec_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global param32_arr
	.type param32_arr , %function
param32_arr:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #20
.L254:
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	str r3, [fp, #-8]
	ldr r4, [fp, #-20]
	mov r5, r4
	ldr r6, [r5]
	ldr r7, [fp, #-20]
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [r4]
	add r8, r6, r5
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r7, [fp, #-16]
	mov r10, r7
	ldr r4, [r10]
	add r6, r9, r4
	ldr r5, [fp, #-16]
	mov r8, #1
	mov r7, #4
	mul r10, r8, r7
	add r9, r5, r10
	ldr r4, [r9]
	add r8, r6, r4
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r5, [fp, #-12]
	mov r10, r5
	ldr r9, [r10]
	add r6, r7, r9
	ldr r4, [fp, #-12]
	mov r8, #1
	mov r5, #4
	mul r10, r8, r5
	add r7, r4, r10
	ldr r9, [r7]
	add r8, r6, r9
	str r8, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #-8]
	mov r10, r4
	ldr r7, [r10]
	add r6, r5, r7
	ldr r9, [fp, #-8]
	mov r8, #1
	mov r4, #4
	mul r10, r8, r4
	add r5, r9, r10
	ldr r7, [r5]
	add r8, r6, r7
	str r8, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r9, [fp, #32]
	mov r10, r9
	ldr r5, [r10]
	add r6, r4, r5
	ldr r7, [fp, #32]
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [r4]
	add r8, r6, r5
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r7, [fp, #36]
	mov r10, r7
	ldr r4, [r10]
	add r6, r9, r4
	ldr r5, [fp, #36]
	mov r8, #1
	mov r7, #4
	mul r10, r8, r7
	add r9, r5, r10
	ldr r4, [r9]
	add r8, r6, r4
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r5, [fp, #40]
	mov r10, r5
	ldr r9, [r10]
	add r6, r7, r9
	ldr r4, [fp, #40]
	mov r8, #1
	mov r5, #4
	mul r10, r8, r5
	add r7, r4, r10
	ldr r9, [r7]
	add r8, r6, r9
	str r8, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #44]
	mov r10, r4
	ldr r7, [r10]
	add r6, r5, r7
	ldr r9, [fp, #44]
	mov r8, #1
	mov r4, #4
	mul r10, r8, r4
	add r5, r9, r10
	ldr r7, [r5]
	add r8, r6, r7
	str r8, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r9, [fp, #48]
	mov r10, r9
	ldr r5, [r10]
	add r6, r4, r5
	ldr r7, [fp, #48]
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [r4]
	add r8, r6, r5
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r7, [fp, #52]
	mov r10, r7
	ldr r4, [r10]
	add r6, r9, r4
	ldr r5, [fp, #52]
	mov r8, #1
	mov r7, #4
	mul r10, r8, r7
	add r9, r5, r10
	ldr r4, [r9]
	add r8, r6, r4
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r5, [fp, #56]
	mov r10, r5
	ldr r9, [r10]
	add r6, r7, r9
	ldr r4, [fp, #56]
	mov r8, #1
	mov r5, #4
	mul r10, r8, r5
	add r7, r4, r10
	ldr r9, [r7]
	add r8, r6, r9
	str r8, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #60]
	mov r10, r4
	ldr r7, [r10]
	add r6, r5, r7
	ldr r9, [fp, #60]
	mov r8, #1
	mov r4, #4
	mul r10, r8, r4
	add r5, r9, r10
	ldr r7, [r5]
	add r8, r6, r7
	str r8, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r9, [fp, #64]
	mov r10, r9
	ldr r5, [r10]
	add r6, r4, r5
	ldr r7, [fp, #64]
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [r4]
	add r8, r6, r5
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r7, [fp, #68]
	mov r10, r7
	ldr r4, [r10]
	add r6, r9, r4
	ldr r5, [fp, #68]
	mov r8, #1
	mov r7, #4
	mul r10, r8, r7
	add r9, r5, r10
	ldr r4, [r9]
	add r8, r6, r4
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r5, [fp, #72]
	mov r10, r5
	ldr r9, [r10]
	add r6, r7, r9
	ldr r4, [fp, #72]
	mov r8, #1
	mov r5, #4
	mul r10, r8, r5
	add r7, r4, r10
	ldr r9, [r7]
	add r8, r6, r9
	str r8, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #76]
	mov r10, r4
	ldr r7, [r10]
	add r6, r5, r7
	ldr r9, [fp, #76]
	mov r8, #1
	mov r4, #4
	mul r10, r8, r4
	add r5, r9, r10
	ldr r7, [r5]
	add r8, r6, r7
	str r8, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r9, [fp, #80]
	mov r10, r9
	ldr r5, [r10]
	add r6, r4, r5
	ldr r7, [fp, #80]
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [r4]
	add r8, r6, r5
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r7, [fp, #84]
	mov r10, r7
	ldr r4, [r10]
	add r6, r9, r4
	ldr r5, [fp, #84]
	mov r8, #1
	mov r7, #4
	mul r10, r8, r7
	add r9, r5, r10
	ldr r4, [r9]
	add r8, r6, r4
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r5, [fp, #88]
	mov r10, r5
	ldr r9, [r10]
	add r6, r7, r9
	ldr r4, [fp, #88]
	mov r8, #1
	mov r5, #4
	mul r10, r8, r5
	add r7, r4, r10
	ldr r9, [r7]
	add r8, r6, r9
	str r8, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #92]
	mov r10, r4
	ldr r7, [r10]
	add r6, r5, r7
	ldr r9, [fp, #92]
	mov r8, #1
	mov r4, #4
	mul r10, r8, r4
	add r5, r9, r10
	ldr r7, [r5]
	add r8, r6, r7
	str r8, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r9, [fp, #96]
	mov r10, r9
	ldr r5, [r10]
	add r6, r4, r5
	ldr r7, [fp, #96]
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [r4]
	add r8, r6, r5
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r7, [fp, #100]
	mov r10, r7
	ldr r4, [r10]
	add r6, r9, r4
	ldr r5, [fp, #100]
	mov r8, #1
	mov r7, #4
	mul r10, r8, r7
	add r9, r5, r10
	ldr r4, [r9]
	add r8, r6, r4
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r5, [fp, #104]
	mov r10, r5
	ldr r9, [r10]
	add r6, r7, r9
	ldr r4, [fp, #104]
	mov r8, #1
	mov r5, #4
	mul r10, r8, r5
	add r7, r4, r10
	ldr r9, [r7]
	add r8, r6, r9
	str r8, [fp, #-4]
	b .LiteralPool0
.LTORG
.LiteralPool0:
	ldr r5, [fp, #-4]
	ldr r4, [fp, #108]
	mov r10, r4
	ldr r7, [r10]
	add r6, r5, r7
	ldr r9, [fp, #108]
	mov r8, #1
	mov r4, #4
	mul r10, r8, r4
	add r5, r9, r10
	ldr r7, [r5]
	add r8, r6, r7
	str r8, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r9, [fp, #112]
	mov r10, r9
	ldr r5, [r10]
	add r6, r4, r5
	ldr r7, [fp, #112]
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [r4]
	add r8, r6, r5
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r7, [fp, #116]
	mov r10, r7
	ldr r4, [r10]
	add r6, r9, r4
	ldr r5, [fp, #116]
	mov r8, #1
	mov r7, #4
	mul r10, r8, r7
	add r9, r5, r10
	ldr r4, [r9]
	add r8, r6, r4
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r5, [fp, #120]
	mov r10, r5
	ldr r9, [r10]
	add r6, r7, r9
	ldr r4, [fp, #120]
	mov r8, #1
	mov r5, #4
	mul r10, r8, r5
	add r7, r4, r10
	ldr r9, [r7]
	add r8, r6, r9
	str r8, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #124]
	mov r10, r4
	ldr r7, [r10]
	add r6, r5, r7
	ldr r9, [fp, #124]
	mov r8, #1
	mov r4, #4
	mul r10, r8, r4
	add r5, r9, r10
	ldr r7, [r5]
	add r8, r6, r7
	str r8, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r9, [fp, #128]
	mov r10, r9
	ldr r5, [r10]
	add r6, r4, r5
	ldr r7, [fp, #128]
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [r4]
	add r8, r6, r5
	str r8, [fp, #-4]
	ldr r9, [fp, #-4]
	ldr r7, [fp, #132]
	mov r10, r7
	ldr r4, [r10]
	add r6, r9, r4
	ldr r5, [fp, #132]
	mov r8, #1
	mov r7, #4
	mul r10, r8, r7
	add r9, r5, r10
	ldr r4, [r9]
	add r8, r6, r4
	str r8, [fp, #-4]
	ldr r7, [fp, #-4]
	ldr r5, [fp, #136]
	mov r10, r5
	ldr r9, [r10]
	add r6, r7, r9
	ldr r4, [fp, #136]
	mov r8, #1
	mov r5, #4
	mul r10, r8, r5
	add r7, r4, r10
	ldr r9, [r7]
	add r8, r6, r9
	str r8, [fp, #-4]
	ldr r5, [fp, #-4]
	ldr r4, [fp, #140]
	mov r10, r4
	ldr r7, [r10]
	add r6, r5, r7
	ldr r9, [fp, #140]
	mov r8, #1
	mov r4, #4
	mul r10, r8, r4
	add r5, r9, r10
	ldr r7, [r5]
	add r8, r6, r7
	str r8, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	b .LiteralPool1
.LTORG
.LiteralPool1:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	b .LiteralPool2
.LTORG
.LiteralPool2:
	.global param16
	.type param16 , %function
param16:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #180
.L512:
	str r0, [fp, #-80]
	str r1, [fp, #-76]
	str r2, [fp, #-72]
	str r3, [fp, #-68]
	add r4, fp, #-64
	mov r5, r4
	ldr r6, [fp, #-80]
	str r6, [r5]
	add r7, fp, #-64
	mov r8, #1
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [fp, #-76]
	str r5, [r4]
	add r6, fp, #-64
	mov r8, #2
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	ldr r4, [fp, #-72]
	str r4, [r10]
	add r5, fp, #-64
	mov r8, #3
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	ldr r10, [fp, #-68]
	str r10, [r7]
	add r4, fp, #-64
	mov r8, #4
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	ldr r7, [fp, #36]
	str r7, [r6]
	add r10, fp, #-64
	mov r8, #5
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	ldr r6, [fp, #40]
	str r6, [r5]
	add r7, fp, #-64
	mov r8, #6
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [fp, #44]
	str r5, [r4]
	add r6, fp, #-64
	mov r8, #7
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	ldr r4, [fp, #48]
	str r4, [r10]
	add r5, fp, #-64
	mov r8, #8
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	ldr r10, [fp, #52]
	str r10, [r7]
	add r4, fp, #-64
	mov r8, #9
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	ldr r7, [fp, #56]
	str r7, [r6]
	add r10, fp, #-64
	mov r8, #10
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	ldr r6, [fp, #60]
	str r6, [r5]
	add r7, fp, #-64
	mov r8, #11
	mov r9, #4
	mul r10, r8, r9
	add r4, r7, r10
	ldr r5, [fp, #64]
	str r5, [r4]
	add r6, fp, #-64
	mov r8, #12
	mov r9, #4
	mul r7, r8, r9
	add r10, r6, r7
	ldr r4, [fp, #68]
	str r4, [r10]
	add r5, fp, #-64
	mov r8, #13
	mov r9, #4
	mul r6, r8, r9
	add r7, r5, r6
	ldr r10, [fp, #72]
	str r10, [r7]
	add r4, fp, #-64
	mov r8, #14
	mov r9, #4
	mul r5, r8, r9
	add r6, r4, r5
	ldr r7, [fp, #76]
	str r7, [r6]
	add r10, fp, #-64
	mov r8, #15
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	ldr r6, [fp, #80]
	str r6, [r5]
	add r7, fp, #-64
	mov r8, r7
	mov r1, #16
	mov r0, r8
	bl sort
	add r9, fp, #-64
	mov r10, r9
	ldr r4, [r10]
	str r4, [fp, #-84]
	add r5, fp, #-64
	mov r6, #1
	mov r7, #4
	mul r8, r6, r7
	add r9, r5, r8
	ldr r10, [r9]
	str r10, [fp, #-88]
	add r4, fp, #-64
	mov r6, #2
	mov r7, #4
	mul r5, r6, r7
	add r8, r4, r5
	ldr r9, [r8]
	str r9, [fp, #-92]
	add r10, fp, #-64
	mov r6, #3
	mov r7, #4
	mul r4, r6, r7
	add r5, r10, r4
	ldr r8, [r5]
	str r8, [fp, #-96]
	add r9, fp, #-64
	mov r6, #4
	mov r7, #4
	mul r10, r6, r7
	add r4, r9, r10
	ldr r5, [r4]
	str r5, [fp, #-100]
	add r8, fp, #-64
	mov r6, #5
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	ldr r4, [r10]
	str r4, [fp, #-104]
	add r5, fp, #-64
	mov r6, #6
	mov r7, #4
	mul r8, r6, r7
	add r9, r5, r8
	ldr r10, [r9]
	str r10, [fp, #-108]
	add r4, fp, #-64
	mov r6, #7
	mov r7, #4
	mul r5, r6, r7
	add r8, r4, r5
	ldr r9, [r8]
	str r9, [fp, #-112]
	add r10, fp, #-64
	mov r6, #8
	mov r7, #4
	mul r4, r6, r7
	add r5, r10, r4
	ldr r8, [r5]
	str r8, [fp, #-116]
	add r9, fp, #-64
	mov r6, #9
	mov r7, #4
	mul r10, r6, r7
	add r4, r9, r10
	ldr r5, [r4]
	str r5, [fp, #-120]
	add r8, fp, #-64
	mov r6, #10
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	ldr r4, [r10]
	str r4, [fp, #-124]
	add r5, fp, #-64
	mov r6, #11
	mov r7, #4
	mul r8, r6, r7
	add r9, r5, r8
	ldr r10, [r9]
	str r10, [fp, #-128]
	add r4, fp, #-64
	mov r6, #12
	mov r7, #4
	mul r5, r6, r7
	add r8, r4, r5
	ldr r9, [r8]
	str r9, [fp, #-132]
	add r10, fp, #-64
	mov r6, #13
	mov r7, #4
	mul r4, r6, r7
	add r5, r10, r4
	ldr r8, [r5]
	str r8, [fp, #-136]
	add r9, fp, #-64
	mov r6, #14
	mov r7, #4
	mul r10, r6, r7
	add r4, r9, r10
	ldr r5, [r4]
	str r5, [fp, #-140]
	add r8, fp, #-64
	mov r6, #15
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	ldr r4, [r10]
	str r4, [fp, #-144]
	ldr r5, [fp, #-80]
	str r5, [fp, #-148]
	ldr r6, [fp, #-76]
	str r6, [fp, #-152]
	ldr r7, [fp, #-72]
	str r7, [fp, #-156]
	ldr r8, [fp, #-68]
	str r8, [fp, #-160]
	ldr r9, [fp, #36]
	str r9, [fp, #-164]
	ldr r10, [fp, #40]
	str r10, [fp, #-168]
	ldr r4, [fp, #44]
	str r4, [fp, #-172]
	ldr r5, [fp, #48]
	str r5, [fp, #-176]
	ldr r6, [fp, #52]
	str r6, [fp, #-180]
	ldr r7, [fp, #56]
	ldr r8, [fp, #60]
	ldr r9, [fp, #64]
	ldr r10, [fp, #68]
	ldr r4, [fp, #72]
	ldr r5, [fp, #76]
	ldr r6, [fp, #80]
	push {r6}
	push {r5}
	push {r4}
	push {r10}
	push {r9}
	push {r8}
	push {r7}
	ldr r6, [fp, #-180]
	push {r6}
	ldr r5, [fp, #-176]
	push {r5}
	ldr r4, [fp, #-172]
	push {r4}
	ldr r10, [fp, #-168]
	push {r10}
	ldr r9, [fp, #-164]
	push {r9}
	ldr r8, [fp, #-160]
	push {r8}
	ldr r7, [fp, #-156]
	push {r7}
	ldr r6, [fp, #-152]
	push {r6}
	ldr r5, [fp, #-148]
	push {r5}
	ldr r4, [fp, #-144]
	push {r4}
	ldr r10, [fp, #-140]
	push {r10}
	ldr r9, [fp, #-136]
	push {r9}
	ldr r8, [fp, #-132]
	push {r8}
	ldr r7, [fp, #-128]
	push {r7}
	ldr r6, [fp, #-124]
	push {r6}
	ldr r5, [fp, #-120]
	push {r5}
	ldr r4, [fp, #-116]
	push {r4}
	ldr r10, [fp, #-112]
	push {r10}
	ldr r9, [fp, #-108]
	push {r9}
	ldr r8, [fp, #-104]
	push {r8}
	ldr r7, [fp, #-100]
	push {r7}
	b .LiteralPool3
.LTORG
.LiteralPool3:
	ldr r6, [fp, #-96]
	mov r3, r6
	ldr r5, [fp, #-92]
	mov r2, r5
	ldr r4, [fp, #-88]
	mov r1, r4
	ldr r10, [fp, #-84]
	mov r0, r10
	bl param32_rec
	add sp, sp, #112
	mov r9, r0
	mov r0, r9
	b .LiteralPool4
.LTORG
.LiteralPool4:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool5
.LTORG
.LiteralPool5:
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #412
.L611:                               	@ successors = .L742
	ldr r4, =-260
	add r5, fp, r4
	mov r6, r5
	mov r7, r6
	ldr r8, =-264
	str r7, [fp, r8]
	bl getint
	mov r9, r0
	ldr r10, =-272
	str r9, [fp, r10]
	bl getint
	mov r4, r0
	ldr r5, =-280
	str r4, [fp, r5]
	bl getint
	mov r6, r0
	ldr r7, =-288
	str r6, [fp, r7]
	bl getint
	mov r8, r0
	ldr r9, =-296
	str r8, [fp, r9]
	bl getint
	mov r10, r0
	ldr r4, =-304
	str r10, [fp, r4]
	bl getint
	mov r5, r0
	ldr r6, =-312
	str r5, [fp, r6]
	bl getint
	mov r7, r0
	ldr r8, =-320
	str r7, [fp, r8]
	bl getint
	mov r9, r0
	ldr r10, =-328
	str r9, [fp, r10]
	bl getint
	mov r4, r0
	ldr r5, =-336
	str r4, [fp, r5]
	bl getint
	mov r6, r0
	bl getint
	mov r7, r0
	bl getint
	mov r8, r0
	bl getint
	mov r9, r0
	bl getint
	mov r10, r0
	bl getint
	mov r4, r0
	bl getint
	mov r5, r0
	push {r5}
	push {r4}
	push {r10}
	push {r9}
	push {r8}
	push {r7}
	push {r6}
	ldr r5, =-336
	ldr r4, [fp, r5]
	push {r4}
	ldr r10, =-328
	ldr r9, [fp, r10]
	push {r9}
	ldr r8, =-320
	ldr r7, [fp, r8]
	push {r7}
	ldr r6, =-312
	ldr r5, [fp, r6]
	push {r5}
	ldr r4, =-304
	ldr r10, [fp, r4]
	push {r10}
	ldr r9, =-296
	ldr r8, [fp, r9]
	mov r3, r8
	ldr r7, =-288
	ldr r6, [fp, r7]
	mov r2, r6
	ldr r5, =-280
	ldr r4, [fp, r5]
	mov r1, r4
	ldr r10, =-272
	ldr r9, [fp, r10]
	mov r0, r9
	bl param16
	add sp, sp, #48
	mov r8, r0
	ldr r7, =-264
	ldr r6, [fp, r7]
	str r8, [r6]
	ldr r5, =-260
	add r4, fp, r5
	mov r10, r4
	mov r9, #1
	mov r7, #4
	mul r8, r9, r7
	add r6, r10, r8
	ldr r5, =8848
	str r5, [r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r7, #1
	mov r10, #8
	mul r8, r7, r10
	add r6, r9, r8
	mov r5, r6
	mov r4, #0
	str r4, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r9, #1
	mov r8, #8
	mul r6, r9, r8
	add r5, r10, r6
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r6, =-260
	add r4, fp, r6
	mov r7, #2
	mov r5, #8
	mul r9, r7, r5
	add r8, r4, r9
	mov r10, r8
	mov r6, #0
	str r6, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r4, #2
	mov r9, #8
	mul r8, r4, r9
	add r10, r5, r8
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	ldr r8, =-260
	add r6, fp, r8
	mov r7, #3
	mov r10, #8
	mul r4, r7, r10
	add r9, r6, r4
	mov r5, r9
	mov r8, #0
	str r8, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r6, #3
	mov r4, #8
	mul r9, r6, r4
	add r5, r10, r9
	mov r8, #1
	mov r7, #4
	mul r6, r8, r7
	add r4, r5, r6
	mov r10, #0
	str r10, [r4]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #4
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	mov r9, #0
	str r9, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #4
	mov r6, #8
	mul r4, r8, r6
	add r10, r5, r4
	mov r9, #1
	mov r7, #4
	mul r8, r9, r7
	add r6, r10, r8
	mov r5, #0
	str r5, [r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r7, #5
	mov r10, #8
	mul r8, r7, r10
	add r6, r9, r8
	mov r5, r6
	mov r4, #0
	str r4, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r9, #5
	mov r8, #8
	mul r6, r9, r8
	add r5, r10, r6
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r6, =-260
	add r4, fp, r6
	mov r7, #6
	mov r5, #8
	mul r9, r7, r5
	add r8, r4, r9
	mov r10, r8
	mov r6, #0
	str r6, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r4, #6
	mov r9, #8
	mul r8, r4, r9
	add r10, r5, r8
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	ldr r8, =-260
	add r6, fp, r8
	mov r7, #7
	mov r10, #8
	mul r4, r7, r10
	add r9, r6, r4
	mov r5, r9
	mov r8, #0
	str r8, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r6, #7
	mov r4, #8
	mul r9, r6, r4
	add r5, r10, r9
	mov r8, #1
	mov r7, #4
	mul r6, r8, r7
	add r4, r5, r6
	mov r10, #0
	str r10, [r4]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #8
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	mov r9, #0
	str r9, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #8
	mov r6, #8
	mul r4, r8, r6
	add r10, r5, r4
	mov r9, #1
	mov r7, #4
	mul r8, r9, r7
	add r6, r10, r8
	mov r5, #0
	str r5, [r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r7, #9
	mov r10, #8
	mul r8, r7, r10
	add r6, r9, r8
	mov r5, r6
	mov r4, #0
	str r4, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r9, #9
	mov r8, #8
	mul r6, r9, r8
	add r5, r10, r6
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r6, =-260
	add r4, fp, r6
	mov r7, #10
	mov r5, #8
	mul r9, r7, r5
	add r8, r4, r9
	mov r10, r8
	b .LiteralPool6
.LTORG
.LiteralPool6:
	mov r6, #0
	str r6, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r4, #10
	mov r9, #8
	mul r8, r4, r9
	add r10, r5, r8
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	ldr r8, =-260
	add r6, fp, r8
	mov r7, #11
	mov r10, #8
	mul r4, r7, r10
	add r9, r6, r4
	mov r5, r9
	mov r8, #0
	str r8, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r6, #11
	mov r4, #8
	mul r9, r6, r4
	add r5, r10, r9
	mov r8, #1
	mov r7, #4
	mul r6, r8, r7
	add r4, r5, r6
	mov r10, #0
	str r10, [r4]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #12
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	mov r9, #0
	str r9, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #12
	mov r6, #8
	mul r4, r8, r6
	add r10, r5, r4
	mov r9, #1
	mov r7, #4
	mul r8, r9, r7
	add r6, r10, r8
	mov r5, #0
	str r5, [r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r7, #13
	mov r10, #8
	mul r8, r7, r10
	add r6, r9, r8
	mov r5, r6
	mov r4, #0
	str r4, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r9, #13
	mov r8, #8
	mul r6, r9, r8
	add r5, r10, r6
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r6, =-260
	add r4, fp, r6
	mov r7, #14
	mov r5, #8
	mul r9, r7, r5
	add r8, r4, r9
	mov r10, r8
	mov r6, #0
	str r6, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r4, #14
	mov r9, #8
	mul r8, r4, r9
	add r10, r5, r8
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	ldr r8, =-260
	add r6, fp, r8
	mov r7, #15
	mov r10, #8
	mul r4, r7, r10
	add r9, r6, r4
	mov r5, r9
	mov r8, #0
	str r8, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r6, #15
	mov r4, #8
	mul r9, r6, r4
	add r5, r10, r9
	mov r8, #1
	mov r7, #4
	mul r6, r8, r7
	add r4, r5, r6
	mov r10, #0
	str r10, [r4]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #16
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	mov r9, #0
	str r9, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #16
	mov r6, #8
	mul r4, r8, r6
	add r10, r5, r4
	mov r9, #1
	mov r7, #4
	mul r8, r9, r7
	add r6, r10, r8
	mov r5, #0
	str r5, [r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r7, #17
	mov r10, #8
	mul r8, r7, r10
	add r6, r9, r8
	mov r5, r6
	mov r4, #0
	str r4, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r9, #17
	mov r8, #8
	mul r6, r9, r8
	add r5, r10, r6
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r6, =-260
	add r4, fp, r6
	mov r7, #18
	mov r5, #8
	mul r9, r7, r5
	add r8, r4, r9
	mov r10, r8
	mov r6, #0
	str r6, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r4, #18
	mov r9, #8
	mul r8, r4, r9
	add r10, r5, r8
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	ldr r8, =-260
	add r6, fp, r8
	mov r7, #19
	mov r10, #8
	mul r4, r7, r10
	add r9, r6, r4
	mov r5, r9
	mov r8, #0
	str r8, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r6, #19
	mov r4, #8
	mul r9, r6, r4
	add r5, r10, r9
	mov r8, #1
	mov r7, #4
	mul r6, r8, r7
	add r4, r5, r6
	mov r10, #0
	str r10, [r4]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #20
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	mov r9, #0
	str r9, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #20
	mov r6, #8
	mul r4, r8, r6
	add r10, r5, r4
	mov r9, #1
	mov r7, #4
	mul r8, r9, r7
	add r6, r10, r8
	mov r5, #0
	str r5, [r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r7, #21
	mov r10, #8
	mul r8, r7, r10
	add r6, r9, r8
	mov r5, r6
	mov r4, #0
	str r4, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r9, #21
	mov r8, #8
	mul r6, r9, r8
	add r5, r10, r6
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r6, =-260
	add r4, fp, r6
	mov r7, #22
	mov r5, #8
	mul r9, r7, r5
	add r8, r4, r9
	mov r10, r8
	mov r6, #0
	str r6, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r4, #22
	mov r9, #8
	mul r8, r4, r9
	add r10, r5, r8
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	ldr r8, =-260
	add r6, fp, r8
	mov r7, #23
	mov r10, #8
	mul r4, r7, r10
	add r9, r6, r4
	mov r5, r9
	mov r8, #0
	str r8, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r6, #23
	mov r4, #8
	mul r9, r6, r4
	add r5, r10, r9
	mov r8, #1
	mov r7, #4
	mul r6, r8, r7
	add r4, r5, r6
	mov r10, #0
	str r10, [r4]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #24
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	mov r9, #0
	str r9, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #24
	mov r6, #8
	mul r4, r8, r6
	b .LiteralPool7
.LTORG
.LiteralPool7:
	add r10, r5, r4
	mov r9, #1
	mov r7, #4
	mul r8, r9, r7
	add r6, r10, r8
	mov r5, #0
	str r5, [r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r7, #25
	mov r10, #8
	mul r8, r7, r10
	add r6, r9, r8
	mov r5, r6
	mov r4, #0
	str r4, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r9, #25
	mov r8, #8
	mul r6, r9, r8
	add r5, r10, r6
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r6, =-260
	add r4, fp, r6
	mov r7, #26
	mov r5, #8
	mul r9, r7, r5
	add r8, r4, r9
	mov r10, r8
	mov r6, #0
	str r6, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r4, #26
	mov r9, #8
	mul r8, r4, r9
	add r10, r5, r8
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	ldr r8, =-260
	add r6, fp, r8
	mov r7, #27
	mov r10, #8
	mul r4, r7, r10
	add r9, r6, r4
	mov r5, r9
	mov r8, #0
	str r8, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r6, #27
	mov r4, #8
	mul r9, r6, r4
	add r5, r10, r9
	mov r8, #1
	mov r7, #4
	mul r6, r8, r7
	add r4, r5, r6
	mov r10, #0
	str r10, [r4]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #28
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	mov r9, #0
	str r9, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #28
	mov r6, #8
	mul r4, r8, r6
	add r10, r5, r4
	mov r9, #1
	mov r7, #4
	mul r8, r9, r7
	add r6, r10, r8
	mov r5, #0
	str r5, [r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r7, #29
	mov r10, #8
	mul r8, r7, r10
	add r6, r9, r8
	mov r5, r6
	mov r4, #0
	str r4, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r9, #29
	mov r8, #8
	mul r6, r9, r8
	add r5, r10, r6
	mov r4, #1
	mov r7, #4
	mul r9, r4, r7
	add r8, r5, r9
	mov r10, #0
	str r10, [r8]
	ldr r6, =-260
	add r4, fp, r6
	mov r7, #30
	mov r5, #8
	mul r9, r7, r5
	add r8, r4, r9
	mov r10, r8
	mov r6, #0
	str r6, [r10]
	ldr r7, =-260
	add r5, fp, r7
	mov r4, #30
	mov r9, #8
	mul r8, r4, r9
	add r10, r5, r8
	mov r6, #1
	mov r7, #4
	mul r4, r6, r7
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	ldr r8, =-260
	add r6, fp, r8
	mov r7, #31
	mov r10, #8
	mul r4, r7, r10
	add r9, r6, r4
	mov r5, r9
	mov r8, #0
	str r8, [r5]
	ldr r7, =-260
	add r10, fp, r7
	mov r6, #31
	mov r4, #8
	mul r9, r6, r4
	add r5, r10, r9
	mov r8, #1
	mov r7, #4
	mul r6, r8, r7
	add r4, r5, r6
	mov r10, #0
	str r10, [r4]
	mov r9, #1
	str r9, [fp, #-4]
	b .L742
	b .LiteralPool8
.LTORG
.LiteralPool8:
.L742:                               	@ predecessors = .L611, .L746                               	@ successors = .L745, .L746
	ldr r8, [fp, #-4]
	cmp r8, #32
	blt .L746
	b .L745
.L743:                               	@ predecessors = .L745
	ldr r7, =-260
	add r5, fp, r7
	mov r6, r5
	mov r4, r6
	ldr r10, =-268
	str r4, [fp, r10]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #1
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	ldr r9, =-276
	str r10, [fp, r9]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #2
	mov r6, #8
	mul r4, r8, r6
	add r10, r5, r4
	mov r9, r10
	ldr r7, =-284
	str r9, [fp, r7]
	ldr r8, =-260
	add r6, fp, r8
	mov r5, #3
	mov r4, #8
	mul r10, r5, r4
	add r9, r6, r10
	mov r7, r9
	ldr r8, =-292
	str r7, [fp, r8]
	ldr r5, =-260
	add r4, fp, r5
	mov r6, #4
	mov r10, #8
	mul r9, r6, r10
	add r7, r4, r9
	mov r8, r7
	ldr r5, =-300
	str r8, [fp, r5]
	ldr r6, =-260
	add r10, fp, r6
	mov r4, #5
	mov r9, #8
	mul r7, r4, r9
	add r8, r10, r7
	mov r5, r8
	ldr r6, =-308
	str r5, [fp, r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r10, #6
	mov r7, #8
	mul r8, r10, r7
	add r5, r9, r8
	mov r6, r5
	ldr r4, =-316
	str r6, [fp, r4]
	ldr r10, =-260
	add r7, fp, r10
	mov r9, #7
	mov r8, #8
	mul r5, r9, r8
	add r6, r7, r5
	mov r4, r6
	ldr r10, =-324
	str r4, [fp, r10]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #8
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	ldr r9, =-332
	str r10, [fp, r9]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #9
	mov r6, #8
	mul r4, r8, r6
	add r10, r5, r4
	mov r9, r10
	ldr r7, =-340
	str r9, [fp, r7]
	ldr r8, =-260
	add r6, fp, r8
	mov r5, #10
	mov r4, #8
	mul r10, r5, r4
	add r9, r6, r10
	mov r7, r9
	ldr r8, =-344
	str r7, [fp, r8]
	ldr r5, =-260
	add r4, fp, r5
	mov r6, #11
	mov r10, #8
	mul r9, r6, r10
	add r7, r4, r9
	mov r8, r7
	ldr r5, =-348
	str r8, [fp, r5]
	ldr r6, =-260
	add r10, fp, r6
	mov r4, #12
	mov r9, #8
	mul r7, r4, r9
	add r8, r10, r7
	mov r5, r8
	ldr r6, =-352
	str r5, [fp, r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r10, #13
	mov r7, #8
	mul r8, r10, r7
	add r5, r9, r8
	mov r6, r5
	ldr r4, =-356
	str r6, [fp, r4]
	ldr r10, =-260
	add r7, fp, r10
	mov r9, #14
	mov r8, #8
	mul r5, r9, r8
	add r6, r7, r5
	mov r4, r6
	ldr r10, =-360
	str r4, [fp, r10]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #15
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	ldr r9, =-364
	str r10, [fp, r9]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #16
	mov r6, #8
	mul r4, r8, r6
	add r10, r5, r4
	mov r9, r10
	ldr r7, =-368
	str r9, [fp, r7]
	ldr r8, =-260
	add r6, fp, r8
	mov r5, #17
	mov r4, #8
	mul r10, r5, r4
	add r9, r6, r10
	mov r7, r9
	ldr r8, =-372
	str r7, [fp, r8]
	ldr r5, =-260
	add r4, fp, r5
	mov r6, #18
	mov r10, #8
	mul r9, r6, r10
	add r7, r4, r9
	mov r8, r7
	ldr r5, =-376
	str r8, [fp, r5]
	ldr r6, =-260
	add r10, fp, r6
	mov r4, #19
	mov r9, #8
	mul r7, r4, r9
	add r8, r10, r7
	mov r5, r8
	ldr r6, =-380
	str r5, [fp, r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r10, #20
	mov r7, #8
	mul r8, r10, r7
	add r5, r9, r8
	mov r6, r5
	ldr r4, =-384
	str r6, [fp, r4]
	ldr r10, =-260
	add r7, fp, r10
	mov r9, #21
	mov r8, #8
	mul r5, r9, r8
	add r6, r7, r5
	mov r4, r6
	ldr r10, =-388
	str r4, [fp, r10]
	ldr r9, =-260
	add r8, fp, r9
	mov r7, #22
	mov r5, #8
	mul r6, r7, r5
	add r4, r8, r6
	mov r10, r4
	ldr r9, =-392
	str r10, [fp, r9]
	ldr r7, =-260
	add r5, fp, r7
	mov r8, #23
	mov r6, #8
	mul r4, r8, r6
	add r10, r5, r4
	mov r9, r10
	ldr r7, =-396
	str r9, [fp, r7]
	ldr r8, =-260
	add r6, fp, r8
	mov r5, #24
	mov r4, #8
	mul r10, r5, r4
	add r9, r6, r10
	mov r7, r9
	ldr r8, =-400
	str r7, [fp, r8]
	ldr r5, =-260
	add r4, fp, r5
	mov r6, #25
	mov r10, #8
	mul r9, r6, r10
	add r7, r4, r9
	mov r8, r7
	ldr r5, =-404
	str r8, [fp, r5]
	ldr r6, =-260
	add r10, fp, r6
	mov r4, #26
	mov r9, #8
	mul r7, r4, r9
	add r8, r10, r7
	mov r5, r8
	ldr r6, =-408
	str r5, [fp, r6]
	ldr r4, =-260
	add r9, fp, r4
	mov r10, #27
	mov r7, #8
	mul r8, r10, r7
	add r5, r9, r8
	mov r6, r5
	ldr r4, =-412
	str r6, [fp, r4]
	ldr r10, =-260
	add r7, fp, r10
	mov r9, #28
	mov r8, #8
	mul r5, r9, r8
	add r6, r7, r5
	mov r4, r6
	ldr r10, =-260
	add r9, fp, r10
	mov r8, #29
	mov r7, #8
	mul r5, r8, r7
	add r6, r9, r5
	mov r10, r6
	ldr r8, =-260
	add r7, fp, r8
	mov r9, #30
	mov r5, #8
	mul r6, r9, r5
	add r8, r7, r6
	mov r9, r8
	ldr r5, =-260
	add r7, fp, r5
	mov r6, #31
	mov r8, #8
	mul r5, r6, r8
	add r6, r7, r5
	mov r8, r6
	push {r8}
	push {r9}
	push {r10}
	push {r4}
	ldr r7, =-412
	ldr r5, [fp, r7]
	push {r5}
	ldr r6, =-408
	ldr r8, [fp, r6]
	push {r8}
	ldr r9, =-404
	ldr r10, [fp, r9]
	push {r10}
	ldr r4, =-400
	ldr r7, [fp, r4]
	push {r7}
	ldr r5, =-396
	ldr r6, [fp, r5]
	push {r6}
	ldr r8, =-392
	ldr r9, [fp, r8]
	push {r9}
	ldr r10, =-388
	ldr r4, [fp, r10]
	b .LiteralPool9
.LTORG
.LiteralPool9:
	push {r4}
	ldr r7, =-384
	ldr r5, [fp, r7]
	push {r5}
	ldr r6, =-380
	ldr r8, [fp, r6]
	push {r8}
	ldr r9, =-376
	ldr r10, [fp, r9]
	push {r10}
	ldr r4, =-372
	ldr r7, [fp, r4]
	push {r7}
	ldr r5, =-368
	ldr r6, [fp, r5]
	push {r6}
	ldr r8, =-364
	ldr r9, [fp, r8]
	push {r9}
	ldr r10, =-360
	ldr r4, [fp, r10]
	push {r4}
	ldr r7, =-356
	ldr r5, [fp, r7]
	push {r5}
	ldr r6, =-352
	ldr r8, [fp, r6]
	push {r8}
	ldr r9, =-348
	ldr r10, [fp, r9]
	push {r10}
	ldr r4, =-344
	ldr r7, [fp, r4]
	push {r7}
	ldr r5, =-340
	ldr r6, [fp, r5]
	push {r6}
	ldr r8, =-332
	ldr r9, [fp, r8]
	push {r9}
	ldr r10, =-324
	ldr r4, [fp, r10]
	push {r4}
	ldr r7, =-316
	ldr r5, [fp, r7]
	push {r5}
	ldr r6, =-308
	ldr r8, [fp, r6]
	push {r8}
	ldr r9, =-300
	ldr r10, [fp, r9]
	push {r10}
	ldr r4, =-292
	ldr r7, [fp, r4]
	mov r3, r7
	ldr r5, =-284
	ldr r6, [fp, r5]
	mov r2, r6
	ldr r8, =-276
	ldr r9, [fp, r8]
	mov r1, r9
	ldr r10, =-268
	ldr r4, [fp, r10]
	mov r0, r4
	bl param32_arr
	add sp, sp, #112
	mov r7, r0
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	b .Lmain_END
	b .LiteralPool10
.LTORG
.LiteralPool10:
.L745:                               	@ predecessors = .L742                               	@ successors = .L743
	b .L743
.L746:                               	@ predecessors = .L742                               	@ successors = .L742
	ldr r5, [fp, #-4]
	sub r6, r5, #1
	ldr r8, =-260
	add r9, fp, r8
	mov r10, #8
	mul r4, r6, r10
	add r7, r9, r4
	mov r5, #1
	mov r8, #4
	mul r6, r5, r8
	add r10, r7, r6
	ldr r9, [r10]
	sub r4, r9, #1
	ldr r5, [fp, #-4]
	ldr r8, =-260
	add r7, fp, r8
	mov r6, #8
	mul r10, r5, r6
	add r9, r7, r10
	mov r8, r9
	str r4, [r8]
	ldr r5, [fp, #-4]
	sub r6, r5, #1
	ldr r7, =-260
	add r10, fp, r7
	mov r9, #8
	mul r4, r6, r9
	add r8, r10, r4
	mov r5, r8
	ldr r7, [r5]
	sub r6, r7, #2
	ldr r9, [fp, #-4]
	ldr r10, =-260
	add r4, fp, r10
	mov r8, #8
	mul r5, r9, r8
	add r7, r4, r5
	mov r10, #1
	mov r9, #4
	mul r8, r10, r9
	add r4, r7, r8
	str r6, [r4]
	ldr r5, [fp, #-4]
	add r10, r5, #1
	str r10, [fp, #-4]
	b .L742
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool11
.LTORG
.LiteralPool11:
