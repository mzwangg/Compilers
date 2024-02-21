	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.text
	.global swap
	.type swap , %function
swap:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L33:
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	ldr r9, [r8]
	str r9, [fp, #-4]
	ldr r10, [fp, #-16]
	ldr r5, [fp, #-8]
	mov r6, #4
	mul r4, r5, r6
	add r7, r10, r4
	ldr r8, [r7]
	ldr r9, [fp, #-16]
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r10, r5, r6
	add r4, r9, r10
	str r8, [r4]
	ldr r7, [fp, #-4]
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-8]
	mov r9, #4
	mul r10, r6, r9
	add r8, r5, r10
	str r7, [r8]
	mov r0, #0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global heap_ajust
	.type heap_ajust , %function
heap_ajust:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L53:                               	@ successors = .L61
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	ldr r4, [fp, #-16]
	str r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r6, #2
	mul r7, r5, r6
	add r8, r7, #1
	str r8, [fp, #-4]
	b .L61
.L61:                               	@ predecessors = .L53, .L83                               	@ successors = .L65, .L66
	ldr r9, [fp, #-4]
	ldr r10, [fp, #-12]
	add r4, r10, #1
	cmp r9, r4
	blt .L66
	b .L65
.L62:                               	@ predecessors = .L65
	mov r0, #0
	b .Lheap_ajust_END
.L65:                               	@ predecessors = .L61                               	@ successors = .L62
	b .L62
.L66:                               	@ predecessors = .L61                               	@ successors = .L70, .L71
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-12]
	cmp r5, r6
	blt .L71
	b .L70
.L67:                               	@ predecessors = .L70, .L80, .L81                               	@ successors = .L92, .L93
	ldr r7, [fp, #-20]
	ldr r8, [fp, #-8]
	mov r10, #4
	mul r9, r8, r10
	add r4, r7, r9
	ldr r5, [r4]
	ldr r6, [fp, #-20]
	ldr r8, [fp, #-4]
	mov r10, #4
	mul r7, r8, r10
	add r9, r6, r7
	ldr r4, [r9]
	cmp r5, r4
	bgt .L93
	b .L92
.L70:                               	@ predecessors = .L66                               	@ successors = .L67
	b .L67
.L71:                               	@ predecessors = .L66                               	@ successors = .L80, .L81
	ldr r8, [fp, #-20]
	ldr r10, [fp, #-4]
	mov r6, #4
	mul r7, r10, r6
	add r9, r8, r7
	ldr r5, [r9]
	ldr r4, [fp, #-20]
	ldr r10, [fp, #-4]
	add r6, r10, #1
	mov r8, #4
	mul r7, r6, r8
	add r9, r4, r7
	ldr r10, [r9]
	cmp r5, r10
	blt .L81
	b .L80
.L80:                               	@ predecessors = .L71                               	@ successors = .L67
	b .L67
.L81:                               	@ predecessors = .L71                               	@ successors = .L67
	ldr r6, [fp, #-4]
	add r8, r6, #1
	str r8, [fp, #-4]
	b .L67
.L83:                               	@ predecessors = .L94                               	@ successors = .L61
	b .L61
.L92:                               	@ predecessors = .L67                               	@ successors = .L94
	b .L94
.L93:                               	@ predecessors = .L67
	mov r0, #0
	b .Lheap_ajust_END
.L94:                               	@ predecessors = .L92                               	@ successors = .L83
	ldr r4, [fp, #-20]
	ldr r7, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r2, r9
	mov r1, r7
	mov r0, r4
	bl swap
	mov r5, r0
	str r5, [fp, #-8]
	ldr r10, [fp, #-4]
	str r10, [fp, #-8]
	ldr r6, [fp, #-8]
	mov r8, #2
	mul r9, r6, r8
	add r7, r9, #1
	str r7, [fp, #-4]
	b .L83
.Lheap_ajust_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global heap_sort
	.type heap_sort , %function
heap_sort:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L100:                               	@ successors = .L106
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	ldr r4, [fp, #-16]
	mov r5, #2
	sdiv r6, r4, r5
	sub r7, r6, #1
	str r7, [fp, #-12]
	b .L106
.L106:                               	@ predecessors = .L100, .L110                               	@ successors = .L109, .L110
	ldr r8, [fp, #-12]
	cmp r8, #-1
	bgt .L110
	b .L109
.L107:                               	@ predecessors = .L109                               	@ successors = .L117
	ldr r9, [fp, #-16]
	sub r10, r9, #1
	str r10, [fp, #-12]
	b .L117
.L109:                               	@ predecessors = .L106                               	@ successors = .L107
	b .L107
.L110:                               	@ predecessors = .L106                               	@ successors = .L106
	ldr r4, [fp, #-16]
	sub r5, r4, #1
	str r5, [fp, #-8]
	ldr r6, [fp, #-20]
	ldr r7, [fp, #-12]
	ldr r8, [fp, #-8]
	mov r2, r8
	mov r1, r7
	mov r0, r6
	bl heap_ajust
	mov r9, r0
	str r9, [fp, #-8]
	ldr r10, [fp, #-12]
	sub r4, r10, #1
	str r4, [fp, #-12]
	b .L106
.L117:                               	@ predecessors = .L107, .L121                               	@ successors = .L120, .L121
	ldr r5, [fp, #-12]
	cmp r5, #0
	bgt .L121
	b .L120
.L118:                               	@ predecessors = .L120
	mov r0, #0
	b .Lheap_sort_END
.L120:                               	@ predecessors = .L117                               	@ successors = .L118
	b .L118
.L121:                               	@ predecessors = .L117                               	@ successors = .L117
	mov r8, #0
	str r8, [fp, #-4]
	ldr r7, [fp, #-20]
	ldr r6, [fp, #-4]
	ldr r9, [fp, #-12]
	mov r2, r9
	mov r1, r6
	mov r0, r7
	bl swap
	mov r10, r0
	str r10, [fp, #-8]
	ldr r4, [fp, #-12]
	sub r5, r4, #1
	str r5, [fp, #-8]
	ldr r8, [fp, #-20]
	ldr r9, [fp, #-4]
	ldr r6, [fp, #-8]
	mov r2, r6
	mov r1, r9
	mov r0, r8
	bl heap_ajust
	mov r7, r0
	str r7, [fp, #-8]
	ldr r10, [fp, #-12]
	sub r4, r10, #1
	str r4, [fp, #-12]
	b .L117
.Lheap_sort_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #48
.L131:                               	@ successors = .L146
	mov r4, #10
	ldr r5, addr_0_n
	str r4, [r5]
	add r6, fp, #-48
	mov r7, r6
	mov r8, #4
	str r8, [r7]
	add r9, fp, #-48
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #3
	str r7, [r6]
	add r8, fp, #-48
	mov r10, #2
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #9
	str r6, [r5]
	add r7, fp, #-48
	mov r10, #3
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #2
	str r5, [r9]
	add r6, fp, #-48
	mov r10, #4
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #0
	str r9, [r8]
	add r5, fp, #-48
	mov r10, #5
	mov r4, #4
	mul r6, r10, r4
	add r7, r5, r6
	mov r8, #1
	str r8, [r7]
	add r9, fp, #-48
	mov r10, #6
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #6
	str r7, [r6]
	add r8, fp, #-48
	mov r10, #7
	mov r4, #4
	mul r9, r10, r4
	add r5, r8, r9
	mov r6, #5
	str r6, [r5]
	add r7, fp, #-48
	mov r10, #8
	mov r4, #4
	mul r8, r10, r4
	add r9, r7, r8
	mov r5, #7
	str r5, [r9]
	add r6, fp, #-48
	mov r10, #9
	mov r4, #4
	mul r7, r10, r4
	add r8, r6, r7
	mov r9, #8
	str r9, [r8]
	mov r5, #0
	str r5, [fp, #-8]
	add r10, fp, #-48
	mov r4, r10
	ldr r6, addr_0_n
	ldr r7, [r6]
	mov r1, r7
	mov r0, r4
	bl heap_sort
	mov r8, r0
	str r8, [fp, #-8]
	b .L146
.L146:                               	@ predecessors = .L131, .L151                               	@ successors = .L150, .L151
	ldr r9, [fp, #-8]
	ldr r5, addr_0_n
	ldr r10, [r5]
	cmp r9, r10
	blt .L151
	b .L150
.L147:                               	@ predecessors = .L150
	mov r0, #0
	b .Lmain_END
.L150:                               	@ predecessors = .L146                               	@ successors = .L147
	b .L147
.L151:                               	@ predecessors = .L146                               	@ successors = .L146
	ldr r6, [fp, #-8]
	add r7, fp, #-48
	mov r4, #4
	mul r8, r6, r4
	add r5, r7, r8
	ldr r9, [r5]
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	mov r0, r10
	bl putint
	mov r6, #10
	str r6, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r0, r4
	bl putch
	ldr r7, [fp, #-8]
	add r8, r7, #1
	str r8, [fp, #-8]
	b .L146
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_n:
	.word n
