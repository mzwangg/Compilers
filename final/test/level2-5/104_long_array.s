	.arch armv8-a
	.arch_extension crc
	.arm
	.text
	.global long_array
	.type long_array , %function
long_array:
	push {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov fp, sp
	ldr r4, =120020
	sub sp, sp, r4
.L40:                               	@ successors = .L46
	ldr r4, =-120020
	str r0, [fp, r4]
	mov r5, #0
	str r5, [fp, #-16]
	b .L46
.L46:                               	@ predecessors = .L40, .L50                               	@ successors = .L49, .L50
	ldr r6, [fp, #-16]
	ldr r7, =10000
	cmp r6, r7
	blt .L50
	b .L49
.L47:                               	@ predecessors = .L49                               	@ successors = .L56
	mov r8, #0
	str r8, [fp, #-16]
	b .L56
.L49:                               	@ predecessors = .L46                               	@ successors = .L47
	b .L47
.L50:                               	@ predecessors = .L46                               	@ successors = .L46
	ldr r9, [fp, #-16]
	ldr r10, [fp, #-16]
	mul r4, r9, r10
	mov r5, #10
	sdiv r6, r4, r5
	mul r8, r6, r5
	sub r7, r4, r8
	ldr r9, [fp, #-16]
	ldr r10, =-120016
	add r5, fp, r10
	mov r6, #4
	mul r4, r9, r6
	add r8, r5, r4
	str r7, [r8]
	ldr r10, [fp, #-16]
	add r9, r10, #1
	str r9, [fp, #-16]
	b .L46
.L56:                               	@ predecessors = .L47, .L60                               	@ successors = .L59, .L60
	ldr r6, [fp, #-16]
	ldr r5, =10000
	cmp r6, r5
	blt .L60
	b .L59
.L57:                               	@ predecessors = .L59                               	@ successors = .L70
	mov r4, #0
	str r4, [fp, #-16]
	b .L70
.L59:                               	@ predecessors = .L56                               	@ successors = .L57
	b .L57
.L60:                               	@ predecessors = .L56                               	@ successors = .L56
	ldr r7, [fp, #-16]
	ldr r8, =-120016
	add r10, fp, r8
	mov r9, #4
	mul r6, r7, r9
	add r5, r10, r6
	ldr r4, [r5]
	ldr r8, [fp, #-16]
	ldr r7, =-120016
	add r9, fp, r7
	mov r10, #4
	mul r6, r8, r10
	add r5, r9, r6
	ldr r7, [r5]
	mul r8, r4, r7
	mov r10, #10
	sdiv r9, r8, r10
	mul r6, r9, r10
	sub r5, r8, r6
	ldr r4, [fp, #-16]
	ldr r7, =-80016
	add r10, fp, r7
	mov r9, #4
	mul r8, r4, r9
	add r6, r10, r8
	str r5, [r6]
	ldr r7, [fp, #-16]
	add r4, r7, #1
	str r4, [fp, #-16]
	b .L56
.L70:                               	@ predecessors = .L57, .L74                               	@ successors = .L73, .L74
	ldr r9, [fp, #-16]
	ldr r10, =10000
	cmp r9, r10
	blt .L74
	b .L73
.L71:                               	@ predecessors = .L73                               	@ successors = .L88
	mov r8, #0
	str r8, [fp, #-12]
	mov r5, #0
	str r5, [fp, #-16]
	b .L88
.L73:                               	@ predecessors = .L70                               	@ successors = .L71
	b .L71
.L74:                               	@ predecessors = .L70                               	@ successors = .L70
	ldr r6, [fp, #-16]
	ldr r7, =-80016
	add r4, fp, r7
	mov r9, #4
	mul r10, r6, r9
	add r8, r4, r10
	ldr r5, [r8]
	ldr r7, [fp, #-16]
	ldr r6, =-80016
	add r9, fp, r6
	mov r4, #4
	mul r10, r7, r4
	add r8, r9, r10
	ldr r6, [r8]
	mul r7, r5, r6
	mov r4, #100
	sdiv r9, r7, r4
	mul r10, r9, r4
	sub r8, r7, r10
	ldr r5, [fp, #-16]
	ldr r6, =-120016
	add r4, fp, r6
	mov r9, #4
	mul r7, r5, r9
	add r10, r4, r7
	ldr r6, [r10]
	add r5, r8, r6
	ldr r9, [fp, #-16]
	ldr r4, =-40016
	add r7, fp, r4
	mov r10, #4
	mul r8, r9, r10
	add r6, r7, r8
	str r5, [r6]
	ldr r4, [fp, #-16]
	add r9, r4, #1
	str r9, [fp, #-16]
	b .L70
.L88:                               	@ predecessors = .L71, .L93                               	@ successors = .L91, .L92
	ldr r10, [fp, #-16]
	ldr r7, =10000
	cmp r10, r7
	blt .L92
	b .L91
.L89:                               	@ predecessors = .L91
	ldr r8, [fp, #-12]
	mov r0, r8
	b .Llong_array_END
.L91:                               	@ predecessors = .L88                               	@ successors = .L89
	b .L89
.L92:                               	@ predecessors = .L88                               	@ successors = .L95, .L96
	ldr r5, [fp, #-16]
	cmp r5, #10
	blt .L96
	b .L95
.L93:                               	@ predecessors = .L96, .L103                               	@ successors = .L88
	ldr r6, [fp, #-16]
	add r4, r6, #1
	str r4, [fp, #-16]
	b .L88
.L95:                               	@ predecessors = .L92                               	@ successors = .L102
	b .L102
.L96:                               	@ predecessors = .L92                               	@ successors = .L93
	ldr r9, [fp, #-12]
	ldr r10, [fp, #-16]
	ldr r7, =-40016
	add r8, fp, r7
	mov r5, #4
	mul r6, r10, r5
	add r4, r8, r6
	ldr r7, [r4]
	add r10, r9, r7
	ldr r5, =1333
	sdiv r8, r10, r5
	mul r4, r8, r5
	sub r6, r10, r4
	str r6, [fp, #-12]
	ldr r9, [fp, #-12]
	mov r0, r9
	bl putint
	b .L93
.L102:                               	@ predecessors = .L95                               	@ successors = .L105, .L106
	ldr r7, [fp, #-16]
	cmp r7, #20
	blt .L106
	b .L105
.L103:                               	@ predecessors = .L109, .L123                               	@ successors = .L93
	b .L93
.L105:                               	@ predecessors = .L102                               	@ successors = .L122
	b .L122
.L106:                               	@ predecessors = .L102                               	@ successors = .L108
	ldr r5, =5000
	str r5, [fp, #-8]
	b .L108
.L108:                               	@ predecessors = .L106, .L112                               	@ successors = .L111, .L112
	ldr r8, [fp, #-8]
	ldr r10, =10000
	cmp r8, r10
	blt .L112
	b .L111
.L109:                               	@ predecessors = .L111                               	@ successors = .L103
	ldr r4, [fp, #-12]
	mov r0, r4
	bl putint
	b .L103
.L111:                               	@ predecessors = .L108                               	@ successors = .L109
	b .L109
.L112:                               	@ predecessors = .L108                               	@ successors = .L108
	ldr r6, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r7, =-40016
	add r5, fp, r7
	mov r8, #4
	mul r10, r9, r8
	add r4, r5, r10
	ldr r7, [r4]
	add r9, r6, r7
	ldr r8, [fp, #-8]
	ldr r5, =-120016
	add r10, fp, r5
	mov r4, #4
	mul r6, r8, r4
	add r7, r10, r6
	ldr r5, [r7]
	sub r8, r9, r5
	str r8, [fp, #-12]
	ldr r4, [fp, #-8]
	add r10, r4, #1
	str r10, [fp, #-8]
	b .L108
.L122:                               	@ predecessors = .L105                               	@ successors = .L125, .L126
	ldr r6, [fp, #-16]
	cmp r6, #30
	blt .L126
	b .L125
.L123:                               	@ predecessors = .L129, .L155                               	@ successors = .L103
	b .L103
.L125:                               	@ predecessors = .L122                               	@ successors = .L155
	b .L155
.L126:                               	@ predecessors = .L122                               	@ successors = .L128
	ldr r7, =5000
	str r7, [fp, #-4]
	b .L128
.L128:                               	@ predecessors = .L126, .L133                               	@ successors = .L131, .L132
	ldr r9, [fp, #-4]
	ldr r5, =10000
	cmp r9, r5
	blt .L132
	b .L131
.L129:                               	@ predecessors = .L131                               	@ successors = .L123
	ldr r8, [fp, #-12]
	mov r0, r8
	bl putint
	b .L123
.L131:                               	@ predecessors = .L128                               	@ successors = .L129
	b .L129
.L132:                               	@ predecessors = .L128                               	@ successors = .L135, .L136
	ldr r4, [fp, #-4]
	ldr r10, =2233
	cmp r4, r10
	bgt .L136
	b .L135
.L133:                               	@ predecessors = .L136, .L145                               	@ successors = .L128
	b .L128
.L135:                               	@ predecessors = .L132                               	@ successors = .L145
	b .L145
.L136:                               	@ predecessors = .L132                               	@ successors = .L133
	ldr r6, [fp, #-12]
	ldr r7, [fp, #-16]
	ldr r9, =-80016
	add r5, fp, r9
	mov r8, #4
	mul r4, r7, r8
	add r10, r5, r4
	ldr r9, [r10]
	add r7, r6, r9
	ldr r8, [fp, #-4]
	ldr r5, =-120016
	add r4, fp, r5
	mov r10, #4
	mul r6, r8, r10
	add r9, r4, r6
	ldr r5, [r9]
	sub r8, r7, r5
	str r8, [fp, #-12]
	ldr r10, [fp, #-4]
	add r4, r10, #1
	str r4, [fp, #-4]
	b .L133
.L145:                               	@ predecessors = .L135                               	@ successors = .L133
	ldr r6, [fp, #-12]
	ldr r9, [fp, #-16]
	ldr r7, =-120016
	add r5, fp, r7
	mov r8, #4
	mul r10, r9, r8
	add r4, r5, r10
	ldr r7, [r4]
	add r9, r6, r7
	ldr r8, [fp, #-4]
	ldr r5, =-40016
	add r10, fp, r5
	mov r4, #4
	mul r6, r8, r4
	add r7, r10, r6
	ldr r5, [r7]
	add r8, r9, r5
	ldr r4, =13333
	sdiv r10, r8, r4
	mul r7, r10, r4
	sub r6, r8, r7
	str r6, [fp, #-12]
	ldr r9, [fp, #-4]
	add r5, r9, #2
	str r5, [fp, #-4]
	b .L133
.L155:                               	@ predecessors = .L125                               	@ successors = .L123
	ldr r4, [fp, #-12]
	ldr r10, [fp, #-16]
	ldr r8, =-40016
	add r7, fp, r8
	mov r6, #4
	mul r9, r10, r6
	add r5, r7, r9
	ldr r8, [r5]
	ldr r10, =-120020
	ldr r6, [fp, r10]
	mul r7, r8, r6
	add r9, r4, r7
	ldr r5, =99988
	sdiv r10, r9, r5
	mul r8, r10, r5
	sub r6, r9, r8
	str r6, [fp, #-12]
	b .L123
.Llong_array_END:
	mov sp, fp
	pop {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx lr

	.global main
	.type main , %function
main:
	push {r4, fp, lr}
	mov fp, sp
.L163:
	mov r0, #9
	bl long_array
	mov r4, r0
	mov r0, r4
	pop {r4, fp, lr}
	bx lr

