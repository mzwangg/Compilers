	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.comm	array, 440, 4
	.text
	.global init
	.type init , %function
init:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #8
.L63:                               	@ successors = .L66
	str r0, [fp, #-8]
	mov r4, #1
	str r4, [fp, #-4]
	b .L66
.L66:                               	@ predecessors = .L63, .L72                               	@ successors = .L71, .L72
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-8]
	ldr r7, [fp, #-8]
	mul r8, r6, r7
	add r9, r8, #1
	cmp r5, r9
	ble .L72
	b .L71
.L67:                               	@ predecessors = .L71
	b .Linit_END
.L71:                               	@ predecessors = .L66                               	@ successors = .L67
	b .L67
.L72:                               	@ predecessors = .L66                               	@ successors = .L66
	ldr r10, [fp, #-4]
	ldr r4, addr_0_array
	mov r6, #4
	mul r7, r10, r6
	add r8, r4, r7
	mov r5, #-1
	str r5, [r8]
	ldr r9, [fp, #-4]
	add r10, r9, #1
	str r10, [fp, #-4]
	b .L66
.Linit_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global findfa
	.type findfa , %function
findfa:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L76:                               	@ successors = .L83, .L84
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_0_array
	mov r6, #4
	mul r7, r4, r6
	add r8, r5, r7
	ldr r9, [r8]
	ldr r10, [fp, #-4]
	cmp r9, r10
	beq .L84
	b .L83
.L78:
	b .Lfindfa_END
.L83:                               	@ predecessors = .L76                               	@ successors = .L86
	b .L86
.L84:                               	@ predecessors = .L76
	ldr r4, [fp, #-4]
	mov r0, r4
	b .Lfindfa_END
.L86:                               	@ predecessors = .L83
	ldr r6, [fp, #-4]
	ldr r5, addr_0_array
	mov r7, #4
	mul r8, r6, r7
	add r9, r5, r8
	ldr r10, [r9]
	mov r0, r10
	bl findfa
	mov r4, r0
	ldr r6, [fp, #-4]
	ldr r7, addr_0_array
	mov r5, #4
	mul r8, r6, r5
	add r9, r7, r8
	str r4, [r9]
	ldr r10, [fp, #-4]
	ldr r6, addr_0_array
	mov r5, #4
	mul r7, r10, r5
	add r8, r6, r7
	ldr r4, [r8]
	mov r0, r4
.Lfindfa_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global mmerge
	.type mmerge , %function
mmerge:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L95:                               	@ successors = .L105, .L106
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r4, [fp, #-16]
	mov r0, r4
	bl findfa
	mov r5, r0
	str r5, [fp, #-8]
	ldr r6, [fp, #-12]
	mov r0, r6
	bl findfa
	mov r7, r0
	str r7, [fp, #-4]
	ldr r8, [fp, #-8]
	ldr r9, [fp, #-4]
	cmp r8, r9
	bne .L106
	b .L105
.L102:                               	@ predecessors = .L105, .L106
	b .Lmmerge_END
.L105:                               	@ predecessors = .L95                               	@ successors = .L102
	b .L102
.L106:                               	@ predecessors = .L95                               	@ successors = .L102
	ldr r10, [fp, #-4]
	ldr r4, [fp, #-8]
	ldr r5, addr_0_array
	mov r6, #4
	mul r7, r4, r6
	add r8, r5, r7
	str r10, [r8]
	b .L102
.Lmmerge_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #36
.L110:                               	@ successors = .L115
	mov r4, #1
	str r4, [fp, #-36]
	b .L115
.L115:                               	@ predecessors = .L110, .L227                               	@ successors = .L118, .L119
	ldr r5, [fp, #-36]
	cmp r5, #0
	bne .L119
	b .L118
.L116:                               	@ predecessors = .L118
	mov r0, #0
	b .Lmain_END
.L118:                               	@ predecessors = .L115                               	@ successors = .L116
	b .L116
.L119:                               	@ predecessors = .L115                               	@ successors = .L127
	ldr r6, [fp, #-36]
	sub r7, r6, #1
	str r7, [fp, #-36]
	mov r8, #4
	ldr r9, addr_0_n
	str r8, [r9]
	mov r10, #10
	str r10, [fp, #-32]
	mov r4, #0
	str r4, [fp, #-20]
	mov r5, #0
	str r5, [fp, #-16]
	ldr r6, addr_0_n
	ldr r7, [r6]
	mov r0, r7
	bl init
	ldr r8, addr_0_n
	ldr r9, [r8]
	ldr r10, addr_0_n
	ldr r4, [r10]
	mul r5, r9, r4
	add r6, r5, #1
	str r6, [fp, #-12]
	b .L127
.L127:                               	@ predecessors = .L119, .L133                               	@ successors = .L131, .L132
	ldr r7, [fp, #-20]
	ldr r8, [fp, #-32]
	cmp r7, r8
	blt .L132
	b .L131
.L128:                               	@ predecessors = .L131                               	@ successors = .L229, .L230
	ldr r10, [fp, #-16]
	cmp r10, #0
	beq .L230
	b .L229
.L131:                               	@ predecessors = .L127                               	@ successors = .L128
	b .L128
.L132:                               	@ predecessors = .L127                               	@ successors = .L135, .L136
	bl getint
	mov r9, r0
	str r9, [fp, #-28]
	bl getint
	mov r4, r0
	str r4, [fp, #-24]
	ldr r5, [fp, #-16]
	cmp r5, #0
	beq .L136
	b .L135
.L133:                               	@ predecessors = .L135, .L210                               	@ successors = .L127
	ldr r6, [fp, #-20]
	add r7, r6, #1
	str r7, [fp, #-20]
	b .L127
.L135:                               	@ predecessors = .L132                               	@ successors = .L133
	b .L133
.L136:                               	@ predecessors = .L132                               	@ successors = .L146, .L147
	ldr r8, addr_0_n
	ldr r10, [r8]
	ldr r9, [fp, #-28]
	sub r4, r9, #1
	mul r5, r10, r4
	ldr r6, [fp, #-24]
	add r7, r5, r6
	str r7, [fp, #-8]
	ldr r8, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r10, addr_0_array
	mov r4, #4
	mul r5, r9, r4
	add r6, r10, r5
	str r8, [r6]
	ldr r7, [fp, #-28]
	cmp r7, #1
	beq .L147
	b .L146
.L144:                               	@ predecessors = .L146, .L147                               	@ successors = .L153, .L154
	ldr r9, [fp, #-28]
	ldr r4, addr_0_n
	ldr r10, [r4]
	cmp r9, r10
	beq .L154
	b .L153
.L146:                               	@ predecessors = .L136                               	@ successors = .L144
	b .L144
.L147:                               	@ predecessors = .L136                               	@ successors = .L144
	ldr r5, addr_0_array
	mov r8, r5
	mov r6, #0
	str r6, [r8]
	ldr r7, [fp, #-8]
	mov r1, #0
	mov r0, r7
	bl mmerge
	b .L144
.L150:                               	@ predecessors = .L153, .L154                               	@ successors = .L163, .L164
	ldr r4, [fp, #-24]
	ldr r9, addr_0_n
	ldr r10, [r9]
	cmp r4, r10
	blt .L164
	b .L163
.L153:                               	@ predecessors = .L144                               	@ successors = .L150
	b .L150
.L154:                               	@ predecessors = .L144                               	@ successors = .L150
	ldr r5, [fp, #-12]
	ldr r8, [fp, #-12]
	ldr r6, addr_0_array
	mov r7, #4
	mul r9, r8, r7
	add r4, r6, r9
	str r5, [r4]
	ldr r10, [fp, #-8]
	ldr r8, [fp, #-12]
	mov r1, r8
	mov r0, r10
	bl mmerge
	b .L150
.L160:                               	@ predecessors = .L163, .L168, .L169                               	@ successors = .L174, .L175
	ldr r7, [fp, #-24]
	cmp r7, #1
	bgt .L175
	b .L174
.L163:                               	@ predecessors = .L150                               	@ successors = .L160
	b .L160
.L164:                               	@ predecessors = .L150                               	@ successors = .L168, .L169
	ldr r6, [fp, #-8]
	add r9, r6, #1
	ldr r5, addr_0_array
	mov r4, #4
	mul r8, r9, r4
	add r10, r5, r8
	ldr r7, [r10]
	cmp r7, #-1
	bne .L169
	b .L168
.L168:                               	@ predecessors = .L164                               	@ successors = .L160
	b .L160
.L169:                               	@ predecessors = .L164                               	@ successors = .L160
	ldr r6, [fp, #-8]
	ldr r9, [fp, #-8]
	add r4, r9, #1
	mov r1, r4
	mov r0, r6
	bl mmerge
	b .L160
.L172:                               	@ predecessors = .L174, .L179, .L180                               	@ successors = .L186, .L187
	ldr r5, [fp, #-28]
	ldr r8, addr_0_n
	ldr r10, [r8]
	cmp r5, r10
	blt .L187
	b .L186
.L174:                               	@ predecessors = .L160                               	@ successors = .L172
	b .L172
.L175:                               	@ predecessors = .L160                               	@ successors = .L179, .L180
	ldr r7, [fp, #-8]
	sub r9, r7, #1
	ldr r4, addr_0_array
	mov r6, #4
	mul r8, r9, r6
	add r5, r4, r8
	ldr r10, [r5]
	cmp r10, #-1
	bne .L180
	b .L179
.L179:                               	@ predecessors = .L175                               	@ successors = .L172
	b .L172
.L180:                               	@ predecessors = .L175                               	@ successors = .L172
	ldr r7, [fp, #-8]
	ldr r9, [fp, #-8]
	sub r6, r9, #1
	mov r1, r6
	mov r0, r7
	bl mmerge
	b .L172
.L183:                               	@ predecessors = .L186, .L192, .L193                               	@ successors = .L199, .L200
	ldr r4, [fp, #-28]
	cmp r4, #1
	bgt .L200
	b .L199
.L186:                               	@ predecessors = .L172                               	@ successors = .L183
	b .L183
.L187:                               	@ predecessors = .L172                               	@ successors = .L192, .L193
	ldr r8, [fp, #-8]
	ldr r5, addr_0_n
	ldr r10, [r5]
	add r9, r8, r10
	ldr r6, addr_0_array
	mov r7, #4
	mul r4, r9, r7
	add r5, r6, r4
	ldr r8, [r5]
	cmp r8, #-1
	bne .L193
	b .L192
.L192:                               	@ predecessors = .L187                               	@ successors = .L183
	b .L183
.L193:                               	@ predecessors = .L187                               	@ successors = .L183
	ldr r10, [fp, #-8]
	ldr r9, [fp, #-8]
	ldr r7, addr_0_n
	ldr r6, [r7]
	add r4, r9, r6
	mov r1, r4
	mov r0, r10
	bl mmerge
	b .L183
.L197:                               	@ predecessors = .L205, .L206, .L199                               	@ successors = .L213, .L214
	ldr r5, addr_0_array
	mov r8, r5
	ldr r7, [r8]
	cmp r7, #-1
	bne .L214
	b .L213
.L199:                               	@ predecessors = .L183                               	@ successors = .L197
	b .L197
.L200:                               	@ predecessors = .L183                               	@ successors = .L205, .L206
	ldr r9, [fp, #-8]
	ldr r6, addr_0_n
	ldr r4, [r6]
	sub r10, r9, r4
	ldr r5, addr_0_array
	mov r8, #4
	mul r7, r10, r8
	add r6, r5, r7
	ldr r9, [r6]
	cmp r9, #-1
	bne .L206
	b .L205
.L205:                               	@ predecessors = .L200                               	@ successors = .L197
	b .L197
.L206:                               	@ predecessors = .L200                               	@ successors = .L197
	ldr r4, [fp, #-8]
	ldr r10, [fp, #-8]
	ldr r8, addr_0_n
	ldr r5, [r8]
	sub r7, r10, r5
	mov r1, r7
	mov r0, r4
	bl mmerge
	b .L197
.L210:                               	@ predecessors = .L213, .L218, .L221, .L222                               	@ successors = .L133
	b .L133
.L213:                               	@ predecessors = .L197                               	@ successors = .L210
	b .L210
.L214:                               	@ predecessors = .L197                               	@ successors = .L218, .L219
	ldr r6, [fp, #-12]
	ldr r9, addr_0_array
	mov r8, #4
	mul r10, r6, r8
	add r5, r9, r10
	ldr r7, [r5]
	cmp r7, #-1
	bne .L219
	b .L218
.L218:                               	@ predecessors = .L214                               	@ successors = .L210
	b .L210
.L219:                               	@ predecessors = .L214                               	@ successors = .L221, .L222
	mov r0, #0
	bl findfa
	mov r4, r0
	ldr r6, [fp, #-12]
	mov r0, r6
	bl findfa
	mov r8, r0
	cmp r4, r8
	beq .L222
	b .L221
.L221:                               	@ predecessors = .L219                               	@ successors = .L210
	b .L210
.L222:                               	@ predecessors = .L219                               	@ successors = .L210
	mov r9, #1
	str r9, [fp, #-16]
	ldr r10, [fp, #-20]
	add r5, r10, #1
	str r5, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl putint
	mov r0, #10
	bl putch
	b .L210
.L227:                               	@ predecessors = .L229, .L230                               	@ successors = .L115
	b .L115
.L229:                               	@ predecessors = .L128                               	@ successors = .L227
	b .L227
.L230:                               	@ predecessors = .L128                               	@ successors = .L227
	mov r0, #-1
	bl putint
	mov r0, #10
	bl putch
	b .L227
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
addr_0_n:
	.word n
addr_0_array:
	.word array
.LiteralPool0:
addr_1_n:
	.word n
addr_1_array:
	.word array
