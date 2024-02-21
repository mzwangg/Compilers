	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global ptr
	.align 4
	.size ptr, 4
ptr:
	.word 0
	.comm	program, 131072, 4
	.comm	tape, 262144, 4
	.text
	.global read_program
	.type read_program , %function
read_program:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L30:                               	@ successors = .L33
	mov r4, #0
	str r4, [fp, #-8]
	bl getint
	mov r5, r0
	str r5, [fp, #-4]
	b .L33
.L33:                               	@ predecessors = .L30, .L38                               	@ successors = .L37, .L38
	ldr r6, [fp, #-8]
	ldr r7, [fp, #-4]
	cmp r6, r7
	blt .L38
	b .L37
.L34:                               	@ predecessors = .L37
	ldr r8, [fp, #-8]
	ldr r9, addr_0_program
	mov r10, #4
	mul r4, r8, r10
	add r5, r9, r4
	mov r6, #0
	str r6, [r5]
	b .Lread_program_END
.L37:                               	@ predecessors = .L33                               	@ successors = .L34
	b .L34
.L38:                               	@ predecessors = .L33                               	@ successors = .L33
	bl getch
	mov r7, r0
	ldr r8, [fp, #-8]
	ldr r10, addr_0_program
	mov r9, #4
	mul r4, r8, r9
	add r5, r10, r4
	str r7, [r5]
	ldr r6, [fp, #-8]
	add r8, r6, #1
	str r8, [fp, #-8]
	b .L33
.Lread_program_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global interpret
	.type interpret , %function
interpret:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #16
.L44:                               	@ successors = .L49
	str r0, [fp, #-16]
	mov r4, #0
	str r4, [fp, #-4]
	b .L49
.L49:                               	@ predecessors = .L44, .L61                               	@ successors = .L55, .L56
	ldr r5, [fp, #-16]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r8, r6, r7
	add r9, r5, r8
	ldr r10, [r9]
	cmp r10, #0
	bne .L56
	b .L55
.L50:                               	@ predecessors = .L55
	b .Linterpret_END
.L55:                               	@ predecessors = .L49                               	@ successors = .L50
	b .L50
.L56:                               	@ predecessors = .L49                               	@ successors = .L63, .L64
	ldr r4, [fp, #-16]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r5, r6, r7
	add r8, r4, r5
	ldr r9, [r8]
	str r9, [fp, #-12]
	ldr r10, [fp, #-12]
	cmp r10, #62
	beq .L64
	b .L63
.L61:                               	@ predecessors = .L64, .L67                               	@ successors = .L49
	ldr r6, [fp, #-4]
	add r7, r6, #1
	str r7, [fp, #-4]
	b .L49
.L63:                               	@ predecessors = .L56                               	@ successors = .L66
	b .L66
.L64:                               	@ predecessors = .L56                               	@ successors = .L61
	ldr r4, addr_0_ptr
	ldr r5, [r4]
	add r8, r5, #1
	ldr r9, addr_0_ptr
	str r8, [r9]
	b .L61
.L66:                               	@ predecessors = .L63                               	@ successors = .L69, .L70
	ldr r10, [fp, #-12]
	cmp r10, #60
	beq .L70
	b .L69
.L67:                               	@ predecessors = .L70, .L73                               	@ successors = .L61
	b .L61
.L69:                               	@ predecessors = .L66                               	@ successors = .L72
	b .L72
.L70:                               	@ predecessors = .L66                               	@ successors = .L67
	ldr r6, addr_0_ptr
	ldr r7, [r6]
	sub r4, r7, #1
	ldr r5, addr_0_ptr
	str r4, [r5]
	b .L67
.L72:                               	@ predecessors = .L69                               	@ successors = .L75, .L76
	ldr r8, [fp, #-12]
	cmp r8, #43
	beq .L76
	b .L75
.L73:                               	@ predecessors = .L76, .L83                               	@ successors = .L67
	b .L67
.L75:                               	@ predecessors = .L72                               	@ successors = .L82
	b .L82
.L76:                               	@ predecessors = .L72                               	@ successors = .L73
	ldr r9, addr_0_ptr
	ldr r10, [r9]
	ldr r6, addr_0_tape
	mov r7, #4
	mul r4, r10, r7
	add r5, r6, r4
	ldr r8, [r5]
	add r9, r8, #1
	ldr r10, addr_0_ptr
	ldr r7, [r10]
	ldr r6, addr_0_tape
	mov r4, #4
	mul r5, r7, r4
	add r8, r6, r5
	str r9, [r8]
	b .L73
.L82:                               	@ predecessors = .L75                               	@ successors = .L85, .L86
	ldr r10, [fp, #-12]
	cmp r10, #45
	beq .L86
	b .L85
.L83:                               	@ predecessors = .L86, .L93                               	@ successors = .L73
	b .L73
.L85:                               	@ predecessors = .L82                               	@ successors = .L92
	b .L92
.L86:                               	@ predecessors = .L82                               	@ successors = .L83
	ldr r7, addr_0_ptr
	ldr r4, [r7]
	ldr r6, addr_0_tape
	mov r5, #4
	mul r9, r4, r5
	add r8, r6, r9
	ldr r10, [r8]
	sub r7, r10, #1
	ldr r4, addr_0_ptr
	ldr r5, [r4]
	ldr r6, addr_0_tape
	mov r9, #4
	mul r8, r5, r9
	add r10, r6, r8
	str r7, [r10]
	b .L83
.L92:                               	@ predecessors = .L85                               	@ successors = .L95, .L96
	ldr r4, [fp, #-12]
	cmp r4, #46
	beq .L96
	b .L95
.L93:                               	@ predecessors = .L96, .L101                               	@ successors = .L83
	b .L83
.L95:                               	@ predecessors = .L92                               	@ successors = .L100
	b .L100
.L96:                               	@ predecessors = .L92                               	@ successors = .L93
	ldr r5, addr_0_ptr
	ldr r9, [r5]
	ldr r6, addr_0_tape
	mov r8, #4
	mul r7, r9, r8
	add r10, r6, r7
	ldr r4, [r10]
	mov r0, r4
	bl putch
	b .L93
.L100:                               	@ predecessors = .L95                               	@ successors = .L103, .L104
	ldr r5, [fp, #-12]
	cmp r5, #44
	beq .L104
	b .L103
.L101:                               	@ predecessors = .L104, .L108                               	@ successors = .L93
	b .L93
.L103:                               	@ predecessors = .L100                               	@ successors = .L107
	b .L107
.L104:                               	@ predecessors = .L100                               	@ successors = .L101
	bl getch
	mov r9, r0
	ldr r8, addr_0_ptr
	ldr r6, [r8]
	ldr r7, addr_0_tape
	mov r10, #4
	mul r4, r6, r10
	add r5, r7, r4
	str r9, [r5]
	b .L101
.L107:                               	@ predecessors = .L103                               	@ successors = .L110, .L111
	ldr r8, [fp, #-12]
	cmp r8, #93
	beq .L111
	b .L110
.L108:                               	@ predecessors = .L110, .L115, .L118                               	@ successors = .L101
	b .L101
.L110:                               	@ predecessors = .L107                               	@ successors = .L108
	b .L108
.L111:                               	@ predecessors = .L107                               	@ successors = .L115, .L116
	ldr r6, addr_0_ptr
	ldr r10, [r6]
	ldr r7, addr_0_tape
	mov r4, #4
	mul r9, r10, r4
	add r5, r7, r9
	ldr r8, [r5]
	cmp r8, #0
	bne .L116
	b .L115
.L115:                               	@ predecessors = .L111                               	@ successors = .L108
	b .L108
.L116:                               	@ predecessors = .L111                               	@ successors = .L117
	mov r6, #1
	str r6, [fp, #-8]
	b .L117
.L117:                               	@ predecessors = .L116, .L127                               	@ successors = .L120, .L121
	ldr r10, [fp, #-8]
	cmp r10, #0
	bgt .L121
	b .L120
.L118:                               	@ predecessors = .L120                               	@ successors = .L108
	b .L108
.L120:                               	@ predecessors = .L117                               	@ successors = .L118
	b .L118
.L121:                               	@ predecessors = .L117                               	@ successors = .L129, .L130
	ldr r4, [fp, #-4]
	sub r7, r4, #1
	str r7, [fp, #-4]
	ldr r9, [fp, #-16]
	ldr r5, [fp, #-4]
	mov r8, #4
	mul r6, r5, r8
	add r10, r9, r6
	ldr r4, [r10]
	str r4, [fp, #-12]
	ldr r7, [fp, #-12]
	cmp r7, #91
	beq .L130
	b .L129
.L127:                               	@ predecessors = .L130, .L133                               	@ successors = .L117
	b .L117
.L129:                               	@ predecessors = .L121                               	@ successors = .L132
	b .L132
.L130:                               	@ predecessors = .L121                               	@ successors = .L127
	ldr r5, [fp, #-8]
	sub r8, r5, #1
	str r8, [fp, #-8]
	b .L127
.L132:                               	@ predecessors = .L129                               	@ successors = .L135, .L136
	ldr r9, [fp, #-12]
	cmp r9, #93
	beq .L136
	b .L135
.L133:                               	@ predecessors = .L135, .L136                               	@ successors = .L127
	b .L127
.L135:                               	@ predecessors = .L132                               	@ successors = .L133
	b .L133
.L136:                               	@ predecessors = .L132                               	@ successors = .L133
	ldr r6, [fp, #-8]
	add r10, r6, #1
	str r10, [fp, #-8]
	b .L133
.Linterpret_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
.L139:
	bl read_program
	ldr r4, addr_0_program
	mov r5, r4
	mov r0, r5
	bl interpret
	mov r0, #0
	pop {r4, r5, fp, lr}
	bx lr

addr_0_ptr:
	.word ptr
addr_0_program:
	.word program
addr_0_tape:
	.word tape
