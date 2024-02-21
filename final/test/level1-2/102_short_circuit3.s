	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
	.global d
	.align 4
	.size d, 4
d:
	.word 0
	.global b
	.align 4
	.size b, 4
b:
	.word 0
	.global a
	.align 4
	.size a, 4
a:
	.word 0
	.text
	.global set_a
	.type set_a , %function
set_a:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #4
.L68:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_0_a
	str r4, [r5]
	ldr r4, addr_0_a
	ldr r5, [r4]
	mov r0, r5
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global set_b
	.type set_b , %function
set_b:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #4
.L72:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_0_b
	str r4, [r5]
	ldr r4, addr_0_b
	ldr r5, [r4]
	mov r0, r5
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global set_d
	.type set_d , %function
set_d:
	push {r4, r5, fp}
	mov fp, sp
	sub sp, sp, #4
.L76:
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	ldr r5, addr_0_d
	str r4, [r5]
	ldr r4, addr_0_d
	ldr r5, [r4]
	mov r0, r5
	mov sp, fp
	pop {r4, r5, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L80:                               	@ successors = .L82, .L83
	mov r4, #2
	ldr r5, addr_0_a
	str r4, [r5]
	mov r4, #3
	ldr r5, addr_0_b
	str r4, [r5]
	mov r0, #0
	bl set_a
	mov r4, r0
	cmp r4, #0
	bne .L83
	b .L82
.L81:                               	@ predecessors = .L82, .L84, .L85                               	@ successors = .L89, .L90
	ldr r4, addr_0_a
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, addr_0_b
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	mov r4, #2
	ldr r5, addr_0_a
	str r4, [r5]
	mov r4, #3
	ldr r5, addr_0_b
	str r4, [r5]
	mov r0, #0
	bl set_a
	mov r4, r0
	cmp r4, #0
	bne .L90
	b .L89
.L82:                               	@ predecessors = .L80                               	@ successors = .L81
	b .L81
.L83:                               	@ predecessors = .L80                               	@ successors = .L84, .L85
	mov r0, #1
	bl set_b
	mov r4, r0
	cmp r4, #0
	bne .L85
	b .L84
.L84:                               	@ predecessors = .L83                               	@ successors = .L81
	b .L81
.L85:                               	@ predecessors = .L83                               	@ successors = .L81
	b .L81
.L88:                               	@ predecessors = .L89, .L91, .L92                               	@ successors = .L96
	ldr r4, addr_0_a
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	ldr r4, addr_0_b
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	mov r4, #2
	ldr r5, addr_0_d
	str r4, [r5]
	b .L96
.L89:                               	@ predecessors = .L81                               	@ successors = .L88
	b .L88
.L90:                               	@ predecessors = .L81                               	@ successors = .L91, .L92
	mov r0, #1
	bl set_b
	mov r4, r0
	cmp r4, #0
	bne .L92
	b .L91
.L91:                               	@ predecessors = .L90                               	@ successors = .L88
	b .L88
.L92:                               	@ predecessors = .L90                               	@ successors = .L88
	b .L88
.L95:                               	@ predecessors = .L97, .L98                               	@ successors = .L101
	ldr r4, addr_0_d
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	b .L101
.L96:                               	@ predecessors = .L88                               	@ successors = .L97, .L98
	mov r0, #3
	bl set_d
	mov r4, r0
	cmp r4, #0
	bne .L98
	b .L97
.L97:                               	@ predecessors = .L96                               	@ successors = .L95
	b .L95
.L98:                               	@ predecessors = .L96                               	@ successors = .L95
	b .L95
.L100:                               	@ predecessors = .L101                               	@ successors = .L104
	ldr r4, addr_0_d
	ldr r5, [r4]
	mov r0, r5
	bl putint
	mov r0, #10
	bl putch
	b .L104
.L101:                               	@ predecessors = .L95                               	@ successors = .L100
	b .L100
.L103:                               	@ predecessors = .L104                               	@ successors = .L105
	b .L105
.L104:                               	@ predecessors = .L100                               	@ successors = .L103
	mov r0, #65
	bl putch
	b .L103
.L105:                               	@ predecessors = .L103                               	@ successors = .L106
	b .L106
.L106:                               	@ predecessors = .L105                               	@ successors = .L108
	b .L108
.L107:                               	@ predecessors = .L108                               	@ successors = .L109
	b .L109
.L108:                               	@ predecessors = .L106                               	@ successors = .L107
	mov r0, #68
	bl putch
	b .L107
.L109:                               	@ predecessors = .L107                               	@ successors = .L111
	b .L111
.L110:                               	@ predecessors = .L111                               	@ successors = .L117
	mov r0, #10
	bl putch
	mov r4, #0
	str r4, [fp, #-20]
	mov r4, #1
	str r4, [fp, #-16]
	mov r4, #2
	str r4, [fp, #-12]
	mov r4, #3
	str r4, [fp, #-8]
	mov r4, #4
	str r4, [fp, #-4]
	b .L117
.L111:                               	@ predecessors = .L109                               	@ successors = .L110
	mov r0, #70
	bl putch
	b .L110
.L117:                               	@ predecessors = .L110, .L124                               	@ successors = .L120, .L121
	ldr r4, [fp, #-20]
	cmp r4, #0
	bne .L121
	b .L120
.L118:                               	@ predecessors = .L120, .L123                               	@ successors = .L127, .L131
	ldr r4, [fp, #-20]
	cmp r4, #0
	bne .L131
	b .L127
.L120:                               	@ predecessors = .L117                               	@ successors = .L118
	b .L118
.L121:                               	@ predecessors = .L117                               	@ successors = .L123, .L124
	ldr r4, [fp, #-16]
	cmp r4, #0
	bne .L124
	b .L123
.L123:                               	@ predecessors = .L121                               	@ successors = .L118
	b .L118
.L124:                               	@ predecessors = .L121                               	@ successors = .L117
	mov r0, #32
	bl putch
	b .L117
.L125:                               	@ predecessors = .L130, .L131                               	@ successors = .L135, .L140
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-16]
	cmp r4, r5
	bge .L140
	b .L135
.L127:                               	@ predecessors = .L118                               	@ successors = .L128
	b .L128
.L128:                               	@ predecessors = .L127                               	@ successors = .L130, .L131
	ldr r4, [fp, #-16]
	cmp r4, #0
	bne .L131
	b .L130
.L130:                               	@ predecessors = .L128                               	@ successors = .L125
	b .L125
.L131:                               	@ predecessors = .L118, .L128                               	@ successors = .L125
	mov r0, #67
	bl putch
	b .L125
.L132:                               	@ predecessors = .L139, .L140                               	@ successors = .L144, .L145
	ldr r4, [fp, #-12]
	ldr r5, [fp, #-16]
	cmp r4, r5
	bge .L145
	b .L144
.L135:                               	@ predecessors = .L125                               	@ successors = .L136
	b .L136
.L136:                               	@ predecessors = .L135                               	@ successors = .L139, .L140
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-20]
	cmp r4, r5
	ble .L140
	b .L139
.L139:                               	@ predecessors = .L136                               	@ successors = .L132
	b .L132
.L140:                               	@ predecessors = .L125, .L136                               	@ successors = .L132
	mov r0, #72
	bl putch
	b .L132
.L141:                               	@ predecessors = .L144, .L148, .L149                               	@ successors = .L153, .L154
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-16]
	cmp r5, #0
	movweq r5, #1
	movwne r5, #0
	uxtb r6, r5
	cmp r4, r6
	beq .L154
	b .L153
.L144:                               	@ predecessors = .L132                               	@ successors = .L141
	b .L141
.L145:                               	@ predecessors = .L132                               	@ successors = .L148, .L149
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-8]
	cmp r4, r5
	bne .L149
	b .L148
.L148:                               	@ predecessors = .L145                               	@ successors = .L141
	b .L141
.L149:                               	@ predecessors = .L145                               	@ successors = .L141
	mov r0, #73
	bl putch
	b .L141
.L150:                               	@ predecessors = .L161, .L162                               	@ successors = .L166, .L175
	ldr r4, [fp, #-20]
	ldr r5, [fp, #-16]
	cmp r5, #0
	movweq r5, #1
	movwne r5, #0
	uxtb r6, r5
	cmp r4, r6
	beq .L175
	b .L166
.L153:                               	@ predecessors = .L141                               	@ successors = .L158
	b .L158
.L154:                               	@ predecessors = .L141                               	@ successors = .L157, .L162
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-8]
	cmp r4, r5
	blt .L162
	b .L157
.L157:                               	@ predecessors = .L154                               	@ successors = .L158
	b .L158
.L158:                               	@ predecessors = .L153, .L157                               	@ successors = .L161, .L162
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	cmp r4, r5
	bge .L162
	b .L161
.L161:                               	@ predecessors = .L158                               	@ successors = .L150
	b .L150
.L162:                               	@ predecessors = .L154, .L158                               	@ successors = .L150
	mov r0, #74
	bl putch
	b .L150
.L163:                               	@ predecessors = .L170, .L174, .L175
	mov r0, #10
	bl putch
	mov r0, #0
	b .Lmain_END
.L166:                               	@ predecessors = .L150                               	@ successors = .L167
	b .L167
.L167:                               	@ predecessors = .L166                               	@ successors = .L170, .L171
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-8]
	cmp r4, r5
	blt .L171
	b .L170
.L170:                               	@ predecessors = .L167                               	@ successors = .L163
	b .L163
.L171:                               	@ predecessors = .L167                               	@ successors = .L174, .L175
	ldr r4, [fp, #-4]
	ldr r5, [fp, #-4]
	cmp r4, r5
	bge .L175
	b .L174
.L174:                               	@ predecessors = .L171                               	@ successors = .L163
	b .L163
.L175:                               	@ predecessors = .L150, .L171                               	@ successors = .L163
	mov r0, #75
	bl putch
	b .L163
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, fp, lr}
	bx lr

addr_0_d:
	.word d
addr_0_b:
	.word b
addr_0_a:
	.word a
