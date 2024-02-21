	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.global g
	.align 4
	.size g, 4
g:
	.word 0
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L27:
	str r0, [fp, #-4]
	ldr r4, addr_0_g
	ldr r5, [r4]
	ldr r6, [fp, #-4]
	add r7, r5, r6
	ldr r8, addr_0_g
	str r7, [r8]
	ldr r9, addr_0_g
	ldr r10, [r9]
	mov r0, r10
	bl putint
	ldr r4, addr_0_g
	ldr r5, [r4]
	mov r0, r5
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L33:                               	@ successors = .L37, .L38
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	cmp r5, #10
	bgt .L38
	b .L37
.L35:                               	@ predecessors = .L41, .L42                               	@ successors = .L45, .L46
	bl getint
	mov r6, r0
	str r6, [fp, #-4]
	ldr r7, [fp, #-4]
	cmp r7, #11
	bgt .L46
	b .L45
.L37:                               	@ predecessors = .L33                               	@ successors = .L42
	b .L42
.L38:                               	@ predecessors = .L33                               	@ successors = .L40, .L41
	ldr r8, [fp, #-4]
	mov r0, r8
	bl func
	mov r9, r0
	cmp r9, #0
	bne .L41
	b .L40
.L40:                               	@ predecessors = .L38                               	@ successors = .L42
	b .L42
.L41:                               	@ predecessors = .L38                               	@ successors = .L35
	mov r10, #1
	str r10, [fp, #-4]
	b .L35
.L42:                               	@ predecessors = .L37, .L40                               	@ successors = .L35
	mov r4, #0
	str r4, [fp, #-4]
	b .L35
.L43:                               	@ predecessors = .L49, .L50                               	@ successors = .L53, .L57
	bl getint
	mov r5, r0
	str r5, [fp, #-4]
	ldr r6, [fp, #-4]
	cmp r6, #99
	ble .L57
	b .L53
.L45:                               	@ predecessors = .L35                               	@ successors = .L50
	b .L50
.L46:                               	@ predecessors = .L35                               	@ successors = .L48, .L49
	ldr r7, [fp, #-4]
	mov r0, r7
	bl func
	mov r8, r0
	cmp r8, #0
	bne .L49
	b .L48
.L48:                               	@ predecessors = .L46                               	@ successors = .L50
	b .L50
.L49:                               	@ predecessors = .L46                               	@ successors = .L43
	mov r9, #1
	str r9, [fp, #-4]
	b .L43
.L50:                               	@ predecessors = .L45, .L48                               	@ successors = .L43
	mov r10, #0
	str r10, [fp, #-4]
	b .L43
.L51:                               	@ predecessors = .L57, .L58                               	@ successors = .L61, .L65
	bl getint
	mov r4, r0
	str r4, [fp, #-4]
	ldr r5, [fp, #-4]
	cmp r5, #100
	ble .L65
	b .L61
.L53:                               	@ predecessors = .L43                               	@ successors = .L54
	b .L54
.L54:                               	@ predecessors = .L53                               	@ successors = .L56, .L57
	ldr r6, [fp, #-4]
	mov r0, r6
	bl func
	mov r7, r0
	cmp r7, #0
	bne .L57
	b .L56
.L56:                               	@ predecessors = .L54                               	@ successors = .L58
	b .L58
.L57:                               	@ predecessors = .L43, .L54                               	@ successors = .L51
	mov r8, #1
	str r8, [fp, #-4]
	b .L51
.L58:                               	@ predecessors = .L56                               	@ successors = .L51
	mov r9, #0
	str r9, [fp, #-4]
	b .L51
.L59:                               	@ predecessors = .L65, .L66                               	@ successors = .L68, .L69
	mov r0, #99
	bl func
	mov r10, r0
	cmp r10, #0
	beq .L69
	b .L68
.L61:                               	@ predecessors = .L51                               	@ successors = .L62
	b .L62
.L62:                               	@ predecessors = .L61                               	@ successors = .L64, .L65
	ldr r4, [fp, #-4]
	mov r0, r4
	bl func
	mov r5, r0
	cmp r5, #0
	bne .L65
	b .L64
.L64:                               	@ predecessors = .L62                               	@ successors = .L66
	b .L66
.L65:                               	@ predecessors = .L51, .L62                               	@ successors = .L59
	mov r6, #1
	str r6, [fp, #-4]
	b .L59
.L66:                               	@ predecessors = .L64                               	@ successors = .L59
	mov r7, #0
	str r7, [fp, #-4]
	b .L59
.L67:                               	@ predecessors = .L71, .L72
	mov r0, #0
	b .Lmain_END
.L68:                               	@ predecessors = .L59                               	@ successors = .L72
	b .L72
.L69:                               	@ predecessors = .L59                               	@ successors = .L70, .L71
	mov r0, #100
	bl func
	mov r8, r0
	cmp r8, #0
	bne .L71
	b .L70
.L70:                               	@ predecessors = .L69                               	@ successors = .L72
	b .L72
.L71:                               	@ predecessors = .L69                               	@ successors = .L67
	mov r9, #1
	str r9, [fp, #-4]
	b .L67
.L72:                               	@ predecessors = .L68, .L70                               	@ successors = .L67
	mov r10, #0
	str r10, [fp, #-4]
	b .L67
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_g:
	.word g
