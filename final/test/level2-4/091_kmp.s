	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global get_next
	.type get_next , %function
get_next:
	push {r4, r5, r6, r7, r8, r9, r10, fp}
	mov fp, sp
	sub sp, sp, #16
.L28:                               	@ successors = .L35
	str r0, [fp, #-16]
	str r1, [fp, #-12]
	ldr r4, [fp, #-12]
	mov r5, r4
	mov r6, #-1
	str r6, [r5]
	mov r7, #0
	str r7, [fp, #-8]
	mov r8, #-1
	str r8, [fp, #-4]
	b .L35
.L35:                               	@ predecessors = .L28, .L43                               	@ successors = .L41, .L42
	ldr r9, [fp, #-16]
	ldr r10, [fp, #-8]
	mov r4, #4
	mul r5, r10, r4
	add r6, r9, r5
	ldr r7, [r6]
	cmp r7, #0
	bne .L42
	b .L41
.L36:                               	@ predecessors = .L41
	b .Lget_next_END
.L41:                               	@ predecessors = .L35                               	@ successors = .L36
	b .L36
.L42:                               	@ predecessors = .L35                               	@ successors = .L45, .L56
	ldr r8, [fp, #-4]
	cmp r8, #-1
	beq .L56
	b .L45
.L43:                               	@ predecessors = .L56, .L63                               	@ successors = .L35
	b .L35
.L45:                               	@ predecessors = .L42                               	@ successors = .L46
	b .L46
.L46:                               	@ predecessors = .L45                               	@ successors = .L55, .L56
	ldr r10, [fp, #-16]
	ldr r4, [fp, #-8]
	mov r9, #4
	mul r5, r4, r9
	add r6, r10, r5
	ldr r7, [r6]
	ldr r8, [fp, #-16]
	ldr r4, [fp, #-4]
	mov r9, #4
	mul r10, r4, r9
	add r5, r8, r10
	ldr r6, [r5]
	cmp r7, r6
	beq .L56
	b .L55
.L55:                               	@ predecessors = .L46                               	@ successors = .L63
	b .L63
.L56:                               	@ predecessors = .L42, .L46                               	@ successors = .L43
	ldr r4, [fp, #-4]
	add r9, r4, #1
	str r9, [fp, #-4]
	ldr r8, [fp, #-8]
	add r10, r8, #1
	str r10, [fp, #-8]
	ldr r5, [fp, #-4]
	ldr r7, [fp, #-12]
	ldr r6, [fp, #-8]
	mov r4, #4
	mul r9, r6, r4
	add r8, r7, r9
	str r5, [r8]
	b .L43
.L63:                               	@ predecessors = .L55                               	@ successors = .L43
	ldr r10, [fp, #-12]
	ldr r6, [fp, #-4]
	mov r4, #4
	mul r7, r6, r4
	add r9, r10, r7
	ldr r5, [r9]
	str r5, [fp, #-4]
	b .L43
.Lget_next_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp}
	bx lr

	.global KMP
	.type KMP , %function
KMP:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =16400
	sub sp, sp, r4
.L68:                               	@ successors = .L76
	ldr r4, =-16400
	str r0, [fp, r4]
	ldr r5, =-16396
	str r1, [fp, r5]
	ldr r6, =-16400
	ldr r7, [fp, r6]
	ldr r8, =-16392
	add r9, fp, r8
	mov r10, r9
	mov r1, r10
	mov r0, r7
	bl get_next
	mov r4, #0
	str r4, [fp, #-8]
	mov r5, #0
	str r5, [fp, #-4]
	b .L76
.L76:                               	@ predecessors = .L68, .L84                               	@ successors = .L82, .L83
	ldr r6, =-16396
	ldr r8, [fp, r6]
	ldr r9, [fp, #-4]
	mov r10, #4
	mul r7, r9, r10
	add r4, r8, r7
	ldr r5, [r4]
	cmp r5, #0
	bne .L83
	b .L82
.L77:                               	@ predecessors = .L82
	mov r0, #-1
	b .LKMP_END
.L82:                               	@ predecessors = .L76                               	@ successors = .L77
	b .L77
.L83:                               	@ predecessors = .L76                               	@ successors = .L93, .L94
	ldr r6, =-16400
	ldr r9, [fp, r6]
	ldr r10, [fp, #-8]
	mov r8, #4
	mul r7, r10, r8
	add r4, r9, r7
	ldr r5, [r4]
	ldr r6, =-16396
	ldr r10, [fp, r6]
	ldr r8, [fp, #-4]
	mov r9, #4
	mul r7, r8, r9
	add r4, r10, r7
	ldr r6, [r4]
	cmp r5, r6
	beq .L94
	b .L93
.L84:                               	@ predecessors = .L97, .L109                               	@ successors = .L76
	b .L76
.L93:                               	@ predecessors = .L83                               	@ successors = .L105
	b .L105
.L94:                               	@ predecessors = .L83                               	@ successors = .L102, .L103
	ldr r8, [fp, #-8]
	add r9, r8, #1
	str r9, [fp, #-8]
	ldr r10, [fp, #-4]
	add r7, r10, #1
	str r7, [fp, #-4]
	ldr r4, =-16400
	ldr r5, [fp, r4]
	ldr r6, [fp, #-8]
	mov r8, #4
	mul r9, r6, r8
	add r10, r5, r9
	ldr r7, [r10]
	cmp r7, #0
	beq .L103
	b .L102
.L97:                               	@ predecessors = .L102                               	@ successors = .L84
	b .L84
.L102:                               	@ predecessors = .L94                               	@ successors = .L97
	b .L97
.L103:                               	@ predecessors = .L94
	ldr r4, [fp, #-4]
	mov r0, r4
	b .LKMP_END
.L105:                               	@ predecessors = .L93                               	@ successors = .L111, .L112
	ldr r6, [fp, #-8]
	ldr r8, =-16392
	add r5, fp, r8
	mov r9, #4
	mul r10, r6, r9
	add r7, r5, r10
	ldr r4, [r7]
	str r4, [fp, #-8]
	ldr r8, [fp, #-8]
	cmp r8, #-1
	beq .L112
	b .L111
.L109:                               	@ predecessors = .L111, .L112                               	@ successors = .L84
	b .L84
.L111:                               	@ predecessors = .L105                               	@ successors = .L109
	b .L109
.L112:                               	@ predecessors = .L105                               	@ successors = .L109
	ldr r6, [fp, #-8]
	add r9, r6, #1
	str r9, [fp, #-8]
	ldr r5, [fp, #-4]
	add r10, r5, #1
	str r10, [fp, #-4]
	b .L109
.LKMP_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global read_str
	.type read_str , %function
read_str:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #8
.L115:                               	@ successors = .L118
	str r0, [fp, #-8]
	mov r4, #0
	str r4, [fp, #-4]
	b .L118
.L118:                               	@ predecessors = .L115, .L124                               	@ successors = .L120
	b .L120
.L119:                               	@ predecessors = .L130
	ldr r5, [fp, #-8]
	ldr r6, [fp, #-4]
	mov r7, #4
	mul r8, r6, r7
	add r9, r5, r8
	mov r10, #0
	str r10, [r9]
	ldr r4, [fp, #-4]
	mov r0, r4
	b .Lread_str_END
.L120:                               	@ predecessors = .L118                               	@ successors = .L129, .L130
	bl getch
	mov r6, r0
	ldr r7, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r8, #4
	mul r9, r5, r8
	add r10, r7, r9
	str r6, [r10]
	ldr r4, [fp, #-8]
	ldr r5, [fp, #-4]
	mov r8, #4
	mul r7, r5, r8
	add r9, r4, r7
	ldr r6, [r9]
	cmp r6, #10
	beq .L130
	b .L129
.L124:                               	@ predecessors = .L129, .L131                               	@ successors = .L118
	ldr r10, [fp, #-4]
	add r5, r10, #1
	str r5, [fp, #-4]
	b .L118
.L129:                               	@ predecessors = .L120                               	@ successors = .L124
	b .L124
.L130:                               	@ predecessors = .L120                               	@ successors = .L119
	b .L119
.L131:                               	@ successors = .L124
	b .L124
.Lread_str_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #32768
.L137:
	ldr r4, =-32768
	add r5, fp, r4
	mov r6, r5
	mov r0, r6
	bl read_str
	mov r7, r0
	ldr r8, =-16384
	add r9, fp, r8
	mov r10, r9
	mov r0, r10
	bl read_str
	mov r4, r0
	ldr r5, =-32768
	add r6, fp, r5
	mov r7, r6
	ldr r8, =-16384
	add r9, fp, r8
	mov r10, r9
	mov r1, r10
	mov r0, r7
	bl KMP
	mov r4, r0
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

