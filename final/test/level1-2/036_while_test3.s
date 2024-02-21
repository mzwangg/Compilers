	.arch armv8-a
	.fpu vfpv3-d16
	.fpu neon
	.arch_extension crc
	.arm
	.data
	.global e
	.align 4
	.size e, 4
e:
	.word 0
	.global f
	.align 4
	.size f, 4
f:
	.word 0
	.global h
	.align 4
	.size h, 4
h:
	.word 0
	.global g
	.align 4
	.size g, 4
g:
	.word 0
	.text
	.global EightWhile
	.type EightWhile , %function
EightWhile:
	push {r4, r5, r6, r7, fp}
	mov fp, sp
	sub sp, sp, #16
.L31:                               	@ successors = .L36
	mov r4, #5
	str r4, [fp, #-16]
	mov r4, #6
	str r4, [fp, #-12]
	mov r4, #7
	str r4, [fp, #-8]
	mov r4, #10
	str r4, [fp, #-4]
	b .L36
.L36:                               	@ predecessors = .L31, .L43                               	@ successors = .L39, .L40
	ldr r4, [fp, #-16]
	cmp r4, #20
	blt .L40
	b .L39
.L37:                               	@ predecessors = .L39
	ldr r4, [fp, #-16]
	ldr r5, [fp, #-12]
	ldr r6, [fp, #-4]
	add r7, r5, r6
	add r5, r4, r7
	ldr r4, [fp, #-8]
	add r6, r5, r4
	ldr r4, addr_0_e
	ldr r5, [r4]
	ldr r4, [fp, #-4]
	add r7, r5, r4
	ldr r4, addr_0_g
	ldr r5, [r4]
	sub r4, r7, r5
	ldr r5, addr_0_h
	ldr r7, [r5]
	add r5, r4, r7
	sub r4, r6, r5
	mov r0, r4
	b .LEightWhile_END
.L39:                               	@ predecessors = .L36                               	@ successors = .L37
	b .L37
.L40:                               	@ predecessors = .L36                               	@ successors = .L42
	ldr r4, [fp, #-16]
	add r5, r4, #3
	str r5, [fp, #-16]
	b .L42
.L42:                               	@ predecessors = .L40, .L49                               	@ successors = .L45, .L46
	ldr r4, [fp, #-12]
	cmp r4, #10
	blt .L46
	b .L45
.L43:                               	@ predecessors = .L45                               	@ successors = .L36
	ldr r4, [fp, #-12]
	sub r5, r4, #2
	str r5, [fp, #-12]
	b .L36
.L45:                               	@ predecessors = .L42                               	@ successors = .L43
	b .L43
.L46:                               	@ predecessors = .L42                               	@ successors = .L48
	ldr r4, [fp, #-12]
	add r5, r4, #1
	str r5, [fp, #-12]
	b .L48
.L48:                               	@ predecessors = .L46, .L55                               	@ successors = .L51, .L52
	ldr r4, [fp, #-8]
	cmp r4, #7
	beq .L52
	b .L51
.L49:                               	@ predecessors = .L51                               	@ successors = .L42
	ldr r4, [fp, #-8]
	add r5, r4, #1
	str r5, [fp, #-8]
	b .L42
.L51:                               	@ predecessors = .L48                               	@ successors = .L49
	b .L49
.L52:                               	@ predecessors = .L48                               	@ successors = .L54
	ldr r4, [fp, #-8]
	sub r5, r4, #1
	str r5, [fp, #-8]
	b .L54
.L54:                               	@ predecessors = .L52, .L61                               	@ successors = .L57, .L58
	ldr r4, [fp, #-4]
	cmp r4, #20
	blt .L58
	b .L57
.L55:                               	@ predecessors = .L57                               	@ successors = .L48
	ldr r4, [fp, #-4]
	sub r5, r4, #1
	str r5, [fp, #-4]
	b .L48
.L57:                               	@ predecessors = .L54                               	@ successors = .L55
	b .L55
.L58:                               	@ predecessors = .L54                               	@ successors = .L60
	ldr r4, [fp, #-4]
	add r5, r4, #3
	str r5, [fp, #-4]
	b .L60
.L60:                               	@ predecessors = .L58, .L67                               	@ successors = .L63, .L64
	ldr r4, addr_0_e
	ldr r5, [r4]
	cmp r5, #1
	bgt .L64
	b .L63
.L61:                               	@ predecessors = .L63                               	@ successors = .L54
	ldr r4, addr_0_e
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, addr_0_e
	str r4, [r5]
	b .L54
.L63:                               	@ predecessors = .L60                               	@ successors = .L61
	b .L61
.L64:                               	@ predecessors = .L60                               	@ successors = .L66
	ldr r4, addr_0_e
	ldr r5, [r4]
	sub r4, r5, #1
	ldr r5, addr_0_e
	str r4, [r5]
	b .L66
.L66:                               	@ predecessors = .L64, .L73                               	@ successors = .L69, .L70
	ldr r4, addr_0_f
	ldr r5, [r4]
	cmp r5, #2
	bgt .L70
	b .L69
.L67:                               	@ predecessors = .L69                               	@ successors = .L60
	ldr r4, addr_0_f
	ldr r5, [r4]
	add r4, r5, #1
	ldr r5, addr_0_f
	str r4, [r5]
	b .L60
.L69:                               	@ predecessors = .L66                               	@ successors = .L67
	b .L67
.L70:                               	@ predecessors = .L66                               	@ successors = .L72
	ldr r4, addr_0_f
	ldr r5, [r4]
	sub r4, r5, #2
	ldr r5, addr_0_f
	str r4, [r5]
	b .L72
.L72:                               	@ predecessors = .L70, .L79                               	@ successors = .L75, .L76
	ldr r4, addr_0_g
	ldr r5, [r4]
	cmp r5, #3
	blt .L76
	b .L75
.L73:                               	@ predecessors = .L75                               	@ successors = .L66
	ldr r4, addr_0_g
	ldr r5, [r4]
	sub r4, r5, #8
	ldr r5, addr_0_g
	str r4, [r5]
	b .L66
.L75:                               	@ predecessors = .L72                               	@ successors = .L73
	b .L73
.L76:                               	@ predecessors = .L72                               	@ successors = .L78
	ldr r4, addr_0_g
	ldr r5, [r4]
	add r4, r5, #10
	ldr r5, addr_0_g
	str r4, [r5]
	b .L78
.L78:                               	@ predecessors = .L76, .L82                               	@ successors = .L81, .L82
	ldr r4, addr_0_h
	ldr r5, [r4]
	cmp r5, #10
	blt .L82
	b .L81
.L79:                               	@ predecessors = .L81                               	@ successors = .L72
	ldr r4, addr_0_h
	ldr r5, [r4]
	sub r4, r5, #1
	ldr r5, addr_0_h
	str r4, [r5]
	b .L72
.L81:                               	@ predecessors = .L78                               	@ successors = .L79
	b .L79
.L82:                               	@ predecessors = .L78                               	@ successors = .L78
	ldr r4, addr_0_h
	ldr r5, [r4]
	add r4, r5, #8
	ldr r5, addr_0_h
	str r4, [r5]
	b .L78
.LEightWhile_END:
	mov sp, fp
	pop {r4, r5, r6, r7, fp}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, fp, lr}
	mov fp, sp
.L99:
	mov r4, #1
	ldr r5, addr_0_g
	str r4, [r5]
	mov r4, #2
	ldr r5, addr_0_h
	str r4, [r5]
	mov r4, #4
	ldr r5, addr_0_e
	str r4, [r5]
	mov r4, #6
	ldr r5, addr_0_f
	str r4, [r5]
	bl EightWhile
	mov r4, r0
	mov r0, r4
	pop {r4, r5, fp, lr}
	bx lr

addr_0_e:
	.word e
addr_0_f:
	.word f
addr_0_h:
	.word h
addr_0_g:
	.word g
