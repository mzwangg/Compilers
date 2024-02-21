	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global v2
	.align 4
	.size v2, 4
v2:
	.word 0
	.global m
	.align 4
	.size m, 4
m:
	.word 0
	.global v1
	.align 4
	.size v1, 4
v1:
	.word 0
	.global n
	.align 4
	.size n, 4
n:
	.word 0
	.global w
	.align 4
	.size w, 4
w:
	.word 0
	.comm	dis, 64, 4
	.comm	book, 64, 4
	.comm	e, 1024, 4
	.text
	.global Dijkstra
	.type Dijkstra , %function
Dijkstra:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #24
.L34:                               	@ successors = .L37
	mov r4, #1
	str r4, [fp, #-24]
	b .L37
.L37:                               	@ predecessors = .L34, .L42                               	@ successors = .L41, .L42
	ldr r5, [fp, #-24]
	ldr r6, addr_0_n
	ldr r7, [r6]
	cmp r5, r7
	ble .L42
	b .L41
.L38:                               	@ predecessors = .L41                               	@ successors = .L53
	ldr r8, addr_0_book
	mov r9, #1
	mov r10, #4
	mul r4, r9, r10
	add r6, r8, r4
	mov r5, #1
	str r5, [r6]
	mov r7, #1
	str r7, [fp, #-24]
	b .L53
.L41:                               	@ predecessors = .L37                               	@ successors = .L38
	b .L38
.L42:                               	@ predecessors = .L37                               	@ successors = .L37
	ldr r9, addr_0_e
	mov r10, #1
	mov r8, #64
	mul r4, r10, r8
	add r6, r9, r4
	ldr r5, [fp, #-24]
	mov r7, #4
	mul r10, r5, r7
	add r8, r6, r10
	ldr r9, [r8]
	ldr r4, [fp, #-24]
	ldr r5, addr_0_dis
	mov r7, #4
	mul r6, r4, r7
	add r10, r5, r6
	str r9, [r10]
	ldr r8, [fp, #-24]
	ldr r4, addr_0_book
	mov r7, #4
	mul r5, r8, r7
	add r6, r4, r5
	mov r9, #0
	str r9, [r6]
	ldr r10, [fp, #-24]
	add r8, r10, #1
	str r8, [fp, #-24]
	b .L37
.L53:                               	@ predecessors = .L38, .L89                               	@ successors = .L57, .L58
	ldr r7, [fp, #-24]
	ldr r4, addr_0_n
	ldr r5, [r4]
	sub r6, r5, #1
	cmp r7, r6
	ble .L58
	b .L57
.L54:                               	@ predecessors = .L57
	b .LDijkstra_END
.L57:                               	@ predecessors = .L53                               	@ successors = .L54
	b .L54
.L58:                               	@ predecessors = .L53                               	@ successors = .L62
	ldr r9, =65535
	str r9, [fp, #-16]
	mov r10, #0
	str r10, [fp, #-12]
	mov r8, #1
	str r8, [fp, #-8]
	b .L62
.L62:                               	@ predecessors = .L58, .L68                               	@ successors = .L66, .L67
	ldr r4, [fp, #-8]
	ldr r5, addr_0_n
	ldr r7, [r5]
	cmp r4, r7
	ble .L67
	b .L66
.L63:                               	@ predecessors = .L66                               	@ successors = .L88
	ldr r6, [fp, #-12]
	ldr r9, addr_0_book
	mov r10, #4
	mul r8, r6, r10
	add r5, r9, r8
	mov r4, #1
	str r4, [r5]
	mov r7, #1
	str r7, [fp, #-4]
	b .L88
.L66:                               	@ predecessors = .L62                               	@ successors = .L63
	b .L63
.L67:                               	@ predecessors = .L62                               	@ successors = .L73, .L74
	ldr r6, [fp, #-16]
	ldr r10, [fp, #-8]
	ldr r9, addr_0_dis
	mov r8, #4
	mul r5, r10, r8
	add r4, r9, r5
	ldr r7, [r4]
	cmp r6, r7
	bgt .L74
	b .L73
.L68:                               	@ predecessors = .L73, .L78, .L79                               	@ successors = .L62
	ldr r10, [fp, #-8]
	add r8, r10, #1
	str r8, [fp, #-8]
	b .L62
.L73:                               	@ predecessors = .L67                               	@ successors = .L68
	b .L68
.L74:                               	@ predecessors = .L67                               	@ successors = .L78, .L79
	ldr r9, [fp, #-8]
	ldr r5, addr_0_book
	mov r4, #4
	mul r6, r9, r4
	add r7, r5, r6
	ldr r10, [r7]
	cmp r10, #0
	beq .L79
	b .L78
.L78:                               	@ predecessors = .L74                               	@ successors = .L68
	b .L68
.L79:                               	@ predecessors = .L74                               	@ successors = .L68
	ldr r8, [fp, #-8]
	ldr r9, addr_0_dis
	mov r4, #4
	mul r5, r8, r4
	add r6, r9, r5
	ldr r7, [r6]
	str r7, [fp, #-16]
	ldr r10, [fp, #-8]
	str r10, [fp, #-12]
	b .L68
.L88:                               	@ predecessors = .L63, .L94                               	@ successors = .L92, .L93
	ldr r8, [fp, #-4]
	ldr r4, addr_0_n
	ldr r9, [r4]
	cmp r8, r9
	ble .L93
	b .L92
.L89:                               	@ predecessors = .L92                               	@ successors = .L53
	ldr r5, [fp, #-24]
	add r6, r5, #1
	str r6, [fp, #-24]
	b .L53
.L92:                               	@ predecessors = .L88                               	@ successors = .L89
	b .L89
.L93:                               	@ predecessors = .L88                               	@ successors = .L100, .L101
	ldr r7, [fp, #-12]
	ldr r10, addr_0_e
	mov r4, #64
	mul r8, r7, r4
	add r9, r10, r8
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r7, r5, r6
	add r4, r9, r7
	ldr r10, [r4]
	ldr r8, =65535
	cmp r10, r8
	blt .L101
	b .L100
.L94:                               	@ predecessors = .L100, .L102                               	@ successors = .L88
	ldr r5, [fp, #-4]
	add r6, r5, #1
	str r6, [fp, #-4]
	b .L88
.L100:                               	@ predecessors = .L93                               	@ successors = .L94
	b .L94
.L101:                               	@ predecessors = .L93                               	@ successors = .L114, .L115
	ldr r9, [fp, #-4]
	ldr r7, addr_0_dis
	mov r4, #4
	mul r10, r9, r4
	add r8, r7, r10
	ldr r5, [r8]
	ldr r6, [fp, #-12]
	ldr r9, addr_0_dis
	mov r4, #4
	mul r7, r6, r4
	add r10, r9, r7
	ldr r8, [r10]
	ldr r6, [fp, #-12]
	ldr r4, addr_0_e
	mov r9, #64
	mul r7, r6, r9
	add r10, r4, r7
	ldr r6, [fp, #-4]
	mov r9, #4
	mul r4, r6, r9
	add r7, r10, r4
	ldr r6, [r7]
	add r9, r8, r6
	cmp r5, r9
	bgt .L115
	b .L114
.L102:                               	@ predecessors = .L114, .L115                               	@ successors = .L94
	b .L94
.L114:                               	@ predecessors = .L101                               	@ successors = .L102
	b .L102
.L115:                               	@ predecessors = .L101                               	@ successors = .L102
	ldr r10, [fp, #-12]
	ldr r4, addr_0_dis
	mov r7, #4
	mul r8, r10, r7
	add r6, r4, r8
	ldr r5, [r6]
	ldr r9, [fp, #-12]
	ldr r10, addr_0_e
	mov r7, #64
	mul r4, r9, r7
	add r8, r10, r4
	ldr r6, [fp, #-4]
	mov r9, #4
	mul r7, r6, r9
	add r10, r8, r7
	ldr r4, [r10]
	add r6, r5, r4
	ldr r9, [fp, #-4]
	ldr r8, addr_0_dis
	mov r7, #4
	mul r10, r9, r7
	add r5, r8, r10
	str r6, [r5]
	b .L102
.LDijkstra_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L128:                               	@ successors = .L130
	bl getint
	mov r4, r0
	ldr r5, addr_0_n
	str r4, [r5]
	bl getint
	mov r6, r0
	ldr r7, addr_0_m
	str r6, [r7]
	mov r8, #1
	str r8, [fp, #-16]
	b .L130
.L130:                               	@ predecessors = .L128, .L138                               	@ successors = .L134, .L135
	ldr r9, [fp, #-16]
	ldr r10, addr_0_n
	ldr r4, [r10]
	cmp r9, r4
	ble .L135
	b .L134
.L131:                               	@ predecessors = .L134                               	@ successors = .L159
	mov r5, #1
	str r5, [fp, #-16]
	b .L159
.L134:                               	@ predecessors = .L130                               	@ successors = .L131
	b .L131
.L135:                               	@ predecessors = .L130                               	@ successors = .L137
	mov r6, #1
	str r6, [fp, #-12]
	b .L137
.L137:                               	@ predecessors = .L135, .L143                               	@ successors = .L141, .L142
	ldr r7, [fp, #-12]
	ldr r8, addr_0_n
	ldr r10, [r8]
	cmp r7, r10
	ble .L142
	b .L141
.L138:                               	@ predecessors = .L141                               	@ successors = .L130
	ldr r9, [fp, #-16]
	add r4, r9, #1
	str r4, [fp, #-16]
	b .L130
.L141:                               	@ predecessors = .L137                               	@ successors = .L138
	b .L138
.L142:                               	@ predecessors = .L137                               	@ successors = .L146, .L147
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-12]
	cmp r5, r6
	beq .L147
	b .L146
.L143:                               	@ predecessors = .L147, .L152                               	@ successors = .L137
	ldr r8, [fp, #-12]
	add r7, r8, #1
	str r7, [fp, #-12]
	b .L137
.L146:                               	@ predecessors = .L142                               	@ successors = .L152
	b .L152
.L147:                               	@ predecessors = .L142                               	@ successors = .L143
	ldr r10, [fp, #-16]
	ldr r9, addr_0_e
	mov r4, #64
	mul r5, r10, r4
	add r6, r9, r5
	ldr r8, [fp, #-12]
	mov r7, #4
	mul r10, r8, r7
	add r4, r6, r10
	mov r9, #0
	str r9, [r4]
	b .L143
.L152:                               	@ predecessors = .L146                               	@ successors = .L143
	ldr r5, [fp, #-16]
	ldr r8, addr_0_e
	mov r7, #64
	mul r6, r5, r7
	add r10, r8, r6
	ldr r4, [fp, #-12]
	mov r9, #4
	mul r5, r4, r9
	add r7, r10, r5
	ldr r8, =65535
	str r8, [r7]
	b .L143
.L159:                               	@ predecessors = .L131, .L164                               	@ successors = .L163, .L164
	ldr r6, [fp, #-16]
	ldr r4, addr_0_m
	ldr r9, [r4]
	cmp r6, r9
	ble .L164
	b .L163
.L160:                               	@ predecessors = .L163                               	@ successors = .L172
	bl Dijkstra
	mov r10, #1
	str r10, [fp, #-16]
	b .L172
.L163:                               	@ predecessors = .L159                               	@ successors = .L160
	b .L160
.L164:                               	@ predecessors = .L159                               	@ successors = .L159
	bl getint
	mov r5, r0
	str r5, [fp, #-8]
	bl getint
	mov r7, r0
	str r7, [fp, #-4]
	bl getint
	mov r8, r0
	ldr r4, [fp, #-8]
	ldr r6, addr_0_e
	mov r9, #64
	mul r10, r4, r9
	add r5, r6, r10
	ldr r7, [fp, #-4]
	mov r4, #4
	mul r9, r7, r4
	add r6, r5, r9
	str r8, [r6]
	ldr r10, [fp, #-16]
	add r7, r10, #1
	str r7, [fp, #-16]
	b .L159
.L172:                               	@ predecessors = .L160, .L177                               	@ successors = .L176, .L177
	ldr r4, [fp, #-16]
	ldr r5, addr_0_n
	ldr r9, [r5]
	cmp r4, r9
	ble .L177
	b .L176
.L173:                               	@ predecessors = .L176
	mov r0, #10
	bl putch
	mov r0, #0
	b .Lmain_END
.L176:                               	@ predecessors = .L172                               	@ successors = .L173
	b .L173
.L177:                               	@ predecessors = .L172                               	@ successors = .L172
	ldr r8, [fp, #-16]
	ldr r6, addr_0_dis
	mov r10, #4
	mul r7, r8, r10
	add r5, r6, r7
	ldr r4, [r5]
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	ldr r9, [fp, #-16]
	add r8, r9, #1
	str r8, [fp, #-16]
	b .L172
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	b .LiteralPool0
.LTORG
addr_0_v2:
	.word v2
addr_0_m:
	.word m
addr_0_v1:
	.word v1
addr_0_n:
	.word n
addr_0_w:
	.word w
addr_0_dis:
	.word dis
addr_0_book:
	.word book
addr_0_e:
	.word e
.LiteralPool0:
addr_1_v2:
	.word v2
addr_1_m:
	.word m
addr_1_v1:
	.word v1
addr_1_n:
	.word n
addr_1_w:
	.word w
addr_1_dis:
	.word dis
addr_1_book:
	.word book
addr_1_e:
	.word e
