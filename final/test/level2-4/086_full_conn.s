	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global relu_reg
	.type relu_reg , %function
relu_reg:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #4
.L541:                               	@ successors = .L545, .L546
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #127
	bgt .L546
	b .L545
.L543:                               	@ predecessors = .L545                               	@ successors = .L549, .L550
	ldr r5, [fp, #-4]
	cmp r5, #0
	blt .L550
	b .L549
.L545:                               	@ predecessors = .L541                               	@ successors = .L543
	b .L543
.L546:                               	@ predecessors = .L541
	mov r0, #127
	b .Lrelu_reg_END
.L547:                               	@ predecessors = .L549
	ldr r6, [fp, #-4]
	mov r0, r6
	b .Lrelu_reg_END
.L549:                               	@ predecessors = .L543                               	@ successors = .L547
	b .L547
.L550:                               	@ predecessors = .L543
	mov r0, #0
.Lrelu_reg_END:
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global model
	.type model , %function
model:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L552:                               	@ successors = .L1555, .L1556
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r5, r4
	mov r6, r5
	ldr r7, [r6]
	mov r8, #85
	mul r9, r7, r8
	ldr r10, [fp, #-4]
	mov r4, r10
	mov r5, #1
	mov r6, #4
	mul r7, r5, r6
	add r8, r4, r7
	ldr r10, [r8]
	mov r5, #23
	mul r6, r10, r5
	add r4, r9, r6
	ldr r7, [fp, #-4]
	mov r8, r7
	mov r10, #2
	mov r5, #4
	mul r9, r10, r5
	add r6, r8, r9
	ldr r7, [r6]
	mov r10, #-82
	mul r5, r7, r10
	add r8, r4, r5
	ldr r9, [fp, #-4]
	mov r6, r9
	mov r7, #3
	mov r10, #4
	mul r4, r7, r10
	add r5, r6, r4
	ldr r9, [r5]
	mov r7, #-103
	mul r10, r9, r7
	add r6, r8, r10
	ldr r4, [fp, #-4]
	mov r5, r4
	mov r9, #4
	mov r7, #4
	mul r8, r9, r7
	add r10, r5, r8
	ldr r4, [r10]
	mov r9, #-123
	mul r7, r4, r9
	add r5, r6, r7
	ldr r8, [fp, #-4]
	mov r10, #1
	mov r4, #20
	mul r9, r10, r4
	add r6, r8, r9
	mov r7, r6
	ldr r10, [r7]
	mov r4, #64
	mul r8, r10, r4
	add r9, r5, r8
	ldr r6, [fp, #-4]
	mov r7, #1
	mov r10, #20
	mul r4, r7, r10
	add r5, r6, r4
	mov r8, #1
	mov r7, #4
	mul r10, r8, r7
	add r6, r5, r10
	ldr r4, [r6]
	mov r8, #-120
	mul r7, r4, r8
	add r5, r9, r7
	ldr r10, [fp, #-4]
	mov r6, #1
	mov r4, #20
	mul r8, r6, r4
	add r9, r10, r8
	mov r7, #2
	mov r6, #4
	mul r4, r7, r6
	add r10, r9, r4
	ldr r8, [r10]
	mov r7, #50
	mul r6, r8, r7
	add r9, r5, r6
	ldr r4, [fp, #-4]
	mov r10, #1
	mov r8, #20
	mul r7, r10, r8
	add r5, r4, r7
	mov r6, #3
	mov r10, #4
	mul r8, r6, r10
	add r4, r5, r8
	ldr r7, [r4]
	mov r6, #-59
	mul r10, r7, r6
	add r5, r9, r10
	ldr r8, [fp, #-4]
	mov r4, #1
	mov r7, #20
	mul r6, r4, r7
	add r9, r8, r6
	mov r10, #4
	mov r4, #4
	mul r7, r10, r4
	add r8, r9, r7
	ldr r6, [r8]
	mov r10, #47
	mul r4, r6, r10
	add r9, r5, r4
	ldr r7, [fp, #-4]
	mov r8, #2
	mov r6, #20
	mul r10, r8, r6
	add r5, r7, r10
	mov r4, r5
	ldr r8, [r4]
	mov r6, #-111
	mul r7, r8, r6
	add r10, r9, r7
	ldr r5, [fp, #-4]
	mov r4, #2
	mov r8, #20
	mul r6, r4, r8
	add r9, r5, r6
	mov r7, #1
	mov r4, #4
	mul r8, r7, r4
	add r5, r9, r8
	ldr r6, [r5]
	mov r7, #-67
	mul r4, r6, r7
	add r9, r10, r4
	ldr r8, [fp, #-4]
	mov r5, #2
	mov r6, #20
	mul r7, r5, r6
	add r10, r8, r7
	mov r4, #2
	mov r5, #4
	mul r6, r4, r5
	add r8, r10, r6
	ldr r7, [r8]
	mov r4, #-106
	mul r5, r7, r4
	add r10, r9, r5
	ldr r6, [fp, #-4]
	mov r8, #2
	mov r7, #20
	mul r4, r8, r7
	add r9, r6, r4
	mov r5, #3
	mov r8, #4
	mul r7, r5, r8
	add r6, r9, r7
	ldr r4, [r6]
	mov r5, #-75
	mul r8, r4, r5
	add r9, r10, r8
	ldr r7, [fp, #-4]
	mov r6, #2
	mov r4, #20
	mul r5, r6, r4
	add r10, r7, r5
	mov r8, #4
	mov r6, #4
	mul r4, r8, r6
	add r7, r10, r4
	ldr r5, [r7]
	mov r8, #-102
	mul r6, r5, r8
	add r10, r9, r6
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r5, #20
	mul r8, r7, r5
	add r9, r4, r8
	mov r6, r9
	ldr r7, [r6]
	mov r5, #34
	mul r4, r7, r5
	add r8, r10, r4
	ldr r9, [fp, #-4]
	mov r6, #3
	mov r7, #20
	mul r5, r6, r7
	add r10, r9, r5
	mov r4, #1
	mov r6, #4
	mul r7, r4, r6
	add r9, r10, r7
	ldr r5, [r9]
	mov r4, #-39
	mul r6, r5, r4
	add r10, r8, r6
	ldr r7, [fp, #-4]
	mov r9, #3
	mov r5, #20
	mul r4, r9, r5
	add r8, r7, r4
	mov r6, #2
	mov r9, #4
	mul r5, r6, r9
	add r7, r8, r5
	ldr r4, [r7]
	mov r6, #65
	mul r9, r4, r6
	add r8, r10, r9
	ldr r5, [fp, #-4]
	mov r7, #3
	mov r4, #20
	mul r6, r7, r4
	add r10, r5, r6
	mov r9, #3
	mov r7, #4
	mul r4, r9, r7
	add r5, r10, r4
	ldr r6, [r5]
	mov r9, #47
	mul r7, r6, r9
	add r10, r8, r7
	ldr r4, [fp, #-4]
	mov r5, #3
	mov r6, #20
	mul r9, r5, r6
	add r8, r4, r9
	mov r7, #4
	mov r5, #4
	mul r6, r7, r5
	add r4, r8, r6
	ldr r9, [r4]
	mov r7, #113
	mul r5, r9, r7
	add r8, r10, r5
	ldr r6, [fp, #-4]
	mov r4, #4
	mov r9, #20
	mul r7, r4, r9
	add r10, r6, r7
	mov r5, r10
	ldr r4, [r5]
	mov r9, #110
	mul r6, r4, r9
	add r7, r8, r6
	ldr r10, [fp, #-4]
	mov r5, #4
	mov r4, #20
	mul r9, r5, r4
	add r8, r10, r9
	mov r6, #1
	mov r5, #4
	mul r4, r6, r5
	add r10, r8, r4
	ldr r9, [r10]
	mov r6, #47
	mul r5, r9, r6
	add r8, r7, r5
	ldr r4, [fp, #-4]
	mov r10, #4
	mov r9, #20
	mul r6, r10, r9
	add r7, r4, r6
	mov r5, #2
	mov r10, #4
	mul r9, r5, r10
	add r4, r7, r9
	ldr r6, [r4]
	mov r5, #-4
	mul r10, r6, r5
	add r7, r8, r10
	ldr r9, [fp, #-4]
	mov r4, #4
	mov r6, #20
	mul r5, r4, r6
	add r8, r9, r5
	mov r10, #3
	mov r4, #4
	mul r6, r10, r4
	add r9, r8, r6
	ldr r5, [r9]
	mov r10, #80
	mul r4, r5, r10
	add r8, r7, r4
	ldr r6, [fp, #-4]
	mov r9, #4
	mov r5, #20
	mul r10, r9, r5
	add r7, r6, r10
	mov r4, #4
	mov r9, #4
	mul r5, r4, r9
	add r6, r7, r5
	ldr r10, [r6]
	mov r4, #46
	mul r9, r10, r4
	add r7, r8, r9
	mov r0, r7
	bl relu_reg
	mov r5, r0
	mov r6, #39
	mul r10, r5, r6
	ldr r4, [fp, #-4]
	b .LiteralPool0
.LTORG
.LiteralPool0:
	mov r8, r4
	mov r9, r8
	ldr r7, [r9]
	mov r5, #-106
	mul r6, r7, r5
	ldr r4, [fp, #-4]
	mov r8, r4
	mov r9, #1
	mov r7, #4
	mul r5, r9, r7
	add r4, r8, r5
	ldr r9, [r4]
	mov r7, #126
	mul r8, r9, r7
	add r5, r6, r8
	ldr r4, [fp, #-4]
	mov r9, r4
	mov r7, #2
	mov r6, #4
	mul r8, r7, r6
	add r4, r9, r8
	ldr r7, [r4]
	mov r6, #-18
	mul r9, r7, r6
	add r8, r5, r9
	ldr r4, [fp, #-4]
	mov r7, r4
	mov r6, #3
	mov r5, #4
	mul r9, r6, r5
	add r4, r7, r9
	ldr r6, [r4]
	mov r5, #-31
	mul r7, r6, r5
	add r9, r8, r7
	ldr r4, [fp, #-4]
	mov r6, r4
	mov r5, #4
	mov r8, #4
	mul r7, r5, r8
	add r4, r6, r7
	ldr r5, [r4]
	mov r8, #-8
	mul r6, r5, r8
	add r7, r9, r6
	ldr r4, [fp, #-4]
	mov r5, #1
	mov r8, #20
	mul r9, r5, r8
	add r6, r4, r9
	mov r5, r6
	ldr r8, [r5]
	mov r4, #47
	mul r9, r8, r4
	add r6, r7, r9
	ldr r5, [fp, #-4]
	mov r8, #1
	mov r4, #20
	mul r7, r8, r4
	add r9, r5, r7
	mov r8, #1
	mov r4, #4
	mul r5, r8, r4
	add r7, r9, r5
	ldr r8, [r7]
	mov r4, #-4
	mul r9, r8, r4
	add r5, r6, r9
	ldr r7, [fp, #-4]
	mov r8, #1
	mov r4, #20
	mul r6, r8, r4
	add r9, r7, r6
	mov r8, #2
	mov r4, #4
	mul r7, r8, r4
	add r6, r9, r7
	ldr r8, [r6]
	mov r4, #67
	mul r9, r8, r4
	add r7, r5, r9
	ldr r6, [fp, #-4]
	mov r8, #1
	mov r4, #20
	mul r5, r8, r4
	add r9, r6, r5
	mov r8, #3
	mov r4, #4
	mul r6, r8, r4
	add r5, r9, r6
	ldr r8, [r5]
	mov r4, #-94
	mul r9, r8, r4
	add r6, r7, r9
	ldr r5, [fp, #-4]
	mov r8, #1
	mov r4, #20
	mul r7, r8, r4
	add r9, r5, r7
	mov r8, #4
	mov r4, #4
	mul r5, r8, r4
	add r7, r9, r5
	ldr r8, [r7]
	mov r4, #-121
	mul r9, r8, r4
	add r5, r6, r9
	ldr r7, [fp, #-4]
	mov r8, #2
	mov r4, #20
	mul r6, r8, r4
	add r9, r7, r6
	mov r8, r9
	ldr r4, [r8]
	mov r7, #7
	mul r6, r4, r7
	add r9, r5, r6
	ldr r8, [fp, #-4]
	mov r4, #2
	mov r7, #20
	mul r5, r4, r7
	add r6, r8, r5
	mov r4, #1
	mov r7, #4
	mul r8, r4, r7
	add r5, r6, r8
	ldr r4, [r5]
	mov r7, #-21
	mul r6, r4, r7
	add r8, r9, r6
	ldr r5, [fp, #-4]
	mov r4, #2
	mov r7, #20
	mul r9, r4, r7
	add r6, r5, r9
	mov r4, #2
	mov r7, #4
	mul r5, r4, r7
	add r9, r6, r5
	ldr r4, [r9]
	mov r7, #-60
	mul r6, r4, r7
	add r5, r8, r6
	ldr r9, [fp, #-4]
	mov r4, #2
	mov r7, #20
	mul r8, r4, r7
	add r6, r9, r8
	mov r4, #3
	mov r7, #4
	mul r9, r4, r7
	add r8, r6, r9
	ldr r4, [r8]
	mov r7, #-43
	mul r6, r4, r7
	add r9, r5, r6
	ldr r8, [fp, #-4]
	mov r4, #2
	mov r7, #20
	mul r5, r4, r7
	add r6, r8, r5
	mov r4, #4
	mov r7, #4
	mul r8, r4, r7
	add r5, r6, r8
	ldr r4, [r5]
	mov r7, #105
	mul r6, r4, r7
	add r8, r9, r6
	ldr r5, [fp, #-4]
	mov r4, #3
	mov r7, #20
	mul r9, r4, r7
	add r6, r5, r9
	mov r4, r6
	ldr r7, [r4]
	mov r5, #-42
	mul r9, r7, r5
	add r6, r8, r9
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r5, #20
	mul r8, r7, r5
	add r9, r4, r8
	mov r7, #1
	mov r5, #4
	mul r4, r7, r5
	add r8, r9, r4
	ldr r7, [r8]
	mov r5, #87
	mul r9, r7, r5
	add r4, r6, r9
	ldr r8, [fp, #-4]
	mov r7, #3
	mov r5, #20
	mul r6, r7, r5
	add r9, r8, r6
	mov r7, #2
	mov r5, #4
	mul r8, r7, r5
	add r6, r9, r8
	ldr r7, [r6]
	mov r5, #29
	mul r9, r7, r5
	add r8, r4, r9
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r5, #20
	mul r4, r7, r5
	add r9, r6, r4
	mov r7, #3
	mov r5, #4
	mul r6, r7, r5
	add r4, r9, r6
	ldr r7, [r4]
	mov r5, #-106
	mul r9, r7, r5
	add r6, r8, r9
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r5, #20
	mul r8, r7, r5
	add r9, r4, r8
	mov r7, #4
	mov r5, #4
	mul r4, r7, r5
	add r8, r9, r4
	ldr r7, [r8]
	mov r5, #-31
	mul r9, r7, r5
	add r4, r6, r9
	ldr r8, [fp, #-4]
	mov r7, #4
	mov r5, #20
	mul r6, r7, r5
	add r9, r8, r6
	mov r7, r9
	ldr r5, [r7]
	mov r8, #-110
	mul r6, r5, r8
	add r9, r4, r6
	ldr r7, [fp, #-4]
	mov r5, #4
	mov r8, #20
	mul r4, r5, r8
	add r6, r7, r4
	mov r5, #1
	mov r8, #4
	mul r7, r5, r8
	add r4, r6, r7
	ldr r5, [r4]
	mov r8, #-100
	mul r6, r5, r8
	add r7, r9, r6
	ldr r4, [fp, #-4]
	mov r5, #4
	mov r8, #20
	mul r9, r5, r8
	add r6, r4, r9
	mov r5, #2
	mov r8, #4
	mul r4, r5, r8
	add r9, r6, r4
	ldr r5, [r9]
	mov r8, #-22
	mul r6, r5, r8
	add r4, r7, r6
	ldr r9, [fp, #-4]
	mov r5, #4
	mov r8, #20
	mul r7, r5, r8
	add r6, r9, r7
	mov r5, #3
	mov r8, #4
	mul r9, r5, r8
	add r7, r6, r9
	ldr r5, [r7]
	mov r8, #-75
	mul r6, r5, r8
	add r9, r4, r6
	ldr r7, [fp, #-4]
	mov r5, #4
	mov r8, #20
	mul r4, r5, r8
	add r6, r7, r4
	mov r5, #4
	mov r8, #4
	mul r7, r5, r8
	add r4, r6, r7
	ldr r5, [r4]
	mov r8, #-125
	mul r6, r5, r8
	add r7, r9, r6
	mov r0, r7
	bl relu_reg
	mov r4, r0
	mov r5, #77
	mul r8, r4, r5
	add r9, r10, r8
	ldr r6, [fp, #-4]
	mov r7, r6
	b .LiteralPool1
.LTORG
.LiteralPool1:
	mov r4, r7
	ldr r5, [r4]
	mov r10, #26
	mul r8, r5, r10
	ldr r6, [fp, #-4]
	mov r7, r6
	mov r4, #1
	mov r5, #4
	mul r10, r4, r5
	add r6, r7, r10
	ldr r4, [r6]
	mov r5, #76
	mul r7, r4, r5
	add r10, r8, r7
	ldr r6, [fp, #-4]
	mov r4, r6
	mov r5, #2
	mov r8, #4
	mul r7, r5, r8
	add r6, r4, r7
	ldr r5, [r6]
	mov r8, #-70
	mul r4, r5, r8
	add r7, r10, r4
	ldr r6, [fp, #-4]
	mov r5, r6
	mov r8, #3
	mov r10, #4
	mul r4, r8, r10
	add r6, r5, r4
	ldr r8, [r6]
	mov r10, #29
	mul r5, r8, r10
	add r4, r7, r5
	ldr r6, [fp, #-4]
	mov r8, r6
	mov r10, #4
	mov r7, #4
	mul r5, r10, r7
	add r6, r8, r5
	ldr r10, [r6]
	mov r7, #-95
	mul r8, r10, r7
	add r5, r4, r8
	ldr r6, [fp, #-4]
	mov r10, #1
	mov r7, #20
	mul r4, r10, r7
	add r8, r6, r4
	mov r10, r8
	ldr r7, [r10]
	mov r6, #96
	mul r4, r7, r6
	add r8, r5, r4
	ldr r10, [fp, #-4]
	mov r7, #1
	mov r6, #20
	mul r5, r7, r6
	add r4, r10, r5
	mov r7, #1
	mov r6, #4
	mul r10, r7, r6
	add r5, r4, r10
	ldr r7, [r5]
	mov r6, #52
	mul r4, r7, r6
	add r10, r8, r4
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r6, #20
	mul r8, r7, r6
	add r4, r5, r8
	mov r7, #2
	mov r6, #4
	mul r5, r7, r6
	add r8, r4, r5
	ldr r7, [r8]
	mov r6, #-68
	mul r4, r7, r6
	add r5, r10, r4
	ldr r8, [fp, #-4]
	mov r7, #1
	mov r6, #20
	mul r10, r7, r6
	add r4, r8, r10
	mov r7, #3
	mov r6, #4
	mul r8, r7, r6
	add r10, r4, r8
	ldr r7, [r10]
	mov r6, #-5
	mul r4, r7, r6
	add r8, r5, r4
	ldr r10, [fp, #-4]
	mov r7, #1
	mov r6, #20
	mul r5, r7, r6
	add r4, r10, r5
	mov r7, #4
	mov r6, #4
	mul r10, r7, r6
	add r5, r4, r10
	ldr r7, [r5]
	mov r6, #34
	mul r4, r7, r6
	add r10, r8, r4
	ldr r5, [fp, #-4]
	mov r7, #2
	mov r6, #20
	mul r8, r7, r6
	add r4, r5, r8
	mov r7, r4
	ldr r6, [r7]
	mov r5, #-34
	mul r8, r6, r5
	add r4, r10, r8
	ldr r7, [fp, #-4]
	mov r6, #2
	mov r5, #20
	mul r10, r6, r5
	add r8, r7, r10
	mov r6, #1
	mov r5, #4
	mul r7, r6, r5
	add r10, r8, r7
	ldr r6, [r10]
	mov r5, #102
	mul r8, r6, r5
	add r7, r4, r8
	ldr r10, [fp, #-4]
	mov r6, #2
	mov r5, #20
	mul r4, r6, r5
	add r8, r10, r4
	mov r6, #2
	mov r5, #4
	mul r10, r6, r5
	add r4, r8, r10
	ldr r6, [r4]
	mov r5, #6
	mul r8, r6, r5
	add r10, r7, r8
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r5, #20
	mul r7, r6, r5
	add r8, r4, r7
	mov r6, #3
	mov r5, #4
	mul r4, r6, r5
	add r7, r8, r4
	ldr r6, [r7]
	mov r5, #-38
	mul r8, r6, r5
	add r4, r10, r8
	ldr r7, [fp, #-4]
	mov r6, #2
	mov r5, #20
	mul r10, r6, r5
	add r8, r7, r10
	mov r6, #4
	mov r5, #4
	mul r7, r6, r5
	add r10, r8, r7
	ldr r6, [r10]
	mov r5, #27
	mul r8, r6, r5
	add r7, r4, r8
	ldr r10, [fp, #-4]
	mov r6, #3
	mov r5, #20
	mul r4, r6, r5
	add r8, r10, r4
	mov r6, r8
	ldr r5, [r6]
	mov r10, #110
	mul r4, r5, r10
	add r8, r7, r4
	ldr r6, [fp, #-4]
	mov r5, #3
	mov r10, #20
	mul r7, r5, r10
	add r4, r6, r7
	mov r5, #1
	mov r10, #4
	mul r6, r5, r10
	add r7, r4, r6
	ldr r5, [r7]
	mov r10, #116
	mul r4, r5, r10
	add r6, r8, r4
	ldr r7, [fp, #-4]
	mov r5, #3
	mov r10, #20
	mul r8, r5, r10
	add r4, r7, r8
	mov r5, #2
	mov r10, #4
	mul r7, r5, r10
	add r8, r4, r7
	ldr r5, [r8]
	mov r10, #39
	mul r4, r5, r10
	add r7, r6, r4
	ldr r8, [fp, #-4]
	mov r5, #3
	mov r10, #20
	mul r6, r5, r10
	add r4, r8, r6
	mov r5, #3
	mov r10, #4
	mul r8, r5, r10
	add r6, r4, r8
	ldr r5, [r6]
	mov r10, #-63
	mul r4, r5, r10
	add r8, r7, r4
	ldr r6, [fp, #-4]
	mov r5, #3
	mov r10, #20
	mul r7, r5, r10
	add r4, r6, r7
	mov r5, #4
	mov r10, #4
	mul r6, r5, r10
	add r7, r4, r6
	ldr r5, [r7]
	mov r10, #-99
	mul r4, r5, r10
	add r6, r8, r4
	ldr r7, [fp, #-4]
	mov r5, #4
	mov r10, #20
	mul r8, r5, r10
	add r4, r7, r8
	mov r5, r4
	ldr r10, [r5]
	mov r7, #65
	mul r8, r10, r7
	add r4, r6, r8
	ldr r5, [fp, #-4]
	mov r10, #4
	mov r7, #20
	mul r6, r10, r7
	add r8, r5, r6
	mov r10, #1
	mov r7, #4
	mul r5, r10, r7
	add r6, r8, r5
	ldr r10, [r6]
	mov r7, #120
	mul r8, r10, r7
	add r5, r4, r8
	ldr r6, [fp, #-4]
	mov r10, #4
	mov r7, #20
	mul r4, r10, r7
	add r8, r6, r4
	mov r10, #2
	mov r7, #4
	mul r6, r10, r7
	add r4, r8, r6
	ldr r10, [r4]
	mov r7, #-39
	mul r8, r10, r7
	add r6, r5, r8
	ldr r4, [fp, #-4]
	mov r10, #4
	mov r7, #20
	mul r5, r10, r7
	add r8, r4, r5
	mov r10, #3
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	ldr r10, [r5]
	mov r7, #-6
	mul r8, r10, r7
	add r4, r6, r8
	ldr r5, [fp, #-4]
	mov r10, #4
	mov r7, #20
	mul r6, r10, r7
	add r8, r5, r6
	mov r10, #4
	mov r7, #4
	mul r5, r10, r7
	add r6, r8, r5
	ldr r10, [r6]
	mov r7, #94
	mul r8, r10, r7
	add r5, r4, r8
	mov r0, r5
	bl relu_reg
	mov r6, r0
	mov r10, #127
	mul r7, r6, r10
	add r4, r9, r7
	ldr r8, [fp, #-4]
	mov r5, r8
	mov r6, r5
	b .LiteralPool2
.LTORG
.LiteralPool2:
	ldr r10, [r6]
	mov r9, #-23
	mul r7, r10, r9
	ldr r8, [fp, #-4]
	mov r5, r8
	mov r6, #1
	mov r10, #4
	mul r9, r6, r10
	add r8, r5, r9
	ldr r6, [r8]
	mov r10, #-63
	mul r5, r6, r10
	add r9, r7, r5
	ldr r8, [fp, #-4]
	mov r6, r8
	mov r10, #2
	mov r7, #4
	mul r5, r10, r7
	add r8, r6, r5
	ldr r10, [r8]
	mov r7, #49
	mul r6, r10, r7
	add r5, r9, r6
	ldr r8, [fp, #-4]
	mov r10, r8
	mov r7, #3
	mov r9, #4
	mul r6, r7, r9
	add r8, r10, r6
	ldr r7, [r8]
	mov r9, #50
	mul r10, r7, r9
	add r6, r5, r10
	ldr r8, [fp, #-4]
	mov r7, r8
	mov r9, #4
	mov r5, #4
	mul r10, r9, r5
	add r8, r7, r10
	ldr r9, [r8]
	mov r5, #72
	mul r7, r9, r5
	add r10, r6, r7
	ldr r8, [fp, #-4]
	mov r9, #1
	mov r5, #20
	mul r6, r9, r5
	add r7, r8, r6
	mov r9, r7
	ldr r5, [r9]
	mov r8, #85
	mul r6, r5, r8
	add r7, r10, r6
	ldr r9, [fp, #-4]
	mov r5, #1
	mov r8, #20
	mul r10, r5, r8
	add r6, r9, r10
	mov r5, #1
	mov r8, #4
	mul r9, r5, r8
	add r10, r6, r9
	ldr r5, [r10]
	mov r8, #-30
	mul r6, r5, r8
	add r9, r7, r6
	ldr r10, [fp, #-4]
	mov r5, #1
	mov r8, #20
	mul r7, r5, r8
	add r6, r10, r7
	mov r5, #2
	mov r8, #4
	mul r10, r5, r8
	add r7, r6, r10
	ldr r5, [r7]
	mov r8, #12
	mul r6, r5, r8
	add r10, r9, r6
	ldr r7, [fp, #-4]
	mov r5, #1
	mov r8, #20
	mul r9, r5, r8
	add r6, r7, r9
	mov r5, #3
	mov r8, #4
	mul r7, r5, r8
	add r9, r6, r7
	ldr r5, [r9]
	mov r8, #125
	mul r6, r5, r8
	add r7, r10, r6
	ldr r9, [fp, #-4]
	mov r5, #1
	mov r8, #20
	mul r10, r5, r8
	add r6, r9, r10
	mov r5, #4
	mov r8, #4
	mul r9, r5, r8
	add r10, r6, r9
	ldr r5, [r10]
	mov r8, #-117
	mul r6, r5, r8
	add r9, r7, r6
	ldr r10, [fp, #-4]
	mov r5, #2
	mov r8, #20
	mul r7, r5, r8
	add r6, r10, r7
	mov r5, r6
	ldr r8, [r5]
	mov r10, #-65
	mul r7, r8, r10
	add r6, r9, r7
	ldr r5, [fp, #-4]
	mov r8, #2
	mov r10, #20
	mul r9, r8, r10
	add r7, r5, r9
	mov r8, #1
	mov r10, #4
	mul r5, r8, r10
	add r9, r7, r5
	ldr r8, [r9]
	mov r10, #-67
	mul r7, r8, r10
	add r5, r6, r7
	ldr r9, [fp, #-4]
	mov r8, #2
	mov r10, #20
	mul r6, r8, r10
	add r7, r9, r6
	mov r8, #2
	mov r10, #4
	mul r9, r8, r10
	add r6, r7, r9
	ldr r8, [r6]
	mov r10, #125
	mul r7, r8, r10
	add r9, r5, r7
	ldr r6, [fp, #-4]
	mov r8, #2
	mov r10, #20
	mul r5, r8, r10
	add r7, r6, r5
	mov r8, #3
	mov r10, #4
	mul r6, r8, r10
	add r5, r7, r6
	ldr r8, [r5]
	mov r10, #110
	mul r7, r8, r10
	add r6, r9, r7
	ldr r5, [fp, #-4]
	mov r8, #2
	mov r10, #20
	mul r9, r8, r10
	add r7, r5, r9
	mov r8, #4
	mov r10, #4
	mul r5, r8, r10
	add r9, r7, r5
	ldr r8, [r9]
	mov r10, #-31
	mul r7, r8, r10
	add r5, r6, r7
	ldr r9, [fp, #-4]
	mov r8, #3
	mov r10, #20
	mul r6, r8, r10
	add r7, r9, r6
	mov r8, r7
	ldr r10, [r8]
	mov r9, #-123
	mul r6, r10, r9
	add r7, r5, r6
	ldr r8, [fp, #-4]
	mov r10, #3
	mov r9, #20
	mul r5, r10, r9
	add r6, r8, r5
	mov r10, #1
	mov r9, #4
	mul r8, r10, r9
	add r5, r6, r8
	ldr r10, [r5]
	mov r9, #83
	mul r6, r10, r9
	add r8, r7, r6
	ldr r5, [fp, #-4]
	mov r10, #3
	mov r9, #20
	mul r7, r10, r9
	add r6, r5, r7
	mov r10, #2
	mov r9, #4
	mul r5, r10, r9
	add r7, r6, r5
	ldr r10, [r7]
	mov r9, #122
	mul r6, r10, r9
	add r5, r8, r6
	ldr r7, [fp, #-4]
	mov r10, #3
	mov r9, #20
	mul r8, r10, r9
	add r6, r7, r8
	mov r10, #3
	mov r9, #4
	mul r7, r10, r9
	add r8, r6, r7
	ldr r10, [r8]
	mov r9, #11
	mul r6, r10, r9
	add r7, r5, r6
	ldr r8, [fp, #-4]
	mov r10, #3
	mov r9, #20
	mul r5, r10, r9
	add r6, r8, r5
	mov r10, #4
	mov r9, #4
	mul r8, r10, r9
	add r5, r6, r8
	ldr r10, [r5]
	mov r9, #-23
	mul r6, r10, r9
	add r8, r7, r6
	ldr r5, [fp, #-4]
	mov r10, #4
	mov r9, #20
	mul r7, r10, r9
	add r6, r5, r7
	mov r10, r6
	ldr r9, [r10]
	mov r5, #-47
	mul r7, r9, r5
	add r6, r8, r7
	ldr r10, [fp, #-4]
	mov r9, #4
	mov r5, #20
	mul r8, r9, r5
	add r7, r10, r8
	mov r9, #1
	mov r5, #4
	mul r10, r9, r5
	add r8, r7, r10
	ldr r9, [r8]
	mov r5, #-32
	mul r7, r9, r5
	add r10, r6, r7
	ldr r8, [fp, #-4]
	mov r9, #4
	mov r5, #20
	mul r6, r9, r5
	add r7, r8, r6
	mov r9, #2
	mov r5, #4
	mul r8, r9, r5
	add r6, r7, r8
	ldr r9, [r6]
	mov r5, #-117
	mul r7, r9, r5
	add r8, r10, r7
	ldr r6, [fp, #-4]
	mov r9, #4
	mov r5, #20
	mul r10, r9, r5
	add r7, r6, r10
	mov r9, #3
	mov r5, #4
	mul r6, r9, r5
	add r10, r7, r6
	ldr r9, [r10]
	mov r5, #95
	mul r7, r9, r5
	add r6, r8, r7
	ldr r10, [fp, #-4]
	mov r9, #4
	mov r5, #20
	mul r8, r9, r5
	add r7, r10, r8
	mov r9, #4
	mov r5, #4
	mul r10, r9, r5
	add r8, r7, r10
	ldr r9, [r8]
	mov r5, #118
	mul r7, r9, r5
	add r10, r6, r7
	mov r0, r10
	bl relu_reg
	mov r8, r0
	mov r9, #-106
	mul r5, r8, r9
	add r6, r4, r5
	ldr r7, [fp, #-4]
	mov r10, r7
	mov r8, r10
	ldr r9, [r8]
	b .LiteralPool3
.LTORG
.LiteralPool3:
	mov r4, #8
	mul r5, r9, r4
	ldr r7, [fp, #-4]
	mov r10, r7
	mov r8, #1
	mov r9, #4
	mul r4, r8, r9
	add r7, r10, r4
	ldr r8, [r7]
	mov r9, #82
	mul r10, r8, r9
	add r4, r5, r10
	ldr r7, [fp, #-4]
	mov r8, r7
	mov r9, #2
	mov r5, #4
	mul r10, r9, r5
	add r7, r8, r10
	ldr r9, [r7]
	mov r5, #-104
	mul r8, r9, r5
	add r10, r4, r8
	ldr r7, [fp, #-4]
	mov r9, r7
	mov r5, #3
	mov r4, #4
	mul r8, r5, r4
	add r7, r9, r8
	ldr r5, [r7]
	mov r4, #101
	mul r9, r5, r4
	add r8, r10, r9
	ldr r7, [fp, #-4]
	mov r5, r7
	mov r4, #4
	mov r10, #4
	mul r9, r4, r10
	add r7, r5, r9
	ldr r4, [r7]
	mov r10, #-116
	mul r5, r4, r10
	add r9, r8, r5
	ldr r7, [fp, #-4]
	mov r4, #1
	mov r10, #20
	mul r8, r4, r10
	add r5, r7, r8
	mov r4, r5
	ldr r10, [r4]
	mov r7, #-63
	mul r8, r10, r7
	add r5, r9, r8
	ldr r4, [fp, #-4]
	mov r10, #1
	mov r7, #20
	mul r9, r10, r7
	add r8, r4, r9
	mov r10, #1
	mov r7, #4
	mul r4, r10, r7
	add r9, r8, r4
	ldr r10, [r9]
	mov r7, #-16
	mul r8, r10, r7
	add r4, r5, r8
	ldr r9, [fp, #-4]
	mov r10, #1
	mov r7, #20
	mul r5, r10, r7
	add r8, r9, r5
	mov r10, #2
	mov r7, #4
	mul r9, r10, r7
	add r5, r8, r9
	ldr r10, [r5]
	mov r7, #-70
	mul r8, r10, r7
	add r9, r4, r8
	ldr r5, [fp, #-4]
	mov r10, #1
	mov r7, #20
	mul r4, r10, r7
	add r8, r5, r4
	mov r10, #3
	mov r7, #4
	mul r5, r10, r7
	add r4, r8, r5
	ldr r10, [r4]
	mov r7, #125
	mul r8, r10, r7
	add r5, r9, r8
	ldr r4, [fp, #-4]
	mov r10, #1
	mov r7, #20
	mul r9, r10, r7
	add r8, r4, r9
	mov r10, #4
	mov r7, #4
	mul r4, r10, r7
	add r9, r8, r4
	ldr r10, [r9]
	mov r7, #75
	mul r8, r10, r7
	add r4, r5, r8
	ldr r9, [fp, #-4]
	mov r10, #2
	mov r7, #20
	mul r5, r10, r7
	add r8, r9, r5
	mov r10, r8
	ldr r7, [r10]
	mov r9, #66
	mul r5, r7, r9
	add r8, r4, r5
	ldr r10, [fp, #-4]
	mov r7, #2
	mov r9, #20
	mul r4, r7, r9
	add r5, r10, r4
	mov r7, #1
	mov r9, #4
	mul r10, r7, r9
	add r4, r5, r10
	ldr r7, [r4]
	mov r9, #-96
	mul r5, r7, r9
	add r10, r8, r5
	ldr r4, [fp, #-4]
	mov r7, #2
	mov r9, #20
	mul r8, r7, r9
	add r5, r4, r8
	mov r7, #2
	mov r9, #4
	mul r4, r7, r9
	add r8, r5, r4
	ldr r7, [r8]
	mov r9, #-101
	mul r5, r7, r9
	add r4, r10, r5
	ldr r8, [fp, #-4]
	mov r7, #2
	mov r9, #20
	mul r10, r7, r9
	add r5, r8, r10
	mov r7, #3
	mov r9, #4
	mul r8, r7, r9
	add r10, r5, r8
	ldr r7, [r10]
	mov r9, #-114
	mul r5, r7, r9
	add r8, r4, r5
	ldr r10, [fp, #-4]
	mov r7, #2
	mov r9, #20
	mul r4, r7, r9
	add r5, r10, r4
	mov r7, #4
	mov r9, #4
	mul r10, r7, r9
	add r4, r5, r10
	ldr r7, [r4]
	mov r9, #59
	mul r5, r7, r9
	add r10, r8, r5
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r9, #20
	mul r8, r7, r9
	add r5, r4, r8
	mov r7, r5
	ldr r9, [r7]
	mov r4, #12
	mul r8, r9, r4
	add r5, r10, r8
	ldr r7, [fp, #-4]
	mov r9, #3
	mov r4, #20
	mul r10, r9, r4
	add r8, r7, r10
	mov r9, #1
	mov r4, #4
	mul r7, r9, r4
	add r10, r8, r7
	ldr r9, [r10]
	mov r4, #5
	mul r8, r9, r4
	add r7, r5, r8
	ldr r10, [fp, #-4]
	mov r9, #3
	mov r4, #20
	mul r5, r9, r4
	add r8, r10, r5
	mov r9, #2
	mov r4, #4
	mul r10, r9, r4
	add r5, r8, r10
	ldr r9, [r5]
	mov r4, #-95
	mul r8, r9, r4
	add r10, r7, r8
	ldr r5, [fp, #-4]
	mov r9, #3
	mov r4, #20
	mul r7, r9, r4
	add r8, r5, r7
	mov r9, #3
	mov r4, #4
	mul r5, r9, r4
	add r7, r8, r5
	ldr r9, [r7]
	mov r4, #116
	mul r8, r9, r4
	add r5, r10, r8
	ldr r7, [fp, #-4]
	mov r9, #3
	mov r4, #20
	mul r10, r9, r4
	add r8, r7, r10
	mov r9, #4
	mov r4, #4
	mul r7, r9, r4
	add r10, r8, r7
	ldr r9, [r10]
	mov r4, #-93
	mul r8, r9, r4
	add r7, r5, r8
	ldr r10, [fp, #-4]
	mov r9, #4
	mov r4, #20
	mul r5, r9, r4
	add r8, r10, r5
	mov r9, r8
	ldr r4, [r9]
	mov r10, #15
	mul r5, r4, r10
	add r8, r7, r5
	ldr r9, [fp, #-4]
	mov r4, #4
	mov r10, #20
	mul r7, r4, r10
	add r5, r9, r7
	mov r4, #1
	mov r10, #4
	mul r9, r4, r10
	add r7, r5, r9
	ldr r4, [r7]
	mov r10, #79
	mul r5, r4, r10
	add r9, r8, r5
	ldr r7, [fp, #-4]
	mov r4, #4
	mov r10, #20
	mul r8, r4, r10
	add r5, r7, r8
	mov r4, #2
	mov r10, #4
	mul r7, r4, r10
	add r8, r5, r7
	ldr r4, [r8]
	mov r10, #3
	mul r5, r4, r10
	add r7, r9, r5
	ldr r8, [fp, #-4]
	mov r4, #4
	mov r10, #20
	mul r9, r4, r10
	add r5, r8, r9
	mov r4, #3
	mov r10, #4
	mul r8, r4, r10
	add r9, r5, r8
	ldr r4, [r9]
	mov r10, #49
	mul r5, r4, r10
	add r8, r7, r5
	ldr r9, [fp, #-4]
	mov r4, #4
	mov r10, #20
	mul r7, r4, r10
	add r5, r9, r7
	mov r4, #4
	mov r10, #4
	mul r9, r4, r10
	add r7, r5, r9
	ldr r4, [r7]
	mov r10, #-124
	mul r5, r4, r10
	add r9, r8, r5
	mov r0, r9
	bl relu_reg
	mov r7, r0
	mov r4, #-3
	mul r10, r7, r4
	add r8, r6, r10
	ldr r5, [fp, #-4]
	mov r9, r5
	mov r7, r9
	ldr r4, [r7]
	mov r6, #81
	b .LiteralPool4
.LTORG
.LiteralPool4:
	mul r10, r4, r6
	ldr r5, [fp, #-4]
	mov r9, r5
	mov r7, #1
	mov r4, #4
	mul r6, r7, r4
	add r5, r9, r6
	ldr r7, [r5]
	mov r4, #68
	mul r9, r7, r4
	add r6, r10, r9
	ldr r5, [fp, #-4]
	mov r7, r5
	mov r4, #2
	mov r10, #4
	mul r9, r4, r10
	add r5, r7, r9
	ldr r4, [r5]
	mov r10, #-102
	mul r7, r4, r10
	add r9, r6, r7
	ldr r5, [fp, #-4]
	mov r4, r5
	mov r10, #3
	mov r6, #4
	mul r7, r10, r6
	add r5, r4, r7
	ldr r10, [r5]
	mov r6, #-74
	mul r4, r10, r6
	add r7, r9, r4
	ldr r5, [fp, #-4]
	mov r10, r5
	mov r6, #4
	mov r9, #4
	mul r4, r6, r9
	add r5, r10, r4
	ldr r6, [r5]
	mov r9, #121
	mul r10, r6, r9
	add r4, r7, r10
	ldr r5, [fp, #-4]
	mov r6, #1
	mov r9, #20
	mul r7, r6, r9
	add r10, r5, r7
	mov r6, r10
	ldr r9, [r6]
	mov r5, #-15
	mul r7, r9, r5
	add r10, r4, r7
	ldr r6, [fp, #-4]
	mov r9, #1
	mov r5, #20
	mul r4, r9, r5
	add r7, r6, r4
	mov r9, #1
	mov r5, #4
	mul r6, r9, r5
	add r4, r7, r6
	ldr r9, [r4]
	mov r5, #55
	mul r7, r9, r5
	add r6, r10, r7
	ldr r4, [fp, #-4]
	mov r9, #1
	mov r5, #20
	mul r10, r9, r5
	add r7, r4, r10
	mov r9, #2
	mov r5, #4
	mul r4, r9, r5
	add r10, r7, r4
	ldr r9, [r10]
	mov r5, #101
	mul r7, r9, r5
	add r4, r6, r7
	ldr r10, [fp, #-4]
	mov r9, #1
	mov r5, #20
	mul r6, r9, r5
	add r7, r10, r6
	mov r9, #3
	mov r5, #4
	mul r10, r9, r5
	add r6, r7, r10
	ldr r9, [r6]
	mov r5, #-13
	mul r7, r9, r5
	add r10, r4, r7
	ldr r6, [fp, #-4]
	mov r9, #1
	mov r5, #20
	mul r4, r9, r5
	add r7, r6, r4
	mov r9, #4
	mov r5, #4
	mul r6, r9, r5
	add r4, r7, r6
	ldr r9, [r4]
	mov r5, #-62
	mul r7, r9, r5
	add r6, r10, r7
	ldr r4, [fp, #-4]
	mov r9, #2
	mov r5, #20
	mul r10, r9, r5
	add r7, r4, r10
	mov r9, r7
	ldr r5, [r9]
	mov r4, #64
	mul r10, r5, r4
	add r7, r6, r10
	ldr r9, [fp, #-4]
	mov r5, #2
	mov r4, #20
	mul r6, r5, r4
	add r10, r9, r6
	mov r5, #1
	mov r4, #4
	mul r9, r5, r4
	add r6, r10, r9
	ldr r5, [r6]
	mov r4, #114
	mul r10, r5, r4
	add r9, r7, r10
	ldr r6, [fp, #-4]
	mov r5, #2
	mov r4, #20
	mul r7, r5, r4
	add r10, r6, r7
	mov r5, #2
	mov r4, #4
	mul r6, r5, r4
	add r7, r10, r6
	ldr r5, [r7]
	mov r4, #38
	mul r10, r5, r4
	add r6, r9, r10
	ldr r7, [fp, #-4]
	mov r5, #2
	mov r4, #20
	mul r9, r5, r4
	add r10, r7, r9
	mov r5, #3
	mov r4, #4
	mul r7, r5, r4
	add r9, r10, r7
	ldr r5, [r9]
	mov r4, #-21
	mul r10, r5, r4
	add r7, r6, r10
	ldr r9, [fp, #-4]
	mov r5, #2
	mov r4, #20
	mul r6, r5, r4
	add r10, r9, r6
	mov r5, #4
	mov r4, #4
	mul r9, r5, r4
	add r6, r10, r9
	ldr r5, [r6]
	mov r4, #112
	mul r10, r5, r4
	add r9, r7, r10
	ldr r6, [fp, #-4]
	mov r5, #3
	mov r4, #20
	mul r7, r5, r4
	add r10, r6, r7
	mov r5, r10
	ldr r4, [r5]
	mov r6, #114
	mul r7, r4, r6
	add r10, r9, r7
	ldr r5, [fp, #-4]
	mov r4, #3
	mov r6, #20
	mul r9, r4, r6
	add r7, r5, r9
	mov r4, #1
	mov r6, #4
	mul r5, r4, r6
	add r9, r7, r5
	ldr r4, [r9]
	mov r6, #112
	mul r7, r4, r6
	add r5, r10, r7
	ldr r9, [fp, #-4]
	mov r4, #3
	mov r6, #20
	mul r10, r4, r6
	add r7, r9, r10
	mov r4, #2
	mov r6, #4
	mul r9, r4, r6
	add r10, r7, r9
	ldr r4, [r10]
	mov r6, #-10
	mul r7, r4, r6
	add r9, r5, r7
	ldr r10, [fp, #-4]
	mov r4, #3
	mov r6, #20
	mul r5, r4, r6
	add r7, r10, r5
	mov r4, #3
	mov r6, #4
	mul r10, r4, r6
	add r5, r7, r10
	ldr r4, [r5]
	mov r6, #-16
	mul r7, r4, r6
	add r10, r9, r7
	ldr r5, [fp, #-4]
	mov r4, #3
	mov r6, #20
	mul r9, r4, r6
	add r7, r5, r9
	mov r4, #4
	mov r6, #4
	mul r5, r4, r6
	add r9, r7, r5
	ldr r4, [r9]
	mov r6, #-50
	mul r7, r4, r6
	add r5, r10, r7
	ldr r9, [fp, #-4]
	mov r4, #4
	mov r6, #20
	mul r10, r4, r6
	add r7, r9, r10
	mov r4, r7
	ldr r6, [r4]
	mov r9, #-112
	mul r10, r6, r9
	add r7, r5, r10
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r9, #20
	mul r5, r6, r9
	add r10, r4, r5
	mov r6, #1
	mov r9, #4
	mul r4, r6, r9
	add r5, r10, r4
	ldr r6, [r5]
	mov r9, #-116
	mul r10, r6, r9
	add r4, r7, r10
	ldr r5, [fp, #-4]
	mov r6, #4
	mov r9, #20
	mul r7, r6, r9
	add r10, r5, r7
	mov r6, #2
	mov r9, #4
	mul r5, r6, r9
	add r7, r10, r5
	ldr r6, [r7]
	mov r9, #-54
	mul r10, r6, r9
	add r5, r4, r10
	ldr r7, [fp, #-4]
	mov r6, #4
	mov r9, #20
	mul r4, r6, r9
	add r10, r7, r4
	mov r6, #3
	mov r9, #4
	mul r7, r6, r9
	add r4, r10, r7
	ldr r6, [r4]
	mov r9, #82
	mul r10, r6, r9
	add r7, r5, r10
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r9, #20
	mul r5, r6, r9
	add r10, r4, r5
	mov r6, #4
	mov r9, #4
	mul r4, r6, r9
	add r5, r10, r4
	ldr r6, [r5]
	mov r9, #-72
	mul r10, r6, r9
	add r4, r7, r10
	mov r0, r4
	bl relu_reg
	mov r5, r0
	mov r6, #32
	mul r9, r5, r6
	add r7, r8, r9
	ldr r10, [fp, #-4]
	mov r4, r10
	mov r5, r4
	ldr r6, [r5]
	mov r8, #15
	mul r9, r6, r8
	b .LiteralPool5
.LTORG
.LiteralPool5:
	ldr r10, [fp, #-4]
	mov r4, r10
	mov r5, #1
	mov r6, #4
	mul r8, r5, r6
	add r10, r4, r8
	ldr r5, [r10]
	mov r6, #-77
	mul r4, r5, r6
	add r8, r9, r4
	ldr r10, [fp, #-4]
	mov r5, r10
	mov r6, #2
	mov r9, #4
	mul r4, r6, r9
	add r10, r5, r4
	ldr r6, [r10]
	mov r9, #66
	mul r5, r6, r9
	add r4, r8, r5
	ldr r10, [fp, #-4]
	mov r6, r10
	mov r9, #3
	mov r8, #4
	mul r5, r9, r8
	add r10, r6, r5
	ldr r9, [r10]
	mov r8, #-90
	mul r6, r9, r8
	add r5, r4, r6
	ldr r10, [fp, #-4]
	mov r9, r10
	mov r8, #4
	mov r4, #4
	mul r6, r8, r4
	add r10, r9, r6
	ldr r8, [r10]
	mov r4, #-6
	mul r9, r8, r4
	add r6, r5, r9
	ldr r10, [fp, #-4]
	mov r8, #1
	mov r4, #20
	mul r5, r8, r4
	add r9, r10, r5
	mov r8, r9
	ldr r4, [r8]
	mov r10, #-30
	mul r5, r4, r10
	add r9, r6, r5
	ldr r8, [fp, #-4]
	mov r4, #1
	mov r10, #20
	mul r6, r4, r10
	add r5, r8, r6
	mov r4, #1
	mov r10, #4
	mul r8, r4, r10
	add r6, r5, r8
	ldr r4, [r6]
	mov r10, #-8
	mul r5, r4, r10
	add r8, r9, r5
	ldr r6, [fp, #-4]
	mov r4, #1
	mov r10, #20
	mul r9, r4, r10
	add r5, r6, r9
	mov r4, #2
	mov r10, #4
	mul r6, r4, r10
	add r9, r5, r6
	ldr r4, [r9]
	mov r10, #81
	mul r5, r4, r10
	add r6, r8, r5
	ldr r9, [fp, #-4]
	mov r4, #1
	mov r10, #20
	mul r8, r4, r10
	add r5, r9, r8
	mov r4, #3
	mov r10, #4
	mul r9, r4, r10
	add r8, r5, r9
	ldr r4, [r8]
	mov r10, #2
	mul r5, r4, r10
	add r9, r6, r5
	ldr r8, [fp, #-4]
	mov r4, #1
	mov r10, #20
	mul r6, r4, r10
	add r5, r8, r6
	mov r4, #4
	mov r10, #4
	mul r8, r4, r10
	add r6, r5, r8
	ldr r4, [r6]
	mov r10, #-110
	mul r5, r4, r10
	add r8, r9, r5
	ldr r6, [fp, #-4]
	mov r4, #2
	mov r10, #20
	mul r9, r4, r10
	add r5, r6, r9
	mov r4, r5
	ldr r10, [r4]
	mov r6, #-95
	mul r9, r10, r6
	add r5, r8, r9
	ldr r4, [fp, #-4]
	mov r10, #2
	mov r6, #20
	mul r8, r10, r6
	add r9, r4, r8
	mov r10, #1
	mov r6, #4
	mul r4, r10, r6
	add r8, r9, r4
	ldr r10, [r8]
	mov r6, #59
	mul r9, r10, r6
	add r4, r5, r9
	ldr r8, [fp, #-4]
	mov r10, #2
	mov r6, #20
	mul r5, r10, r6
	add r9, r8, r5
	mov r10, #2
	mov r6, #4
	mul r8, r10, r6
	add r5, r9, r8
	ldr r10, [r5]
	mov r6, #52
	mul r9, r10, r6
	add r8, r4, r9
	ldr r5, [fp, #-4]
	mov r10, #2
	mov r6, #20
	mul r4, r10, r6
	add r9, r5, r4
	mov r10, #3
	mov r6, #4
	mul r5, r10, r6
	add r4, r9, r5
	ldr r10, [r4]
	mov r6, #15
	mul r9, r10, r6
	add r5, r8, r9
	ldr r4, [fp, #-4]
	mov r10, #2
	mov r6, #20
	mul r8, r10, r6
	add r9, r4, r8
	mov r10, #4
	mov r6, #4
	mul r4, r10, r6
	add r8, r9, r4
	ldr r10, [r8]
	mov r6, #55
	mul r9, r10, r6
	add r4, r5, r9
	ldr r8, [fp, #-4]
	mov r10, #3
	mov r6, #20
	mul r5, r10, r6
	add r9, r8, r5
	mov r10, r9
	ldr r6, [r10]
	mov r8, #-33
	mul r5, r6, r8
	add r9, r4, r5
	ldr r10, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r4, r6, r8
	add r5, r10, r4
	mov r6, #1
	mov r8, #4
	mul r10, r6, r8
	add r4, r5, r10
	ldr r6, [r4]
	mov r8, #14
	mul r5, r6, r8
	add r10, r9, r5
	ldr r4, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r9, r6, r8
	add r5, r4, r9
	mov r6, #2
	mov r8, #4
	mul r4, r6, r8
	add r9, r5, r4
	ldr r6, [r9]
	mov r8, #58
	mul r5, r6, r8
	add r4, r10, r5
	ldr r9, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r10, r6, r8
	add r5, r9, r10
	mov r6, #3
	mov r8, #4
	mul r9, r6, r8
	add r10, r5, r9
	ldr r6, [r10]
	mov r8, #67
	mul r5, r6, r8
	add r9, r4, r5
	ldr r10, [fp, #-4]
	mov r6, #3
	mov r8, #20
	mul r4, r6, r8
	add r5, r10, r4
	mov r6, #4
	mov r8, #4
	mul r10, r6, r8
	add r4, r5, r10
	ldr r6, [r4]
	mov r8, #86
	mul r5, r6, r8
	add r10, r9, r5
	ldr r4, [fp, #-4]
	mov r6, #4
	mov r8, #20
	mul r9, r6, r8
	add r5, r4, r9
	mov r6, r5
	ldr r8, [r6]
	mov r4, #-79
	mul r9, r8, r4
	add r5, r10, r9
	ldr r6, [fp, #-4]
	mov r8, #4
	mov r4, #20
	mul r10, r8, r4
	add r9, r6, r10
	mov r8, #1
	mov r4, #4
	mul r6, r8, r4
	add r10, r9, r6
	ldr r8, [r10]
	mov r4, #48
	mul r9, r8, r4
	add r6, r5, r9
	ldr r10, [fp, #-4]
	mov r8, #4
	mov r4, #20
	mul r5, r8, r4
	add r9, r10, r5
	mov r8, #2
	mov r4, #4
	mul r10, r8, r4
	add r5, r9, r10
	ldr r8, [r5]
	mov r4, #-13
	mul r9, r8, r4
	add r10, r6, r9
	ldr r5, [fp, #-4]
	mov r8, #4
	mov r4, #20
	mul r6, r8, r4
	add r9, r5, r6
	mov r8, #3
	mov r4, #4
	mul r5, r8, r4
	add r6, r9, r5
	ldr r8, [r6]
	mov r4, #-15
	mul r9, r8, r4
	add r5, r10, r9
	ldr r6, [fp, #-4]
	mov r8, #4
	mov r4, #20
	mul r10, r8, r4
	add r9, r6, r10
	mov r8, #4
	mov r4, #4
	mul r6, r8, r4
	add r10, r9, r6
	ldr r8, [r10]
	mov r4, #66
	mul r9, r8, r4
	add r6, r5, r9
	mov r0, r6
	bl relu_reg
	mov r10, r0
	mov r8, #-95
	mul r4, r10, r8
	add r5, r7, r4
	ldr r9, [fp, #-4]
	mov r6, r9
	mov r10, r6
	ldr r8, [r10]
	mov r7, #33
	mul r4, r8, r7
	ldr r9, [fp, #-4]
	b .LiteralPool6
.LTORG
.LiteralPool6:
	mov r6, r9
	mov r10, #1
	mov r8, #4
	mul r7, r10, r8
	add r9, r6, r7
	ldr r10, [r9]
	mov r8, #82
	mul r6, r10, r8
	add r7, r4, r6
	ldr r9, [fp, #-4]
	mov r10, r9
	mov r8, #2
	mov r4, #4
	mul r6, r8, r4
	add r9, r10, r6
	ldr r8, [r9]
	mov r4, #67
	mul r10, r8, r4
	add r6, r7, r10
	ldr r9, [fp, #-4]
	mov r8, r9
	mov r4, #3
	mov r7, #4
	mul r10, r4, r7
	add r9, r8, r10
	ldr r4, [r9]
	mov r7, #30
	mul r8, r4, r7
	add r10, r6, r8
	ldr r9, [fp, #-4]
	mov r4, r9
	mov r7, #4
	mov r6, #4
	mul r8, r7, r6
	add r9, r4, r8
	ldr r7, [r9]
	mov r6, #-2
	mul r4, r7, r6
	add r8, r10, r4
	ldr r9, [fp, #-4]
	mov r7, #1
	mov r6, #20
	mul r10, r7, r6
	add r4, r9, r10
	mov r7, r4
	ldr r6, [r7]
	mov r9, #65
	mul r10, r6, r9
	add r4, r8, r10
	ldr r7, [fp, #-4]
	mov r6, #1
	mov r9, #20
	mul r8, r6, r9
	add r10, r7, r8
	mov r6, #1
	mov r9, #4
	mul r7, r6, r9
	add r8, r10, r7
	ldr r6, [r8]
	mov r9, #120
	mul r10, r6, r9
	add r7, r4, r10
	ldr r8, [fp, #-4]
	mov r6, #1
	mov r9, #20
	mul r4, r6, r9
	add r10, r8, r4
	mov r6, #2
	mov r9, #4
	mul r8, r6, r9
	add r4, r10, r8
	ldr r6, [r4]
	mov r9, #-13
	mul r10, r6, r9
	add r8, r7, r10
	ldr r4, [fp, #-4]
	mov r6, #1
	mov r9, #20
	mul r7, r6, r9
	add r10, r4, r7
	mov r6, #3
	mov r9, #4
	mul r4, r6, r9
	add r7, r10, r4
	ldr r6, [r7]
	mov r9, #18
	mul r10, r6, r9
	add r4, r8, r10
	ldr r7, [fp, #-4]
	mov r6, #1
	mov r9, #20
	mul r8, r6, r9
	add r10, r7, r8
	mov r6, #4
	mov r9, #4
	mul r7, r6, r9
	add r8, r10, r7
	ldr r6, [r8]
	mov r9, #5
	mul r10, r6, r9
	add r7, r4, r10
	ldr r8, [fp, #-4]
	mov r6, #2
	mov r9, #20
	mul r4, r6, r9
	add r10, r8, r4
	mov r6, r10
	ldr r9, [r6]
	mov r8, #104
	mul r4, r9, r8
	add r10, r7, r4
	ldr r6, [fp, #-4]
	mov r9, #2
	mov r8, #20
	mul r7, r9, r8
	add r4, r6, r7
	mov r9, #1
	mov r8, #4
	mul r6, r9, r8
	add r7, r4, r6
	ldr r9, [r7]
	mov r8, #-119
	mul r4, r9, r8
	add r6, r10, r4
	ldr r7, [fp, #-4]
	mov r9, #2
	mov r8, #20
	mul r10, r9, r8
	add r4, r7, r10
	mov r9, #2
	mov r8, #4
	mul r7, r9, r8
	add r10, r4, r7
	ldr r9, [r10]
	mov r8, #-7
	mul r4, r9, r8
	add r7, r6, r4
	ldr r10, [fp, #-4]
	mov r9, #2
	mov r8, #20
	mul r6, r9, r8
	add r4, r10, r6
	mov r9, #3
	mov r8, #4
	mul r10, r9, r8
	add r6, r4, r10
	ldr r9, [r6]
	mov r8, #71
	mul r4, r9, r8
	add r10, r7, r4
	ldr r6, [fp, #-4]
	mov r9, #2
	mov r8, #20
	mul r7, r9, r8
	add r4, r6, r7
	mov r9, #4
	mov r8, #4
	mul r6, r9, r8
	add r7, r4, r6
	ldr r9, [r7]
	mov r8, #107
	mul r4, r9, r8
	add r6, r10, r4
	ldr r7, [fp, #-4]
	mov r9, #3
	mov r8, #20
	mul r10, r9, r8
	add r4, r7, r10
	mov r9, r4
	ldr r8, [r9]
	mov r7, #24
	mul r10, r8, r7
	add r4, r6, r10
	ldr r9, [fp, #-4]
	mov r8, #3
	mov r7, #20
	mul r6, r8, r7
	add r10, r9, r6
	mov r8, #1
	mov r7, #4
	mul r9, r8, r7
	add r6, r10, r9
	ldr r8, [r6]
	mov r7, #82
	mul r10, r8, r7
	add r9, r4, r10
	ldr r6, [fp, #-4]
	mov r8, #3
	mov r7, #20
	mul r4, r8, r7
	add r10, r6, r4
	mov r8, #2
	mov r7, #4
	mul r6, r8, r7
	add r4, r10, r6
	ldr r8, [r4]
	mov r7, #-96
	mul r10, r8, r7
	add r6, r9, r10
	ldr r4, [fp, #-4]
	mov r8, #3
	mov r7, #20
	mul r9, r8, r7
	add r10, r4, r9
	mov r8, #3
	mov r7, #4
	mul r4, r8, r7
	add r9, r10, r4
	ldr r8, [r9]
	mov r7, #-104
	mul r10, r8, r7
	add r4, r6, r10
	ldr r9, [fp, #-4]
	mov r8, #3
	mov r7, #20
	mul r6, r8, r7
	add r10, r9, r6
	mov r8, #4
	mov r7, #4
	mul r9, r8, r7
	add r6, r10, r9
	ldr r8, [r6]
	mov r7, #-121
	mul r10, r8, r7
	add r9, r4, r10
	ldr r6, [fp, #-4]
	mov r8, #4
	mov r7, #20
	mul r4, r8, r7
	add r10, r6, r4
	mov r8, r10
	ldr r7, [r8]
	mov r6, #65
	mul r4, r7, r6
	add r10, r9, r4
	ldr r8, [fp, #-4]
	mov r7, #4
	mov r6, #20
	mul r9, r7, r6
	add r4, r8, r9
	mov r7, #1
	mov r6, #4
	mul r8, r7, r6
	add r9, r4, r8
	ldr r7, [r9]
	mov r6, #97
	mul r4, r7, r6
	add r8, r10, r4
	ldr r9, [fp, #-4]
	mov r7, #4
	mov r6, #20
	mul r10, r7, r6
	add r4, r9, r10
	mov r7, #2
	mov r6, #4
	mul r9, r7, r6
	add r10, r4, r9
	ldr r7, [r10]
	mov r6, #83
	mul r4, r7, r6
	add r9, r8, r4
	ldr r10, [fp, #-4]
	mov r7, #4
	mov r6, #20
	mul r8, r7, r6
	add r4, r10, r8
	mov r7, #3
	mov r6, #4
	mul r10, r7, r6
	add r8, r4, r10
	ldr r7, [r8]
	mov r6, #46
	mul r4, r7, r6
	add r10, r9, r4
	ldr r8, [fp, #-4]
	mov r7, #4
	mov r6, #20
	mul r9, r7, r6
	add r4, r8, r9
	mov r7, #4
	mov r6, #4
	mul r8, r7, r6
	add r9, r4, r8
	ldr r7, [r9]
	mov r6, #-84
	mul r4, r7, r6
	add r8, r10, r4
	mov r0, r8
	bl relu_reg
	mov r9, r0
	mov r7, #-50
	mul r6, r9, r7
	add r10, r5, r6
	ldr r4, [fp, #-4]
	mov r8, r4
	mov r9, r8
	ldr r7, [r9]
	mov r5, #-29
	mul r6, r7, r5
	ldr r4, [fp, #-4]
	mov r8, r4
	b .LiteralPool7
.LTORG
.LiteralPool7:
	mov r9, #1
	mov r7, #4
	mul r5, r9, r7
	add r4, r8, r5
	ldr r9, [r4]
	mov r7, #7
	mul r8, r9, r7
	add r5, r6, r8
	ldr r4, [fp, #-4]
	mov r9, r4
	mov r7, #2
	mov r6, #4
	mul r8, r7, r6
	add r4, r9, r8
	ldr r7, [r4]
	mov r6, #-70
	mul r9, r7, r6
	add r8, r5, r9
	ldr r4, [fp, #-4]
	mov r7, r4
	mov r6, #3
	mov r5, #4
	mul r9, r6, r5
	add r4, r7, r9
	ldr r6, [r4]
	mov r5, #38
	mul r7, r6, r5
	add r9, r8, r7
	ldr r4, [fp, #-4]
	mov r6, r4
	mov r5, #4
	mov r8, #4
	mul r7, r5, r8
	add r4, r6, r7
	ldr r5, [r4]
	mov r8, #-90
	mul r6, r5, r8
	add r7, r9, r6
	ldr r4, [fp, #-4]
	mov r5, #1
	mov r8, #20
	mul r9, r5, r8
	add r6, r4, r9
	mov r5, r6
	ldr r8, [r5]
	mov r4, #-15
	mul r9, r8, r4
	add r6, r7, r9
	ldr r5, [fp, #-4]
	mov r8, #1
	mov r4, #20
	mul r7, r8, r4
	add r9, r5, r7
	mov r8, #1
	mov r4, #4
	mul r5, r8, r4
	add r7, r9, r5
	ldr r8, [r7]
	mov r4, #-32
	mul r9, r8, r4
	add r5, r6, r9
	ldr r7, [fp, #-4]
	mov r8, #1
	mov r4, #20
	mul r6, r8, r4
	add r9, r7, r6
	mov r8, #2
	mov r4, #4
	mul r7, r8, r4
	add r6, r9, r7
	ldr r8, [r6]
	mov r4, #37
	mul r9, r8, r4
	add r7, r5, r9
	ldr r6, [fp, #-4]
	mov r8, #1
	mov r4, #20
	mul r5, r8, r4
	add r9, r6, r5
	mov r8, #3
	mov r4, #4
	mul r6, r8, r4
	add r5, r9, r6
	ldr r8, [r5]
	mov r4, #36
	mul r9, r8, r4
	add r6, r7, r9
	ldr r5, [fp, #-4]
	mov r8, #1
	mov r4, #20
	mul r7, r8, r4
	add r9, r5, r7
	mov r8, #4
	mov r4, #4
	mul r5, r8, r4
	add r7, r9, r5
	ldr r8, [r7]
	mov r4, #-62
	mul r9, r8, r4
	add r5, r6, r9
	ldr r7, [fp, #-4]
	mov r8, #2
	mov r4, #20
	mul r6, r8, r4
	add r9, r7, r6
	mov r8, r9
	ldr r4, [r8]
	mov r7, #-125
	mul r6, r4, r7
	add r9, r5, r6
	ldr r8, [fp, #-4]
	mov r4, #2
	mov r7, #20
	mul r5, r4, r7
	add r6, r8, r5
	mov r4, #1
	mov r7, #4
	mul r8, r4, r7
	add r5, r6, r8
	ldr r4, [r5]
	mov r7, #-46
	mul r6, r4, r7
	add r8, r9, r6
	ldr r5, [fp, #-4]
	mov r4, #2
	mov r7, #20
	mul r9, r4, r7
	add r6, r5, r9
	mov r4, #2
	mov r7, #4
	mul r5, r4, r7
	add r9, r6, r5
	ldr r4, [r9]
	mov r7, #-70
	mul r6, r4, r7
	add r5, r8, r6
	ldr r9, [fp, #-4]
	mov r4, #2
	mov r7, #20
	mul r8, r4, r7
	add r6, r9, r8
	mov r4, #3
	mov r7, #4
	mul r9, r4, r7
	add r8, r6, r9
	ldr r4, [r8]
	mov r7, #37
	mul r6, r4, r7
	add r9, r5, r6
	ldr r8, [fp, #-4]
	mov r4, #2
	mov r7, #20
	mul r5, r4, r7
	add r6, r8, r5
	mov r4, #4
	mov r7, #4
	mul r8, r4, r7
	add r5, r6, r8
	ldr r4, [r5]
	mov r7, #-73
	mul r6, r4, r7
	add r8, r9, r6
	ldr r5, [fp, #-4]
	mov r4, #3
	mov r7, #20
	mul r9, r4, r7
	add r6, r5, r9
	mov r4, r6
	ldr r7, [r4]
	mov r5, #-34
	mul r9, r7, r5
	add r6, r8, r9
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r5, #20
	mul r8, r7, r5
	add r9, r4, r8
	mov r7, #1
	mov r5, #4
	mul r4, r7, r5
	add r8, r9, r4
	ldr r7, [r8]
	mov r5, #-87
	mul r9, r7, r5
	add r4, r6, r9
	ldr r8, [fp, #-4]
	mov r7, #3
	mov r5, #20
	mul r6, r7, r5
	add r9, r8, r6
	mov r7, #2
	mov r5, #4
	mul r8, r7, r5
	add r6, r9, r8
	ldr r7, [r6]
	mov r5, #-75
	mul r9, r7, r5
	add r8, r4, r9
	ldr r6, [fp, #-4]
	mov r7, #3
	mov r5, #20
	mul r4, r7, r5
	add r9, r6, r4
	mov r7, #3
	mov r5, #4
	mul r6, r7, r5
	add r4, r9, r6
	ldr r7, [r4]
	mov r5, #71
	mul r9, r7, r5
	add r6, r8, r9
	ldr r4, [fp, #-4]
	mov r7, #3
	mov r5, #20
	mul r8, r7, r5
	add r9, r4, r8
	mov r7, #4
	mov r5, #4
	mul r4, r7, r5
	add r8, r9, r4
	ldr r7, [r8]
	mov r5, #-77
	mul r9, r7, r5
	add r4, r6, r9
	ldr r8, [fp, #-4]
	mov r7, #4
	mov r5, #20
	mul r6, r7, r5
	add r9, r8, r6
	mov r7, r9
	ldr r5, [r7]
	mov r8, #53
	mul r6, r5, r8
	add r9, r4, r6
	ldr r7, [fp, #-4]
	mov r5, #4
	mov r8, #20
	mul r4, r5, r8
	add r6, r7, r4
	mov r5, #1
	mov r8, #4
	mul r7, r5, r8
	add r4, r6, r7
	ldr r5, [r4]
	mov r8, #37
	mul r6, r5, r8
	add r7, r9, r6
	ldr r4, [fp, #-4]
	mov r5, #4
	mov r8, #20
	mul r9, r5, r8
	add r6, r4, r9
	mov r5, #2
	mov r8, #4
	mul r4, r5, r8
	add r9, r6, r4
	ldr r5, [r9]
	mov r8, #-103
	mul r6, r5, r8
	add r4, r7, r6
	ldr r9, [fp, #-4]
	mov r5, #4
	mov r8, #20
	mul r7, r5, r8
	add r6, r9, r7
	mov r5, #3
	mov r8, #4
	mul r9, r5, r8
	add r7, r6, r9
	ldr r5, [r7]
	mov r8, #-13
	mul r6, r5, r8
	add r9, r4, r6
	ldr r7, [fp, #-4]
	mov r5, #4
	mov r8, #20
	mul r4, r5, r8
	add r6, r7, r4
	mov r5, #4
	mov r8, #4
	mul r7, r5, r8
	add r4, r6, r7
	ldr r5, [r4]
	mov r8, #-114
	mul r6, r5, r8
	add r7, r9, r6
	mov r0, r7
	bl relu_reg
	mov r4, r0
	mov r5, #-23
	mul r8, r4, r5
	add r9, r10, r8
	ldr r6, [fp, #-4]
	mov r7, r6
	mov r4, r7
	ldr r5, [r4]
	mov r10, #67
	mul r8, r5, r10
	ldr r6, [fp, #-4]
	mov r7, r6
	mov r4, #1
	b .LiteralPool8
.LTORG
.LiteralPool8:
	mov r5, #4
	mul r10, r4, r5
	add r6, r7, r10
	ldr r4, [r6]
	mov r5, #42
	mul r7, r4, r5
	add r10, r8, r7
	ldr r6, [fp, #-4]
	mov r4, r6
	mov r5, #2
	mov r8, #4
	mul r7, r5, r8
	add r6, r4, r7
	ldr r5, [r6]
	mov r8, #41
	mul r4, r5, r8
	add r7, r10, r4
	ldr r6, [fp, #-4]
	mov r5, r6
	mov r8, #3
	mov r10, #4
	mul r4, r8, r10
	add r6, r5, r4
	ldr r8, [r6]
	mov r10, #-123
	mul r5, r8, r10
	add r4, r7, r5
	ldr r6, [fp, #-4]
	mov r8, r6
	mov r10, #4
	mov r7, #4
	mul r5, r10, r7
	add r6, r8, r5
	ldr r10, [r6]
	mov r7, #-92
	mul r8, r10, r7
	add r5, r4, r8
	ldr r6, [fp, #-4]
	mov r10, #1
	mov r7, #20
	mul r4, r10, r7
	add r8, r6, r4
	mov r10, r8
	ldr r7, [r10]
	mov r6, #10
	mul r4, r7, r6
	add r8, r5, r4
	ldr r10, [fp, #-4]
	mov r7, #1
	mov r6, #20
	mul r5, r7, r6
	add r4, r10, r5
	mov r7, #1
	mov r6, #4
	mul r10, r7, r6
	add r5, r4, r10
	ldr r7, [r5]
	mov r6, #-77
	mul r4, r7, r6
	add r10, r8, r4
	ldr r5, [fp, #-4]
	mov r7, #1
	mov r6, #20
	mul r8, r7, r6
	add r4, r5, r8
	mov r7, #2
	mov r6, #4
	mul r5, r7, r6
	add r8, r4, r5
	ldr r7, [r8]
	mov r6, #75
	mul r4, r7, r6
	add r5, r10, r4
	ldr r8, [fp, #-4]
	mov r7, #1
	mov r6, #20
	mul r10, r7, r6
	add r4, r8, r10
	mov r7, #3
	mov r6, #4
	mul r8, r7, r6
	add r10, r4, r8
	ldr r7, [r10]
	mov r6, #96
	mul r4, r7, r6
	add r8, r5, r4
	ldr r10, [fp, #-4]
	mov r7, #1
	mov r6, #20
	mul r5, r7, r6
	add r4, r10, r5
	mov r7, #4
	mov r6, #4
	mul r10, r7, r6
	add r5, r4, r10
	ldr r7, [r5]
	mov r6, #-51
	mul r4, r7, r6
	add r10, r8, r4
	ldr r5, [fp, #-4]
	mov r7, #2
	mov r6, #20
	mul r8, r7, r6
	add r4, r5, r8
	mov r7, r4
	ldr r6, [r7]
	mov r5, #109
	mul r8, r6, r5
	add r4, r10, r8
	ldr r7, [fp, #-4]
	mov r6, #2
	mov r5, #20
	mul r10, r6, r5
	add r8, r7, r10
	mov r6, #1
	mov r5, #4
	mul r7, r6, r5
	add r10, r8, r7
	ldr r6, [r10]
	mov r5, #-74
	mul r8, r6, r5
	add r7, r4, r8
	ldr r10, [fp, #-4]
	mov r6, #2
	mov r5, #20
	mul r4, r6, r5
	add r8, r10, r4
	mov r6, #2
	mov r5, #4
	mul r10, r6, r5
	add r4, r8, r10
	ldr r6, [r4]
	mov r5, #-7
	mul r8, r6, r5
	add r10, r7, r8
	ldr r4, [fp, #-4]
	mov r6, #2
	mov r5, #20
	mul r7, r6, r5
	add r8, r4, r7
	mov r6, #3
	mov r5, #4
	mul r4, r6, r5
	add r7, r8, r4
	ldr r6, [r7]
	mov r5, #-122
	mul r8, r6, r5
	add r4, r10, r8
	ldr r7, [fp, #-4]
	mov r6, #2
	mov r5, #20
	mul r10, r6, r5
	add r8, r7, r10
	mov r6, #4
	mov r5, #4
	mul r7, r6, r5
	add r10, r8, r7
	ldr r6, [r10]
	mov r5, #67
	mul r8, r6, r5
	add r7, r4, r8
	ldr r10, [fp, #-4]
	mov r6, #3
	mov r5, #20
	mul r4, r6, r5
	add r8, r10, r4
	mov r6, r8
	ldr r5, [r6]
	mov r10, #47
	mul r4, r5, r10
	add r8, r7, r4
	ldr r6, [fp, #-4]
	mov r5, #3
	mov r10, #20
	mul r7, r5, r10
	add r4, r6, r7
	mov r5, #1
	mov r10, #4
	mul r6, r5, r10
	add r7, r4, r6
	ldr r5, [r7]
	mov r10, #22
	mul r4, r5, r10
	add r6, r8, r4
	ldr r7, [fp, #-4]
	mov r5, #3
	mov r10, #20
	mul r8, r5, r10
	add r4, r7, r8
	mov r5, #2
	mov r10, #4
	mul r7, r5, r10
	add r8, r4, r7
	ldr r5, [r8]
	mov r10, #-68
	mul r4, r5, r10
	add r7, r6, r4
	ldr r8, [fp, #-4]
	mov r5, #3
	mov r10, #20
	mul r6, r5, r10
	add r4, r8, r6
	mov r5, #3
	mov r10, #4
	mul r8, r5, r10
	add r6, r4, r8
	ldr r5, [r6]
	mov r10, #38
	mul r4, r5, r10
	add r8, r7, r4
	ldr r6, [fp, #-4]
	mov r5, #3
	mov r10, #20
	mul r7, r5, r10
	add r4, r6, r7
	mov r5, #4
	mov r10, #4
	mul r6, r5, r10
	add r7, r4, r6
	ldr r5, [r7]
	mov r10, #29
	mul r4, r5, r10
	add r6, r8, r4
	ldr r7, [fp, #-4]
	mov r5, #4
	mov r10, #20
	mul r8, r5, r10
	add r4, r7, r8
	mov r5, r4
	ldr r10, [r5]
	mov r7, #115
	mul r8, r10, r7
	add r4, r6, r8
	ldr r5, [fp, #-4]
	mov r10, #4
	mov r7, #20
	mul r6, r10, r7
	add r8, r5, r6
	mov r10, #1
	mov r7, #4
	mul r5, r10, r7
	add r6, r8, r5
	ldr r10, [r6]
	mov r7, #-121
	mul r8, r10, r7
	add r5, r4, r8
	ldr r6, [fp, #-4]
	mov r10, #4
	mov r7, #20
	mul r4, r10, r7
	add r8, r6, r4
	mov r10, #2
	mov r7, #4
	mul r6, r10, r7
	add r4, r8, r6
	ldr r10, [r4]
	mov r7, #36
	mul r8, r10, r7
	add r6, r5, r8
	ldr r4, [fp, #-4]
	mov r10, #4
	mov r7, #20
	mul r5, r10, r7
	add r8, r4, r5
	mov r10, #3
	mov r7, #4
	mul r4, r10, r7
	add r5, r8, r4
	ldr r10, [r5]
	mov r7, #-49
	mul r8, r10, r7
	add r4, r6, r8
	ldr r5, [fp, #-4]
	mov r10, #4
	mov r7, #20
	mul r6, r10, r7
	add r8, r5, r6
	mov r10, #4
	mov r7, #4
	mul r5, r10, r7
	add r6, r8, r5
	ldr r10, [r6]
	mov r7, #85
	mul r8, r10, r7
	add r5, r4, r8
	mov r0, r5
	bl relu_reg
	mov r6, r0
	mov r10, #46
	mul r7, r6, r10
	add r4, r9, r7
	cmp r4, #0
	bgt .L1556
	b .L1555
	b .LiteralPool9
.LTORG
.LiteralPool9:
.L554:                               	@ predecessors = .L1555
	mov r0, #0
	b .Lmodel_END
.L1555:                               	@ predecessors = .L552                               	@ successors = .L554
	b .L554
.L1556:                               	@ predecessors = .L552
	mov r0, #1
.Lmodel_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool10
.LTORG
.LiteralPool10:
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #112
.L1557:                               	@ successors = .L1560
	bl getint
	mov r4, r0
	str r4, [fp, #-112]
	b .L1560
.L1560:                               	@ predecessors = .L1557, .L1583                               	@ successors = .L1563, .L1564
	ldr r5, [fp, #-112]
	cmp r5, #0
	bgt .L1564
	b .L1563
.L1561:                               	@ predecessors = .L1563
	mov r0, #0
	b .Lmain_END
.L1563:                               	@ predecessors = .L1560                               	@ successors = .L1561
	b .L1561
.L1564:                               	@ predecessors = .L1560                               	@ successors = .L1566
	mov r6, #0
	str r6, [fp, #-8]
	b .L1566
.L1566:                               	@ predecessors = .L1564, .L1573                               	@ successors = .L1569, .L1570
	ldr r7, [fp, #-8]
	cmp r7, #5
	blt .L1570
	b .L1569
.L1567:                               	@ predecessors = .L1569                               	@ successors = .L1585, .L1586
	add r8, fp, #-108
	mov r9, r8
	mov r0, r9
	bl model
	mov r10, r0
	cmp r10, #0
	bne .L1586
	b .L1585
.L1569:                               	@ predecessors = .L1566                               	@ successors = .L1567
	b .L1567
.L1570:                               	@ predecessors = .L1566                               	@ successors = .L1572
	mov r4, #0
	str r4, [fp, #-4]
	b .L1572
.L1572:                               	@ predecessors = .L1570, .L1576                               	@ successors = .L1575, .L1576
	ldr r5, [fp, #-4]
	cmp r5, #5
	blt .L1576
	b .L1575
.L1573:                               	@ predecessors = .L1575                               	@ successors = .L1566
	ldr r6, [fp, #-8]
	add r7, r6, #1
	str r7, [fp, #-8]
	b .L1566
.L1575:                               	@ predecessors = .L1572                               	@ successors = .L1573
	b .L1573
.L1576:                               	@ predecessors = .L1572                               	@ successors = .L1572
	bl getint
	mov r8, r0
	ldr r9, [fp, #-8]
	add r10, fp, #-108
	mov r4, #20
	mul r5, r9, r4
	add r6, r10, r5
	ldr r7, [fp, #-4]
	mov r9, #4
	mul r4, r7, r9
	add r10, r6, r4
	str r8, [r10]
	ldr r5, [fp, #-4]
	add r7, r5, #1
	str r7, [fp, #-4]
	b .L1572
.L1583:                               	@ predecessors = .L1586, .L1587                               	@ successors = .L1560
	ldr r9, [fp, #-112]
	sub r6, r9, #1
	str r6, [fp, #-112]
	b .L1560
.L1585:                               	@ predecessors = .L1567                               	@ successors = .L1587
	b .L1587
.L1586:                               	@ predecessors = .L1567                               	@ successors = .L1583
	mov r0, #99
	bl putch
	mov r0, #97
	bl putch
	mov r0, #116
	bl putch
	mov r0, #10
	bl putch
	b .L1583
.L1587:                               	@ predecessors = .L1585                               	@ successors = .L1583
	mov r0, #100
	bl putch
	mov r0, #111
	bl putch
	mov r0, #103
	bl putch
	mov r0, #10
	bl putch
	b .L1583
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

