	.arch armv8-a
	.arch_extension crc
	.arm
	.data
	.comm	queue, 40, 4
	.comm	indegree, 40, 4
	.comm	map, 400, 4
	.text
	.global topo
	.type topo , %function
topo:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #20
.L21:                               	@ successors = .L27
	str r0, [fp, #-20]
	mov r4, #0
	str r4, [fp, #-16]
	mov r5, #0
	str r5, [fp, #-12]
	mov r6, #1
	str r6, [fp, #-8]
	mov r7, #1
	str r7, [fp, #-4]
	b .L27
.L27:                               	@ predecessors = .L21, .L55                               	@ successors = .L31, .L32
	ldr r8, [fp, #-8]
	ldr r9, [fp, #-20]
	cmp r8, r9
	ble .L32
	b .L31
.L28:                               	@ predecessors = .L31                               	@ successors = .L75
	mov r10, #0
	str r10, [fp, #-8]
	b .L75
.L31:                               	@ predecessors = .L27                               	@ successors = .L28
	b .L28
.L32:                               	@ predecessors = .L27                               	@ successors = .L33
	mov r4, #1
	str r4, [fp, #-4]
	b .L33
.L33:                               	@ predecessors = .L32, .L39                               	@ successors = .L37, .L38
	ldr r5, [fp, #-4]
	ldr r6, [fp, #-20]
	cmp r5, r6
	ble .L38
	b .L37
.L34:                               	@ predecessors = .L37, .L44                               	@ successors = .L54
	ldr r7, [fp, #-16]
	ldr r8, [fp, #-12]
	ldr r9, addr_0_queue
	mov r10, #4
	mul r4, r8, r10
	add r5, r9, r4
	str r7, [r5]
	ldr r6, [fp, #-12]
	add r8, r6, #1
	str r8, [fp, #-12]
	ldr r10, [fp, #-16]
	ldr r9, addr_0_indegree
	mov r4, #4
	mul r7, r10, r4
	add r5, r9, r7
	mov r6, #-1
	str r6, [r5]
	mov r8, #1
	str r8, [fp, #-4]
	b .L54
.L37:                               	@ predecessors = .L33                               	@ successors = .L34
	b .L34
.L38:                               	@ predecessors = .L33                               	@ successors = .L43, .L44
	ldr r10, [fp, #-4]
	ldr r4, addr_0_indegree
	mov r9, #4
	mul r7, r10, r9
	add r5, r4, r7
	ldr r6, [r5]
	cmp r6, #0
	beq .L44
	b .L43
.L39:                               	@ predecessors = .L43, .L46                               	@ successors = .L33
	ldr r8, [fp, #-4]
	add r10, r8, #1
	str r10, [fp, #-4]
	b .L33
.L43:                               	@ predecessors = .L38                               	@ successors = .L39
	b .L39
.L44:                               	@ predecessors = .L38                               	@ successors = .L34
	ldr r9, [fp, #-4]
	str r9, [fp, #-16]
	b .L34
.L46:                               	@ successors = .L39
	b .L39
.L54:                               	@ predecessors = .L34, .L60                               	@ successors = .L58, .L59
	ldr r4, [fp, #-4]
	ldr r7, [fp, #-20]
	cmp r4, r7
	ble .L59
	b .L58
.L55:                               	@ predecessors = .L58                               	@ successors = .L27
	ldr r5, [fp, #-8]
	add r6, r5, #1
	str r6, [fp, #-8]
	b .L27
.L58:                               	@ predecessors = .L54                               	@ successors = .L55
	b .L55
.L59:                               	@ predecessors = .L54                               	@ successors = .L66, .L67
	ldr r8, [fp, #-16]
	ldr r10, addr_0_map
	mov r9, #40
	mul r4, r8, r9
	add r7, r10, r4
	ldr r5, [fp, #-4]
	mov r6, #4
	mul r8, r5, r6
	add r9, r7, r8
	ldr r10, [r9]
	cmp r10, #0
	bne .L67
	b .L66
.L60:                               	@ predecessors = .L66, .L67                               	@ successors = .L54
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L54
.L66:                               	@ predecessors = .L59                               	@ successors = .L60
	b .L60
.L67:                               	@ predecessors = .L59                               	@ successors = .L60
	ldr r6, [fp, #-4]
	ldr r7, addr_0_indegree
	mov r8, #4
	mul r9, r6, r8
	add r10, r7, r9
	ldr r4, [r10]
	sub r5, r4, #1
	ldr r6, [fp, #-4]
	ldr r8, addr_0_indegree
	mov r7, #4
	mul r9, r6, r7
	add r10, r8, r9
	str r5, [r10]
	b .L60
.L75:                               	@ predecessors = .L28, .L80                               	@ successors = .L79, .L80
	ldr r4, [fp, #-8]
	ldr r6, [fp, #-20]
	cmp r4, r6
	blt .L80
	b .L79
.L76:                               	@ predecessors = .L79
	b .Ltopo_END
.L79:                               	@ predecessors = .L75                               	@ successors = .L76
	b .L76
.L80:                               	@ predecessors = .L75                               	@ successors = .L75
	ldr r7, [fp, #-8]
	ldr r8, addr_0_queue
	mov r9, #4
	mul r5, r7, r9
	add r10, r8, r5
	ldr r4, [r10]
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	ldr r6, [fp, #-8]
	add r7, r6, #1
	str r7, [fp, #-8]
	b .L75
.Ltopo_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	sub sp, sp, #12
.L85:                               	@ successors = .L89
	mov r4, #1
	str r4, [fp, #-4]
	mov r5, #5
	str r5, [fp, #-12]
	b .L89
.L89:                               	@ predecessors = .L85, .L96                               	@ successors = .L93, .L94
	ldr r6, [fp, #-4]
	ldr r7, [fp, #-12]
	cmp r6, r7
	ble .L94
	b .L93
.L90:                               	@ predecessors = .L93
	ldr r8, [fp, #-12]
	mov r0, r8
	bl topo
	mov r0, #0
	b .Lmain_END
.L93:                               	@ predecessors = .L89                               	@ successors = .L90
	b .L90
.L94:                               	@ predecessors = .L89                               	@ successors = .L95
	bl getint
	mov r9, r0
	str r9, [fp, #-8]
	b .L95
.L95:                               	@ predecessors = .L94, .L99                               	@ successors = .L98, .L99
	ldr r10, [fp, #-8]
	cmp r10, #0
	bne .L99
	b .L98
.L96:                               	@ predecessors = .L98                               	@ successors = .L89
	ldr r4, [fp, #-4]
	add r5, r4, #1
	str r5, [fp, #-4]
	b .L89
.L98:                               	@ predecessors = .L95                               	@ successors = .L96
	b .L96
.L99:                               	@ predecessors = .L95                               	@ successors = .L95
	ldr r6, [fp, #-4]
	ldr r7, addr_0_map
	mov r8, #40
	mul r9, r6, r8
	add r10, r7, r9
	ldr r4, [fp, #-8]
	mov r5, #4
	mul r6, r4, r5
	add r8, r10, r6
	mov r7, #1
	str r7, [r8]
	ldr r9, [fp, #-8]
	ldr r4, addr_0_indegree
	mov r5, #4
	mul r10, r9, r5
	add r6, r4, r10
	ldr r8, [r6]
	add r7, r8, #1
	ldr r9, [fp, #-8]
	ldr r5, addr_0_indegree
	mov r4, #4
	mul r10, r9, r4
	add r6, r5, r10
	str r7, [r6]
	bl getint
	mov r8, r0
	str r8, [fp, #-8]
	b .L95
.Lmain_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

addr_0_queue:
	.word queue
addr_0_indegree:
	.word indegree
addr_0_map:
	.word map
