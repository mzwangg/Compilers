	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm	cns, 80, 4
	.comm	list, 800, 4
	.comm	dp, 52907904, 4
	.text
	.global equal
	.type equal , %function
equal:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #8
.L69:                               	@ successors = .L75, .L76
	str r0, [fp, #-8]
	str r1, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	cmp r4, r5
	beq .L76
	b .L75
.L72:                               	@ predecessors = .L75
	mov r0, #0
	b .Lequal_END
.L75:                               	@ predecessors = .L69                               	@ successors = .L72
	b .L72
.L76:                               	@ predecessors = .L69
	mov r0, #1
.Lequal_END:
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global dfs
	.type dfs , %function
dfs:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #40
.L77:                               	@ successors = .L98, .L99
	str r0, [fp, #-20]
	str r1, [fp, #-16]
	str r2, [fp, #-12]
	str r3, [fp, #-8]
	ldr r4, [fp, #-20]
	ldr r5, addr_0_dp
	ldr r6, =2939328
	mul r7, r4, r6
	add r8, r5, r7
	ldr r9, [fp, #-16]
	ldr r10, =163296
	mul r4, r9, r10
	add r6, r8, r4
	ldr r5, [fp, #-12]
	ldr r7, =9072
	mul r9, r5, r7
	add r10, r6, r9
	ldr r8, [fp, #-8]
	mov r4, #504
	mul r5, r8, r4
	add r7, r10, r5
	ldr r6, [fp, #36]
	mov r9, #28
	mul r8, r6, r9
	add r4, r7, r8
	ldr r10, [fp, #40]
	mov r5, #4
	mul r6, r10, r5
	add r9, r4, r6
	ldr r7, [r9]
	cmp r7, #-1
	bne .L99
	b .L98
.L84:                               	@ predecessors = .L98                               	@ successors = .L119, .L120
	ldr r8, [fp, #-20]
	ldr r10, [fp, #-16]
	add r5, r8, r10
	ldr r4, [fp, #-12]
	add r6, r5, r4
	ldr r9, [fp, #-8]
	add r7, r6, r9
	ldr r8, [fp, #36]
	add r10, r7, r8
	cmp r10, #0
	beq .L120
	b .L119
.L98:                               	@ predecessors = .L77                               	@ successors = .L84
	b .L84
.L99:                               	@ predecessors = .L77
	ldr r5, [fp, #-20]
	ldr r4, addr_0_dp
	ldr r6, =2939328
	mul r9, r5, r6
	add r7, r4, r9
	ldr r8, [fp, #-16]
	ldr r10, =163296
	mul r5, r8, r10
	add r6, r7, r5
	ldr r4, [fp, #-12]
	ldr r9, =9072
	mul r8, r4, r9
	add r10, r6, r8
	ldr r7, [fp, #-8]
	mov r5, #504
	mul r4, r7, r5
	add r9, r10, r4
	ldr r6, [fp, #36]
	mov r8, #28
	mul r7, r6, r8
	add r5, r9, r7
	ldr r10, [fp, #40]
	mov r4, #4
	mul r6, r10, r4
	add r8, r5, r6
	ldr r9, [r8]
	mov r0, r9
	b .Ldfs_END
.L113:                               	@ predecessors = .L119                               	@ successors = .L124, .L125
	mov r7, #0
	str r7, [fp, #-4]
	ldr r10, [fp, #-20]
	cmp r10, #0
	bne .L125
	b .L124
.L119:                               	@ predecessors = .L84                               	@ successors = .L113
	b .L113
.L120:                               	@ predecessors = .L84
	mov r0, #1
	b .Ldfs_END
.L122:                               	@ predecessors = .L124, .L125                               	@ successors = .L136, .L137
	ldr r4, [fp, #-16]
	cmp r4, #0
	bne .L137
	b .L136
.L124:                               	@ predecessors = .L113                               	@ successors = .L122
	b .L122
.L125:                               	@ predecessors = .L113                               	@ successors = .L122
	ldr r5, [fp, #-4]
	str r5, [fp, #-24]
	ldr r6, [fp, #-20]
	ldr r8, [fp, #40]
	mov r1, #2
	mov r0, r8
	bl equal
	mov r9, r0
	sub r7, r6, r9
	ldr r10, [fp, #-20]
	sub r4, r10, #1
	ldr r5, [fp, #-16]
	ldr r8, [fp, #-12]
	ldr r6, [fp, #-8]
	ldr r9, [fp, #36]
	mov r10, #1
	push {r10}
	push {r9}
	mov r3, r6
	mov r2, r8
	mov r1, r5
	mov r0, r4
	bl dfs
	add sp, sp, #8
	mov r10, r0
	mul r9, r7, r10
	ldr r6, [fp, #-24]
	add r8, r6, r9
	ldr r5, =1000000007
	sdiv r4, r8, r5
	mul r10, r4, r5
	sub r7, r8, r10
	str r7, [fp, #-4]
	b .L122
.L134:                               	@ predecessors = .L136, .L137                               	@ successors = .L148, .L149
	ldr r9, [fp, #-12]
	cmp r9, #0
	bne .L149
	b .L148
.L136:                               	@ predecessors = .L122                               	@ successors = .L134
	b .L134
.L137:                               	@ predecessors = .L122                               	@ successors = .L134
	ldr r6, [fp, #-4]
	str r6, [fp, #-28]
	ldr r5, [fp, #-16]
	ldr r4, [fp, #40]
	mov r1, #3
	mov r0, r4
	bl equal
	mov r8, r0
	sub r10, r5, r8
	ldr r7, [fp, #-20]
	add r9, r7, #1
	ldr r6, [fp, #-16]
	sub r4, r6, #1
	ldr r5, [fp, #-12]
	ldr r8, [fp, #-8]
	ldr r7, [fp, #36]
	mov r6, #2
	push {r6}
	push {r7}
	mov r3, r8
	mov r2, r5
	mov r1, r4
	mov r0, r9
	bl dfs
	add sp, sp, #8
	mov r6, r0
	mul r7, r10, r6
	ldr r8, [fp, #-28]
	add r5, r8, r7
	ldr r4, =1000000007
	sdiv r9, r5, r4
	mul r6, r9, r4
	sub r10, r5, r6
	str r10, [fp, #-4]
	b .L134
.L146:                               	@ predecessors = .L148, .L149                               	@ successors = .L160, .L161
	ldr r7, [fp, #-8]
	cmp r7, #0
	bne .L161
	b .L160
.L148:                               	@ predecessors = .L134                               	@ successors = .L146
	b .L146
.L149:                               	@ predecessors = .L134                               	@ successors = .L146
	ldr r8, [fp, #-4]
	str r8, [fp, #-32]
	ldr r4, [fp, #-12]
	ldr r9, [fp, #40]
	mov r1, #4
	mov r0, r9
	bl equal
	mov r5, r0
	sub r6, r4, r5
	ldr r10, [fp, #-20]
	ldr r7, [fp, #-16]
	add r8, r7, #1
	ldr r9, [fp, #-12]
	sub r4, r9, #1
	ldr r5, [fp, #-8]
	ldr r7, [fp, #36]
	mov r9, #3
	push {r9}
	push {r7}
	mov r3, r5
	mov r2, r4
	mov r1, r8
	mov r0, r10
	bl dfs
	add sp, sp, #8
	mov r9, r0
	mul r7, r6, r9
	ldr r5, [fp, #-32]
	add r4, r5, r7
	ldr r8, =1000000007
	sdiv r10, r4, r8
	mul r9, r10, r8
	sub r6, r4, r9
	str r6, [fp, #-4]
	b .L146
.L158:                               	@ predecessors = .L160, .L161                               	@ successors = .L172, .L173
	ldr r7, [fp, #36]
	cmp r7, #0
	bne .L173
	b .L172
.L160:                               	@ predecessors = .L146                               	@ successors = .L158
	b .L158
.L161:                               	@ predecessors = .L146                               	@ successors = .L158
	ldr r5, [fp, #-4]
	str r5, [fp, #-36]
	ldr r8, [fp, #-8]
	ldr r10, [fp, #40]
	mov r1, #5
	mov r0, r10
	bl equal
	mov r4, r0
	sub r9, r8, r4
	ldr r6, [fp, #-20]
	ldr r7, [fp, #-16]
	ldr r5, [fp, #-12]
	add r10, r5, #1
	ldr r8, [fp, #-8]
	sub r4, r8, #1
	ldr r5, [fp, #36]
	mov r8, #4
	push {r8}
	push {r5}
	mov r3, r4
	mov r2, r10
	mov r1, r7
	mov r0, r6
	bl dfs
	add sp, sp, #8
	mov r8, r0
	mul r5, r9, r8
	ldr r4, [fp, #-36]
	add r10, r4, r5
	ldr r7, =1000000007
	sdiv r6, r10, r7
	mul r8, r6, r7
	sub r9, r10, r8
	str r9, [fp, #-4]
	b .L158
.L170:                               	@ predecessors = .L172, .L173
	ldr r5, [fp, #-4]
	ldr r4, =1000000007
	sdiv r7, r5, r4
	mul r6, r7, r4
	sub r10, r5, r6
	ldr r8, [fp, #-20]
	ldr r9, addr_0_dp
	ldr r4, =2939328
	mul r7, r8, r4
	add r5, r9, r7
	ldr r6, [fp, #-16]
	ldr r8, =163296
	mul r4, r6, r8
	add r9, r5, r4
	ldr r7, [fp, #-12]
	ldr r6, =9072
	mul r8, r7, r6
	add r5, r9, r8
	ldr r4, [fp, #-8]
	mov r7, #504
	mul r6, r4, r7
	add r9, r5, r6
	ldr r8, [fp, #36]
	mov r4, #28
	mul r7, r8, r4
	add r5, r9, r7
	ldr r6, [fp, #40]
	mov r8, #4
	mul r4, r6, r8
	add r9, r5, r4
	str r10, [r9]
	ldr r7, [fp, #-20]
	ldr r6, addr_0_dp
	ldr r8, =2939328
	mul r5, r7, r8
	add r4, r6, r5
	ldr r10, [fp, #-16]
	ldr r9, =163296
	mul r7, r10, r9
	add r8, r4, r7
	ldr r6, [fp, #-12]
	ldr r5, =9072
	mul r10, r6, r5
	add r9, r8, r10
	ldr r4, [fp, #-8]
	mov r7, #504
	mul r6, r4, r7
	add r5, r9, r6
	ldr r8, [fp, #36]
	mov r10, #28
	mul r4, r8, r10
	add r7, r5, r4
	ldr r9, [fp, #40]
	mov r6, #4
	mul r8, r9, r6
	add r10, r7, r8
	ldr r5, [r10]
	mov r0, r5
	b .Ldfs_END
.L172:                               	@ predecessors = .L158                               	@ successors = .L170
	b .L170
.L173:                               	@ predecessors = .L158                               	@ successors = .L170
	ldr r4, [fp, #-4]
	str r4, [fp, #-40]
	ldr r9, [fp, #36]
	ldr r6, [fp, #-20]
	ldr r7, [fp, #-16]
	ldr r8, [fp, #-12]
	ldr r10, [fp, #-8]
	add r5, r10, #1
	ldr r4, [fp, #36]
	sub r10, r4, #1
	mov r4, #5
	push {r4}
	push {r10}
	mov r3, r5
	mov r2, r8
	mov r1, r7
	mov r0, r6
	bl dfs
	add sp, sp, #8
	mov r4, r0
	mul r10, r9, r4
	ldr r5, [fp, #-40]
	add r8, r5, r10
	ldr r7, =1000000007
	sdiv r6, r8, r7
	mul r9, r6, r7
	sub r4, r8, r9
	str r4, [fp, #-4]
	b .L170
	b .LiteralPool0
.LTORG
addr_0_cns:
	.word cns
addr_0_list:
	.word list
addr_0_dp:
	.word dp
.LiteralPool0:
.Ldfs_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool1
.LTORG
addr_1_cns:
	.word cns
addr_1_list:
	.word list
addr_1_dp:
	.word dp
.LiteralPool1:
	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L207:                               	@ successors = .L210
	bl getint
	mov r4, r0
	str r4, [fp, #-32]
	mov r5, #0
	str r5, [fp, #-28]
	b .L210
.L210:                               	@ predecessors = .L207, .L217                               	@ successors = .L213, .L214
	ldr r6, [fp, #-28]
	cmp r6, #18
	blt .L214
	b .L213
.L211:                               	@ predecessors = .L213                               	@ successors = .L263
	mov r7, #0
	str r7, [fp, #-28]
	b .L263
.L213:                               	@ predecessors = .L210                               	@ successors = .L211
	b .L211
.L214:                               	@ predecessors = .L210                               	@ successors = .L216
	mov r8, #0
	str r8, [fp, #-24]
	b .L216
.L216:                               	@ predecessors = .L214, .L223                               	@ successors = .L219, .L220
	ldr r9, [fp, #-24]
	cmp r9, #18
	blt .L220
	b .L219
.L217:                               	@ predecessors = .L219                               	@ successors = .L210
	ldr r10, [fp, #-28]
	add r4, r10, #1
	str r4, [fp, #-28]
	b .L210
.L219:                               	@ predecessors = .L216                               	@ successors = .L217
	b .L217
.L220:                               	@ predecessors = .L216                               	@ successors = .L222
	mov r5, #0
	str r5, [fp, #-20]
	b .L222
.L222:                               	@ predecessors = .L220, .L229                               	@ successors = .L225, .L226
	ldr r6, [fp, #-20]
	cmp r6, #18
	blt .L226
	b .L225
.L223:                               	@ predecessors = .L225                               	@ successors = .L216
	ldr r7, [fp, #-24]
	add r8, r7, #1
	str r8, [fp, #-24]
	b .L216
.L225:                               	@ predecessors = .L222                               	@ successors = .L223
	b .L223
.L226:                               	@ predecessors = .L222                               	@ successors = .L228
	mov r9, #0
	str r9, [fp, #-16]
	b .L228
.L228:                               	@ predecessors = .L226, .L235                               	@ successors = .L231, .L232
	ldr r10, [fp, #-16]
	cmp r10, #18
	blt .L232
	b .L231
.L229:                               	@ predecessors = .L231                               	@ successors = .L222
	ldr r4, [fp, #-20]
	add r5, r4, #1
	str r5, [fp, #-20]
	b .L222
.L231:                               	@ predecessors = .L228                               	@ successors = .L229
	b .L229
.L232:                               	@ predecessors = .L228                               	@ successors = .L234
	mov r6, #0
	str r6, [fp, #-12]
	b .L234
.L234:                               	@ predecessors = .L232, .L241                               	@ successors = .L237, .L238
	ldr r7, [fp, #-12]
	cmp r7, #18
	blt .L238
	b .L237
.L235:                               	@ predecessors = .L237                               	@ successors = .L228
	ldr r8, [fp, #-16]
	add r9, r8, #1
	str r9, [fp, #-16]
	b .L228
.L237:                               	@ predecessors = .L234                               	@ successors = .L235
	b .L235
.L238:                               	@ predecessors = .L234                               	@ successors = .L240
	mov r10, #0
	str r10, [fp, #-8]
	b .L240
.L240:                               	@ predecessors = .L238, .L244                               	@ successors = .L243, .L244
	ldr r4, [fp, #-8]
	cmp r4, #7
	blt .L244
	b .L243
.L241:                               	@ predecessors = .L243                               	@ successors = .L234
	ldr r5, [fp, #-12]
	add r6, r5, #1
	str r6, [fp, #-12]
	b .L234
.L243:                               	@ predecessors = .L240                               	@ successors = .L241
	b .L241
.L244:                               	@ predecessors = .L240                               	@ successors = .L240
	ldr r7, [fp, #-28]
	ldr r8, addr_2_dp
	ldr r9, =2939328
	mul r10, r7, r9
	add r4, r8, r10
	ldr r5, [fp, #-24]
	ldr r6, =163296
	mul r7, r5, r6
	add r9, r4, r7
	ldr r8, [fp, #-20]
	ldr r10, =9072
	mul r5, r8, r10
	add r6, r9, r5
	ldr r4, [fp, #-16]
	mov r7, #504
	mul r8, r4, r7
	add r10, r6, r8
	ldr r9, [fp, #-12]
	mov r5, #28
	mul r4, r9, r5
	add r7, r10, r4
	ldr r6, [fp, #-8]
	mov r8, #4
	mul r9, r6, r8
	add r5, r7, r9
	mov r10, #-1
	str r10, [r5]
	ldr r4, [fp, #-8]
	add r6, r4, #1
	str r6, [fp, #-8]
	b .L240
.L263:                               	@ predecessors = .L211, .L268                               	@ successors = .L267, .L268
	ldr r8, [fp, #-28]
	ldr r7, [fp, #-32]
	cmp r8, r7
	blt .L268
	b .L267
.L264:                               	@ predecessors = .L267
	ldr r9, addr_2_cns
	mov r5, #1
	mov r10, #4
	mul r4, r5, r10
	add r6, r9, r4
	ldr r8, [r6]
	str r8, [fp, #-36]
	ldr r7, addr_2_cns
	mov r5, #2
	mov r10, #4
	mul r9, r5, r10
	add r4, r7, r9
	ldr r6, [r4]
	ldr r8, addr_2_cns
	mov r5, #3
	mov r10, #4
	mul r7, r5, r10
	add r9, r8, r7
	ldr r4, [r9]
	ldr r5, addr_2_cns
	mov r10, #4
	mov r8, #4
	mul r7, r10, r8
	add r9, r5, r7
	ldr r10, [r9]
	ldr r8, addr_2_cns
	mov r5, #5
	mov r7, #4
	mul r9, r5, r7
	add r5, r8, r9
	ldr r7, [r5]
	mov r8, #0
	push {r8}
	push {r7}
	mov r3, r10
	mov r2, r4
	mov r1, r6
	ldr r9, [fp, #-36]
	mov r0, r9
	bl dfs
	add sp, sp, #8
	mov r5, r0
	str r5, [fp, #-4]
	ldr r8, [fp, #-4]
	mov r0, r8
	bl putint
	ldr r7, [fp, #-4]
	mov r0, r7
	b .Lmain_END
.L267:                               	@ predecessors = .L263                               	@ successors = .L264
	b .L264
.L268:                               	@ predecessors = .L263                               	@ successors = .L263
	bl getint
	mov r10, r0
	ldr r4, [fp, #-28]
	ldr r6, addr_2_list
	mov r9, #4
	mul r5, r4, r9
	add r8, r6, r5
	str r10, [r8]
	ldr r7, [fp, #-28]
	ldr r4, addr_2_list
	mov r9, #4
	mul r6, r7, r9
	add r5, r4, r6
	ldr r10, [r5]
	ldr r8, addr_2_cns
	mov r7, #4
	mul r9, r10, r7
	add r4, r8, r9
	ldr r6, [r4]
	add r5, r6, #1
	ldr r10, [fp, #-28]
	ldr r7, addr_2_list
	mov r8, #4
	mul r9, r10, r8
	add r4, r7, r9
	ldr r6, [r4]
	ldr r10, addr_2_cns
	mov r8, #4
	mul r7, r6, r8
	add r9, r10, r7
	str r5, [r9]
	ldr r4, [fp, #-28]
	add r6, r4, #1
	str r6, [fp, #-28]
	b .L263
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_2_cns:
	.word cns
addr_2_list:
	.word list
addr_2_dp:
	.word dp
