	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global my_getint
	.type my_getint , %function
my_getint:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L26:                               	@ successors = .L29
	mov r4, #0
	str r4, [fp, #-8]
	b .L29
.L29:                               	@ predecessors = .L26, .L32, .L38                               	@ successors = .L31
	b .L31
.L30:                               	@ predecessors = .L40                               	@ successors = .L43
	ldr r5, [fp, #-4]
	str r5, [fp, #-8]
	b .L43
.L31:                               	@ predecessors = .L29                               	@ successors = .L34, .L38
	bl getch
	mov r6, r0
	sub r7, r6, #48
	str r7, [fp, #-4]
	ldr r8, [fp, #-4]
	cmp r8, #0
	blt .L38
	b .L34
.L32:                               	@ predecessors = .L39, .L41                               	@ successors = .L29
	b .L29
.L34:                               	@ predecessors = .L31                               	@ successors = .L35
	b .L35
.L35:                               	@ predecessors = .L34                               	@ successors = .L37, .L38
	ldr r9, [fp, #-4]
	cmp r9, #9
	bgt .L38
	b .L37
.L37:                               	@ predecessors = .L35                               	@ successors = .L40
	b .L40
.L38:                               	@ predecessors = .L31, .L35                               	@ successors = .L29
	b .L29
.L39:                               	@ successors = .L32
	b .L32
.L40:                               	@ predecessors = .L37                               	@ successors = .L30
	b .L30
.L41:                               	@ successors = .L32
	b .L32
.L43:                               	@ predecessors = .L30, .L46                               	@ successors = .L45
	b .L45
.L44:                               	@ predecessors = .L55
	ldr r10, [fp, #-8]
	mov r0, r10
	b .Lmy_getint_END
.L45:                               	@ predecessors = .L43                               	@ successors = .L48, .L49
	bl getch
	mov r4, r0
	sub r5, r4, #48
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	cmp r6, #0
	bge .L49
	b .L48
.L46:                               	@ predecessors = .L52, .L56                               	@ successors = .L43
	b .L43
.L48:                               	@ predecessors = .L45                               	@ successors = .L55
	b .L55
.L49:                               	@ predecessors = .L45                               	@ successors = .L51, .L52
	ldr r7, [fp, #-4]
	cmp r7, #9
	ble .L52
	b .L51
.L51:                               	@ predecessors = .L49                               	@ successors = .L55
	b .L55
.L52:                               	@ predecessors = .L49                               	@ successors = .L46
	ldr r8, [fp, #-8]
	mov r9, #10
	mul r10, r8, r9
	ldr r4, [fp, #-4]
	add r5, r10, r4
	str r5, [fp, #-8]
	b .L46
.L55:                               	@ predecessors = .L48, .L51                               	@ successors = .L44
	b .L44
.L56:                               	@ successors = .L46
	b .L46
.Lmy_getint_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global my_putint
	.type my_putint , %function
my_putint:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #72
.L58:                               	@ successors = .L62
	str r0, [fp, #-72]
	mov r4, #0
	str r4, [fp, #-4]
	b .L62
.L62:                               	@ predecessors = .L58, .L66                               	@ successors = .L65, .L66
	ldr r5, [fp, #-72]
	cmp r5, #0
	bgt .L66
	b .L65
.L63:                               	@ predecessors = .L65                               	@ successors = .L72
	b .L72
.L65:                               	@ predecessors = .L62                               	@ successors = .L63
	b .L63
.L66:                               	@ predecessors = .L62                               	@ successors = .L62
	ldr r6, [fp, #-72]
	mov r7, #10
	sdiv r8, r6, r7
	mul r9, r8, r7
	sub r10, r6, r9
	add r4, r10, #48
	ldr r5, [fp, #-4]
	add r7, fp, #-68
	mov r8, #4
	mul r6, r5, r8
	add r9, r7, r6
	str r4, [r9]
	ldr r10, [fp, #-72]
	mov r5, #10
	sdiv r8, r10, r5
	str r8, [fp, #-72]
	ldr r7, [fp, #-4]
	add r6, r7, #1
	str r6, [fp, #-4]
	b .L62
.L72:                               	@ predecessors = .L63, .L76                               	@ successors = .L75, .L76
	ldr r4, [fp, #-4]
	cmp r4, #0
	bgt .L76
	b .L75
.L73:                               	@ predecessors = .L75
	b .Lmy_putint_END
.L75:                               	@ predecessors = .L72                               	@ successors = .L73
	b .L73
.L76:                               	@ predecessors = .L72                               	@ successors = .L72
	ldr r9, [fp, #-4]
	sub r10, r9, #1
	str r10, [fp, #-4]
	ldr r5, [fp, #-4]
	add r8, fp, #-68
	mov r7, #4
	mul r6, r5, r7
	add r4, r8, r6
	ldr r9, [r4]
	mov r0, r9
	bl putch
	b .L72
.Lmy_putint_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L81:                               	@ successors = .L83
	bl my_getint
	mov r4, r0
	str r4, [fp, #-8]
	b .L83
.L83:                               	@ predecessors = .L81, .L87                               	@ successors = .L86, .L87
	ldr r5, [fp, #-8]
	cmp r5, #0
	bgt .L87
	b .L86
.L84:                               	@ predecessors = .L86
	mov r0, #0
	b .Lmain_END
.L86:                               	@ predecessors = .L83                               	@ successors = .L84
	b .L84
.L87:                               	@ predecessors = .L83                               	@ successors = .L83
	bl my_getint
	mov r6, r0
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	mov r0, r7
	bl my_putint
	mov r0, #10
	bl putch
	ldr r8, [fp, #-8]
	sub r9, r8, #1
	str r9, [fp, #-8]
	b .L83
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, fp, lr}
	bx lr

