	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm	rev, 400, 4
	.comm	cap, 400, 4
	.comm	used, 40, 4
	.comm	to, 400, 4
	.comm	size, 40, 4
	.text
	.global my_memset
	.type my_memset , %function
my_memset:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L33:                               	@ successors = .L38
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	str r2, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	b .L38
.L38:                               	@ predecessors = .L33, .L43                               	@ successors = .L42, .L43
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	cmp r5, r6
	blt .L43
	b .L42
.L39:                               	@ predecessors = .L42
	b .Lmy_memset_END
.L42:                               	@ predecessors = .L38                               	@ successors = .L39
	b .L39
.L43:                               	@ predecessors = .L38                               	@ successors = .L38
	ldr r7, [fp, #-12]
	ldr r8, [fp, #-16]
	ldr r9, [fp, #-4]
	mov r10, #4
	mul r4, r9, r10
	add r5, r8, r4
	str r7, [r5]
	ldr r6, [fp, #-4]
	add r9, r6, #1
	str r9, [fp, #-4]
	b .L38
.Lmy_memset_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global add_node
	.type add_node , %function
add_node:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #12
.L49:
	str r0, [fp, #-12]
	str r1, [fp, #-8]
	str r2, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-12]
	ldr r6, addr_0_to
	mov r7, #40
	mul r8, r5, r7
	add r9, r6, r8
	ldr r10, [fp, #-12]
	ldr r5, addr_0_size
	mov r7, #4
	mul r6, r10, r7
	add r8, r5, r6
	ldr r10, [r8]
	mov r7, #4
	mul r5, r10, r7
	add r6, r9, r5
	str r4, [r6]
	ldr r8, [fp, #-4]
	ldr r10, [fp, #-12]
	ldr r7, addr_0_cap
	mov r9, #40
	mul r5, r10, r9
	add r4, r7, r5
	ldr r6, [fp, #-12]
	ldr r10, addr_0_size
	mov r9, #4
	mul r7, r6, r9
	add r5, r10, r7
	ldr r6, [r5]
	mov r9, #4
	mul r10, r6, r9
	add r7, r4, r10
	str r8, [r7]
	ldr r5, [fp, #-8]
	ldr r6, addr_0_size
	mov r9, #4
	mul r4, r5, r9
	add r10, r6, r4
	ldr r8, [r10]
	ldr r7, [fp, #-12]
	ldr r5, addr_0_rev
	mov r9, #40
	mul r6, r7, r9
	add r4, r5, r6
	ldr r10, [fp, #-12]
	ldr r7, addr_0_size
	mov r9, #4
	mul r5, r10, r9
	add r6, r7, r5
	ldr r10, [r6]
	mov r9, #4
	mul r7, r10, r9
	add r5, r4, r7
	str r8, [r5]
	ldr r6, [fp, #-12]
	ldr r10, [fp, #-8]
	ldr r9, addr_0_to
	mov r4, #40
	mul r7, r10, r4
	add r8, r9, r7
	ldr r5, [fp, #-8]
	ldr r10, addr_0_size
	mov r4, #4
	mul r9, r5, r4
	add r7, r10, r9
	ldr r5, [r7]
	mov r4, #4
	mul r10, r5, r4
	add r9, r8, r10
	str r6, [r9]
	ldr r7, [fp, #-8]
	ldr r5, addr_0_cap
	mov r4, #40
	mul r8, r7, r4
	add r10, r5, r8
	ldr r6, [fp, #-8]
	ldr r9, addr_0_size
	mov r7, #4
	mul r4, r6, r7
	add r5, r9, r4
	ldr r8, [r5]
	mov r6, #4
	mul r7, r8, r6
	add r9, r10, r7
	mov r4, #0
	str r4, [r9]
	ldr r5, [fp, #-12]
	ldr r8, addr_0_size
	mov r6, #4
	mul r10, r5, r6
	add r7, r8, r10
	ldr r9, [r7]
	ldr r4, [fp, #-8]
	ldr r5, addr_0_rev
	mov r6, #40
	mul r8, r4, r6
	add r10, r5, r8
	ldr r7, [fp, #-8]
	ldr r4, addr_0_size
	mov r6, #4
	mul r5, r7, r6
	add r8, r4, r5
	ldr r7, [r8]
	mov r6, #4
	mul r4, r7, r6
	add r5, r10, r4
	str r9, [r5]
	ldr r8, [fp, #-12]
	ldr r7, addr_0_size
	mov r6, #4
	mul r10, r8, r6
	add r4, r7, r10
	ldr r9, [r4]
	add r5, r9, #1
	ldr r8, [fp, #-12]
	ldr r6, addr_0_size
	mov r7, #4
	mul r10, r8, r7
	add r4, r6, r10
	str r5, [r4]
	ldr r9, [fp, #-8]
	ldr r8, addr_0_size
	mov r7, #4
	mul r6, r9, r7
	add r10, r8, r6
	ldr r5, [r10]
	add r4, r5, #1
	ldr r9, [fp, #-8]
	ldr r7, addr_0_size
	mov r8, #4
	mul r6, r9, r8
	add r10, r7, r6
	str r4, [r10]
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global dfs
	.type dfs , %function
dfs:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #24
.L108:                               	@ successors = .L115, .L116
	str r0, [fp, #-24]
	str r1, [fp, #-20]
	str r2, [fp, #-16]
	ldr r4, [fp, #-24]
	ldr r5, [fp, #-20]
	cmp r4, r5
	beq .L116
	b .L115
.L112:                               	@ predecessors = .L115                               	@ successors = .L121
	ldr r6, [fp, #-24]
	ldr r7, addr_0_used
	mov r8, #4
	mul r9, r6, r8
	add r10, r7, r9
	mov r4, #1
	str r4, [r10]
	mov r5, #0
	str r5, [fp, #-12]
	b .L121
.L115:                               	@ predecessors = .L108                               	@ successors = .L112
	b .L112
.L116:                               	@ predecessors = .L108
	ldr r6, [fp, #-16]
	mov r0, r6
	b .Ldfs_END
.L121:                               	@ predecessors = .L148, .L112, .L138, .L176                               	@ successors = .L127, .L128
	ldr r8, [fp, #-12]
	ldr r7, [fp, #-24]
	ldr r9, addr_0_size
	mov r10, #4
	mul r4, r7, r10
	add r5, r9, r4
	ldr r6, [r5]
	cmp r8, r6
	blt .L128
	b .L127
.L122:                               	@ predecessors = .L127
	mov r0, #0
	b .Ldfs_END
.L127:                               	@ predecessors = .L121                               	@ successors = .L122
	b .L122
.L128:                               	@ predecessors = .L121                               	@ successors = .L137, .L138
	ldr r7, [fp, #-24]
	ldr r10, addr_0_to
	mov r9, #40
	mul r4, r7, r9
	add r5, r10, r4
	ldr r8, [fp, #-12]
	mov r6, #4
	mul r7, r8, r6
	add r9, r5, r7
	ldr r10, [r9]
	ldr r4, addr_0_used
	mov r8, #4
	mul r6, r10, r8
	add r5, r4, r6
	ldr r7, [r5]
	cmp r7, #0
	bne .L138
	b .L137
.L129:                               	@ predecessors = .L137, .L140                               	@ successors = .L147, .L148
	ldr r9, [fp, #-24]
	ldr r10, addr_0_cap
	mov r8, #40
	mul r4, r9, r8
	add r6, r10, r4
	ldr r5, [fp, #-12]
	mov r7, #4
	mul r9, r5, r7
	add r8, r6, r9
	ldr r10, [r8]
	cmp r10, #0
	ble .L148
	b .L147
.L137:                               	@ predecessors = .L128                               	@ successors = .L129
	b .L129
.L138:                               	@ predecessors = .L128                               	@ successors = .L121
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	b .L121
.L140:                               	@ successors = .L129
	b .L129
.L141:                               	@ predecessors = .L147, .L150                               	@ successors = .L159, .L160
	ldr r7, [fp, #-16]
	ldr r6, [fp, #-24]
	ldr r9, addr_0_cap
	mov r8, #40
	mul r10, r6, r8
	add r4, r9, r10
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r8, r5, r6
	add r9, r4, r8
	ldr r10, [r9]
	cmp r7, r10
	blt .L160
	b .L159
.L147:                               	@ predecessors = .L129                               	@ successors = .L141
	b .L141
.L148:                               	@ predecessors = .L129                               	@ successors = .L121
	ldr r5, [fp, #-12]
	add r6, r5, #1
	str r6, [fp, #-12]
	b .L121
.L150:                               	@ successors = .L141
	b .L141
.L152:                               	@ predecessors = .L160, .L162                               	@ successors = .L178, .L179
	ldr r4, [fp, #-24]
	ldr r8, addr_0_to
	mov r9, #40
	mul r7, r4, r9
	add r10, r8, r7
	ldr r5, [fp, #-12]
	mov r6, #4
	mul r4, r5, r6
	add r9, r10, r4
	ldr r8, [r9]
	ldr r7, [fp, #-20]
	ldr r5, [fp, #-8]
	mov r2, r5
	mov r1, r7
	mov r0, r8
	bl dfs
	mov r6, r0
	str r6, [fp, #-4]
	ldr r10, [fp, #-4]
	cmp r10, #0
	bgt .L179
	b .L178
.L159:                               	@ predecessors = .L141                               	@ successors = .L162
	b .L162
.L160:                               	@ predecessors = .L141                               	@ successors = .L152
	ldr r4, [fp, #-16]
	str r4, [fp, #-8]
	b .L152
.L162:                               	@ predecessors = .L159                               	@ successors = .L152
	ldr r9, [fp, #-24]
	ldr r5, addr_0_cap
	mov r7, #40
	mul r8, r9, r7
	add r6, r5, r8
	ldr r10, [fp, #-12]
	mov r4, #4
	mul r9, r10, r4
	add r7, r6, r9
	ldr r5, [r7]
	str r5, [fp, #-8]
	b .L152
.L176:                               	@ predecessors = .L178                               	@ successors = .L121
	ldr r8, [fp, #-12]
	add r10, r8, #1
	str r10, [fp, #-12]
	b .L121
.L178:                               	@ predecessors = .L152                               	@ successors = .L176
	b .L176
.L179:                               	@ predecessors = .L152
	ldr r4, [fp, #-24]
	ldr r6, addr_0_cap
	mov r9, #40
	mul r7, r4, r9
	add r5, r6, r7
	ldr r8, [fp, #-12]
	mov r10, #4
	mul r4, r8, r10
	add r9, r5, r4
	ldr r6, [r9]
	ldr r7, [fp, #-4]
	sub r8, r6, r7
	ldr r10, [fp, #-24]
	ldr r5, addr_0_cap
	mov r4, #40
	mul r9, r10, r4
	add r6, r5, r9
	ldr r7, [fp, #-12]
	mov r10, #4
	mul r4, r7, r10
	add r5, r6, r4
	str r8, [r5]
	ldr r9, [fp, #-24]
	ldr r7, addr_0_to
	mov r10, #40
	mul r6, r9, r10
	add r4, r7, r6
	ldr r8, [fp, #-12]
	mov r5, #4
	mul r9, r8, r5
	add r10, r4, r9
	ldr r7, [r10]
	ldr r6, addr_0_cap
	mov r8, #40
	mul r5, r7, r8
	add r4, r6, r5
	ldr r9, [fp, #-24]
	ldr r10, addr_0_rev
	mov r7, #40
	mul r8, r9, r7
	add r6, r10, r8
	ldr r5, [fp, #-12]
	mov r9, #4
	mul r7, r5, r9
	add r10, r6, r7
	ldr r8, [r10]
	mov r5, #4
	mul r9, r8, r5
	add r6, r4, r9
	ldr r7, [r6]
	ldr r10, [fp, #-4]
	add r8, r7, r10
	ldr r5, [fp, #-24]
	ldr r4, addr_0_to
	mov r9, #40
	mul r6, r5, r9
	add r7, r4, r6
	ldr r10, [fp, #-12]
	mov r5, #4
	mul r9, r10, r5
	add r4, r7, r9
	ldr r6, [r4]
	ldr r10, addr_0_cap
	mov r5, #40
	mul r7, r6, r5
	add r9, r10, r7
	ldr r4, [fp, #-24]
	ldr r6, addr_0_rev
	mov r5, #40
	mul r10, r4, r5
	add r7, r6, r10
	ldr r4, [fp, #-12]
	mov r5, #4
	mul r6, r4, r5
	add r10, r7, r6
	ldr r4, [r10]
	mov r5, #4
	mul r7, r4, r5
	add r6, r9, r7
	str r8, [r6]
	ldr r10, [fp, #-4]
	mov r0, r10
.Ldfs_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
addr_0_rev:
	.word rev
addr_0_cap:
	.word cap
addr_0_used:
	.word used
addr_0_to:
	.word to
addr_0_size:
	.word size
.LiteralPool0:
	.global max_flow
	.type max_flow , %function
max_flow:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L218:                               	@ successors = .L222
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	mov r4, #0
	str r4, [fp, #-8]
	b .L222
.L222:                               	@ predecessors = .L218, .L229                               	@ successors = .L224
	b .L224
.L223:
	b .Lmax_flow_END
.L224:                               	@ predecessors = .L222                               	@ successors = .L231, .L232
	ldr r5, addr_1_used
	mov r6, r5
	mov r2, #10
	mov r1, #0
	mov r0, r6
	bl my_memset
	ldr r7, [fp, #-16]
	ldr r8, [fp, #-12]
	mov r2, #1879048192
	mov r1, r8
	mov r0, r7
	bl dfs
	mov r9, r0
	str r9, [fp, #-4]
	ldr r10, [fp, #-4]
	cmp r10, #0
	beq .L232
	b .L231
.L229:                               	@ predecessors = .L231                               	@ successors = .L222
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	add r6, r4, r5
	str r6, [fp, #-8]
	b .L222
.L231:                               	@ predecessors = .L224                               	@ successors = .L229
	b .L229
.L232:                               	@ predecessors = .L224
	ldr r8, [fp, #-8]
	mov r0, r8
.Lmax_flow_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L236:                               	@ successors = .L240
	bl getint
	mov r4, r0
	str r4, [fp, #-20]
	bl getint
	mov r5, r0
	str r5, [fp, #-16]
	ldr r6, addr_1_size
	mov r7, r6
	mov r2, #10
	mov r1, #0
	mov r0, r7
	bl my_memset
	b .L240
.L240:                               	@ predecessors = .L236, .L244                               	@ successors = .L243, .L244
	ldr r8, [fp, #-16]
	cmp r8, #0
	bgt .L244
	b .L243
.L241:                               	@ predecessors = .L243
	ldr r9, [fp, #-20]
	mov r1, r9
	mov r0, #1
	bl max_flow
	mov r10, r0
	mov r0, r10
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	b .Lmain_END
.L243:                               	@ predecessors = .L240                               	@ successors = .L241
	b .L241
.L244:                               	@ predecessors = .L240                               	@ successors = .L240
	bl getint
	mov r4, r0
	str r4, [fp, #-12]
	bl getint
	mov r5, r0
	str r5, [fp, #-8]
	bl getint
	mov r6, r0
	str r6, [fp, #-4]
	ldr r7, [fp, #-12]
	ldr r8, [fp, #-8]
	ldr r9, [fp, #-4]
	mov r2, r9
	mov r1, r8
	mov r0, r7
	bl add_node
	ldr r10, [fp, #-16]
	sub r4, r10, #1
	str r4, [fp, #-16]
	b .L240
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_1_rev:
	.word rev
addr_1_cap:
	.word cap
addr_1_used:
	.word used
addr_1_to:
	.word to
addr_1_size:
	.word size
