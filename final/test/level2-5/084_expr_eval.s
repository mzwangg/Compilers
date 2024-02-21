	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global cur_token
	.align 4
	.size cur_token, 4
cur_token:
	.word 0
	.global other
	.align 4
	.size other, 4
other:
	.word 0
	.global num
	.align 4
	.size num, 4
num:
	.word 0
	.global last_char
	.align 4
	.size last_char, 4
last_char:
	.word 32
	.text
	.global next_char
	.type next_char , %function
next_char:
	push {r4, r5, r6, r7, fp, lr}
	mov fp, sp
.L93:
	bl getch
	mov r4, r0
	ldr r5, addr_0_last_char
	str r4, [r5]
	ldr r6, addr_0_last_char
	ldr r7, [r6]
	mov r0, r7
	pop {r4, r5, r6, r7, fp, lr}
	bx lr

	.global is_space
	.type is_space , %function
is_space:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #4
.L95:                               	@ successors = .L99, .L103
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #32
	beq .L103
	b .L99
.L97:
	b .Lis_space_END
.L99:                               	@ predecessors = .L95                               	@ successors = .L100
	b .L100
.L100:                               	@ predecessors = .L99                               	@ successors = .L102, .L103
	ldr r5, [fp, #-4]
	cmp r5, #10
	beq .L103
	b .L102
.L102:                               	@ predecessors = .L100                               	@ successors = .L104
	b .L104
.L103:                               	@ predecessors = .L95, .L100
	mov r0, #1
	b .Lis_space_END
.L104:                               	@ predecessors = .L102
	mov r0, #0
.Lis_space_END:
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global is_num
	.type is_num , %function
is_num:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #4
.L105:                               	@ successors = .L109, .L110
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #48
	bge .L110
	b .L109
.L107:
	b .Lis_num_END
.L109:                               	@ predecessors = .L105                               	@ successors = .L114
	b .L114
.L110:                               	@ predecessors = .L105                               	@ successors = .L112, .L113
	ldr r5, [fp, #-4]
	cmp r5, #57
	ble .L113
	b .L112
.L112:                               	@ predecessors = .L110                               	@ successors = .L114
	b .L114
.L113:                               	@ predecessors = .L110
	mov r0, #1
	b .Lis_num_END
.L114:                               	@ predecessors = .L109, .L112
	mov r0, #0
.Lis_num_END:
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global next_token
	.type next_token , %function
next_token:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
.L115:                               	@ successors = .L116
	b .L116
.L116:                               	@ predecessors = .L115, .L120                               	@ successors = .L119, .L120
	ldr r4, addr_0_last_char
	ldr r5, [r4]
	mov r0, r5
	bl is_space
	mov r6, r0
	cmp r6, #0
	bne .L120
	b .L119
.L117:                               	@ predecessors = .L119                               	@ successors = .L123, .L124
	ldr r7, addr_0_last_char
	ldr r8, [r7]
	mov r0, r8
	bl is_num
	mov r9, r0
	cmp r9, #0
	bne .L124
	b .L123
.L119:                               	@ predecessors = .L116                               	@ successors = .L117
	b .L117
.L120:                               	@ predecessors = .L116                               	@ successors = .L116
	bl next_char
	mov r10, r0
	b .L116
.L121:                               	@ predecessors = .L127, .L132
	ldr r4, addr_0_cur_token
	ldr r5, [r4]
	mov r0, r5
	b .Lnext_token_END
.L123:                               	@ predecessors = .L117                               	@ successors = .L132
	b .L132
.L124:                               	@ predecessors = .L117                               	@ successors = .L126
	ldr r6, addr_0_last_char
	ldr r7, [r6]
	sub r8, r7, #48
	ldr r9, addr_0_num
	str r8, [r9]
	b .L126
.L126:                               	@ predecessors = .L124, .L129                               	@ successors = .L128, .L129
	bl next_char
	mov r10, r0
	mov r0, r10
	bl is_num
	mov r4, r0
	cmp r4, #0
	bne .L129
	b .L128
.L127:                               	@ predecessors = .L128                               	@ successors = .L121
	mov r5, #0
	ldr r6, addr_0_cur_token
	str r5, [r6]
	b .L121
.L128:                               	@ predecessors = .L126                               	@ successors = .L127
	b .L127
.L129:                               	@ predecessors = .L126                               	@ successors = .L126
	ldr r7, addr_0_num
	ldr r8, [r7]
	mov r9, #10
	mul r10, r8, r9
	ldr r4, addr_0_last_char
	ldr r5, [r4]
	add r6, r10, r5
	sub r7, r6, #48
	ldr r8, addr_0_num
	str r7, [r8]
	b .L126
.L132:                               	@ predecessors = .L123                               	@ successors = .L121
	ldr r9, addr_0_last_char
	ldr r4, [r9]
	ldr r10, addr_0_other
	str r4, [r10]
	bl next_char
	mov r5, r0
	mov r6, #1
	ldr r7, addr_0_cur_token
	str r6, [r7]
	b .L121
.Lnext_token_END:
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global panic
	.type panic , %function
panic:
	push {fp, lr}
	mov fp, sp
.L135:
	mov r0, #112
	bl putch
	mov r0, #97
	bl putch
	mov r0, #110
	bl putch
	mov r0, #105
	bl putch
	mov r0, #99
	bl putch
	mov r0, #33
	bl putch
	mov r0, #10
	bl putch
	mov r0, #-1
	pop {fp, lr}
	bx lr

	.global get_op_prec
	.type get_op_prec , %function
get_op_prec:
	push {r4, r5, r6, r7, r8, fp}
	mov fp, sp
	sub sp, sp, #4
.L136:                               	@ successors = .L140, .L144
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #43
	beq .L144
	b .L140
.L138:                               	@ predecessors = .L143                               	@ successors = .L147, .L154
	ldr r5, [fp, #-4]
	cmp r5, #42
	beq .L154
	b .L147
.L140:                               	@ predecessors = .L136                               	@ successors = .L141
	b .L141
.L141:                               	@ predecessors = .L140                               	@ successors = .L143, .L144
	ldr r6, [fp, #-4]
	cmp r6, #45
	beq .L144
	b .L143
.L143:                               	@ predecessors = .L141                               	@ successors = .L138
	b .L138
.L144:                               	@ predecessors = .L136, .L141
	mov r0, #10
	b .Lget_op_prec_END
.L145:                               	@ predecessors = .L153
	mov r0, #0
	b .Lget_op_prec_END
.L147:                               	@ predecessors = .L138                               	@ successors = .L148
	b .L148
.L148:                               	@ predecessors = .L147                               	@ successors = .L150, .L154
	ldr r7, [fp, #-4]
	cmp r7, #47
	beq .L154
	b .L150
.L150:                               	@ predecessors = .L148                               	@ successors = .L151
	b .L151
.L151:                               	@ predecessors = .L150                               	@ successors = .L153, .L154
	ldr r8, [fp, #-4]
	cmp r8, #37
	beq .L154
	b .L153
.L153:                               	@ predecessors = .L151                               	@ successors = .L145
	b .L145
.L154:                               	@ predecessors = .L138, .L148, .L151
	mov r0, #20
.Lget_op_prec_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, fp}
	bx lr

	.global stack_push
	.type stack_push , %function
stack_push:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #8
.L155:
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	mov r5, r4
	ldr r6, [r5]
	add r7, r6, #1
	ldr r8, [fp, #-8]
	mov r9, r8
	str r7, [r9]
	ldr r10, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r6, r5
	ldr r8, [r6]
	mov r7, #4
	mul r9, r8, r7
	add r5, r4, r9
	str r10, [r5]
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global stack_pop
	.type stack_pop , %function
stack_pop:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #8
.L169:
	str r0, [fp, #-8]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-8]
	mov r6, r5
	ldr r7, [r6]
	mov r8, #4
	mul r9, r7, r8
	add r10, r4, r9
	ldr r5, [r10]
	str r5, [fp, #-4]
	ldr r6, [fp, #-8]
	mov r7, r6
	ldr r8, [r7]
	sub r4, r8, #1
	ldr r9, [fp, #-8]
	mov r10, r9
	str r4, [r10]
	ldr r5, [fp, #-4]
	mov r0, r5
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global stack_peek
	.type stack_peek , %function
stack_peek:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #4
.L184:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	mov r6, r5
	ldr r7, [r6]
	mov r8, #4
	mul r9, r7, r8
	add r10, r4, r9
	ldr r5, [r10]
	mov r0, r5
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global stack_size
	.type stack_size , %function
stack_size:
	push {r4, r5, r6, fp}
	mov fp, sp
	sub sp, sp, #4
.L192:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	mov r5, r4
	ldr r6, [r5]
	mov r0, r6
	mov sp, fp
	pop {r4, r5, r6, fp}
	bx lr

	.global eval_op
	.type eval_op , %function
eval_op:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #12
.L197:                               	@ successors = .L203, .L204
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r4, [fp, #-12]
	cmp r4, #43
	beq .L204
	b .L203
.L201:                               	@ predecessors = .L203                               	@ successors = .L209, .L210
	ldr r5, [fp, #-12]
	cmp r5, #45
	beq .L210
	b .L209
.L203:                               	@ predecessors = .L197                               	@ successors = .L201
	b .L201
.L204:                               	@ predecessors = .L197
	ldr r6, [fp, #-8]
	ldr r7, [fp, #-4]
	add r8, r6, r7
	mov r0, r8
	b .Leval_op_END
.L207:                               	@ predecessors = .L209                               	@ successors = .L215, .L216
	ldr r9, [fp, #-12]
	cmp r9, #42
	beq .L216
	b .L215
.L209:                               	@ predecessors = .L201                               	@ successors = .L207
	b .L207
.L210:                               	@ predecessors = .L201
	ldr r10, [fp, #-8]
	ldr r4, [fp, #-4]
	sub r5, r10, r4
	mov r0, r5
	b .Leval_op_END
.L213:                               	@ predecessors = .L215                               	@ successors = .L221, .L222
	ldr r6, [fp, #-12]
	cmp r6, #47
	beq .L222
	b .L221
.L215:                               	@ predecessors = .L207                               	@ successors = .L213
	b .L213
.L216:                               	@ predecessors = .L207
	ldr r7, [fp, #-8]
	ldr r8, [fp, #-4]
	mul r9, r7, r8
	mov r0, r9
	b .Leval_op_END
.L219:                               	@ predecessors = .L221                               	@ successors = .L227, .L228
	ldr r10, [fp, #-12]
	cmp r10, #37
	beq .L228
	b .L227
.L221:                               	@ predecessors = .L213                               	@ successors = .L219
	b .L219
.L222:                               	@ predecessors = .L213
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	sdiv r6, r4, r5
	mov r0, r6
	b .Leval_op_END
.L225:                               	@ predecessors = .L227
	mov r0, #0
	b .Leval_op_END
.L227:                               	@ predecessors = .L219                               	@ successors = .L225
	b .L225
.L228:                               	@ predecessors = .L219
	ldr r7, [fp, #-8]
	ldr r8, [fp, #-4]
	sdiv r9, r7, r8
	mul r10, r9, r8
	sub r4, r7, r10
	mov r0, r4
.Leval_op_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global eval
	.type eval , %function
eval:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =2076
	sub sp, sp, r4
.L231:                               	@ successors = .L748, .L749
	ldr r4, =-2076
	add r5, fp, r4
	mov r6, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #1
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #2
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #3
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #4
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #5
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #6
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #7
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #8
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #9
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #10
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #11
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #12
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #13
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #14
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #15
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #16
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #17
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #18
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #19
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #20
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #21
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #22
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #23
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #24
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #25
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #26
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #27
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #28
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #29
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #30
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #31
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #32
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #33
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #34
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #35
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #36
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #37
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	b .LiteralPool0
.LTORG
addr_0_cur_token:
	.word cur_token
addr_0_other:
	.word other
addr_0_num:
	.word num
addr_0_last_char:
	.word last_char
.LiteralPool0:
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #38
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #39
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #40
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #41
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #42
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #43
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #44
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #45
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #46
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #47
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #48
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #49
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #50
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #51
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #52
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #53
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #54
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #55
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #56
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #57
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #58
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #59
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #60
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #61
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #62
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #63
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #64
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #65
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #66
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #67
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #68
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #69
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #70
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #71
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #72
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #73
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #74
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #75
	mov r10, #4
	mul r5, r9, r10
	b .LiteralPool1
.LTORG
addr_1_cur_token:
	.word cur_token
addr_1_other:
	.word other
addr_1_num:
	.word num
addr_1_last_char:
	.word last_char
.LiteralPool1:
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #76
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #77
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #78
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #79
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #80
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #81
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #82
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #83
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #84
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #85
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #86
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #87
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #88
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #89
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #90
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #91
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #92
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #93
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #94
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #95
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #96
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #97
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #98
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #99
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #100
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #101
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #102
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #103
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #104
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #105
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #106
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #107
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #108
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #109
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #110
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #111
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #112
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	b .LiteralPool2
.LTORG
addr_2_cur_token:
	.word cur_token
addr_2_other:
	.word other
addr_2_num:
	.word num
addr_2_last_char:
	.word last_char
.LiteralPool2:
	mov r4, #113
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #114
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #115
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #116
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #117
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #118
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #119
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #120
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #121
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #122
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #123
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #124
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #125
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #126
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #127
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #128
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #129
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #130
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #131
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #132
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #133
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #134
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #135
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #136
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #137
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #138
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #139
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #140
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #141
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #142
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #143
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #144
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #145
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #146
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #147
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #148
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #149
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #150
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	b .LiteralPool3
.LTORG
addr_3_cur_token:
	.word cur_token
addr_3_other:
	.word other
addr_3_num:
	.word num
addr_3_last_char:
	.word last_char
.LiteralPool3:
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #151
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #152
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #153
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #154
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #155
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #156
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #157
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #158
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #159
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #160
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #161
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #162
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #163
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #164
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #165
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #166
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #167
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #168
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #169
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #170
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #171
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #172
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #173
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #174
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #175
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #176
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #177
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #178
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #179
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #180
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #181
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #182
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #183
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #184
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #185
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #186
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #187
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #188
	mov r9, #4
	b .LiteralPool4
.LTORG
addr_4_cur_token:
	.word cur_token
addr_4_other:
	.word other
addr_4_num:
	.word num
addr_4_last_char:
	.word last_char
.LiteralPool4:
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #189
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #190
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #191
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #192
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #193
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #194
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #195
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #196
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #197
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #198
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #199
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #200
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #201
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #202
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #203
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #204
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #205
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #206
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #207
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #208
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #209
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #210
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #211
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #212
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #213
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #214
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #215
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #216
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #217
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #218
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #219
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #220
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #221
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #222
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #223
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #224
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #225
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	b .LiteralPool5
.LTORG
addr_5_cur_token:
	.word cur_token
addr_5_other:
	.word other
addr_5_num:
	.word num
addr_5_last_char:
	.word last_char
.LiteralPool5:
	add r9, fp, r8
	mov r10, #226
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #227
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #228
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #229
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #230
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #231
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #232
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #233
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #234
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #235
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #236
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #237
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #238
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #239
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #240
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #241
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #242
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #243
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #244
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #245
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #246
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #247
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #248
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #249
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #250
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #251
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #252
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r9, fp, r8
	mov r10, #253
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r10, fp, r8
	mov r4, #254
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-2076
	add r4, fp, r8
	mov r9, #255
	mov r10, #4
	mul r5, r9, r10
	add r6, r4, r5
	mov r7, #0
	str r7, [r6]
	ldr r8, =-1052
	add r9, fp, r8
	mov r10, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #1
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #2
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #3
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #4
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #5
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #6
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #7
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	b .LiteralPool6
.LTORG
addr_6_cur_token:
	.word cur_token
addr_6_other:
	.word other
addr_6_num:
	.word num
addr_6_last_char:
	.word last_char
.LiteralPool6:
	add r7, fp, r5
	mov r8, #8
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #9
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #10
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #11
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #12
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #13
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #14
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #15
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #16
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #17
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #18
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #19
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #20
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #21
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #22
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #23
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #24
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #25
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #26
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #27
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #28
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #29
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #30
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #31
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #32
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #33
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #34
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #35
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #36
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #37
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #38
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #39
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #40
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #41
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #42
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #43
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #44
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #45
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	b .LiteralPool7
.LTORG
addr_7_cur_token:
	.word cur_token
addr_7_other:
	.word other
addr_7_num:
	.word num
addr_7_last_char:
	.word last_char
.LiteralPool7:
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #46
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #47
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #48
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #49
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #50
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #51
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #52
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #53
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #54
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #55
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #56
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #57
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #58
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #59
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #60
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #61
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #62
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #63
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #64
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #65
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #66
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #67
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #68
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #69
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #70
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #71
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #72
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #73
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #74
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #75
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #76
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #77
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #78
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #79
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #80
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #81
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #82
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #83
	b .LiteralPool8
.LTORG
addr_8_cur_token:
	.word cur_token
addr_8_other:
	.word other
addr_8_num:
	.word num
addr_8_last_char:
	.word last_char
.LiteralPool8:
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #84
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #85
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #86
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #87
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #88
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #89
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #90
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #91
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #92
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #93
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #94
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #95
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #96
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #97
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #98
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #99
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #100
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #101
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #102
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #103
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #104
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #105
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #106
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #107
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #108
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #109
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #110
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #111
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #112
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #113
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #114
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #115
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #116
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #117
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #118
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #119
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #120
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	b .LiteralPool9
.LTORG
addr_9_cur_token:
	.word cur_token
addr_9_other:
	.word other
addr_9_num:
	.word num
addr_9_last_char:
	.word last_char
.LiteralPool9:
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #121
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #122
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #123
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #124
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #125
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #126
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #127
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #128
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #129
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #130
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #131
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #132
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #133
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #134
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #135
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #136
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #137
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #138
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #139
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #140
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #141
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #142
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #143
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #144
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #145
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #146
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #147
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #148
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #149
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #150
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #151
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #152
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #153
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #154
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #155
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #156
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #157
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #158
	mov r6, #4
	mul r9, r8, r6
	b .LiteralPool10
.LTORG
addr_10_cur_token:
	.word cur_token
addr_10_other:
	.word other
addr_10_num:
	.word num
addr_10_last_char:
	.word last_char
.LiteralPool10:
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #159
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #160
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #161
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #162
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #163
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #164
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #165
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #166
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #167
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #168
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #169
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #170
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #171
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #172
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #173
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #174
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #175
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #176
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #177
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #178
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #179
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #180
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #181
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #182
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #183
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #184
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #185
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #186
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #187
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #188
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #189
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #190
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #191
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #192
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #193
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #194
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #195
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	b .LiteralPool11
.LTORG
addr_11_cur_token:
	.word cur_token
addr_11_other:
	.word other
addr_11_num:
	.word num
addr_11_last_char:
	.word last_char
.LiteralPool11:
	mov r7, #196
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #197
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #198
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #199
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #200
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #201
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #202
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #203
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #204
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #205
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #206
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #207
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #208
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #209
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #210
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #211
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #212
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #213
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #214
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #215
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #216
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #217
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #218
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #219
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #220
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #221
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #222
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #223
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #224
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #225
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #226
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #227
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #228
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #229
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #230
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #231
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #232
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #233
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	b .LiteralPool12
.LTORG
addr_12_cur_token:
	.word cur_token
addr_12_other:
	.word other
addr_12_num:
	.word num
addr_12_last_char:
	.word last_char
.LiteralPool12:
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #234
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #235
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #236
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #237
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #238
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #239
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #240
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #241
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #242
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #243
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #244
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #245
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #246
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #247
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #248
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #249
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #250
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #251
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #252
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, #253
	mov r8, #4
	mul r9, r7, r8
	add r10, r6, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r7, fp, r5
	mov r8, #254
	mov r6, #4
	mul r9, r8, r6
	add r10, r7, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, =-1052
	add r8, fp, r5
	mov r6, #255
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	mov r4, #0
	str r4, [r10]
	ldr r5, addr_13_cur_token
	ldr r6, [r5]
	cmp r6, #0
	bne .L749
	b .L748
	b .LiteralPool13
.LTORG
addr_13_cur_token:
	.word cur_token
addr_13_other:
	.word other
addr_13_num:
	.word num
addr_13_last_char:
	.word last_char
.LiteralPool13:
.L746:                               	@ predecessors = .L748                               	@ successors = .L752
	ldr r7, =-2076
	add r8, fp, r7
	mov r9, r8
	ldr r10, addr_14_num
	ldr r4, [r10]
	mov r1, r4
	mov r0, r9
	bl stack_push
	bl next_token
	mov r5, r0
	b .L752
.L748:                               	@ predecessors = .L231                               	@ successors = .L746
	b .L746
.L749:                               	@ predecessors = .L231
	bl panic
	mov r6, r0
	mov r0, r6
	b .Leval_END
.L752:                               	@ predecessors = .L746, .L785                               	@ successors = .L755, .L756
	ldr r7, addr_14_cur_token
	ldr r8, [r7]
	cmp r8, #1
	beq .L756
	b .L755
.L753:                               	@ predecessors = .L755, .L762                               	@ successors = .L791
	bl next_token
	mov r10, r0
	b .L791
.L755:                               	@ predecessors = .L752                               	@ successors = .L753
	b .L753
.L756:                               	@ predecessors = .L752                               	@ successors = .L761, .L762
	ldr r4, addr_14_other
	ldr r9, [r4]
	str r9, [fp, #-28]
	ldr r5, [fp, #-28]
	mov r0, r5
	bl get_op_prec
	mov r6, r0
	cmp r6, #0
	beq .L762
	b .L761
.L759:                               	@ predecessors = .L761, .L763                               	@ successors = .L764
	bl next_token
	mov r7, r0
	b .L764
.L761:                               	@ predecessors = .L756                               	@ successors = .L759
	b .L759
.L762:                               	@ predecessors = .L756                               	@ successors = .L753
	b .L753
.L763:                               	@ successors = .L759
	b .L759
.L764:                               	@ predecessors = .L759, .L772                               	@ successors = .L767, .L768
	ldr r8, =-1052
	add r10, fp, r8
	mov r4, r10
	mov r0, r4
	bl stack_size
	mov r9, r0
	cmp r9, #0
	bne .L768
	b .L767
.L765:                               	@ predecessors = .L767, .L771                               	@ successors = .L787, .L788
	ldr r5, =-1052
	add r6, fp, r5
	mov r7, r6
	ldr r8, [fp, #-28]
	mov r1, r8
	mov r0, r7
	bl stack_push
	ldr r10, addr_14_cur_token
	ldr r4, [r10]
	cmp r4, #0
	bne .L788
	b .L787
.L767:                               	@ predecessors = .L764                               	@ successors = .L765
	b .L765
.L768:                               	@ predecessors = .L764                               	@ successors = .L771, .L772
	ldr r9, =-1052
	add r5, fp, r9
	mov r6, r5
	mov r0, r6
	bl stack_peek
	mov r8, r0
	mov r0, r8
	bl get_op_prec
	mov r7, r0
	ldr r10, [fp, #-28]
	mov r0, r10
	bl get_op_prec
	mov r4, r0
	cmp r7, r4
	bge .L772
	b .L771
.L771:                               	@ predecessors = .L768                               	@ successors = .L765
	b .L765
.L772:                               	@ predecessors = .L768                               	@ successors = .L764
	ldr r9, =-1052
	add r5, fp, r9
	mov r6, r5
	mov r0, r6
	bl stack_pop
	mov r8, r0
	str r8, [fp, #-24]
	ldr r10, =-2076
	add r7, fp, r10
	mov r4, r7
	mov r0, r4
	bl stack_pop
	mov r9, r0
	str r9, [fp, #-20]
	ldr r5, =-2076
	add r6, fp, r5
	mov r8, r6
	mov r0, r8
	bl stack_pop
	mov r10, r0
	str r10, [fp, #-16]
	ldr r7, =-2076
	add r4, fp, r7
	mov r9, r4
	ldr r5, [fp, #-24]
	ldr r6, [fp, #-16]
	ldr r8, [fp, #-20]
	mov r2, r8
	mov r1, r6
	mov r0, r5
	bl eval_op
	mov r10, r0
	mov r1, r10
	mov r0, r9
	bl stack_push
	b .L764
.L785:                               	@ predecessors = .L787                               	@ successors = .L752
	ldr r7, =-2076
	add r4, fp, r7
	mov r8, r4
	ldr r6, addr_14_num
	ldr r5, [r6]
	mov r1, r5
	mov r0, r8
	bl stack_push
	bl next_token
	mov r10, r0
	b .L752
.L787:                               	@ predecessors = .L765                               	@ successors = .L785
	b .L785
.L788:                               	@ predecessors = .L765
	bl panic
	mov r9, r0
	mov r0, r9
	b .Leval_END
.L791:                               	@ predecessors = .L753, .L795                               	@ successors = .L794, .L795
	ldr r7, =-1052
	add r4, fp, r7
	mov r6, r4
	mov r0, r6
	bl stack_size
	mov r5, r0
	cmp r5, #0
	bne .L795
	b .L794
.L792:                               	@ predecessors = .L794
	ldr r8, =-2076
	add r10, fp, r8
	mov r9, r10
	mov r0, r9
	bl stack_peek
	mov r7, r0
	mov r0, r7
	b .Leval_END
.L794:                               	@ predecessors = .L791                               	@ successors = .L792
	b .L792
.L795:                               	@ predecessors = .L791                               	@ successors = .L791
	ldr r4, =-1052
	add r6, fp, r4
	mov r5, r6
	mov r0, r5
	bl stack_pop
	mov r8, r0
	str r8, [fp, #-12]
	ldr r10, =-2076
	add r9, fp, r10
	mov r7, r9
	mov r0, r7
	bl stack_pop
	mov r4, r0
	str r4, [fp, #-8]
	ldr r6, =-2076
	add r5, fp, r6
	mov r8, r5
	mov r0, r8
	bl stack_pop
	mov r10, r0
	str r10, [fp, #-4]
	ldr r9, =-2076
	add r7, fp, r9
	mov r4, r7
	ldr r6, [fp, #-12]
	ldr r5, [fp, #-4]
	ldr r8, [fp, #-8]
	mov r2, r8
	mov r1, r5
	mov r0, r6
	bl eval_op
	mov r10, r0
	mov r1, r10
	mov r0, r4
	bl stack_push
	b .L791
.Leval_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool14
.LTORG
addr_14_cur_token:
	.word cur_token
addr_14_other:
	.word other
addr_14_num:
	.word num
addr_14_last_char:
	.word last_char
.LiteralPool14:
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L807:                               	@ successors = .L809
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	bl getch
	mov r5, r0
	bl next_token
	mov r6, r0
	b .L809
.L809:                               	@ predecessors = .L807, .L813                               	@ successors = .L812, .L813
	ldr r7, [fp, #-4]
	cmp r7, #0
	bne .L813
	b .L812
.L810:                               	@ predecessors = .L812
	mov r0, #0
	b .Lmain_END
.L812:                               	@ predecessors = .L809                               	@ successors = .L810
	b .L810
.L813:                               	@ predecessors = .L809                               	@ successors = .L809
	bl eval
	mov r8, r0
	mov r0, r8
	bl putint
	mov r0, #10
	bl putch
	ldr r9, [fp, #-4]
	sub r10, r9, #1
	str r10, [fp, #-4]
	b .L809
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_15_cur_token:
	.word cur_token
addr_15_other:
	.word other
addr_15_num:
	.word num
addr_15_last_char:
	.word last_char
