	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global func
	.type func , %function
func:
	push {r4, r5, r6, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L19:                               	@ successors = .L23, .L24
	str r0, [fp, #-4]
	ldr r4, [fp, #-4]
	cmp r4, #50
	ble .L24
	b .L23
.L21:
	b .Lfunc_END
.L23:                               	@ predecessors = .L19                               	@ successors = .L26
	b .L26
.L24:                               	@ predecessors = .L19
	ldr r5, [fp, #-4]
	mov r0, r5
	bl putint
	mov r0, #1
	b .Lfunc_END
.L26:                               	@ predecessors = .L23
	ldr r6, [fp, #-4]
	mov r0, r6
	bl putint
	mov r0, #0
.Lfunc_END:
	mov sp, fp
	pop {r4, r5, r6, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #4
.L28:                               	@ successors = .L31, .L36
	mov r0, #0
	bl func
	mov r4, r0
	cmp r4, #1
	beq .L36
	b .L31
.L30:                               	@ predecessors = .L36, .L37                               	@ successors = .L39, .L40
	mov r0, #50
	bl func
	mov r5, r0
	cmp r5, #1
	beq .L40
	b .L39
.L31:                               	@ predecessors = .L28                               	@ successors = .L32
	b .L32
.L32:                               	@ predecessors = .L31                               	@ successors = .L33, .L34
	mov r0, #50
	bl func
	mov r6, r0
	cmp r6, #1
	beq .L34
	b .L33
.L33:                               	@ predecessors = .L32                               	@ successors = .L37
	b .L37
.L34:                               	@ predecessors = .L32                               	@ successors = .L35, .L36
	mov r0, #100
	bl func
	mov r7, r0
	cmp r7, #0
	beq .L36
	b .L35
.L35:                               	@ predecessors = .L34                               	@ successors = .L37
	b .L37
.L36:                               	@ predecessors = .L28, .L34                               	@ successors = .L30
	mov r8, #0
	str r8, [fp, #-4]
	b .L30
.L37:                               	@ predecessors = .L33, .L35                               	@ successors = .L30
	mov r9, #1
	str r9, [fp, #-4]
	b .L30
.L38:                               	@ predecessors = .L44, .L45
	mov r0, #0
	b .Lmain_END
.L39:                               	@ predecessors = .L30                               	@ successors = .L42
	b .L42
.L40:                               	@ predecessors = .L30                               	@ successors = .L41, .L44
	mov r0, #40
	bl func
	mov r10, r0
	cmp r10, #1
	beq .L44
	b .L41
.L41:                               	@ predecessors = .L40                               	@ successors = .L42
	b .L42
.L42:                               	@ predecessors = .L39, .L41                               	@ successors = .L43, .L44
	mov r0, #1
	bl func
	mov r4, r0
	cmp r4, #1
	beq .L44
	b .L43
.L43:                               	@ predecessors = .L42                               	@ successors = .L45
	b .L45
.L44:                               	@ predecessors = .L40, .L42                               	@ successors = .L38
	mov r5, #0
	str r5, [fp, #-4]
	b .L38
.L45:                               	@ predecessors = .L43                               	@ successors = .L38
	mov r6, #1
	str r6, [fp, #-4]
	b .L38
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

