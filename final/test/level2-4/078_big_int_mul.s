	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #548
.L31:                               	@ successors = .L124
	ldr r4, =-528
	add r5, fp, r4
	mov r6, r5
	mov r7, #1
	str r7, [r6]
	ldr r8, =-528
	add r9, fp, r8
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #2
	str r7, [r6]
	ldr r8, =-528
	add r10, fp, r8
	mov r4, #2
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #3
	str r7, [r6]
	ldr r8, =-528
	add r4, fp, r8
	mov r9, #3
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #4
	str r7, [r6]
	ldr r8, =-528
	add r9, fp, r8
	mov r10, #4
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #5
	str r7, [r6]
	ldr r8, =-528
	add r10, fp, r8
	mov r4, #5
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #6
	str r7, [r6]
	ldr r8, =-528
	add r4, fp, r8
	mov r9, #6
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #7
	str r7, [r6]
	ldr r8, =-528
	add r9, fp, r8
	mov r10, #7
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #8
	str r7, [r6]
	ldr r8, =-528
	add r10, fp, r8
	mov r4, #8
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #9
	str r7, [r6]
	ldr r8, =-528
	add r4, fp, r8
	mov r9, #9
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-528
	add r9, fp, r8
	mov r10, #10
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #1
	str r7, [r6]
	ldr r8, =-528
	add r10, fp, r8
	mov r4, #11
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #2
	str r7, [r6]
	ldr r8, =-528
	add r4, fp, r8
	mov r9, #12
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #3
	str r7, [r6]
	ldr r8, =-528
	add r9, fp, r8
	mov r10, #13
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #4
	str r7, [r6]
	ldr r8, =-528
	add r10, fp, r8
	mov r4, #14
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #5
	str r7, [r6]
	ldr r8, =-528
	add r4, fp, r8
	mov r9, #15
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #6
	str r7, [r6]
	ldr r8, =-528
	add r9, fp, r8
	mov r10, #16
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #7
	str r7, [r6]
	ldr r8, =-528
	add r10, fp, r8
	mov r4, #17
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #8
	str r7, [r6]
	ldr r8, =-528
	add r4, fp, r8
	mov r9, #18
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #9
	str r7, [r6]
	ldr r8, =-528
	add r9, fp, r8
	mov r10, #19
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-448
	add r10, fp, r8
	mov r4, r10
	mov r9, #2
	str r9, [r4]
	ldr r5, =-448
	add r6, fp, r5
	mov r7, #1
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #3
	str r9, [r4]
	ldr r5, =-448
	add r7, fp, r5
	mov r8, #2
	mov r6, #4
	mul r10, r8, r6
	add r4, r7, r10
	mov r9, #4
	str r9, [r4]
	ldr r5, =-448
	add r8, fp, r5
	mov r6, #3
	mov r7, #4
	mul r10, r6, r7
	add r4, r8, r10
	mov r9, #2
	str r9, [r4]
	ldr r5, =-448
	add r6, fp, r5
	mov r7, #4
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #5
	str r9, [r4]
	ldr r5, =-448
	add r7, fp, r5
	mov r8, #5
	mov r6, #4
	mul r10, r8, r6
	add r4, r7, r10
	mov r9, #7
	str r9, [r4]
	ldr r5, =-448
	add r8, fp, r5
	mov r6, #6
	mov r7, #4
	mul r10, r6, r7
	add r4, r8, r10
	mov r9, #9
	str r9, [r4]
	ldr r5, =-448
	add r6, fp, r5
	mov r7, #7
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #9
	str r9, [r4]
	ldr r5, =-448
	add r7, fp, r5
	mov r8, #8
	mov r6, #4
	mul r10, r8, r6
	add r4, r7, r10
	mov r9, #0
	str r9, [r4]
	ldr r5, =-448
	add r8, fp, r5
	mov r6, #9
	mov r7, #4
	mul r10, r6, r7
	add r4, r8, r10
	mov r9, #1
	str r9, [r4]
	ldr r5, =-448
	add r6, fp, r5
	mov r7, #10
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #9
	str r9, [r4]
	ldr r5, =-448
	add r7, fp, r5
	mov r8, #11
	mov r6, #4
	mul r10, r8, r6
	add r4, r7, r10
	mov r9, #8
	str r9, [r4]
	ldr r5, =-448
	add r8, fp, r5
	mov r6, #12
	mov r7, #4
	mul r10, r6, r7
	add r4, r8, r10
	mov r9, #7
	str r9, [r4]
	ldr r5, =-448
	add r6, fp, r5
	mov r7, #13
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #6
	str r9, [r4]
	ldr r5, =-448
	add r7, fp, r5
	mov r8, #14
	mov r6, #4
	mul r10, r8, r6
	add r4, r7, r10
	mov r9, #4
	str r9, [r4]
	ldr r5, =-448
	add r8, fp, r5
	mov r6, #15
	mov r7, #4
	mul r10, r6, r7
	add r4, r8, r10
	mov r9, #3
	str r9, [r4]
	ldr r5, =-448
	add r6, fp, r5
	mov r7, #16
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #2
	str r9, [r4]
	ldr r5, =-448
	add r7, fp, r5
	mov r8, #17
	mov r6, #4
	mul r10, r8, r6
	add r4, r7, r10
	mov r9, #1
	str r9, [r4]
	ldr r5, =-448
	add r8, fp, r5
	mov r6, #18
	b .LiteralPool0
.LTORG
.LiteralPool0:
	mov r7, #4
	mul r10, r6, r7
	add r4, r8, r10
	mov r9, #2
	str r9, [r4]
	ldr r5, =-448
	add r6, fp, r5
	mov r7, #19
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #2
	str r9, [r4]
	mov r5, #20
	ldr r7, =-368
	str r5, [fp, r7]
	mov r8, #20
	ldr r6, =-364
	str r8, [fp, r6]
	add r10, fp, #-160
	mov r4, r10
	mov r9, #0
	str r9, [r4]
	add r5, fp, #-160
	mov r7, #1
	mov r8, #4
	mul r6, r7, r8
	add r10, r5, r6
	mov r4, #0
	str r4, [r10]
	add r9, fp, #-160
	mov r7, #2
	mov r8, #4
	mul r5, r7, r8
	add r6, r9, r5
	mov r10, #0
	str r10, [r6]
	add r4, fp, #-160
	mov r7, #3
	mov r8, #4
	mul r9, r7, r8
	add r5, r4, r9
	mov r6, #0
	str r6, [r5]
	add r10, fp, #-160
	mov r7, #4
	mov r8, #4
	mul r4, r7, r8
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	add r6, fp, #-160
	mov r7, #5
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #0
	str r9, [r4]
	add r5, fp, #-160
	mov r7, #6
	mov r8, #4
	mul r6, r7, r8
	add r10, r5, r6
	mov r4, #0
	str r4, [r10]
	add r9, fp, #-160
	mov r7, #7
	mov r8, #4
	mul r5, r7, r8
	add r6, r9, r5
	mov r10, #0
	str r10, [r6]
	add r4, fp, #-160
	mov r7, #8
	mov r8, #4
	mul r9, r7, r8
	add r5, r4, r9
	mov r6, #0
	str r6, [r5]
	add r10, fp, #-160
	mov r7, #9
	mov r8, #4
	mul r4, r7, r8
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	add r6, fp, #-160
	mov r7, #10
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #0
	str r9, [r4]
	add r5, fp, #-160
	mov r7, #11
	mov r8, #4
	mul r6, r7, r8
	add r10, r5, r6
	mov r4, #0
	str r4, [r10]
	add r9, fp, #-160
	mov r7, #12
	mov r8, #4
	mul r5, r7, r8
	add r6, r9, r5
	mov r10, #0
	str r10, [r6]
	add r4, fp, #-160
	mov r7, #13
	mov r8, #4
	mul r9, r7, r8
	add r5, r4, r9
	mov r6, #0
	str r6, [r5]
	add r10, fp, #-160
	mov r7, #14
	mov r8, #4
	mul r4, r7, r8
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	add r6, fp, #-160
	mov r7, #15
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #0
	str r9, [r4]
	add r5, fp, #-160
	mov r7, #16
	mov r8, #4
	mul r6, r7, r8
	add r10, r5, r6
	mov r4, #0
	str r4, [r10]
	add r9, fp, #-160
	mov r7, #17
	mov r8, #4
	mul r5, r7, r8
	add r6, r9, r5
	mov r10, #0
	str r10, [r6]
	add r4, fp, #-160
	mov r7, #18
	mov r8, #4
	mul r9, r7, r8
	add r5, r4, r9
	mov r6, #0
	str r6, [r5]
	add r10, fp, #-160
	mov r7, #19
	mov r8, #4
	mul r4, r7, r8
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	add r6, fp, #-160
	mov r7, #20
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #0
	str r9, [r4]
	add r5, fp, #-160
	mov r7, #21
	mov r8, #4
	mul r6, r7, r8
	add r10, r5, r6
	mov r4, #0
	str r4, [r10]
	add r9, fp, #-160
	mov r7, #22
	mov r8, #4
	mul r5, r7, r8
	add r6, r9, r5
	mov r10, #0
	str r10, [r6]
	add r4, fp, #-160
	mov r7, #23
	mov r8, #4
	mul r9, r7, r8
	add r5, r4, r9
	mov r6, #0
	str r6, [r5]
	add r10, fp, #-160
	mov r7, #24
	mov r8, #4
	mul r4, r7, r8
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	add r6, fp, #-160
	mov r7, #25
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #0
	str r9, [r4]
	add r5, fp, #-160
	mov r7, #26
	mov r8, #4
	mul r6, r7, r8
	add r10, r5, r6
	mov r4, #0
	str r4, [r10]
	add r9, fp, #-160
	mov r7, #27
	mov r8, #4
	mul r5, r7, r8
	add r6, r9, r5
	mov r10, #0
	str r10, [r6]
	add r4, fp, #-160
	mov r7, #28
	mov r8, #4
	mul r9, r7, r8
	add r5, r4, r9
	mov r6, #0
	str r6, [r5]
	add r10, fp, #-160
	mov r7, #29
	mov r8, #4
	mul r4, r7, r8
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	add r6, fp, #-160
	mov r7, #30
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #0
	str r9, [r4]
	add r5, fp, #-160
	mov r7, #31
	mov r8, #4
	mul r6, r7, r8
	add r10, r5, r6
	mov r4, #0
	str r4, [r10]
	add r9, fp, #-160
	mov r7, #32
	mov r8, #4
	mul r5, r7, r8
	add r6, r9, r5
	mov r10, #0
	str r10, [r6]
	add r4, fp, #-160
	mov r7, #33
	mov r8, #4
	mul r9, r7, r8
	add r5, r4, r9
	mov r6, #0
	str r6, [r5]
	add r10, fp, #-160
	mov r7, #34
	mov r8, #4
	mul r4, r7, r8
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	add r6, fp, #-160
	mov r7, #35
	mov r8, #4
	mul r10, r7, r8
	add r4, r6, r10
	mov r9, #0
	str r9, [r4]
	add r5, fp, #-160
	mov r7, #36
	mov r8, #4
	mul r6, r7, r8
	add r10, r5, r6
	mov r4, #0
	str r4, [r10]
	add r9, fp, #-160
	mov r7, #37
	mov r8, #4
	mul r5, r7, r8
	add r6, r9, r5
	mov r10, #0
	str r10, [r6]
	add r4, fp, #-160
	mov r7, #38
	mov r8, #4
	mul r9, r7, r8
	add r5, r4, r9
	mov r6, #0
	str r6, [r5]
	add r10, fp, #-160
	mov r7, #39
	mov r8, #4
	mul r4, r7, r8
	add r9, r10, r4
	mov r5, #0
	str r5, [r9]
	mov r6, #0
	ldr r7, =-548
	str r6, [fp, r7]
	b .L124
	b .LiteralPool1
.LTORG
.LiteralPool1:
.L124:                               	@ predecessors = .L31, .L129                               	@ successors = .L128, .L129
	ldr r8, =-548
	ldr r10, [fp, r8]
	ldr r4, =-368
	ldr r9, [fp, r4]
	cmp r10, r9
	blt .L129
	b .L128
.L125:                               	@ predecessors = .L128                               	@ successors = .L136
	mov r5, #0
	ldr r6, =-548
	str r5, [fp, r6]
	b .L136
.L128:                               	@ predecessors = .L124                               	@ successors = .L125
	b .L125
.L129:                               	@ predecessors = .L124                               	@ successors = .L124
	ldr r7, =-548
	ldr r8, [fp, r7]
	ldr r4, =-528
	add r10, fp, r4
	mov r9, #4
	mul r5, r8, r9
	add r6, r10, r5
	ldr r7, [r6]
	ldr r4, =-548
	ldr r8, [fp, r4]
	ldr r9, =-360
	add r10, fp, r9
	mov r5, #4
	mul r6, r8, r5
	add r4, r10, r6
	str r7, [r4]
	ldr r9, =-548
	ldr r8, [fp, r9]
	add r5, r8, #1
	ldr r10, =-548
	str r5, [fp, r10]
	b .L124
.L136:                               	@ predecessors = .L125, .L141                               	@ successors = .L140, .L141
	ldr r6, =-548
	ldr r7, [fp, r6]
	ldr r4, =-364
	ldr r9, [fp, r4]
	cmp r7, r9
	blt .L141
	b .L140
.L137:                               	@ predecessors = .L140                               	@ successors = .L150
	ldr r8, =-368
	ldr r5, [fp, r8]
	ldr r10, =-364
	ldr r6, [fp, r10]
	add r4, r5, r6
	sub r7, r4, #1
	ldr r9, =-536
	str r7, [fp, r9]
	mov r8, #0
	ldr r10, =-548
	str r8, [fp, r10]
	b .L150
.L140:                               	@ predecessors = .L136                               	@ successors = .L137
	b .L137
.L141:                               	@ predecessors = .L136                               	@ successors = .L136
	ldr r5, =-548
	ldr r6, [fp, r5]
	ldr r4, =-448
	add r7, fp, r4
	mov r9, #4
	mul r8, r6, r9
	add r10, r7, r8
	ldr r5, [r10]
	ldr r4, =-548
	ldr r6, [fp, r4]
	ldr r9, =-260
	add r7, fp, r9
	mov r8, #4
	mul r10, r6, r8
	add r4, r7, r10
	str r5, [r4]
	ldr r9, =-548
	ldr r6, [fp, r9]
	add r8, r6, #1
	ldr r7, =-548
	str r8, [fp, r7]
	b .L136
.L150:                               	@ predecessors = .L137, .L155                               	@ successors = .L154, .L155
	ldr r10, =-548
	ldr r5, [fp, r10]
	ldr r4, =-536
	ldr r9, [fp, r4]
	cmp r5, r9
	ble .L155
	b .L154
.L151:                               	@ predecessors = .L154                               	@ successors = .L160
	mov r6, #0
	ldr r8, =-532
	str r6, [fp, r8]
	ldr r7, =-364
	ldr r10, [fp, r7]
	sub r4, r10, #1
	ldr r5, =-548
	str r4, [fp, r5]
	b .L160
.L154:                               	@ predecessors = .L150                               	@ successors = .L151
	b .L151
.L155:                               	@ predecessors = .L150                               	@ successors = .L150
	ldr r9, =-548
	ldr r6, [fp, r9]
	add r8, fp, #-160
	mov r7, #4
	mul r10, r6, r7
	add r4, r8, r10
	mov r5, #0
	str r5, [r4]
	ldr r9, =-548
	ldr r6, [fp, r9]
	add r7, r6, #1
	ldr r8, =-548
	str r7, [fp, r8]
	b .L150
.L160:                               	@ predecessors = .L151, .L170                               	@ successors = .L163, .L164
	ldr r10, =-548
	ldr r4, [fp, r10]
	cmp r4, #-1
	bgt .L164
	b .L163
.L161:                               	@ predecessors = .L163                               	@ successors = .L206, .L207
	add r5, fp, #-160
	mov r9, r5
	ldr r6, [r9]
	cmp r6, #0
	bne .L207
	b .L206
.L163:                               	@ predecessors = .L160                               	@ successors = .L161
	b .L161
.L164:                               	@ predecessors = .L160                               	@ successors = .L169
	ldr r7, =-548
	ldr r8, [fp, r7]
	ldr r10, =-260
	add r4, fp, r10
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	ldr r7, [r6]
	ldr r10, =-540
	str r7, [fp, r10]
	ldr r8, =-368
	ldr r5, [fp, r8]
	sub r4, r5, #1
	ldr r9, =-544
	str r4, [fp, r9]
	b .L169
.L169:                               	@ predecessors = .L164, .L181                               	@ successors = .L172, .L173
	ldr r6, =-544
	ldr r7, [fp, r6]
	cmp r7, #-1
	bgt .L173
	b .L172
.L170:                               	@ predecessors = .L172                               	@ successors = .L160
	ldr r10, =-536
	ldr r8, [fp, r10]
	ldr r5, =-368
	ldr r4, [fp, r5]
	add r9, r8, r4
	sub r6, r9, #1
	ldr r7, =-536
	str r6, [fp, r7]
	ldr r10, =-548
	ldr r5, [fp, r10]
	sub r8, r5, #1
	ldr r4, =-548
	str r8, [fp, r4]
	b .L160
.L172:                               	@ predecessors = .L169                               	@ successors = .L170
	b .L170
.L173:                               	@ predecessors = .L169                               	@ successors = .L183, .L184
	ldr r9, =-536
	ldr r6, [fp, r9]
	add r7, fp, #-160
	mov r10, #4
	mul r5, r6, r10
	add r8, r7, r5
	ldr r4, [r8]
	ldr r9, =-540
	ldr r6, [fp, r9]
	ldr r10, =-544
	ldr r7, [fp, r10]
	ldr r5, =-360
	add r8, fp, r5
	mov r9, #4
	mul r10, r7, r9
	add r5, r8, r10
	ldr r7, [r5]
	mul r9, r6, r7
	add r8, r4, r9
	ldr r10, =-532
	str r8, [fp, r10]
	ldr r5, =-532
	ldr r6, [fp, r5]
	cmp r6, #10
	bge .L184
	b .L183
.L181:                               	@ predecessors = .L184, .L194                               	@ successors = .L169
	ldr r7, =-544
	ldr r4, [fp, r7]
	sub r9, r4, #1
	ldr r8, =-544
	str r9, [fp, r8]
	ldr r10, =-536
	ldr r5, [fp, r10]
	sub r6, r5, #1
	ldr r7, =-536
	str r6, [fp, r7]
	b .L169
.L183:                               	@ predecessors = .L173                               	@ successors = .L194
	b .L194
.L184:                               	@ predecessors = .L173                               	@ successors = .L181
	ldr r4, =-532
	ldr r9, [fp, r4]
	ldr r8, =-536
	ldr r10, [fp, r8]
	add r5, fp, #-160
	mov r6, #4
	mul r7, r10, r6
	add r4, r5, r7
	str r9, [r4]
	ldr r8, =-536
	ldr r10, [fp, r8]
	sub r6, r10, #1
	add r5, fp, #-160
	mov r7, #4
	mul r9, r6, r7
	add r4, r5, r9
	ldr r8, [r4]
	ldr r10, =-532
	ldr r6, [fp, r10]
	mov r7, #10
	sdiv r5, r6, r7
	add r9, r8, r5
	ldr r4, =-536
	ldr r10, [fp, r4]
	sub r6, r10, #1
	add r7, fp, #-160
	mov r8, #4
	mul r5, r6, r8
	add r4, r7, r5
	str r9, [r4]
	b .L181
.L194:                               	@ predecessors = .L183                               	@ successors = .L181
	ldr r10, =-532
	ldr r6, [fp, r10]
	ldr r8, =-536
	ldr r7, [fp, r8]
	add r5, fp, #-160
	mov r9, #4
	mul r4, r7, r9
	add r10, r5, r4
	str r6, [r10]
	b .L181
.L203:                               	@ predecessors = .L206, .L207                               	@ successors = .L210
	mov r8, #1
	ldr r7, =-548
	str r8, [fp, r7]
	b .L210
.L206:                               	@ predecessors = .L161                               	@ successors = .L203
	b .L203
.L207:                               	@ predecessors = .L161                               	@ successors = .L203
	add r9, fp, #-160
	mov r5, r9
	ldr r4, [r5]
	mov r0, r4
	bl putint
	b .L203
.L210:                               	@ predecessors = .L203, .L216                               	@ successors = .L215, .L216
	ldr r6, =-548
	ldr r10, [fp, r6]
	ldr r8, =-368
	ldr r7, [fp, r8]
	ldr r9, =-364
	ldr r5, [fp, r9]
	add r4, r7, r5
	sub r6, r4, #1
	cmp r10, r6
	ble .L216
	b .L215
.L211:                               	@ predecessors = .L215
	mov r0, #0
	b .Lmain_END
.L215:                               	@ predecessors = .L210                               	@ successors = .L211
	b .L211
.L216:                               	@ predecessors = .L210                               	@ successors = .L210
	ldr r8, =-548
	ldr r9, [fp, r8]
	add r7, fp, #-160
	mov r5, #4
	mul r4, r9, r5
	add r10, r7, r4
	ldr r6, [r10]
	mov r0, r6
	bl putint
	ldr r8, =-548
	ldr r9, [fp, r8]
	add r5, r9, #1
	ldr r7, =-548
	str r5, [fp, r7]
	b .L210
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool2
.LTORG
.LiteralPool2:
